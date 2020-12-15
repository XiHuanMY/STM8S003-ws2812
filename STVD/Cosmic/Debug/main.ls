   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  21                     	bsct
  22  0000               L3_fPowerOn_flag:
  23  0000 00            	dc.b	0
 120                     ; 60 void main(void)
 120                     ; 61 {
 122                     .text:	section	.text,new
 123  0000               _main:
 125  0000 89            	pushw	x
 126       00000002      OFST:	set	2
 129                     ; 62 	int i=0;
 131  0001 5f            	clrw	x
 132  0002 1f01          	ldw	(OFST-1,sp),x
 133                     ; 64   Clk_Init(); //系统时钟初始化函数
 135  0004 cd0000        	call	_Clk_Init
 137                     ; 66   MWWDG_Init();//窗口看门狗初始化函数
 139  0007 cd0000        	call	_MWWDG_Init
 141                     ; 67 	Hard_init();
 143  000a cd0000        	call	_Hard_init
 145                     ; 68 	disableInterrupts();
 148  000d 9b            	sim	
 150                     ; 70 	KEY_Init();
 153  000e cd0000        	call	_KEY_Init
 155                     ; 71 	enableInterrupts();
 158  0011 9a            	rim	
 160  0012               L55:
 161                     ; 76 	  Delay(0x6FFF);
 163  0012 ae6fff        	ldw	x,#28671
 164  0015 cd0000        	call	_Delay
 166                     ; 79 		Free_WWDG();//喂狗函数
 168  0018 cd0000        	call	_Free_WWDG
 171  001b 20f5          	jra	L55
 205                     ; 103 void Delay(uint16_t nCount)
 205                     ; 104 {
 206                     .text:	section	.text,new
 207  0000               _Delay:
 209  0000 89            	pushw	x
 210       00000000      OFST:	set	0
 213  0001 2003          	jra	L101
 214  0003               L77:
 215                     ; 108     nCount--;
 217  0003 5a            	decw	x
 218  0004 1f01          	ldw	(OFST+1,sp),x
 219  0006               L101:
 220                     ; 106   while (nCount != 0)
 222  0006 1e01          	ldw	x,(OFST+1,sp)
 223  0008 26f9          	jrne	L77
 224                     ; 110 }
 227  000a 85            	popw	x
 228  000b 81            	ret	
 263                     ; 121 void assert_failed(uint8_t* file, uint32_t line)
 263                     ; 122 { 
 264                     .text:	section	.text,new
 265  0000               _assert_failed:
 269  0000               L321:
 270  0000 20fe          	jra	L321
 297                     ; 134 void Clk_Init(void)                
 297                     ; 135 {
 298                     .text:	section	.text,new
 299  0000               _Clk_Init:
 303                     ; 136   CLK_DeInit();//复位时钟寄存器
 305  0000 cd0000        	call	_CLK_DeInit
 307                     ; 137   CLK_HSICmd(ENABLE);//使能内部高速时钟
 309  0003 a601          	ld	a,#1
 310  0005 cd0000        	call	_CLK_HSICmd
 312                     ; 138   CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);//配置内部高速时钟(时钟分频器:4分频),系统时钟4MHz
 314  0008 a610          	ld	a,#16
 315  000a cd0000        	call	_CLK_HSIPrescalerConfig
 317                     ; 139   CLK_ClockSecuritySystemEnable();//开启时钟安全系统
 320                     ; 140 }
 323  000d cc0000        	jp	_CLK_ClockSecuritySystemEnable
 347                     ; 141 void MWWDG_Init(void)
 347                     ; 142 {
 348                     .text:	section	.text,new
 349  0000               _MWWDG_Init:
 353                     ; 155   WWDG_Init(COUNTER_INIT, WINDOW_VALUE);//COUNTERINIT = 0x7f,WINDOW = 0x77
 355  0000 ae0077        	ldw	x,#119
 356  0003 a67f          	ld	a,#127
 357  0005 95            	ld	xh,a
 359                     ; 156 }
 362  0006 cc0000        	jp	_WWDG_Init
 398                     ; 159 void Free_WWDG(void)
 398                     ; 160 {
 399                     .text:	section	.text,new
 400  0000               _Free_WWDG:
 402  0000 88            	push	a
 403       00000001      OFST:	set	1
 406                     ; 162   CounterValue = (uint8_t)(WWDG_GetCounter() & 0x7F);
 408  0001 cd0000        	call	_WWDG_GetCounter
 410  0004 a47f          	and	a,#127
 411  0006 6b01          	ld	(OFST+0,sp),a
 412                     ; 168   if(CounterValue < WINDOW_VALUE){
 414  0008 a177          	cp	a,#119
 415  000a 2405          	jruge	L561
 416                     ; 169     WWDG_SetCounter(COUNTER_INIT);
 418  000c a67f          	ld	a,#127
 419  000e cd0000        	call	_WWDG_SetCounter
 421  0011               L561:
 422                     ; 171 }
 425  0011 84            	pop	a
 426  0012 81            	ret	
 453                     ; 174 void Hard_init(void)
 453                     ; 175 {
 454                     .text:	section	.text,new
 455  0000               _Hard_init:
 459                     ; 176 	IR_Init();//红外引脚初始化
 461  0000 cd0000        	call	_IR_Init
 463                     ; 177 	POWER_Init();
 465  0003 cd0000        	call	_POWER_Init
 467                     ; 178 	LED_Init();
 469  0006 cd0000        	call	_LED_Init
 471                     ; 180 	Data_Init();
 474                     ; 181 }
 477  0009 cc0000        	jp	_Data_Init
 503                     ; 185 void KEY_Init(void)
 503                     ; 186 {
 504                     .text:	section	.text,new
 505  0000               _KEY_Init:
 509                     ; 191 	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_IN_FL_IT);        /* 配置GPIB PIN5脚为外部中断脚  */    
 511  0000 4b20          	push	#32
 512  0002 4b08          	push	#8
 513  0004 ae5000        	ldw	x,#20480
 514  0007 cd0000        	call	_GPIO_Init
 516  000a 85            	popw	x
 517                     ; 192 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA,EXTI_SENSITIVITY_FALL_ONLY);/* 配置外部中断 上升沿*/
 519  000b ae0002        	ldw	x,#2
 520  000e 4f            	clr	a
 521  000f 95            	ld	xh,a
 522  0010 cd0000        	call	_EXTI_SetExtIntSensitivity
 524                     ; 193   EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
 526  0013 4f            	clr	a
 528                     ; 194 }
 531  0014 cc0000        	jp	_EXTI_SetTLISensitivity
 554                     ; 196 void IR_Init(void)
 554                     ; 197 {
 555                     .text:	section	.text,new
 556  0000               _IR_Init:
 560                     ; 201 }
 563  0000 81            	ret	
 588                     ; 202 void POWER_Init(void)
 588                     ; 203 {
 589                     .text:	section	.text,new
 590  0000               _POWER_Init:
 594                     ; 204 	GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_3), GPIO_MODE_OUT_PP_LOW_FAST); //红外输入引脚 浮空输入无中断
 596  0000 4be0          	push	#224
 597  0002 4b08          	push	#8
 598  0004 ae500a        	ldw	x,#20490
 599  0007 cd0000        	call	_GPIO_Init
 601  000a 85            	popw	x
 602                     ; 205 	GPIO_WriteHigh(GPIOC, GPIO_PIN_3);																			//关LED
 604  000b 4b08          	push	#8
 605  000d ae500a        	ldw	x,#20490
 606  0010 cd0000        	call	_GPIO_WriteHigh
 608  0013 84            	pop	a
 609                     ; 206 }
 612  0014 81            	ret	
 637                     ; 208 void LED_Init(void) //low on           high off
 637                     ; 209 {
 638                     .text:	section	.text,new
 639  0000               _LED_Init:
 643                     ; 210 	GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_7), GPIO_MODE_OUT_PP_LOW_FAST); //红外输入引脚 浮空输入无中断
 645  0000 4be0          	push	#224
 646  0002 4b80          	push	#128
 647  0004 ae500a        	ldw	x,#20490
 648  0007 cd0000        	call	_GPIO_Init
 650  000a 85            	popw	x
 651                     ; 211 	GPIO_WriteLow(GPIOC, GPIO_PIN_7);																			//关LED
 653  000b 4b80          	push	#128
 654  000d ae500a        	ldw	x,#20490
 655  0010 cd0000        	call	_GPIO_WriteLow
 657  0013 84            	pop	a
 658                     ; 212 }
 661  0014 81            	ret	
 686                     ; 213 void Beep_Init(void) //high on    low off
 686                     ; 214 {
 687                     .text:	section	.text,new
 688  0000               _Beep_Init:
 692                     ; 215 	GPIO_Init(GPIOD, (GPIO_Pin_TypeDef)(GPIO_PIN_4), GPIO_MODE_OUT_PP_LOW_FAST); //红外输入引脚 浮空输入无中断
 694  0000 4be0          	push	#224
 695  0002 4b10          	push	#16
 696  0004 ae500f        	ldw	x,#20495
 697  0007 cd0000        	call	_GPIO_Init
 699  000a 85            	popw	x
 700                     ; 216 	GPIO_WriteLow(GPIOD, GPIO_PIN_4);																			//关LED
 702  000b 4b10          	push	#16
 703  000d ae500f        	ldw	x,#20495
 704  0010 cd0000        	call	_GPIO_WriteLow
 706  0013 84            	pop	a
 707                     ; 217 }
 710  0014 81            	ret	
 735                     ; 219 void Data_Init(void) //low on           high off
 735                     ; 220 {
 736                     .text:	section	.text,new
 737  0000               _Data_Init:
 741                     ; 225 	GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_5), GPIO_MODE_OUT_PP_LOW_FAST); //红外输入引脚 浮空输入无中断
 743  0000 4be0          	push	#224
 744  0002 4b20          	push	#32
 745  0004 ae500a        	ldw	x,#20490
 746  0007 cd0000        	call	_GPIO_Init
 748  000a 85            	popw	x
 749                     ; 226 	GPIO_WriteLow(GPIOC, GPIO_PIN_5);	
 751  000b 4b20          	push	#32
 752  000d ae500a        	ldw	x,#20490
 753  0010 cd0000        	call	_GPIO_WriteLow
 755  0013 84            	pop	a
 756                     ; 229 }
 759  0014 81            	ret	
 785                     ; 235 void Send_data(void)
 785                     ; 236 {
 786                     .text:	section	.text,new
 787  0000               _Send_data:
 791                     ; 237 	Beep_OFF();
 793  0000 4b10          	push	#16
 794  0002 ae500f        	ldw	x,#20495
 795  0005 cd0000        	call	_GPIO_WriteLow
 797  0008 84            	pop	a
 798                     ; 238 	GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
 800  0009 4b20          	push	#32
 801  000b ae500a        	ldw	x,#20490
 802  000e cd0000        	call	_GPIO_WriteHigh
 804  0011 ae0046        	ldw	x,#70
 805  0014 84            	pop	a
 806                     ; 239 	Delay(70);
 808  0015 cd0000        	call	_Delay
 810                     ; 240 	GPIO_WriteLow(GPIOC, GPIO_PIN_5);
 812  0018 4b20          	push	#32
 813  001a ae500a        	ldw	x,#20490
 814  001d cd0000        	call	_GPIO_WriteLow
 816  0020 84            	pop	a
 817                     ; 241 }
 820  0021 81            	ret	
 833                     	xdef	_main
 834                     	xdef	_Hard_init
 835                     	xdef	_Send_data
 836                     	xdef	_Data_Init
 837                     	xdef	_Beep_Init
 838                     	xdef	_LED_Init
 839                     	xdef	_POWER_Init
 840                     	xdef	_IR_Init
 841                     	xdef	_KEY_Init
 842                     	xdef	_Delay
 843                     	xdef	_Free_WWDG
 844                     	xdef	_MWWDG_Init
 845                     	xdef	_Clk_Init
 846                     	xdef	_assert_failed
 847                     	xref	_WWDG_GetCounter
 848                     	xref	_WWDG_SetCounter
 849                     	xref	_WWDG_Init
 850                     	xref	_GPIO_WriteLow
 851                     	xref	_GPIO_WriteHigh
 852                     	xref	_GPIO_Init
 853                     	xref	_EXTI_SetTLISensitivity
 854                     	xref	_EXTI_SetExtIntSensitivity
 855                     	xref	_CLK_ClockSecuritySystemEnable
 856                     	xref	_CLK_HSIPrescalerConfig
 857                     	xref	_CLK_HSICmd
 858                     	xref	_CLK_DeInit
 877                     	end
