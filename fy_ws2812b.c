#include "fy_ws2812b.h"

/*

�˴������stm8s003ƽ̨ @16M


�Ƶ����ʾ�������Ҫһ����ˢ�£�����16���ƾͱ���һ����ˢ��16����
������һ��һ���м��м����ˢ�£�������ֻ��һ�ظ�������
�����Ҫ�����Ѳ���Ҫ���ĵ�����Ϊ����0x000000����

*/

/*���¶������û����Ҫ���ж���*/
//#define BYTE_0(n)                 ((u8)((n) & (u8)0xFF))        /*!< Returns the low color of the 32-bit value */
//#define BYTE_1(n)                 ((u8)(BYTE_0((n) >> (u8)8)))  /*!< Returns the second color of the 32-bit value */
//#define BYTE_2(n)                 ((u8)(BYTE_0((n) >> (u8)16))) /*!< Returns the third color of the 32-bit value */
//#define BYTE_3(n)                 ((u8)(BYTE_0((n) >> (u8)24)))
//#define enableInterrupts()	EA=1
//#define disableInterrupts()	EA=0

//����ƽ̨����
#define _nop_() _asm("nop")

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

//����
#define RGB_PIN_H() GPIOC->ODR |= (uint8_t)GPIO_PIN_4;
#define RGB_PIN_L() GPIOC->ODR &= (uint8_t)(~GPIO_PIN_4)

void Ws2812b_Configuration(void)
{
    GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_FAST);
    RGB_PIN_L();
}

/*�����������Ҫ��ʱ�ģ�������ķ�������������*/
static void Ws2812b_WriteByte(u8 color)
{
	if(color & 0x80){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
    if(color & 0x40){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x20){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x10){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x8) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x4) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x2) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x1) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
}

void Ws2812b_Write(u32 color)
{   
    //green
	if(color & 0x8000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
    if(color & 0x4000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x2000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x1000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x800) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x400) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x200) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x100) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }
    //red
	if(color & 0x800000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
    if(color & 0x400000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x200000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x100000){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x80000) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x40000) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x20000) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x10000) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }
    //blue
	if(color & 0x80){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
    if(color & 0x40){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x20){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x10){
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x8) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x4) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x2) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay7NOP();
    }	
	if(color & 0x1) {
        RGB_PIN_H();
        delay12NOP();
        RGB_PIN_L();
    }
	else{      
        RGB_PIN_H();
        delay6NOP();
        RGB_PIN_L();
        delay2NOP();
        /*�������������ʱ*/
        //delay7NOP();
    }    

}

/*********************************************����Ϊ�ײ�***********************************************/

//���õƵ���ɫ
//color:��ɫ���������ȣ�
//num  :�ܹ���led����
void RGB_Refresh(u32 color,u8 num){
	disableInterrupts();//�ر������жϱ������
	while(num--){
		Ws2812b_Write(color);
	}
	enableInterrupts();
}

//��ɫ��ˮ��
//color:��ɫ���������ȣ�
//num  :�ܹ���led����
//speed:��ʱ����λms��
void RGB_Cycle(u32 color,u8 num,u16 speed)
{
	u8 i;
	for(i=1;i<=num;i++){		//������ɫ		
		RGB_Refresh(color,i);
		Delay_ms(speed);
	}
	for(i=1;i<=num;i++){		//��
		RGB_Refresh(0,i);
		Delay_ms(speed);
	}
}

//��ɫ������
//color:��ɫ���������ȣ�
//num  :�ܹ���led����
//speed:��ʱ����λms��
void RGB_Wave(u32 color,u8 num,u16 speed)
{
	u32 color_step=0;
	u32 color_temp = color;
	color_step |= (BYTE_2(color)?0x010000:0x000000);
	color_step |= (BYTE_1(color)?0x000100:0x000000);
	color_step |= (BYTE_0(color)?0x000001:0x000000);
    
	while(//�Ȱ���ɫ�����ȼ�����С
          BYTE_2(color_temp)>=BYTE_2(color_step) &&
              BYTE_1(color_temp)>=BYTE_1(color_step) &&
                  BYTE_0(color_temp)>=BYTE_0(color_step)
                      ){
                          color_temp-=color_step;
                      }
	
	while(		//��������	
          BYTE_2(color_temp)<0xff &&
              BYTE_1(color_temp)<0xff &&
                  BYTE_0(color_temp)<0xff
                      )	{
                          color_temp+=color_step;
                          RGB_Refresh(color_temp,num);
                          Delay_ms(speed);
                      }	
	while(//�����䰵
          BYTE_2(color_temp)>=BYTE_2(color_step) &&
              BYTE_1(color_temp)>=BYTE_1(color_step) &&
                  BYTE_0(color_temp)>=BYTE_0(color_step)
                      ){
                          color_temp-=color_step;
                          RGB_Refresh(color_temp,num);
                          Delay_ms(speed);
                      }
	RGB_Refresh(0,num);
}
//��ɫ��ˮ��
//color:��ɫ���������ȣ�
//num  :�ܹ���led����
//speed:��ʱ����λms��
//cnt  :��˸����
void RGB_Flash(u32 color,u8 num,u16 speed,u8 cnt)
{
	while(cnt--){
		RGB_Refresh(color,num);
		Delay_ms(speed);
		RGB_Refresh(0,num);
		Delay_ms(speed);
	}
}

/*********************************************END OF FILE**********************************************/
