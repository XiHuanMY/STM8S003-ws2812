   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 52 void TIM2_DeInit(void)
  45                     ; 53 {
  47                     .text:	section	.text,new
  48  0000               _TIM2_DeInit:
  52                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  54  0000 725f5300      	clr	21248
  55                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  57  0004 725f5303      	clr	21251
  58                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  60  0008 725f5305      	clr	21253
  61                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  63  000c 725f530a      	clr	21258
  64                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  66  0010 725f530b      	clr	21259
  67                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  69  0014 725f530a      	clr	21258
  70                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  72  0018 725f530b      	clr	21259
  73                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  75  001c 725f5307      	clr	21255
  76                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  78  0020 725f5308      	clr	21256
  79                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  81  0024 725f5309      	clr	21257
  82                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  84  0028 725f530c      	clr	21260
  85                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  87  002c 725f530d      	clr	21261
  88                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  90  0030 725f530e      	clr	21262
  91                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  93  0034 35ff530f      	mov	21263,#255
  94                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  96  0038 35ff5310      	mov	21264,#255
  97                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  99  003c 725f5311      	clr	21265
 100                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 102  0040 725f5312      	clr	21266
 103                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 105  0044 725f5313      	clr	21267
 106                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 108  0048 725f5314      	clr	21268
 109                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 111  004c 725f5315      	clr	21269
 112                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 114  0050 725f5316      	clr	21270
 115                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 117  0054 725f5304      	clr	21252
 118                     ; 81 }
 121  0058 81            	ret
 287                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 287                     ; 90                         uint16_t TIM2_Period)
 287                     ; 91 {
 288                     .text:	section	.text,new
 289  0000               _TIM2_TimeBaseInit:
 291  0000 88            	push	a
 292       00000000      OFST:	set	0
 295                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 297  0001 c7530e        	ld	21262,a
 298                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 300  0004 7b04          	ld	a,(OFST+4,sp)
 301  0006 c7530f        	ld	21263,a
 302                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 304  0009 7b05          	ld	a,(OFST+5,sp)
 305  000b c75310        	ld	21264,a
 306                     ; 97 }
 309  000e 84            	pop	a
 310  000f 81            	ret
 466                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 466                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 466                     ; 110                   uint16_t TIM2_Pulse,
 466                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 466                     ; 112 {
 467                     .text:	section	.text,new
 468  0000               _TIM2_OC1Init:
 470  0000 89            	pushw	x
 471  0001 88            	push	a
 472       00000001      OFST:	set	1
 475                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 477  0002 9e            	ld	a,xh
 478  0003 4d            	tnz	a
 479  0004 2719          	jreq	L41
 480  0006 9e            	ld	a,xh
 481  0007 a110          	cp	a,#16
 482  0009 2714          	jreq	L41
 483  000b 9e            	ld	a,xh
 484  000c a120          	cp	a,#32
 485  000e 270f          	jreq	L41
 486  0010 9e            	ld	a,xh
 487  0011 a130          	cp	a,#48
 488  0013 270a          	jreq	L41
 489  0015 9e            	ld	a,xh
 490  0016 a160          	cp	a,#96
 491  0018 2705          	jreq	L41
 492  001a 9e            	ld	a,xh
 493  001b a170          	cp	a,#112
 494  001d 2603          	jrne	L21
 495  001f               L41:
 496  001f 4f            	clr	a
 497  0020 2010          	jra	L61
 498  0022               L21:
 499  0022 ae0072        	ldw	x,#114
 500  0025 89            	pushw	x
 501  0026 ae0000        	ldw	x,#0
 502  0029 89            	pushw	x
 503  002a ae0000        	ldw	x,#L302
 504  002d cd0000        	call	_assert_failed
 506  0030 5b04          	addw	sp,#4
 507  0032               L61:
 508                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 510  0032 0d03          	tnz	(OFST+2,sp)
 511  0034 2706          	jreq	L22
 512  0036 7b03          	ld	a,(OFST+2,sp)
 513  0038 a111          	cp	a,#17
 514  003a 2603          	jrne	L02
 515  003c               L22:
 516  003c 4f            	clr	a
 517  003d 2010          	jra	L42
 518  003f               L02:
 519  003f ae0073        	ldw	x,#115
 520  0042 89            	pushw	x
 521  0043 ae0000        	ldw	x,#0
 522  0046 89            	pushw	x
 523  0047 ae0000        	ldw	x,#L302
 524  004a cd0000        	call	_assert_failed
 526  004d 5b04          	addw	sp,#4
 527  004f               L42:
 528                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 530  004f 0d08          	tnz	(OFST+7,sp)
 531  0051 2706          	jreq	L03
 532  0053 7b08          	ld	a,(OFST+7,sp)
 533  0055 a122          	cp	a,#34
 534  0057 2603          	jrne	L62
 535  0059               L03:
 536  0059 4f            	clr	a
 537  005a 2010          	jra	L23
 538  005c               L62:
 539  005c ae0074        	ldw	x,#116
 540  005f 89            	pushw	x
 541  0060 ae0000        	ldw	x,#0
 542  0063 89            	pushw	x
 543  0064 ae0000        	ldw	x,#L302
 544  0067 cd0000        	call	_assert_failed
 546  006a 5b04          	addw	sp,#4
 547  006c               L23:
 548                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 550  006c c6530a        	ld	a,21258
 551  006f a4fc          	and	a,#252
 552  0071 c7530a        	ld	21258,a
 553                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 553                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 555  0074 7b08          	ld	a,(OFST+7,sp)
 556  0076 a402          	and	a,#2
 557  0078 6b01          	ld	(OFST+0,sp),a
 558  007a 7b03          	ld	a,(OFST+2,sp)
 559  007c a401          	and	a,#1
 560  007e 1a01          	or	a,(OFST+0,sp)
 561  0080 ca530a        	or	a,21258
 562  0083 c7530a        	ld	21258,a
 563                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 563                     ; 126                           (uint8_t)TIM2_OCMode);
 565  0086 c65307        	ld	a,21255
 566  0089 a48f          	and	a,#143
 567  008b 1a02          	or	a,(OFST+1,sp)
 568  008d c75307        	ld	21255,a
 569                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 571  0090 7b06          	ld	a,(OFST+5,sp)
 572  0092 c75311        	ld	21265,a
 573                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 575  0095 7b07          	ld	a,(OFST+6,sp)
 576  0097 c75312        	ld	21266,a
 577                     ; 131 }
 580  009a 5b03          	addw	sp,#3
 581  009c 81            	ret
 644                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 644                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 644                     ; 144                   uint16_t TIM2_Pulse,
 644                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 644                     ; 146 {
 645                     .text:	section	.text,new
 646  0000               _TIM2_OC2Init:
 648  0000 89            	pushw	x
 649  0001 88            	push	a
 650       00000001      OFST:	set	1
 653                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 655  0002 9e            	ld	a,xh
 656  0003 4d            	tnz	a
 657  0004 2719          	jreq	L04
 658  0006 9e            	ld	a,xh
 659  0007 a110          	cp	a,#16
 660  0009 2714          	jreq	L04
 661  000b 9e            	ld	a,xh
 662  000c a120          	cp	a,#32
 663  000e 270f          	jreq	L04
 664  0010 9e            	ld	a,xh
 665  0011 a130          	cp	a,#48
 666  0013 270a          	jreq	L04
 667  0015 9e            	ld	a,xh
 668  0016 a160          	cp	a,#96
 669  0018 2705          	jreq	L04
 670  001a 9e            	ld	a,xh
 671  001b a170          	cp	a,#112
 672  001d 2603          	jrne	L63
 673  001f               L04:
 674  001f 4f            	clr	a
 675  0020 2010          	jra	L24
 676  0022               L63:
 677  0022 ae0094        	ldw	x,#148
 678  0025 89            	pushw	x
 679  0026 ae0000        	ldw	x,#0
 680  0029 89            	pushw	x
 681  002a ae0000        	ldw	x,#L302
 682  002d cd0000        	call	_assert_failed
 684  0030 5b04          	addw	sp,#4
 685  0032               L24:
 686                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 688  0032 0d03          	tnz	(OFST+2,sp)
 689  0034 2706          	jreq	L64
 690  0036 7b03          	ld	a,(OFST+2,sp)
 691  0038 a111          	cp	a,#17
 692  003a 2603          	jrne	L44
 693  003c               L64:
 694  003c 4f            	clr	a
 695  003d 2010          	jra	L05
 696  003f               L44:
 697  003f ae0095        	ldw	x,#149
 698  0042 89            	pushw	x
 699  0043 ae0000        	ldw	x,#0
 700  0046 89            	pushw	x
 701  0047 ae0000        	ldw	x,#L302
 702  004a cd0000        	call	_assert_failed
 704  004d 5b04          	addw	sp,#4
 705  004f               L05:
 706                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 708  004f 0d08          	tnz	(OFST+7,sp)
 709  0051 2706          	jreq	L45
 710  0053 7b08          	ld	a,(OFST+7,sp)
 711  0055 a122          	cp	a,#34
 712  0057 2603          	jrne	L25
 713  0059               L45:
 714  0059 4f            	clr	a
 715  005a 2010          	jra	L65
 716  005c               L25:
 717  005c ae0096        	ldw	x,#150
 718  005f 89            	pushw	x
 719  0060 ae0000        	ldw	x,#0
 720  0063 89            	pushw	x
 721  0064 ae0000        	ldw	x,#L302
 722  0067 cd0000        	call	_assert_failed
 724  006a 5b04          	addw	sp,#4
 725  006c               L65:
 726                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 728  006c c6530a        	ld	a,21258
 729  006f a4cf          	and	a,#207
 730  0071 c7530a        	ld	21258,a
 731                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 731                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 733  0074 7b08          	ld	a,(OFST+7,sp)
 734  0076 a420          	and	a,#32
 735  0078 6b01          	ld	(OFST+0,sp),a
 736  007a 7b03          	ld	a,(OFST+2,sp)
 737  007c a410          	and	a,#16
 738  007e 1a01          	or	a,(OFST+0,sp)
 739  0080 ca530a        	or	a,21258
 740  0083 c7530a        	ld	21258,a
 741                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 741                     ; 162                           (uint8_t)TIM2_OCMode);
 743  0086 c65308        	ld	a,21256
 744  0089 a48f          	and	a,#143
 745  008b 1a02          	or	a,(OFST+1,sp)
 746  008d c75308        	ld	21256,a
 747                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 749  0090 7b06          	ld	a,(OFST+5,sp)
 750  0092 c75313        	ld	21267,a
 751                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 753  0095 7b07          	ld	a,(OFST+6,sp)
 754  0097 c75314        	ld	21268,a
 755                     ; 168 }
 758  009a 5b03          	addw	sp,#3
 759  009c 81            	ret
 822                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 822                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 822                     ; 181                   uint16_t TIM2_Pulse,
 822                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 822                     ; 183 {
 823                     .text:	section	.text,new
 824  0000               _TIM2_OC3Init:
 826  0000 89            	pushw	x
 827  0001 88            	push	a
 828       00000001      OFST:	set	1
 831                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 833  0002 9e            	ld	a,xh
 834  0003 4d            	tnz	a
 835  0004 2719          	jreq	L46
 836  0006 9e            	ld	a,xh
 837  0007 a110          	cp	a,#16
 838  0009 2714          	jreq	L46
 839  000b 9e            	ld	a,xh
 840  000c a120          	cp	a,#32
 841  000e 270f          	jreq	L46
 842  0010 9e            	ld	a,xh
 843  0011 a130          	cp	a,#48
 844  0013 270a          	jreq	L46
 845  0015 9e            	ld	a,xh
 846  0016 a160          	cp	a,#96
 847  0018 2705          	jreq	L46
 848  001a 9e            	ld	a,xh
 849  001b a170          	cp	a,#112
 850  001d 2603          	jrne	L26
 851  001f               L46:
 852  001f 4f            	clr	a
 853  0020 2010          	jra	L66
 854  0022               L26:
 855  0022 ae00b9        	ldw	x,#185
 856  0025 89            	pushw	x
 857  0026 ae0000        	ldw	x,#0
 858  0029 89            	pushw	x
 859  002a ae0000        	ldw	x,#L302
 860  002d cd0000        	call	_assert_failed
 862  0030 5b04          	addw	sp,#4
 863  0032               L66:
 864                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 866  0032 0d03          	tnz	(OFST+2,sp)
 867  0034 2706          	jreq	L27
 868  0036 7b03          	ld	a,(OFST+2,sp)
 869  0038 a111          	cp	a,#17
 870  003a 2603          	jrne	L07
 871  003c               L27:
 872  003c 4f            	clr	a
 873  003d 2010          	jra	L47
 874  003f               L07:
 875  003f ae00ba        	ldw	x,#186
 876  0042 89            	pushw	x
 877  0043 ae0000        	ldw	x,#0
 878  0046 89            	pushw	x
 879  0047 ae0000        	ldw	x,#L302
 880  004a cd0000        	call	_assert_failed
 882  004d 5b04          	addw	sp,#4
 883  004f               L47:
 884                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 886  004f 0d08          	tnz	(OFST+7,sp)
 887  0051 2706          	jreq	L001
 888  0053 7b08          	ld	a,(OFST+7,sp)
 889  0055 a122          	cp	a,#34
 890  0057 2603          	jrne	L67
 891  0059               L001:
 892  0059 4f            	clr	a
 893  005a 2010          	jra	L201
 894  005c               L67:
 895  005c ae00bb        	ldw	x,#187
 896  005f 89            	pushw	x
 897  0060 ae0000        	ldw	x,#0
 898  0063 89            	pushw	x
 899  0064 ae0000        	ldw	x,#L302
 900  0067 cd0000        	call	_assert_failed
 902  006a 5b04          	addw	sp,#4
 903  006c               L201:
 904                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 906  006c c6530b        	ld	a,21259
 907  006f a4fc          	and	a,#252
 908  0071 c7530b        	ld	21259,a
 909                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 909                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 911  0074 7b08          	ld	a,(OFST+7,sp)
 912  0076 a402          	and	a,#2
 913  0078 6b01          	ld	(OFST+0,sp),a
 914  007a 7b03          	ld	a,(OFST+2,sp)
 915  007c a401          	and	a,#1
 916  007e 1a01          	or	a,(OFST+0,sp)
 917  0080 ca530b        	or	a,21259
 918  0083 c7530b        	ld	21259,a
 919                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 919                     ; 196                           (uint8_t)TIM2_OCMode);
 921  0086 c65309        	ld	a,21257
 922  0089 a48f          	and	a,#143
 923  008b 1a02          	or	a,(OFST+1,sp)
 924  008d c75309        	ld	21257,a
 925                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 927  0090 7b06          	ld	a,(OFST+5,sp)
 928  0092 c75315        	ld	21269,a
 929                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 931  0095 7b07          	ld	a,(OFST+6,sp)
 932  0097 c75316        	ld	21270,a
 933                     ; 201 }
 936  009a 5b03          	addw	sp,#3
 937  009c 81            	ret
1129                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1129                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1129                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1129                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1129                     ; 216                  uint8_t TIM2_ICFilter)
1129                     ; 217 {
1130                     .text:	section	.text,new
1131  0000               _TIM2_ICInit:
1133  0000 89            	pushw	x
1134       00000000      OFST:	set	0
1137                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1139  0001 9e            	ld	a,xh
1140  0002 4d            	tnz	a
1141  0003 270a          	jreq	L011
1142  0005 9e            	ld	a,xh
1143  0006 a101          	cp	a,#1
1144  0008 2705          	jreq	L011
1145  000a 9e            	ld	a,xh
1146  000b a102          	cp	a,#2
1147  000d 2603          	jrne	L601
1148  000f               L011:
1149  000f 4f            	clr	a
1150  0010 2010          	jra	L211
1151  0012               L601:
1152  0012 ae00db        	ldw	x,#219
1153  0015 89            	pushw	x
1154  0016 ae0000        	ldw	x,#0
1155  0019 89            	pushw	x
1156  001a ae0000        	ldw	x,#L302
1157  001d cd0000        	call	_assert_failed
1159  0020 5b04          	addw	sp,#4
1160  0022               L211:
1161                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1163  0022 0d02          	tnz	(OFST+2,sp)
1164  0024 2706          	jreq	L611
1165  0026 7b02          	ld	a,(OFST+2,sp)
1166  0028 a144          	cp	a,#68
1167  002a 2603          	jrne	L411
1168  002c               L611:
1169  002c 4f            	clr	a
1170  002d 2010          	jra	L021
1171  002f               L411:
1172  002f ae00dc        	ldw	x,#220
1173  0032 89            	pushw	x
1174  0033 ae0000        	ldw	x,#0
1175  0036 89            	pushw	x
1176  0037 ae0000        	ldw	x,#L302
1177  003a cd0000        	call	_assert_failed
1179  003d 5b04          	addw	sp,#4
1180  003f               L021:
1181                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1183  003f 7b05          	ld	a,(OFST+5,sp)
1184  0041 a101          	cp	a,#1
1185  0043 270c          	jreq	L421
1186  0045 7b05          	ld	a,(OFST+5,sp)
1187  0047 a102          	cp	a,#2
1188  0049 2706          	jreq	L421
1189  004b 7b05          	ld	a,(OFST+5,sp)
1190  004d a103          	cp	a,#3
1191  004f 2603          	jrne	L221
1192  0051               L421:
1193  0051 4f            	clr	a
1194  0052 2010          	jra	L621
1195  0054               L221:
1196  0054 ae00dd        	ldw	x,#221
1197  0057 89            	pushw	x
1198  0058 ae0000        	ldw	x,#0
1199  005b 89            	pushw	x
1200  005c ae0000        	ldw	x,#L302
1201  005f cd0000        	call	_assert_failed
1203  0062 5b04          	addw	sp,#4
1204  0064               L621:
1205                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1207  0064 0d06          	tnz	(OFST+6,sp)
1208  0066 2712          	jreq	L231
1209  0068 7b06          	ld	a,(OFST+6,sp)
1210  006a a104          	cp	a,#4
1211  006c 270c          	jreq	L231
1212  006e 7b06          	ld	a,(OFST+6,sp)
1213  0070 a108          	cp	a,#8
1214  0072 2706          	jreq	L231
1215  0074 7b06          	ld	a,(OFST+6,sp)
1216  0076 a10c          	cp	a,#12
1217  0078 2603          	jrne	L031
1218  007a               L231:
1219  007a 4f            	clr	a
1220  007b 2010          	jra	L431
1221  007d               L031:
1222  007d ae00de        	ldw	x,#222
1223  0080 89            	pushw	x
1224  0081 ae0000        	ldw	x,#0
1225  0084 89            	pushw	x
1226  0085 ae0000        	ldw	x,#L302
1227  0088 cd0000        	call	_assert_failed
1229  008b 5b04          	addw	sp,#4
1230  008d               L431:
1231                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1233  008d 7b07          	ld	a,(OFST+7,sp)
1234  008f a110          	cp	a,#16
1235  0091 2403          	jruge	L631
1236  0093 4f            	clr	a
1237  0094 2010          	jra	L041
1238  0096               L631:
1239  0096 ae00df        	ldw	x,#223
1240  0099 89            	pushw	x
1241  009a ae0000        	ldw	x,#0
1242  009d 89            	pushw	x
1243  009e ae0000        	ldw	x,#L302
1244  00a1 cd0000        	call	_assert_failed
1246  00a4 5b04          	addw	sp,#4
1247  00a6               L041:
1248                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1250  00a6 0d01          	tnz	(OFST+1,sp)
1251  00a8 2614          	jrne	L173
1252                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1252                     ; 229                (uint8_t)TIM2_ICSelection,
1252                     ; 230                (uint8_t)TIM2_ICFilter);
1254  00aa 7b07          	ld	a,(OFST+7,sp)
1255  00ac 88            	push	a
1256  00ad 7b06          	ld	a,(OFST+6,sp)
1257  00af 97            	ld	xl,a
1258  00b0 7b03          	ld	a,(OFST+3,sp)
1259  00b2 95            	ld	xh,a
1260  00b3 cd0000        	call	L3_TI1_Config
1262  00b6 84            	pop	a
1263                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1265  00b7 7b06          	ld	a,(OFST+6,sp)
1266  00b9 cd0000        	call	_TIM2_SetIC1Prescaler
1269  00bc 202c          	jra	L373
1270  00be               L173:
1271                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1273  00be 7b01          	ld	a,(OFST+1,sp)
1274  00c0 a101          	cp	a,#1
1275  00c2 2614          	jrne	L573
1276                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1276                     ; 239                (uint8_t)TIM2_ICSelection,
1276                     ; 240                (uint8_t)TIM2_ICFilter);
1278  00c4 7b07          	ld	a,(OFST+7,sp)
1279  00c6 88            	push	a
1280  00c7 7b06          	ld	a,(OFST+6,sp)
1281  00c9 97            	ld	xl,a
1282  00ca 7b03          	ld	a,(OFST+3,sp)
1283  00cc 95            	ld	xh,a
1284  00cd cd0000        	call	L5_TI2_Config
1286  00d0 84            	pop	a
1287                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1289  00d1 7b06          	ld	a,(OFST+6,sp)
1290  00d3 cd0000        	call	_TIM2_SetIC2Prescaler
1293  00d6 2012          	jra	L373
1294  00d8               L573:
1295                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1295                     ; 249                (uint8_t)TIM2_ICSelection,
1295                     ; 250                (uint8_t)TIM2_ICFilter);
1297  00d8 7b07          	ld	a,(OFST+7,sp)
1298  00da 88            	push	a
1299  00db 7b06          	ld	a,(OFST+6,sp)
1300  00dd 97            	ld	xl,a
1301  00de 7b03          	ld	a,(OFST+3,sp)
1302  00e0 95            	ld	xh,a
1303  00e1 cd0000        	call	L7_TI3_Config
1305  00e4 84            	pop	a
1306                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1308  00e5 7b06          	ld	a,(OFST+6,sp)
1309  00e7 cd0000        	call	_TIM2_SetIC3Prescaler
1311  00ea               L373:
1312                     ; 255 }
1315  00ea 85            	popw	x
1316  00eb 81            	ret
1407                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1407                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1407                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1407                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1407                     ; 270                      uint8_t TIM2_ICFilter)
1407                     ; 271 {
1408                     .text:	section	.text,new
1409  0000               _TIM2_PWMIConfig:
1411  0000 89            	pushw	x
1412  0001 89            	pushw	x
1413       00000002      OFST:	set	2
1416                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1418                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1420                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1422  0002 9e            	ld	a,xh
1423  0003 4d            	tnz	a
1424  0004 2705          	jreq	L641
1425  0006 9e            	ld	a,xh
1426  0007 a101          	cp	a,#1
1427  0009 2603          	jrne	L441
1428  000b               L641:
1429  000b 4f            	clr	a
1430  000c 2010          	jra	L051
1431  000e               L441:
1432  000e ae0114        	ldw	x,#276
1433  0011 89            	pushw	x
1434  0012 ae0000        	ldw	x,#0
1435  0015 89            	pushw	x
1436  0016 ae0000        	ldw	x,#L302
1437  0019 cd0000        	call	_assert_failed
1439  001c 5b04          	addw	sp,#4
1440  001e               L051:
1441                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1443  001e 0d04          	tnz	(OFST+2,sp)
1444  0020 2706          	jreq	L451
1445  0022 7b04          	ld	a,(OFST+2,sp)
1446  0024 a144          	cp	a,#68
1447  0026 2603          	jrne	L251
1448  0028               L451:
1449  0028 4f            	clr	a
1450  0029 2010          	jra	L651
1451  002b               L251:
1452  002b ae0115        	ldw	x,#277
1453  002e 89            	pushw	x
1454  002f ae0000        	ldw	x,#0
1455  0032 89            	pushw	x
1456  0033 ae0000        	ldw	x,#L302
1457  0036 cd0000        	call	_assert_failed
1459  0039 5b04          	addw	sp,#4
1460  003b               L651:
1461                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1463  003b 7b07          	ld	a,(OFST+5,sp)
1464  003d a101          	cp	a,#1
1465  003f 270c          	jreq	L261
1466  0041 7b07          	ld	a,(OFST+5,sp)
1467  0043 a102          	cp	a,#2
1468  0045 2706          	jreq	L261
1469  0047 7b07          	ld	a,(OFST+5,sp)
1470  0049 a103          	cp	a,#3
1471  004b 2603          	jrne	L061
1472  004d               L261:
1473  004d 4f            	clr	a
1474  004e 2010          	jra	L461
1475  0050               L061:
1476  0050 ae0116        	ldw	x,#278
1477  0053 89            	pushw	x
1478  0054 ae0000        	ldw	x,#0
1479  0057 89            	pushw	x
1480  0058 ae0000        	ldw	x,#L302
1481  005b cd0000        	call	_assert_failed
1483  005e 5b04          	addw	sp,#4
1484  0060               L461:
1485                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1487  0060 0d08          	tnz	(OFST+6,sp)
1488  0062 2712          	jreq	L071
1489  0064 7b08          	ld	a,(OFST+6,sp)
1490  0066 a104          	cp	a,#4
1491  0068 270c          	jreq	L071
1492  006a 7b08          	ld	a,(OFST+6,sp)
1493  006c a108          	cp	a,#8
1494  006e 2706          	jreq	L071
1495  0070 7b08          	ld	a,(OFST+6,sp)
1496  0072 a10c          	cp	a,#12
1497  0074 2603          	jrne	L661
1498  0076               L071:
1499  0076 4f            	clr	a
1500  0077 2010          	jra	L271
1501  0079               L661:
1502  0079 ae0117        	ldw	x,#279
1503  007c 89            	pushw	x
1504  007d ae0000        	ldw	x,#0
1505  0080 89            	pushw	x
1506  0081 ae0000        	ldw	x,#L302
1507  0084 cd0000        	call	_assert_failed
1509  0087 5b04          	addw	sp,#4
1510  0089               L271:
1511                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1513  0089 7b04          	ld	a,(OFST+2,sp)
1514  008b a144          	cp	a,#68
1515  008d 2706          	jreq	L144
1516                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1518  008f a644          	ld	a,#68
1519  0091 6b01          	ld	(OFST-1,sp),a
1521  0093 2002          	jra	L344
1522  0095               L144:
1523                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1525  0095 0f01          	clr	(OFST-1,sp)
1526  0097               L344:
1527                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1529  0097 7b07          	ld	a,(OFST+5,sp)
1530  0099 a101          	cp	a,#1
1531  009b 2606          	jrne	L544
1532                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1534  009d a602          	ld	a,#2
1535  009f 6b02          	ld	(OFST+0,sp),a
1537  00a1 2004          	jra	L744
1538  00a3               L544:
1539                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1541  00a3 a601          	ld	a,#1
1542  00a5 6b02          	ld	(OFST+0,sp),a
1543  00a7               L744:
1544                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1546  00a7 0d03          	tnz	(OFST+1,sp)
1547  00a9 2626          	jrne	L154
1548                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1548                     ; 305                (uint8_t)TIM2_ICFilter);
1550  00ab 7b09          	ld	a,(OFST+7,sp)
1551  00ad 88            	push	a
1552  00ae 7b08          	ld	a,(OFST+6,sp)
1553  00b0 97            	ld	xl,a
1554  00b1 7b05          	ld	a,(OFST+3,sp)
1555  00b3 95            	ld	xh,a
1556  00b4 cd0000        	call	L3_TI1_Config
1558  00b7 84            	pop	a
1559                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1561  00b8 7b08          	ld	a,(OFST+6,sp)
1562  00ba cd0000        	call	_TIM2_SetIC1Prescaler
1564                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1566  00bd 7b09          	ld	a,(OFST+7,sp)
1567  00bf 88            	push	a
1568  00c0 7b03          	ld	a,(OFST+1,sp)
1569  00c2 97            	ld	xl,a
1570  00c3 7b02          	ld	a,(OFST+0,sp)
1571  00c5 95            	ld	xh,a
1572  00c6 cd0000        	call	L5_TI2_Config
1574  00c9 84            	pop	a
1575                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1577  00ca 7b08          	ld	a,(OFST+6,sp)
1578  00cc cd0000        	call	_TIM2_SetIC2Prescaler
1581  00cf 2024          	jra	L354
1582  00d1               L154:
1583                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1583                     ; 320                (uint8_t)TIM2_ICFilter);
1585  00d1 7b09          	ld	a,(OFST+7,sp)
1586  00d3 88            	push	a
1587  00d4 7b08          	ld	a,(OFST+6,sp)
1588  00d6 97            	ld	xl,a
1589  00d7 7b05          	ld	a,(OFST+3,sp)
1590  00d9 95            	ld	xh,a
1591  00da cd0000        	call	L5_TI2_Config
1593  00dd 84            	pop	a
1594                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1596  00de 7b08          	ld	a,(OFST+6,sp)
1597  00e0 cd0000        	call	_TIM2_SetIC2Prescaler
1599                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1601  00e3 7b09          	ld	a,(OFST+7,sp)
1602  00e5 88            	push	a
1603  00e6 7b03          	ld	a,(OFST+1,sp)
1604  00e8 97            	ld	xl,a
1605  00e9 7b02          	ld	a,(OFST+0,sp)
1606  00eb 95            	ld	xh,a
1607  00ec cd0000        	call	L3_TI1_Config
1609  00ef 84            	pop	a
1610                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1612  00f0 7b08          	ld	a,(OFST+6,sp)
1613  00f2 cd0000        	call	_TIM2_SetIC1Prescaler
1615  00f5               L354:
1616                     ; 331 }
1619  00f5 5b04          	addw	sp,#4
1620  00f7 81            	ret
1676                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1676                     ; 340 {
1677                     .text:	section	.text,new
1678  0000               _TIM2_Cmd:
1680  0000 88            	push	a
1681       00000000      OFST:	set	0
1684                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1686  0001 4d            	tnz	a
1687  0002 2704          	jreq	L002
1688  0004 a101          	cp	a,#1
1689  0006 2603          	jrne	L671
1690  0008               L002:
1691  0008 4f            	clr	a
1692  0009 2010          	jra	L202
1693  000b               L671:
1694  000b ae0156        	ldw	x,#342
1695  000e 89            	pushw	x
1696  000f ae0000        	ldw	x,#0
1697  0012 89            	pushw	x
1698  0013 ae0000        	ldw	x,#L302
1699  0016 cd0000        	call	_assert_failed
1701  0019 5b04          	addw	sp,#4
1702  001b               L202:
1703                     ; 345   if (NewState != DISABLE)
1705  001b 0d01          	tnz	(OFST+1,sp)
1706  001d 2706          	jreq	L305
1707                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1709  001f 72105300      	bset	21248,#0
1711  0023 2004          	jra	L505
1712  0025               L305:
1713                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1715  0025 72115300      	bres	21248,#0
1716  0029               L505:
1717                     ; 353 }
1720  0029 84            	pop	a
1721  002a 81            	ret
1801                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1801                     ; 369 {
1802                     .text:	section	.text,new
1803  0000               _TIM2_ITConfig:
1805  0000 89            	pushw	x
1806       00000000      OFST:	set	0
1809                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1811  0001 9e            	ld	a,xh
1812  0002 4d            	tnz	a
1813  0003 2708          	jreq	L602
1814  0005 9e            	ld	a,xh
1815  0006 a110          	cp	a,#16
1816  0008 2403          	jruge	L602
1817  000a 4f            	clr	a
1818  000b 2010          	jra	L012
1819  000d               L602:
1820  000d ae0173        	ldw	x,#371
1821  0010 89            	pushw	x
1822  0011 ae0000        	ldw	x,#0
1823  0014 89            	pushw	x
1824  0015 ae0000        	ldw	x,#L302
1825  0018 cd0000        	call	_assert_failed
1827  001b 5b04          	addw	sp,#4
1828  001d               L012:
1829                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1831  001d 0d02          	tnz	(OFST+2,sp)
1832  001f 2706          	jreq	L412
1833  0021 7b02          	ld	a,(OFST+2,sp)
1834  0023 a101          	cp	a,#1
1835  0025 2603          	jrne	L212
1836  0027               L412:
1837  0027 4f            	clr	a
1838  0028 2010          	jra	L612
1839  002a               L212:
1840  002a ae0174        	ldw	x,#372
1841  002d 89            	pushw	x
1842  002e ae0000        	ldw	x,#0
1843  0031 89            	pushw	x
1844  0032 ae0000        	ldw	x,#L302
1845  0035 cd0000        	call	_assert_failed
1847  0038 5b04          	addw	sp,#4
1848  003a               L612:
1849                     ; 374   if (NewState != DISABLE)
1851  003a 0d02          	tnz	(OFST+2,sp)
1852  003c 270a          	jreq	L545
1853                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1855  003e c65303        	ld	a,21251
1856  0041 1a01          	or	a,(OFST+1,sp)
1857  0043 c75303        	ld	21251,a
1859  0046 2009          	jra	L745
1860  0048               L545:
1861                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1863  0048 7b01          	ld	a,(OFST+1,sp)
1864  004a 43            	cpl	a
1865  004b c45303        	and	a,21251
1866  004e c75303        	ld	21251,a
1867  0051               L745:
1868                     ; 384 }
1871  0051 85            	popw	x
1872  0052 81            	ret
1909                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1909                     ; 393 {
1910                     .text:	section	.text,new
1911  0000               _TIM2_UpdateDisableConfig:
1913  0000 88            	push	a
1914       00000000      OFST:	set	0
1917                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1919  0001 4d            	tnz	a
1920  0002 2704          	jreq	L422
1921  0004 a101          	cp	a,#1
1922  0006 2603          	jrne	L222
1923  0008               L422:
1924  0008 4f            	clr	a
1925  0009 2010          	jra	L622
1926  000b               L222:
1927  000b ae018b        	ldw	x,#395
1928  000e 89            	pushw	x
1929  000f ae0000        	ldw	x,#0
1930  0012 89            	pushw	x
1931  0013 ae0000        	ldw	x,#L302
1932  0016 cd0000        	call	_assert_failed
1934  0019 5b04          	addw	sp,#4
1935  001b               L622:
1936                     ; 398   if (NewState != DISABLE)
1938  001b 0d01          	tnz	(OFST+1,sp)
1939  001d 2706          	jreq	L765
1940                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1942  001f 72125300      	bset	21248,#1
1944  0023 2004          	jra	L175
1945  0025               L765:
1946                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1948  0025 72135300      	bres	21248,#1
1949  0029               L175:
1950                     ; 406 }
1953  0029 84            	pop	a
1954  002a 81            	ret
2013                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2013                     ; 417 {
2014                     .text:	section	.text,new
2015  0000               _TIM2_UpdateRequestConfig:
2017  0000 88            	push	a
2018       00000000      OFST:	set	0
2021                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2023  0001 4d            	tnz	a
2024  0002 2704          	jreq	L432
2025  0004 a101          	cp	a,#1
2026  0006 2603          	jrne	L232
2027  0008               L432:
2028  0008 4f            	clr	a
2029  0009 2010          	jra	L632
2030  000b               L232:
2031  000b ae01a3        	ldw	x,#419
2032  000e 89            	pushw	x
2033  000f ae0000        	ldw	x,#0
2034  0012 89            	pushw	x
2035  0013 ae0000        	ldw	x,#L302
2036  0016 cd0000        	call	_assert_failed
2038  0019 5b04          	addw	sp,#4
2039  001b               L632:
2040                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2042  001b 0d01          	tnz	(OFST+1,sp)
2043  001d 2706          	jreq	L126
2044                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2046  001f 72145300      	bset	21248,#2
2048  0023 2004          	jra	L326
2049  0025               L126:
2050                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2052  0025 72155300      	bres	21248,#2
2053  0029               L326:
2054                     ; 430 }
2057  0029 84            	pop	a
2058  002a 81            	ret
2116                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2116                     ; 441 {
2117                     .text:	section	.text,new
2118  0000               _TIM2_SelectOnePulseMode:
2120  0000 88            	push	a
2121       00000000      OFST:	set	0
2124                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2126  0001 a101          	cp	a,#1
2127  0003 2703          	jreq	L442
2128  0005 4d            	tnz	a
2129  0006 2603          	jrne	L242
2130  0008               L442:
2131  0008 4f            	clr	a
2132  0009 2010          	jra	L642
2133  000b               L242:
2134  000b ae01bb        	ldw	x,#443
2135  000e 89            	pushw	x
2136  000f ae0000        	ldw	x,#0
2137  0012 89            	pushw	x
2138  0013 ae0000        	ldw	x,#L302
2139  0016 cd0000        	call	_assert_failed
2141  0019 5b04          	addw	sp,#4
2142  001b               L642:
2143                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2145  001b 0d01          	tnz	(OFST+1,sp)
2146  001d 2706          	jreq	L356
2147                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2149  001f 72165300      	bset	21248,#3
2151  0023 2004          	jra	L556
2152  0025               L356:
2153                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2155  0025 72175300      	bres	21248,#3
2156  0029               L556:
2157                     ; 454 }
2160  0029 84            	pop	a
2161  002a 81            	ret
2230                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2230                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2230                     ; 486 {
2231                     .text:	section	.text,new
2232  0000               _TIM2_PrescalerConfig:
2234  0000 89            	pushw	x
2235       00000000      OFST:	set	0
2238                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2240  0001 9f            	ld	a,xl
2241  0002 4d            	tnz	a
2242  0003 2705          	jreq	L452
2243  0005 9f            	ld	a,xl
2244  0006 a101          	cp	a,#1
2245  0008 2603          	jrne	L252
2246  000a               L452:
2247  000a 4f            	clr	a
2248  000b 2010          	jra	L652
2249  000d               L252:
2250  000d ae01e8        	ldw	x,#488
2251  0010 89            	pushw	x
2252  0011 ae0000        	ldw	x,#0
2253  0014 89            	pushw	x
2254  0015 ae0000        	ldw	x,#L302
2255  0018 cd0000        	call	_assert_failed
2257  001b 5b04          	addw	sp,#4
2258  001d               L652:
2259                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2261  001d 0d01          	tnz	(OFST+1,sp)
2262  001f 275a          	jreq	L262
2263  0021 7b01          	ld	a,(OFST+1,sp)
2264  0023 a101          	cp	a,#1
2265  0025 2754          	jreq	L262
2266  0027 7b01          	ld	a,(OFST+1,sp)
2267  0029 a102          	cp	a,#2
2268  002b 274e          	jreq	L262
2269  002d 7b01          	ld	a,(OFST+1,sp)
2270  002f a103          	cp	a,#3
2271  0031 2748          	jreq	L262
2272  0033 7b01          	ld	a,(OFST+1,sp)
2273  0035 a104          	cp	a,#4
2274  0037 2742          	jreq	L262
2275  0039 7b01          	ld	a,(OFST+1,sp)
2276  003b a105          	cp	a,#5
2277  003d 273c          	jreq	L262
2278  003f 7b01          	ld	a,(OFST+1,sp)
2279  0041 a106          	cp	a,#6
2280  0043 2736          	jreq	L262
2281  0045 7b01          	ld	a,(OFST+1,sp)
2282  0047 a107          	cp	a,#7
2283  0049 2730          	jreq	L262
2284  004b 7b01          	ld	a,(OFST+1,sp)
2285  004d a108          	cp	a,#8
2286  004f 272a          	jreq	L262
2287  0051 7b01          	ld	a,(OFST+1,sp)
2288  0053 a109          	cp	a,#9
2289  0055 2724          	jreq	L262
2290  0057 7b01          	ld	a,(OFST+1,sp)
2291  0059 a10a          	cp	a,#10
2292  005b 271e          	jreq	L262
2293  005d 7b01          	ld	a,(OFST+1,sp)
2294  005f a10b          	cp	a,#11
2295  0061 2718          	jreq	L262
2296  0063 7b01          	ld	a,(OFST+1,sp)
2297  0065 a10c          	cp	a,#12
2298  0067 2712          	jreq	L262
2299  0069 7b01          	ld	a,(OFST+1,sp)
2300  006b a10d          	cp	a,#13
2301  006d 270c          	jreq	L262
2302  006f 7b01          	ld	a,(OFST+1,sp)
2303  0071 a10e          	cp	a,#14
2304  0073 2706          	jreq	L262
2305  0075 7b01          	ld	a,(OFST+1,sp)
2306  0077 a10f          	cp	a,#15
2307  0079 2603          	jrne	L062
2308  007b               L262:
2309  007b 4f            	clr	a
2310  007c 2010          	jra	L462
2311  007e               L062:
2312  007e ae01e9        	ldw	x,#489
2313  0081 89            	pushw	x
2314  0082 ae0000        	ldw	x,#0
2315  0085 89            	pushw	x
2316  0086 ae0000        	ldw	x,#L302
2317  0089 cd0000        	call	_assert_failed
2319  008c 5b04          	addw	sp,#4
2320  008e               L462:
2321                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2323  008e 7b01          	ld	a,(OFST+1,sp)
2324  0090 c7530e        	ld	21262,a
2325                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2327  0093 7b02          	ld	a,(OFST+2,sp)
2328  0095 c75306        	ld	21254,a
2329                     ; 496 }
2332  0098 85            	popw	x
2333  0099 81            	ret
2392                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2392                     ; 508 {
2393                     .text:	section	.text,new
2394  0000               _TIM2_ForcedOC1Config:
2396  0000 88            	push	a
2397       00000000      OFST:	set	0
2400                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2402  0001 a150          	cp	a,#80
2403  0003 2704          	jreq	L272
2404  0005 a140          	cp	a,#64
2405  0007 2603          	jrne	L072
2406  0009               L272:
2407  0009 4f            	clr	a
2408  000a 2010          	jra	L472
2409  000c               L072:
2410  000c ae01fe        	ldw	x,#510
2411  000f 89            	pushw	x
2412  0010 ae0000        	ldw	x,#0
2413  0013 89            	pushw	x
2414  0014 ae0000        	ldw	x,#L302
2415  0017 cd0000        	call	_assert_failed
2417  001a 5b04          	addw	sp,#4
2418  001c               L472:
2419                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2419                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2421  001c c65307        	ld	a,21255
2422  001f a48f          	and	a,#143
2423  0021 1a01          	or	a,(OFST+1,sp)
2424  0023 c75307        	ld	21255,a
2425                     ; 515 }
2428  0026 84            	pop	a
2429  0027 81            	ret
2466                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2466                     ; 527 {
2467                     .text:	section	.text,new
2468  0000               _TIM2_ForcedOC2Config:
2470  0000 88            	push	a
2471       00000000      OFST:	set	0
2474                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2476  0001 a150          	cp	a,#80
2477  0003 2704          	jreq	L203
2478  0005 a140          	cp	a,#64
2479  0007 2603          	jrne	L003
2480  0009               L203:
2481  0009 4f            	clr	a
2482  000a 2010          	jra	L403
2483  000c               L003:
2484  000c ae0211        	ldw	x,#529
2485  000f 89            	pushw	x
2486  0010 ae0000        	ldw	x,#0
2487  0013 89            	pushw	x
2488  0014 ae0000        	ldw	x,#L302
2489  0017 cd0000        	call	_assert_failed
2491  001a 5b04          	addw	sp,#4
2492  001c               L403:
2493                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2493                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2495  001c c65308        	ld	a,21256
2496  001f a48f          	and	a,#143
2497  0021 1a01          	or	a,(OFST+1,sp)
2498  0023 c75308        	ld	21256,a
2499                     ; 534 }
2502  0026 84            	pop	a
2503  0027 81            	ret
2540                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2540                     ; 546 {
2541                     .text:	section	.text,new
2542  0000               _TIM2_ForcedOC3Config:
2544  0000 88            	push	a
2545       00000000      OFST:	set	0
2548                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2550  0001 a150          	cp	a,#80
2551  0003 2704          	jreq	L213
2552  0005 a140          	cp	a,#64
2553  0007 2603          	jrne	L013
2554  0009               L213:
2555  0009 4f            	clr	a
2556  000a 2010          	jra	L413
2557  000c               L013:
2558  000c ae0224        	ldw	x,#548
2559  000f 89            	pushw	x
2560  0010 ae0000        	ldw	x,#0
2561  0013 89            	pushw	x
2562  0014 ae0000        	ldw	x,#L302
2563  0017 cd0000        	call	_assert_failed
2565  001a 5b04          	addw	sp,#4
2566  001c               L413:
2567                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2567                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2569  001c c65309        	ld	a,21257
2570  001f a48f          	and	a,#143
2571  0021 1a01          	or	a,(OFST+1,sp)
2572  0023 c75309        	ld	21257,a
2573                     ; 553 }
2576  0026 84            	pop	a
2577  0027 81            	ret
2614                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2614                     ; 562 {
2615                     .text:	section	.text,new
2616  0000               _TIM2_ARRPreloadConfig:
2618  0000 88            	push	a
2619       00000000      OFST:	set	0
2622                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2624  0001 4d            	tnz	a
2625  0002 2704          	jreq	L223
2626  0004 a101          	cp	a,#1
2627  0006 2603          	jrne	L023
2628  0008               L223:
2629  0008 4f            	clr	a
2630  0009 2010          	jra	L423
2631  000b               L023:
2632  000b ae0234        	ldw	x,#564
2633  000e 89            	pushw	x
2634  000f ae0000        	ldw	x,#0
2635  0012 89            	pushw	x
2636  0013 ae0000        	ldw	x,#L302
2637  0016 cd0000        	call	_assert_failed
2639  0019 5b04          	addw	sp,#4
2640  001b               L423:
2641                     ; 567   if (NewState != DISABLE)
2643  001b 0d01          	tnz	(OFST+1,sp)
2644  001d 2706          	jreq	L1101
2645                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2647  001f 721e5300      	bset	21248,#7
2649  0023 2004          	jra	L3101
2650  0025               L1101:
2651                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2653  0025 721f5300      	bres	21248,#7
2654  0029               L3101:
2655                     ; 575 }
2658  0029 84            	pop	a
2659  002a 81            	ret
2696                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2696                     ; 584 {
2697                     .text:	section	.text,new
2698  0000               _TIM2_OC1PreloadConfig:
2700  0000 88            	push	a
2701       00000000      OFST:	set	0
2704                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2706  0001 4d            	tnz	a
2707  0002 2704          	jreq	L233
2708  0004 a101          	cp	a,#1
2709  0006 2603          	jrne	L033
2710  0008               L233:
2711  0008 4f            	clr	a
2712  0009 2010          	jra	L433
2713  000b               L033:
2714  000b ae024a        	ldw	x,#586
2715  000e 89            	pushw	x
2716  000f ae0000        	ldw	x,#0
2717  0012 89            	pushw	x
2718  0013 ae0000        	ldw	x,#L302
2719  0016 cd0000        	call	_assert_failed
2721  0019 5b04          	addw	sp,#4
2722  001b               L433:
2723                     ; 589   if (NewState != DISABLE)
2725  001b 0d01          	tnz	(OFST+1,sp)
2726  001d 2706          	jreq	L3301
2727                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2729  001f 72165307      	bset	21255,#3
2731  0023 2004          	jra	L5301
2732  0025               L3301:
2733                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2735  0025 72175307      	bres	21255,#3
2736  0029               L5301:
2737                     ; 597 }
2740  0029 84            	pop	a
2741  002a 81            	ret
2778                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2778                     ; 606 {
2779                     .text:	section	.text,new
2780  0000               _TIM2_OC2PreloadConfig:
2782  0000 88            	push	a
2783       00000000      OFST:	set	0
2786                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2788  0001 4d            	tnz	a
2789  0002 2704          	jreq	L243
2790  0004 a101          	cp	a,#1
2791  0006 2603          	jrne	L043
2792  0008               L243:
2793  0008 4f            	clr	a
2794  0009 2010          	jra	L443
2795  000b               L043:
2796  000b ae0260        	ldw	x,#608
2797  000e 89            	pushw	x
2798  000f ae0000        	ldw	x,#0
2799  0012 89            	pushw	x
2800  0013 ae0000        	ldw	x,#L302
2801  0016 cd0000        	call	_assert_failed
2803  0019 5b04          	addw	sp,#4
2804  001b               L443:
2805                     ; 611   if (NewState != DISABLE)
2807  001b 0d01          	tnz	(OFST+1,sp)
2808  001d 2706          	jreq	L5501
2809                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2811  001f 72165308      	bset	21256,#3
2813  0023 2004          	jra	L7501
2814  0025               L5501:
2815                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2817  0025 72175308      	bres	21256,#3
2818  0029               L7501:
2819                     ; 619 }
2822  0029 84            	pop	a
2823  002a 81            	ret
2860                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2860                     ; 628 {
2861                     .text:	section	.text,new
2862  0000               _TIM2_OC3PreloadConfig:
2864  0000 88            	push	a
2865       00000000      OFST:	set	0
2868                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2870  0001 4d            	tnz	a
2871  0002 2704          	jreq	L253
2872  0004 a101          	cp	a,#1
2873  0006 2603          	jrne	L053
2874  0008               L253:
2875  0008 4f            	clr	a
2876  0009 2010          	jra	L453
2877  000b               L053:
2878  000b ae0276        	ldw	x,#630
2879  000e 89            	pushw	x
2880  000f ae0000        	ldw	x,#0
2881  0012 89            	pushw	x
2882  0013 ae0000        	ldw	x,#L302
2883  0016 cd0000        	call	_assert_failed
2885  0019 5b04          	addw	sp,#4
2886  001b               L453:
2887                     ; 633   if (NewState != DISABLE)
2889  001b 0d01          	tnz	(OFST+1,sp)
2890  001d 2706          	jreq	L7701
2891                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2893  001f 72165309      	bset	21257,#3
2895  0023 2004          	jra	L1011
2896  0025               L7701:
2897                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2899  0025 72175309      	bres	21257,#3
2900  0029               L1011:
2901                     ; 641 }
2904  0029 84            	pop	a
2905  002a 81            	ret
2979                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2979                     ; 654 {
2980                     .text:	section	.text,new
2981  0000               _TIM2_GenerateEvent:
2983  0000 88            	push	a
2984       00000000      OFST:	set	0
2987                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2989  0001 4d            	tnz	a
2990  0002 2703          	jreq	L063
2991  0004 4f            	clr	a
2992  0005 2010          	jra	L263
2993  0007               L063:
2994  0007 ae0290        	ldw	x,#656
2995  000a 89            	pushw	x
2996  000b ae0000        	ldw	x,#0
2997  000e 89            	pushw	x
2998  000f ae0000        	ldw	x,#L302
2999  0012 cd0000        	call	_assert_failed
3001  0015 5b04          	addw	sp,#4
3002  0017               L263:
3003                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
3005  0017 7b01          	ld	a,(OFST+1,sp)
3006  0019 c75306        	ld	21254,a
3007                     ; 660 }
3010  001c 84            	pop	a
3011  001d 81            	ret
3048                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3048                     ; 671 {
3049                     .text:	section	.text,new
3050  0000               _TIM2_OC1PolarityConfig:
3052  0000 88            	push	a
3053       00000000      OFST:	set	0
3056                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3058  0001 4d            	tnz	a
3059  0002 2704          	jreq	L073
3060  0004 a122          	cp	a,#34
3061  0006 2603          	jrne	L663
3062  0008               L073:
3063  0008 4f            	clr	a
3064  0009 2010          	jra	L273
3065  000b               L663:
3066  000b ae02a1        	ldw	x,#673
3067  000e 89            	pushw	x
3068  000f ae0000        	ldw	x,#0
3069  0012 89            	pushw	x
3070  0013 ae0000        	ldw	x,#L302
3071  0016 cd0000        	call	_assert_failed
3073  0019 5b04          	addw	sp,#4
3074  001b               L273:
3075                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3077  001b 0d01          	tnz	(OFST+1,sp)
3078  001d 2706          	jreq	L3511
3079                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3081  001f 7212530a      	bset	21258,#1
3083  0023 2004          	jra	L5511
3084  0025               L3511:
3085                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3087  0025 7213530a      	bres	21258,#1
3088  0029               L5511:
3089                     ; 684 }
3092  0029 84            	pop	a
3093  002a 81            	ret
3130                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3130                     ; 695 {
3131                     .text:	section	.text,new
3132  0000               _TIM2_OC2PolarityConfig:
3134  0000 88            	push	a
3135       00000000      OFST:	set	0
3138                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3140  0001 4d            	tnz	a
3141  0002 2704          	jreq	L004
3142  0004 a122          	cp	a,#34
3143  0006 2603          	jrne	L673
3144  0008               L004:
3145  0008 4f            	clr	a
3146  0009 2010          	jra	L204
3147  000b               L673:
3148  000b ae02b9        	ldw	x,#697
3149  000e 89            	pushw	x
3150  000f ae0000        	ldw	x,#0
3151  0012 89            	pushw	x
3152  0013 ae0000        	ldw	x,#L302
3153  0016 cd0000        	call	_assert_failed
3155  0019 5b04          	addw	sp,#4
3156  001b               L204:
3157                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3159  001b 0d01          	tnz	(OFST+1,sp)
3160  001d 2706          	jreq	L5711
3161                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3163  001f 721a530a      	bset	21258,#5
3165  0023 2004          	jra	L7711
3166  0025               L5711:
3167                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3169  0025 721b530a      	bres	21258,#5
3170  0029               L7711:
3171                     ; 708 }
3174  0029 84            	pop	a
3175  002a 81            	ret
3212                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3212                     ; 719 {
3213                     .text:	section	.text,new
3214  0000               _TIM2_OC3PolarityConfig:
3216  0000 88            	push	a
3217       00000000      OFST:	set	0
3220                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3222  0001 4d            	tnz	a
3223  0002 2704          	jreq	L014
3224  0004 a122          	cp	a,#34
3225  0006 2603          	jrne	L604
3226  0008               L014:
3227  0008 4f            	clr	a
3228  0009 2010          	jra	L214
3229  000b               L604:
3230  000b ae02d1        	ldw	x,#721
3231  000e 89            	pushw	x
3232  000f ae0000        	ldw	x,#0
3233  0012 89            	pushw	x
3234  0013 ae0000        	ldw	x,#L302
3235  0016 cd0000        	call	_assert_failed
3237  0019 5b04          	addw	sp,#4
3238  001b               L214:
3239                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3241  001b 0d01          	tnz	(OFST+1,sp)
3242  001d 2706          	jreq	L7121
3243                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3245  001f 7212530b      	bset	21259,#1
3247  0023 2004          	jra	L1221
3248  0025               L7121:
3249                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3251  0025 7213530b      	bres	21259,#1
3252  0029               L1221:
3253                     ; 732 }
3256  0029 84            	pop	a
3257  002a 81            	ret
3303                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3303                     ; 746 {
3304                     .text:	section	.text,new
3305  0000               _TIM2_CCxCmd:
3307  0000 89            	pushw	x
3308       00000000      OFST:	set	0
3311                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3313  0001 9e            	ld	a,xh
3314  0002 4d            	tnz	a
3315  0003 270a          	jreq	L024
3316  0005 9e            	ld	a,xh
3317  0006 a101          	cp	a,#1
3318  0008 2705          	jreq	L024
3319  000a 9e            	ld	a,xh
3320  000b a102          	cp	a,#2
3321  000d 2603          	jrne	L614
3322  000f               L024:
3323  000f 4f            	clr	a
3324  0010 2010          	jra	L224
3325  0012               L614:
3326  0012 ae02ec        	ldw	x,#748
3327  0015 89            	pushw	x
3328  0016 ae0000        	ldw	x,#0
3329  0019 89            	pushw	x
3330  001a ae0000        	ldw	x,#L302
3331  001d cd0000        	call	_assert_failed
3333  0020 5b04          	addw	sp,#4
3334  0022               L224:
3335                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3337  0022 0d02          	tnz	(OFST+2,sp)
3338  0024 2706          	jreq	L624
3339  0026 7b02          	ld	a,(OFST+2,sp)
3340  0028 a101          	cp	a,#1
3341  002a 2603          	jrne	L424
3342  002c               L624:
3343  002c 4f            	clr	a
3344  002d 2010          	jra	L034
3345  002f               L424:
3346  002f ae02ed        	ldw	x,#749
3347  0032 89            	pushw	x
3348  0033 ae0000        	ldw	x,#0
3349  0036 89            	pushw	x
3350  0037 ae0000        	ldw	x,#L302
3351  003a cd0000        	call	_assert_failed
3353  003d 5b04          	addw	sp,#4
3354  003f               L034:
3355                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3357  003f 0d01          	tnz	(OFST+1,sp)
3358  0041 2610          	jrne	L5421
3359                     ; 754     if (NewState != DISABLE)
3361  0043 0d02          	tnz	(OFST+2,sp)
3362  0045 2706          	jreq	L7421
3363                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3365  0047 7210530a      	bset	21258,#0
3367  004b 202a          	jra	L3521
3368  004d               L7421:
3369                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3371  004d 7211530a      	bres	21258,#0
3372  0051 2024          	jra	L3521
3373  0053               L5421:
3374                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3376  0053 7b01          	ld	a,(OFST+1,sp)
3377  0055 a101          	cp	a,#1
3378  0057 2610          	jrne	L5521
3379                     ; 767     if (NewState != DISABLE)
3381  0059 0d02          	tnz	(OFST+2,sp)
3382  005b 2706          	jreq	L7521
3383                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3385  005d 7218530a      	bset	21258,#4
3387  0061 2014          	jra	L3521
3388  0063               L7521:
3389                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3391  0063 7219530a      	bres	21258,#4
3392  0067 200e          	jra	L3521
3393  0069               L5521:
3394                     ; 779     if (NewState != DISABLE)
3396  0069 0d02          	tnz	(OFST+2,sp)
3397  006b 2706          	jreq	L5621
3398                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3400  006d 7210530b      	bset	21259,#0
3402  0071 2004          	jra	L3521
3403  0073               L5621:
3404                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3406  0073 7211530b      	bres	21259,#0
3407  0077               L3521:
3408                     ; 788 }
3411  0077 85            	popw	x
3412  0078 81            	ret
3458                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3458                     ; 811 {
3459                     .text:	section	.text,new
3460  0000               _TIM2_SelectOCxM:
3462  0000 89            	pushw	x
3463       00000000      OFST:	set	0
3466                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3468  0001 9e            	ld	a,xh
3469  0002 4d            	tnz	a
3470  0003 270a          	jreq	L634
3471  0005 9e            	ld	a,xh
3472  0006 a101          	cp	a,#1
3473  0008 2705          	jreq	L634
3474  000a 9e            	ld	a,xh
3475  000b a102          	cp	a,#2
3476  000d 2603          	jrne	L434
3477  000f               L634:
3478  000f 4f            	clr	a
3479  0010 2010          	jra	L044
3480  0012               L434:
3481  0012 ae032d        	ldw	x,#813
3482  0015 89            	pushw	x
3483  0016 ae0000        	ldw	x,#0
3484  0019 89            	pushw	x
3485  001a ae0000        	ldw	x,#L302
3486  001d cd0000        	call	_assert_failed
3488  0020 5b04          	addw	sp,#4
3489  0022               L044:
3490                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3492  0022 0d02          	tnz	(OFST+2,sp)
3493  0024 272a          	jreq	L444
3494  0026 7b02          	ld	a,(OFST+2,sp)
3495  0028 a110          	cp	a,#16
3496  002a 2724          	jreq	L444
3497  002c 7b02          	ld	a,(OFST+2,sp)
3498  002e a120          	cp	a,#32
3499  0030 271e          	jreq	L444
3500  0032 7b02          	ld	a,(OFST+2,sp)
3501  0034 a130          	cp	a,#48
3502  0036 2718          	jreq	L444
3503  0038 7b02          	ld	a,(OFST+2,sp)
3504  003a a160          	cp	a,#96
3505  003c 2712          	jreq	L444
3506  003e 7b02          	ld	a,(OFST+2,sp)
3507  0040 a170          	cp	a,#112
3508  0042 270c          	jreq	L444
3509  0044 7b02          	ld	a,(OFST+2,sp)
3510  0046 a150          	cp	a,#80
3511  0048 2706          	jreq	L444
3512  004a 7b02          	ld	a,(OFST+2,sp)
3513  004c a140          	cp	a,#64
3514  004e 2603          	jrne	L244
3515  0050               L444:
3516  0050 4f            	clr	a
3517  0051 2010          	jra	L644
3518  0053               L244:
3519  0053 ae032e        	ldw	x,#814
3520  0056 89            	pushw	x
3521  0057 ae0000        	ldw	x,#0
3522  005a 89            	pushw	x
3523  005b ae0000        	ldw	x,#L302
3524  005e cd0000        	call	_assert_failed
3526  0061 5b04          	addw	sp,#4
3527  0063               L644:
3528                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3530  0063 0d01          	tnz	(OFST+1,sp)
3531  0065 2610          	jrne	L3131
3532                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3534  0067 7211530a      	bres	21258,#0
3535                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3535                     ; 823                             | (uint8_t)TIM2_OCMode);
3537  006b c65307        	ld	a,21255
3538  006e a48f          	and	a,#143
3539  0070 1a02          	or	a,(OFST+2,sp)
3540  0072 c75307        	ld	21255,a
3542  0075 2024          	jra	L5131
3543  0077               L3131:
3544                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3546  0077 7b01          	ld	a,(OFST+1,sp)
3547  0079 a101          	cp	a,#1
3548  007b 2610          	jrne	L7131
3549                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3551  007d 7219530a      	bres	21258,#4
3552                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3552                     ; 832                             | (uint8_t)TIM2_OCMode);
3554  0081 c65308        	ld	a,21256
3555  0084 a48f          	and	a,#143
3556  0086 1a02          	or	a,(OFST+2,sp)
3557  0088 c75308        	ld	21256,a
3559  008b 200e          	jra	L5131
3560  008d               L7131:
3561                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3563  008d 7211530b      	bres	21259,#0
3564                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3564                     ; 841                             | (uint8_t)TIM2_OCMode);
3566  0091 c65309        	ld	a,21257
3567  0094 a48f          	and	a,#143
3568  0096 1a02          	or	a,(OFST+2,sp)
3569  0098 c75309        	ld	21257,a
3570  009b               L5131:
3571                     ; 843 }
3574  009b 85            	popw	x
3575  009c 81            	ret
3607                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3607                     ; 852 {
3608                     .text:	section	.text,new
3609  0000               _TIM2_SetCounter:
3613                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3615  0000 9e            	ld	a,xh
3616  0001 c7530c        	ld	21260,a
3617                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3619  0004 9f            	ld	a,xl
3620  0005 c7530d        	ld	21261,a
3621                     ; 856 }
3624  0008 81            	ret
3656                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3656                     ; 865 {
3657                     .text:	section	.text,new
3658  0000               _TIM2_SetAutoreload:
3662                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3664  0000 9e            	ld	a,xh
3665  0001 c7530f        	ld	21263,a
3666                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3668  0004 9f            	ld	a,xl
3669  0005 c75310        	ld	21264,a
3670                     ; 869 }
3673  0008 81            	ret
3705                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3705                     ; 878 {
3706                     .text:	section	.text,new
3707  0000               _TIM2_SetCompare1:
3711                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3713  0000 9e            	ld	a,xh
3714  0001 c75311        	ld	21265,a
3715                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3717  0004 9f            	ld	a,xl
3718  0005 c75312        	ld	21266,a
3719                     ; 882 }
3722  0008 81            	ret
3754                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3754                     ; 891 {
3755                     .text:	section	.text,new
3756  0000               _TIM2_SetCompare2:
3760                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3762  0000 9e            	ld	a,xh
3763  0001 c75313        	ld	21267,a
3764                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3766  0004 9f            	ld	a,xl
3767  0005 c75314        	ld	21268,a
3768                     ; 895 }
3771  0008 81            	ret
3803                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3803                     ; 904 {
3804                     .text:	section	.text,new
3805  0000               _TIM2_SetCompare3:
3809                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3811  0000 9e            	ld	a,xh
3812  0001 c75315        	ld	21269,a
3813                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3815  0004 9f            	ld	a,xl
3816  0005 c75316        	ld	21270,a
3817                     ; 908 }
3820  0008 81            	ret
3857                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3857                     ; 921 {
3858                     .text:	section	.text,new
3859  0000               _TIM2_SetIC1Prescaler:
3861  0000 88            	push	a
3862       00000000      OFST:	set	0
3865                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3867  0001 4d            	tnz	a
3868  0002 270c          	jreq	L664
3869  0004 a104          	cp	a,#4
3870  0006 2708          	jreq	L664
3871  0008 a108          	cp	a,#8
3872  000a 2704          	jreq	L664
3873  000c a10c          	cp	a,#12
3874  000e 2603          	jrne	L464
3875  0010               L664:
3876  0010 4f            	clr	a
3877  0011 2010          	jra	L074
3878  0013               L464:
3879  0013 ae039b        	ldw	x,#923
3880  0016 89            	pushw	x
3881  0017 ae0000        	ldw	x,#0
3882  001a 89            	pushw	x
3883  001b ae0000        	ldw	x,#L302
3884  001e cd0000        	call	_assert_failed
3886  0021 5b04          	addw	sp,#4
3887  0023               L074:
3888                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3888                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3890  0023 c65307        	ld	a,21255
3891  0026 a4f3          	and	a,#243
3892  0028 1a01          	or	a,(OFST+1,sp)
3893  002a c75307        	ld	21255,a
3894                     ; 928 }
3897  002d 84            	pop	a
3898  002e 81            	ret
3935                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3935                     ; 941 {
3936                     .text:	section	.text,new
3937  0000               _TIM2_SetIC2Prescaler:
3939  0000 88            	push	a
3940       00000000      OFST:	set	0
3943                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3945  0001 4d            	tnz	a
3946  0002 270c          	jreq	L674
3947  0004 a104          	cp	a,#4
3948  0006 2708          	jreq	L674
3949  0008 a108          	cp	a,#8
3950  000a 2704          	jreq	L674
3951  000c a10c          	cp	a,#12
3952  000e 2603          	jrne	L474
3953  0010               L674:
3954  0010 4f            	clr	a
3955  0011 2010          	jra	L005
3956  0013               L474:
3957  0013 ae03af        	ldw	x,#943
3958  0016 89            	pushw	x
3959  0017 ae0000        	ldw	x,#0
3960  001a 89            	pushw	x
3961  001b ae0000        	ldw	x,#L302
3962  001e cd0000        	call	_assert_failed
3964  0021 5b04          	addw	sp,#4
3965  0023               L005:
3966                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3966                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3968  0023 c65308        	ld	a,21256
3969  0026 a4f3          	and	a,#243
3970  0028 1a01          	or	a,(OFST+1,sp)
3971  002a c75308        	ld	21256,a
3972                     ; 948 }
3975  002d 84            	pop	a
3976  002e 81            	ret
4013                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
4013                     ; 961 {
4014                     .text:	section	.text,new
4015  0000               _TIM2_SetIC3Prescaler:
4017  0000 88            	push	a
4018       00000000      OFST:	set	0
4021                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
4023  0001 4d            	tnz	a
4024  0002 270c          	jreq	L605
4025  0004 a104          	cp	a,#4
4026  0006 2708          	jreq	L605
4027  0008 a108          	cp	a,#8
4028  000a 2704          	jreq	L605
4029  000c a10c          	cp	a,#12
4030  000e 2603          	jrne	L405
4031  0010               L605:
4032  0010 4f            	clr	a
4033  0011 2010          	jra	L015
4034  0013               L405:
4035  0013 ae03c4        	ldw	x,#964
4036  0016 89            	pushw	x
4037  0017 ae0000        	ldw	x,#0
4038  001a 89            	pushw	x
4039  001b ae0000        	ldw	x,#L302
4040  001e cd0000        	call	_assert_failed
4042  0021 5b04          	addw	sp,#4
4043  0023               L015:
4044                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4044                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4046  0023 c65309        	ld	a,21257
4047  0026 a4f3          	and	a,#243
4048  0028 1a01          	or	a,(OFST+1,sp)
4049  002a c75309        	ld	21257,a
4050                     ; 968 }
4053  002d 84            	pop	a
4054  002e 81            	ret
4100                     ; 975 uint16_t TIM2_GetCapture1(void)
4100                     ; 976 {
4101                     .text:	section	.text,new
4102  0000               _TIM2_GetCapture1:
4104  0000 5204          	subw	sp,#4
4105       00000004      OFST:	set	4
4108                     ; 978   uint16_t tmpccr1 = 0;
4110                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4114                     ; 981   tmpccr1h = TIM2->CCR1H;
4116  0002 c65311        	ld	a,21265
4117  0005 6b02          	ld	(OFST-2,sp),a
4118                     ; 982   tmpccr1l = TIM2->CCR1L;
4120  0007 c65312        	ld	a,21266
4121  000a 6b01          	ld	(OFST-3,sp),a
4122                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4124  000c 7b01          	ld	a,(OFST-3,sp)
4125  000e 5f            	clrw	x
4126  000f 97            	ld	xl,a
4127  0010 1f03          	ldw	(OFST-1,sp),x
4128                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4130  0012 7b02          	ld	a,(OFST-2,sp)
4131  0014 5f            	clrw	x
4132  0015 97            	ld	xl,a
4133  0016 4f            	clr	a
4134  0017 02            	rlwa	x,a
4135  0018 01            	rrwa	x,a
4136  0019 1a04          	or	a,(OFST+0,sp)
4137  001b 01            	rrwa	x,a
4138  001c 1a03          	or	a,(OFST-1,sp)
4139  001e 01            	rrwa	x,a
4140  001f 1f03          	ldw	(OFST-1,sp),x
4141                     ; 987   return (uint16_t)tmpccr1;
4143  0021 1e03          	ldw	x,(OFST-1,sp)
4146  0023 5b04          	addw	sp,#4
4147  0025 81            	ret
4193                     ; 995 uint16_t TIM2_GetCapture2(void)
4193                     ; 996 {
4194                     .text:	section	.text,new
4195  0000               _TIM2_GetCapture2:
4197  0000 5204          	subw	sp,#4
4198       00000004      OFST:	set	4
4201                     ; 998   uint16_t tmpccr2 = 0;
4203                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4207                     ; 1001   tmpccr2h = TIM2->CCR2H;
4209  0002 c65313        	ld	a,21267
4210  0005 6b02          	ld	(OFST-2,sp),a
4211                     ; 1002   tmpccr2l = TIM2->CCR2L;
4213  0007 c65314        	ld	a,21268
4214  000a 6b01          	ld	(OFST-3,sp),a
4215                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4217  000c 7b01          	ld	a,(OFST-3,sp)
4218  000e 5f            	clrw	x
4219  000f 97            	ld	xl,a
4220  0010 1f03          	ldw	(OFST-1,sp),x
4221                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4223  0012 7b02          	ld	a,(OFST-2,sp)
4224  0014 5f            	clrw	x
4225  0015 97            	ld	xl,a
4226  0016 4f            	clr	a
4227  0017 02            	rlwa	x,a
4228  0018 01            	rrwa	x,a
4229  0019 1a04          	or	a,(OFST+0,sp)
4230  001b 01            	rrwa	x,a
4231  001c 1a03          	or	a,(OFST-1,sp)
4232  001e 01            	rrwa	x,a
4233  001f 1f03          	ldw	(OFST-1,sp),x
4234                     ; 1007   return (uint16_t)tmpccr2;
4236  0021 1e03          	ldw	x,(OFST-1,sp)
4239  0023 5b04          	addw	sp,#4
4240  0025 81            	ret
4286                     ; 1015 uint16_t TIM2_GetCapture3(void)
4286                     ; 1016 {
4287                     .text:	section	.text,new
4288  0000               _TIM2_GetCapture3:
4290  0000 5204          	subw	sp,#4
4291       00000004      OFST:	set	4
4294                     ; 1018   uint16_t tmpccr3 = 0;
4296                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4300                     ; 1021   tmpccr3h = TIM2->CCR3H;
4302  0002 c65315        	ld	a,21269
4303  0005 6b02          	ld	(OFST-2,sp),a
4304                     ; 1022   tmpccr3l = TIM2->CCR3L;
4306  0007 c65316        	ld	a,21270
4307  000a 6b01          	ld	(OFST-3,sp),a
4308                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4310  000c 7b01          	ld	a,(OFST-3,sp)
4311  000e 5f            	clrw	x
4312  000f 97            	ld	xl,a
4313  0010 1f03          	ldw	(OFST-1,sp),x
4314                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4316  0012 7b02          	ld	a,(OFST-2,sp)
4317  0014 5f            	clrw	x
4318  0015 97            	ld	xl,a
4319  0016 4f            	clr	a
4320  0017 02            	rlwa	x,a
4321  0018 01            	rrwa	x,a
4322  0019 1a04          	or	a,(OFST+0,sp)
4323  001b 01            	rrwa	x,a
4324  001c 1a03          	or	a,(OFST-1,sp)
4325  001e 01            	rrwa	x,a
4326  001f 1f03          	ldw	(OFST-1,sp),x
4327                     ; 1027   return (uint16_t)tmpccr3;
4329  0021 1e03          	ldw	x,(OFST-1,sp)
4332  0023 5b04          	addw	sp,#4
4333  0025 81            	ret
4365                     ; 1035 uint16_t TIM2_GetCounter(void)
4365                     ; 1036 {
4366                     .text:	section	.text,new
4367  0000               _TIM2_GetCounter:
4369  0000 89            	pushw	x
4370       00000002      OFST:	set	2
4373                     ; 1037   uint16_t tmpcntr = 0;
4375                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4377  0001 c6530c        	ld	a,21260
4378  0004 5f            	clrw	x
4379  0005 97            	ld	xl,a
4380  0006 4f            	clr	a
4381  0007 02            	rlwa	x,a
4382  0008 1f01          	ldw	(OFST-1,sp),x
4383                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4385  000a c6530d        	ld	a,21261
4386  000d 5f            	clrw	x
4387  000e 97            	ld	xl,a
4388  000f 01            	rrwa	x,a
4389  0010 1a02          	or	a,(OFST+0,sp)
4390  0012 01            	rrwa	x,a
4391  0013 1a01          	or	a,(OFST-1,sp)
4392  0015 01            	rrwa	x,a
4395  0016 5b02          	addw	sp,#2
4396  0018 81            	ret
4420                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4420                     ; 1050 {
4421                     .text:	section	.text,new
4422  0000               _TIM2_GetPrescaler:
4426                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4428  0000 c6530e        	ld	a,21262
4431  0003 81            	ret
4567                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4567                     ; 1069 {
4568                     .text:	section	.text,new
4569  0000               _TIM2_GetFlagStatus:
4571  0000 89            	pushw	x
4572  0001 89            	pushw	x
4573       00000002      OFST:	set	2
4576                     ; 1070   FlagStatus bitstatus = RESET;
4578                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4582                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4584  0002 a30001        	cpw	x,#1
4585  0005 271e          	jreq	L035
4586  0007 a30002        	cpw	x,#2
4587  000a 2719          	jreq	L035
4588  000c a30004        	cpw	x,#4
4589  000f 2714          	jreq	L035
4590  0011 a30008        	cpw	x,#8
4591  0014 270f          	jreq	L035
4592  0016 a30200        	cpw	x,#512
4593  0019 270a          	jreq	L035
4594  001b a30400        	cpw	x,#1024
4595  001e 2705          	jreq	L035
4596  0020 a30800        	cpw	x,#2048
4597  0023 2603          	jrne	L625
4598  0025               L035:
4599  0025 4f            	clr	a
4600  0026 2010          	jra	L235
4601  0028               L625:
4602  0028 ae0432        	ldw	x,#1074
4603  002b 89            	pushw	x
4604  002c ae0000        	ldw	x,#0
4605  002f 89            	pushw	x
4606  0030 ae0000        	ldw	x,#L302
4607  0033 cd0000        	call	_assert_failed
4609  0036 5b04          	addw	sp,#4
4610  0038               L235:
4611                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4613  0038 c65304        	ld	a,21252
4614  003b 1404          	and	a,(OFST+2,sp)
4615  003d 6b01          	ld	(OFST-1,sp),a
4616                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4618  003f 7b03          	ld	a,(OFST+1,sp)
4619  0041 6b02          	ld	(OFST+0,sp),a
4620                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4622  0043 c65305        	ld	a,21253
4623  0046 1402          	and	a,(OFST+0,sp)
4624  0048 1a01          	or	a,(OFST-1,sp)
4625  004a 2706          	jreq	L5561
4626                     ; 1081     bitstatus = SET;
4628  004c a601          	ld	a,#1
4629  004e 6b02          	ld	(OFST+0,sp),a
4631  0050 2002          	jra	L7561
4632  0052               L5561:
4633                     ; 1085     bitstatus = RESET;
4635  0052 0f02          	clr	(OFST+0,sp)
4636  0054               L7561:
4637                     ; 1087   return (FlagStatus)bitstatus;
4639  0054 7b02          	ld	a,(OFST+0,sp)
4642  0056 5b04          	addw	sp,#4
4643  0058 81            	ret
4679                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4679                     ; 1104 {
4680                     .text:	section	.text,new
4681  0000               _TIM2_ClearFlag:
4683  0000 89            	pushw	x
4684       00000000      OFST:	set	0
4687                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4689  0001 01            	rrwa	x,a
4690  0002 a4f0          	and	a,#240
4691  0004 01            	rrwa	x,a
4692  0005 a4f1          	and	a,#241
4693  0007 01            	rrwa	x,a
4694  0008 a30000        	cpw	x,#0
4695  000b 2607          	jrne	L635
4696  000d 1e01          	ldw	x,(OFST+1,sp)
4697  000f 2703          	jreq	L635
4698  0011 4f            	clr	a
4699  0012 2010          	jra	L045
4700  0014               L635:
4701  0014 ae0452        	ldw	x,#1106
4702  0017 89            	pushw	x
4703  0018 ae0000        	ldw	x,#0
4704  001b 89            	pushw	x
4705  001c ae0000        	ldw	x,#L302
4706  001f cd0000        	call	_assert_failed
4708  0022 5b04          	addw	sp,#4
4709  0024               L045:
4710                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4712  0024 7b02          	ld	a,(OFST+2,sp)
4713  0026 43            	cpl	a
4714  0027 c75304        	ld	21252,a
4715                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4717  002a 35ff5305      	mov	21253,#255
4718                     ; 1111 }
4721  002e 85            	popw	x
4722  002f 81            	ret
4783                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4783                     ; 1124 {
4784                     .text:	section	.text,new
4785  0000               _TIM2_GetITStatus:
4787  0000 88            	push	a
4788  0001 89            	pushw	x
4789       00000002      OFST:	set	2
4792                     ; 1125   ITStatus bitstatus = RESET;
4794                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4798                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4800  0002 a101          	cp	a,#1
4801  0004 270c          	jreq	L645
4802  0006 a102          	cp	a,#2
4803  0008 2708          	jreq	L645
4804  000a a104          	cp	a,#4
4805  000c 2704          	jreq	L645
4806  000e a108          	cp	a,#8
4807  0010 2603          	jrne	L445
4808  0012               L645:
4809  0012 4f            	clr	a
4810  0013 2010          	jra	L055
4811  0015               L445:
4812  0015 ae0469        	ldw	x,#1129
4813  0018 89            	pushw	x
4814  0019 ae0000        	ldw	x,#0
4815  001c 89            	pushw	x
4816  001d ae0000        	ldw	x,#L302
4817  0020 cd0000        	call	_assert_failed
4819  0023 5b04          	addw	sp,#4
4820  0025               L055:
4821                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4823  0025 c65304        	ld	a,21252
4824  0028 1403          	and	a,(OFST+1,sp)
4825  002a 6b01          	ld	(OFST-1,sp),a
4826                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4828  002c c65303        	ld	a,21251
4829  002f 1403          	and	a,(OFST+1,sp)
4830  0031 6b02          	ld	(OFST+0,sp),a
4831                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4833  0033 0d01          	tnz	(OFST-1,sp)
4834  0035 270a          	jreq	L5271
4836  0037 0d02          	tnz	(OFST+0,sp)
4837  0039 2706          	jreq	L5271
4838                     ; 1137     bitstatus = SET;
4840  003b a601          	ld	a,#1
4841  003d 6b02          	ld	(OFST+0,sp),a
4843  003f 2002          	jra	L7271
4844  0041               L5271:
4845                     ; 1141     bitstatus = RESET;
4847  0041 0f02          	clr	(OFST+0,sp)
4848  0043               L7271:
4849                     ; 1143   return (ITStatus)(bitstatus);
4851  0043 7b02          	ld	a,(OFST+0,sp)
4854  0045 5b03          	addw	sp,#3
4855  0047 81            	ret
4892                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4892                     ; 1157 {
4893                     .text:	section	.text,new
4894  0000               _TIM2_ClearITPendingBit:
4896  0000 88            	push	a
4897       00000000      OFST:	set	0
4900                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4902  0001 4d            	tnz	a
4903  0002 2707          	jreq	L455
4904  0004 a110          	cp	a,#16
4905  0006 2403          	jruge	L455
4906  0008 4f            	clr	a
4907  0009 2010          	jra	L655
4908  000b               L455:
4909  000b ae0487        	ldw	x,#1159
4910  000e 89            	pushw	x
4911  000f ae0000        	ldw	x,#0
4912  0012 89            	pushw	x
4913  0013 ae0000        	ldw	x,#L302
4914  0016 cd0000        	call	_assert_failed
4916  0019 5b04          	addw	sp,#4
4917  001b               L655:
4918                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4920  001b 7b01          	ld	a,(OFST+1,sp)
4921  001d 43            	cpl	a
4922  001e c75304        	ld	21252,a
4923                     ; 1163 }
4926  0021 84            	pop	a
4927  0022 81            	ret
4973                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4973                     ; 1182                        uint8_t TIM2_ICSelection,
4973                     ; 1183                        uint8_t TIM2_ICFilter)
4973                     ; 1184 {
4974                     .text:	section	.text,new
4975  0000               L3_TI1_Config:
4977  0000 89            	pushw	x
4978  0001 88            	push	a
4979       00000001      OFST:	set	1
4982                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4984  0002 7211530a      	bres	21258,#0
4985                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4985                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4987  0006 7b06          	ld	a,(OFST+5,sp)
4988  0008 97            	ld	xl,a
4989  0009 a610          	ld	a,#16
4990  000b 42            	mul	x,a
4991  000c 9f            	ld	a,xl
4992  000d 1a03          	or	a,(OFST+2,sp)
4993  000f 6b01          	ld	(OFST+0,sp),a
4994  0011 c65307        	ld	a,21255
4995  0014 a40c          	and	a,#12
4996  0016 1a01          	or	a,(OFST+0,sp)
4997  0018 c75307        	ld	21255,a
4998                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5000  001b 0d02          	tnz	(OFST+1,sp)
5001  001d 2706          	jreq	L7671
5002                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
5004  001f 7212530a      	bset	21258,#1
5006  0023 2004          	jra	L1771
5007  0025               L7671:
5008                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
5010  0025 7213530a      	bres	21258,#1
5011  0029               L1771:
5012                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
5014  0029 7210530a      	bset	21258,#0
5015                     ; 1203 }
5018  002d 5b03          	addw	sp,#3
5019  002f 81            	ret
5065                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5065                     ; 1222                        uint8_t TIM2_ICSelection,
5065                     ; 1223                        uint8_t TIM2_ICFilter)
5065                     ; 1224 {
5066                     .text:	section	.text,new
5067  0000               L5_TI2_Config:
5069  0000 89            	pushw	x
5070  0001 88            	push	a
5071       00000001      OFST:	set	1
5074                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5076  0002 7219530a      	bres	21258,#4
5077                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5077                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5079  0006 7b06          	ld	a,(OFST+5,sp)
5080  0008 97            	ld	xl,a
5081  0009 a610          	ld	a,#16
5082  000b 42            	mul	x,a
5083  000c 9f            	ld	a,xl
5084  000d 1a03          	or	a,(OFST+2,sp)
5085  000f 6b01          	ld	(OFST+0,sp),a
5086  0011 c65308        	ld	a,21256
5087  0014 a40c          	and	a,#12
5088  0016 1a01          	or	a,(OFST+0,sp)
5089  0018 c75308        	ld	21256,a
5090                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5092  001b 0d02          	tnz	(OFST+1,sp)
5093  001d 2706          	jreq	L3102
5094                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5096  001f 721a530a      	bset	21258,#5
5098  0023 2004          	jra	L5102
5099  0025               L3102:
5100                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5102  0025 721b530a      	bres	21258,#5
5103  0029               L5102:
5104                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5106  0029 7218530a      	bset	21258,#4
5107                     ; 1245 }
5110  002d 5b03          	addw	sp,#3
5111  002f 81            	ret
5157                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5157                     ; 1262                        uint8_t TIM2_ICFilter)
5157                     ; 1263 {
5158                     .text:	section	.text,new
5159  0000               L7_TI3_Config:
5161  0000 89            	pushw	x
5162  0001 88            	push	a
5163       00000001      OFST:	set	1
5166                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5168  0002 7211530b      	bres	21259,#0
5169                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5169                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5171  0006 7b06          	ld	a,(OFST+5,sp)
5172  0008 97            	ld	xl,a
5173  0009 a610          	ld	a,#16
5174  000b 42            	mul	x,a
5175  000c 9f            	ld	a,xl
5176  000d 1a03          	or	a,(OFST+2,sp)
5177  000f 6b01          	ld	(OFST+0,sp),a
5178  0011 c65309        	ld	a,21257
5179  0014 a40c          	and	a,#12
5180  0016 1a01          	or	a,(OFST+0,sp)
5181  0018 c75309        	ld	21257,a
5182                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5184  001b 0d02          	tnz	(OFST+1,sp)
5185  001d 2706          	jreq	L7302
5186                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5188  001f 7212530b      	bset	21259,#1
5190  0023 2004          	jra	L1402
5191  0025               L7302:
5192                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5194  0025 7213530b      	bres	21259,#1
5195  0029               L1402:
5196                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5198  0029 7210530b      	bset	21259,#0
5199                     ; 1283 }
5202  002d 5b03          	addw	sp,#3
5203  002f 81            	ret
5216                     	xdef	_TIM2_ClearITPendingBit
5217                     	xdef	_TIM2_GetITStatus
5218                     	xdef	_TIM2_ClearFlag
5219                     	xdef	_TIM2_GetFlagStatus
5220                     	xdef	_TIM2_GetPrescaler
5221                     	xdef	_TIM2_GetCounter
5222                     	xdef	_TIM2_GetCapture3
5223                     	xdef	_TIM2_GetCapture2
5224                     	xdef	_TIM2_GetCapture1
5225                     	xdef	_TIM2_SetIC3Prescaler
5226                     	xdef	_TIM2_SetIC2Prescaler
5227                     	xdef	_TIM2_SetIC1Prescaler
5228                     	xdef	_TIM2_SetCompare3
5229                     	xdef	_TIM2_SetCompare2
5230                     	xdef	_TIM2_SetCompare1
5231                     	xdef	_TIM2_SetAutoreload
5232                     	xdef	_TIM2_SetCounter
5233                     	xdef	_TIM2_SelectOCxM
5234                     	xdef	_TIM2_CCxCmd
5235                     	xdef	_TIM2_OC3PolarityConfig
5236                     	xdef	_TIM2_OC2PolarityConfig
5237                     	xdef	_TIM2_OC1PolarityConfig
5238                     	xdef	_TIM2_GenerateEvent
5239                     	xdef	_TIM2_OC3PreloadConfig
5240                     	xdef	_TIM2_OC2PreloadConfig
5241                     	xdef	_TIM2_OC1PreloadConfig
5242                     	xdef	_TIM2_ARRPreloadConfig
5243                     	xdef	_TIM2_ForcedOC3Config
5244                     	xdef	_TIM2_ForcedOC2Config
5245                     	xdef	_TIM2_ForcedOC1Config
5246                     	xdef	_TIM2_PrescalerConfig
5247                     	xdef	_TIM2_SelectOnePulseMode
5248                     	xdef	_TIM2_UpdateRequestConfig
5249                     	xdef	_TIM2_UpdateDisableConfig
5250                     	xdef	_TIM2_ITConfig
5251                     	xdef	_TIM2_Cmd
5252                     	xdef	_TIM2_PWMIConfig
5253                     	xdef	_TIM2_ICInit
5254                     	xdef	_TIM2_OC3Init
5255                     	xdef	_TIM2_OC2Init
5256                     	xdef	_TIM2_OC1Init
5257                     	xdef	_TIM2_TimeBaseInit
5258                     	xdef	_TIM2_DeInit
5259                     	xref	_assert_failed
5260                     .const:	section	.text
5261  0000               L302:
5262  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5263  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5264  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
5265  0036 5f74696d322e  	dc.b	"_tim2.c",0
5285                     	end
