#include "ls1c102_ptimer.h"
#include "ls1x.h"
#include "ls1c102_interrupt.h"
#include "Servo.h"
#include "ls1x.h"
#include "ls1c102_interrupt.h"
#include "ls1c102_ptimer.h"
#include "ls1x_gpio.h"

void Servo_SetAngle(int index)
{
    if (index == 1) // 0.5ms-2.5ms
    {
        gpio_write_pin(14, 1); // 设置GPIO14为高电平
        delay_us(400); // 延时0.5ms
        gpio_write_pin(14, 0); // 设置GPIO14为低电平
        delay_us(20000 - 400); // 延时19.5ms
    }
    else if (index == 2) // 1ms-2.5ms
    {
        gpio_write_pin(14, 1); // 设置GPIO14为高电平
        delay_us(750); // 延时1ms
        gpio_write_pin(14, 0); // 设置GPIO14为低电平
        delay_us(20000 - 750); // 延时19ms
    }
    else if (index == 3) // 1.5ms-2.5ms
    {
        gpio_write_pin(14, 1); // 设置GPIO14为高电平
        delay_us(1200); // 延时1.5ms
        gpio_write_pin(14, 0); // 设置GPIO14为低电平
        delay_us(20000 - 1200); // 延时18.5ms
    }
    else if (index == 4) // 2ms-2.5ms
    {
        gpio_write_pin(14, 1); // 设置GPIO14为高电平
        delay_us(1560); // 延时2ms
        gpio_write_pin(14, 0); // 设置GPIO14为低电平
        delay_us(20000 - 1560); // 延时18ms
    }
    else if (index == 5) // 2.5ms-2.5ms
    {
        gpio_write_pin(14, 1); // 设置GPIO14为高电平
        delay_us(1950); // 延时2.5ms
        gpio_write_pin(14, 0); // 设置GPIO14为低电平
        delay_us(20000 - 1950); // 延时17.5ms
    }
    

}