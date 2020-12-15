/**
  ******************************************************************************
  * @file    EXTI_InterruptPriority\main.h
  * @author  MCD Application Team
  * @version V2.0.4
  * @date    26-April-2018
  * @brief   This file contains the external declaration for main.c file.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

/* Private typedef -----------------------------------------------------------*/

static bool fPowerOn_flag = FALSE;
void Clk_Init(void); 
void MWWDG_Init(void);
void Free_WWDG(void);
void Delay (uint16_t nCount);
void KEY_Init(void);
void IR_Init(void);
void POWER_Init(void);
void LED_Init(void);
void Beep_Init(void);
void Data_Init(void);
void Send_data(void);
void Hard_OFF(void);
void Hard_init(void);
/* Private define ------------------------------------------------------------*/
/* Evalboard I/Os configuration */
#define LED_ON() GPIO_WriteHigh(GPIOC, GPIO_PIN_7)
#define LED_OFF() GPIO_WriteLow(GPIOC, GPIO_PIN_7)	

#define Beep_ON() GPIO_WriteHigh(GPIOD, GPIO_PIN_4)
#define Beep_OFF() GPIO_WriteLow(GPIOD, GPIO_PIN_4)					

#define POWER_ON() GPIO_WriteHigh(GPIOC, GPIO_PIN_3)			
#define POWER_OFF() GPIO_WriteLow(GPIOC, GPIO_PIN_3)				


//#define 
//#define 










/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Public functions ----------------------------------------------------------*/

#endif /* __MAIN_H */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
