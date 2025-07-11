#ifndef __HX711_H
#define __HX711_H

#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "Config.h"

/****** HX711 引脚宏定义 *******/
#define HX711_DT_PIN    GPIO_PIN_5  // 数据线
#define HX711_SCK_PIN   GPIO_PIN_4  // 时钟线

/****** IO操作函数 *******/
#define HX711_DT_IN     gpio_get_pin(HX711_DT_PIN)    // 读取DT引脚电平
#define HX711_SCK_OUT(X) gpio_write_pin(HX711_SCK_PIN, X) // 控制SCK引脚输出

/****** 函数声明 *******/
uint8_t HX711_Init(void);               // 初始化HX711
int32_t HX711_Read_Data(void);          // 读取24位ADC数据（补码格式）
uint8_t HX711_Wait_Ready(void);         // 等待数据就绪（DT为低电平）
uint8_t HX711_Read_Bit(void);           // 读取单个位（内部使用）
void HX711_IO_In(void);                 // 设置DT为输入模式
void HX711_IO_Out(void);                // 设置DT为输出模式（通常不需要）
int32_t HX711_Convert_Weight_Int(int32_t adc_value) ;
int32_t  HX711_Get_Filtered_ADC(int32_t new_value);

#endif