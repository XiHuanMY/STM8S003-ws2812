#include "fy_includes.h"

void Delay_us(u16 nus)
{
    nus *=3.2; 
    while(--nus);
}

void Delay_ms(u16 nms)
{
    while(nms--)
      Delay_us(1000);
}


/*********************************************END OF FILE**********************************************/
