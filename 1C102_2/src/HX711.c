#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "HX711.h"
// 定义 HX711 引脚
#define HX711_DT_PIN   GPIO_PIN_5  // 数据线
#define HX711_SCK_PIN  GPIO_PIN_4  // 时钟线

// 设置 DT 为输入模式
void HX711_IO_In(void) {
    gpio_set_direction(HX711_DT_PIN, GPIO_Mode_In);
}

// 设置 DT 为输出模式（HX711 通常不需要 DT 输出，但保留）
void HX711_IO_Out(void) {
    gpio_set_direction(HX711_DT_PIN, GPIO_Mode_Out);
}

// 初始化 HX711
uint8_t HX711_Init(void) {
    gpio_pin_remap(HX711_DT_PIN, GPIO_FUNC_GPIO);
    gpio_pin_remap(HX711_SCK_PIN, GPIO_FUNC_GPIO);
    
    // SCK 初始为低电平，DT 为输入
    gpio_set_direction(HX711_SCK_PIN, GPIO_Mode_Out);
    gpio_write_pin(HX711_SCK_PIN, 0);
    HX711_IO_In();
    
    return 0; // 初始化成功（HX711 无硬件检测，直接返回 0）
}

// 等待 HX711 数据就绪（DT 为低电平）
uint8_t HX711_Wait_Ready(void) {
    uint16_t retry = 0;
    while (gpio_get_pin(HX711_DT_PIN) && retry < 1000) {
        retry++;
        delay_us(10);
    }
    return (retry >= 1000) ? 1 : 0; // 超时返回 1，否则 0
}

// 从 HX711 读取一个位（时钟脉冲 + 读取 DT）
uint8_t HX711_Read_Bit(void) {
    gpio_write_pin(HX711_SCK_PIN, 1);
    delay_us(1); // 脉冲宽度至少 0.2us（HX711 要求）
    uint8_t bit = gpio_get_pin(HX711_DT_PIN);
    gpio_write_pin(HX711_SCK_PIN, 0);
    delay_us(1); // 间隔时间
    return bit;
}

// 从 HX711 读取 24 位数据（补码格式）
int32_t HX711_Read_Data(void) {
    int32_t data = 0;
    
    if (HX711_Wait_Ready() == 0) { // 等待数据就绪
        for (uint8_t i = 0; i < 24; i++) {
            data <<= 1;
            data |= HX711_Read_Bit();
        }
        
        // 发送第 25~27 个脉冲选择通道和增益（例如通道A增益128）
        for (uint8_t i = 0; i < 3; i++) {
            gpio_write_pin(HX711_SCK_PIN, 1);
            delay_us(1);
            gpio_write_pin(HX711_SCK_PIN, 0);
            delay_us(1);
        }
    }
    
    // 补码转换为有符号整数
    if (data & 0x800000) data |= 0xFF000000;
    return data;
}

int32_t HX711_Convert_Weight_Int(int32_t adc_value) {
    const int32_t adc_zero = 285827;     // 0g时ADC值
    const int32_t adc_full = 303228;     // 188g时ADC值
    const int32_t scale_188g = 18800;    // 单位0.01g，对应188g

    if (adc_value <= adc_zero) {
        return 0;
    }

    int32_t diff = adc_value - adc_zero;
    int32_t range = adc_full - adc_zero;

    // 为了防止 diff * scale_188g 溢出，先把 scale_188g / range 再乘 diff
    // scale_188g / range 得到“每个ADC单位代表多少重量（单位：0.01g）”
    int32_t weight_per_adc = scale_188g / range;

    return diff * weight_per_adc;
}
// int32_t HX711_Convert_Weight_Int(int32_t adc_value)
// {
//     const int32_t adc_zero = 176800;       // 空载ADC值（0g）
//     const int32_t adc_full = 592624;       // 满载ADC值（比如560g）
//     const int32_t scale_560g = 56000;      // 单位0.01g → 560g = 56000 * 0.01g

//     if (adc_value <= adc_zero) {
//         return 0;  // 小于空载，返回0，避免负值
//     }

//     int32_t diff = adc_value - adc_zero;
//     int32_t range = adc_full - adc_zero;

//     // 为了避免溢出，我们先计算权重（扩大比例后除以）
//     // 乘100扩大比例精度，再除100
//     int32_t numerator = diff * (scale_560g / 10);  // scale先除10再乘，避免乘太大
//     int32_t weight = numerator / (range / 10);     // range也除10，匹配比例

//     return weight;
// }




