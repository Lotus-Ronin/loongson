#include "led.h"
#include "ls1x_gpio.h"

void KEY_init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(KEY1_PIN, GPIO_Mode_In); // 设置按键1的GPIO为输入
    gpio_set_direction(KEY2_PIN, GPIO_Mode_In); // 设置按键2的GPIO为输入
    gpio_set_direction(KEY3_PIN, GPIO_Mode_In); // 设置按键3的GPIO为输入
    gpio_set_direction(KEY4_PIN, GPIO_Mode_In); // 设置按键4的GPIO为输入
}

uint8_t KEY_Check(void)
{
    if (!gpio_get_pin(KEY1_PIN))// 读取按键状态
    { 
        return 1;
    }
    else if(!gpio_get_pin(KEY2_PIN))
    {
        return 2;
    }
    else if(!gpio_get_pin(KEY3_PIN))
    {
        return 3;
    }
    else if(!gpio_get_pin(KEY4_PIN))
    {
        return 4;
    }
    else
    {
        return 0;
    }
}


void LED_Init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(LED1_PIN, GPIO_Mode_Out); // 设置LED1的GPIO为输出
    gpio_set_direction(LED2_PIN, GPIO_Mode_Out); // 设置LED2的GPIO为输出
    gpio_set_direction(LED3_PIN, GPIO_Mode_Out); // 设置LED3的GPIO为输出
    gpio_set_direction(LED4_PIN, GPIO_Mode_Out); // 设置LED4的GPIO为输出
}

void LED_On(int LED_num)
{
    gpio_write_pin(LED_num, ON);
}

void LED_Off(int LED_num)
{
    gpio_write_pin(LED_num, OFF);
}

void LED_Toggle(int LED_num)
{
    gpio_write_pin(LED_num, ~LED_num);

}