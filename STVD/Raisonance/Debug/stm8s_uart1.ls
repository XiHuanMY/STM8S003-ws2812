   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 53 void UART1_DeInit(void)
  45                     ; 54 {
  47                     .text:	section	.text,new
  48  0000               _UART1_DeInit:
  52                     ; 57   (void)UART1->SR;
  54  0000 c65230        	ld	a,21040
  55                     ; 58   (void)UART1->DR;
  57  0003 c65231        	ld	a,21041
  58                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  60  0006 725f5233      	clr	21043
  61                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  63  000a 725f5232      	clr	21042
  64                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  66  000e 725f5234      	clr	21044
  67                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  69  0012 725f5235      	clr	21045
  70                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  72  0016 725f5236      	clr	21046
  73                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  75  001a 725f5237      	clr	21047
  76                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  78  001e 725f5238      	clr	21048
  79                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  81  0022 725f5239      	clr	21049
  82                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  84  0026 725f523a      	clr	21050
  85                     ; 71 }
  88  002a 81            	ret
 386                     .const:	section	.text
 387  0000               L21:
 388  0000 00098969      	dc.l	625001
 389  0004               L25:
 390  0004 00000064      	dc.l	100
 391                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 391                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 391                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 391                     ; 93 {
 392                     .text:	section	.text,new
 393  0000               _UART1_Init:
 395  0000 520c          	subw	sp,#12
 396       0000000c      OFST:	set	12
 399                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 403                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 405  0002 96            	ldw	x,sp
 406  0003 1c000f        	addw	x,#OFST+3
 407  0006 cd0000        	call	c_ltor
 409  0009 ae0000        	ldw	x,#L21
 410  000c cd0000        	call	c_lcmp
 412  000f 2403          	jruge	L01
 413  0011 4f            	clr	a
 414  0012 2010          	jra	L41
 415  0014               L01:
 416  0014 ae0061        	ldw	x,#97
 417  0017 89            	pushw	x
 418  0018 ae0000        	ldw	x,#0
 419  001b 89            	pushw	x
 420  001c ae0008        	ldw	x,#L561
 421  001f cd0000        	call	_assert_failed
 423  0022 5b04          	addw	sp,#4
 424  0024               L41:
 425                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 427  0024 0d13          	tnz	(OFST+7,sp)
 428  0026 2706          	jreq	L02
 429  0028 7b13          	ld	a,(OFST+7,sp)
 430  002a a110          	cp	a,#16
 431  002c 2603          	jrne	L61
 432  002e               L02:
 433  002e 4f            	clr	a
 434  002f 2010          	jra	L22
 435  0031               L61:
 436  0031 ae0062        	ldw	x,#98
 437  0034 89            	pushw	x
 438  0035 ae0000        	ldw	x,#0
 439  0038 89            	pushw	x
 440  0039 ae0008        	ldw	x,#L561
 441  003c cd0000        	call	_assert_failed
 443  003f 5b04          	addw	sp,#4
 444  0041               L22:
 445                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 447  0041 0d14          	tnz	(OFST+8,sp)
 448  0043 2712          	jreq	L62
 449  0045 7b14          	ld	a,(OFST+8,sp)
 450  0047 a110          	cp	a,#16
 451  0049 270c          	jreq	L62
 452  004b 7b14          	ld	a,(OFST+8,sp)
 453  004d a120          	cp	a,#32
 454  004f 2706          	jreq	L62
 455  0051 7b14          	ld	a,(OFST+8,sp)
 456  0053 a130          	cp	a,#48
 457  0055 2603          	jrne	L42
 458  0057               L62:
 459  0057 4f            	clr	a
 460  0058 2010          	jra	L03
 461  005a               L42:
 462  005a ae0063        	ldw	x,#99
 463  005d 89            	pushw	x
 464  005e ae0000        	ldw	x,#0
 465  0061 89            	pushw	x
 466  0062 ae0008        	ldw	x,#L561
 467  0065 cd0000        	call	_assert_failed
 469  0068 5b04          	addw	sp,#4
 470  006a               L03:
 471                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 473  006a 0d15          	tnz	(OFST+9,sp)
 474  006c 270c          	jreq	L43
 475  006e 7b15          	ld	a,(OFST+9,sp)
 476  0070 a104          	cp	a,#4
 477  0072 2706          	jreq	L43
 478  0074 7b15          	ld	a,(OFST+9,sp)
 479  0076 a106          	cp	a,#6
 480  0078 2603          	jrne	L23
 481  007a               L43:
 482  007a 4f            	clr	a
 483  007b 2010          	jra	L63
 484  007d               L23:
 485  007d ae0064        	ldw	x,#100
 486  0080 89            	pushw	x
 487  0081 ae0000        	ldw	x,#0
 488  0084 89            	pushw	x
 489  0085 ae0008        	ldw	x,#L561
 490  0088 cd0000        	call	_assert_failed
 492  008b 5b04          	addw	sp,#4
 493  008d               L63:
 494                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 496  008d 7b17          	ld	a,(OFST+11,sp)
 497  008f a108          	cp	a,#8
 498  0091 2730          	jreq	L24
 499  0093 7b17          	ld	a,(OFST+11,sp)
 500  0095 a140          	cp	a,#64
 501  0097 272a          	jreq	L24
 502  0099 7b17          	ld	a,(OFST+11,sp)
 503  009b a104          	cp	a,#4
 504  009d 2724          	jreq	L24
 505  009f 7b17          	ld	a,(OFST+11,sp)
 506  00a1 a180          	cp	a,#128
 507  00a3 271e          	jreq	L24
 508  00a5 7b17          	ld	a,(OFST+11,sp)
 509  00a7 a10c          	cp	a,#12
 510  00a9 2718          	jreq	L24
 511  00ab 7b17          	ld	a,(OFST+11,sp)
 512  00ad a10c          	cp	a,#12
 513  00af 2712          	jreq	L24
 514  00b1 7b17          	ld	a,(OFST+11,sp)
 515  00b3 a144          	cp	a,#68
 516  00b5 270c          	jreq	L24
 517  00b7 7b17          	ld	a,(OFST+11,sp)
 518  00b9 a1c0          	cp	a,#192
 519  00bb 2706          	jreq	L24
 520  00bd 7b17          	ld	a,(OFST+11,sp)
 521  00bf a188          	cp	a,#136
 522  00c1 2603          	jrne	L04
 523  00c3               L24:
 524  00c3 4f            	clr	a
 525  00c4 2010          	jra	L44
 526  00c6               L04:
 527  00c6 ae0065        	ldw	x,#101
 528  00c9 89            	pushw	x
 529  00ca ae0000        	ldw	x,#0
 530  00cd 89            	pushw	x
 531  00ce ae0008        	ldw	x,#L561
 532  00d1 cd0000        	call	_assert_failed
 534  00d4 5b04          	addw	sp,#4
 535  00d6               L44:
 536                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 538  00d6 7b16          	ld	a,(OFST+10,sp)
 539  00d8 a488          	and	a,#136
 540  00da a188          	cp	a,#136
 541  00dc 271b          	jreq	L64
 542  00de 7b16          	ld	a,(OFST+10,sp)
 543  00e0 a444          	and	a,#68
 544  00e2 a144          	cp	a,#68
 545  00e4 2713          	jreq	L64
 546  00e6 7b16          	ld	a,(OFST+10,sp)
 547  00e8 a422          	and	a,#34
 548  00ea a122          	cp	a,#34
 549  00ec 270b          	jreq	L64
 550  00ee 7b16          	ld	a,(OFST+10,sp)
 551  00f0 a411          	and	a,#17
 552  00f2 a111          	cp	a,#17
 553  00f4 2703          	jreq	L64
 554  00f6 4f            	clr	a
 555  00f7 2010          	jra	L05
 556  00f9               L64:
 557  00f9 ae0066        	ldw	x,#102
 558  00fc 89            	pushw	x
 559  00fd ae0000        	ldw	x,#0
 560  0100 89            	pushw	x
 561  0101 ae0008        	ldw	x,#L561
 562  0104 cd0000        	call	_assert_failed
 564  0107 5b04          	addw	sp,#4
 565  0109               L05:
 566                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 568  0109 72195234      	bres	21044,#4
 569                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 571  010d c65234        	ld	a,21044
 572  0110 1a13          	or	a,(OFST+7,sp)
 573  0112 c75234        	ld	21044,a
 574                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 576  0115 c65236        	ld	a,21046
 577  0118 a4cf          	and	a,#207
 578  011a c75236        	ld	21046,a
 579                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 581  011d c65236        	ld	a,21046
 582  0120 1a14          	or	a,(OFST+8,sp)
 583  0122 c75236        	ld	21046,a
 584                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 586  0125 c65234        	ld	a,21044
 587  0128 a4f9          	and	a,#249
 588  012a c75234        	ld	21044,a
 589                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 591  012d c65234        	ld	a,21044
 592  0130 1a15          	or	a,(OFST+9,sp)
 593  0132 c75234        	ld	21044,a
 594                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 596  0135 725f5232      	clr	21042
 597                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 599  0139 c65233        	ld	a,21043
 600  013c a40f          	and	a,#15
 601  013e c75233        	ld	21043,a
 602                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 604  0141 c65233        	ld	a,21043
 605  0144 a4f0          	and	a,#240
 606  0146 c75233        	ld	21043,a
 607                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 609  0149 96            	ldw	x,sp
 610  014a 1c000f        	addw	x,#OFST+3
 611  014d cd0000        	call	c_ltor
 613  0150 a604          	ld	a,#4
 614  0152 cd0000        	call	c_llsh
 616  0155 96            	ldw	x,sp
 617  0156 1c0001        	addw	x,#OFST-11
 618  0159 cd0000        	call	c_rtol
 620  015c cd0000        	call	_CLK_GetClockFreq
 622  015f 96            	ldw	x,sp
 623  0160 1c0001        	addw	x,#OFST-11
 624  0163 cd0000        	call	c_ludv
 626  0166 96            	ldw	x,sp
 627  0167 1c0009        	addw	x,#OFST-3
 628  016a cd0000        	call	c_rtol
 630                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 632  016d 96            	ldw	x,sp
 633  016e 1c000f        	addw	x,#OFST+3
 634  0171 cd0000        	call	c_ltor
 636  0174 a604          	ld	a,#4
 637  0176 cd0000        	call	c_llsh
 639  0179 96            	ldw	x,sp
 640  017a 1c0001        	addw	x,#OFST-11
 641  017d cd0000        	call	c_rtol
 643  0180 cd0000        	call	_CLK_GetClockFreq
 645  0183 a664          	ld	a,#100
 646  0185 cd0000        	call	c_smul
 648  0188 96            	ldw	x,sp
 649  0189 1c0001        	addw	x,#OFST-11
 650  018c cd0000        	call	c_ludv
 652  018f 96            	ldw	x,sp
 653  0190 1c0005        	addw	x,#OFST-7
 654  0193 cd0000        	call	c_rtol
 656                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 658  0196 96            	ldw	x,sp
 659  0197 1c0009        	addw	x,#OFST-3
 660  019a cd0000        	call	c_ltor
 662  019d a664          	ld	a,#100
 663  019f cd0000        	call	c_smul
 665  01a2 96            	ldw	x,sp
 666  01a3 1c0001        	addw	x,#OFST-11
 667  01a6 cd0000        	call	c_rtol
 669  01a9 96            	ldw	x,sp
 670  01aa 1c0005        	addw	x,#OFST-7
 671  01ad cd0000        	call	c_ltor
 673  01b0 96            	ldw	x,sp
 674  01b1 1c0001        	addw	x,#OFST-11
 675  01b4 cd0000        	call	c_lsub
 677  01b7 a604          	ld	a,#4
 678  01b9 cd0000        	call	c_llsh
 680  01bc ae0004        	ldw	x,#L25
 681  01bf cd0000        	call	c_ludv
 683  01c2 b603          	ld	a,c_lreg+3
 684  01c4 a40f          	and	a,#15
 685  01c6 ca5233        	or	a,21043
 686  01c9 c75233        	ld	21043,a
 687                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 689  01cc 96            	ldw	x,sp
 690  01cd 1c0009        	addw	x,#OFST-3
 691  01d0 cd0000        	call	c_ltor
 693  01d3 a604          	ld	a,#4
 694  01d5 cd0000        	call	c_lursh
 696  01d8 b603          	ld	a,c_lreg+3
 697  01da a4f0          	and	a,#240
 698  01dc b703          	ld	c_lreg+3,a
 699  01de 3f02          	clr	c_lreg+2
 700  01e0 3f01          	clr	c_lreg+1
 701  01e2 3f00          	clr	c_lreg
 702  01e4 b603          	ld	a,c_lreg+3
 703  01e6 ca5233        	or	a,21043
 704  01e9 c75233        	ld	21043,a
 705                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 707  01ec c65232        	ld	a,21042
 708  01ef 1a0c          	or	a,(OFST+0,sp)
 709  01f1 c75232        	ld	21042,a
 710                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 712  01f4 c65235        	ld	a,21045
 713  01f7 a4f3          	and	a,#243
 714  01f9 c75235        	ld	21045,a
 715                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 717  01fc c65236        	ld	a,21046
 718  01ff a4f8          	and	a,#248
 719  0201 c75236        	ld	21046,a
 720                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 720                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 722  0204 7b16          	ld	a,(OFST+10,sp)
 723  0206 a407          	and	a,#7
 724  0208 ca5236        	or	a,21046
 725  020b c75236        	ld	21046,a
 726                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 728  020e 7b17          	ld	a,(OFST+11,sp)
 729  0210 a504          	bcp	a,#4
 730  0212 2706          	jreq	L761
 731                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 733  0214 72165235      	bset	21045,#3
 735  0218 2004          	jra	L171
 736  021a               L761:
 737                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 739  021a 72175235      	bres	21045,#3
 740  021e               L171:
 741                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 743  021e 7b17          	ld	a,(OFST+11,sp)
 744  0220 a508          	bcp	a,#8
 745  0222 2706          	jreq	L371
 746                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 748  0224 72145235      	bset	21045,#2
 750  0228 2004          	jra	L571
 751  022a               L371:
 752                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 754  022a 72155235      	bres	21045,#2
 755  022e               L571:
 756                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 758  022e 7b16          	ld	a,(OFST+10,sp)
 759  0230 a580          	bcp	a,#128
 760  0232 2706          	jreq	L771
 761                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 763  0234 72175236      	bres	21046,#3
 765  0238 200a          	jra	L102
 766  023a               L771:
 767                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 769  023a 7b16          	ld	a,(OFST+10,sp)
 770  023c a408          	and	a,#8
 771  023e ca5236        	or	a,21046
 772  0241 c75236        	ld	21046,a
 773  0244               L102:
 774                     ; 176 }
 777  0244 5b0c          	addw	sp,#12
 778  0246 81            	ret
 833                     ; 184 void UART1_Cmd(FunctionalState NewState)
 833                     ; 185 {
 834                     .text:	section	.text,new
 835  0000               _UART1_Cmd:
 839                     ; 186   if (NewState != DISABLE)
 841  0000 4d            	tnz	a
 842  0001 2706          	jreq	L132
 843                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 845  0003 721b5234      	bres	21044,#5
 847  0007 2004          	jra	L332
 848  0009               L132:
 849                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 851  0009 721a5234      	bset	21044,#5
 852  000d               L332:
 853                     ; 196 }
 856  000d 81            	ret
 978                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 978                     ; 212 {
 979                     .text:	section	.text,new
 980  0000               _UART1_ITConfig:
 982  0000 89            	pushw	x
 983  0001 89            	pushw	x
 984       00000002      OFST:	set	2
 987                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 991                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 993  0002 a30100        	cpw	x,#256
 994  0005 2719          	jreq	L26
 995  0007 a30277        	cpw	x,#631
 996  000a 2714          	jreq	L26
 997  000c a30266        	cpw	x,#614
 998  000f 270f          	jreq	L26
 999  0011 a30205        	cpw	x,#517
1000  0014 270a          	jreq	L26
1001  0016 a30244        	cpw	x,#580
1002  0019 2705          	jreq	L26
1003  001b a30346        	cpw	x,#838
1004  001e 2603          	jrne	L06
1005  0020               L26:
1006  0020 4f            	clr	a
1007  0021 2010          	jra	L46
1008  0023               L06:
1009  0023 ae00d8        	ldw	x,#216
1010  0026 89            	pushw	x
1011  0027 ae0000        	ldw	x,#0
1012  002a 89            	pushw	x
1013  002b ae0008        	ldw	x,#L561
1014  002e cd0000        	call	_assert_failed
1016  0031 5b04          	addw	sp,#4
1017  0033               L46:
1018                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1020  0033 0d07          	tnz	(OFST+5,sp)
1021  0035 2706          	jreq	L07
1022  0037 7b07          	ld	a,(OFST+5,sp)
1023  0039 a101          	cp	a,#1
1024  003b 2603          	jrne	L66
1025  003d               L07:
1026  003d 4f            	clr	a
1027  003e 2010          	jra	L27
1028  0040               L66:
1029  0040 ae00d9        	ldw	x,#217
1030  0043 89            	pushw	x
1031  0044 ae0000        	ldw	x,#0
1032  0047 89            	pushw	x
1033  0048 ae0008        	ldw	x,#L561
1034  004b cd0000        	call	_assert_failed
1036  004e 5b04          	addw	sp,#4
1037  0050               L27:
1038                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
1040  0050 7b03          	ld	a,(OFST+1,sp)
1041  0052 6b01          	ld	(OFST-1,sp),a
1042                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
1044  0054 7b04          	ld	a,(OFST+2,sp)
1045  0056 a40f          	and	a,#15
1046  0058 5f            	clrw	x
1047  0059 97            	ld	xl,a
1048  005a a601          	ld	a,#1
1049  005c 5d            	tnzw	x
1050  005d 2704          	jreq	L47
1051  005f               L67:
1052  005f 48            	sll	a
1053  0060 5a            	decw	x
1054  0061 26fc          	jrne	L67
1055  0063               L47:
1056  0063 6b02          	ld	(OFST+0,sp),a
1057                     ; 224   if (NewState != DISABLE)
1059  0065 0d07          	tnz	(OFST+5,sp)
1060  0067 272a          	jreq	L703
1061                     ; 227     if (uartreg == 0x01)
1063  0069 7b01          	ld	a,(OFST-1,sp)
1064  006b a101          	cp	a,#1
1065  006d 260a          	jrne	L113
1066                     ; 229       UART1->CR1 |= itpos;
1068  006f c65234        	ld	a,21044
1069  0072 1a02          	or	a,(OFST+0,sp)
1070  0074 c75234        	ld	21044,a
1072  0077 2045          	jra	L123
1073  0079               L113:
1074                     ; 231     else if (uartreg == 0x02)
1076  0079 7b01          	ld	a,(OFST-1,sp)
1077  007b a102          	cp	a,#2
1078  007d 260a          	jrne	L513
1079                     ; 233       UART1->CR2 |= itpos;
1081  007f c65235        	ld	a,21045
1082  0082 1a02          	or	a,(OFST+0,sp)
1083  0084 c75235        	ld	21045,a
1085  0087 2035          	jra	L123
1086  0089               L513:
1087                     ; 237       UART1->CR4 |= itpos;
1089  0089 c65237        	ld	a,21047
1090  008c 1a02          	or	a,(OFST+0,sp)
1091  008e c75237        	ld	21047,a
1092  0091 202b          	jra	L123
1093  0093               L703:
1094                     ; 243     if (uartreg == 0x01)
1096  0093 7b01          	ld	a,(OFST-1,sp)
1097  0095 a101          	cp	a,#1
1098  0097 260b          	jrne	L323
1099                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1101  0099 7b02          	ld	a,(OFST+0,sp)
1102  009b 43            	cpl	a
1103  009c c45234        	and	a,21044
1104  009f c75234        	ld	21044,a
1106  00a2 201a          	jra	L123
1107  00a4               L323:
1108                     ; 247     else if (uartreg == 0x02)
1110  00a4 7b01          	ld	a,(OFST-1,sp)
1111  00a6 a102          	cp	a,#2
1112  00a8 260b          	jrne	L723
1113                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1115  00aa 7b02          	ld	a,(OFST+0,sp)
1116  00ac 43            	cpl	a
1117  00ad c45235        	and	a,21045
1118  00b0 c75235        	ld	21045,a
1120  00b3 2009          	jra	L123
1121  00b5               L723:
1122                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1124  00b5 7b02          	ld	a,(OFST+0,sp)
1125  00b7 43            	cpl	a
1126  00b8 c45237        	and	a,21047
1127  00bb c75237        	ld	21047,a
1128  00be               L123:
1129                     ; 257 }
1132  00be 5b04          	addw	sp,#4
1133  00c0 81            	ret
1170                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1170                     ; 266 {
1171                     .text:	section	.text,new
1172  0000               _UART1_HalfDuplexCmd:
1174  0000 88            	push	a
1175       00000000      OFST:	set	0
1178                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1180  0001 4d            	tnz	a
1181  0002 2704          	jreq	L401
1182  0004 a101          	cp	a,#1
1183  0006 2603          	jrne	L201
1184  0008               L401:
1185  0008 4f            	clr	a
1186  0009 2010          	jra	L601
1187  000b               L201:
1188  000b ae010b        	ldw	x,#267
1189  000e 89            	pushw	x
1190  000f ae0000        	ldw	x,#0
1191  0012 89            	pushw	x
1192  0013 ae0008        	ldw	x,#L561
1193  0016 cd0000        	call	_assert_failed
1195  0019 5b04          	addw	sp,#4
1196  001b               L601:
1197                     ; 269   if (NewState != DISABLE)
1199  001b 0d01          	tnz	(OFST+1,sp)
1200  001d 2706          	jreq	L153
1201                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1203  001f 72165238      	bset	21048,#3
1205  0023 2004          	jra	L353
1206  0025               L153:
1207                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1209  0025 72175238      	bres	21048,#3
1210  0029               L353:
1211                     ; 277 }
1214  0029 84            	pop	a
1215  002a 81            	ret
1273                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1273                     ; 286 {
1274                     .text:	section	.text,new
1275  0000               _UART1_IrDAConfig:
1277  0000 88            	push	a
1278       00000000      OFST:	set	0
1281                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1283  0001 a101          	cp	a,#1
1284  0003 2703          	jreq	L411
1285  0005 4d            	tnz	a
1286  0006 2603          	jrne	L211
1287  0008               L411:
1288  0008 4f            	clr	a
1289  0009 2010          	jra	L611
1290  000b               L211:
1291  000b ae011f        	ldw	x,#287
1292  000e 89            	pushw	x
1293  000f ae0000        	ldw	x,#0
1294  0012 89            	pushw	x
1295  0013 ae0008        	ldw	x,#L561
1296  0016 cd0000        	call	_assert_failed
1298  0019 5b04          	addw	sp,#4
1299  001b               L611:
1300                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1302  001b 0d01          	tnz	(OFST+1,sp)
1303  001d 2706          	jreq	L304
1304                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1306  001f 72145238      	bset	21048,#2
1308  0023 2004          	jra	L504
1309  0025               L304:
1310                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1312  0025 72155238      	bres	21048,#2
1313  0029               L504:
1314                     ; 297 }
1317  0029 84            	pop	a
1318  002a 81            	ret
1354                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1354                     ; 306 {
1355                     .text:	section	.text,new
1356  0000               _UART1_IrDACmd:
1358  0000 88            	push	a
1359       00000000      OFST:	set	0
1362                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1364  0001 4d            	tnz	a
1365  0002 2704          	jreq	L421
1366  0004 a101          	cp	a,#1
1367  0006 2603          	jrne	L221
1368  0008               L421:
1369  0008 4f            	clr	a
1370  0009 2010          	jra	L621
1371  000b               L221:
1372  000b ae0134        	ldw	x,#308
1373  000e 89            	pushw	x
1374  000f ae0000        	ldw	x,#0
1375  0012 89            	pushw	x
1376  0013 ae0008        	ldw	x,#L561
1377  0016 cd0000        	call	_assert_failed
1379  0019 5b04          	addw	sp,#4
1380  001b               L621:
1381                     ; 310   if (NewState != DISABLE)
1383  001b 0d01          	tnz	(OFST+1,sp)
1384  001d 2706          	jreq	L524
1385                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1387  001f 72125238      	bset	21048,#1
1389  0023 2004          	jra	L724
1390  0025               L524:
1391                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1393  0025 72135238      	bres	21048,#1
1394  0029               L724:
1395                     ; 320 }
1398  0029 84            	pop	a
1399  002a 81            	ret
1459                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1459                     ; 330 {
1460                     .text:	section	.text,new
1461  0000               _UART1_LINBreakDetectionConfig:
1463  0000 88            	push	a
1464       00000000      OFST:	set	0
1467                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1469  0001 4d            	tnz	a
1470  0002 2704          	jreq	L431
1471  0004 a101          	cp	a,#1
1472  0006 2603          	jrne	L231
1473  0008               L431:
1474  0008 4f            	clr	a
1475  0009 2010          	jra	L631
1476  000b               L231:
1477  000b ae014b        	ldw	x,#331
1478  000e 89            	pushw	x
1479  000f ae0000        	ldw	x,#0
1480  0012 89            	pushw	x
1481  0013 ae0008        	ldw	x,#L561
1482  0016 cd0000        	call	_assert_failed
1484  0019 5b04          	addw	sp,#4
1485  001b               L631:
1486                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1488  001b 0d01          	tnz	(OFST+1,sp)
1489  001d 2706          	jreq	L754
1490                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1492  001f 721a5237      	bset	21047,#5
1494  0023 2004          	jra	L164
1495  0025               L754:
1496                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1498  0025 721b5237      	bres	21047,#5
1499  0029               L164:
1500                     ; 341 }
1503  0029 84            	pop	a
1504  002a 81            	ret
1540                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1540                     ; 350 {
1541                     .text:	section	.text,new
1542  0000               _UART1_LINCmd:
1544  0000 88            	push	a
1545       00000000      OFST:	set	0
1548                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1550  0001 4d            	tnz	a
1551  0002 2704          	jreq	L441
1552  0004 a101          	cp	a,#1
1553  0006 2603          	jrne	L241
1554  0008               L441:
1555  0008 4f            	clr	a
1556  0009 2010          	jra	L641
1557  000b               L241:
1558  000b ae015f        	ldw	x,#351
1559  000e 89            	pushw	x
1560  000f ae0000        	ldw	x,#0
1561  0012 89            	pushw	x
1562  0013 ae0008        	ldw	x,#L561
1563  0016 cd0000        	call	_assert_failed
1565  0019 5b04          	addw	sp,#4
1566  001b               L641:
1567                     ; 353   if (NewState != DISABLE)
1569  001b 0d01          	tnz	(OFST+1,sp)
1570  001d 2706          	jreq	L105
1571                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1573  001f 721c5236      	bset	21046,#6
1575  0023 2004          	jra	L305
1576  0025               L105:
1577                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1579  0025 721d5236      	bres	21046,#6
1580  0029               L305:
1581                     ; 363 }
1584  0029 84            	pop	a
1585  002a 81            	ret
1621                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1621                     ; 372 {
1622                     .text:	section	.text,new
1623  0000               _UART1_SmartCardCmd:
1625  0000 88            	push	a
1626       00000000      OFST:	set	0
1629                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1631  0001 4d            	tnz	a
1632  0002 2704          	jreq	L451
1633  0004 a101          	cp	a,#1
1634  0006 2603          	jrne	L251
1635  0008               L451:
1636  0008 4f            	clr	a
1637  0009 2010          	jra	L651
1638  000b               L251:
1639  000b ae0175        	ldw	x,#373
1640  000e 89            	pushw	x
1641  000f ae0000        	ldw	x,#0
1642  0012 89            	pushw	x
1643  0013 ae0008        	ldw	x,#L561
1644  0016 cd0000        	call	_assert_failed
1646  0019 5b04          	addw	sp,#4
1647  001b               L651:
1648                     ; 375   if (NewState != DISABLE)
1650  001b 0d01          	tnz	(OFST+1,sp)
1651  001d 2706          	jreq	L325
1652                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1654  001f 721a5238      	bset	21048,#5
1656  0023 2004          	jra	L525
1657  0025               L325:
1658                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1660  0025 721b5238      	bres	21048,#5
1661  0029               L525:
1662                     ; 385 }
1665  0029 84            	pop	a
1666  002a 81            	ret
1703                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1703                     ; 395 {
1704                     .text:	section	.text,new
1705  0000               _UART1_SmartCardNACKCmd:
1707  0000 88            	push	a
1708       00000000      OFST:	set	0
1711                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1713  0001 4d            	tnz	a
1714  0002 2704          	jreq	L461
1715  0004 a101          	cp	a,#1
1716  0006 2603          	jrne	L261
1717  0008               L461:
1718  0008 4f            	clr	a
1719  0009 2010          	jra	L661
1720  000b               L261:
1721  000b ae018c        	ldw	x,#396
1722  000e 89            	pushw	x
1723  000f ae0000        	ldw	x,#0
1724  0012 89            	pushw	x
1725  0013 ae0008        	ldw	x,#L561
1726  0016 cd0000        	call	_assert_failed
1728  0019 5b04          	addw	sp,#4
1729  001b               L661:
1730                     ; 398   if (NewState != DISABLE)
1732  001b 0d01          	tnz	(OFST+1,sp)
1733  001d 2706          	jreq	L545
1734                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1736  001f 72185238      	bset	21048,#4
1738  0023 2004          	jra	L745
1739  0025               L545:
1740                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1742  0025 72195238      	bres	21048,#4
1743  0029               L745:
1744                     ; 408 }
1747  0029 84            	pop	a
1748  002a 81            	ret
1806                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1806                     ; 417 {
1807                     .text:	section	.text,new
1808  0000               _UART1_WakeUpConfig:
1810  0000 88            	push	a
1811       00000000      OFST:	set	0
1814                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1816  0001 4d            	tnz	a
1817  0002 2704          	jreq	L471
1818  0004 a108          	cp	a,#8
1819  0006 2603          	jrne	L271
1820  0008               L471:
1821  0008 4f            	clr	a
1822  0009 2010          	jra	L671
1823  000b               L271:
1824  000b ae01a2        	ldw	x,#418
1825  000e 89            	pushw	x
1826  000f ae0000        	ldw	x,#0
1827  0012 89            	pushw	x
1828  0013 ae0008        	ldw	x,#L561
1829  0016 cd0000        	call	_assert_failed
1831  0019 5b04          	addw	sp,#4
1832  001b               L671:
1833                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1835  001b 72175234      	bres	21044,#3
1836                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1838  001f c65234        	ld	a,21044
1839  0022 1a01          	or	a,(OFST+1,sp)
1840  0024 c75234        	ld	21044,a
1841                     ; 422 }
1844  0027 84            	pop	a
1845  0028 81            	ret
1882                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1882                     ; 431 {
1883                     .text:	section	.text,new
1884  0000               _UART1_ReceiverWakeUpCmd:
1886  0000 88            	push	a
1887       00000000      OFST:	set	0
1890                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1892  0001 4d            	tnz	a
1893  0002 2704          	jreq	L402
1894  0004 a101          	cp	a,#1
1895  0006 2603          	jrne	L202
1896  0008               L402:
1897  0008 4f            	clr	a
1898  0009 2010          	jra	L602
1899  000b               L202:
1900  000b ae01b0        	ldw	x,#432
1901  000e 89            	pushw	x
1902  000f ae0000        	ldw	x,#0
1903  0012 89            	pushw	x
1904  0013 ae0008        	ldw	x,#L561
1905  0016 cd0000        	call	_assert_failed
1907  0019 5b04          	addw	sp,#4
1908  001b               L602:
1909                     ; 434   if (NewState != DISABLE)
1911  001b 0d01          	tnz	(OFST+1,sp)
1912  001d 2706          	jreq	L516
1913                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1915  001f 72125235      	bset	21045,#1
1917  0023 2004          	jra	L716
1918  0025               L516:
1919                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1921  0025 72135235      	bres	21045,#1
1922  0029               L716:
1923                     ; 444 }
1926  0029 84            	pop	a
1927  002a 81            	ret
1950                     ; 451 uint8_t UART1_ReceiveData8(void)
1950                     ; 452 {
1951                     .text:	section	.text,new
1952  0000               _UART1_ReceiveData8:
1956                     ; 453   return ((uint8_t)UART1->DR);
1958  0000 c65231        	ld	a,21041
1961  0003 81            	ret
1993                     ; 461 uint16_t UART1_ReceiveData9(void)
1993                     ; 462 {
1994                     .text:	section	.text,new
1995  0000               _UART1_ReceiveData9:
1997  0000 89            	pushw	x
1998       00000002      OFST:	set	2
2001                     ; 463   uint16_t temp = 0;
2003                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
2005  0001 c65234        	ld	a,21044
2006  0004 5f            	clrw	x
2007  0005 a480          	and	a,#128
2008  0007 5f            	clrw	x
2009  0008 02            	rlwa	x,a
2010  0009 58            	sllw	x
2011  000a 1f01          	ldw	(OFST-1,sp),x
2012                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
2014  000c c65231        	ld	a,21041
2015  000f 5f            	clrw	x
2016  0010 97            	ld	xl,a
2017  0011 01            	rrwa	x,a
2018  0012 1a02          	or	a,(OFST+0,sp)
2019  0014 01            	rrwa	x,a
2020  0015 1a01          	or	a,(OFST-1,sp)
2021  0017 01            	rrwa	x,a
2022  0018 01            	rrwa	x,a
2023  0019 a4ff          	and	a,#255
2024  001b 01            	rrwa	x,a
2025  001c a401          	and	a,#1
2026  001e 01            	rrwa	x,a
2029  001f 5b02          	addw	sp,#2
2030  0021 81            	ret
2062                     ; 474 void UART1_SendData8(uint8_t Data)
2062                     ; 475 {
2063                     .text:	section	.text,new
2064  0000               _UART1_SendData8:
2068                     ; 477   UART1->DR = Data;
2070  0000 c75231        	ld	21041,a
2071                     ; 478 }
2074  0003 81            	ret
2106                     ; 486 void UART1_SendData9(uint16_t Data)
2106                     ; 487 {
2107                     .text:	section	.text,new
2108  0000               _UART1_SendData9:
2110  0000 89            	pushw	x
2111       00000000      OFST:	set	0
2114                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2116  0001 721d5234      	bres	21044,#6
2117                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2119  0005 54            	srlw	x
2120  0006 54            	srlw	x
2121  0007 9f            	ld	a,xl
2122  0008 a440          	and	a,#64
2123  000a ca5234        	or	a,21044
2124  000d c75234        	ld	21044,a
2125                     ; 493   UART1->DR   = (uint8_t)(Data);
2127  0010 7b02          	ld	a,(OFST+2,sp)
2128  0012 c75231        	ld	21041,a
2129                     ; 494 }
2132  0015 85            	popw	x
2133  0016 81            	ret
2156                     ; 501 void UART1_SendBreak(void)
2156                     ; 502 {
2157                     .text:	section	.text,new
2158  0000               _UART1_SendBreak:
2162                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2164  0000 72105235      	bset	21045,#0
2165                     ; 504 }
2168  0004 81            	ret
2201                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2201                     ; 512 {
2202                     .text:	section	.text,new
2203  0000               _UART1_SetAddress:
2205  0000 88            	push	a
2206       00000000      OFST:	set	0
2209                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2211  0001 a110          	cp	a,#16
2212  0003 2403          	jruge	L422
2213  0005 4f            	clr	a
2214  0006 2010          	jra	L622
2215  0008               L422:
2216  0008 ae0202        	ldw	x,#514
2217  000b 89            	pushw	x
2218  000c ae0000        	ldw	x,#0
2219  000f 89            	pushw	x
2220  0010 ae0008        	ldw	x,#L561
2221  0013 cd0000        	call	_assert_failed
2223  0016 5b04          	addw	sp,#4
2224  0018               L622:
2225                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2227  0018 c65237        	ld	a,21047
2228  001b a4f0          	and	a,#240
2229  001d c75237        	ld	21047,a
2230                     ; 519   UART1->CR4 |= UART1_Address;
2232  0020 c65237        	ld	a,21047
2233  0023 1a01          	or	a,(OFST+1,sp)
2234  0025 c75237        	ld	21047,a
2235                     ; 520 }
2238  0028 84            	pop	a
2239  0029 81            	ret
2271                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2271                     ; 529 {
2272                     .text:	section	.text,new
2273  0000               _UART1_SetGuardTime:
2277                     ; 531   UART1->GTR = UART1_GuardTime;
2279  0000 c75239        	ld	21049,a
2280                     ; 532 }
2283  0003 81            	ret
2315                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2315                     ; 557 {
2316                     .text:	section	.text,new
2317  0000               _UART1_SetPrescaler:
2321                     ; 559   UART1->PSCR = UART1_Prescaler;
2323  0000 c7523a        	ld	21050,a
2324                     ; 560 }
2327  0003 81            	ret
2471                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2471                     ; 569 {
2472                     .text:	section	.text,new
2473  0000               _UART1_GetFlagStatus:
2475  0000 89            	pushw	x
2476  0001 88            	push	a
2477       00000001      OFST:	set	1
2480                     ; 570   FlagStatus status = RESET;
2482                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2484  0002 a30080        	cpw	x,#128
2485  0005 272d          	jreq	L042
2486  0007 a30040        	cpw	x,#64
2487  000a 2728          	jreq	L042
2488  000c a30020        	cpw	x,#32
2489  000f 2723          	jreq	L042
2490  0011 a30010        	cpw	x,#16
2491  0014 271e          	jreq	L042
2492  0016 a30008        	cpw	x,#8
2493  0019 2719          	jreq	L042
2494  001b a30004        	cpw	x,#4
2495  001e 2714          	jreq	L042
2496  0020 a30002        	cpw	x,#2
2497  0023 270f          	jreq	L042
2498  0025 a30001        	cpw	x,#1
2499  0028 270a          	jreq	L042
2500  002a a30101        	cpw	x,#257
2501  002d 2705          	jreq	L042
2502  002f a30210        	cpw	x,#528
2503  0032 2603          	jrne	L632
2504  0034               L042:
2505  0034 4f            	clr	a
2506  0035 2010          	jra	L242
2507  0037               L632:
2508  0037 ae023d        	ldw	x,#573
2509  003a 89            	pushw	x
2510  003b ae0000        	ldw	x,#0
2511  003e 89            	pushw	x
2512  003f ae0008        	ldw	x,#L561
2513  0042 cd0000        	call	_assert_failed
2515  0045 5b04          	addw	sp,#4
2516  0047               L242:
2517                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2519  0047 1e02          	ldw	x,(OFST+1,sp)
2520  0049 a30210        	cpw	x,#528
2521  004c 2611          	jrne	L3301
2522                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2524  004e c65237        	ld	a,21047
2525  0051 1503          	bcp	a,(OFST+2,sp)
2526  0053 2706          	jreq	L5301
2527                     ; 582       status = SET;
2529  0055 a601          	ld	a,#1
2530  0057 6b01          	ld	(OFST+0,sp),a
2532  0059 202b          	jra	L1401
2533  005b               L5301:
2534                     ; 587       status = RESET;
2536  005b 0f01          	clr	(OFST+0,sp)
2537  005d 2027          	jra	L1401
2538  005f               L3301:
2539                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2541  005f 1e02          	ldw	x,(OFST+1,sp)
2542  0061 a30101        	cpw	x,#257
2543  0064 2611          	jrne	L3401
2544                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2546  0066 c65235        	ld	a,21045
2547  0069 1503          	bcp	a,(OFST+2,sp)
2548  006b 2706          	jreq	L5401
2549                     ; 595       status = SET;
2551  006d a601          	ld	a,#1
2552  006f 6b01          	ld	(OFST+0,sp),a
2554  0071 2013          	jra	L1401
2555  0073               L5401:
2556                     ; 600       status = RESET;
2558  0073 0f01          	clr	(OFST+0,sp)
2559  0075 200f          	jra	L1401
2560  0077               L3401:
2561                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2563  0077 c65230        	ld	a,21040
2564  007a 1503          	bcp	a,(OFST+2,sp)
2565  007c 2706          	jreq	L3501
2566                     ; 608       status = SET;
2568  007e a601          	ld	a,#1
2569  0080 6b01          	ld	(OFST+0,sp),a
2571  0082 2002          	jra	L1401
2572  0084               L3501:
2573                     ; 613       status = RESET;
2575  0084 0f01          	clr	(OFST+0,sp)
2576  0086               L1401:
2577                     ; 617   return status;
2579  0086 7b01          	ld	a,(OFST+0,sp)
2582  0088 5b03          	addw	sp,#3
2583  008a 81            	ret
2619                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2619                     ; 647 {
2620                     .text:	section	.text,new
2621  0000               _UART1_ClearFlag:
2623  0000 89            	pushw	x
2624       00000000      OFST:	set	0
2627                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2629  0001 a30020        	cpw	x,#32
2630  0004 2705          	jreq	L052
2631  0006 a30210        	cpw	x,#528
2632  0009 2603          	jrne	L642
2633  000b               L052:
2634  000b 4f            	clr	a
2635  000c 2010          	jra	L252
2636  000e               L642:
2637  000e ae0288        	ldw	x,#648
2638  0011 89            	pushw	x
2639  0012 ae0000        	ldw	x,#0
2640  0015 89            	pushw	x
2641  0016 ae0008        	ldw	x,#L561
2642  0019 cd0000        	call	_assert_failed
2644  001c 5b04          	addw	sp,#4
2645  001e               L252:
2646                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2648  001e 1e01          	ldw	x,(OFST+1,sp)
2649  0020 a30020        	cpw	x,#32
2650  0023 2606          	jrne	L5701
2651                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2653  0025 35df5230      	mov	21040,#223
2655  0029 2004          	jra	L7701
2656  002b               L5701:
2657                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2659  002b 72195237      	bres	21047,#4
2660  002f               L7701:
2661                     ; 660 }
2664  002f 85            	popw	x
2665  0030 81            	ret
2740                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2740                     ; 676 {
2741                     .text:	section	.text,new
2742  0000               _UART1_GetITStatus:
2744  0000 89            	pushw	x
2745  0001 89            	pushw	x
2746       00000002      OFST:	set	2
2749                     ; 677   ITStatus pendingbitstatus = RESET;
2751                     ; 678   uint8_t itpos = 0;
2753                     ; 679   uint8_t itmask1 = 0;
2755                     ; 680   uint8_t itmask2 = 0;
2757                     ; 681   uint8_t enablestatus = 0;
2759                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2761  0002 a30277        	cpw	x,#631
2762  0005 271e          	jreq	L062
2763  0007 a30266        	cpw	x,#614
2764  000a 2719          	jreq	L062
2765  000c a30255        	cpw	x,#597
2766  000f 2714          	jreq	L062
2767  0011 a30244        	cpw	x,#580
2768  0014 270f          	jreq	L062
2769  0016 a30235        	cpw	x,#565
2770  0019 270a          	jreq	L062
2771  001b a30346        	cpw	x,#838
2772  001e 2705          	jreq	L062
2773  0020 a30100        	cpw	x,#256
2774  0023 2603          	jrne	L652
2775  0025               L062:
2776  0025 4f            	clr	a
2777  0026 2010          	jra	L262
2778  0028               L652:
2779  0028 ae02ac        	ldw	x,#684
2780  002b 89            	pushw	x
2781  002c ae0000        	ldw	x,#0
2782  002f 89            	pushw	x
2783  0030 ae0008        	ldw	x,#L561
2784  0033 cd0000        	call	_assert_failed
2786  0036 5b04          	addw	sp,#4
2787  0038               L262:
2788                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2790  0038 7b04          	ld	a,(OFST+2,sp)
2791  003a a40f          	and	a,#15
2792  003c 5f            	clrw	x
2793  003d 97            	ld	xl,a
2794  003e a601          	ld	a,#1
2795  0040 5d            	tnzw	x
2796  0041 2704          	jreq	L462
2797  0043               L662:
2798  0043 48            	sll	a
2799  0044 5a            	decw	x
2800  0045 26fc          	jrne	L662
2801  0047               L462:
2802  0047 6b01          	ld	(OFST-1,sp),a
2803                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2805  0049 7b04          	ld	a,(OFST+2,sp)
2806  004b 4e            	swap	a
2807  004c a40f          	and	a,#15
2808  004e 6b02          	ld	(OFST+0,sp),a
2809                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2811  0050 7b02          	ld	a,(OFST+0,sp)
2812  0052 5f            	clrw	x
2813  0053 97            	ld	xl,a
2814  0054 a601          	ld	a,#1
2815  0056 5d            	tnzw	x
2816  0057 2704          	jreq	L072
2817  0059               L272:
2818  0059 48            	sll	a
2819  005a 5a            	decw	x
2820  005b 26fc          	jrne	L272
2821  005d               L072:
2822  005d 6b02          	ld	(OFST+0,sp),a
2823                     ; 695   if (UART1_IT == UART1_IT_PE)
2825  005f 1e03          	ldw	x,(OFST+1,sp)
2826  0061 a30100        	cpw	x,#256
2827  0064 261c          	jrne	L3311
2828                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2830  0066 c65234        	ld	a,21044
2831  0069 1402          	and	a,(OFST+0,sp)
2832  006b 6b02          	ld	(OFST+0,sp),a
2833                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2835  006d c65230        	ld	a,21040
2836  0070 1501          	bcp	a,(OFST-1,sp)
2837  0072 270a          	jreq	L5311
2839  0074 0d02          	tnz	(OFST+0,sp)
2840  0076 2706          	jreq	L5311
2841                     ; 704       pendingbitstatus = SET;
2843  0078 a601          	ld	a,#1
2844  007a 6b02          	ld	(OFST+0,sp),a
2846  007c 2041          	jra	L1411
2847  007e               L5311:
2848                     ; 709       pendingbitstatus = RESET;
2850  007e 0f02          	clr	(OFST+0,sp)
2851  0080 203d          	jra	L1411
2852  0082               L3311:
2853                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2855  0082 1e03          	ldw	x,(OFST+1,sp)
2856  0084 a30346        	cpw	x,#838
2857  0087 261c          	jrne	L3411
2858                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2860  0089 c65237        	ld	a,21047
2861  008c 1402          	and	a,(OFST+0,sp)
2862  008e 6b02          	ld	(OFST+0,sp),a
2863                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2865  0090 c65237        	ld	a,21047
2866  0093 1501          	bcp	a,(OFST-1,sp)
2867  0095 270a          	jreq	L5411
2869  0097 0d02          	tnz	(OFST+0,sp)
2870  0099 2706          	jreq	L5411
2871                     ; 721       pendingbitstatus = SET;
2873  009b a601          	ld	a,#1
2874  009d 6b02          	ld	(OFST+0,sp),a
2876  009f 201e          	jra	L1411
2877  00a1               L5411:
2878                     ; 726       pendingbitstatus = RESET;
2880  00a1 0f02          	clr	(OFST+0,sp)
2881  00a3 201a          	jra	L1411
2882  00a5               L3411:
2883                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2885  00a5 c65235        	ld	a,21045
2886  00a8 1402          	and	a,(OFST+0,sp)
2887  00aa 6b02          	ld	(OFST+0,sp),a
2888                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2890  00ac c65230        	ld	a,21040
2891  00af 1501          	bcp	a,(OFST-1,sp)
2892  00b1 270a          	jreq	L3511
2894  00b3 0d02          	tnz	(OFST+0,sp)
2895  00b5 2706          	jreq	L3511
2896                     ; 737       pendingbitstatus = SET;
2898  00b7 a601          	ld	a,#1
2899  00b9 6b02          	ld	(OFST+0,sp),a
2901  00bb 2002          	jra	L1411
2902  00bd               L3511:
2903                     ; 742       pendingbitstatus = RESET;
2905  00bd 0f02          	clr	(OFST+0,sp)
2906  00bf               L1411:
2907                     ; 747   return  pendingbitstatus;
2909  00bf 7b02          	ld	a,(OFST+0,sp)
2912  00c1 5b04          	addw	sp,#4
2913  00c3 81            	ret
2950                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2950                     ; 776 {
2951                     .text:	section	.text,new
2952  0000               _UART1_ClearITPendingBit:
2954  0000 89            	pushw	x
2955       00000000      OFST:	set	0
2958                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2960  0001 a30255        	cpw	x,#597
2961  0004 2705          	jreq	L003
2962  0006 a30346        	cpw	x,#838
2963  0009 2603          	jrne	L672
2964  000b               L003:
2965  000b 4f            	clr	a
2966  000c 2010          	jra	L203
2967  000e               L672:
2968  000e ae0309        	ldw	x,#777
2969  0011 89            	pushw	x
2970  0012 ae0000        	ldw	x,#0
2971  0015 89            	pushw	x
2972  0016 ae0008        	ldw	x,#L561
2973  0019 cd0000        	call	_assert_failed
2975  001c 5b04          	addw	sp,#4
2976  001e               L203:
2977                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2979  001e 1e01          	ldw	x,(OFST+1,sp)
2980  0020 a30255        	cpw	x,#597
2981  0023 2606          	jrne	L5711
2982                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2984  0025 35df5230      	mov	21040,#223
2986  0029 2004          	jra	L7711
2987  002b               L5711:
2988                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2990  002b 72195237      	bres	21047,#4
2991  002f               L7711:
2992                     ; 789 }
2995  002f 85            	popw	x
2996  0030 81            	ret
3009                     	xdef	_UART1_ClearITPendingBit
3010                     	xdef	_UART1_GetITStatus
3011                     	xdef	_UART1_ClearFlag
3012                     	xdef	_UART1_GetFlagStatus
3013                     	xdef	_UART1_SetPrescaler
3014                     	xdef	_UART1_SetGuardTime
3015                     	xdef	_UART1_SetAddress
3016                     	xdef	_UART1_SendBreak
3017                     	xdef	_UART1_SendData9
3018                     	xdef	_UART1_SendData8
3019                     	xdef	_UART1_ReceiveData9
3020                     	xdef	_UART1_ReceiveData8
3021                     	xdef	_UART1_ReceiverWakeUpCmd
3022                     	xdef	_UART1_WakeUpConfig
3023                     	xdef	_UART1_SmartCardNACKCmd
3024                     	xdef	_UART1_SmartCardCmd
3025                     	xdef	_UART1_LINCmd
3026                     	xdef	_UART1_LINBreakDetectionConfig
3027                     	xdef	_UART1_IrDACmd
3028                     	xdef	_UART1_IrDAConfig
3029                     	xdef	_UART1_HalfDuplexCmd
3030                     	xdef	_UART1_ITConfig
3031                     	xdef	_UART1_Cmd
3032                     	xdef	_UART1_Init
3033                     	xdef	_UART1_DeInit
3034                     	xref	_assert_failed
3035                     	xref	_CLK_GetClockFreq
3036                     	switch	.const
3037  0008               L561:
3038  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3039  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3040  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
3041  003e 5f7561727431  	dc.b	"_uart1.c",0
3042                     	xref.b	c_lreg
3043                     	xref.b	c_x
3063                     	xref	c_lursh
3064                     	xref	c_lsub
3065                     	xref	c_smul
3066                     	xref	c_ludv
3067                     	xref	c_rtol
3068                     	xref	c_llsh
3069                     	xref	c_lcmp
3070                     	xref	c_ltor
3071                     	end
