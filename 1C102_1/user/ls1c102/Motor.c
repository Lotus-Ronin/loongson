#include "ls1x.h"
#include "ls1c102_interrupt.h"
#include "ls1c102_ptimer.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "Motor.h"

void Motor_Init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(GPIO_PIN_39, GPIO_Mode_Out); 
    gpio_set_direction(GPIO_PIN_38, GPIO_Mode_Out); 
   
}


void motor_setspeed(int speed)
{
	//针对正转和翻转
	if(speed >= 0)//正转的逻辑
	{
		//首先将方向控制脚设置为一个高电平，一个低电平
		gpio_write_pin(GPIO_PIN_39,1);
		gpio_write_pin(GPIO_PIN_38,0);
		//速度
		TIM_SetCompare1(34,speed);
	}
	else//speed就是负数，代表反转
	{
		//首先是正反转，将set和reset反过来就能反转了 
		gpio_write_pin(GPIO_PIN_39,0);
		gpio_write_pin(GPIO_PIN_38,1);
		//速度
		TIM_SetCompare1(34,-speed);
	}
 
}
