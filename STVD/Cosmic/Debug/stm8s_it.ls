   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  21                     	bsct
  22  0000               L3_fPowerOn_flag:
  23  0000 00            	dc.b	0
 102                     ; 49 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
 102                     ; 50 {
 103                     .text:	section	.text,new
 104  0000               f_NonHandledInterrupt:
 108                     ; 54 }
 111  0000 80            	iret	
 133                     ; 62 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
 133                     ; 63 {
 134                     .text:	section	.text,new
 135  0000               f_TRAP_IRQHandler:
 139                     ; 67 }
 142  0000 80            	iret	
 164                     ; 73 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 164                     ; 74 {
 165                     .text:	section	.text,new
 166  0000               f_TLI_IRQHandler:
 170                     ; 78 }
 173  0000 80            	iret	
 195                     ; 85 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 195                     ; 86 {
 196                     .text:	section	.text,new
 197  0000               f_AWU_IRQHandler:
 201                     ; 90 }
 204  0000 80            	iret	
 226                     ; 97 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 226                     ; 98 {
 227                     .text:	section	.text,new
 228  0000               f_CLK_IRQHandler:
 232                     ; 102 }
 235  0000 80            	iret	
 263                     ; 109 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 263                     ; 110 {
 264                     .text:	section	.text,new
 265  0000               f_EXTI_PORTA_IRQHandler:
 267  0000 3b0002        	push	c_x+2
 268  0003 be00          	ldw	x,c_x
 269  0005 89            	pushw	x
 270  0006 3b0002        	push	c_y+2
 271  0009 be00          	ldw	x,c_y
 272  000b 89            	pushw	x
 275                     ; 112 	disableInterrupts();
 278  000c 9b            	sim	
 280                     ; 113 	Delay(50);
 283  000d ae0032        	ldw	x,#50
 284  0010 cd0000        	call	_Delay
 286                     ; 114 	if ((GPIO_ReadInputData(GPIOA) & GPIO_PIN_3) == 0x00)
 288  0013 ae5000        	ldw	x,#20480
 289  0016 cd0000        	call	_GPIO_ReadInputData
 291  0019 a508          	bcp	a,#8
 292  001b 2609          	jrne	L711
 293                     ; 116 		GPIO_WriteReverse(GPIOC, GPIO_PIN_7);	
 295  001d 4b80          	push	#128
 296  001f ae500a        	ldw	x,#20490
 297  0022 cd0000        	call	_GPIO_WriteReverse
 299  0025 84            	pop	a
 300  0026               L711:
 301                     ; 118 	enableInterrupts();
 304  0026 9a            	rim	
 306                     ; 126 }
 310  0027 85            	popw	x
 311  0028 bf00          	ldw	c_y,x
 312  002a 320002        	pop	c_y+2
 313  002d 85            	popw	x
 314  002e bf00          	ldw	c_x,x
 315  0030 320002        	pop	c_x+2
 316  0033 80            	iret	
 339                     ; 133 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 339                     ; 134 {
 340                     .text:	section	.text,new
 341  0000               f_EXTI_PORTB_IRQHandler:
 345                     ; 147 }
 348  0000 80            	iret	
 371                     ; 154 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 371                     ; 155 {
 372                     .text:	section	.text,new
 373  0000               f_EXTI_PORTC_IRQHandler:
 377                     ; 163 }
 380  0000 80            	iret	
 403                     ; 170 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 403                     ; 171 {
 404                     .text:	section	.text,new
 405  0000               f_EXTI_PORTD_IRQHandler:
 409                     ; 175 }
 412  0000 80            	iret	
 435                     ; 182 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 435                     ; 183 {
 436                     .text:	section	.text,new
 437  0000               f_EXTI_PORTE_IRQHandler:
 441                     ; 187 }
 444  0000 80            	iret	
 466                     ; 233 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 466                     ; 234 {
 467                     .text:	section	.text,new
 468  0000               f_SPI_IRQHandler:
 472                     ; 238 }
 475  0000 80            	iret	
 498                     ; 245 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 498                     ; 246 {
 499                     .text:	section	.text,new
 500  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 504                     ; 250 }
 507  0000 80            	iret	
 530                     ; 257 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 530                     ; 258 {
 531                     .text:	section	.text,new
 532  0000               f_TIM1_CAP_COM_IRQHandler:
 536                     ; 262 }
 539  0000 80            	iret	
 562                     ; 294  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 562                     ; 295 {
 563                     .text:	section	.text,new
 564  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 568                     ; 299 }
 571  0000 80            	iret	
 594                     ; 306  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 594                     ; 307 {
 595                     .text:	section	.text,new
 596  0000               f_TIM2_CAP_COM_IRQHandler:
 600                     ; 311 }
 603  0000 80            	iret	
 626                     ; 348  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 626                     ; 349 {
 627                     .text:	section	.text,new
 628  0000               f_UART1_TX_IRQHandler:
 632                     ; 353 }
 635  0000 80            	iret	
 658                     ; 360  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 658                     ; 361 {
 659                     .text:	section	.text,new
 660  0000               f_UART1_RX_IRQHandler:
 664                     ; 365 }
 667  0000 80            	iret	
 689                     ; 373 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 689                     ; 374 {
 690                     .text:	section	.text,new
 691  0000               f_I2C_IRQHandler:
 695                     ; 378 }
 698  0000 80            	iret	
 720                     ; 453  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 720                     ; 454 {
 721                     .text:	section	.text,new
 722  0000               f_ADC1_IRQHandler:
 726                     ; 459     return;
 729  0000 80            	iret	
 752                     ; 482  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 752                     ; 483 {
 753                     .text:	section	.text,new
 754  0000               f_TIM4_UPD_OVF_IRQHandler:
 758                     ; 487 }
 761  0000 80            	iret	
 784                     ; 495 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 784                     ; 496 {
 785                     .text:	section	.text,new
 786  0000               f_EEPROM_EEC_IRQHandler:
 790                     ; 500 }
 793  0000 80            	iret	
 805                     	xref	_Delay
 806                     	xdef	f_EEPROM_EEC_IRQHandler
 807                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 808                     	xdef	f_ADC1_IRQHandler
 809                     	xdef	f_I2C_IRQHandler
 810                     	xdef	f_UART1_RX_IRQHandler
 811                     	xdef	f_UART1_TX_IRQHandler
 812                     	xdef	f_TIM2_CAP_COM_IRQHandler
 813                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 814                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 815                     	xdef	f_TIM1_CAP_COM_IRQHandler
 816                     	xdef	f_SPI_IRQHandler
 817                     	xdef	f_EXTI_PORTE_IRQHandler
 818                     	xdef	f_EXTI_PORTD_IRQHandler
 819                     	xdef	f_EXTI_PORTC_IRQHandler
 820                     	xdef	f_EXTI_PORTB_IRQHandler
 821                     	xdef	f_EXTI_PORTA_IRQHandler
 822                     	xdef	f_CLK_IRQHandler
 823                     	xdef	f_AWU_IRQHandler
 824                     	xdef	f_TLI_IRQHandler
 825                     	xdef	f_TRAP_IRQHandler
 826                     	xdef	f_NonHandledInterrupt
 827                     	xref	_GPIO_ReadInputData
 828                     	xref	_GPIO_WriteReverse
 829                     	xref.b	c_x
 830                     	xref.b	c_y
 849                     	end
