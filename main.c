/**
  ******************************************************************************
  * @file    TIM2_PWM_DutyCycleConfiguration\main.c
  * @author  MCD Application Team
  * @version V2.0.4
  * @date     26-April-2018
  * @brief   This file contains the main function for TIM2 PWM_DutyCycleConfiguration
  *          example.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "fy_includes.h"
#define _nop_()  _asm("nop")
 
#define delay1NOP()	_nop_();
#define delay2NOP()	delay1NOP();_nop_();
#define delay3NOP()	delay2NOP();_nop_();
#define	delay4NOP()	delay3NOP();_nop_();
#define	delay5NOP()	delay4NOP();_nop_();
#define	delay6NOP()	delay5NOP();_nop_();
#define	delay7NOP()	delay6NOP();_nop_();
#define	delay8NOP()	delay7NOP();_nop_();
#define	delay9NOP()	delay8NOP();_nop_();
#define	delay10NOP()	delay9NOP();_nop_();
#define	delay11NOP()	delay10NOP();_nop_();
#define	delay12NOP()	delay11NOP();_nop_();
#define	delay13NOP()	delay12NOP();_nop_();
#define	delay14NOP()	delay13NOP();_nop_();
#define	delay15NOP()	delay14NOP();_nop_();
/**
  * @addtogroup TIM2_PWM_DutyCycleConfiguration
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
uint16_t CCR1_Val = 1000;
uint16_t CCR2_Val = 250;
uint16_t CCR3_Val = 125;

/* Private function prototypes -----------------------------------------------*/
void Clk_Init(void) ;
static void TIM2_Config(void);
static void Ws2812b_Write0(void);
static void Ws2812b_Write1(void);
static void Ws2812b_WriteByte(u8 color);
void set_color_3(u32 color);
void Ws2812b_Write(u32 color);
void Dely1ms(void);
void DelyMs(uint32_t ms);
/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
#define RGB_PIN_H() GPIO_WriteHigh(GPIOC, (GPIO_Pin_TypeDef) GPIO_PIN_4);
#define RGB_PIN_L() GPIO_WriteLow(GPIOC, (GPIO_Pin_TypeDef) GPIO_PIN_4);
u32 color = 0x000000;
u32 RGB_i ;
void set_color_3(u32 color)
{
	Ws2812b_Write(color);
  Ws2812b_Write(color);
	Ws2812b_Write(color);
}
void main(void)
{
	int num = 4;
	 Clk_Init(); //系统时钟初始化函数
  /* TIM2 configuration -----------------------------------------*/
  TIM2_Config();  
  Dely1ms();
	GPIO_Init(GPIOC, (GPIO_Pin_TypeDef) GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
	RGB_PIN_L();
	//set_color_3(0x0000ff);
  while (1)
  {
		color = 0x00000;
		//000000到FF0000 灭变红
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color = color + 0x10000;;set_color_3(color);
			DelyMs(10);
		}
		//FF0000到ffff00 红变黄
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color = color + 0x100;set_color_3(color);
			DelyMs(10);
		}
		//ffff00到00ff00 黄变绿
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color = color - 0x10000;set_color_3(color);
			DelyMs(10);
		}
		//00ff00 到00ffff 绿变青
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color++;set_color_3(color);
			DelyMs(10);
		}
		//00ffff 到0000ff 青变蓝
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color = color - 0x100;set_color_3(color);
			DelyMs(10);
		}
		//0000ff 到ff00ff 蓝变紫
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color = color + 0x10000;set_color_3(color);
			DelyMs(10);
		}
		//ff00ff 到0000ff 紫变红
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color--;set_color_3(color);
			DelyMs(10);
		}
		//0000ff 到000000 红变灭
		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
			color = color - 0x10000;set_color_3(color);
			DelyMs(10);
		}
	}
}

void Clk_Init(void)                
{
  CLK_DeInit();//复位时钟寄存器
  CLK_HSICmd(ENABLE);//使能内部高速时钟
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);//配置内部高速时钟(时钟分频器:4分频),系统时钟4MHz
  CLK_ClockSecuritySystemEnable();//开启时钟安全系统
}

/**
  * @brief  Configure TIM2 peripheral in PWM mode
  * @param  None
  * @retval None
  */
static void TIM2_Config(void)
{
  /* Time base configuration */
  TIM2_TimeBaseInit(TIM2_PRESCALER_1, 999);

  /* PWM1 Mode configuration: Channel1 */ 
  TIM2_OC1Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE,800, TIM2_OCPOLARITY_HIGH); //占空比50%
  TIM2_OC1PreloadConfig(ENABLE);

  TIM2_ARRPreloadConfig(ENABLE);

  /* TIM2 enable counter */
  TIM2_Cmd(ENABLE);
}
void Dely1ms(void)
{
	TIM4_DeInit();
	TIM4_TimeBaseInit(TIM4_PRESCALER_64, 248);
	/* Clear TIM4 update flag */
	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	/* Enable update interrupt */
	TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
	
	/* Enable TIM4 */
	TIM4_Cmd(ENABLE);

	while( SET != TIM4_GetFlagStatus(TIM4_FLAG_UPDATE));
}

void DelyMs(uint32_t ms)
{
	while(ms--) Dely1ms();
}
#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
