#include "fy_ws2812b.h"

/*

此代码针对stm8s003平台 @16M


灯的性质决定，需要一次性刷新，比如16个灯就必须一次性刷新16个，
而不能一个一个中间有间隔的刷新，这样就只有一地个灯亮，
如果需要花样把不需要亮的灯设置为不亮0x000000即可

*/

/*以下定义如果没有需要自行定义*/
//#define BYTE_0(n)                 ((u8)((n) & (u8)0xFF))        /*!< Returns the low color of the 32-bit value */
//#define BYTE_1(n)                 ((u8)(BYTE_0((n) >> (u8)8)))  /*!< Returns the second color of the 32-bit value */
//#define BYTE_2(n)                 ((u8)(BYTE_0((n) >> (u8)16))) /*!< Returns the third color of the 32-bit value */
//#define BYTE_3(n)                 ((u8)(BYTE_0((n) >> (u8)24)))
//#define enableInterrupts()	EA=1
//#define disableInterrupts()	EA=0

//根据平台定义
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

//引脚
#define RGB_PIN_H() GPIOC->ODR |= (uint8_t)GPIO_PIN_4;
#define RGB_PIN_L() GPIOC->ODR &= (uint8_t)(~GPIO_PIN_4)

void Ws2812b_Configuration(void)
{
    GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_FAST);
    RGB_PIN_L();
}

/*程序进出都需要耗时的，用下面的方法替代上面更佳*/
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
        /*程序进出会有延时*/
        //delay7NOP();
    }    

}

/*********************************************以上为底层***********************************************/

//设置灯的颜色
//color:颜色（包含亮度）
//num  :总共的led数量
void RGB_Refresh(u32 color,u8 num){
	disableInterrupts();//关闭所有中断避免打扰
	while(num--){
		Ws2812b_Write(color);
	}
	enableInterrupts();
}

//颜色流水灯
//color:颜色（包含亮度）
//num  :总共的led数量
//speed:延时（单位ms）
void RGB_Cycle(u32 color,u8 num,u16 speed)
{
	u8 i;
	for(i=1;i<=num;i++){		//设置颜色		
		RGB_Refresh(color,i);
		Delay_ms(speed);
	}
	for(i=1;i<=num;i++){		//灭
		RGB_Refresh(0,i);
		Delay_ms(speed);
	}
}

//颜色呼吸灯
//color:颜色（包含亮度）
//num  :总共的led数量
//speed:延时（单位ms）
void RGB_Wave(u32 color,u8 num,u16 speed)
{
	u32 color_step=0;
	u32 color_temp = color;
	color_step |= (BYTE_2(color)?0x010000:0x000000);
	color_step |= (BYTE_1(color)?0x000100:0x000000);
	color_step |= (BYTE_0(color)?0x000001:0x000000);
    
	while(//先把颜色的亮度见到最小
          BYTE_2(color_temp)>=BYTE_2(color_step) &&
              BYTE_1(color_temp)>=BYTE_1(color_step) &&
                  BYTE_0(color_temp)>=BYTE_0(color_step)
                      ){
                          color_temp-=color_step;
                      }
	
	while(		//缓慢变亮	
          BYTE_2(color_temp)<0xff &&
              BYTE_1(color_temp)<0xff &&
                  BYTE_0(color_temp)<0xff
                      )	{
                          color_temp+=color_step;
                          RGB_Refresh(color_temp,num);
                          Delay_ms(speed);
                      }	
	while(//缓慢变暗
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
//颜色流水灯
//color:颜色（包含亮度）
//num  :总共的led数量
//speed:延时（单位ms）
//cnt  :闪烁次数
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
