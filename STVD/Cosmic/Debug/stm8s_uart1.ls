   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 53 void UART1_DeInit(void)
  49                     ; 54 {
  51                     .text:	section	.text,new
  52  0000               _UART1_DeInit:
  56                     ; 57   (void)UART1->SR;
  58  0000 c65230        	ld	a,21040
  59                     ; 58   (void)UART1->DR;
  61  0003 c65231        	ld	a,21041
  62                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  64  0006 725f5233      	clr	21043
  65                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  67  000a 725f5232      	clr	21042
  68                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  70  000e 725f5234      	clr	21044
  71                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  73  0012 725f5235      	clr	21045
  74                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  76  0016 725f5236      	clr	21046
  77                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  79  001a 725f5237      	clr	21047
  80                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  82  001e 725f5238      	clr	21048
  83                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  85  0022 725f5239      	clr	21049
  86                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  88  0026 725f523a      	clr	21050
  89                     ; 71 }
  92  002a 81            	ret	
 396                     .const:	section	.text
 397  0000               L21:
 398  0000 00098969      	dc.l	625001
 399  0004               L27:
 400  0004 00000064      	dc.l	100
 401                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 401                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 401                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 401                     ; 93 {
 402                     .text:	section	.text,new
 403  0000               _UART1_Init:
 405  0000 520c          	subw	sp,#12
 406       0000000c      OFST:	set	12
 409                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 413                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 415  0002 96            	ldw	x,sp
 416  0003 1c000f        	addw	x,#OFST+3
 417  0006 cd0000        	call	c_ltor
 419  0009 ae0000        	ldw	x,#L21
 420  000c cd0000        	call	c_lcmp
 422  000f 2506          	jrult	L41
 423  0011 ae0061        	ldw	x,#97
 424  0014 cd01b5        	call	LC001
 425  0017               L41:
 426                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 428  0017 7b13          	ld	a,(OFST+7,sp)
 429  0019 270a          	jreq	L42
 430  001b a110          	cp	a,#16
 431  001d 2706          	jreq	L42
 432  001f ae0062        	ldw	x,#98
 433  0022 cd01b5        	call	LC001
 434  0025               L42:
 435                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 437  0025 7b14          	ld	a,(OFST+8,sp)
 438  0027 2712          	jreq	L43
 439  0029 a110          	cp	a,#16
 440  002b 270e          	jreq	L43
 441  002d a120          	cp	a,#32
 442  002f 270a          	jreq	L43
 443  0031 a130          	cp	a,#48
 444  0033 2706          	jreq	L43
 445  0035 ae0063        	ldw	x,#99
 446  0038 cd01b5        	call	LC001
 447  003b               L43:
 448                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 450  003b 7b15          	ld	a,(OFST+9,sp)
 451  003d 270e          	jreq	L44
 452  003f a104          	cp	a,#4
 453  0041 270a          	jreq	L44
 454  0043 a106          	cp	a,#6
 455  0045 2706          	jreq	L44
 456  0047 ae0064        	ldw	x,#100
 457  004a cd01b5        	call	LC001
 458  004d               L44:
 459                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 461  004d 7b17          	ld	a,(OFST+11,sp)
 462  004f a108          	cp	a,#8
 463  0051 2722          	jreq	L45
 464  0053 a140          	cp	a,#64
 465  0055 271e          	jreq	L45
 466  0057 a104          	cp	a,#4
 467  0059 271a          	jreq	L45
 468  005b a180          	cp	a,#128
 469  005d 2716          	jreq	L45
 470  005f a10c          	cp	a,#12
 471  0061 2712          	jreq	L45
 472  0063 a144          	cp	a,#68
 473  0065 270e          	jreq	L45
 474  0067 a1c0          	cp	a,#192
 475  0069 270a          	jreq	L45
 476  006b a188          	cp	a,#136
 477  006d 2706          	jreq	L45
 478  006f ae0065        	ldw	x,#101
 479  0072 cd01b5        	call	LC001
 480  0075               L45:
 481                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 483  0075 7b16          	ld	a,(OFST+10,sp)
 484  0077 a488          	and	a,#136
 485  0079 a188          	cp	a,#136
 486  007b 2718          	jreq	L06
 487  007d 7b16          	ld	a,(OFST+10,sp)
 488  007f a444          	and	a,#68
 489  0081 a144          	cp	a,#68
 490  0083 2710          	jreq	L06
 491  0085 7b16          	ld	a,(OFST+10,sp)
 492  0087 a422          	and	a,#34
 493  0089 a122          	cp	a,#34
 494  008b 2708          	jreq	L06
 495  008d 7b16          	ld	a,(OFST+10,sp)
 496  008f a411          	and	a,#17
 497  0091 a111          	cp	a,#17
 498  0093 2606          	jrne	L26
 499  0095               L06:
 500  0095 ae0066        	ldw	x,#102
 501  0098 cd01b5        	call	LC001
 502  009b               L26:
 503                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 505  009b 72195234      	bres	21044,#4
 506                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 508  009f c65234        	ld	a,21044
 509  00a2 1a13          	or	a,(OFST+7,sp)
 510  00a4 c75234        	ld	21044,a
 511                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 513  00a7 c65236        	ld	a,21046
 514  00aa a4cf          	and	a,#207
 515  00ac c75236        	ld	21046,a
 516                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 518  00af c65236        	ld	a,21046
 519  00b2 1a14          	or	a,(OFST+8,sp)
 520  00b4 c75236        	ld	21046,a
 521                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 523  00b7 c65234        	ld	a,21044
 524  00ba a4f9          	and	a,#249
 525  00bc c75234        	ld	21044,a
 526                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 528  00bf c65234        	ld	a,21044
 529  00c2 1a15          	or	a,(OFST+9,sp)
 530  00c4 c75234        	ld	21044,a
 531                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 533  00c7 725f5232      	clr	21042
 534                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 536  00cb c65233        	ld	a,21043
 537  00ce a40f          	and	a,#15
 538  00d0 c75233        	ld	21043,a
 539                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 541  00d3 c65233        	ld	a,21043
 542  00d6 a4f0          	and	a,#240
 543  00d8 c75233        	ld	21043,a
 544                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 546  00db 96            	ldw	x,sp
 547  00dc cd01c1        	call	LC002
 549  00df 96            	ldw	x,sp
 550  00e0 5c            	incw	x
 551  00e1 cd0000        	call	c_rtol
 553  00e4 cd0000        	call	_CLK_GetClockFreq
 555  00e7 96            	ldw	x,sp
 556  00e8 5c            	incw	x
 557  00e9 cd0000        	call	c_ludv
 559  00ec 96            	ldw	x,sp
 560  00ed 1c0009        	addw	x,#OFST-3
 561  00f0 cd0000        	call	c_rtol
 563                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 565  00f3 96            	ldw	x,sp
 566  00f4 cd01c1        	call	LC002
 568  00f7 96            	ldw	x,sp
 569  00f8 5c            	incw	x
 570  00f9 cd0000        	call	c_rtol
 572  00fc cd0000        	call	_CLK_GetClockFreq
 574  00ff a664          	ld	a,#100
 575  0101 cd0000        	call	c_smul
 577  0104 96            	ldw	x,sp
 578  0105 5c            	incw	x
 579  0106 cd0000        	call	c_ludv
 581  0109 96            	ldw	x,sp
 582  010a 1c0005        	addw	x,#OFST-7
 583  010d cd0000        	call	c_rtol
 585                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 587  0110 96            	ldw	x,sp
 588  0111 1c0009        	addw	x,#OFST-3
 589  0114 cd0000        	call	c_ltor
 591  0117 a664          	ld	a,#100
 592  0119 cd0000        	call	c_smul
 594  011c 96            	ldw	x,sp
 595  011d 5c            	incw	x
 596  011e cd0000        	call	c_rtol
 598  0121 96            	ldw	x,sp
 599  0122 1c0005        	addw	x,#OFST-7
 600  0125 cd0000        	call	c_ltor
 602  0128 96            	ldw	x,sp
 603  0129 5c            	incw	x
 604  012a cd0000        	call	c_lsub
 606  012d a604          	ld	a,#4
 607  012f cd0000        	call	c_llsh
 609  0132 ae0004        	ldw	x,#L27
 610  0135 cd0000        	call	c_ludv
 612  0138 b603          	ld	a,c_lreg+3
 613  013a a40f          	and	a,#15
 614  013c ca5233        	or	a,21043
 615  013f c75233        	ld	21043,a
 616                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 618  0142 96            	ldw	x,sp
 619  0143 1c0009        	addw	x,#OFST-3
 620  0146 cd0000        	call	c_ltor
 622  0149 a604          	ld	a,#4
 623  014b cd0000        	call	c_lursh
 625  014e b603          	ld	a,c_lreg+3
 626  0150 a4f0          	and	a,#240
 627  0152 b703          	ld	c_lreg+3,a
 628  0154 3f02          	clr	c_lreg+2
 629  0156 3f01          	clr	c_lreg+1
 630  0158 3f00          	clr	c_lreg
 631  015a ca5233        	or	a,21043
 632  015d c75233        	ld	21043,a
 633                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 635  0160 c65232        	ld	a,21042
 636  0163 1a0c          	or	a,(OFST+0,sp)
 637  0165 c75232        	ld	21042,a
 638                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 640  0168 c65235        	ld	a,21045
 641  016b a4f3          	and	a,#243
 642  016d c75235        	ld	21045,a
 643                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 645  0170 c65236        	ld	a,21046
 646  0173 a4f8          	and	a,#248
 647  0175 c75236        	ld	21046,a
 648                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 648                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 650  0178 7b16          	ld	a,(OFST+10,sp)
 651  017a a407          	and	a,#7
 652  017c ca5236        	or	a,21046
 653  017f c75236        	ld	21046,a
 654                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 656  0182 7b17          	ld	a,(OFST+11,sp)
 657  0184 a504          	bcp	a,#4
 658  0186 2706          	jreq	L571
 659                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 661  0188 72165235      	bset	21045,#3
 663  018c 2004          	jra	L771
 664  018e               L571:
 665                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 667  018e 72175235      	bres	21045,#3
 668  0192               L771:
 669                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 671  0192 a508          	bcp	a,#8
 672  0194 2706          	jreq	L102
 673                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 675  0196 72145235      	bset	21045,#2
 677  019a 2004          	jra	L302
 678  019c               L102:
 679                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 681  019c 72155235      	bres	21045,#2
 682  01a0               L302:
 683                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 685  01a0 7b16          	ld	a,(OFST+10,sp)
 686  01a2 2a06          	jrpl	L502
 687                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 689  01a4 72175236      	bres	21046,#3
 691  01a8 2008          	jra	L702
 692  01aa               L502:
 693                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 695  01aa a408          	and	a,#8
 696  01ac ca5236        	or	a,21046
 697  01af c75236        	ld	21046,a
 698  01b2               L702:
 699                     ; 176 }
 702  01b2 5b0c          	addw	sp,#12
 703  01b4 81            	ret	
 704  01b5               LC001:
 705  01b5 89            	pushw	x
 706  01b6 5f            	clrw	x
 707  01b7 89            	pushw	x
 708  01b8 ae0008        	ldw	x,#L371
 709  01bb cd0000        	call	_assert_failed
 711  01be 5b04          	addw	sp,#4
 712  01c0 81            	ret	
 713  01c1               LC002:
 714  01c1 1c000f        	addw	x,#OFST+3
 715  01c4 cd0000        	call	c_ltor
 717  01c7 a604          	ld	a,#4
 718  01c9 cc0000        	jp	c_llsh
 773                     ; 184 void UART1_Cmd(FunctionalState NewState)
 773                     ; 185 {
 774                     .text:	section	.text,new
 775  0000               _UART1_Cmd:
 779                     ; 186   if (NewState != DISABLE)
 781  0000 4d            	tnz	a
 782  0001 2705          	jreq	L732
 783                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 785  0003 721b5234      	bres	21044,#5
 788  0007 81            	ret	
 789  0008               L732:
 790                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 792  0008 721a5234      	bset	21044,#5
 793                     ; 196 }
 796  000c 81            	ret	
 922                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 922                     ; 212 {
 923                     .text:	section	.text,new
 924  0000               _UART1_ITConfig:
 926  0000 89            	pushw	x
 927  0001 89            	pushw	x
 928       00000002      OFST:	set	2
 931                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 935                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 937  0002 a30100        	cpw	x,#256
 938  0005 271e          	jreq	L401
 939  0007 a30277        	cpw	x,#631
 940  000a 2719          	jreq	L401
 941  000c a30266        	cpw	x,#614
 942  000f 2714          	jreq	L401
 943  0011 a30205        	cpw	x,#517
 944  0014 270f          	jreq	L401
 945  0016 a30244        	cpw	x,#580
 946  0019 270a          	jreq	L401
 947  001b a30346        	cpw	x,#838
 948  001e 2705          	jreq	L401
 949  0020 ae00d8        	ldw	x,#216
 950  0023 ad70          	call	LC006
 951  0025               L401:
 952                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 954  0025 7b07          	ld	a,(OFST+5,sp)
 955  0027 2708          	jreq	L411
 956  0029 4a            	dec	a
 957  002a 2705          	jreq	L411
 958  002c ae00d9        	ldw	x,#217
 959  002f ad64          	call	LC006
 960  0031               L411:
 961                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 963  0031 7b03          	ld	a,(OFST+1,sp)
 964  0033 6b01          	ld	(OFST-1,sp),a
 965                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 967  0035 7b04          	ld	a,(OFST+2,sp)
 968  0037 a40f          	and	a,#15
 969  0039 5f            	clrw	x
 970  003a 97            	ld	xl,a
 971  003b a601          	ld	a,#1
 972  003d 5d            	tnzw	x
 973  003e 2704          	jreq	L021
 974  0040               L221:
 975  0040 48            	sll	a
 976  0041 5a            	decw	x
 977  0042 26fc          	jrne	L221
 978  0044               L021:
 979  0044 6b02          	ld	(OFST+0,sp),a
 980                     ; 224   if (NewState != DISABLE)
 982  0046 7b07          	ld	a,(OFST+5,sp)
 983  0048 271f          	jreq	L123
 984                     ; 227     if (uartreg == 0x01)
 986  004a 7b01          	ld	a,(OFST-1,sp)
 987  004c a101          	cp	a,#1
 988  004e 2607          	jrne	L323
 989                     ; 229       UART1->CR1 |= itpos;
 991  0050 c65234        	ld	a,21044
 992  0053 1a02          	or	a,(OFST+0,sp)
 994  0055 201e          	jp	LC004
 995  0057               L323:
 996                     ; 231     else if (uartreg == 0x02)
 998  0057 a102          	cp	a,#2
 999  0059 2607          	jrne	L723
1000                     ; 233       UART1->CR2 |= itpos;
1002  005b c65235        	ld	a,21045
1003  005e 1a02          	or	a,(OFST+0,sp)
1005  0060 2022          	jp	LC005
1006  0062               L723:
1007                     ; 237       UART1->CR4 |= itpos;
1009  0062 c65237        	ld	a,21047
1010  0065 1a02          	or	a,(OFST+0,sp)
1011  0067 2026          	jp	LC003
1012  0069               L123:
1013                     ; 243     if (uartreg == 0x01)
1015  0069 7b01          	ld	a,(OFST-1,sp)
1016  006b a101          	cp	a,#1
1017  006d 260b          	jrne	L533
1018                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1020  006f 7b02          	ld	a,(OFST+0,sp)
1021  0071 43            	cpl	a
1022  0072 c45234        	and	a,21044
1023  0075               LC004:
1024  0075 c75234        	ld	21044,a
1026  0078 2018          	jra	L333
1027  007a               L533:
1028                     ; 247     else if (uartreg == 0x02)
1030  007a a102          	cp	a,#2
1031  007c 260b          	jrne	L143
1032                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1034  007e 7b02          	ld	a,(OFST+0,sp)
1035  0080 43            	cpl	a
1036  0081 c45235        	and	a,21045
1037  0084               LC005:
1038  0084 c75235        	ld	21045,a
1040  0087 2009          	jra	L333
1041  0089               L143:
1042                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1044  0089 7b02          	ld	a,(OFST+0,sp)
1045  008b 43            	cpl	a
1046  008c c45237        	and	a,21047
1047  008f               LC003:
1048  008f c75237        	ld	21047,a
1049  0092               L333:
1050                     ; 257 }
1053  0092 5b04          	addw	sp,#4
1054  0094 81            	ret	
1055  0095               LC006:
1056  0095 89            	pushw	x
1057  0096 5f            	clrw	x
1058  0097 89            	pushw	x
1059  0098 ae0008        	ldw	x,#L371
1060  009b cd0000        	call	_assert_failed
1062  009e 5b04          	addw	sp,#4
1063  00a0 81            	ret	
1100                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1100                     ; 266 {
1101                     .text:	section	.text,new
1102  0000               _UART1_HalfDuplexCmd:
1104  0000 88            	push	a
1105       00000000      OFST:	set	0
1108                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1110  0001 4d            	tnz	a
1111  0002 2711          	jreq	L231
1112  0004 4a            	dec	a
1113  0005 270e          	jreq	L231
1114  0007 ae010b        	ldw	x,#267
1115  000a 89            	pushw	x
1116  000b 5f            	clrw	x
1117  000c 89            	pushw	x
1118  000d ae0008        	ldw	x,#L371
1119  0010 cd0000        	call	_assert_failed
1121  0013 5b04          	addw	sp,#4
1122  0015               L231:
1123                     ; 269   if (NewState != DISABLE)
1125  0015 7b01          	ld	a,(OFST+1,sp)
1126  0017 2706          	jreq	L363
1127                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1129  0019 72165238      	bset	21048,#3
1131  001d 2004          	jra	L563
1132  001f               L363:
1133                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1135  001f 72175238      	bres	21048,#3
1136  0023               L563:
1137                     ; 277 }
1140  0023 84            	pop	a
1141  0024 81            	ret	
1199                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1199                     ; 286 {
1200                     .text:	section	.text,new
1201  0000               _UART1_IrDAConfig:
1203  0000 88            	push	a
1204       00000000      OFST:	set	0
1207                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1209  0001 a101          	cp	a,#1
1210  0003 2711          	jreq	L441
1211  0005 4d            	tnz	a
1212  0006 270e          	jreq	L441
1213  0008 ae011f        	ldw	x,#287
1214  000b 89            	pushw	x
1215  000c 5f            	clrw	x
1216  000d 89            	pushw	x
1217  000e ae0008        	ldw	x,#L371
1218  0011 cd0000        	call	_assert_failed
1220  0014 5b04          	addw	sp,#4
1221  0016               L441:
1222                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1224  0016 7b01          	ld	a,(OFST+1,sp)
1225  0018 2706          	jreq	L514
1226                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1228  001a 72145238      	bset	21048,#2
1230  001e 2004          	jra	L714
1231  0020               L514:
1232                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1234  0020 72155238      	bres	21048,#2
1235  0024               L714:
1236                     ; 297 }
1239  0024 84            	pop	a
1240  0025 81            	ret	
1276                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1276                     ; 306 {
1277                     .text:	section	.text,new
1278  0000               _UART1_IrDACmd:
1280  0000 88            	push	a
1281       00000000      OFST:	set	0
1284                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1286  0001 4d            	tnz	a
1287  0002 2711          	jreq	L651
1288  0004 4a            	dec	a
1289  0005 270e          	jreq	L651
1290  0007 ae0134        	ldw	x,#308
1291  000a 89            	pushw	x
1292  000b 5f            	clrw	x
1293  000c 89            	pushw	x
1294  000d ae0008        	ldw	x,#L371
1295  0010 cd0000        	call	_assert_failed
1297  0013 5b04          	addw	sp,#4
1298  0015               L651:
1299                     ; 310   if (NewState != DISABLE)
1301  0015 7b01          	ld	a,(OFST+1,sp)
1302  0017 2706          	jreq	L734
1303                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1305  0019 72125238      	bset	21048,#1
1307  001d 2004          	jra	L144
1308  001f               L734:
1309                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1311  001f 72135238      	bres	21048,#1
1312  0023               L144:
1313                     ; 320 }
1316  0023 84            	pop	a
1317  0024 81            	ret	
1377                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1377                     ; 330 {
1378                     .text:	section	.text,new
1379  0000               _UART1_LINBreakDetectionConfig:
1381  0000 88            	push	a
1382       00000000      OFST:	set	0
1385                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1387  0001 4d            	tnz	a
1388  0002 2711          	jreq	L071
1389  0004 4a            	dec	a
1390  0005 270e          	jreq	L071
1391  0007 ae014b        	ldw	x,#331
1392  000a 89            	pushw	x
1393  000b 5f            	clrw	x
1394  000c 89            	pushw	x
1395  000d ae0008        	ldw	x,#L371
1396  0010 cd0000        	call	_assert_failed
1398  0013 5b04          	addw	sp,#4
1399  0015               L071:
1400                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1402  0015 7b01          	ld	a,(OFST+1,sp)
1403  0017 2706          	jreq	L174
1404                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1406  0019 721a5237      	bset	21047,#5
1408  001d 2004          	jra	L374
1409  001f               L174:
1410                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1412  001f 721b5237      	bres	21047,#5
1413  0023               L374:
1414                     ; 341 }
1417  0023 84            	pop	a
1418  0024 81            	ret	
1454                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1454                     ; 350 {
1455                     .text:	section	.text,new
1456  0000               _UART1_LINCmd:
1458  0000 88            	push	a
1459       00000000      OFST:	set	0
1462                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1464  0001 4d            	tnz	a
1465  0002 2711          	jreq	L202
1466  0004 4a            	dec	a
1467  0005 270e          	jreq	L202
1468  0007 ae015f        	ldw	x,#351
1469  000a 89            	pushw	x
1470  000b 5f            	clrw	x
1471  000c 89            	pushw	x
1472  000d ae0008        	ldw	x,#L371
1473  0010 cd0000        	call	_assert_failed
1475  0013 5b04          	addw	sp,#4
1476  0015               L202:
1477                     ; 353   if (NewState != DISABLE)
1479  0015 7b01          	ld	a,(OFST+1,sp)
1480  0017 2706          	jreq	L315
1481                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1483  0019 721c5236      	bset	21046,#6
1485  001d 2004          	jra	L515
1486  001f               L315:
1487                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1489  001f 721d5236      	bres	21046,#6
1490  0023               L515:
1491                     ; 363 }
1494  0023 84            	pop	a
1495  0024 81            	ret	
1531                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1531                     ; 372 {
1532                     .text:	section	.text,new
1533  0000               _UART1_SmartCardCmd:
1535  0000 88            	push	a
1536       00000000      OFST:	set	0
1539                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1541  0001 4d            	tnz	a
1542  0002 2711          	jreq	L412
1543  0004 4a            	dec	a
1544  0005 270e          	jreq	L412
1545  0007 ae0175        	ldw	x,#373
1546  000a 89            	pushw	x
1547  000b 5f            	clrw	x
1548  000c 89            	pushw	x
1549  000d ae0008        	ldw	x,#L371
1550  0010 cd0000        	call	_assert_failed
1552  0013 5b04          	addw	sp,#4
1553  0015               L412:
1554                     ; 375   if (NewState != DISABLE)
1556  0015 7b01          	ld	a,(OFST+1,sp)
1557  0017 2706          	jreq	L535
1558                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1560  0019 721a5238      	bset	21048,#5
1562  001d 2004          	jra	L735
1563  001f               L535:
1564                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1566  001f 721b5238      	bres	21048,#5
1567  0023               L735:
1568                     ; 385 }
1571  0023 84            	pop	a
1572  0024 81            	ret	
1609                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1609                     ; 395 {
1610                     .text:	section	.text,new
1611  0000               _UART1_SmartCardNACKCmd:
1613  0000 88            	push	a
1614       00000000      OFST:	set	0
1617                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1619  0001 4d            	tnz	a
1620  0002 2711          	jreq	L622
1621  0004 4a            	dec	a
1622  0005 270e          	jreq	L622
1623  0007 ae018c        	ldw	x,#396
1624  000a 89            	pushw	x
1625  000b 5f            	clrw	x
1626  000c 89            	pushw	x
1627  000d ae0008        	ldw	x,#L371
1628  0010 cd0000        	call	_assert_failed
1630  0013 5b04          	addw	sp,#4
1631  0015               L622:
1632                     ; 398   if (NewState != DISABLE)
1634  0015 7b01          	ld	a,(OFST+1,sp)
1635  0017 2706          	jreq	L755
1636                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1638  0019 72185238      	bset	21048,#4
1640  001d 2004          	jra	L165
1641  001f               L755:
1642                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1644  001f 72195238      	bres	21048,#4
1645  0023               L165:
1646                     ; 408 }
1649  0023 84            	pop	a
1650  0024 81            	ret	
1708                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1708                     ; 417 {
1709                     .text:	section	.text,new
1710  0000               _UART1_WakeUpConfig:
1712  0000 88            	push	a
1713       00000000      OFST:	set	0
1716                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1718  0001 4d            	tnz	a
1719  0002 2712          	jreq	L042
1720  0004 a108          	cp	a,#8
1721  0006 270e          	jreq	L042
1722  0008 ae01a2        	ldw	x,#418
1723  000b 89            	pushw	x
1724  000c 5f            	clrw	x
1725  000d 89            	pushw	x
1726  000e ae0008        	ldw	x,#L371
1727  0011 cd0000        	call	_assert_failed
1729  0014 5b04          	addw	sp,#4
1730  0016               L042:
1731                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1733  0016 72175234      	bres	21044,#3
1734                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1736  001a c65234        	ld	a,21044
1737  001d 1a01          	or	a,(OFST+1,sp)
1738  001f c75234        	ld	21044,a
1739                     ; 422 }
1742  0022 84            	pop	a
1743  0023 81            	ret	
1780                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1780                     ; 431 {
1781                     .text:	section	.text,new
1782  0000               _UART1_ReceiverWakeUpCmd:
1784  0000 88            	push	a
1785       00000000      OFST:	set	0
1788                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1790  0001 4d            	tnz	a
1791  0002 2711          	jreq	L252
1792  0004 4a            	dec	a
1793  0005 270e          	jreq	L252
1794  0007 ae01b0        	ldw	x,#432
1795  000a 89            	pushw	x
1796  000b 5f            	clrw	x
1797  000c 89            	pushw	x
1798  000d ae0008        	ldw	x,#L371
1799  0010 cd0000        	call	_assert_failed
1801  0013 5b04          	addw	sp,#4
1802  0015               L252:
1803                     ; 434   if (NewState != DISABLE)
1805  0015 7b01          	ld	a,(OFST+1,sp)
1806  0017 2706          	jreq	L726
1807                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1809  0019 72125235      	bset	21045,#1
1811  001d 2004          	jra	L136
1812  001f               L726:
1813                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1815  001f 72135235      	bres	21045,#1
1816  0023               L136:
1817                     ; 444 }
1820  0023 84            	pop	a
1821  0024 81            	ret	
1844                     ; 451 uint8_t UART1_ReceiveData8(void)
1844                     ; 452 {
1845                     .text:	section	.text,new
1846  0000               _UART1_ReceiveData8:
1850                     ; 453   return ((uint8_t)UART1->DR);
1852  0000 c65231        	ld	a,21041
1855  0003 81            	ret	
1889                     ; 461 uint16_t UART1_ReceiveData9(void)
1889                     ; 462 {
1890                     .text:	section	.text,new
1891  0000               _UART1_ReceiveData9:
1893  0000 89            	pushw	x
1894       00000002      OFST:	set	2
1897                     ; 463   uint16_t temp = 0;
1899                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1901  0001 c65234        	ld	a,21044
1902  0004 a480          	and	a,#128
1903  0006 5f            	clrw	x
1904  0007 02            	rlwa	x,a
1905  0008 58            	sllw	x
1906  0009 1f01          	ldw	(OFST-1,sp),x
1907                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1909  000b 5f            	clrw	x
1910  000c c65231        	ld	a,21041
1911  000f 97            	ld	xl,a
1912  0010 01            	rrwa	x,a
1913  0011 1a02          	or	a,(OFST+0,sp)
1914  0013 01            	rrwa	x,a
1915  0014 1a01          	or	a,(OFST-1,sp)
1916  0016 a401          	and	a,#1
1917  0018 01            	rrwa	x,a
1920  0019 5b02          	addw	sp,#2
1921  001b 81            	ret	
1955                     ; 474 void UART1_SendData8(uint8_t Data)
1955                     ; 475 {
1956                     .text:	section	.text,new
1957  0000               _UART1_SendData8:
1961                     ; 477   UART1->DR = Data;
1963  0000 c75231        	ld	21041,a
1964                     ; 478 }
1967  0003 81            	ret	
2001                     ; 486 void UART1_SendData9(uint16_t Data)
2001                     ; 487 {
2002                     .text:	section	.text,new
2003  0000               _UART1_SendData9:
2005  0000 89            	pushw	x
2006       00000000      OFST:	set	0
2009                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2011  0001 721d5234      	bres	21044,#6
2012                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2014  0005 54            	srlw	x
2015  0006 54            	srlw	x
2016  0007 9f            	ld	a,xl
2017  0008 a440          	and	a,#64
2018  000a ca5234        	or	a,21044
2019  000d c75234        	ld	21044,a
2020                     ; 493   UART1->DR   = (uint8_t)(Data);
2022  0010 7b02          	ld	a,(OFST+2,sp)
2023  0012 c75231        	ld	21041,a
2024                     ; 494 }
2027  0015 85            	popw	x
2028  0016 81            	ret	
2051                     ; 501 void UART1_SendBreak(void)
2051                     ; 502 {
2052                     .text:	section	.text,new
2053  0000               _UART1_SendBreak:
2057                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2059  0000 72105235      	bset	21045,#0
2060                     ; 504 }
2063  0004 81            	ret	
2098                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2098                     ; 512 {
2099                     .text:	section	.text,new
2100  0000               _UART1_SetAddress:
2102  0000 88            	push	a
2103       00000000      OFST:	set	0
2106                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2108  0001 a110          	cp	a,#16
2109  0003 250e          	jrult	L472
2110  0005 ae0202        	ldw	x,#514
2111  0008 89            	pushw	x
2112  0009 5f            	clrw	x
2113  000a 89            	pushw	x
2114  000b ae0008        	ldw	x,#L371
2115  000e cd0000        	call	_assert_failed
2117  0011 5b04          	addw	sp,#4
2118  0013               L472:
2119                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2121  0013 c65237        	ld	a,21047
2122  0016 a4f0          	and	a,#240
2123  0018 c75237        	ld	21047,a
2124                     ; 519   UART1->CR4 |= UART1_Address;
2126  001b c65237        	ld	a,21047
2127  001e 1a01          	or	a,(OFST+1,sp)
2128  0020 c75237        	ld	21047,a
2129                     ; 520 }
2132  0023 84            	pop	a
2133  0024 81            	ret	
2167                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2167                     ; 529 {
2168                     .text:	section	.text,new
2169  0000               _UART1_SetGuardTime:
2173                     ; 531   UART1->GTR = UART1_GuardTime;
2175  0000 c75239        	ld	21049,a
2176                     ; 532 }
2179  0003 81            	ret	
2213                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2213                     ; 557 {
2214                     .text:	section	.text,new
2215  0000               _UART1_SetPrescaler:
2219                     ; 559   UART1->PSCR = UART1_Prescaler;
2221  0000 c7523a        	ld	21050,a
2222                     ; 560 }
2225  0003 81            	ret	
2369                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2369                     ; 569 {
2370                     .text:	section	.text,new
2371  0000               _UART1_GetFlagStatus:
2373  0000 89            	pushw	x
2374  0001 88            	push	a
2375       00000001      OFST:	set	1
2378                     ; 570   FlagStatus status = RESET;
2380                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2382  0002 a30080        	cpw	x,#128
2383  0005 273b          	jreq	L213
2384  0007 a30040        	cpw	x,#64
2385  000a 2736          	jreq	L213
2386  000c a30020        	cpw	x,#32
2387  000f 2731          	jreq	L213
2388  0011 a30010        	cpw	x,#16
2389  0014 272c          	jreq	L213
2390  0016 a30008        	cpw	x,#8
2391  0019 2727          	jreq	L213
2392  001b a30004        	cpw	x,#4
2393  001e 2722          	jreq	L213
2394  0020 a30002        	cpw	x,#2
2395  0023 271d          	jreq	L213
2396  0025 a30001        	cpw	x,#1
2397  0028 2718          	jreq	L213
2398  002a a30101        	cpw	x,#257
2399  002d 2713          	jreq	L213
2400  002f a30210        	cpw	x,#528
2401  0032 270e          	jreq	L213
2402  0034 ae023d        	ldw	x,#573
2403  0037 89            	pushw	x
2404  0038 5f            	clrw	x
2405  0039 89            	pushw	x
2406  003a ae0008        	ldw	x,#L371
2407  003d cd0000        	call	_assert_failed
2409  0040 5b04          	addw	sp,#4
2410  0042               L213:
2411                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2413  0042 1e02          	ldw	x,(OFST+1,sp)
2414  0044 a30210        	cpw	x,#528
2415  0047 2605          	jrne	L1601
2416                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2418  0049 c65237        	ld	a,21047
2419                     ; 582       status = SET;
2421  004c 2008          	jp	LC009
2422                     ; 587       status = RESET;
2423  004e               L1601:
2424                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2426  004e a30101        	cpw	x,#257
2427  0051 260b          	jrne	L1701
2428                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2430  0053 c65235        	ld	a,21045
2431  0056               LC009:
2432  0056 1503          	bcp	a,(OFST+2,sp)
2433  0058 270b          	jreq	L1011
2434                     ; 595       status = SET;
2436  005a               LC008:
2439  005a a601          	ld	a,#1
2441  005c 2008          	jra	L7601
2442                     ; 600       status = RESET;
2443  005e               L1701:
2444                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2446  005e c65230        	ld	a,21040
2447  0061 1503          	bcp	a,(OFST+2,sp)
2448                     ; 608       status = SET;
2450  0063 26f5          	jrne	LC008
2451  0065               L1011:
2452                     ; 613       status = RESET;
2456  0065 4f            	clr	a
2457  0066               L7601:
2458                     ; 617   return status;
2462  0066 5b03          	addw	sp,#3
2463  0068 81            	ret	
2499                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2499                     ; 647 {
2500                     .text:	section	.text,new
2501  0000               _UART1_ClearFlag:
2503  0000 89            	pushw	x
2504       00000000      OFST:	set	0
2507                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2509  0001 a30020        	cpw	x,#32
2510  0004 2713          	jreq	L423
2511  0006 a30210        	cpw	x,#528
2512  0009 270e          	jreq	L423
2513  000b ae0288        	ldw	x,#648
2514  000e 89            	pushw	x
2515  000f 5f            	clrw	x
2516  0010 89            	pushw	x
2517  0011 ae0008        	ldw	x,#L371
2518  0014 cd0000        	call	_assert_failed
2520  0017 5b04          	addw	sp,#4
2521  0019               L423:
2522                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2524  0019 1e01          	ldw	x,(OFST+1,sp)
2525  001b a30020        	cpw	x,#32
2526  001e 2606          	jrne	L3211
2527                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2529  0020 35df5230      	mov	21040,#223
2531  0024 2004          	jra	L5211
2532  0026               L3211:
2533                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2535  0026 72195237      	bres	21047,#4
2536  002a               L5211:
2537                     ; 660 }
2540  002a 85            	popw	x
2541  002b 81            	ret	
2624                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2624                     ; 676 {
2625                     .text:	section	.text,new
2626  0000               _UART1_GetITStatus:
2628  0000 89            	pushw	x
2629  0001 89            	pushw	x
2630       00000002      OFST:	set	2
2633                     ; 677   ITStatus pendingbitstatus = RESET;
2635                     ; 678   uint8_t itpos = 0;
2637                     ; 679   uint8_t itmask1 = 0;
2639                     ; 680   uint8_t itmask2 = 0;
2641                     ; 681   uint8_t enablestatus = 0;
2643                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2645  0002 a30277        	cpw	x,#631
2646  0005 272c          	jreq	L633
2647  0007 a30266        	cpw	x,#614
2648  000a 2727          	jreq	L633
2649  000c a30255        	cpw	x,#597
2650  000f 2722          	jreq	L633
2651  0011 a30244        	cpw	x,#580
2652  0014 271d          	jreq	L633
2653  0016 a30235        	cpw	x,#565
2654  0019 2718          	jreq	L633
2655  001b a30346        	cpw	x,#838
2656  001e 2713          	jreq	L633
2657  0020 a30100        	cpw	x,#256
2658  0023 270e          	jreq	L633
2659  0025 ae02ac        	ldw	x,#684
2660  0028 89            	pushw	x
2661  0029 5f            	clrw	x
2662  002a 89            	pushw	x
2663  002b ae0008        	ldw	x,#L371
2664  002e cd0000        	call	_assert_failed
2666  0031 5b04          	addw	sp,#4
2667  0033               L633:
2668                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2670  0033 7b04          	ld	a,(OFST+2,sp)
2671  0035 a40f          	and	a,#15
2672  0037 5f            	clrw	x
2673  0038 97            	ld	xl,a
2674  0039 a601          	ld	a,#1
2675  003b 5d            	tnzw	x
2676  003c 2704          	jreq	L243
2677  003e               L443:
2678  003e 48            	sll	a
2679  003f 5a            	decw	x
2680  0040 26fc          	jrne	L443
2681  0042               L243:
2682  0042 6b01          	ld	(OFST-1,sp),a
2683                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2685  0044 7b04          	ld	a,(OFST+2,sp)
2686  0046 4e            	swap	a
2687  0047 a40f          	and	a,#15
2688  0049 6b02          	ld	(OFST+0,sp),a
2689                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2691  004b 5f            	clrw	x
2692  004c 97            	ld	xl,a
2693  004d a601          	ld	a,#1
2694  004f 5d            	tnzw	x
2695  0050 2704          	jreq	L643
2696  0052               L053:
2697  0052 48            	sll	a
2698  0053 5a            	decw	x
2699  0054 26fc          	jrne	L053
2700  0056               L643:
2701  0056 6b02          	ld	(OFST+0,sp),a
2702                     ; 695   if (UART1_IT == UART1_IT_PE)
2704  0058 1e03          	ldw	x,(OFST+1,sp)
2705  005a a30100        	cpw	x,#256
2706  005d 260c          	jrne	L1711
2707                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2709  005f c65234        	ld	a,21044
2710  0062 1402          	and	a,(OFST+0,sp)
2711  0064 6b02          	ld	(OFST+0,sp),a
2712                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2714  0066 c65230        	ld	a,21040
2716                     ; 704       pendingbitstatus = SET;
2718  0069 200f          	jp	LC012
2719                     ; 709       pendingbitstatus = RESET;
2720  006b               L1711:
2721                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2723  006b a30346        	cpw	x,#838
2724  006e 2616          	jrne	L1021
2725                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2727  0070 c65237        	ld	a,21047
2728  0073 1402          	and	a,(OFST+0,sp)
2729  0075 6b02          	ld	(OFST+0,sp),a
2730                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2732  0077 c65237        	ld	a,21047
2734  007a               LC012:
2735  007a 1501          	bcp	a,(OFST-1,sp)
2736  007c 271a          	jreq	L1121
2737  007e 7b02          	ld	a,(OFST+0,sp)
2738  0080 2716          	jreq	L1121
2739                     ; 721       pendingbitstatus = SET;
2741  0082               LC011:
2744  0082 a601          	ld	a,#1
2746  0084 2013          	jra	L7711
2747                     ; 726       pendingbitstatus = RESET;
2748  0086               L1021:
2749                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2751  0086 c65235        	ld	a,21045
2752  0089 1402          	and	a,(OFST+0,sp)
2753  008b 6b02          	ld	(OFST+0,sp),a
2754                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2756  008d c65230        	ld	a,21040
2757  0090 1501          	bcp	a,(OFST-1,sp)
2758  0092 2704          	jreq	L1121
2760  0094 7b02          	ld	a,(OFST+0,sp)
2761                     ; 737       pendingbitstatus = SET;
2763  0096 26ea          	jrne	LC011
2764  0098               L1121:
2765                     ; 742       pendingbitstatus = RESET;
2769  0098 4f            	clr	a
2770  0099               L7711:
2771                     ; 747   return  pendingbitstatus;
2775  0099 5b04          	addw	sp,#4
2776  009b 81            	ret	
2813                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2813                     ; 776 {
2814                     .text:	section	.text,new
2815  0000               _UART1_ClearITPendingBit:
2817  0000 89            	pushw	x
2818       00000000      OFST:	set	0
2821                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2823  0001 a30255        	cpw	x,#597
2824  0004 2713          	jreq	L063
2825  0006 a30346        	cpw	x,#838
2826  0009 270e          	jreq	L063
2827  000b ae0309        	ldw	x,#777
2828  000e 89            	pushw	x
2829  000f 5f            	clrw	x
2830  0010 89            	pushw	x
2831  0011 ae0008        	ldw	x,#L371
2832  0014 cd0000        	call	_assert_failed
2834  0017 5b04          	addw	sp,#4
2835  0019               L063:
2836                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2838  0019 1e01          	ldw	x,(OFST+1,sp)
2839  001b a30255        	cpw	x,#597
2840  001e 2606          	jrne	L3321
2841                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2843  0020 35df5230      	mov	21040,#223
2845  0024 2004          	jra	L5321
2846  0026               L3321:
2847                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2849  0026 72195237      	bres	21047,#4
2850  002a               L5321:
2851                     ; 789 }
2854  002a 85            	popw	x
2855  002b 81            	ret	
2868                     	xdef	_UART1_ClearITPendingBit
2869                     	xdef	_UART1_GetITStatus
2870                     	xdef	_UART1_ClearFlag
2871                     	xdef	_UART1_GetFlagStatus
2872                     	xdef	_UART1_SetPrescaler
2873                     	xdef	_UART1_SetGuardTime
2874                     	xdef	_UART1_SetAddress
2875                     	xdef	_UART1_SendBreak
2876                     	xdef	_UART1_SendData9
2877                     	xdef	_UART1_SendData8
2878                     	xdef	_UART1_ReceiveData9
2879                     	xdef	_UART1_ReceiveData8
2880                     	xdef	_UART1_ReceiverWakeUpCmd
2881                     	xdef	_UART1_WakeUpConfig
2882                     	xdef	_UART1_SmartCardNACKCmd
2883                     	xdef	_UART1_SmartCardCmd
2884                     	xdef	_UART1_LINCmd
2885                     	xdef	_UART1_LINBreakDetectionConfig
2886                     	xdef	_UART1_IrDACmd
2887                     	xdef	_UART1_IrDAConfig
2888                     	xdef	_UART1_HalfDuplexCmd
2889                     	xdef	_UART1_ITConfig
2890                     	xdef	_UART1_Cmd
2891                     	xdef	_UART1_Init
2892                     	xdef	_UART1_DeInit
2893                     	xref	_assert_failed
2894                     	xref	_CLK_GetClockFreq
2895                     	switch	.const
2896  0008               L371:
2897  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2898  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2899  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2900  003e 5f7561727431  	dc.b	"_uart1.c",0
2901                     	xref.b	c_lreg
2902                     	xref.b	c_x
2922                     	xref	c_lursh
2923                     	xref	c_lsub
2924                     	xref	c_smul
2925                     	xref	c_ludv
2926                     	xref	c_rtol
2927                     	xref	c_llsh
2928                     	xref	c_lcmp
2929                     	xref	c_ltor
2930                     	end
