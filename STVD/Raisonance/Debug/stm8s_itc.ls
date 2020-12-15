   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 50 uint8_t ITC_GetCPUCC(void)
  45                     ; 51 {
  47                     .text:	section	.text,new
  48  0000               _ITC_GetCPUCC:
  52                     ; 53   _asm("push cc");
  55  0000 8a            push cc
  57                     ; 54   _asm("pop a");
  60  0001 84            pop a
  62                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  65  0002 81            	ret
  88                     ; 80 void ITC_DeInit(void)
  88                     ; 81 {
  89                     .text:	section	.text,new
  90  0000               _ITC_DeInit:
  94                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  96  0000 35ff7f70      	mov	32624,#255
  97                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  99  0004 35ff7f71      	mov	32625,#255
 100                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 102  0008 35ff7f72      	mov	32626,#255
 103                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 105  000c 35ff7f73      	mov	32627,#255
 106                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 108  0010 35ff7f74      	mov	32628,#255
 109                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 111  0014 35ff7f75      	mov	32629,#255
 112                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 114  0018 35ff7f76      	mov	32630,#255
 115                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 117  001c 35ff7f77      	mov	32631,#255
 118                     ; 90 }
 121  0020 81            	ret
 146                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 146                     ; 98 {
 147                     .text:	section	.text,new
 148  0000               _ITC_GetSoftIntStatus:
 152                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 154  0000 cd0000        	call	_ITC_GetCPUCC
 156  0003 a428          	and	a,#40
 159  0005 81            	ret
 405                     .const:	section	.text
 406  0000               L62:
 407  0000 003c          	dc.w	L14
 408  0002 003c          	dc.w	L14
 409  0004 003c          	dc.w	L14
 410  0006 003c          	dc.w	L14
 411  0008 0045          	dc.w	L34
 412  000a 0045          	dc.w	L34
 413  000c 0045          	dc.w	L34
 414  000e 0045          	dc.w	L34
 415  0010 0079          	dc.w	L102
 416  0012 0079          	dc.w	L102
 417  0014 004e          	dc.w	L54
 418  0016 004e          	dc.w	L54
 419  0018 0057          	dc.w	L74
 420  001a 0057          	dc.w	L74
 421  001c 0057          	dc.w	L74
 422  001e 0057          	dc.w	L74
 423  0020 0060          	dc.w	L15
 424  0022 0060          	dc.w	L15
 425  0024 0060          	dc.w	L15
 426  0026 0060          	dc.w	L15
 427  0028 0079          	dc.w	L102
 428  002a 0079          	dc.w	L102
 429  002c 0069          	dc.w	L35
 430  002e 0069          	dc.w	L35
 431  0030 0072          	dc.w	L55
 432                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 432                     ; 108 {
 433                     .text:	section	.text,new
 434  0000               _ITC_GetSoftwarePriority:
 436  0000 88            	push	a
 437  0001 89            	pushw	x
 438       00000002      OFST:	set	2
 441                     ; 109   uint8_t Value = 0;
 443  0002 0f02          	clr	(OFST+0,sp)
 444                     ; 110   uint8_t Mask = 0;
 446                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 448  0004 a119          	cp	a,#25
 449  0006 2403          	jruge	L41
 450  0008 4f            	clr	a
 451  0009 2010          	jra	L61
 452  000b               L41:
 453  000b ae0071        	ldw	x,#113
 454  000e 89            	pushw	x
 455  000f ae0000        	ldw	x,#0
 456  0012 89            	pushw	x
 457  0013 ae0064        	ldw	x,#L571
 458  0016 cd0000        	call	_assert_failed
 460  0019 5b04          	addw	sp,#4
 461  001b               L61:
 462                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 464  001b 7b03          	ld	a,(OFST+1,sp)
 465  001d a403          	and	a,#3
 466  001f 48            	sll	a
 467  0020 5f            	clrw	x
 468  0021 97            	ld	xl,a
 469  0022 a603          	ld	a,#3
 470  0024 5d            	tnzw	x
 471  0025 2704          	jreq	L02
 472  0027               L22:
 473  0027 48            	sll	a
 474  0028 5a            	decw	x
 475  0029 26fc          	jrne	L22
 476  002b               L02:
 477  002b 6b01          	ld	(OFST-1,sp),a
 478                     ; 118   switch (IrqNum)
 480  002d 7b03          	ld	a,(OFST+1,sp)
 482                     ; 198   default:
 482                     ; 199     break;
 483  002f a119          	cp	a,#25
 484  0031 2407          	jruge	L42
 485  0033 5f            	clrw	x
 486  0034 97            	ld	xl,a
 487  0035 58            	sllw	x
 488  0036 de0000        	ldw	x,(L62,x)
 489  0039 fc            	jp	(x)
 490  003a               L42:
 491  003a 203d          	jra	L102
 492  003c               L14:
 493                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 493                     ; 121   case ITC_IRQ_AWU:
 493                     ; 122   case ITC_IRQ_CLK:
 493                     ; 123   case ITC_IRQ_PORTA:
 493                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 495  003c c67f70        	ld	a,32624
 496  003f 1401          	and	a,(OFST-1,sp)
 497  0041 6b02          	ld	(OFST+0,sp),a
 498                     ; 125     break;
 500  0043 2034          	jra	L102
 501  0045               L34:
 502                     ; 127   case ITC_IRQ_PORTB:
 502                     ; 128   case ITC_IRQ_PORTC:
 502                     ; 129   case ITC_IRQ_PORTD:
 502                     ; 130   case ITC_IRQ_PORTE:
 502                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 504  0045 c67f71        	ld	a,32625
 505  0048 1401          	and	a,(OFST-1,sp)
 506  004a 6b02          	ld	(OFST+0,sp),a
 507                     ; 132     break;
 509  004c 202b          	jra	L102
 510  004e               L54:
 511                     ; 141   case ITC_IRQ_SPI:
 511                     ; 142   case ITC_IRQ_TIM1_OVF:
 511                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 513  004e c67f72        	ld	a,32626
 514  0051 1401          	and	a,(OFST-1,sp)
 515  0053 6b02          	ld	(OFST+0,sp),a
 516                     ; 144     break;
 518  0055 2022          	jra	L102
 519  0057               L74:
 520                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 520                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 520                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 520                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 520                     ; 150 #else
 520                     ; 151   case ITC_IRQ_TIM2_OVF:
 520                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 520                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 520                     ; 154   case ITC_IRQ_TIM3_OVF:
 520                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 522  0057 c67f73        	ld	a,32627
 523  005a 1401          	and	a,(OFST-1,sp)
 524  005c 6b02          	ld	(OFST+0,sp),a
 525                     ; 156     break;
 527  005e 2019          	jra	L102
 528  0060               L15:
 529                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 529                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 529                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 529                     ; 161   case ITC_IRQ_UART1_TX:
 529                     ; 162   case ITC_IRQ_UART1_RX:
 529                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 529                     ; 164 #if defined(STM8AF622x)
 529                     ; 165   case ITC_IRQ_UART4_TX:
 529                     ; 166   case ITC_IRQ_UART4_RX:
 529                     ; 167 #endif /*STM8AF622x */
 529                     ; 168   case ITC_IRQ_I2C:
 529                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 531  0060 c67f74        	ld	a,32628
 532  0063 1401          	and	a,(OFST-1,sp)
 533  0065 6b02          	ld	(OFST+0,sp),a
 534                     ; 170     break;
 536  0067 2010          	jra	L102
 537  0069               L35:
 538                     ; 184   case ITC_IRQ_ADC1:
 538                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 538                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 538                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 538                     ; 188 #else
 538                     ; 189   case ITC_IRQ_TIM4_OVF:
 538                     ; 190 #endif /*STM8S903 or STM8AF622x */
 538                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 540  0069 c67f75        	ld	a,32629
 541  006c 1401          	and	a,(OFST-1,sp)
 542  006e 6b02          	ld	(OFST+0,sp),a
 543                     ; 192     break;
 545  0070 2007          	jra	L102
 546  0072               L55:
 547                     ; 194   case ITC_IRQ_EEPROM_EEC:
 547                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 549  0072 c67f76        	ld	a,32630
 550  0075 1401          	and	a,(OFST-1,sp)
 551  0077 6b02          	ld	(OFST+0,sp),a
 552                     ; 196     break;
 554  0079               L75:
 555                     ; 198   default:
 555                     ; 199     break;
 557  0079               L102:
 558                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 560  0079 7b03          	ld	a,(OFST+1,sp)
 561  007b a403          	and	a,#3
 562  007d 48            	sll	a
 563  007e 5f            	clrw	x
 564  007f 97            	ld	xl,a
 565  0080 7b02          	ld	a,(OFST+0,sp)
 566  0082 5d            	tnzw	x
 567  0083 2704          	jreq	L03
 568  0085               L23:
 569  0085 44            	srl	a
 570  0086 5a            	decw	x
 571  0087 26fc          	jrne	L23
 572  0089               L03:
 573  0089 6b02          	ld	(OFST+0,sp),a
 574                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 576  008b 7b02          	ld	a,(OFST+0,sp)
 579  008d 5b03          	addw	sp,#3
 580  008f 81            	ret
 642                     	switch	.const
 643  0032               L66:
 644  0032 0091          	dc.w	L302
 645  0034 0091          	dc.w	L302
 646  0036 0091          	dc.w	L302
 647  0038 0091          	dc.w	L302
 648  003a 00a3          	dc.w	L502
 649  003c 00a3          	dc.w	L502
 650  003e 00a3          	dc.w	L502
 651  0040 00a3          	dc.w	L502
 652  0042 010d          	dc.w	L352
 653  0044 010d          	dc.w	L352
 654  0046 00b5          	dc.w	L702
 655  0048 00b5          	dc.w	L702
 656  004a 00c7          	dc.w	L112
 657  004c 00c7          	dc.w	L112
 658  004e 00c7          	dc.w	L112
 659  0050 00c7          	dc.w	L112
 660  0052 00d9          	dc.w	L312
 661  0054 00d9          	dc.w	L312
 662  0056 00d9          	dc.w	L312
 663  0058 00d9          	dc.w	L312
 664  005a 010d          	dc.w	L352
 665  005c 010d          	dc.w	L352
 666  005e 00eb          	dc.w	L512
 667  0060 00eb          	dc.w	L512
 668  0062 00fd          	dc.w	L712
 669                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 669                     ; 221 {
 670                     .text:	section	.text,new
 671  0000               _ITC_SetSoftwarePriority:
 673  0000 89            	pushw	x
 674  0001 89            	pushw	x
 675       00000002      OFST:	set	2
 678                     ; 222   uint8_t Mask = 0;
 680                     ; 223   uint8_t NewPriority = 0;
 682                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 684  0002 9e            	ld	a,xh
 685  0003 a119          	cp	a,#25
 686  0005 2403          	jruge	L63
 687  0007 4f            	clr	a
 688  0008 2010          	jra	L04
 689  000a               L63:
 690  000a ae00e2        	ldw	x,#226
 691  000d 89            	pushw	x
 692  000e ae0000        	ldw	x,#0
 693  0011 89            	pushw	x
 694  0012 ae0064        	ldw	x,#L571
 695  0015 cd0000        	call	_assert_failed
 697  0018 5b04          	addw	sp,#4
 698  001a               L04:
 699                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 701  001a 7b04          	ld	a,(OFST+2,sp)
 702  001c a102          	cp	a,#2
 703  001e 2710          	jreq	L44
 704  0020 7b04          	ld	a,(OFST+2,sp)
 705  0022 a101          	cp	a,#1
 706  0024 270a          	jreq	L44
 707  0026 0d04          	tnz	(OFST+2,sp)
 708  0028 2706          	jreq	L44
 709  002a 7b04          	ld	a,(OFST+2,sp)
 710  002c a103          	cp	a,#3
 711  002e 2603          	jrne	L24
 712  0030               L44:
 713  0030 4f            	clr	a
 714  0031 2010          	jra	L64
 715  0033               L24:
 716  0033 ae00e3        	ldw	x,#227
 717  0036 89            	pushw	x
 718  0037 ae0000        	ldw	x,#0
 719  003a 89            	pushw	x
 720  003b ae0064        	ldw	x,#L571
 721  003e cd0000        	call	_assert_failed
 723  0041 5b04          	addw	sp,#4
 724  0043               L64:
 725                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 727  0043 cd0000        	call	_ITC_GetSoftIntStatus
 729  0046 a128          	cp	a,#40
 730  0048 2603          	jrne	L05
 731  004a 4f            	clr	a
 732  004b 2010          	jra	L25
 733  004d               L05:
 734  004d ae00e6        	ldw	x,#230
 735  0050 89            	pushw	x
 736  0051 ae0000        	ldw	x,#0
 737  0054 89            	pushw	x
 738  0055 ae0064        	ldw	x,#L571
 739  0058 cd0000        	call	_assert_failed
 741  005b 5b04          	addw	sp,#4
 742  005d               L25:
 743                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 745  005d 7b03          	ld	a,(OFST+1,sp)
 746  005f a403          	and	a,#3
 747  0061 48            	sll	a
 748  0062 5f            	clrw	x
 749  0063 97            	ld	xl,a
 750  0064 a603          	ld	a,#3
 751  0066 5d            	tnzw	x
 752  0067 2704          	jreq	L45
 753  0069               L65:
 754  0069 48            	sll	a
 755  006a 5a            	decw	x
 756  006b 26fc          	jrne	L65
 757  006d               L45:
 758  006d 43            	cpl	a
 759  006e 6b01          	ld	(OFST-1,sp),a
 760                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 762  0070 7b03          	ld	a,(OFST+1,sp)
 763  0072 a403          	and	a,#3
 764  0074 48            	sll	a
 765  0075 5f            	clrw	x
 766  0076 97            	ld	xl,a
 767  0077 7b04          	ld	a,(OFST+2,sp)
 768  0079 5d            	tnzw	x
 769  007a 2704          	jreq	L06
 770  007c               L26:
 771  007c 48            	sll	a
 772  007d 5a            	decw	x
 773  007e 26fc          	jrne	L26
 774  0080               L06:
 775  0080 6b02          	ld	(OFST+0,sp),a
 776                     ; 239   switch (IrqNum)
 778  0082 7b03          	ld	a,(OFST+1,sp)
 780                     ; 329   default:
 780                     ; 330     break;
 781  0084 a119          	cp	a,#25
 782  0086 2407          	jruge	L46
 783  0088 5f            	clrw	x
 784  0089 97            	ld	xl,a
 785  008a 58            	sllw	x
 786  008b de0032        	ldw	x,(L66,x)
 787  008e fc            	jp	(x)
 788  008f               L46:
 789  008f 207c          	jra	L352
 790  0091               L302:
 791                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 791                     ; 242   case ITC_IRQ_AWU:
 791                     ; 243   case ITC_IRQ_CLK:
 791                     ; 244   case ITC_IRQ_PORTA:
 791                     ; 245     ITC->ISPR1 &= Mask;
 793  0091 c67f70        	ld	a,32624
 794  0094 1401          	and	a,(OFST-1,sp)
 795  0096 c77f70        	ld	32624,a
 796                     ; 246     ITC->ISPR1 |= NewPriority;
 798  0099 c67f70        	ld	a,32624
 799  009c 1a02          	or	a,(OFST+0,sp)
 800  009e c77f70        	ld	32624,a
 801                     ; 247     break;
 803  00a1 206a          	jra	L352
 804  00a3               L502:
 805                     ; 249   case ITC_IRQ_PORTB:
 805                     ; 250   case ITC_IRQ_PORTC:
 805                     ; 251   case ITC_IRQ_PORTD:
 805                     ; 252   case ITC_IRQ_PORTE:
 805                     ; 253     ITC->ISPR2 &= Mask;
 807  00a3 c67f71        	ld	a,32625
 808  00a6 1401          	and	a,(OFST-1,sp)
 809  00a8 c77f71        	ld	32625,a
 810                     ; 254     ITC->ISPR2 |= NewPriority;
 812  00ab c67f71        	ld	a,32625
 813  00ae 1a02          	or	a,(OFST+0,sp)
 814  00b0 c77f71        	ld	32625,a
 815                     ; 255     break;
 817  00b3 2058          	jra	L352
 818  00b5               L702:
 819                     ; 264   case ITC_IRQ_SPI:
 819                     ; 265   case ITC_IRQ_TIM1_OVF:
 819                     ; 266     ITC->ISPR3 &= Mask;
 821  00b5 c67f72        	ld	a,32626
 822  00b8 1401          	and	a,(OFST-1,sp)
 823  00ba c77f72        	ld	32626,a
 824                     ; 267     ITC->ISPR3 |= NewPriority;
 826  00bd c67f72        	ld	a,32626
 827  00c0 1a02          	or	a,(OFST+0,sp)
 828  00c2 c77f72        	ld	32626,a
 829                     ; 268     break;
 831  00c5 2046          	jra	L352
 832  00c7               L112:
 833                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 833                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 833                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 833                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 833                     ; 274 #else
 833                     ; 275   case ITC_IRQ_TIM2_OVF:
 833                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 833                     ; 277 #endif /*STM8S903 or STM8AF622x */
 833                     ; 278   case ITC_IRQ_TIM3_OVF:
 833                     ; 279     ITC->ISPR4 &= Mask;
 835  00c7 c67f73        	ld	a,32627
 836  00ca 1401          	and	a,(OFST-1,sp)
 837  00cc c77f73        	ld	32627,a
 838                     ; 280     ITC->ISPR4 |= NewPriority;
 840  00cf c67f73        	ld	a,32627
 841  00d2 1a02          	or	a,(OFST+0,sp)
 842  00d4 c77f73        	ld	32627,a
 843                     ; 281     break;
 845  00d7 2034          	jra	L352
 846  00d9               L312:
 847                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 847                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 847                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 847                     ; 286   case ITC_IRQ_UART1_TX:
 847                     ; 287   case ITC_IRQ_UART1_RX:
 847                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 847                     ; 289 #if defined(STM8AF622x)
 847                     ; 290   case ITC_IRQ_UART4_TX:
 847                     ; 291   case ITC_IRQ_UART4_RX:
 847                     ; 292 #endif /*STM8AF622x */
 847                     ; 293   case ITC_IRQ_I2C:
 847                     ; 294     ITC->ISPR5 &= Mask;
 849  00d9 c67f74        	ld	a,32628
 850  00dc 1401          	and	a,(OFST-1,sp)
 851  00de c77f74        	ld	32628,a
 852                     ; 295     ITC->ISPR5 |= NewPriority;
 854  00e1 c67f74        	ld	a,32628
 855  00e4 1a02          	or	a,(OFST+0,sp)
 856  00e6 c77f74        	ld	32628,a
 857                     ; 296     break;
 859  00e9 2022          	jra	L352
 860  00eb               L512:
 861                     ; 312   case ITC_IRQ_ADC1:
 861                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 861                     ; 314     
 861                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 861                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 861                     ; 317 #else
 861                     ; 318   case ITC_IRQ_TIM4_OVF:
 861                     ; 319 #endif /* STM8S903 or STM8AF622x */
 861                     ; 320     ITC->ISPR6 &= Mask;
 863  00eb c67f75        	ld	a,32629
 864  00ee 1401          	and	a,(OFST-1,sp)
 865  00f0 c77f75        	ld	32629,a
 866                     ; 321     ITC->ISPR6 |= NewPriority;
 868  00f3 c67f75        	ld	a,32629
 869  00f6 1a02          	or	a,(OFST+0,sp)
 870  00f8 c77f75        	ld	32629,a
 871                     ; 322     break;
 873  00fb 2010          	jra	L352
 874  00fd               L712:
 875                     ; 324   case ITC_IRQ_EEPROM_EEC:
 875                     ; 325     ITC->ISPR7 &= Mask;
 877  00fd c67f76        	ld	a,32630
 878  0100 1401          	and	a,(OFST-1,sp)
 879  0102 c77f76        	ld	32630,a
 880                     ; 326     ITC->ISPR7 |= NewPriority;
 882  0105 c67f76        	ld	a,32630
 883  0108 1a02          	or	a,(OFST+0,sp)
 884  010a c77f76        	ld	32630,a
 885                     ; 327     break;
 887  010d               L122:
 888                     ; 329   default:
 888                     ; 330     break;
 890  010d               L352:
 891                     ; 332 }
 894  010d 5b04          	addw	sp,#4
 895  010f 81            	ret
 908                     	xdef	_ITC_GetSoftwarePriority
 909                     	xdef	_ITC_SetSoftwarePriority
 910                     	xdef	_ITC_GetSoftIntStatus
 911                     	xdef	_ITC_DeInit
 912                     	xdef	_ITC_GetCPUCC
 913                     	xref	_assert_failed
 914                     	switch	.const
 915  0064               L571:
 916  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 917  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 918  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 919  009a 5f6974632e63  	dc.b	"_itc.c",0
 939                     	end
