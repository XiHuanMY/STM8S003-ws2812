   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 52 void TIM2_DeInit(void)
  49                     ; 53 {
  51                     .text:	section	.text,new
  52  0000               _TIM2_DeInit:
  56                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  58  0000 725f5300      	clr	21248
  59                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  61  0004 725f5303      	clr	21251
  62                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  64  0008 725f5305      	clr	21253
  65                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  67  000c 725f530a      	clr	21258
  68                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  70  0010 725f530b      	clr	21259
  71                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  73  0014 725f530a      	clr	21258
  74                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  76  0018 725f530b      	clr	21259
  77                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  79  001c 725f5307      	clr	21255
  80                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  82  0020 725f5308      	clr	21256
  83                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  85  0024 725f5309      	clr	21257
  86                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  88  0028 725f530c      	clr	21260
  89                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  91  002c 725f530d      	clr	21261
  92                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  94  0030 725f530e      	clr	21262
  95                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  97  0034 35ff530f      	mov	21263,#255
  98                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 100  0038 35ff5310      	mov	21264,#255
 101                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 103  003c 725f5311      	clr	21265
 104                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 106  0040 725f5312      	clr	21266
 107                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 109  0044 725f5313      	clr	21267
 110                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 112  0048 725f5314      	clr	21268
 113                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 115  004c 725f5315      	clr	21269
 116                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 118  0050 725f5316      	clr	21270
 119                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 121  0054 725f5304      	clr	21252
 122                     ; 81 }
 125  0058 81            	ret	
 293                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 293                     ; 90                         uint16_t TIM2_Period)
 293                     ; 91 {
 294                     .text:	section	.text,new
 295  0000               _TIM2_TimeBaseInit:
 297       00000000      OFST:	set	0
 300                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 302  0000 c7530e        	ld	21262,a
 303  0003 88            	push	a
 304                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 306  0004 7b04          	ld	a,(OFST+4,sp)
 307  0006 c7530f        	ld	21263,a
 308                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 310  0009 7b05          	ld	a,(OFST+5,sp)
 311  000b c75310        	ld	21264,a
 312                     ; 97 }
 315  000e 84            	pop	a
 316  000f 81            	ret	
 474                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 474                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 474                     ; 110                   uint16_t TIM2_Pulse,
 474                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 474                     ; 112 {
 475                     .text:	section	.text,new
 476  0000               _TIM2_OC1Init:
 478  0000 89            	pushw	x
 479  0001 88            	push	a
 480       00000001      OFST:	set	1
 483                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 485  0002 9e            	ld	a,xh
 486  0003 4d            	tnz	a
 487  0004 271e          	jreq	L61
 488  0006 9e            	ld	a,xh
 489  0007 a110          	cp	a,#16
 490  0009 2719          	jreq	L61
 491  000b 9e            	ld	a,xh
 492  000c a120          	cp	a,#32
 493  000e 2714          	jreq	L61
 494  0010 9e            	ld	a,xh
 495  0011 a130          	cp	a,#48
 496  0013 270f          	jreq	L61
 497  0015 9e            	ld	a,xh
 498  0016 a160          	cp	a,#96
 499  0018 270a          	jreq	L61
 500  001a 9e            	ld	a,xh
 501  001b a170          	cp	a,#112
 502  001d 2705          	jreq	L61
 503  001f ae0072        	ldw	x,#114
 504  0022 ad4b          	call	LC001
 505  0024               L61:
 506                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 508  0024 7b03          	ld	a,(OFST+2,sp)
 509  0026 2709          	jreq	L62
 510  0028 a111          	cp	a,#17
 511  002a 2705          	jreq	L62
 512  002c ae0073        	ldw	x,#115
 513  002f ad3e          	call	LC001
 514  0031               L62:
 515                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 517  0031 7b08          	ld	a,(OFST+7,sp)
 518  0033 2709          	jreq	L63
 519  0035 a122          	cp	a,#34
 520  0037 2705          	jreq	L63
 521  0039 ae0074        	ldw	x,#116
 522  003c ad31          	call	LC001
 523  003e               L63:
 524                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 526  003e c6530a        	ld	a,21258
 527  0041 a4fc          	and	a,#252
 528  0043 c7530a        	ld	21258,a
 529                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 529                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 531  0046 7b08          	ld	a,(OFST+7,sp)
 532  0048 a402          	and	a,#2
 533  004a 6b01          	ld	(OFST+0,sp),a
 534  004c 7b03          	ld	a,(OFST+2,sp)
 535  004e a401          	and	a,#1
 536  0050 1a01          	or	a,(OFST+0,sp)
 537  0052 ca530a        	or	a,21258
 538  0055 c7530a        	ld	21258,a
 539                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 539                     ; 126                           (uint8_t)TIM2_OCMode);
 541  0058 c65307        	ld	a,21255
 542  005b a48f          	and	a,#143
 543  005d 1a02          	or	a,(OFST+1,sp)
 544  005f c75307        	ld	21255,a
 545                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 547  0062 7b06          	ld	a,(OFST+5,sp)
 548  0064 c75311        	ld	21265,a
 549                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 551  0067 7b07          	ld	a,(OFST+6,sp)
 552  0069 c75312        	ld	21266,a
 553                     ; 131 }
 556  006c 5b03          	addw	sp,#3
 557  006e 81            	ret	
 558  006f               LC001:
 559  006f 89            	pushw	x
 560  0070 5f            	clrw	x
 561  0071 89            	pushw	x
 562  0072 ae0000        	ldw	x,#L702
 563  0075 cd0000        	call	_assert_failed
 565  0078 5b04          	addw	sp,#4
 566  007a 81            	ret	
 631                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 631                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 631                     ; 144                   uint16_t TIM2_Pulse,
 631                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 631                     ; 146 {
 632                     .text:	section	.text,new
 633  0000               _TIM2_OC2Init:
 635  0000 89            	pushw	x
 636  0001 88            	push	a
 637       00000001      OFST:	set	1
 640                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 642  0002 9e            	ld	a,xh
 643  0003 4d            	tnz	a
 644  0004 271e          	jreq	L05
 645  0006 9e            	ld	a,xh
 646  0007 a110          	cp	a,#16
 647  0009 2719          	jreq	L05
 648  000b 9e            	ld	a,xh
 649  000c a120          	cp	a,#32
 650  000e 2714          	jreq	L05
 651  0010 9e            	ld	a,xh
 652  0011 a130          	cp	a,#48
 653  0013 270f          	jreq	L05
 654  0015 9e            	ld	a,xh
 655  0016 a160          	cp	a,#96
 656  0018 270a          	jreq	L05
 657  001a 9e            	ld	a,xh
 658  001b a170          	cp	a,#112
 659  001d 2705          	jreq	L05
 660  001f ae0094        	ldw	x,#148
 661  0022 ad4b          	call	LC002
 662  0024               L05:
 663                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 665  0024 7b03          	ld	a,(OFST+2,sp)
 666  0026 2709          	jreq	L06
 667  0028 a111          	cp	a,#17
 668  002a 2705          	jreq	L06
 669  002c ae0095        	ldw	x,#149
 670  002f ad3e          	call	LC002
 671  0031               L06:
 672                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 674  0031 7b08          	ld	a,(OFST+7,sp)
 675  0033 2709          	jreq	L07
 676  0035 a122          	cp	a,#34
 677  0037 2705          	jreq	L07
 678  0039 ae0096        	ldw	x,#150
 679  003c ad31          	call	LC002
 680  003e               L07:
 681                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 683  003e c6530a        	ld	a,21258
 684  0041 a4cf          	and	a,#207
 685  0043 c7530a        	ld	21258,a
 686                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 686                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 688  0046 7b08          	ld	a,(OFST+7,sp)
 689  0048 a420          	and	a,#32
 690  004a 6b01          	ld	(OFST+0,sp),a
 691  004c 7b03          	ld	a,(OFST+2,sp)
 692  004e a410          	and	a,#16
 693  0050 1a01          	or	a,(OFST+0,sp)
 694  0052 ca530a        	or	a,21258
 695  0055 c7530a        	ld	21258,a
 696                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 696                     ; 162                           (uint8_t)TIM2_OCMode);
 698  0058 c65308        	ld	a,21256
 699  005b a48f          	and	a,#143
 700  005d 1a02          	or	a,(OFST+1,sp)
 701  005f c75308        	ld	21256,a
 702                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 704  0062 7b06          	ld	a,(OFST+5,sp)
 705  0064 c75313        	ld	21267,a
 706                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 708  0067 7b07          	ld	a,(OFST+6,sp)
 709  0069 c75314        	ld	21268,a
 710                     ; 168 }
 713  006c 5b03          	addw	sp,#3
 714  006e 81            	ret	
 715  006f               LC002:
 716  006f 89            	pushw	x
 717  0070 5f            	clrw	x
 718  0071 89            	pushw	x
 719  0072 ae0000        	ldw	x,#L702
 720  0075 cd0000        	call	_assert_failed
 722  0078 5b04          	addw	sp,#4
 723  007a 81            	ret	
 788                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 788                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 788                     ; 181                   uint16_t TIM2_Pulse,
 788                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 788                     ; 183 {
 789                     .text:	section	.text,new
 790  0000               _TIM2_OC3Init:
 792  0000 89            	pushw	x
 793  0001 88            	push	a
 794       00000001      OFST:	set	1
 797                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 799  0002 9e            	ld	a,xh
 800  0003 4d            	tnz	a
 801  0004 271e          	jreq	L201
 802  0006 9e            	ld	a,xh
 803  0007 a110          	cp	a,#16
 804  0009 2719          	jreq	L201
 805  000b 9e            	ld	a,xh
 806  000c a120          	cp	a,#32
 807  000e 2714          	jreq	L201
 808  0010 9e            	ld	a,xh
 809  0011 a130          	cp	a,#48
 810  0013 270f          	jreq	L201
 811  0015 9e            	ld	a,xh
 812  0016 a160          	cp	a,#96
 813  0018 270a          	jreq	L201
 814  001a 9e            	ld	a,xh
 815  001b a170          	cp	a,#112
 816  001d 2705          	jreq	L201
 817  001f ae00b9        	ldw	x,#185
 818  0022 ad4b          	call	LC003
 819  0024               L201:
 820                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 822  0024 7b03          	ld	a,(OFST+2,sp)
 823  0026 2709          	jreq	L211
 824  0028 a111          	cp	a,#17
 825  002a 2705          	jreq	L211
 826  002c ae00ba        	ldw	x,#186
 827  002f ad3e          	call	LC003
 828  0031               L211:
 829                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 831  0031 7b08          	ld	a,(OFST+7,sp)
 832  0033 2709          	jreq	L221
 833  0035 a122          	cp	a,#34
 834  0037 2705          	jreq	L221
 835  0039 ae00bb        	ldw	x,#187
 836  003c ad31          	call	LC003
 837  003e               L221:
 838                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 840  003e c6530b        	ld	a,21259
 841  0041 a4fc          	and	a,#252
 842  0043 c7530b        	ld	21259,a
 843                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 843                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 845  0046 7b08          	ld	a,(OFST+7,sp)
 846  0048 a402          	and	a,#2
 847  004a 6b01          	ld	(OFST+0,sp),a
 848  004c 7b03          	ld	a,(OFST+2,sp)
 849  004e a401          	and	a,#1
 850  0050 1a01          	or	a,(OFST+0,sp)
 851  0052 ca530b        	or	a,21259
 852  0055 c7530b        	ld	21259,a
 853                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 853                     ; 196                           (uint8_t)TIM2_OCMode);
 855  0058 c65309        	ld	a,21257
 856  005b a48f          	and	a,#143
 857  005d 1a02          	or	a,(OFST+1,sp)
 858  005f c75309        	ld	21257,a
 859                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 861  0062 7b06          	ld	a,(OFST+5,sp)
 862  0064 c75315        	ld	21269,a
 863                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 865  0067 7b07          	ld	a,(OFST+6,sp)
 866  0069 c75316        	ld	21270,a
 867                     ; 201 }
 870  006c 5b03          	addw	sp,#3
 871  006e 81            	ret	
 872  006f               LC003:
 873  006f 89            	pushw	x
 874  0070 5f            	clrw	x
 875  0071 89            	pushw	x
 876  0072 ae0000        	ldw	x,#L702
 877  0075 cd0000        	call	_assert_failed
 879  0078 5b04          	addw	sp,#4
 880  007a 81            	ret	
1074                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1074                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1074                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1074                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1074                     ; 216                  uint8_t TIM2_ICFilter)
1074                     ; 217 {
1075                     .text:	section	.text,new
1076  0000               _TIM2_ICInit:
1078  0000 89            	pushw	x
1079       00000000      OFST:	set	0
1082                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1084  0001 9e            	ld	a,xh
1085  0002 4d            	tnz	a
1086  0003 270f          	jreq	L431
1087  0005 9e            	ld	a,xh
1088  0006 4a            	dec	a
1089  0007 270b          	jreq	L431
1090  0009 9e            	ld	a,xh
1091  000a a102          	cp	a,#2
1092  000c 2706          	jreq	L431
1093  000e ae00db        	ldw	x,#219
1094  0011 cd0097        	call	LC004
1095  0014               L431:
1096                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1098  0014 7b02          	ld	a,(OFST+2,sp)
1099  0016 2709          	jreq	L441
1100  0018 a144          	cp	a,#68
1101  001a 2705          	jreq	L441
1102  001c ae00dc        	ldw	x,#220
1103  001f ad76          	call	LC004
1104  0021               L441:
1105                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1107  0021 7b05          	ld	a,(OFST+5,sp)
1108  0023 a101          	cp	a,#1
1109  0025 270d          	jreq	L451
1110  0027 a102          	cp	a,#2
1111  0029 2709          	jreq	L451
1112  002b a103          	cp	a,#3
1113  002d 2705          	jreq	L451
1114  002f ae00dd        	ldw	x,#221
1115  0032 ad63          	call	LC004
1116  0034               L451:
1117                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1119  0034 7b06          	ld	a,(OFST+6,sp)
1120  0036 2711          	jreq	L461
1121  0038 a104          	cp	a,#4
1122  003a 270d          	jreq	L461
1123  003c a108          	cp	a,#8
1124  003e 2709          	jreq	L461
1125  0040 a10c          	cp	a,#12
1126  0042 2705          	jreq	L461
1127  0044 ae00de        	ldw	x,#222
1128  0047 ad4e          	call	LC004
1129  0049               L461:
1130                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1132  0049 7b07          	ld	a,(OFST+7,sp)
1133  004b a110          	cp	a,#16
1134  004d 2505          	jrult	L271
1135  004f ae00df        	ldw	x,#223
1136  0052 ad43          	call	LC004
1137  0054               L271:
1138                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1140  0054 7b01          	ld	a,(OFST+1,sp)
1141  0056 2614          	jrne	L304
1142                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1142                     ; 229                (uint8_t)TIM2_ICSelection,
1142                     ; 230                (uint8_t)TIM2_ICFilter);
1144  0058 7b07          	ld	a,(OFST+7,sp)
1145  005a 88            	push	a
1146  005b 7b06          	ld	a,(OFST+6,sp)
1147  005d 97            	ld	xl,a
1148  005e 7b03          	ld	a,(OFST+3,sp)
1149  0060 95            	ld	xh,a
1150  0061 cd0000        	call	L3_TI1_Config
1152  0064 84            	pop	a
1153                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1155  0065 7b06          	ld	a,(OFST+6,sp)
1156  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1159  006a 2029          	jra	L504
1160  006c               L304:
1161                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1163  006c 4a            	dec	a
1164  006d 2614          	jrne	L704
1165                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1165                     ; 239                (uint8_t)TIM2_ICSelection,
1165                     ; 240                (uint8_t)TIM2_ICFilter);
1167  006f 7b07          	ld	a,(OFST+7,sp)
1168  0071 88            	push	a
1169  0072 7b06          	ld	a,(OFST+6,sp)
1170  0074 97            	ld	xl,a
1171  0075 7b03          	ld	a,(OFST+3,sp)
1172  0077 95            	ld	xh,a
1173  0078 cd0000        	call	L5_TI2_Config
1175  007b 84            	pop	a
1176                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1178  007c 7b06          	ld	a,(OFST+6,sp)
1179  007e cd0000        	call	_TIM2_SetIC2Prescaler
1182  0081 2012          	jra	L504
1183  0083               L704:
1184                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1184                     ; 249                (uint8_t)TIM2_ICSelection,
1184                     ; 250                (uint8_t)TIM2_ICFilter);
1186  0083 7b07          	ld	a,(OFST+7,sp)
1187  0085 88            	push	a
1188  0086 7b06          	ld	a,(OFST+6,sp)
1189  0088 97            	ld	xl,a
1190  0089 7b03          	ld	a,(OFST+3,sp)
1191  008b 95            	ld	xh,a
1192  008c cd0000        	call	L7_TI3_Config
1194  008f 84            	pop	a
1195                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1197  0090 7b06          	ld	a,(OFST+6,sp)
1198  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1200  0095               L504:
1201                     ; 255 }
1204  0095 85            	popw	x
1205  0096 81            	ret	
1206  0097               LC004:
1207  0097 89            	pushw	x
1208  0098 5f            	clrw	x
1209  0099 89            	pushw	x
1210  009a ae0000        	ldw	x,#L702
1211  009d cd0000        	call	_assert_failed
1213  00a0 5b04          	addw	sp,#4
1214  00a2 81            	ret	
1311                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1311                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1311                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1311                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1311                     ; 270                      uint8_t TIM2_ICFilter)
1311                     ; 271 {
1312                     .text:	section	.text,new
1313  0000               _TIM2_PWMIConfig:
1315  0000 89            	pushw	x
1316  0001 89            	pushw	x
1317       00000002      OFST:	set	2
1320                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1322                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1324                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1326  0002 9e            	ld	a,xh
1327  0003 4d            	tnz	a
1328  0004 270a          	jreq	L022
1329  0006 9e            	ld	a,xh
1330  0007 4a            	dec	a
1331  0008 2706          	jreq	L022
1332  000a ae0114        	ldw	x,#276
1333  000d cd00b3        	call	LC005
1334  0010               L022:
1335                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1337  0010 7b04          	ld	a,(OFST+2,sp)
1338  0012 270a          	jreq	L032
1339  0014 a144          	cp	a,#68
1340  0016 2706          	jreq	L032
1341  0018 ae0115        	ldw	x,#277
1342  001b cd00b3        	call	LC005
1343  001e               L032:
1344                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1346  001e 7b07          	ld	a,(OFST+5,sp)
1347  0020 a101          	cp	a,#1
1348  0022 270e          	jreq	L042
1349  0024 a102          	cp	a,#2
1350  0026 270a          	jreq	L042
1351  0028 a103          	cp	a,#3
1352  002a 2706          	jreq	L042
1353  002c ae0116        	ldw	x,#278
1354  002f cd00b3        	call	LC005
1355  0032               L042:
1356                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1358  0032 7b08          	ld	a,(OFST+6,sp)
1359  0034 2711          	jreq	L052
1360  0036 a104          	cp	a,#4
1361  0038 270d          	jreq	L052
1362  003a a108          	cp	a,#8
1363  003c 2709          	jreq	L052
1364  003e a10c          	cp	a,#12
1365  0040 2705          	jreq	L052
1366  0042 ae0117        	ldw	x,#279
1367  0045 ad6c          	call	LC005
1368  0047               L052:
1369                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1371  0047 7b04          	ld	a,(OFST+2,sp)
1372  0049 a144          	cp	a,#68
1373  004b 2706          	jreq	L164
1374                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1376  004d a644          	ld	a,#68
1377  004f 6b01          	ld	(OFST-1,sp),a
1379  0051 2002          	jra	L364
1380  0053               L164:
1381                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1383  0053 0f01          	clr	(OFST-1,sp)
1384  0055               L364:
1385                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1387  0055 7b07          	ld	a,(OFST+5,sp)
1388  0057 4a            	dec	a
1389  0058 2604          	jrne	L564
1390                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1392  005a a602          	ld	a,#2
1394  005c 2002          	jra	L764
1395  005e               L564:
1396                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1398  005e a601          	ld	a,#1
1399  0060               L764:
1400  0060 6b02          	ld	(OFST+0,sp),a
1401                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1403  0062 7b03          	ld	a,(OFST+1,sp)
1404  0064 2626          	jrne	L174
1405                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1405                     ; 305                (uint8_t)TIM2_ICFilter);
1407  0066 7b09          	ld	a,(OFST+7,sp)
1408  0068 88            	push	a
1409  0069 7b08          	ld	a,(OFST+6,sp)
1410  006b 97            	ld	xl,a
1411  006c 7b05          	ld	a,(OFST+3,sp)
1412  006e 95            	ld	xh,a
1413  006f cd0000        	call	L3_TI1_Config
1415  0072 84            	pop	a
1416                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1418  0073 7b08          	ld	a,(OFST+6,sp)
1419  0075 cd0000        	call	_TIM2_SetIC1Prescaler
1421                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1423  0078 7b09          	ld	a,(OFST+7,sp)
1424  007a 88            	push	a
1425  007b 7b03          	ld	a,(OFST+1,sp)
1426  007d 97            	ld	xl,a
1427  007e 7b02          	ld	a,(OFST+0,sp)
1428  0080 95            	ld	xh,a
1429  0081 cd0000        	call	L5_TI2_Config
1431  0084 84            	pop	a
1432                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1434  0085 7b08          	ld	a,(OFST+6,sp)
1435  0087 cd0000        	call	_TIM2_SetIC2Prescaler
1438  008a 2024          	jra	L374
1439  008c               L174:
1440                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1440                     ; 320                (uint8_t)TIM2_ICFilter);
1442  008c 7b09          	ld	a,(OFST+7,sp)
1443  008e 88            	push	a
1444  008f 7b08          	ld	a,(OFST+6,sp)
1445  0091 97            	ld	xl,a
1446  0092 7b05          	ld	a,(OFST+3,sp)
1447  0094 95            	ld	xh,a
1448  0095 cd0000        	call	L5_TI2_Config
1450  0098 84            	pop	a
1451                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1453  0099 7b08          	ld	a,(OFST+6,sp)
1454  009b cd0000        	call	_TIM2_SetIC2Prescaler
1456                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1458  009e 7b09          	ld	a,(OFST+7,sp)
1459  00a0 88            	push	a
1460  00a1 7b03          	ld	a,(OFST+1,sp)
1461  00a3 97            	ld	xl,a
1462  00a4 7b02          	ld	a,(OFST+0,sp)
1463  00a6 95            	ld	xh,a
1464  00a7 cd0000        	call	L3_TI1_Config
1466  00aa 84            	pop	a
1467                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1469  00ab 7b08          	ld	a,(OFST+6,sp)
1470  00ad cd0000        	call	_TIM2_SetIC1Prescaler
1472  00b0               L374:
1473                     ; 331 }
1476  00b0 5b04          	addw	sp,#4
1477  00b2 81            	ret	
1478  00b3               LC005:
1479  00b3 89            	pushw	x
1480  00b4 5f            	clrw	x
1481  00b5 89            	pushw	x
1482  00b6 ae0000        	ldw	x,#L702
1483  00b9 cd0000        	call	_assert_failed
1485  00bc 5b04          	addw	sp,#4
1486  00be 81            	ret	
1542                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1542                     ; 340 {
1543                     .text:	section	.text,new
1544  0000               _TIM2_Cmd:
1546  0000 88            	push	a
1547       00000000      OFST:	set	0
1550                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1552  0001 4d            	tnz	a
1553  0002 2711          	jreq	L203
1554  0004 4a            	dec	a
1555  0005 270e          	jreq	L203
1556  0007 ae0156        	ldw	x,#342
1557  000a 89            	pushw	x
1558  000b 5f            	clrw	x
1559  000c 89            	pushw	x
1560  000d ae0000        	ldw	x,#L702
1561  0010 cd0000        	call	_assert_failed
1563  0013 5b04          	addw	sp,#4
1564  0015               L203:
1565                     ; 345   if (NewState != DISABLE)
1567  0015 7b01          	ld	a,(OFST+1,sp)
1568  0017 2706          	jreq	L325
1569                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1571  0019 72105300      	bset	21248,#0
1573  001d 2004          	jra	L525
1574  001f               L325:
1575                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1577  001f 72115300      	bres	21248,#0
1578  0023               L525:
1579                     ; 353 }
1582  0023 84            	pop	a
1583  0024 81            	ret	
1663                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1663                     ; 369 {
1664                     .text:	section	.text,new
1665  0000               _TIM2_ITConfig:
1667  0000 89            	pushw	x
1668       00000000      OFST:	set	0
1671                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1673  0001 9e            	ld	a,xh
1674  0002 4d            	tnz	a
1675  0003 2705          	jreq	L013
1676  0005 9e            	ld	a,xh
1677  0006 a110          	cp	a,#16
1678  0008 2505          	jrult	L213
1679  000a               L013:
1680  000a ae0173        	ldw	x,#371
1681  000d ad22          	call	LC006
1682  000f               L213:
1683                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1685  000f 7b02          	ld	a,(OFST+2,sp)
1686  0011 2708          	jreq	L223
1687  0013 4a            	dec	a
1688  0014 2705          	jreq	L223
1689  0016 ae0174        	ldw	x,#372
1690  0019 ad16          	call	LC006
1691  001b               L223:
1692                     ; 374   if (NewState != DISABLE)
1694  001b 7b02          	ld	a,(OFST+2,sp)
1695  001d 2707          	jreq	L565
1696                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1698  001f c65303        	ld	a,21251
1699  0022 1a01          	or	a,(OFST+1,sp)
1701  0024 2006          	jra	L765
1702  0026               L565:
1703                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1705  0026 7b01          	ld	a,(OFST+1,sp)
1706  0028 43            	cpl	a
1707  0029 c45303        	and	a,21251
1708  002c               L765:
1709  002c c75303        	ld	21251,a
1710                     ; 384 }
1713  002f 85            	popw	x
1714  0030 81            	ret	
1715  0031               LC006:
1716  0031 89            	pushw	x
1717  0032 5f            	clrw	x
1718  0033 89            	pushw	x
1719  0034 ae0000        	ldw	x,#L702
1720  0037 cd0000        	call	_assert_failed
1722  003a 5b04          	addw	sp,#4
1723  003c 81            	ret	
1760                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1760                     ; 393 {
1761                     .text:	section	.text,new
1762  0000               _TIM2_UpdateDisableConfig:
1764  0000 88            	push	a
1765       00000000      OFST:	set	0
1768                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1770  0001 4d            	tnz	a
1771  0002 2711          	jreq	L433
1772  0004 4a            	dec	a
1773  0005 270e          	jreq	L433
1774  0007 ae018b        	ldw	x,#395
1775  000a 89            	pushw	x
1776  000b 5f            	clrw	x
1777  000c 89            	pushw	x
1778  000d ae0000        	ldw	x,#L702
1779  0010 cd0000        	call	_assert_failed
1781  0013 5b04          	addw	sp,#4
1782  0015               L433:
1783                     ; 398   if (NewState != DISABLE)
1785  0015 7b01          	ld	a,(OFST+1,sp)
1786  0017 2706          	jreq	L706
1787                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1789  0019 72125300      	bset	21248,#1
1791  001d 2004          	jra	L116
1792  001f               L706:
1793                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1795  001f 72135300      	bres	21248,#1
1796  0023               L116:
1797                     ; 406 }
1800  0023 84            	pop	a
1801  0024 81            	ret	
1860                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1860                     ; 417 {
1861                     .text:	section	.text,new
1862  0000               _TIM2_UpdateRequestConfig:
1864  0000 88            	push	a
1865       00000000      OFST:	set	0
1868                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1870  0001 4d            	tnz	a
1871  0002 2711          	jreq	L643
1872  0004 4a            	dec	a
1873  0005 270e          	jreq	L643
1874  0007 ae01a3        	ldw	x,#419
1875  000a 89            	pushw	x
1876  000b 5f            	clrw	x
1877  000c 89            	pushw	x
1878  000d ae0000        	ldw	x,#L702
1879  0010 cd0000        	call	_assert_failed
1881  0013 5b04          	addw	sp,#4
1882  0015               L643:
1883                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1885  0015 7b01          	ld	a,(OFST+1,sp)
1886  0017 2706          	jreq	L146
1887                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1889  0019 72145300      	bset	21248,#2
1891  001d 2004          	jra	L346
1892  001f               L146:
1893                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1895  001f 72155300      	bres	21248,#2
1896  0023               L346:
1897                     ; 430 }
1900  0023 84            	pop	a
1901  0024 81            	ret	
1959                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1959                     ; 441 {
1960                     .text:	section	.text,new
1961  0000               _TIM2_SelectOnePulseMode:
1963  0000 88            	push	a
1964       00000000      OFST:	set	0
1967                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1969  0001 a101          	cp	a,#1
1970  0003 2711          	jreq	L063
1971  0005 4d            	tnz	a
1972  0006 270e          	jreq	L063
1973  0008 ae01bb        	ldw	x,#443
1974  000b 89            	pushw	x
1975  000c 5f            	clrw	x
1976  000d 89            	pushw	x
1977  000e ae0000        	ldw	x,#L702
1978  0011 cd0000        	call	_assert_failed
1980  0014 5b04          	addw	sp,#4
1981  0016               L063:
1982                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1984  0016 7b01          	ld	a,(OFST+1,sp)
1985  0018 2706          	jreq	L376
1986                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1988  001a 72165300      	bset	21248,#3
1990  001e 2004          	jra	L576
1991  0020               L376:
1992                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1994  0020 72175300      	bres	21248,#3
1995  0024               L576:
1996                     ; 454 }
1999  0024 84            	pop	a
2000  0025 81            	ret	
2069                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2069                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2069                     ; 486 {
2070                     .text:	section	.text,new
2071  0000               _TIM2_PrescalerConfig:
2073  0000 89            	pushw	x
2074       00000000      OFST:	set	0
2077                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2079  0001 9f            	ld	a,xl
2080  0002 4d            	tnz	a
2081  0003 2709          	jreq	L273
2082  0005 9f            	ld	a,xl
2083  0006 4a            	dec	a
2084  0007 2705          	jreq	L273
2085  0009 ae01e8        	ldw	x,#488
2086  000c ad51          	call	LC007
2087  000e               L273:
2088                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2090  000e 7b01          	ld	a,(OFST+1,sp)
2091  0010 2743          	jreq	L204
2092  0012 a101          	cp	a,#1
2093  0014 273f          	jreq	L204
2094  0016 a102          	cp	a,#2
2095  0018 273b          	jreq	L204
2096  001a a103          	cp	a,#3
2097  001c 2737          	jreq	L204
2098  001e a104          	cp	a,#4
2099  0020 2733          	jreq	L204
2100  0022 a105          	cp	a,#5
2101  0024 272f          	jreq	L204
2102  0026 a106          	cp	a,#6
2103  0028 272b          	jreq	L204
2104  002a a107          	cp	a,#7
2105  002c 2727          	jreq	L204
2106  002e a108          	cp	a,#8
2107  0030 2723          	jreq	L204
2108  0032 a109          	cp	a,#9
2109  0034 271f          	jreq	L204
2110  0036 a10a          	cp	a,#10
2111  0038 271b          	jreq	L204
2112  003a a10b          	cp	a,#11
2113  003c 2717          	jreq	L204
2114  003e a10c          	cp	a,#12
2115  0040 2713          	jreq	L204
2116  0042 a10d          	cp	a,#13
2117  0044 270f          	jreq	L204
2118  0046 a10e          	cp	a,#14
2119  0048 270b          	jreq	L204
2120  004a a10f          	cp	a,#15
2121  004c 2707          	jreq	L204
2122  004e ae01e9        	ldw	x,#489
2123  0051 ad0c          	call	LC007
2124  0053 7b01          	ld	a,(OFST+1,sp)
2125  0055               L204:
2126                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2128  0055 c7530e        	ld	21262,a
2129                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2131  0058 7b02          	ld	a,(OFST+2,sp)
2132  005a c75306        	ld	21254,a
2133                     ; 496 }
2136  005d 85            	popw	x
2137  005e 81            	ret	
2138  005f               LC007:
2139  005f 89            	pushw	x
2140  0060 5f            	clrw	x
2141  0061 89            	pushw	x
2142  0062 ae0000        	ldw	x,#L702
2143  0065 cd0000        	call	_assert_failed
2145  0068 5b04          	addw	sp,#4
2146  006a 81            	ret	
2205                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2205                     ; 508 {
2206                     .text:	section	.text,new
2207  0000               _TIM2_ForcedOC1Config:
2209  0000 88            	push	a
2210       00000000      OFST:	set	0
2213                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2215  0001 a150          	cp	a,#80
2216  0003 2712          	jreq	L414
2217  0005 a140          	cp	a,#64
2218  0007 270e          	jreq	L414
2219  0009 ae01fe        	ldw	x,#510
2220  000c 89            	pushw	x
2221  000d 5f            	clrw	x
2222  000e 89            	pushw	x
2223  000f ae0000        	ldw	x,#L702
2224  0012 cd0000        	call	_assert_failed
2226  0015 5b04          	addw	sp,#4
2227  0017               L414:
2228                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2228                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2230  0017 c65307        	ld	a,21255
2231  001a a48f          	and	a,#143
2232  001c 1a01          	or	a,(OFST+1,sp)
2233  001e c75307        	ld	21255,a
2234                     ; 515 }
2237  0021 84            	pop	a
2238  0022 81            	ret	
2275                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2275                     ; 527 {
2276                     .text:	section	.text,new
2277  0000               _TIM2_ForcedOC2Config:
2279  0000 88            	push	a
2280       00000000      OFST:	set	0
2283                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2285  0001 a150          	cp	a,#80
2286  0003 2712          	jreq	L624
2287  0005 a140          	cp	a,#64
2288  0007 270e          	jreq	L624
2289  0009 ae0211        	ldw	x,#529
2290  000c 89            	pushw	x
2291  000d 5f            	clrw	x
2292  000e 89            	pushw	x
2293  000f ae0000        	ldw	x,#L702
2294  0012 cd0000        	call	_assert_failed
2296  0015 5b04          	addw	sp,#4
2297  0017               L624:
2298                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2298                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2300  0017 c65308        	ld	a,21256
2301  001a a48f          	and	a,#143
2302  001c 1a01          	or	a,(OFST+1,sp)
2303  001e c75308        	ld	21256,a
2304                     ; 534 }
2307  0021 84            	pop	a
2308  0022 81            	ret	
2345                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2345                     ; 546 {
2346                     .text:	section	.text,new
2347  0000               _TIM2_ForcedOC3Config:
2349  0000 88            	push	a
2350       00000000      OFST:	set	0
2353                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2355  0001 a150          	cp	a,#80
2356  0003 2712          	jreq	L044
2357  0005 a140          	cp	a,#64
2358  0007 270e          	jreq	L044
2359  0009 ae0224        	ldw	x,#548
2360  000c 89            	pushw	x
2361  000d 5f            	clrw	x
2362  000e 89            	pushw	x
2363  000f ae0000        	ldw	x,#L702
2364  0012 cd0000        	call	_assert_failed
2366  0015 5b04          	addw	sp,#4
2367  0017               L044:
2368                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2368                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2370  0017 c65309        	ld	a,21257
2371  001a a48f          	and	a,#143
2372  001c 1a01          	or	a,(OFST+1,sp)
2373  001e c75309        	ld	21257,a
2374                     ; 553 }
2377  0021 84            	pop	a
2378  0022 81            	ret	
2415                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2415                     ; 562 {
2416                     .text:	section	.text,new
2417  0000               _TIM2_ARRPreloadConfig:
2419  0000 88            	push	a
2420       00000000      OFST:	set	0
2423                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2425  0001 4d            	tnz	a
2426  0002 2711          	jreq	L254
2427  0004 4a            	dec	a
2428  0005 270e          	jreq	L254
2429  0007 ae0234        	ldw	x,#564
2430  000a 89            	pushw	x
2431  000b 5f            	clrw	x
2432  000c 89            	pushw	x
2433  000d ae0000        	ldw	x,#L702
2434  0010 cd0000        	call	_assert_failed
2436  0013 5b04          	addw	sp,#4
2437  0015               L254:
2438                     ; 567   if (NewState != DISABLE)
2440  0015 7b01          	ld	a,(OFST+1,sp)
2441  0017 2706          	jreq	L1301
2442                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2444  0019 721e5300      	bset	21248,#7
2446  001d 2004          	jra	L3301
2447  001f               L1301:
2448                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2450  001f 721f5300      	bres	21248,#7
2451  0023               L3301:
2452                     ; 575 }
2455  0023 84            	pop	a
2456  0024 81            	ret	
2493                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2493                     ; 584 {
2494                     .text:	section	.text,new
2495  0000               _TIM2_OC1PreloadConfig:
2497  0000 88            	push	a
2498       00000000      OFST:	set	0
2501                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2503  0001 4d            	tnz	a
2504  0002 2711          	jreq	L464
2505  0004 4a            	dec	a
2506  0005 270e          	jreq	L464
2507  0007 ae024a        	ldw	x,#586
2508  000a 89            	pushw	x
2509  000b 5f            	clrw	x
2510  000c 89            	pushw	x
2511  000d ae0000        	ldw	x,#L702
2512  0010 cd0000        	call	_assert_failed
2514  0013 5b04          	addw	sp,#4
2515  0015               L464:
2516                     ; 589   if (NewState != DISABLE)
2518  0015 7b01          	ld	a,(OFST+1,sp)
2519  0017 2706          	jreq	L3501
2520                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2522  0019 72165307      	bset	21255,#3
2524  001d 2004          	jra	L5501
2525  001f               L3501:
2526                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2528  001f 72175307      	bres	21255,#3
2529  0023               L5501:
2530                     ; 597 }
2533  0023 84            	pop	a
2534  0024 81            	ret	
2571                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2571                     ; 606 {
2572                     .text:	section	.text,new
2573  0000               _TIM2_OC2PreloadConfig:
2575  0000 88            	push	a
2576       00000000      OFST:	set	0
2579                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2581  0001 4d            	tnz	a
2582  0002 2711          	jreq	L674
2583  0004 4a            	dec	a
2584  0005 270e          	jreq	L674
2585  0007 ae0260        	ldw	x,#608
2586  000a 89            	pushw	x
2587  000b 5f            	clrw	x
2588  000c 89            	pushw	x
2589  000d ae0000        	ldw	x,#L702
2590  0010 cd0000        	call	_assert_failed
2592  0013 5b04          	addw	sp,#4
2593  0015               L674:
2594                     ; 611   if (NewState != DISABLE)
2596  0015 7b01          	ld	a,(OFST+1,sp)
2597  0017 2706          	jreq	L5701
2598                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2600  0019 72165308      	bset	21256,#3
2602  001d 2004          	jra	L7701
2603  001f               L5701:
2604                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2606  001f 72175308      	bres	21256,#3
2607  0023               L7701:
2608                     ; 619 }
2611  0023 84            	pop	a
2612  0024 81            	ret	
2649                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2649                     ; 628 {
2650                     .text:	section	.text,new
2651  0000               _TIM2_OC3PreloadConfig:
2653  0000 88            	push	a
2654       00000000      OFST:	set	0
2657                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2659  0001 4d            	tnz	a
2660  0002 2711          	jreq	L015
2661  0004 4a            	dec	a
2662  0005 270e          	jreq	L015
2663  0007 ae0276        	ldw	x,#630
2664  000a 89            	pushw	x
2665  000b 5f            	clrw	x
2666  000c 89            	pushw	x
2667  000d ae0000        	ldw	x,#L702
2668  0010 cd0000        	call	_assert_failed
2670  0013 5b04          	addw	sp,#4
2671  0015               L015:
2672                     ; 633   if (NewState != DISABLE)
2674  0015 7b01          	ld	a,(OFST+1,sp)
2675  0017 2706          	jreq	L7111
2676                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2678  0019 72165309      	bset	21257,#3
2680  001d 2004          	jra	L1211
2681  001f               L7111:
2682                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2684  001f 72175309      	bres	21257,#3
2685  0023               L1211:
2686                     ; 641 }
2689  0023 84            	pop	a
2690  0024 81            	ret	
2764                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2764                     ; 654 {
2765                     .text:	section	.text,new
2766  0000               _TIM2_GenerateEvent:
2768  0000 88            	push	a
2769       00000000      OFST:	set	0
2772                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2774  0001 4d            	tnz	a
2775  0002 260e          	jrne	L025
2776  0004 ae0290        	ldw	x,#656
2777  0007 89            	pushw	x
2778  0008 5f            	clrw	x
2779  0009 89            	pushw	x
2780  000a ae0000        	ldw	x,#L702
2781  000d cd0000        	call	_assert_failed
2783  0010 5b04          	addw	sp,#4
2784  0012               L025:
2785                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2787  0012 7b01          	ld	a,(OFST+1,sp)
2788  0014 c75306        	ld	21254,a
2789                     ; 660 }
2792  0017 84            	pop	a
2793  0018 81            	ret	
2830                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2830                     ; 671 {
2831                     .text:	section	.text,new
2832  0000               _TIM2_OC1PolarityConfig:
2834  0000 88            	push	a
2835       00000000      OFST:	set	0
2838                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2840  0001 4d            	tnz	a
2841  0002 2712          	jreq	L235
2842  0004 a122          	cp	a,#34
2843  0006 270e          	jreq	L235
2844  0008 ae02a1        	ldw	x,#673
2845  000b 89            	pushw	x
2846  000c 5f            	clrw	x
2847  000d 89            	pushw	x
2848  000e ae0000        	ldw	x,#L702
2849  0011 cd0000        	call	_assert_failed
2851  0014 5b04          	addw	sp,#4
2852  0016               L235:
2853                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2855  0016 7b01          	ld	a,(OFST+1,sp)
2856  0018 2706          	jreq	L3711
2857                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2859  001a 7212530a      	bset	21258,#1
2861  001e 2004          	jra	L5711
2862  0020               L3711:
2863                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2865  0020 7213530a      	bres	21258,#1
2866  0024               L5711:
2867                     ; 684 }
2870  0024 84            	pop	a
2871  0025 81            	ret	
2908                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2908                     ; 695 {
2909                     .text:	section	.text,new
2910  0000               _TIM2_OC2PolarityConfig:
2912  0000 88            	push	a
2913       00000000      OFST:	set	0
2916                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2918  0001 4d            	tnz	a
2919  0002 2712          	jreq	L445
2920  0004 a122          	cp	a,#34
2921  0006 270e          	jreq	L445
2922  0008 ae02b9        	ldw	x,#697
2923  000b 89            	pushw	x
2924  000c 5f            	clrw	x
2925  000d 89            	pushw	x
2926  000e ae0000        	ldw	x,#L702
2927  0011 cd0000        	call	_assert_failed
2929  0014 5b04          	addw	sp,#4
2930  0016               L445:
2931                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2933  0016 7b01          	ld	a,(OFST+1,sp)
2934  0018 2706          	jreq	L5121
2935                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2937  001a 721a530a      	bset	21258,#5
2939  001e 2004          	jra	L7121
2940  0020               L5121:
2941                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2943  0020 721b530a      	bres	21258,#5
2944  0024               L7121:
2945                     ; 708 }
2948  0024 84            	pop	a
2949  0025 81            	ret	
2986                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2986                     ; 719 {
2987                     .text:	section	.text,new
2988  0000               _TIM2_OC3PolarityConfig:
2990  0000 88            	push	a
2991       00000000      OFST:	set	0
2994                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2996  0001 4d            	tnz	a
2997  0002 2712          	jreq	L655
2998  0004 a122          	cp	a,#34
2999  0006 270e          	jreq	L655
3000  0008 ae02d1        	ldw	x,#721
3001  000b 89            	pushw	x
3002  000c 5f            	clrw	x
3003  000d 89            	pushw	x
3004  000e ae0000        	ldw	x,#L702
3005  0011 cd0000        	call	_assert_failed
3007  0014 5b04          	addw	sp,#4
3008  0016               L655:
3009                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3011  0016 7b01          	ld	a,(OFST+1,sp)
3012  0018 2706          	jreq	L7321
3013                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3015  001a 7212530b      	bset	21259,#1
3017  001e 2004          	jra	L1421
3018  0020               L7321:
3019                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3021  0020 7213530b      	bres	21259,#1
3022  0024               L1421:
3023                     ; 732 }
3026  0024 84            	pop	a
3027  0025 81            	ret	
3073                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3073                     ; 746 {
3074                     .text:	section	.text,new
3075  0000               _TIM2_CCxCmd:
3077  0000 89            	pushw	x
3078       00000000      OFST:	set	0
3081                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3083  0001 9e            	ld	a,xh
3084  0002 4d            	tnz	a
3085  0003 270e          	jreq	L075
3086  0005 9e            	ld	a,xh
3087  0006 4a            	dec	a
3088  0007 270a          	jreq	L075
3089  0009 9e            	ld	a,xh
3090  000a a102          	cp	a,#2
3091  000c 2705          	jreq	L075
3092  000e ae02ec        	ldw	x,#748
3093  0011 ad43          	call	LC008
3094  0013               L075:
3095                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3097  0013 7b02          	ld	a,(OFST+2,sp)
3098  0015 2708          	jreq	L006
3099  0017 4a            	dec	a
3100  0018 2705          	jreq	L006
3101  001a ae02ed        	ldw	x,#749
3102  001d ad37          	call	LC008
3103  001f               L006:
3104                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3106  001f 7b01          	ld	a,(OFST+1,sp)
3107  0021 2610          	jrne	L5621
3108                     ; 754     if (NewState != DISABLE)
3110  0023 7b02          	ld	a,(OFST+2,sp)
3111  0025 2706          	jreq	L7621
3112                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3114  0027 7210530a      	bset	21258,#0
3116  002b 2027          	jra	L3721
3117  002d               L7621:
3118                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3120  002d 7211530a      	bres	21258,#0
3121  0031 2021          	jra	L3721
3122  0033               L5621:
3123                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3125  0033 4a            	dec	a
3126  0034 2610          	jrne	L5721
3127                     ; 767     if (NewState != DISABLE)
3129  0036 7b02          	ld	a,(OFST+2,sp)
3130  0038 2706          	jreq	L7721
3131                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3133  003a 7218530a      	bset	21258,#4
3135  003e 2014          	jra	L3721
3136  0040               L7721:
3137                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3139  0040 7219530a      	bres	21258,#4
3140  0044 200e          	jra	L3721
3141  0046               L5721:
3142                     ; 779     if (NewState != DISABLE)
3144  0046 7b02          	ld	a,(OFST+2,sp)
3145  0048 2706          	jreq	L5031
3146                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3148  004a 7210530b      	bset	21259,#0
3150  004e 2004          	jra	L3721
3151  0050               L5031:
3152                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3154  0050 7211530b      	bres	21259,#0
3155  0054               L3721:
3156                     ; 788 }
3159  0054 85            	popw	x
3160  0055 81            	ret	
3161  0056               LC008:
3162  0056 89            	pushw	x
3163  0057 5f            	clrw	x
3164  0058 89            	pushw	x
3165  0059 ae0000        	ldw	x,#L702
3166  005c cd0000        	call	_assert_failed
3168  005f 5b04          	addw	sp,#4
3169  0061 81            	ret	
3215                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3215                     ; 811 {
3216                     .text:	section	.text,new
3217  0000               _TIM2_SelectOCxM:
3219  0000 89            	pushw	x
3220       00000000      OFST:	set	0
3223                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3225  0001 9e            	ld	a,xh
3226  0002 4d            	tnz	a
3227  0003 270e          	jreq	L216
3228  0005 9e            	ld	a,xh
3229  0006 4a            	dec	a
3230  0007 270a          	jreq	L216
3231  0009 9e            	ld	a,xh
3232  000a a102          	cp	a,#2
3233  000c 2705          	jreq	L216
3234  000e ae032d        	ldw	x,#813
3235  0011 ad5c          	call	LC009
3236  0013               L216:
3237                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3239  0013 7b02          	ld	a,(OFST+2,sp)
3240  0015 2721          	jreq	L226
3241  0017 a110          	cp	a,#16
3242  0019 271d          	jreq	L226
3243  001b a120          	cp	a,#32
3244  001d 2719          	jreq	L226
3245  001f a130          	cp	a,#48
3246  0021 2715          	jreq	L226
3247  0023 a160          	cp	a,#96
3248  0025 2711          	jreq	L226
3249  0027 a170          	cp	a,#112
3250  0029 270d          	jreq	L226
3251  002b a150          	cp	a,#80
3252  002d 2709          	jreq	L226
3253  002f a140          	cp	a,#64
3254  0031 2705          	jreq	L226
3255  0033 ae032e        	ldw	x,#814
3256  0036 ad37          	call	LC009
3257  0038               L226:
3258                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3260  0038 7b01          	ld	a,(OFST+1,sp)
3261  003a 2610          	jrne	L3331
3262                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3264  003c 7211530a      	bres	21258,#0
3265                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3265                     ; 823                             | (uint8_t)TIM2_OCMode);
3267  0040 c65307        	ld	a,21255
3268  0043 a48f          	and	a,#143
3269  0045 1a02          	or	a,(OFST+2,sp)
3270  0047 c75307        	ld	21255,a
3272  004a 2021          	jra	L5331
3273  004c               L3331:
3274                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3276  004c 4a            	dec	a
3277  004d 2610          	jrne	L7331
3278                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3280  004f 7219530a      	bres	21258,#4
3281                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3281                     ; 832                             | (uint8_t)TIM2_OCMode);
3283  0053 c65308        	ld	a,21256
3284  0056 a48f          	and	a,#143
3285  0058 1a02          	or	a,(OFST+2,sp)
3286  005a c75308        	ld	21256,a
3288  005d 200e          	jra	L5331
3289  005f               L7331:
3290                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3292  005f 7211530b      	bres	21259,#0
3293                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3293                     ; 841                             | (uint8_t)TIM2_OCMode);
3295  0063 c65309        	ld	a,21257
3296  0066 a48f          	and	a,#143
3297  0068 1a02          	or	a,(OFST+2,sp)
3298  006a c75309        	ld	21257,a
3299  006d               L5331:
3300                     ; 843 }
3303  006d 85            	popw	x
3304  006e 81            	ret	
3305  006f               LC009:
3306  006f 89            	pushw	x
3307  0070 5f            	clrw	x
3308  0071 89            	pushw	x
3309  0072 ae0000        	ldw	x,#L702
3310  0075 cd0000        	call	_assert_failed
3312  0078 5b04          	addw	sp,#4
3313  007a 81            	ret	
3347                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3347                     ; 852 {
3348                     .text:	section	.text,new
3349  0000               _TIM2_SetCounter:
3353                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3355  0000 9e            	ld	a,xh
3356  0001 c7530c        	ld	21260,a
3357                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3359  0004 9f            	ld	a,xl
3360  0005 c7530d        	ld	21261,a
3361                     ; 856 }
3364  0008 81            	ret	
3398                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3398                     ; 865 {
3399                     .text:	section	.text,new
3400  0000               _TIM2_SetAutoreload:
3404                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3406  0000 9e            	ld	a,xh
3407  0001 c7530f        	ld	21263,a
3408                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3410  0004 9f            	ld	a,xl
3411  0005 c75310        	ld	21264,a
3412                     ; 869 }
3415  0008 81            	ret	
3449                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3449                     ; 878 {
3450                     .text:	section	.text,new
3451  0000               _TIM2_SetCompare1:
3455                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3457  0000 9e            	ld	a,xh
3458  0001 c75311        	ld	21265,a
3459                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3461  0004 9f            	ld	a,xl
3462  0005 c75312        	ld	21266,a
3463                     ; 882 }
3466  0008 81            	ret	
3500                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3500                     ; 891 {
3501                     .text:	section	.text,new
3502  0000               _TIM2_SetCompare2:
3506                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3508  0000 9e            	ld	a,xh
3509  0001 c75313        	ld	21267,a
3510                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3512  0004 9f            	ld	a,xl
3513  0005 c75314        	ld	21268,a
3514                     ; 895 }
3517  0008 81            	ret	
3551                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3551                     ; 904 {
3552                     .text:	section	.text,new
3553  0000               _TIM2_SetCompare3:
3557                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3559  0000 9e            	ld	a,xh
3560  0001 c75315        	ld	21269,a
3561                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3563  0004 9f            	ld	a,xl
3564  0005 c75316        	ld	21270,a
3565                     ; 908 }
3568  0008 81            	ret	
3605                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3605                     ; 921 {
3606                     .text:	section	.text,new
3607  0000               _TIM2_SetIC1Prescaler:
3609  0000 88            	push	a
3610       00000000      OFST:	set	0
3613                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3615  0001 4d            	tnz	a
3616  0002 271a          	jreq	L646
3617  0004 a104          	cp	a,#4
3618  0006 2716          	jreq	L646
3619  0008 a108          	cp	a,#8
3620  000a 2712          	jreq	L646
3621  000c a10c          	cp	a,#12
3622  000e 270e          	jreq	L646
3623  0010 ae039b        	ldw	x,#923
3624  0013 89            	pushw	x
3625  0014 5f            	clrw	x
3626  0015 89            	pushw	x
3627  0016 ae0000        	ldw	x,#L702
3628  0019 cd0000        	call	_assert_failed
3630  001c 5b04          	addw	sp,#4
3631  001e               L646:
3632                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3632                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3634  001e c65307        	ld	a,21255
3635  0021 a4f3          	and	a,#243
3636  0023 1a01          	or	a,(OFST+1,sp)
3637  0025 c75307        	ld	21255,a
3638                     ; 928 }
3641  0028 84            	pop	a
3642  0029 81            	ret	
3679                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3679                     ; 941 {
3680                     .text:	section	.text,new
3681  0000               _TIM2_SetIC2Prescaler:
3683  0000 88            	push	a
3684       00000000      OFST:	set	0
3687                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3689  0001 4d            	tnz	a
3690  0002 271a          	jreq	L066
3691  0004 a104          	cp	a,#4
3692  0006 2716          	jreq	L066
3693  0008 a108          	cp	a,#8
3694  000a 2712          	jreq	L066
3695  000c a10c          	cp	a,#12
3696  000e 270e          	jreq	L066
3697  0010 ae03af        	ldw	x,#943
3698  0013 89            	pushw	x
3699  0014 5f            	clrw	x
3700  0015 89            	pushw	x
3701  0016 ae0000        	ldw	x,#L702
3702  0019 cd0000        	call	_assert_failed
3704  001c 5b04          	addw	sp,#4
3705  001e               L066:
3706                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3706                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3708  001e c65308        	ld	a,21256
3709  0021 a4f3          	and	a,#243
3710  0023 1a01          	or	a,(OFST+1,sp)
3711  0025 c75308        	ld	21256,a
3712                     ; 948 }
3715  0028 84            	pop	a
3716  0029 81            	ret	
3753                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3753                     ; 961 {
3754                     .text:	section	.text,new
3755  0000               _TIM2_SetIC3Prescaler:
3757  0000 88            	push	a
3758       00000000      OFST:	set	0
3761                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3763  0001 4d            	tnz	a
3764  0002 271a          	jreq	L276
3765  0004 a104          	cp	a,#4
3766  0006 2716          	jreq	L276
3767  0008 a108          	cp	a,#8
3768  000a 2712          	jreq	L276
3769  000c a10c          	cp	a,#12
3770  000e 270e          	jreq	L276
3771  0010 ae03c4        	ldw	x,#964
3772  0013 89            	pushw	x
3773  0014 5f            	clrw	x
3774  0015 89            	pushw	x
3775  0016 ae0000        	ldw	x,#L702
3776  0019 cd0000        	call	_assert_failed
3778  001c 5b04          	addw	sp,#4
3779  001e               L276:
3780                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3780                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3782  001e c65309        	ld	a,21257
3783  0021 a4f3          	and	a,#243
3784  0023 1a01          	or	a,(OFST+1,sp)
3785  0025 c75309        	ld	21257,a
3786                     ; 968 }
3789  0028 84            	pop	a
3790  0029 81            	ret	
3842                     ; 975 uint16_t TIM2_GetCapture1(void)
3842                     ; 976 {
3843                     .text:	section	.text,new
3844  0000               _TIM2_GetCapture1:
3846  0000 5204          	subw	sp,#4
3847       00000004      OFST:	set	4
3850                     ; 978   uint16_t tmpccr1 = 0;
3852                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3856                     ; 981   tmpccr1h = TIM2->CCR1H;
3858  0002 c65311        	ld	a,21265
3859  0005 6b02          	ld	(OFST-2,sp),a
3860                     ; 982   tmpccr1l = TIM2->CCR1L;
3862  0007 c65312        	ld	a,21266
3863  000a 6b01          	ld	(OFST-3,sp),a
3864                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3866  000c 5f            	clrw	x
3867  000d 97            	ld	xl,a
3868  000e 1f03          	ldw	(OFST-1,sp),x
3869                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3871  0010 5f            	clrw	x
3872  0011 7b02          	ld	a,(OFST-2,sp)
3873  0013 97            	ld	xl,a
3874  0014 7b04          	ld	a,(OFST+0,sp)
3875  0016 01            	rrwa	x,a
3876  0017 1a03          	or	a,(OFST-1,sp)
3877  0019 01            	rrwa	x,a
3878                     ; 987   return (uint16_t)tmpccr1;
3882  001a 5b04          	addw	sp,#4
3883  001c 81            	ret	
3935                     ; 995 uint16_t TIM2_GetCapture2(void)
3935                     ; 996 {
3936                     .text:	section	.text,new
3937  0000               _TIM2_GetCapture2:
3939  0000 5204          	subw	sp,#4
3940       00000004      OFST:	set	4
3943                     ; 998   uint16_t tmpccr2 = 0;
3945                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3949                     ; 1001   tmpccr2h = TIM2->CCR2H;
3951  0002 c65313        	ld	a,21267
3952  0005 6b02          	ld	(OFST-2,sp),a
3953                     ; 1002   tmpccr2l = TIM2->CCR2L;
3955  0007 c65314        	ld	a,21268
3956  000a 6b01          	ld	(OFST-3,sp),a
3957                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3959  000c 5f            	clrw	x
3960  000d 97            	ld	xl,a
3961  000e 1f03          	ldw	(OFST-1,sp),x
3962                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3964  0010 5f            	clrw	x
3965  0011 7b02          	ld	a,(OFST-2,sp)
3966  0013 97            	ld	xl,a
3967  0014 7b04          	ld	a,(OFST+0,sp)
3968  0016 01            	rrwa	x,a
3969  0017 1a03          	or	a,(OFST-1,sp)
3970  0019 01            	rrwa	x,a
3971                     ; 1007   return (uint16_t)tmpccr2;
3975  001a 5b04          	addw	sp,#4
3976  001c 81            	ret	
4028                     ; 1015 uint16_t TIM2_GetCapture3(void)
4028                     ; 1016 {
4029                     .text:	section	.text,new
4030  0000               _TIM2_GetCapture3:
4032  0000 5204          	subw	sp,#4
4033       00000004      OFST:	set	4
4036                     ; 1018   uint16_t tmpccr3 = 0;
4038                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4042                     ; 1021   tmpccr3h = TIM2->CCR3H;
4044  0002 c65315        	ld	a,21269
4045  0005 6b02          	ld	(OFST-2,sp),a
4046                     ; 1022   tmpccr3l = TIM2->CCR3L;
4048  0007 c65316        	ld	a,21270
4049  000a 6b01          	ld	(OFST-3,sp),a
4050                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4052  000c 5f            	clrw	x
4053  000d 97            	ld	xl,a
4054  000e 1f03          	ldw	(OFST-1,sp),x
4055                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4057  0010 5f            	clrw	x
4058  0011 7b02          	ld	a,(OFST-2,sp)
4059  0013 97            	ld	xl,a
4060  0014 7b04          	ld	a,(OFST+0,sp)
4061  0016 01            	rrwa	x,a
4062  0017 1a03          	or	a,(OFST-1,sp)
4063  0019 01            	rrwa	x,a
4064                     ; 1027   return (uint16_t)tmpccr3;
4068  001a 5b04          	addw	sp,#4
4069  001c 81            	ret	
4103                     ; 1035 uint16_t TIM2_GetCounter(void)
4103                     ; 1036 {
4104                     .text:	section	.text,new
4105  0000               _TIM2_GetCounter:
4107  0000 89            	pushw	x
4108       00000002      OFST:	set	2
4111                     ; 1037   uint16_t tmpcntr = 0;
4113                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4115  0001 c6530c        	ld	a,21260
4116  0004 97            	ld	xl,a
4117  0005 4f            	clr	a
4118  0006 02            	rlwa	x,a
4119  0007 1f01          	ldw	(OFST-1,sp),x
4120                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4122  0009 5f            	clrw	x
4123  000a c6530d        	ld	a,21261
4124  000d 97            	ld	xl,a
4125  000e 01            	rrwa	x,a
4126  000f 1a02          	or	a,(OFST+0,sp)
4127  0011 01            	rrwa	x,a
4128  0012 1a01          	or	a,(OFST-1,sp)
4129  0014 01            	rrwa	x,a
4132  0015 5b02          	addw	sp,#2
4133  0017 81            	ret	
4157                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4157                     ; 1050 {
4158                     .text:	section	.text,new
4159  0000               _TIM2_GetPrescaler:
4163                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4165  0000 c6530e        	ld	a,21262
4168  0003 81            	ret	
4308                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4308                     ; 1069 {
4309                     .text:	section	.text,new
4310  0000               _TIM2_GetFlagStatus:
4312  0000 89            	pushw	x
4313  0001 89            	pushw	x
4314       00000002      OFST:	set	2
4317                     ; 1070   FlagStatus bitstatus = RESET;
4319                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4323                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4325  0002 a30001        	cpw	x,#1
4326  0005 272c          	jreq	L617
4327  0007 a30002        	cpw	x,#2
4328  000a 2727          	jreq	L617
4329  000c a30004        	cpw	x,#4
4330  000f 2722          	jreq	L617
4331  0011 a30008        	cpw	x,#8
4332  0014 271d          	jreq	L617
4333  0016 a30200        	cpw	x,#512
4334  0019 2718          	jreq	L617
4335  001b a30400        	cpw	x,#1024
4336  001e 2713          	jreq	L617
4337  0020 a30800        	cpw	x,#2048
4338  0023 270e          	jreq	L617
4339  0025 ae0432        	ldw	x,#1074
4340  0028 89            	pushw	x
4341  0029 5f            	clrw	x
4342  002a 89            	pushw	x
4343  002b ae0000        	ldw	x,#L702
4344  002e cd0000        	call	_assert_failed
4346  0031 5b04          	addw	sp,#4
4347  0033               L617:
4348                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4350  0033 c65304        	ld	a,21252
4351  0036 1404          	and	a,(OFST+2,sp)
4352  0038 6b01          	ld	(OFST-1,sp),a
4353                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4355  003a 7b03          	ld	a,(OFST+1,sp)
4356  003c 6b02          	ld	(OFST+0,sp),a
4357                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4359  003e c45305        	and	a,21253
4360  0041 1a01          	or	a,(OFST-1,sp)
4361  0043 2702          	jreq	L7371
4362                     ; 1081     bitstatus = SET;
4364  0045 a601          	ld	a,#1
4366  0047               L7371:
4367                     ; 1085     bitstatus = RESET;
4369                     ; 1087   return (FlagStatus)bitstatus;
4373  0047 5b04          	addw	sp,#4
4374  0049 81            	ret	
4410                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4410                     ; 1104 {
4411                     .text:	section	.text,new
4412  0000               _TIM2_ClearFlag:
4414  0000 89            	pushw	x
4415       00000000      OFST:	set	0
4418                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4420  0001 01            	rrwa	x,a
4421  0002 a4f0          	and	a,#240
4422  0004 01            	rrwa	x,a
4423  0005 a4f1          	and	a,#241
4424  0007 01            	rrwa	x,a
4425  0008 5d            	tnzw	x
4426  0009 2604          	jrne	L427
4427  000b 1e01          	ldw	x,(OFST+1,sp)
4428  000d 260e          	jrne	L627
4429  000f               L427:
4430  000f ae0452        	ldw	x,#1106
4431  0012 89            	pushw	x
4432  0013 5f            	clrw	x
4433  0014 89            	pushw	x
4434  0015 ae0000        	ldw	x,#L702
4435  0018 cd0000        	call	_assert_failed
4437  001b 5b04          	addw	sp,#4
4438  001d               L627:
4439                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4441  001d 7b02          	ld	a,(OFST+2,sp)
4442  001f 43            	cpl	a
4443  0020 c75304        	ld	21252,a
4444                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4446  0023 35ff5305      	mov	21253,#255
4447                     ; 1111 }
4450  0027 85            	popw	x
4451  0028 81            	ret	
4516                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4516                     ; 1124 {
4517                     .text:	section	.text,new
4518  0000               _TIM2_GetITStatus:
4520  0000 88            	push	a
4521  0001 89            	pushw	x
4522       00000002      OFST:	set	2
4525                     ; 1125   ITStatus bitstatus = RESET;
4527                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4531                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4533  0002 a101          	cp	a,#1
4534  0004 271a          	jreq	L047
4535  0006 a102          	cp	a,#2
4536  0008 2716          	jreq	L047
4537  000a a104          	cp	a,#4
4538  000c 2712          	jreq	L047
4539  000e a108          	cp	a,#8
4540  0010 270e          	jreq	L047
4541  0012 ae0469        	ldw	x,#1129
4542  0015 89            	pushw	x
4543  0016 5f            	clrw	x
4544  0017 89            	pushw	x
4545  0018 ae0000        	ldw	x,#L702
4546  001b cd0000        	call	_assert_failed
4548  001e 5b04          	addw	sp,#4
4549  0020               L047:
4550                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4552  0020 c65304        	ld	a,21252
4553  0023 1403          	and	a,(OFST+1,sp)
4554  0025 6b01          	ld	(OFST-1,sp),a
4555                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4557  0027 c65303        	ld	a,21251
4558  002a 1403          	and	a,(OFST+1,sp)
4559  002c 6b02          	ld	(OFST+0,sp),a
4560                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4562  002e 7b01          	ld	a,(OFST-1,sp)
4563  0030 2708          	jreq	L3102
4565  0032 7b02          	ld	a,(OFST+0,sp)
4566  0034 2704          	jreq	L3102
4567                     ; 1137     bitstatus = SET;
4569  0036 a601          	ld	a,#1
4571  0038 2001          	jra	L5102
4572  003a               L3102:
4573                     ; 1141     bitstatus = RESET;
4575  003a 4f            	clr	a
4576  003b               L5102:
4577                     ; 1143   return (ITStatus)(bitstatus);
4581  003b 5b03          	addw	sp,#3
4582  003d 81            	ret	
4619                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4619                     ; 1157 {
4620                     .text:	section	.text,new
4621  0000               _TIM2_ClearITPendingBit:
4623  0000 88            	push	a
4624       00000000      OFST:	set	0
4627                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4629  0001 4d            	tnz	a
4630  0002 2704          	jreq	L647
4631  0004 a110          	cp	a,#16
4632  0006 250e          	jrult	L057
4633  0008               L647:
4634  0008 ae0487        	ldw	x,#1159
4635  000b 89            	pushw	x
4636  000c 5f            	clrw	x
4637  000d 89            	pushw	x
4638  000e ae0000        	ldw	x,#L702
4639  0011 cd0000        	call	_assert_failed
4641  0014 5b04          	addw	sp,#4
4642  0016               L057:
4643                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4645  0016 7b01          	ld	a,(OFST+1,sp)
4646  0018 43            	cpl	a
4647  0019 c75304        	ld	21252,a
4648                     ; 1163 }
4651  001c 84            	pop	a
4652  001d 81            	ret	
4704                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4704                     ; 1182                        uint8_t TIM2_ICSelection,
4704                     ; 1183                        uint8_t TIM2_ICFilter)
4704                     ; 1184 {
4705                     .text:	section	.text,new
4706  0000               L3_TI1_Config:
4708  0000 89            	pushw	x
4709       00000001      OFST:	set	1
4712                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4714  0001 7211530a      	bres	21258,#0
4715  0005 88            	push	a
4716                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4716                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4718  0006 7b06          	ld	a,(OFST+5,sp)
4719  0008 97            	ld	xl,a
4720  0009 a610          	ld	a,#16
4721  000b 42            	mul	x,a
4722  000c 9f            	ld	a,xl
4723  000d 1a03          	or	a,(OFST+2,sp)
4724  000f 6b01          	ld	(OFST+0,sp),a
4725  0011 c65307        	ld	a,21255
4726  0014 a40c          	and	a,#12
4727  0016 1a01          	or	a,(OFST+0,sp)
4728  0018 c75307        	ld	21255,a
4729                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4731  001b 7b02          	ld	a,(OFST+1,sp)
4732  001d 2706          	jreq	L3602
4733                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4735  001f 7212530a      	bset	21258,#1
4737  0023 2004          	jra	L5602
4738  0025               L3602:
4739                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4741  0025 7213530a      	bres	21258,#1
4742  0029               L5602:
4743                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4745  0029 7210530a      	bset	21258,#0
4746                     ; 1203 }
4749  002d 5b03          	addw	sp,#3
4750  002f 81            	ret	
4802                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4802                     ; 1222                        uint8_t TIM2_ICSelection,
4802                     ; 1223                        uint8_t TIM2_ICFilter)
4802                     ; 1224 {
4803                     .text:	section	.text,new
4804  0000               L5_TI2_Config:
4806  0000 89            	pushw	x
4807       00000001      OFST:	set	1
4810                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4812  0001 7219530a      	bres	21258,#4
4813  0005 88            	push	a
4814                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4814                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4816  0006 7b06          	ld	a,(OFST+5,sp)
4817  0008 97            	ld	xl,a
4818  0009 a610          	ld	a,#16
4819  000b 42            	mul	x,a
4820  000c 9f            	ld	a,xl
4821  000d 1a03          	or	a,(OFST+2,sp)
4822  000f 6b01          	ld	(OFST+0,sp),a
4823  0011 c65308        	ld	a,21256
4824  0014 a40c          	and	a,#12
4825  0016 1a01          	or	a,(OFST+0,sp)
4826  0018 c75308        	ld	21256,a
4827                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4829  001b 7b02          	ld	a,(OFST+1,sp)
4830  001d 2706          	jreq	L5112
4831                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4833  001f 721a530a      	bset	21258,#5
4835  0023 2004          	jra	L7112
4836  0025               L5112:
4837                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4839  0025 721b530a      	bres	21258,#5
4840  0029               L7112:
4841                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4843  0029 7218530a      	bset	21258,#4
4844                     ; 1245 }
4847  002d 5b03          	addw	sp,#3
4848  002f 81            	ret	
4900                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4900                     ; 1262                        uint8_t TIM2_ICFilter)
4900                     ; 1263 {
4901                     .text:	section	.text,new
4902  0000               L7_TI3_Config:
4904  0000 89            	pushw	x
4905       00000001      OFST:	set	1
4908                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4910  0001 7211530b      	bres	21259,#0
4911  0005 88            	push	a
4912                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4912                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4914  0006 7b06          	ld	a,(OFST+5,sp)
4915  0008 97            	ld	xl,a
4916  0009 a610          	ld	a,#16
4917  000b 42            	mul	x,a
4918  000c 9f            	ld	a,xl
4919  000d 1a03          	or	a,(OFST+2,sp)
4920  000f 6b01          	ld	(OFST+0,sp),a
4921  0011 c65309        	ld	a,21257
4922  0014 a40c          	and	a,#12
4923  0016 1a01          	or	a,(OFST+0,sp)
4924  0018 c75309        	ld	21257,a
4925                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4927  001b 7b02          	ld	a,(OFST+1,sp)
4928  001d 2706          	jreq	L7412
4929                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4931  001f 7212530b      	bset	21259,#1
4933  0023 2004          	jra	L1512
4934  0025               L7412:
4935                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4937  0025 7213530b      	bres	21259,#1
4938  0029               L1512:
4939                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4941  0029 7210530b      	bset	21259,#0
4942                     ; 1283 }
4945  002d 5b03          	addw	sp,#3
4946  002f 81            	ret	
4959                     	xdef	_TIM2_ClearITPendingBit
4960                     	xdef	_TIM2_GetITStatus
4961                     	xdef	_TIM2_ClearFlag
4962                     	xdef	_TIM2_GetFlagStatus
4963                     	xdef	_TIM2_GetPrescaler
4964                     	xdef	_TIM2_GetCounter
4965                     	xdef	_TIM2_GetCapture3
4966                     	xdef	_TIM2_GetCapture2
4967                     	xdef	_TIM2_GetCapture1
4968                     	xdef	_TIM2_SetIC3Prescaler
4969                     	xdef	_TIM2_SetIC2Prescaler
4970                     	xdef	_TIM2_SetIC1Prescaler
4971                     	xdef	_TIM2_SetCompare3
4972                     	xdef	_TIM2_SetCompare2
4973                     	xdef	_TIM2_SetCompare1
4974                     	xdef	_TIM2_SetAutoreload
4975                     	xdef	_TIM2_SetCounter
4976                     	xdef	_TIM2_SelectOCxM
4977                     	xdef	_TIM2_CCxCmd
4978                     	xdef	_TIM2_OC3PolarityConfig
4979                     	xdef	_TIM2_OC2PolarityConfig
4980                     	xdef	_TIM2_OC1PolarityConfig
4981                     	xdef	_TIM2_GenerateEvent
4982                     	xdef	_TIM2_OC3PreloadConfig
4983                     	xdef	_TIM2_OC2PreloadConfig
4984                     	xdef	_TIM2_OC1PreloadConfig
4985                     	xdef	_TIM2_ARRPreloadConfig
4986                     	xdef	_TIM2_ForcedOC3Config
4987                     	xdef	_TIM2_ForcedOC2Config
4988                     	xdef	_TIM2_ForcedOC1Config
4989                     	xdef	_TIM2_PrescalerConfig
4990                     	xdef	_TIM2_SelectOnePulseMode
4991                     	xdef	_TIM2_UpdateRequestConfig
4992                     	xdef	_TIM2_UpdateDisableConfig
4993                     	xdef	_TIM2_ITConfig
4994                     	xdef	_TIM2_Cmd
4995                     	xdef	_TIM2_PWMIConfig
4996                     	xdef	_TIM2_ICInit
4997                     	xdef	_TIM2_OC3Init
4998                     	xdef	_TIM2_OC2Init
4999                     	xdef	_TIM2_OC1Init
5000                     	xdef	_TIM2_TimeBaseInit
5001                     	xdef	_TIM2_DeInit
5002                     	xref	_assert_failed
5003                     .const:	section	.text
5004  0000               L702:
5005  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5006  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5007  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
5008  0036 5f74696d322e  	dc.b	"_tim2.c",0
5028                     	end
