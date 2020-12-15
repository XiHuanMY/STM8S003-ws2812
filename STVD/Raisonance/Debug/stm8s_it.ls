   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 60 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  45                     ; 61 {
  46                     .text:	section	.text,new
  47  0000               f_TRAP_IRQHandler:
  51                     ; 65 }
  54  0000 80            	iret
  76                     ; 72 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  76                     ; 73 
  76                     ; 74 {
  77                     .text:	section	.text,new
  78  0000               f_TLI_IRQHandler:
  82                     ; 78 }
  85  0000 80            	iret
 107                     ; 85 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 107                     ; 86 {
 108                     .text:	section	.text,new
 109  0000               f_AWU_IRQHandler:
 113                     ; 90 }
 116  0000 80            	iret
 138                     ; 97 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 138                     ; 98 {
 139                     .text:	section	.text,new
 140  0000               f_CLK_IRQHandler:
 144                     ; 102 }
 147  0000 80            	iret
 170                     ; 109 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 170                     ; 110 {
 171                     .text:	section	.text,new
 172  0000               f_EXTI_PORTA_IRQHandler:
 176                     ; 114 }
 179  0000 80            	iret
 202                     ; 121 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 202                     ; 122 {
 203                     .text:	section	.text,new
 204  0000               f_EXTI_PORTB_IRQHandler:
 208                     ; 126 }
 211  0000 80            	iret
 234                     ; 133 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 234                     ; 134 {
 235                     .text:	section	.text,new
 236  0000               f_EXTI_PORTC_IRQHandler:
 240                     ; 138 }
 243  0000 80            	iret
 266                     ; 145 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 266                     ; 146 {
 267                     .text:	section	.text,new
 268  0000               f_EXTI_PORTD_IRQHandler:
 272                     ; 150 }
 275  0000 80            	iret
 298                     ; 157 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 298                     ; 158 {
 299                     .text:	section	.text,new
 300  0000               f_EXTI_PORTE_IRQHandler:
 304                     ; 162 }
 307  0000 80            	iret
 329                     ; 209 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 329                     ; 210 {
 330                     .text:	section	.text,new
 331  0000               f_SPI_IRQHandler:
 335                     ; 214 }
 338  0000 80            	iret
 361                     ; 221 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 361                     ; 222 {
 362                     .text:	section	.text,new
 363  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 367                     ; 226 }
 370  0000 80            	iret
 393                     ; 233 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 393                     ; 234 {
 394                     .text:	section	.text,new
 395  0000               f_TIM1_CAP_COM_IRQHandler:
 399                     ; 238 }
 402  0000 80            	iret
 425                     ; 271  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 425                     ; 272  {
 426                     .text:	section	.text,new
 427  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 431                     ; 276  }
 434  0000 80            	iret
 457                     ; 283  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 457                     ; 284  {
 458                     .text:	section	.text,new
 459  0000               f_TIM2_CAP_COM_IRQHandler:
 463                     ; 288  }
 466  0000 80            	iret
 489                     ; 325  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 489                     ; 326  {
 490                     .text:	section	.text,new
 491  0000               f_UART1_TX_IRQHandler:
 495                     ; 330  }
 498  0000 80            	iret
 521                     ; 337  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 521                     ; 338  {
 522                     .text:	section	.text,new
 523  0000               f_UART1_RX_IRQHandler:
 527                     ; 342  }
 530  0000 80            	iret
 552                     ; 350 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 552                     ; 351 {
 553                     .text:	section	.text,new
 554  0000               f_I2C_IRQHandler:
 558                     ; 355 }
 561  0000 80            	iret
 583                     ; 429  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 583                     ; 430  {
 584                     .text:	section	.text,new
 585  0000               f_ADC1_IRQHandler:
 589                     ; 432  }
 592  0000 80            	iret
 616                     ; 454 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 616                     ; 455 {
 617                     .text:	section	.text,new
 618  0000               f_TIM4_UPD_OVF_IRQHandler:
 620  0000 3b0002        	push	c_x+2
 621  0003 be00          	ldw	x,c_x
 622  0005 89            	pushw	x
 623  0006 3b0002        	push	c_y+2
 624  0009 be00          	ldw	x,c_y
 625  000b 89            	pushw	x
 628                     ; 456 	TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
 630  000c a601          	ld	a,#1
 631  000e cd0000        	call	_TIM4_ClearITPendingBit
 633                     ; 457 }
 636  0011 85            	popw	x
 637  0012 bf00          	ldw	c_y,x
 638  0014 320002        	pop	c_y+2
 639  0017 85            	popw	x
 640  0018 bf00          	ldw	c_x,x
 641  001a 320002        	pop	c_x+2
 642  001d 80            	iret
 665                     ; 465 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 665                     ; 466 {
 666                     .text:	section	.text,new
 667  0000               f_EEPROM_EEC_IRQHandler:
 671                     ; 470 }
 674  0000 80            	iret
 686                     	xdef	f_EEPROM_EEC_IRQHandler
 687                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 688                     	xdef	f_ADC1_IRQHandler
 689                     	xdef	f_I2C_IRQHandler
 690                     	xdef	f_UART1_RX_IRQHandler
 691                     	xdef	f_UART1_TX_IRQHandler
 692                     	xdef	f_TIM2_CAP_COM_IRQHandler
 693                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 694                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 695                     	xdef	f_TIM1_CAP_COM_IRQHandler
 696                     	xdef	f_SPI_IRQHandler
 697                     	xdef	f_EXTI_PORTE_IRQHandler
 698                     	xdef	f_EXTI_PORTD_IRQHandler
 699                     	xdef	f_EXTI_PORTC_IRQHandler
 700                     	xdef	f_EXTI_PORTB_IRQHandler
 701                     	xdef	f_EXTI_PORTA_IRQHandler
 702                     	xdef	f_CLK_IRQHandler
 703                     	xdef	f_AWU_IRQHandler
 704                     	xdef	f_TLI_IRQHandler
 705                     	xdef	f_TRAP_IRQHandler
 706                     	xref	_TIM4_ClearITPendingBit
 707                     	xref.b	c_x
 708                     	xref.b	c_y
 727                     	end
