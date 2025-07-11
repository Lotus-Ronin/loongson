/******************************************************
 * 实验名称：蓝牙模块通信实验
 * 
 * 实验准备：龙芯1C102开发板，蓝牙模块，外接LED灯
 * 
 * 实验接线：LED灯接到GPIO13
 * 
 * 实验现象：当蓝牙模块收到"ON"时，LED灯点亮；
 *          当蓝牙模块收到"OFF"时，LED灯熄灭。
******************************************************/
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
#include "ls1x_uart.h"
#include "ls1x_clock.h"
#include "UserGpio.h"
#include "Config.h"
#include "queue.h"
#include "led.h"
#include "dht11.h"
#include "ls1c102_adc.h"
#include "math.h"
#include "oled.h"
#include "iic.h"
#include "Servo.h"
#include "Motor.h"
#include "HX711.h"  
#include "ls1c102_interrupt.h"   
char str_uart[50];  // 串口用
char str_oled[50];
uint8_t Read_Buffer[DATA_LEN];//设置接收缓冲数组
uint8_t Read_length;

extern int speed;

typedef enum
{
    stop = 0,
    speed_one,
    speed_two,
    speed_three
} MotorState;


MotorState motor_state =stop; // 电机状态
static uint16_t temperature;
static uint16_t humidity;


int main(int arg, char *args[])
{
    timer_init(10);
    GPIOInit();        // io配置
    OLED_Init();
    EnableInt(); // 开总中断
    Queue_Init(&Circular_queue);
    Uart0_init(115200); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后
    UART_SendString(UART0,"A\r\n");
    Uart1_init(115200);
    Motor_Init();
    HX711_Init();

    //OLED_Show_Str(10, 0, "weight:      g", 16); // OLED显示界面
    OLED_Show_Str(10, 3, "温度:       ℃", 16);     // OLED显示界面
    OLED_Show_Str(10, 6, "湿度:      %RH", 16);
    gpio_set_direction(GPIO_PIN_34, GPIO_Mode_Out); //A25
    gpio_set_direction(GPIO_PIN_36, GPIO_Mode_Out);//A26
    gpio_set_direction(GPIO_PIN_17, GPIO_Mode_Out);//B6
    gpio_set_direction(GPIO_PIN_40, GPIO_Mode_Out);//B3
    gpio_set_direction(GPIO_PIN_19, GPIO_Mode_Out);//A27

    int32_t last_weight_raw = 0;  // 上一次的重量值

    while(1)
    {
        DHT11_Read_Data(&temperature, &humidity); // 读取温湿度值

        memset(str_uart, 0, sizeof(str_uart));
        sprintf(str_uart, "T%d.%dC\n", temperature / 10, temperature % 10);
        UART_SendString(UART0, str_uart);

        memset(str_uart, 0, sizeof(str_uart));
        sprintf(str_uart, "H%d.%dR\n", humidity / 10, humidity % 10);
        UART_SendString(UART0, str_uart);

        int32_t weight_value = HX711_Read_Data();
        int32_t weight_raw = HX711_Convert_Weight_Int(weight_value);  // 返回单位0.01g的整数值

        if ((temperature/10)>=33)                //开风扇
           gpio_write_pin(16, 1);      // 设置TIM1通道1的比较值为pwm_cmp
        else
            gpio_write_pin(16, 0); 
        //gpio_write_pin(16, 1);
    
        if (weight_raw > 600) 
        {
            // 判断是否是异常值：两次重量差大于100000（即1000g）
            int32_t diff;
            if (weight_raw >= last_weight_raw)
                diff = weight_raw - last_weight_raw;
            else
                diff = last_weight_raw - weight_raw;

            if (diff <= 100000)  // 小于等于1000g才认为正常
            {
                memset(str_uart, 0, sizeof(str_uart));
                sprintf(str_uart, "W%d.%dg\n", weight_raw / 100, (weight_raw % 100) / 10);  // 保留1位小数
                UART_SendString(UART0, str_uart);

                printf("T%dPH%dW%dI", temperature / 10, humidity / 10, weight_raw / 100);

                last_weight_raw = weight_raw;  // 记录这次有效值
            }
            else
            {
                printf("T%dPH%dI", temperature / 10, humidity / 10);  // 忽略异常，只发温湿度
            }
        }
        else
        {
            printf("T%dPH%dI", temperature / 10, humidity / 10);  // 小于20g也不发重量
        }



       

        //读取GPIO状态
        if(gpio_get_pin(GPIO_PIN_34)==1)
            motor_state=speed_two; 
        else if(gpio_get_pin(GPIO_PIN_40)==1)
            motor_state=stop;
        else if(gpio_get_pin(GPIO_PIN_36)==1)
            motor_state=speed_one;
        else if(gpio_get_pin(GPIO_PIN_19)==1)
            motor_state=speed_two; 
        else if(gpio_get_pin(GPIO_PIN_17)==1)
            motor_state=speed_three;

            

    
        // --- OLED 显示 ---
        memset(str_oled, 0, sizeof(str_oled));
        sprintf(str_oled, "%2d.%d", temperature / 10, temperature % 10);
        OLED_Show_Str(70, 3, str_oled, 16);  // 显示温度
    
        memset(str_oled, 0, sizeof(str_oled));
        sprintf(str_oled, "%2d.%d", humidity / 10, humidity % 10);
        OLED_Show_Str(70, 6, str_oled, 16);  // 显示湿度

        memset(str_oled, 0, sizeof(str_oled));
        sprintf(str_oled, "重量: %3d.%d g  ", weight_raw / 100, (weight_raw % 100) / 10);
        OLED_Show_Str(10, 0, str_oled, 16);



        switch (motor_state)
        {
            case stop:
                motor_setspeed(0); // 停止
                break;
            case speed_one:
                motor_setspeed(4); // 低速
                break;
            case speed_two:
                motor_setspeed(7); // 中速
                break;
            case speed_three:
                motor_setspeed(100); // 高速
                break;
        }
    
        if(Queue_isEmpty(&Circular_queue) == 0)
        {
            Read_length = Queue_HadUse(&Circular_queue);
            memset(Read_Buffer, 0, DATA_LEN);
            Queue_Read(&Circular_queue, Read_Buffer, Read_length);
            Read_Buffer[Read_length] = '\0';
    
            if(strncmp(Read_Buffer, "1", 1) == 0)
            {
                Servo_SetAngle(2);
            }
            
            if(strncmp(Read_Buffer, "2", 1) == 0)
            {
                Servo_SetAngle(3);
            }
            if(strncmp(Read_Buffer, "3", 1) == 0)
            {
                Servo_SetAngle(4);
            }
        }
    
        delay_ms(1000);

        
     } 
        
      return 0;
  
    }


    