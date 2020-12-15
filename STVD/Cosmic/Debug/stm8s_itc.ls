   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 50 uint8_t ITC_GetCPUCC(void)
  49                     ; 51 {
  51                     .text:	section	.text,new
  52  0000               _ITC_GetCPUCC:
  56                     ; 53   _asm("push cc");
  59  0000 8a            	push	cc
  61                     ; 54   _asm("pop a");
  64  0001 84            	pop	a
  66                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  69  0002 81            	ret	
  92                     ; 80 void ITC_DeInit(void)
  92                     ; 81 {
  93                     .text:	section	.text,new
  94  0000               _ITC_DeInit:
  98                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
 100  0000 35ff7f70      	mov	32624,#255
 101                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 103  0004 35ff7f71      	mov	32625,#255
 104                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 106  0008 35ff7f72      	mov	32626,#255
 107                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 109  000c 35ff7f73      	mov	32627,#255
 110                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 112  0010 35ff7f74      	mov	32628,#255
 113                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 115  0014 35ff7f75      	mov	32629,#255
 116                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 118  0018 35ff7f76      	mov	32630,#255
 119                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 121  001c 35ff7f77      	mov	32631,#255
 122                     ; 90 }
 125  0020 81            	ret	
 150                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 150                     ; 98 {
 151                     .text:	section	.text,new
 152  0000               _ITC_GetSoftIntStatus:
 156                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 158  0000 cd0000        	call	_ITC_GetCPUCC
 160  0003 a428          	and	a,#40
 163  0005 81            	ret	
 413                     .const:	section	.text
 414  0000               L23:
 415  0000 0035          	dc.w	L14
 416  0002 0035          	dc.w	L14
 417  0004 0035          	dc.w	L14
 418  0006 0035          	dc.w	L14
 419  0008 003a          	dc.w	L34
 420  000a 003a          	dc.w	L34
 421  000c 003a          	dc.w	L34
 422  000e 003a          	dc.w	L34
 423  0010 005a          	dc.w	L502
 424  0012 005a          	dc.w	L502
 425  0014 003f          	dc.w	L54
 426  0016 003f          	dc.w	L54
 427  0018 0044          	dc.w	L74
 428  001a 0044          	dc.w	L74
 429  001c 0044          	dc.w	L74
 430  001e 0044          	dc.w	L74
 431  0020 0049          	dc.w	L15
 432  0022 0049          	dc.w	L15
 433  0024 0049          	dc.w	L15
 434  0026 0049          	dc.w	L15
 435  0028 005a          	dc.w	L502
 436  002a 005a          	dc.w	L502
 437  002c 004e          	dc.w	L35
 438  002e 004e          	dc.w	L35
 439  0030 0053          	dc.w	L55
 440                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 440                     ; 108 {
 441                     .text:	section	.text,new
 442  0000               _ITC_GetSoftwarePriority:
 444  0000 88            	push	a
 445  0001 89            	pushw	x
 446       00000002      OFST:	set	2
 449                     ; 109   uint8_t Value = 0;
 451  0002 0f02          	clr	(OFST+0,sp)
 452                     ; 110   uint8_t Mask = 0;
 454                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 456  0004 a119          	cp	a,#25
 457  0006 250e          	jrult	L02
 458  0008 ae0071        	ldw	x,#113
 459  000b 89            	pushw	x
 460  000c 5f            	clrw	x
 461  000d 89            	pushw	x
 462  000e ae0064        	ldw	x,#L102
 463  0011 cd0000        	call	_assert_failed
 465  0014 5b04          	addw	sp,#4
 466  0016               L02:
 467                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 469  0016 7b03          	ld	a,(OFST+1,sp)
 470  0018 a403          	and	a,#3
 471  001a 48            	sll	a
 472  001b 5f            	clrw	x
 473  001c 97            	ld	xl,a
 474  001d a603          	ld	a,#3
 475  001f 5d            	tnzw	x
 476  0020 2704          	jreq	L42
 477  0022               L62:
 478  0022 48            	sll	a
 479  0023 5a            	decw	x
 480  0024 26fc          	jrne	L62
 481  0026               L42:
 482  0026 6b01          	ld	(OFST-1,sp),a
 483                     ; 118   switch (IrqNum)
 485  0028 7b03          	ld	a,(OFST+1,sp)
 487                     ; 198   default:
 487                     ; 199     break;
 488  002a a119          	cp	a,#25
 489  002c 242c          	jruge	L502
 490  002e 5f            	clrw	x
 491  002f 97            	ld	xl,a
 492  0030 58            	sllw	x
 493  0031 de0000        	ldw	x,(L23,x)
 494  0034 fc            	jp	(x)
 495  0035               L14:
 496                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 496                     ; 121   case ITC_IRQ_AWU:
 496                     ; 122   case ITC_IRQ_CLK:
 496                     ; 123   case ITC_IRQ_PORTA:
 496                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 498  0035 c67f70        	ld	a,32624
 499                     ; 125     break;
 501  0038 201c          	jp	LC001
 502  003a               L34:
 503                     ; 127   case ITC_IRQ_PORTB:
 503                     ; 128   case ITC_IRQ_PORTC:
 503                     ; 129   case ITC_IRQ_PORTD:
 503                     ; 130   case ITC_IRQ_PORTE:
 503                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 505  003a c67f71        	ld	a,32625
 506                     ; 132     break;
 508  003d 2017          	jp	LC001
 509  003f               L54:
 510                     ; 141   case ITC_IRQ_SPI:
 510                     ; 142   case ITC_IRQ_TIM1_OVF:
 510                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 512  003f c67f72        	ld	a,32626
 513                     ; 144     break;
 515  0042 2012          	jp	LC001
 516  0044               L74:
 517                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 517                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 517                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 517                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 517                     ; 150 #else
 517                     ; 151   case ITC_IRQ_TIM2_OVF:
 517                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 517                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 517                     ; 154   case ITC_IRQ_TIM3_OVF:
 517                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 519  0044 c67f73        	ld	a,32627
 520                     ; 156     break;
 522  0047 200d          	jp	LC001
 523  0049               L15:
 524                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 524                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 524                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 524                     ; 161   case ITC_IRQ_UART1_TX:
 524                     ; 162   case ITC_IRQ_UART1_RX:
 524                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 524                     ; 164 #if defined(STM8AF622x)
 524                     ; 165   case ITC_IRQ_UART4_TX:
 524                     ; 166   case ITC_IRQ_UART4_RX:
 524                     ; 167 #endif /*STM8AF622x */
 524                     ; 168   case ITC_IRQ_I2C:
 524                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 526  0049 c67f74        	ld	a,32628
 527                     ; 170     break;
 529  004c 2008          	jp	LC001
 530  004e               L35:
 531                     ; 184   case ITC_IRQ_ADC1:
 531                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 531                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 531                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 531                     ; 188 #else
 531                     ; 189   case ITC_IRQ_TIM4_OVF:
 531                     ; 190 #endif /*STM8S903 or STM8AF622x */
 531                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 533  004e c67f75        	ld	a,32629
 534                     ; 192     break;
 536  0051 2003          	jp	LC001
 537  0053               L55:
 538                     ; 194   case ITC_IRQ_EEPROM_EEC:
 538                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 540  0053 c67f76        	ld	a,32630
 541  0056               LC001:
 542  0056 1401          	and	a,(OFST-1,sp)
 543  0058 6b02          	ld	(OFST+0,sp),a
 544                     ; 196     break;
 546                     ; 198   default:
 546                     ; 199     break;
 548  005a               L502:
 549                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 551  005a 7b03          	ld	a,(OFST+1,sp)
 552  005c a403          	and	a,#3
 553  005e 48            	sll	a
 554  005f 5f            	clrw	x
 555  0060 97            	ld	xl,a
 556  0061 7b02          	ld	a,(OFST+0,sp)
 557  0063 5d            	tnzw	x
 558  0064 2704          	jreq	L43
 559  0066               L63:
 560  0066 44            	srl	a
 561  0067 5a            	decw	x
 562  0068 26fc          	jrne	L63
 563  006a               L43:
 564                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 568  006a 5b03          	addw	sp,#3
 569  006c 81            	ret	
 635                     	switch	.const
 636  0032               L201:
 637  0032 0066          	dc.w	L702
 638  0034 0066          	dc.w	L702
 639  0036 0066          	dc.w	L702
 640  0038 0066          	dc.w	L702
 641  003a 0078          	dc.w	L112
 642  003c 0078          	dc.w	L112
 643  003e 0078          	dc.w	L112
 644  0040 0078          	dc.w	L112
 645  0042 00e2          	dc.w	L362
 646  0044 00e2          	dc.w	L362
 647  0046 008a          	dc.w	L312
 648  0048 008a          	dc.w	L312
 649  004a 009c          	dc.w	L512
 650  004c 009c          	dc.w	L512
 651  004e 009c          	dc.w	L512
 652  0050 009c          	dc.w	L512
 653  0052 00ae          	dc.w	L712
 654  0054 00ae          	dc.w	L712
 655  0056 00ae          	dc.w	L712
 656  0058 00ae          	dc.w	L712
 657  005a 00e2          	dc.w	L362
 658  005c 00e2          	dc.w	L362
 659  005e 00c0          	dc.w	L122
 660  0060 00c0          	dc.w	L122
 661  0062 00d2          	dc.w	L322
 662                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 662                     ; 221 {
 663                     .text:	section	.text,new
 664  0000               _ITC_SetSoftwarePriority:
 666  0000 89            	pushw	x
 667  0001 89            	pushw	x
 668       00000002      OFST:	set	2
 671                     ; 222   uint8_t Mask = 0;
 673                     ; 223   uint8_t NewPriority = 0;
 675                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 677  0002 9e            	ld	a,xh
 678  0003 a119          	cp	a,#25
 679  0005 2506          	jrult	L44
 680  0007 ae00e2        	ldw	x,#226
 681  000a cd00e5        	call	LC002
 682  000d               L44:
 683                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 685  000d 7b04          	ld	a,(OFST+2,sp)
 686  000f a102          	cp	a,#2
 687  0011 2711          	jreq	L45
 688  0013 4a            	dec	a
 689  0014 270e          	jreq	L45
 690  0016 7b04          	ld	a,(OFST+2,sp)
 691  0018 270a          	jreq	L45
 692  001a a103          	cp	a,#3
 693  001c 2706          	jreq	L45
 694  001e ae00e3        	ldw	x,#227
 695  0021 cd00e5        	call	LC002
 696  0024               L45:
 697                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 699  0024 cd0000        	call	_ITC_GetSoftIntStatus
 701  0027 a128          	cp	a,#40
 702  0029 2706          	jreq	L46
 703  002b ae00e6        	ldw	x,#230
 704  002e cd00e5        	call	LC002
 705  0031               L46:
 706                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 708  0031 7b03          	ld	a,(OFST+1,sp)
 709  0033 a403          	and	a,#3
 710  0035 48            	sll	a
 711  0036 5f            	clrw	x
 712  0037 97            	ld	xl,a
 713  0038 a603          	ld	a,#3
 714  003a 5d            	tnzw	x
 715  003b 2704          	jreq	L07
 716  003d               L27:
 717  003d 48            	sll	a
 718  003e 5a            	decw	x
 719  003f 26fc          	jrne	L27
 720  0041               L07:
 721  0041 43            	cpl	a
 722  0042 6b01          	ld	(OFST-1,sp),a
 723                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 725  0044 7b03          	ld	a,(OFST+1,sp)
 726  0046 a403          	and	a,#3
 727  0048 48            	sll	a
 728  0049 5f            	clrw	x
 729  004a 97            	ld	xl,a
 730  004b 7b04          	ld	a,(OFST+2,sp)
 731  004d 5d            	tnzw	x
 732  004e 2704          	jreq	L47
 733  0050               L67:
 734  0050 48            	sll	a
 735  0051 5a            	decw	x
 736  0052 26fc          	jrne	L67
 737  0054               L47:
 738  0054 6b02          	ld	(OFST+0,sp),a
 739                     ; 239   switch (IrqNum)
 741  0056 7b03          	ld	a,(OFST+1,sp)
 743                     ; 329   default:
 743                     ; 330     break;
 744  0058 a119          	cp	a,#25
 745  005a 2503cc00e2    	jruge	L362
 746  005f 5f            	clrw	x
 747  0060 97            	ld	xl,a
 748  0061 58            	sllw	x
 749  0062 de0032        	ldw	x,(L201,x)
 750  0065 fc            	jp	(x)
 751  0066               L702:
 752                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 752                     ; 242   case ITC_IRQ_AWU:
 752                     ; 243   case ITC_IRQ_CLK:
 752                     ; 244   case ITC_IRQ_PORTA:
 752                     ; 245     ITC->ISPR1 &= Mask;
 754  0066 c67f70        	ld	a,32624
 755  0069 1401          	and	a,(OFST-1,sp)
 756  006b c77f70        	ld	32624,a
 757                     ; 246     ITC->ISPR1 |= NewPriority;
 759  006e c67f70        	ld	a,32624
 760  0071 1a02          	or	a,(OFST+0,sp)
 761  0073 c77f70        	ld	32624,a
 762                     ; 247     break;
 764  0076 206a          	jra	L362
 765  0078               L112:
 766                     ; 249   case ITC_IRQ_PORTB:
 766                     ; 250   case ITC_IRQ_PORTC:
 766                     ; 251   case ITC_IRQ_PORTD:
 766                     ; 252   case ITC_IRQ_PORTE:
 766                     ; 253     ITC->ISPR2 &= Mask;
 768  0078 c67f71        	ld	a,32625
 769  007b 1401          	and	a,(OFST-1,sp)
 770  007d c77f71        	ld	32625,a
 771                     ; 254     ITC->ISPR2 |= NewPriority;
 773  0080 c67f71        	ld	a,32625
 774  0083 1a02          	or	a,(OFST+0,sp)
 775  0085 c77f71        	ld	32625,a
 776                     ; 255     break;
 778  0088 2058          	jra	L362
 779  008a               L312:
 780                     ; 264   case ITC_IRQ_SPI:
 780                     ; 265   case ITC_IRQ_TIM1_OVF:
 780                     ; 266     ITC->ISPR3 &= Mask;
 782  008a c67f72        	ld	a,32626
 783  008d 1401          	and	a,(OFST-1,sp)
 784  008f c77f72        	ld	32626,a
 785                     ; 267     ITC->ISPR3 |= NewPriority;
 787  0092 c67f72        	ld	a,32626
 788  0095 1a02          	or	a,(OFST+0,sp)
 789  0097 c77f72        	ld	32626,a
 790                     ; 268     break;
 792  009a 2046          	jra	L362
 793  009c               L512:
 794                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 794                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 794                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 794                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 794                     ; 274 #else
 794                     ; 275   case ITC_IRQ_TIM2_OVF:
 794                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 794                     ; 277 #endif /*STM8S903 or STM8AF622x */
 794                     ; 278   case ITC_IRQ_TIM3_OVF:
 794                     ; 279     ITC->ISPR4 &= Mask;
 796  009c c67f73        	ld	a,32627
 797  009f 1401          	and	a,(OFST-1,sp)
 798  00a1 c77f73        	ld	32627,a
 799                     ; 280     ITC->ISPR4 |= NewPriority;
 801  00a4 c67f73        	ld	a,32627
 802  00a7 1a02          	or	a,(OFST+0,sp)
 803  00a9 c77f73        	ld	32627,a
 804                     ; 281     break;
 806  00ac 2034          	jra	L362
 807  00ae               L712:
 808                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 808                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 808                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 808                     ; 286   case ITC_IRQ_UART1_TX:
 808                     ; 287   case ITC_IRQ_UART1_RX:
 808                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 808                     ; 289 #if defined(STM8AF622x)
 808                     ; 290   case ITC_IRQ_UART4_TX:
 808                     ; 291   case ITC_IRQ_UART4_RX:
 808                     ; 292 #endif /*STM8AF622x */
 808                     ; 293   case ITC_IRQ_I2C:
 808                     ; 294     ITC->ISPR5 &= Mask;
 810  00ae c67f74        	ld	a,32628
 811  00b1 1401          	and	a,(OFST-1,sp)
 812  00b3 c77f74        	ld	32628,a
 813                     ; 295     ITC->ISPR5 |= NewPriority;
 815  00b6 c67f74        	ld	a,32628
 816  00b9 1a02          	or	a,(OFST+0,sp)
 817  00bb c77f74        	ld	32628,a
 818                     ; 296     break;
 820  00be 2022          	jra	L362
 821  00c0               L122:
 822                     ; 312   case ITC_IRQ_ADC1:
 822                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 822                     ; 314     
 822                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 822                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 822                     ; 317 #else
 822                     ; 318   case ITC_IRQ_TIM4_OVF:
 822                     ; 319 #endif /* STM8S903 or STM8AF622x */
 822                     ; 320     ITC->ISPR6 &= Mask;
 824  00c0 c67f75        	ld	a,32629
 825  00c3 1401          	and	a,(OFST-1,sp)
 826  00c5 c77f75        	ld	32629,a
 827                     ; 321     ITC->ISPR6 |= NewPriority;
 829  00c8 c67f75        	ld	a,32629
 830  00cb 1a02          	or	a,(OFST+0,sp)
 831  00cd c77f75        	ld	32629,a
 832                     ; 322     break;
 834  00d0 2010          	jra	L362
 835  00d2               L322:
 836                     ; 324   case ITC_IRQ_EEPROM_EEC:
 836                     ; 325     ITC->ISPR7 &= Mask;
 838  00d2 c67f76        	ld	a,32630
 839  00d5 1401          	and	a,(OFST-1,sp)
 840  00d7 c77f76        	ld	32630,a
 841                     ; 326     ITC->ISPR7 |= NewPriority;
 843  00da c67f76        	ld	a,32630
 844  00dd 1a02          	or	a,(OFST+0,sp)
 845  00df c77f76        	ld	32630,a
 846                     ; 327     break;
 848                     ; 329   default:
 848                     ; 330     break;
 850  00e2               L362:
 851                     ; 332 }
 854  00e2 5b04          	addw	sp,#4
 855  00e4 81            	ret	
 856  00e5               LC002:
 857  00e5 89            	pushw	x
 858  00e6 5f            	clrw	x
 859  00e7 89            	pushw	x
 860  00e8 ae0064        	ldw	x,#L102
 861  00eb cd0000        	call	_assert_failed
 863  00ee 5b04          	addw	sp,#4
 864  00f0 81            	ret	
 877                     	xdef	_ITC_GetSoftwarePriority
 878                     	xdef	_ITC_SetSoftwarePriority
 879                     	xdef	_ITC_GetSoftIntStatus
 880                     	xdef	_ITC_DeInit
 881                     	xdef	_ITC_GetCPUCC
 882                     	xref	_assert_failed
 883                     	switch	.const
 884  0064               L102:
 885  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 886  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 887  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 888  009a 5f6974632e63  	dc.b	"_itc.c",0
 908                     	end
