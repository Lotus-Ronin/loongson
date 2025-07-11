/*************************************************************
 * 实验名称：OLED显示实验
 *
 * 实验准备：龙芯1C102开发板
 *
 * 实验接线：板载OLED屏幕，无需接线
 *
 * 实验现象：OLED屏幕显示中英文字符
 *************************************************************/
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_string.h"
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
#include "iic.h"
#include "oled.h"
#include "Motor.h"

#define LED GPIO_PIN_20
#define beep GPIO_PIN_63
#define Motor GPIO_PIN_56
#define Motor2 GPIO_PIN_37


#define LED1_PIN    GPIO_PIN_55
#define LED2_PIN    GPIO_PIN_28
#define LED3_PIN    GPIO_PIN_27
#define LED4_PIN    GPIO_PIN_26

#define ON      1
#define OFF     0


#define KEY1_PIN    GPIO_PIN_22
#define KEY2_PIN    GPIO_PIN_23
#define KEY3_PIN    GPIO_PIN_24
#define KEY4_PIN    GPIO_PIN_25

#define DATA_LEN    300 //队列缓存大小

char str[50];
uint8_t received_data = 0;

uint8_t Read_Buffer[DATA_LEN]; // 设置接收缓冲数组
uint8_t Read_length;
//-----------------------------------------------------------------------------------
void LED_Init(void)
{
    gpio_set_direction(LED1_PIN, GPIO_Mode_Out); //配置为GPIO输出模式
    gpio_set_direction(LED2_PIN, GPIO_Mode_Out); //配置为GPIO输出模式
    gpio_set_direction(LED3_PIN, GPIO_Mode_Out); //配置为GPIO输出模式
    gpio_set_direction(LED4_PIN, GPIO_Mode_Out); //配置为GPIO输出模式
}

void LED_On(int LED_num)
{
    gpio_write_pin(LED_num, ON);
}

void LED_Off(int LED_num)
{
    gpio_write_pin(LED_num, OFF);
}


//-------------------------------------------------------------------

void High_speed(void){

        gpio_write_pin(Motor, GPIO_LOW);
        gpio_write_pin(Motor2, GPIO_LOW);
        delay_ms(2);
        gpio_write_pin(Motor, GPIO_HIGH);
        gpio_write_pin(Motor2, GPIO_HIGH);
        delay_ms(8);
    }

void Medium_speed(void){

    gpio_write_pin(Motor, GPIO_LOW);
    gpio_write_pin(Motor2, GPIO_LOW);
    delay_ms(5);
    gpio_write_pin(Motor, GPIO_HIGH);
    gpio_write_pin(Motor2, GPIO_HIGH);
    delay_ms(5);
}

void Low_speed(void){
  
    gpio_write_pin(Motor, GPIO_LOW);
    gpio_write_pin(Motor2, GPIO_LOW);
    delay_ms(8);
    gpio_write_pin(Motor, GPIO_HIGH);
    gpio_write_pin(Motor2, GPIO_HIGH);
    delay_ms(2);
}


void Suspend(void){
    gpio_write_pin(Motor, GPIO_LOW);
    gpio_write_pin(Motor2, GPIO_LOW);
}

//-------------------------------------------------
void Beep_On(void)
{
    gpio_write_pin(GPIO_PIN_63, ON);      // 蜂鸣器开启
}

void Beep_Off(void)
{

    gpio_write_pin(GPIO_PIN_63, OFF);      // 蜂鸣器开启
}
//------------------------------------------------------------------------------------

void KEY_init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(KEY1_PIN, GPIO_Mode_In); // 设置按键1的GPIO为输入
    gpio_set_direction(KEY2_PIN, GPIO_Mode_In); // 设置按键2的GPIO为输入
    gpio_set_direction(KEY3_PIN, GPIO_Mode_In); // 设置按键3的GPIO为输入
    gpio_set_direction(KEY4_PIN, GPIO_Mode_In); // 设置按键4的GPIO为输入
}
uint8_t key_value = 0;

uint8_t KEY_Check(void)
{
    static uint8_t last_key = 0; // 静态变量，用于存储上一次按下的按键值
    
    if (!gpio_get_pin(KEY1_PIN))// 读取按键状态
    { 
        last_key = 1;
        return 1;
    }
    else if(!gpio_get_pin(KEY2_PIN))
    {
        last_key = 2;
        return 2;
    }
    else if(!gpio_get_pin(KEY3_PIN))
    {
        last_key = 3;
        return 3;
    }
    else if(!gpio_get_pin(KEY4_PIN))
    {
        last_key = 4;
        return 4;
    }
    else
    {
        return last_key; // 无按键按下时返回上一次的值
    }
}

//-------------------------------------------------------------

void Danger_waring(void)
{


    if (gpio_get_pin(GPIO_PIN_14)==1){
        LED_On(LED2_PIN);
        Beep_On();      // 蜂鸣器开启
        delay_ms(600); // 蜂鸣器响600毫秒
        UART_SendData(UART0, 0x35);
        // printf("34:%d--", gpio_get_pin(GPIO_PIN_34));   // 串口0  要发送的字符串
    }
    else if(gpio_get_pin(GPIO_PIN_14)==0){
        LED_Off(LED2_PIN);
    }    

    if(gpio_get_pin(GPIO_PIN_35)==1){
        LED_On(LED3_PIN);
        Beep_On();      // 蜂鸣器开启
        UART_SendData(UART0, 0x35);
        // printf("35:%d--", gpio_get_pin(GPIO_PIN_35));   // 串口0  要发送的字符串
    }
    else if(gpio_get_pin(GPIO_PIN_35)==0){
        LED_Off(LED3_PIN);
    }

    if(gpio_get_pin(GPIO_PIN_36)==1){
        LED_On(LED4_PIN);
        Beep_On();      // 蜂鸣器开启
       UART_SendData(UART0, 0x35);
        // printf("36:%d--", gpio_get_pin(GPIO_PIN_36));   // 串口0  要发送的字符串
    }
    else if(gpio_get_pin(GPIO_PIN_36)==0){
        LED_Off(LED4_PIN);
    }

    if ((gpio_get_pin(GPIO_PIN_34)==0)&&(gpio_get_pin(GPIO_PIN_35)==0)&&(gpio_get_pin(GPIO_PIN_36)==0))
    {
        Beep_Off();
        UART_SendData(UART0, 0x36);
    }
    

    
}

int value = 2; // 默认速度值
//---------------------------------------------------------------------------------
int main(int arg, char *args[])
{
    
    // SystemClockInit();                          // 时钟等系统配置
    timer_init(10);
    GPIOInit();                                 // io配置
    IIC_Init();
    OLED_Init();                                // OLED初始化
    EnableInt();                                // 开总中断
    OLED_Show_Str(10, 0, "Motor Contral", 16);
    OLED_Show_Str(10, 2, "Speed Contral", 16);    // OLED显示界面
    OLED_Show_Str(10, 4, "Security Check", 16);
    Motor_Init();
    Queue_Init(&Circular_queue);
    Uart0_init(115200); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后
    gpio_set_direction(GPIO_PIN_16, GPIO_Mode_Out);//A26
    gpio_set_direction(GPIO_PIN_17, GPIO_Mode_Out);//B6
    gpio_set_direction(GPIO_PIN_40, GPIO_Mode_Out);//B3
    gpio_set_direction(GPIO_PIN_19, GPIO_Mode_Out);//A27
    //UART_SendData(UART0, 0x39); // 开始发送9  观察调试

        // 定义GPIO0初始化结构体
    GPIO_InitTypeDef GPIO_InitStruct0;
    
    // 配置GPIO参数
    GPIO_InitStruct0.GPIO_Pin = GPIO_PIN_14;      // 选择GPIO20 (根据实际硬件修改)
    GPIO_InitStruct0.GPIO_Func = 0;     // 设置为普通GPIO功能
    GPIO_InitStruct0.GPIO_Mode =0;  // 设置为输入模式
    
    // 初始化GPIO
    GPIO_Init(&GPIO_InitStruct0);

//--------------------------------------------------------------------------------------------
    // 定义GPIO1初始化结构体
    GPIO_InitTypeDef GPIO_InitStruct1;
    
    // 配置GPIO参数
    GPIO_InitStruct1.GPIO_Pin = Motor;      // 选择GPIO20 (根据实际硬件修改)
    GPIO_InitStruct1.GPIO_Func = 0;     // 设置为普通GPIO功能
    GPIO_InitStruct1.GPIO_Mode = 1;  // 设置为输出模式
    
    // 初始化GPIO
    GPIO_Init(&GPIO_InitStruct1);



//--------------------------------------------------------------------------------------------

    // 定义GPIO2初始化结构体
    GPIO_InitTypeDef GPIO_InitStruct2;
    
    // 配置GPIO参数
    GPIO_InitStruct0.GPIO_Pin = GPIO_PIN_35;      // 选择GPIO20 (根据实际硬件修改)
    GPIO_InitStruct0.GPIO_Func = 0;     // 设置为普通GPIO功能
    GPIO_InitStruct0.GPIO_Mode =0;  // 设置为输入模式
    
    // 初始化GPIO
    GPIO_Init(&GPIO_InitStruct0);


//-----------------------------------------------------------------------------------------

    // 定义GPIO3初始化结构体
    GPIO_InitTypeDef GPIO_InitStruct3;
    
    // 配置GPIO参数
    GPIO_InitStruct0.GPIO_Pin = GPIO_PIN_36;      // 选择GPIO20 (根据实际硬件修改)
    GPIO_InitStruct0.GPIO_Func = 0;     // 设置为普通GPIO功能
    GPIO_InitStruct0.GPIO_Mode =0;  // 设置为输入模式
    
    // 初始化GPIO
    GPIO_Init(&GPIO_InitStruct0);


//----------------------------------------------------------------------------------------

    // 定义GPIO1初始化结构体
    GPIO_InitTypeDef GPIO_InitStruct4;
    
    // 配置GPIO参数
    GPIO_InitStruct1.GPIO_Pin = Motor2;      // 选择GPIO20 (根据实际硬件修改)
    GPIO_InitStruct1.GPIO_Func = 0;     // 设置为普通GPIO功能
    GPIO_InitStruct1.GPIO_Mode = 1;  // 设置为输出模式
    
    // 初始化GPIO
    GPIO_Init(&GPIO_InitStruct4);



//--------------------------------------------------------------------------------------------

//5:5-3:7-7:3

    while (1)
    { 
        if(Queue_isEmpty(&Circular_queue) == 0)
        {
            Read_length = Queue_HadUse(&Circular_queue);
            memset(Read_Buffer, 0, DATA_LEN);
            Queue_Read(&Circular_queue, Read_Buffer, Read_length);
            Read_Buffer[Read_length] = '\0';
    
            if(strncmp(Read_Buffer, "0", 1) == 0)
            {
                //gpio_write_pin(GPIO_PIN_20, 1);
                // motor_setspeed(0);
                value=4;
//UART_SendData(UART0, 0x30);
            }
            if(strncmp(Read_Buffer, "1", 1) == 0)
            {
                // motor_setspeed(8);
                value=3;
               // UART_SendData(UART0, 0x31);
            }
            
            if(strncmp(Read_Buffer, "2", 1) == 0)
            {
                // motor_setspeed(6);
                value=2;
               // UART_SendData(UART0, 0x32);
            }
            if(strncmp(Read_Buffer, "3", 1) == 0)
            {
                // motor_setspeed(4);
                value=1;
                //UART_SendData(UART0, 0x33);
            }
        }
        delay_ms(1000);
        
         if(gpio_get_pin(GPIO_PIN_16)==1)
            value=1; 
        else if(gpio_get_pin(GPIO_PIN_40)==1)
            value=4;
        else if(gpio_get_pin(GPIO_PIN_19)==1)
            value=2; 
        else if(gpio_get_pin(GPIO_PIN_17)==1)
            value=3;

        key_value = KEY_Check();
        switch(key_value)
        {
            case 1:value=1;//UART_SendData(UART0, 0x37);
            break;
            case 2:value=2;
            break;
            case 3:value=3;
            break;
            case 4:value=4;
            break;

        }

        switch(value)
        {
            case 1:motor_setspeed(4);//UART_SendData(UART0, 0x37);
            break;
            case 2:motor_setspeed(6);
            break;
            case 3:motor_setspeed(8);
            break;
            case 4:motor_setspeed(0);
            break;
        }


        Danger_waring();
        
    }
    return 0;
}






        //         delay_ms(10);
        // time++;
        // OLED_ShowInt32Num(50, 4, time, 3, 16);
        // if (time == 888)
        // {
        //     time = 0;
        //     gpio_write_pin(GPIO_PIN_63, 1);      // 蜂鸣器开启
        //     delay_ms(500);
        //     gpio_write_pin(GPIO_PIN_63, 0);      // 蜂鸣器关闭
        //     delay_ms(500);
        // }

        // OLED_Show_Str(0, 2, "High_speed", 16); // OLED显示界面
        // OLED_Show_Str(0, 2, "Medium_speed", 16); // OLED显示界面
        // OLED_Show_Str(0, 2, "Low_speed", 16); // OLED显示界面
        //  OLED_Show_Str(0, 2, "Suspend", 16); // OLED显示界面


