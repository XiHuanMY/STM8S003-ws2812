   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 58 void TIM1_DeInit(void)
  49                     ; 59 {
  51                     .text:	section	.text,new
  52  0000               _TIM1_DeInit:
  56                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  58  0000 725f5250      	clr	21072
  59                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  61  0004 725f5251      	clr	21073
  62                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  64  0008 725f5252      	clr	21074
  65                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  67  000c 725f5253      	clr	21075
  68                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  70  0010 725f5254      	clr	21076
  71                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  73  0014 725f5256      	clr	21078
  74                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  76  0018 725f525c      	clr	21084
  77                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  79  001c 725f525d      	clr	21085
  80                     ; 70   TIM1->CCMR1 = 0x01;
  82  0020 35015258      	mov	21080,#1
  83                     ; 71   TIM1->CCMR2 = 0x01;
  85  0024 35015259      	mov	21081,#1
  86                     ; 72   TIM1->CCMR3 = 0x01;
  88  0028 3501525a      	mov	21082,#1
  89                     ; 73   TIM1->CCMR4 = 0x01;
  91  002c 3501525b      	mov	21083,#1
  92                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  94  0030 725f525c      	clr	21084
  95                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  97  0034 725f525d      	clr	21085
  98                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 100  0038 725f5258      	clr	21080
 101                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 103  003c 725f5259      	clr	21081
 104                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 106  0040 725f525a      	clr	21082
 107                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 109  0044 725f525b      	clr	21083
 110                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 112  0048 725f525e      	clr	21086
 113                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 115  004c 725f525f      	clr	21087
 116                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 118  0050 725f5260      	clr	21088
 119                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 121  0054 725f5261      	clr	21089
 122                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 124  0058 35ff5262      	mov	21090,#255
 125                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 127  005c 35ff5263      	mov	21091,#255
 128                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 130  0060 725f5265      	clr	21093
 131                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 133  0064 725f5266      	clr	21094
 134                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 136  0068 725f5267      	clr	21095
 137                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 139  006c 725f5268      	clr	21096
 140                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 142  0070 725f5269      	clr	21097
 143                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 145  0074 725f526a      	clr	21098
 146                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 148  0078 725f526b      	clr	21099
 149                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 151  007c 725f526c      	clr	21100
 152                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 154  0080 725f526f      	clr	21103
 155                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 157  0084 35015257      	mov	21079,#1
 158                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 160  0088 725f526e      	clr	21102
 161                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 163  008c 725f526d      	clr	21101
 164                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 166  0090 725f5264      	clr	21092
 167                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 169  0094 725f5255      	clr	21077
 170                     ; 101 }
 173  0098 81            	ret	
 283                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 283                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 283                     ; 113                        uint16_t TIM1_Period,
 283                     ; 114                        uint8_t TIM1_RepetitionCounter)
 283                     ; 115 {
 284                     .text:	section	.text,new
 285  0000               _TIM1_TimeBaseInit:
 287  0000 89            	pushw	x
 288       00000000      OFST:	set	0
 291                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 293  0001 7b05          	ld	a,(OFST+5,sp)
 294  0003 271e          	jreq	L41
 295  0005 a110          	cp	a,#16
 296  0007 271a          	jreq	L41
 297  0009 a120          	cp	a,#32
 298  000b 2716          	jreq	L41
 299  000d a140          	cp	a,#64
 300  000f 2712          	jreq	L41
 301  0011 a160          	cp	a,#96
 302  0013 270e          	jreq	L41
 303  0015 ae0075        	ldw	x,#117
 304  0018 89            	pushw	x
 305  0019 5f            	clrw	x
 306  001a 89            	pushw	x
 307  001b ae0000        	ldw	x,#L101
 308  001e cd0000        	call	_assert_failed
 310  0021 5b04          	addw	sp,#4
 311  0023               L41:
 312                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 314  0023 7b06          	ld	a,(OFST+6,sp)
 315  0025 c75262        	ld	21090,a
 316                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 318  0028 7b07          	ld	a,(OFST+7,sp)
 319  002a c75263        	ld	21091,a
 320                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 322  002d 7b01          	ld	a,(OFST+1,sp)
 323  002f c75260        	ld	21088,a
 324                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 326  0032 7b02          	ld	a,(OFST+2,sp)
 327  0034 c75261        	ld	21089,a
 328                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 328                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 330  0037 c65250        	ld	a,21072
 331  003a a48f          	and	a,#143
 332  003c 1a05          	or	a,(OFST+5,sp)
 333  003e c75250        	ld	21072,a
 334                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 336  0041 7b08          	ld	a,(OFST+8,sp)
 337  0043 c75264        	ld	21092,a
 338                     ; 133 }
 341  0046 85            	popw	x
 342  0047 81            	ret	
 628                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 628                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 628                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 628                     ; 157                   uint16_t TIM1_Pulse,
 628                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 628                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 628                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 628                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 628                     ; 162 {
 629                     .text:	section	.text,new
 630  0000               _TIM1_OC1Init:
 632  0000 89            	pushw	x
 633  0001 5203          	subw	sp,#3
 634       00000003      OFST:	set	3
 637                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 639  0003 9e            	ld	a,xh
 640  0004 4d            	tnz	a
 641  0005 271f          	jreq	L62
 642  0007 9e            	ld	a,xh
 643  0008 a110          	cp	a,#16
 644  000a 271a          	jreq	L62
 645  000c 9e            	ld	a,xh
 646  000d a120          	cp	a,#32
 647  000f 2715          	jreq	L62
 648  0011 9e            	ld	a,xh
 649  0012 a130          	cp	a,#48
 650  0014 2710          	jreq	L62
 651  0016 9e            	ld	a,xh
 652  0017 a160          	cp	a,#96
 653  0019 270b          	jreq	L62
 654  001b 9e            	ld	a,xh
 655  001c a170          	cp	a,#112
 656  001e 2706          	jreq	L62
 657  0020 ae00a4        	ldw	x,#164
 658  0023 cd00d6        	call	LC001
 659  0026               L62:
 660                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 662  0026 7b05          	ld	a,(OFST+2,sp)
 663  0028 270a          	jreq	L63
 664  002a a111          	cp	a,#17
 665  002c 2706          	jreq	L63
 666  002e ae00a5        	ldw	x,#165
 667  0031 cd00d6        	call	LC001
 668  0034               L63:
 669                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 671  0034 7b08          	ld	a,(OFST+5,sp)
 672  0036 270a          	jreq	L64
 673  0038 a144          	cp	a,#68
 674  003a 2706          	jreq	L64
 675  003c ae00a6        	ldw	x,#166
 676  003f cd00d6        	call	LC001
 677  0042               L64:
 678                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 680  0042 7b0b          	ld	a,(OFST+8,sp)
 681  0044 270a          	jreq	L65
 682  0046 a122          	cp	a,#34
 683  0048 2706          	jreq	L65
 684  004a ae00a7        	ldw	x,#167
 685  004d cd00d6        	call	LC001
 686  0050               L65:
 687                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 689  0050 7b0c          	ld	a,(OFST+9,sp)
 690  0052 2709          	jreq	L66
 691  0054 a188          	cp	a,#136
 692  0056 2705          	jreq	L66
 693  0058 ae00a8        	ldw	x,#168
 694  005b ad79          	call	LC001
 695  005d               L66:
 696                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 698  005d 7b0d          	ld	a,(OFST+10,sp)
 699  005f a155          	cp	a,#85
 700  0061 2709          	jreq	L67
 701  0063 7b0d          	ld	a,(OFST+10,sp)
 702  0065 2705          	jreq	L67
 703  0067 ae00a9        	ldw	x,#169
 704  006a ad6a          	call	LC001
 705  006c               L67:
 706                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 708  006c 7b0e          	ld	a,(OFST+11,sp)
 709  006e a12a          	cp	a,#42
 710  0070 2709          	jreq	L601
 711  0072 7b0e          	ld	a,(OFST+11,sp)
 712  0074 2705          	jreq	L601
 713  0076 ae00aa        	ldw	x,#170
 714  0079 ad5b          	call	LC001
 715  007b               L601:
 716                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 716                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 718  007b c6525c        	ld	a,21084
 719  007e a4f0          	and	a,#240
 720  0080 c7525c        	ld	21084,a
 721                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 721                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 721                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 721                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 723  0083 7b0c          	ld	a,(OFST+9,sp)
 724  0085 a408          	and	a,#8
 725  0087 6b03          	ld	(OFST+0,sp),a
 726  0089 7b0b          	ld	a,(OFST+8,sp)
 727  008b a402          	and	a,#2
 728  008d 1a03          	or	a,(OFST+0,sp)
 729  008f 6b02          	ld	(OFST-1,sp),a
 730  0091 7b08          	ld	a,(OFST+5,sp)
 731  0093 a404          	and	a,#4
 732  0095 6b01          	ld	(OFST-2,sp),a
 733  0097 7b05          	ld	a,(OFST+2,sp)
 734  0099 a401          	and	a,#1
 735  009b 1a01          	or	a,(OFST-2,sp)
 736  009d 1a02          	or	a,(OFST-1,sp)
 737  009f ca525c        	or	a,21084
 738  00a2 c7525c        	ld	21084,a
 739                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 739                     ; 185                           (uint8_t)TIM1_OCMode);
 741  00a5 c65258        	ld	a,21080
 742  00a8 a48f          	and	a,#143
 743  00aa 1a04          	or	a,(OFST+1,sp)
 744  00ac c75258        	ld	21080,a
 745                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 747  00af c6526f        	ld	a,21103
 748  00b2 a4fc          	and	a,#252
 749  00b4 c7526f        	ld	21103,a
 750                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 750                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 752  00b7 7b0e          	ld	a,(OFST+11,sp)
 753  00b9 a402          	and	a,#2
 754  00bb 6b03          	ld	(OFST+0,sp),a
 755  00bd 7b0d          	ld	a,(OFST+10,sp)
 756  00bf a401          	and	a,#1
 757  00c1 1a03          	or	a,(OFST+0,sp)
 758  00c3 ca526f        	or	a,21103
 759  00c6 c7526f        	ld	21103,a
 760                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 762  00c9 7b09          	ld	a,(OFST+6,sp)
 763  00cb c75265        	ld	21093,a
 764                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 766  00ce 7b0a          	ld	a,(OFST+7,sp)
 767  00d0 c75266        	ld	21094,a
 768                     ; 196 }
 771  00d3 5b05          	addw	sp,#5
 772  00d5 81            	ret	
 773  00d6               LC001:
 774  00d6 89            	pushw	x
 775  00d7 5f            	clrw	x
 776  00d8 89            	pushw	x
 777  00d9 ae0000        	ldw	x,#L101
 778  00dc cd0000        	call	_assert_failed
 780  00df 5b04          	addw	sp,#4
 781  00e1 81            	ret	
 886                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 886                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 886                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 886                     ; 220                   uint16_t TIM1_Pulse,
 886                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 886                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 886                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 886                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 886                     ; 225 {
 887                     .text:	section	.text,new
 888  0000               _TIM1_OC2Init:
 890  0000 89            	pushw	x
 891  0001 5203          	subw	sp,#3
 892       00000003      OFST:	set	3
 895                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 897  0003 9e            	ld	a,xh
 898  0004 4d            	tnz	a
 899  0005 271f          	jreq	L021
 900  0007 9e            	ld	a,xh
 901  0008 a110          	cp	a,#16
 902  000a 271a          	jreq	L021
 903  000c 9e            	ld	a,xh
 904  000d a120          	cp	a,#32
 905  000f 2715          	jreq	L021
 906  0011 9e            	ld	a,xh
 907  0012 a130          	cp	a,#48
 908  0014 2710          	jreq	L021
 909  0016 9e            	ld	a,xh
 910  0017 a160          	cp	a,#96
 911  0019 270b          	jreq	L021
 912  001b 9e            	ld	a,xh
 913  001c a170          	cp	a,#112
 914  001e 2706          	jreq	L021
 915  0020 ae00e3        	ldw	x,#227
 916  0023 cd00d6        	call	LC002
 917  0026               L021:
 918                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 920  0026 7b05          	ld	a,(OFST+2,sp)
 921  0028 270a          	jreq	L031
 922  002a a111          	cp	a,#17
 923  002c 2706          	jreq	L031
 924  002e ae00e4        	ldw	x,#228
 925  0031 cd00d6        	call	LC002
 926  0034               L031:
 927                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 929  0034 7b08          	ld	a,(OFST+5,sp)
 930  0036 270a          	jreq	L041
 931  0038 a144          	cp	a,#68
 932  003a 2706          	jreq	L041
 933  003c ae00e5        	ldw	x,#229
 934  003f cd00d6        	call	LC002
 935  0042               L041:
 936                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 938  0042 7b0b          	ld	a,(OFST+8,sp)
 939  0044 270a          	jreq	L051
 940  0046 a122          	cp	a,#34
 941  0048 2706          	jreq	L051
 942  004a ae00e6        	ldw	x,#230
 943  004d cd00d6        	call	LC002
 944  0050               L051:
 945                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 947  0050 7b0c          	ld	a,(OFST+9,sp)
 948  0052 2709          	jreq	L061
 949  0054 a188          	cp	a,#136
 950  0056 2705          	jreq	L061
 951  0058 ae00e7        	ldw	x,#231
 952  005b ad79          	call	LC002
 953  005d               L061:
 954                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 956  005d 7b0d          	ld	a,(OFST+10,sp)
 957  005f a155          	cp	a,#85
 958  0061 2709          	jreq	L071
 959  0063 7b0d          	ld	a,(OFST+10,sp)
 960  0065 2705          	jreq	L071
 961  0067 ae00e8        	ldw	x,#232
 962  006a ad6a          	call	LC002
 963  006c               L071:
 964                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 966  006c 7b0e          	ld	a,(OFST+11,sp)
 967  006e a12a          	cp	a,#42
 968  0070 2709          	jreq	L002
 969  0072 7b0e          	ld	a,(OFST+11,sp)
 970  0074 2705          	jreq	L002
 971  0076 ae00e9        	ldw	x,#233
 972  0079 ad5b          	call	LC002
 973  007b               L002:
 974                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 974                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 976  007b c6525c        	ld	a,21084
 977  007e a40f          	and	a,#15
 978  0080 c7525c        	ld	21084,a
 979                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 979                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 979                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 979                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 981  0083 7b0c          	ld	a,(OFST+9,sp)
 982  0085 a480          	and	a,#128
 983  0087 6b03          	ld	(OFST+0,sp),a
 984  0089 7b0b          	ld	a,(OFST+8,sp)
 985  008b a420          	and	a,#32
 986  008d 1a03          	or	a,(OFST+0,sp)
 987  008f 6b02          	ld	(OFST-1,sp),a
 988  0091 7b08          	ld	a,(OFST+5,sp)
 989  0093 a440          	and	a,#64
 990  0095 6b01          	ld	(OFST-2,sp),a
 991  0097 7b05          	ld	a,(OFST+2,sp)
 992  0099 a410          	and	a,#16
 993  009b 1a01          	or	a,(OFST-2,sp)
 994  009d 1a02          	or	a,(OFST-1,sp)
 995  009f ca525c        	or	a,21084
 996  00a2 c7525c        	ld	21084,a
 997                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 997                     ; 249                           (uint8_t)TIM1_OCMode);
 999  00a5 c65259        	ld	a,21081
1000  00a8 a48f          	and	a,#143
1001  00aa 1a04          	or	a,(OFST+1,sp)
1002  00ac c75259        	ld	21081,a
1003                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1005  00af c6526f        	ld	a,21103
1006  00b2 a4f3          	and	a,#243
1007  00b4 c7526f        	ld	21103,a
1008                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1008                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1010  00b7 7b0e          	ld	a,(OFST+11,sp)
1011  00b9 a408          	and	a,#8
1012  00bb 6b03          	ld	(OFST+0,sp),a
1013  00bd 7b0d          	ld	a,(OFST+10,sp)
1014  00bf a404          	and	a,#4
1015  00c1 1a03          	or	a,(OFST+0,sp)
1016  00c3 ca526f        	or	a,21103
1017  00c6 c7526f        	ld	21103,a
1018                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1020  00c9 7b09          	ld	a,(OFST+6,sp)
1021  00cb c75267        	ld	21095,a
1022                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1024  00ce 7b0a          	ld	a,(OFST+7,sp)
1025  00d0 c75268        	ld	21096,a
1026                     ; 260 }
1029  00d3 5b05          	addw	sp,#5
1030  00d5 81            	ret	
1031  00d6               LC002:
1032  00d6 89            	pushw	x
1033  00d7 5f            	clrw	x
1034  00d8 89            	pushw	x
1035  00d9 ae0000        	ldw	x,#L101
1036  00dc cd0000        	call	_assert_failed
1038  00df 5b04          	addw	sp,#4
1039  00e1 81            	ret	
1144                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1144                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1144                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1144                     ; 284                   uint16_t TIM1_Pulse,
1144                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1144                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1144                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1144                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1144                     ; 289 {
1145                     .text:	section	.text,new
1146  0000               _TIM1_OC3Init:
1148  0000 89            	pushw	x
1149  0001 5203          	subw	sp,#3
1150       00000003      OFST:	set	3
1153                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1155  0003 9e            	ld	a,xh
1156  0004 4d            	tnz	a
1157  0005 271f          	jreq	L212
1158  0007 9e            	ld	a,xh
1159  0008 a110          	cp	a,#16
1160  000a 271a          	jreq	L212
1161  000c 9e            	ld	a,xh
1162  000d a120          	cp	a,#32
1163  000f 2715          	jreq	L212
1164  0011 9e            	ld	a,xh
1165  0012 a130          	cp	a,#48
1166  0014 2710          	jreq	L212
1167  0016 9e            	ld	a,xh
1168  0017 a160          	cp	a,#96
1169  0019 270b          	jreq	L212
1170  001b 9e            	ld	a,xh
1171  001c a170          	cp	a,#112
1172  001e 2706          	jreq	L212
1173  0020 ae0123        	ldw	x,#291
1174  0023 cd00d6        	call	LC003
1175  0026               L212:
1176                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1178  0026 7b05          	ld	a,(OFST+2,sp)
1179  0028 270a          	jreq	L222
1180  002a a111          	cp	a,#17
1181  002c 2706          	jreq	L222
1182  002e ae0124        	ldw	x,#292
1183  0031 cd00d6        	call	LC003
1184  0034               L222:
1185                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1187  0034 7b08          	ld	a,(OFST+5,sp)
1188  0036 270a          	jreq	L232
1189  0038 a144          	cp	a,#68
1190  003a 2706          	jreq	L232
1191  003c ae0125        	ldw	x,#293
1192  003f cd00d6        	call	LC003
1193  0042               L232:
1194                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1196  0042 7b0b          	ld	a,(OFST+8,sp)
1197  0044 270a          	jreq	L242
1198  0046 a122          	cp	a,#34
1199  0048 2706          	jreq	L242
1200  004a ae0126        	ldw	x,#294
1201  004d cd00d6        	call	LC003
1202  0050               L242:
1203                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1205  0050 7b0c          	ld	a,(OFST+9,sp)
1206  0052 2709          	jreq	L252
1207  0054 a188          	cp	a,#136
1208  0056 2705          	jreq	L252
1209  0058 ae0127        	ldw	x,#295
1210  005b ad79          	call	LC003
1211  005d               L252:
1212                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1214  005d 7b0d          	ld	a,(OFST+10,sp)
1215  005f a155          	cp	a,#85
1216  0061 2709          	jreq	L262
1217  0063 7b0d          	ld	a,(OFST+10,sp)
1218  0065 2705          	jreq	L262
1219  0067 ae0128        	ldw	x,#296
1220  006a ad6a          	call	LC003
1221  006c               L262:
1222                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1224  006c 7b0e          	ld	a,(OFST+11,sp)
1225  006e a12a          	cp	a,#42
1226  0070 2709          	jreq	L272
1227  0072 7b0e          	ld	a,(OFST+11,sp)
1228  0074 2705          	jreq	L272
1229  0076 ae0129        	ldw	x,#297
1230  0079 ad5b          	call	LC003
1231  007b               L272:
1232                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1232                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1234  007b c6525d        	ld	a,21085
1235  007e a4f0          	and	a,#240
1236  0080 c7525d        	ld	21085,a
1237                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1237                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1237                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1237                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1239  0083 7b0c          	ld	a,(OFST+9,sp)
1240  0085 a408          	and	a,#8
1241  0087 6b03          	ld	(OFST+0,sp),a
1242  0089 7b0b          	ld	a,(OFST+8,sp)
1243  008b a402          	and	a,#2
1244  008d 1a03          	or	a,(OFST+0,sp)
1245  008f 6b02          	ld	(OFST-1,sp),a
1246  0091 7b08          	ld	a,(OFST+5,sp)
1247  0093 a404          	and	a,#4
1248  0095 6b01          	ld	(OFST-2,sp),a
1249  0097 7b05          	ld	a,(OFST+2,sp)
1250  0099 a401          	and	a,#1
1251  009b 1a01          	or	a,(OFST-2,sp)
1252  009d 1a02          	or	a,(OFST-1,sp)
1253  009f ca525d        	or	a,21085
1254  00a2 c7525d        	ld	21085,a
1255                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1255                     ; 312                           (uint8_t)TIM1_OCMode);
1257  00a5 c6525a        	ld	a,21082
1258  00a8 a48f          	and	a,#143
1259  00aa 1a04          	or	a,(OFST+1,sp)
1260  00ac c7525a        	ld	21082,a
1261                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1263  00af c6526f        	ld	a,21103
1264  00b2 a4cf          	and	a,#207
1265  00b4 c7526f        	ld	21103,a
1266                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1266                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1268  00b7 7b0e          	ld	a,(OFST+11,sp)
1269  00b9 a420          	and	a,#32
1270  00bb 6b03          	ld	(OFST+0,sp),a
1271  00bd 7b0d          	ld	a,(OFST+10,sp)
1272  00bf a410          	and	a,#16
1273  00c1 1a03          	or	a,(OFST+0,sp)
1274  00c3 ca526f        	or	a,21103
1275  00c6 c7526f        	ld	21103,a
1276                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1278  00c9 7b09          	ld	a,(OFST+6,sp)
1279  00cb c75269        	ld	21097,a
1280                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1282  00ce 7b0a          	ld	a,(OFST+7,sp)
1283  00d0 c7526a        	ld	21098,a
1284                     ; 323 }
1287  00d3 5b05          	addw	sp,#5
1288  00d5 81            	ret	
1289  00d6               LC003:
1290  00d6 89            	pushw	x
1291  00d7 5f            	clrw	x
1292  00d8 89            	pushw	x
1293  00d9 ae0000        	ldw	x,#L101
1294  00dc cd0000        	call	_assert_failed
1296  00df 5b04          	addw	sp,#4
1297  00e1 81            	ret	
1372                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1372                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1372                     ; 340                   uint16_t TIM1_Pulse,
1372                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1372                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1372                     ; 343 {
1373                     .text:	section	.text,new
1374  0000               _TIM1_OC4Init:
1376  0000 89            	pushw	x
1377  0001 88            	push	a
1378       00000001      OFST:	set	1
1381                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1383  0002 9e            	ld	a,xh
1384  0003 4d            	tnz	a
1385  0004 271e          	jreq	L403
1386  0006 9e            	ld	a,xh
1387  0007 a110          	cp	a,#16
1388  0009 2719          	jreq	L403
1389  000b 9e            	ld	a,xh
1390  000c a120          	cp	a,#32
1391  000e 2714          	jreq	L403
1392  0010 9e            	ld	a,xh
1393  0011 a130          	cp	a,#48
1394  0013 270f          	jreq	L403
1395  0015 9e            	ld	a,xh
1396  0016 a160          	cp	a,#96
1397  0018 270a          	jreq	L403
1398  001a 9e            	ld	a,xh
1399  001b a170          	cp	a,#112
1400  001d 2705          	jreq	L403
1401  001f ae0159        	ldw	x,#345
1402  0022 ad6c          	call	LC004
1403  0024               L403:
1404                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1406  0024 7b03          	ld	a,(OFST+2,sp)
1407  0026 2709          	jreq	L413
1408  0028 a111          	cp	a,#17
1409  002a 2705          	jreq	L413
1410  002c ae015a        	ldw	x,#346
1411  002f ad5f          	call	LC004
1412  0031               L413:
1413                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1415  0031 7b08          	ld	a,(OFST+7,sp)
1416  0033 2709          	jreq	L423
1417  0035 a122          	cp	a,#34
1418  0037 2705          	jreq	L423
1419  0039 ae015b        	ldw	x,#347
1420  003c ad52          	call	LC004
1421  003e               L423:
1422                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1424  003e 7b09          	ld	a,(OFST+8,sp)
1425  0040 a155          	cp	a,#85
1426  0042 2709          	jreq	L433
1427  0044 7b09          	ld	a,(OFST+8,sp)
1428  0046 2705          	jreq	L433
1429  0048 ae015c        	ldw	x,#348
1430  004b ad43          	call	LC004
1431  004d               L433:
1432                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1434  004d c6525d        	ld	a,21085
1435  0050 a4cf          	and	a,#207
1436  0052 c7525d        	ld	21085,a
1437                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1437                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1439  0055 7b08          	ld	a,(OFST+7,sp)
1440  0057 a420          	and	a,#32
1441  0059 6b01          	ld	(OFST+0,sp),a
1442  005b 7b03          	ld	a,(OFST+2,sp)
1443  005d a410          	and	a,#16
1444  005f 1a01          	or	a,(OFST+0,sp)
1445  0061 ca525d        	or	a,21085
1446  0064 c7525d        	ld	21085,a
1447                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1447                     ; 358                           TIM1_OCMode);
1449  0067 c6525b        	ld	a,21083
1450  006a a48f          	and	a,#143
1451  006c 1a02          	or	a,(OFST+1,sp)
1452  006e c7525b        	ld	21083,a
1453                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1455  0071 7b09          	ld	a,(OFST+8,sp)
1456  0073 270a          	jreq	L734
1457                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1459  0075 c6526f        	ld	a,21103
1460  0078 aadf          	or	a,#223
1461  007a c7526f        	ld	21103,a
1463  007d 2004          	jra	L144
1464  007f               L734:
1465                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1467  007f 721d526f      	bres	21103,#6
1468  0083               L144:
1469                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1471  0083 7b06          	ld	a,(OFST+5,sp)
1472  0085 c7526b        	ld	21099,a
1473                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1475  0088 7b07          	ld	a,(OFST+6,sp)
1476  008a c7526c        	ld	21100,a
1477                     ; 373 }
1480  008d 5b03          	addw	sp,#3
1481  008f 81            	ret	
1482  0090               LC004:
1483  0090 89            	pushw	x
1484  0091 5f            	clrw	x
1485  0092 89            	pushw	x
1486  0093 ae0000        	ldw	x,#L101
1487  0096 cd0000        	call	_assert_failed
1489  0099 5b04          	addw	sp,#4
1490  009b 81            	ret	
1696                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1696                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1696                     ; 390                      uint8_t TIM1_DeadTime,
1696                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1696                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1696                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1696                     ; 394 {
1697                     .text:	section	.text,new
1698  0000               _TIM1_BDTRConfig:
1700  0000 89            	pushw	x
1701  0001 88            	push	a
1702       00000001      OFST:	set	1
1705                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1707  0002 9e            	ld	a,xh
1708  0003 a104          	cp	a,#4
1709  0005 2709          	jreq	L643
1710  0007 9e            	ld	a,xh
1711  0008 4d            	tnz	a
1712  0009 2705          	jreq	L643
1713  000b ae018c        	ldw	x,#396
1714  000e ad59          	call	LC005
1715  0010               L643:
1716                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1718  0010 7b03          	ld	a,(OFST+2,sp)
1719  0012 2711          	jreq	L653
1720  0014 a101          	cp	a,#1
1721  0016 270d          	jreq	L653
1722  0018 a102          	cp	a,#2
1723  001a 2709          	jreq	L653
1724  001c a103          	cp	a,#3
1725  001e 2705          	jreq	L653
1726  0020 ae018d        	ldw	x,#397
1727  0023 ad44          	call	LC005
1728  0025               L653:
1729                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1731  0025 7b07          	ld	a,(OFST+6,sp)
1732  0027 a110          	cp	a,#16
1733  0029 2709          	jreq	L663
1734  002b 7b07          	ld	a,(OFST+6,sp)
1735  002d 2705          	jreq	L663
1736  002f ae018e        	ldw	x,#398
1737  0032 ad35          	call	LC005
1738  0034               L663:
1739                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1741  0034 7b08          	ld	a,(OFST+7,sp)
1742  0036 2709          	jreq	L673
1743  0038 a120          	cp	a,#32
1744  003a 2705          	jreq	L673
1745  003c ae018f        	ldw	x,#399
1746  003f ad28          	call	LC005
1747  0041               L673:
1748                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1750  0041 7b09          	ld	a,(OFST+8,sp)
1751  0043 a140          	cp	a,#64
1752  0045 2709          	jreq	L604
1753  0047 7b09          	ld	a,(OFST+8,sp)
1754  0049 2705          	jreq	L604
1755  004b ae0190        	ldw	x,#400
1756  004e ad19          	call	LC005
1757  0050               L604:
1758                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1760  0050 7b06          	ld	a,(OFST+5,sp)
1761  0052 c7526e        	ld	21102,a
1762                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1762                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1762                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1764  0055 7b07          	ld	a,(OFST+6,sp)
1765  0057 1a08          	or	a,(OFST+7,sp)
1766  0059 1a09          	or	a,(OFST+8,sp)
1767  005b 6b01          	ld	(OFST+0,sp),a
1768  005d 7b02          	ld	a,(OFST+1,sp)
1769  005f 1a03          	or	a,(OFST+2,sp)
1770  0061 1a01          	or	a,(OFST+0,sp)
1771  0063 c7526d        	ld	21101,a
1772                     ; 409 }
1775  0066 5b03          	addw	sp,#3
1776  0068 81            	ret	
1777  0069               LC005:
1778  0069 89            	pushw	x
1779  006a 5f            	clrw	x
1780  006b 89            	pushw	x
1781  006c ae0000        	ldw	x,#L101
1782  006f cd0000        	call	_assert_failed
1784  0072 5b04          	addw	sp,#4
1785  0074 81            	ret	
1988                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1988                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1988                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1988                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1988                     ; 427                  uint8_t TIM1_ICFilter)
1988                     ; 428 {
1989                     .text:	section	.text,new
1990  0000               _TIM1_ICInit:
1992  0000 89            	pushw	x
1993       00000000      OFST:	set	0
1996                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1998  0001 9e            	ld	a,xh
1999  0002 4d            	tnz	a
2000  0003 2714          	jreq	L024
2001  0005 9e            	ld	a,xh
2002  0006 4a            	dec	a
2003  0007 2710          	jreq	L024
2004  0009 9e            	ld	a,xh
2005  000a a102          	cp	a,#2
2006  000c 270b          	jreq	L024
2007  000e 9e            	ld	a,xh
2008  000f a103          	cp	a,#3
2009  0011 2706          	jreq	L024
2010  0013 ae01ae        	ldw	x,#430
2011  0016 cd00b5        	call	LC006
2012  0019               L024:
2013                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2015  0019 7b02          	ld	a,(OFST+2,sp)
2016  001b 2709          	jreq	L034
2017  001d 4a            	dec	a
2018  001e 2706          	jreq	L034
2019  0020 ae01af        	ldw	x,#431
2020  0023 cd00b5        	call	LC006
2021  0026               L034:
2022                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2024  0026 7b05          	ld	a,(OFST+5,sp)
2025  0028 a101          	cp	a,#1
2026  002a 270d          	jreq	L044
2027  002c a102          	cp	a,#2
2028  002e 2709          	jreq	L044
2029  0030 a103          	cp	a,#3
2030  0032 2705          	jreq	L044
2031  0034 ae01b0        	ldw	x,#432
2032  0037 ad7c          	call	LC006
2033  0039               L044:
2034                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2036  0039 7b06          	ld	a,(OFST+6,sp)
2037  003b 2711          	jreq	L054
2038  003d a104          	cp	a,#4
2039  003f 270d          	jreq	L054
2040  0041 a108          	cp	a,#8
2041  0043 2709          	jreq	L054
2042  0045 a10c          	cp	a,#12
2043  0047 2705          	jreq	L054
2044  0049 ae01b1        	ldw	x,#433
2045  004c ad67          	call	LC006
2046  004e               L054:
2047                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2049  004e 7b07          	ld	a,(OFST+7,sp)
2050  0050 a110          	cp	a,#16
2051  0052 2505          	jrult	L654
2052  0054 ae01b2        	ldw	x,#434
2053  0057 ad5c          	call	LC006
2054  0059               L654:
2055                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2057  0059 7b01          	ld	a,(OFST+1,sp)
2058  005b 2614          	jrne	L176
2059                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2059                     ; 440                (uint8_t)TIM1_ICSelection,
2059                     ; 441                (uint8_t)TIM1_ICFilter);
2061  005d 7b07          	ld	a,(OFST+7,sp)
2062  005f 88            	push	a
2063  0060 7b06          	ld	a,(OFST+6,sp)
2064  0062 97            	ld	xl,a
2065  0063 7b03          	ld	a,(OFST+3,sp)
2066  0065 95            	ld	xh,a
2067  0066 cd0000        	call	L3_TI1_Config
2069  0069 84            	pop	a
2070                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2072  006a 7b06          	ld	a,(OFST+6,sp)
2073  006c cd0000        	call	_TIM1_SetIC1Prescaler
2076  006f 2042          	jra	L376
2077  0071               L176:
2078                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2080  0071 a101          	cp	a,#1
2081  0073 2614          	jrne	L576
2082                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2082                     ; 449                (uint8_t)TIM1_ICSelection,
2082                     ; 450                (uint8_t)TIM1_ICFilter);
2084  0075 7b07          	ld	a,(OFST+7,sp)
2085  0077 88            	push	a
2086  0078 7b06          	ld	a,(OFST+6,sp)
2087  007a 97            	ld	xl,a
2088  007b 7b03          	ld	a,(OFST+3,sp)
2089  007d 95            	ld	xh,a
2090  007e cd0000        	call	L5_TI2_Config
2092  0081 84            	pop	a
2093                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2095  0082 7b06          	ld	a,(OFST+6,sp)
2096  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2099  0087 202a          	jra	L376
2100  0089               L576:
2101                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2103  0089 a102          	cp	a,#2
2104  008b 2614          	jrne	L107
2105                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2105                     ; 458                (uint8_t)TIM1_ICSelection,
2105                     ; 459                (uint8_t)TIM1_ICFilter);
2107  008d 7b07          	ld	a,(OFST+7,sp)
2108  008f 88            	push	a
2109  0090 7b06          	ld	a,(OFST+6,sp)
2110  0092 97            	ld	xl,a
2111  0093 7b03          	ld	a,(OFST+3,sp)
2112  0095 95            	ld	xh,a
2113  0096 cd0000        	call	L7_TI3_Config
2115  0099 84            	pop	a
2116                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2118  009a 7b06          	ld	a,(OFST+6,sp)
2119  009c cd0000        	call	_TIM1_SetIC3Prescaler
2122  009f 2012          	jra	L376
2123  00a1               L107:
2124                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2124                     ; 467                (uint8_t)TIM1_ICSelection,
2124                     ; 468                (uint8_t)TIM1_ICFilter);
2126  00a1 7b07          	ld	a,(OFST+7,sp)
2127  00a3 88            	push	a
2128  00a4 7b06          	ld	a,(OFST+6,sp)
2129  00a6 97            	ld	xl,a
2130  00a7 7b03          	ld	a,(OFST+3,sp)
2131  00a9 95            	ld	xh,a
2132  00aa cd0000        	call	L11_TI4_Config
2134  00ad 84            	pop	a
2135                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2137  00ae 7b06          	ld	a,(OFST+6,sp)
2138  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2140  00b3               L376:
2141                     ; 472 }
2144  00b3 85            	popw	x
2145  00b4 81            	ret	
2146  00b5               LC006:
2147  00b5 89            	pushw	x
2148  00b6 5f            	clrw	x
2149  00b7 89            	pushw	x
2150  00b8 ae0000        	ldw	x,#L101
2151  00bb cd0000        	call	_assert_failed
2153  00be 5b04          	addw	sp,#4
2154  00c0 81            	ret	
2251                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2251                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2251                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2251                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2251                     ; 492                      uint8_t TIM1_ICFilter)
2251                     ; 493 {
2252                     .text:	section	.text,new
2253  0000               _TIM1_PWMIConfig:
2255  0000 89            	pushw	x
2256  0001 89            	pushw	x
2257       00000002      OFST:	set	2
2260                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2262                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2264                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2266  0002 9e            	ld	a,xh
2267  0003 4d            	tnz	a
2268  0004 270a          	jreq	L015
2269  0006 9e            	ld	a,xh
2270  0007 4a            	dec	a
2271  0008 2706          	jreq	L015
2272  000a ae01f2        	ldw	x,#498
2273  000d cd00ac        	call	LC007
2274  0010               L015:
2275                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2277  0010 7b04          	ld	a,(OFST+2,sp)
2278  0012 2709          	jreq	L025
2279  0014 4a            	dec	a
2280  0015 2706          	jreq	L025
2281  0017 ae01f3        	ldw	x,#499
2282  001a cd00ac        	call	LC007
2283  001d               L025:
2284                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2286  001d 7b07          	ld	a,(OFST+5,sp)
2287  001f a101          	cp	a,#1
2288  0021 270d          	jreq	L035
2289  0023 a102          	cp	a,#2
2290  0025 2709          	jreq	L035
2291  0027 a103          	cp	a,#3
2292  0029 2705          	jreq	L035
2293  002b ae01f4        	ldw	x,#500
2294  002e ad7c          	call	LC007
2295  0030               L035:
2296                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2298  0030 7b08          	ld	a,(OFST+6,sp)
2299  0032 2711          	jreq	L045
2300  0034 a104          	cp	a,#4
2301  0036 270d          	jreq	L045
2302  0038 a108          	cp	a,#8
2303  003a 2709          	jreq	L045
2304  003c a10c          	cp	a,#12
2305  003e 2705          	jreq	L045
2306  0040 ae01f5        	ldw	x,#501
2307  0043 ad67          	call	LC007
2308  0045               L045:
2309                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2311  0045 7b04          	ld	a,(OFST+2,sp)
2312  0047 4a            	dec	a
2313  0048 2702          	jreq	L357
2314                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2316  004a a601          	ld	a,#1
2318  004c               L357:
2319                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2321  004c 6b01          	ld	(OFST-1,sp),a
2322                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2324  004e 7b07          	ld	a,(OFST+5,sp)
2325  0050 4a            	dec	a
2326  0051 2604          	jrne	L757
2327                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2329  0053 a602          	ld	a,#2
2331  0055 2002          	jra	L167
2332  0057               L757:
2333                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2335  0057 a601          	ld	a,#1
2336  0059               L167:
2337  0059 6b02          	ld	(OFST+0,sp),a
2338                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2340  005b 7b03          	ld	a,(OFST+1,sp)
2341  005d 2626          	jrne	L367
2342                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2342                     ; 527                (uint8_t)TIM1_ICFilter);
2344  005f 7b09          	ld	a,(OFST+7,sp)
2345  0061 88            	push	a
2346  0062 7b08          	ld	a,(OFST+6,sp)
2347  0064 97            	ld	xl,a
2348  0065 7b05          	ld	a,(OFST+3,sp)
2349  0067 95            	ld	xh,a
2350  0068 cd0000        	call	L3_TI1_Config
2352  006b 84            	pop	a
2353                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2355  006c 7b08          	ld	a,(OFST+6,sp)
2356  006e cd0000        	call	_TIM1_SetIC1Prescaler
2358                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2360  0071 7b09          	ld	a,(OFST+7,sp)
2361  0073 88            	push	a
2362  0074 7b03          	ld	a,(OFST+1,sp)
2363  0076 97            	ld	xl,a
2364  0077 7b02          	ld	a,(OFST+0,sp)
2365  0079 95            	ld	xh,a
2366  007a cd0000        	call	L5_TI2_Config
2368  007d 84            	pop	a
2369                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2371  007e 7b08          	ld	a,(OFST+6,sp)
2372  0080 cd0000        	call	_TIM1_SetIC2Prescaler
2375  0083 2024          	jra	L567
2376  0085               L367:
2377                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2377                     ; 542                (uint8_t)TIM1_ICFilter);
2379  0085 7b09          	ld	a,(OFST+7,sp)
2380  0087 88            	push	a
2381  0088 7b08          	ld	a,(OFST+6,sp)
2382  008a 97            	ld	xl,a
2383  008b 7b05          	ld	a,(OFST+3,sp)
2384  008d 95            	ld	xh,a
2385  008e cd0000        	call	L5_TI2_Config
2387  0091 84            	pop	a
2388                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2390  0092 7b08          	ld	a,(OFST+6,sp)
2391  0094 cd0000        	call	_TIM1_SetIC2Prescaler
2393                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2395  0097 7b09          	ld	a,(OFST+7,sp)
2396  0099 88            	push	a
2397  009a 7b03          	ld	a,(OFST+1,sp)
2398  009c 97            	ld	xl,a
2399  009d 7b02          	ld	a,(OFST+0,sp)
2400  009f 95            	ld	xh,a
2401  00a0 cd0000        	call	L3_TI1_Config
2403  00a3 84            	pop	a
2404                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2406  00a4 7b08          	ld	a,(OFST+6,sp)
2407  00a6 cd0000        	call	_TIM1_SetIC1Prescaler
2409  00a9               L567:
2410                     ; 553 }
2413  00a9 5b04          	addw	sp,#4
2414  00ab 81            	ret	
2415  00ac               LC007:
2416  00ac 89            	pushw	x
2417  00ad 5f            	clrw	x
2418  00ae 89            	pushw	x
2419  00af ae0000        	ldw	x,#L101
2420  00b2 cd0000        	call	_assert_failed
2422  00b5 5b04          	addw	sp,#4
2423  00b7 81            	ret	
2479                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2479                     ; 562 {
2480                     .text:	section	.text,new
2481  0000               _TIM1_Cmd:
2483  0000 88            	push	a
2484       00000000      OFST:	set	0
2487                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2489  0001 4d            	tnz	a
2490  0002 2711          	jreq	L275
2491  0004 4a            	dec	a
2492  0005 270e          	jreq	L275
2493  0007 ae0234        	ldw	x,#564
2494  000a 89            	pushw	x
2495  000b 5f            	clrw	x
2496  000c 89            	pushw	x
2497  000d ae0000        	ldw	x,#L101
2498  0010 cd0000        	call	_assert_failed
2500  0013 5b04          	addw	sp,#4
2501  0015               L275:
2502                     ; 567   if (NewState != DISABLE)
2504  0015 7b01          	ld	a,(OFST+1,sp)
2505  0017 2706          	jreq	L5101
2506                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2508  0019 72105250      	bset	21072,#0
2510  001d 2004          	jra	L7101
2511  001f               L5101:
2512                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2514  001f 72115250      	bres	21072,#0
2515  0023               L7101:
2516                     ; 575 }
2519  0023 84            	pop	a
2520  0024 81            	ret	
2557                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2557                     ; 584 {
2558                     .text:	section	.text,new
2559  0000               _TIM1_CtrlPWMOutputs:
2561  0000 88            	push	a
2562       00000000      OFST:	set	0
2565                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2567  0001 4d            	tnz	a
2568  0002 2711          	jreq	L406
2569  0004 4a            	dec	a
2570  0005 270e          	jreq	L406
2571  0007 ae024a        	ldw	x,#586
2572  000a 89            	pushw	x
2573  000b 5f            	clrw	x
2574  000c 89            	pushw	x
2575  000d ae0000        	ldw	x,#L101
2576  0010 cd0000        	call	_assert_failed
2578  0013 5b04          	addw	sp,#4
2579  0015               L406:
2580                     ; 590   if (NewState != DISABLE)
2582  0015 7b01          	ld	a,(OFST+1,sp)
2583  0017 2706          	jreq	L7301
2584                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2586  0019 721e526d      	bset	21101,#7
2588  001d 2004          	jra	L1401
2589  001f               L7301:
2590                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2592  001f 721f526d      	bres	21101,#7
2593  0023               L1401:
2594                     ; 598 }
2597  0023 84            	pop	a
2598  0024 81            	ret	
2706                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2706                     ; 618 {
2707                     .text:	section	.text,new
2708  0000               _TIM1_ITConfig:
2710  0000 89            	pushw	x
2711       00000000      OFST:	set	0
2714                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2716  0001 9e            	ld	a,xh
2717  0002 4d            	tnz	a
2718  0003 2605          	jrne	L416
2719  0005 ae026c        	ldw	x,#620
2720  0008 ad22          	call	LC008
2721  000a               L416:
2722                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2724  000a 7b02          	ld	a,(OFST+2,sp)
2725  000c 2708          	jreq	L426
2726  000e 4a            	dec	a
2727  000f 2705          	jreq	L426
2728  0011 ae026d        	ldw	x,#621
2729  0014 ad16          	call	LC008
2730  0016               L426:
2731                     ; 623   if (NewState != DISABLE)
2733  0016 7b02          	ld	a,(OFST+2,sp)
2734  0018 2707          	jreq	L1111
2735                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2737  001a c65254        	ld	a,21076
2738  001d 1a01          	or	a,(OFST+1,sp)
2740  001f 2006          	jra	L3111
2741  0021               L1111:
2742                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2744  0021 7b01          	ld	a,(OFST+1,sp)
2745  0023 43            	cpl	a
2746  0024 c45254        	and	a,21076
2747  0027               L3111:
2748  0027 c75254        	ld	21076,a
2749                     ; 633 }
2752  002a 85            	popw	x
2753  002b 81            	ret	
2754  002c               LC008:
2755  002c 89            	pushw	x
2756  002d 5f            	clrw	x
2757  002e 89            	pushw	x
2758  002f ae0000        	ldw	x,#L101
2759  0032 cd0000        	call	_assert_failed
2761  0035 5b04          	addw	sp,#4
2762  0037 81            	ret	
2786                     ; 640 void TIM1_InternalClockConfig(void)
2786                     ; 641 {
2787                     .text:	section	.text,new
2788  0000               _TIM1_InternalClockConfig:
2792                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2794  0000 c65252        	ld	a,21074
2795  0003 a4f8          	and	a,#248
2796  0005 c75252        	ld	21074,a
2797                     ; 644 }
2800  0008 81            	ret	
2918                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2918                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2918                     ; 664                               uint8_t ExtTRGFilter)
2918                     ; 665 {
2919                     .text:	section	.text,new
2920  0000               _TIM1_ETRClockMode1Config:
2922  0000 89            	pushw	x
2923       00000000      OFST:	set	0
2926                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2928  0001 9e            	ld	a,xh
2929  0002 4d            	tnz	a
2930  0003 2714          	jreq	L046
2931  0005 9e            	ld	a,xh
2932  0006 a110          	cp	a,#16
2933  0008 270f          	jreq	L046
2934  000a 9e            	ld	a,xh
2935  000b a120          	cp	a,#32
2936  000d 270a          	jreq	L046
2937  000f 9e            	ld	a,xh
2938  0010 a130          	cp	a,#48
2939  0012 2705          	jreq	L046
2940  0014 ae029b        	ldw	x,#667
2941  0017 ad26          	call	LC009
2942  0019               L046:
2943                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2945  0019 7b02          	ld	a,(OFST+2,sp)
2946  001b a180          	cp	a,#128
2947  001d 2709          	jreq	L056
2948  001f 7b02          	ld	a,(OFST+2,sp)
2949  0021 2705          	jreq	L056
2950  0023 ae029c        	ldw	x,#668
2951  0026 ad17          	call	LC009
2952  0028               L056:
2953                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2955  0028 7b05          	ld	a,(OFST+5,sp)
2956  002a 88            	push	a
2957  002b 7b03          	ld	a,(OFST+3,sp)
2958  002d 97            	ld	xl,a
2959  002e 7b02          	ld	a,(OFST+2,sp)
2960  0030 95            	ld	xh,a
2961  0031 cd0000        	call	_TIM1_ETRConfig
2963  0034 84            	pop	a
2964                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2964                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2966  0035 c65252        	ld	a,21074
2967  0038 aa77          	or	a,#119
2968  003a c75252        	ld	21074,a
2969                     ; 676 }
2972  003d 85            	popw	x
2973  003e 81            	ret	
2974  003f               LC009:
2975  003f 89            	pushw	x
2976  0040 5f            	clrw	x
2977  0041 89            	pushw	x
2978  0042 ae0000        	ldw	x,#L101
2979  0045 cd0000        	call	_assert_failed
2981  0048 5b04          	addw	sp,#4
2982  004a 81            	ret	
3041                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3041                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3041                     ; 696                               uint8_t ExtTRGFilter)
3041                     ; 697 {
3042                     .text:	section	.text,new
3043  0000               _TIM1_ETRClockMode2Config:
3045  0000 89            	pushw	x
3046       00000000      OFST:	set	0
3049                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3051  0001 9e            	ld	a,xh
3052  0002 4d            	tnz	a
3053  0003 2714          	jreq	L466
3054  0005 9e            	ld	a,xh
3055  0006 a110          	cp	a,#16
3056  0008 270f          	jreq	L466
3057  000a 9e            	ld	a,xh
3058  000b a120          	cp	a,#32
3059  000d 270a          	jreq	L466
3060  000f 9e            	ld	a,xh
3061  0010 a130          	cp	a,#48
3062  0012 2705          	jreq	L466
3063  0014 ae02bb        	ldw	x,#699
3064  0017 ad22          	call	LC010
3065  0019               L466:
3066                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3068  0019 7b02          	ld	a,(OFST+2,sp)
3069  001b a180          	cp	a,#128
3070  001d 2709          	jreq	L476
3071  001f 7b02          	ld	a,(OFST+2,sp)
3072  0021 2705          	jreq	L476
3073  0023 ae02bc        	ldw	x,#700
3074  0026 ad13          	call	LC010
3075  0028               L476:
3076                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3078  0028 7b05          	ld	a,(OFST+5,sp)
3079  002a 88            	push	a
3080  002b 7b03          	ld	a,(OFST+3,sp)
3081  002d 97            	ld	xl,a
3082  002e 7b02          	ld	a,(OFST+2,sp)
3083  0030 95            	ld	xh,a
3084  0031 cd0000        	call	_TIM1_ETRConfig
3086  0034 721c5253      	bset	21075,#6
3087  0038 84            	pop	a
3088                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3090                     ; 707 }
3093  0039 85            	popw	x
3094  003a 81            	ret	
3095  003b               LC010:
3096  003b 89            	pushw	x
3097  003c 5f            	clrw	x
3098  003d 89            	pushw	x
3099  003e ae0000        	ldw	x,#L101
3100  0041 cd0000        	call	_assert_failed
3102  0044 5b04          	addw	sp,#4
3103  0046 81            	ret	
3160                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3160                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3160                     ; 727                     uint8_t ExtTRGFilter)
3160                     ; 728 {
3161                     .text:	section	.text,new
3162  0000               _TIM1_ETRConfig:
3164  0000 89            	pushw	x
3165       00000000      OFST:	set	0
3168                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3170  0001 7b05          	ld	a,(OFST+5,sp)
3171  0003 a110          	cp	a,#16
3172  0005 250e          	jrult	L607
3173  0007 ae02da        	ldw	x,#730
3174  000a 89            	pushw	x
3175  000b 5f            	clrw	x
3176  000c 89            	pushw	x
3177  000d ae0000        	ldw	x,#L101
3178  0010 cd0000        	call	_assert_failed
3180  0013 5b04          	addw	sp,#4
3181  0015               L607:
3182                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3182                     ; 733                          (uint8_t)ExtTRGFilter );
3184  0015 7b01          	ld	a,(OFST+1,sp)
3185  0017 1a02          	or	a,(OFST+2,sp)
3186  0019 1a05          	or	a,(OFST+5,sp)
3187  001b ca5253        	or	a,21075
3188  001e c75253        	ld	21075,a
3189                     ; 734 }
3192  0021 85            	popw	x
3193  0022 81            	ret	
3283                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3283                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3283                     ; 753                                  uint8_t ICFilter)
3283                     ; 754 {
3284                     .text:	section	.text,new
3285  0000               _TIM1_TIxExternalClockConfig:
3287  0000 89            	pushw	x
3288       00000000      OFST:	set	0
3291                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3293  0001 9e            	ld	a,xh
3294  0002 a140          	cp	a,#64
3295  0004 270f          	jreq	L027
3296  0006 9e            	ld	a,xh
3297  0007 a160          	cp	a,#96
3298  0009 270a          	jreq	L027
3299  000b 9e            	ld	a,xh
3300  000c a150          	cp	a,#80
3301  000e 2705          	jreq	L027
3302  0010 ae02f4        	ldw	x,#756
3303  0013 ad47          	call	LC011
3304  0015               L027:
3305                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3307  0015 7b02          	ld	a,(OFST+2,sp)
3308  0017 2708          	jreq	L037
3309  0019 4a            	dec	a
3310  001a 2705          	jreq	L037
3311  001c ae02f5        	ldw	x,#757
3312  001f ad3b          	call	LC011
3313  0021               L037:
3314                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3316  0021 7b05          	ld	a,(OFST+5,sp)
3317  0023 a110          	cp	a,#16
3318  0025 2505          	jrult	L637
3319  0027 ae02f6        	ldw	x,#758
3320  002a ad30          	call	LC011
3321  002c               L637:
3322                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3324  002c 7b01          	ld	a,(OFST+1,sp)
3325  002e a160          	cp	a,#96
3326  0030 260e          	jrne	L3131
3327                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3329  0032 7b05          	ld	a,(OFST+5,sp)
3330  0034 88            	push	a
3331  0035 ae0001        	ldw	x,#1
3332  0038 7b03          	ld	a,(OFST+3,sp)
3333  003a 95            	ld	xh,a
3334  003b cd0000        	call	L5_TI2_Config
3337  003e 200c          	jra	L5131
3338  0040               L3131:
3339                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3341  0040 7b05          	ld	a,(OFST+5,sp)
3342  0042 88            	push	a
3343  0043 ae0001        	ldw	x,#1
3344  0046 7b03          	ld	a,(OFST+3,sp)
3345  0048 95            	ld	xh,a
3346  0049 cd0000        	call	L3_TI1_Config
3348  004c               L5131:
3349  004c 84            	pop	a
3350                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3352  004d 7b01          	ld	a,(OFST+1,sp)
3353  004f cd0000        	call	_TIM1_SelectInputTrigger
3355                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3357  0052 c65252        	ld	a,21074
3358  0055 aa07          	or	a,#7
3359  0057 c75252        	ld	21074,a
3360                     ; 775 }
3363  005a 85            	popw	x
3364  005b 81            	ret	
3365  005c               LC011:
3366  005c 89            	pushw	x
3367  005d 5f            	clrw	x
3368  005e 89            	pushw	x
3369  005f ae0000        	ldw	x,#L101
3370  0062 cd0000        	call	_assert_failed
3372  0065 5b04          	addw	sp,#4
3373  0067 81            	ret	
3459                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3459                     ; 788 {
3460                     .text:	section	.text,new
3461  0000               _TIM1_SelectInputTrigger:
3463  0000 88            	push	a
3464       00000000      OFST:	set	0
3467                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3469  0001 a140          	cp	a,#64
3470  0003 2721          	jreq	L657
3471  0005 a150          	cp	a,#80
3472  0007 271d          	jreq	L657
3473  0009 a160          	cp	a,#96
3474  000b 2719          	jreq	L657
3475  000d a170          	cp	a,#112
3476  000f 2715          	jreq	L657
3477  0011 a130          	cp	a,#48
3478  0013 2711          	jreq	L657
3479  0015 4d            	tnz	a
3480  0016 270e          	jreq	L657
3481  0018 ae0316        	ldw	x,#790
3482  001b 89            	pushw	x
3483  001c 5f            	clrw	x
3484  001d 89            	pushw	x
3485  001e ae0000        	ldw	x,#L101
3486  0021 cd0000        	call	_assert_failed
3488  0024 5b04          	addw	sp,#4
3489  0026               L657:
3490                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3492  0026 c65252        	ld	a,21074
3493  0029 a48f          	and	a,#143
3494  002b 1a01          	or	a,(OFST+1,sp)
3495  002d c75252        	ld	21074,a
3496                     ; 794 }
3499  0030 84            	pop	a
3500  0031 81            	ret	
3537                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3537                     ; 804 {
3538                     .text:	section	.text,new
3539  0000               _TIM1_UpdateDisableConfig:
3541  0000 88            	push	a
3542       00000000      OFST:	set	0
3545                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3547  0001 4d            	tnz	a
3548  0002 2711          	jreq	L077
3549  0004 4a            	dec	a
3550  0005 270e          	jreq	L077
3551  0007 ae0326        	ldw	x,#806
3552  000a 89            	pushw	x
3553  000b 5f            	clrw	x
3554  000c 89            	pushw	x
3555  000d ae0000        	ldw	x,#L101
3556  0010 cd0000        	call	_assert_failed
3558  0013 5b04          	addw	sp,#4
3559  0015               L077:
3560                     ; 809   if (NewState != DISABLE)
3562  0015 7b01          	ld	a,(OFST+1,sp)
3563  0017 2706          	jreq	L3731
3564                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3566  0019 72125250      	bset	21072,#1
3568  001d 2004          	jra	L5731
3569  001f               L3731:
3570                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3572  001f 72135250      	bres	21072,#1
3573  0023               L5731:
3574                     ; 817 }
3577  0023 84            	pop	a
3578  0024 81            	ret	
3637                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3637                     ; 828 {
3638                     .text:	section	.text,new
3639  0000               _TIM1_UpdateRequestConfig:
3641  0000 88            	push	a
3642       00000000      OFST:	set	0
3645                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3647  0001 4d            	tnz	a
3648  0002 2711          	jreq	L2001
3649  0004 4a            	dec	a
3650  0005 270e          	jreq	L2001
3651  0007 ae033e        	ldw	x,#830
3652  000a 89            	pushw	x
3653  000b 5f            	clrw	x
3654  000c 89            	pushw	x
3655  000d ae0000        	ldw	x,#L101
3656  0010 cd0000        	call	_assert_failed
3658  0013 5b04          	addw	sp,#4
3659  0015               L2001:
3660                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3662  0015 7b01          	ld	a,(OFST+1,sp)
3663  0017 2706          	jreq	L5241
3664                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3666  0019 72145250      	bset	21072,#2
3668  001d 2004          	jra	L7241
3669  001f               L5241:
3670                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3672  001f 72155250      	bres	21072,#2
3673  0023               L7241:
3674                     ; 841 }
3677  0023 84            	pop	a
3678  0024 81            	ret	
3715                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3715                     ; 850 {
3716                     .text:	section	.text,new
3717  0000               _TIM1_SelectHallSensor:
3719  0000 88            	push	a
3720       00000000      OFST:	set	0
3723                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3725  0001 4d            	tnz	a
3726  0002 2711          	jreq	L4101
3727  0004 4a            	dec	a
3728  0005 270e          	jreq	L4101
3729  0007 ae0354        	ldw	x,#852
3730  000a 89            	pushw	x
3731  000b 5f            	clrw	x
3732  000c 89            	pushw	x
3733  000d ae0000        	ldw	x,#L101
3734  0010 cd0000        	call	_assert_failed
3736  0013 5b04          	addw	sp,#4
3737  0015               L4101:
3738                     ; 855   if (NewState != DISABLE)
3740  0015 7b01          	ld	a,(OFST+1,sp)
3741  0017 2706          	jreq	L7441
3742                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3744  0019 721e5251      	bset	21073,#7
3746  001d 2004          	jra	L1541
3747  001f               L7441:
3748                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3750  001f 721f5251      	bres	21073,#7
3751  0023               L1541:
3752                     ; 863 }
3755  0023 84            	pop	a
3756  0024 81            	ret	
3814                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3814                     ; 874 {
3815                     .text:	section	.text,new
3816  0000               _TIM1_SelectOnePulseMode:
3818  0000 88            	push	a
3819       00000000      OFST:	set	0
3822                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3824  0001 a101          	cp	a,#1
3825  0003 2711          	jreq	L6201
3826  0005 4d            	tnz	a
3827  0006 270e          	jreq	L6201
3828  0008 ae036c        	ldw	x,#876
3829  000b 89            	pushw	x
3830  000c 5f            	clrw	x
3831  000d 89            	pushw	x
3832  000e ae0000        	ldw	x,#L101
3833  0011 cd0000        	call	_assert_failed
3835  0014 5b04          	addw	sp,#4
3836  0016               L6201:
3837                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3839  0016 7b01          	ld	a,(OFST+1,sp)
3840  0018 2706          	jreq	L1051
3841                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3843  001a 72165250      	bset	21072,#3
3845  001e 2004          	jra	L3051
3846  0020               L1051:
3847                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3849  0020 72175250      	bres	21072,#3
3850  0024               L3051:
3851                     ; 888 }
3854  0024 84            	pop	a
3855  0025 81            	ret	
3954                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3954                     ; 904 {
3955                     .text:	section	.text,new
3956  0000               _TIM1_SelectOutputTrigger:
3958  0000 88            	push	a
3959       00000000      OFST:	set	0
3962                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3964  0001 4d            	tnz	a
3965  0002 2726          	jreq	L0401
3966  0004 a110          	cp	a,#16
3967  0006 2722          	jreq	L0401
3968  0008 a120          	cp	a,#32
3969  000a 271e          	jreq	L0401
3970  000c a130          	cp	a,#48
3971  000e 271a          	jreq	L0401
3972  0010 a140          	cp	a,#64
3973  0012 2716          	jreq	L0401
3974  0014 a150          	cp	a,#80
3975  0016 2712          	jreq	L0401
3976  0018 a160          	cp	a,#96
3977  001a 270e          	jreq	L0401
3978  001c ae038a        	ldw	x,#906
3979  001f 89            	pushw	x
3980  0020 5f            	clrw	x
3981  0021 89            	pushw	x
3982  0022 ae0000        	ldw	x,#L101
3983  0025 cd0000        	call	_assert_failed
3985  0028 5b04          	addw	sp,#4
3986  002a               L0401:
3987                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3987                     ; 910                         (uint8_t) TIM1_TRGOSource);
3989  002a c65251        	ld	a,21073
3990  002d a48f          	and	a,#143
3991  002f 1a01          	or	a,(OFST+1,sp)
3992  0031 c75251        	ld	21073,a
3993                     ; 911 }
3996  0034 84            	pop	a
3997  0035 81            	ret	
4072                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4072                     ; 924 {
4073                     .text:	section	.text,new
4074  0000               _TIM1_SelectSlaveMode:
4076  0000 88            	push	a
4077       00000000      OFST:	set	0
4080                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4082  0001 a104          	cp	a,#4
4083  0003 271a          	jreq	L2501
4084  0005 a105          	cp	a,#5
4085  0007 2716          	jreq	L2501
4086  0009 a106          	cp	a,#6
4087  000b 2712          	jreq	L2501
4088  000d a107          	cp	a,#7
4089  000f 270e          	jreq	L2501
4090  0011 ae039e        	ldw	x,#926
4091  0014 89            	pushw	x
4092  0015 5f            	clrw	x
4093  0016 89            	pushw	x
4094  0017 ae0000        	ldw	x,#L101
4095  001a cd0000        	call	_assert_failed
4097  001d 5b04          	addw	sp,#4
4098  001f               L2501:
4099                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4099                     ; 930                          (uint8_t)TIM1_SlaveMode);
4101  001f c65252        	ld	a,21074
4102  0022 a4f8          	and	a,#248
4103  0024 1a01          	or	a,(OFST+1,sp)
4104  0026 c75252        	ld	21074,a
4105                     ; 931 }
4108  0029 84            	pop	a
4109  002a 81            	ret	
4146                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4146                     ; 940 {
4147                     .text:	section	.text,new
4148  0000               _TIM1_SelectMasterSlaveMode:
4150  0000 88            	push	a
4151       00000000      OFST:	set	0
4154                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4156  0001 4d            	tnz	a
4157  0002 2711          	jreq	L4601
4158  0004 4a            	dec	a
4159  0005 270e          	jreq	L4601
4160  0007 ae03ae        	ldw	x,#942
4161  000a 89            	pushw	x
4162  000b 5f            	clrw	x
4163  000c 89            	pushw	x
4164  000d ae0000        	ldw	x,#L101
4165  0010 cd0000        	call	_assert_failed
4167  0013 5b04          	addw	sp,#4
4168  0015               L4601:
4169                     ; 945   if (NewState != DISABLE)
4171  0015 7b01          	ld	a,(OFST+1,sp)
4172  0017 2706          	jreq	L5161
4173                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4175  0019 721e5252      	bset	21074,#7
4177  001d 2004          	jra	L7161
4178  001f               L5161:
4179                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4181  001f 721f5252      	bres	21074,#7
4182  0023               L7161:
4183                     ; 953 }
4186  0023 84            	pop	a
4187  0024 81            	ret	
4274                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4274                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4274                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4274                     ; 978 {
4275                     .text:	section	.text,new
4276  0000               _TIM1_EncoderInterfaceConfig:
4278  0000 89            	pushw	x
4279       00000000      OFST:	set	0
4282                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4284  0001 9e            	ld	a,xh
4285  0002 4a            	dec	a
4286  0003 270f          	jreq	L6701
4287  0005 9e            	ld	a,xh
4288  0006 a102          	cp	a,#2
4289  0008 270a          	jreq	L6701
4290  000a 9e            	ld	a,xh
4291  000b a103          	cp	a,#3
4292  000d 2705          	jreq	L6701
4293  000f ae03d4        	ldw	x,#980
4294  0012 ad54          	call	LC012
4295  0014               L6701:
4296                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4298  0014 7b02          	ld	a,(OFST+2,sp)
4299  0016 2708          	jreq	L6011
4300  0018 4a            	dec	a
4301  0019 2705          	jreq	L6011
4302  001b ae03d5        	ldw	x,#981
4303  001e ad48          	call	LC012
4304  0020               L6011:
4305                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4307  0020 7b05          	ld	a,(OFST+5,sp)
4308  0022 2708          	jreq	L6111
4309  0024 4a            	dec	a
4310  0025 2705          	jreq	L6111
4311  0027 ae03d6        	ldw	x,#982
4312  002a ad3c          	call	LC012
4313  002c               L6111:
4314                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4316  002c 7b02          	ld	a,(OFST+2,sp)
4317  002e 2706          	jreq	L1661
4318                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4320  0030 7212525c      	bset	21084,#1
4322  0034 2004          	jra	L3661
4323  0036               L1661:
4324                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4326  0036 7213525c      	bres	21084,#1
4327  003a               L3661:
4328                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4330  003a 7b05          	ld	a,(OFST+5,sp)
4331  003c 2706          	jreq	L5661
4332                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4334  003e 721a525c      	bset	21084,#5
4336  0042 2004          	jra	L7661
4337  0044               L5661:
4338                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4340  0044 721b525c      	bres	21084,#5
4341  0048               L7661:
4342                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4342                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4344  0048 c65252        	ld	a,21074
4345  004b a4f0          	and	a,#240
4346  004d 1a01          	or	a,(OFST+1,sp)
4347  004f c75252        	ld	21074,a
4348                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4348                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4350  0052 c65258        	ld	a,21080
4351  0055 a4fc          	and	a,#252
4352  0057 aa01          	or	a,#1
4353  0059 c75258        	ld	21080,a
4354                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4354                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4356  005c c65259        	ld	a,21081
4357  005f a4fc          	and	a,#252
4358  0061 aa01          	or	a,#1
4359  0063 c75259        	ld	21081,a
4360                     ; 1011 }
4363  0066 85            	popw	x
4364  0067 81            	ret	
4365  0068               LC012:
4366  0068 89            	pushw	x
4367  0069 5f            	clrw	x
4368  006a 89            	pushw	x
4369  006b ae0000        	ldw	x,#L101
4370  006e cd0000        	call	_assert_failed
4372  0071 5b04          	addw	sp,#4
4373  0073 81            	ret	
4441                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4441                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4441                     ; 1025 {
4442                     .text:	section	.text,new
4443  0000               _TIM1_PrescalerConfig:
4445  0000 89            	pushw	x
4446       00000000      OFST:	set	0
4449                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4451  0001 7b05          	ld	a,(OFST+5,sp)
4452  0003 2711          	jreq	L0311
4453  0005 4a            	dec	a
4454  0006 270e          	jreq	L0311
4455  0008 ae0403        	ldw	x,#1027
4456  000b 89            	pushw	x
4457  000c 5f            	clrw	x
4458  000d 89            	pushw	x
4459  000e ae0000        	ldw	x,#L101
4460  0011 cd0000        	call	_assert_failed
4462  0014 5b04          	addw	sp,#4
4463  0016               L0311:
4464                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4466  0016 7b01          	ld	a,(OFST+1,sp)
4467  0018 c75260        	ld	21088,a
4468                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4470  001b 7b02          	ld	a,(OFST+2,sp)
4471  001d c75261        	ld	21089,a
4472                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4474  0020 7b05          	ld	a,(OFST+5,sp)
4475  0022 c75257        	ld	21079,a
4476                     ; 1035 }
4479  0025 85            	popw	x
4480  0026 81            	ret	
4517                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4517                     ; 1049 {
4518                     .text:	section	.text,new
4519  0000               _TIM1_CounterModeConfig:
4521  0000 88            	push	a
4522       00000000      OFST:	set	0
4525                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4527  0001 4d            	tnz	a
4528  0002 271e          	jreq	L2411
4529  0004 a110          	cp	a,#16
4530  0006 271a          	jreq	L2411
4531  0008 a120          	cp	a,#32
4532  000a 2716          	jreq	L2411
4533  000c a140          	cp	a,#64
4534  000e 2712          	jreq	L2411
4535  0010 a160          	cp	a,#96
4536  0012 270e          	jreq	L2411
4537  0014 ae041b        	ldw	x,#1051
4538  0017 89            	pushw	x
4539  0018 5f            	clrw	x
4540  0019 89            	pushw	x
4541  001a ae0000        	ldw	x,#L101
4542  001d cd0000        	call	_assert_failed
4544  0020 5b04          	addw	sp,#4
4545  0022               L2411:
4546                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4546                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4548  0022 c65250        	ld	a,21072
4549  0025 a48f          	and	a,#143
4550  0027 1a01          	or	a,(OFST+1,sp)
4551  0029 c75250        	ld	21072,a
4552                     ; 1057 }
4555  002c 84            	pop	a
4556  002d 81            	ret	
4615                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4615                     ; 1068 {
4616                     .text:	section	.text,new
4617  0000               _TIM1_ForcedOC1Config:
4619  0000 88            	push	a
4620       00000000      OFST:	set	0
4623                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4625  0001 a150          	cp	a,#80
4626  0003 2712          	jreq	L4511
4627  0005 a140          	cp	a,#64
4628  0007 270e          	jreq	L4511
4629  0009 ae042e        	ldw	x,#1070
4630  000c 89            	pushw	x
4631  000d 5f            	clrw	x
4632  000e 89            	pushw	x
4633  000f ae0000        	ldw	x,#L101
4634  0012 cd0000        	call	_assert_failed
4636  0015 5b04          	addw	sp,#4
4637  0017               L4511:
4638                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4638                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4640  0017 c65258        	ld	a,21080
4641  001a a48f          	and	a,#143
4642  001c 1a01          	or	a,(OFST+1,sp)
4643  001e c75258        	ld	21080,a
4644                     ; 1075 }
4647  0021 84            	pop	a
4648  0022 81            	ret	
4685                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4685                     ; 1086 {
4686                     .text:	section	.text,new
4687  0000               _TIM1_ForcedOC2Config:
4689  0000 88            	push	a
4690       00000000      OFST:	set	0
4693                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4695  0001 a150          	cp	a,#80
4696  0003 2712          	jreq	L6611
4697  0005 a140          	cp	a,#64
4698  0007 270e          	jreq	L6611
4699  0009 ae0440        	ldw	x,#1088
4700  000c 89            	pushw	x
4701  000d 5f            	clrw	x
4702  000e 89            	pushw	x
4703  000f ae0000        	ldw	x,#L101
4704  0012 cd0000        	call	_assert_failed
4706  0015 5b04          	addw	sp,#4
4707  0017               L6611:
4708                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4708                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4710  0017 c65259        	ld	a,21081
4711  001a a48f          	and	a,#143
4712  001c 1a01          	or	a,(OFST+1,sp)
4713  001e c75259        	ld	21081,a
4714                     ; 1093 }
4717  0021 84            	pop	a
4718  0022 81            	ret	
4755                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4755                     ; 1105 {
4756                     .text:	section	.text,new
4757  0000               _TIM1_ForcedOC3Config:
4759  0000 88            	push	a
4760       00000000      OFST:	set	0
4763                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4765  0001 a150          	cp	a,#80
4766  0003 2712          	jreq	L0021
4767  0005 a140          	cp	a,#64
4768  0007 270e          	jreq	L0021
4769  0009 ae0453        	ldw	x,#1107
4770  000c 89            	pushw	x
4771  000d 5f            	clrw	x
4772  000e 89            	pushw	x
4773  000f ae0000        	ldw	x,#L101
4774  0012 cd0000        	call	_assert_failed
4776  0015 5b04          	addw	sp,#4
4777  0017               L0021:
4778                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4778                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4780  0017 c6525a        	ld	a,21082
4781  001a a48f          	and	a,#143
4782  001c 1a01          	or	a,(OFST+1,sp)
4783  001e c7525a        	ld	21082,a
4784                     ; 1112 }
4787  0021 84            	pop	a
4788  0022 81            	ret	
4825                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4825                     ; 1124 {
4826                     .text:	section	.text,new
4827  0000               _TIM1_ForcedOC4Config:
4829  0000 88            	push	a
4830       00000000      OFST:	set	0
4833                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4835  0001 a150          	cp	a,#80
4836  0003 2712          	jreq	L2121
4837  0005 a140          	cp	a,#64
4838  0007 270e          	jreq	L2121
4839  0009 ae0466        	ldw	x,#1126
4840  000c 89            	pushw	x
4841  000d 5f            	clrw	x
4842  000e 89            	pushw	x
4843  000f ae0000        	ldw	x,#L101
4844  0012 cd0000        	call	_assert_failed
4846  0015 5b04          	addw	sp,#4
4847  0017               L2121:
4848                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4848                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4850  0017 c6525b        	ld	a,21083
4851  001a a48f          	and	a,#143
4852  001c 1a01          	or	a,(OFST+1,sp)
4853  001e c7525b        	ld	21083,a
4854                     ; 1131 }
4857  0021 84            	pop	a
4858  0022 81            	ret	
4895                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4895                     ; 1140 {
4896                     .text:	section	.text,new
4897  0000               _TIM1_ARRPreloadConfig:
4899  0000 88            	push	a
4900       00000000      OFST:	set	0
4903                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4905  0001 4d            	tnz	a
4906  0002 2711          	jreq	L4221
4907  0004 4a            	dec	a
4908  0005 270e          	jreq	L4221
4909  0007 ae0476        	ldw	x,#1142
4910  000a 89            	pushw	x
4911  000b 5f            	clrw	x
4912  000c 89            	pushw	x
4913  000d ae0000        	ldw	x,#L101
4914  0010 cd0000        	call	_assert_failed
4916  0013 5b04          	addw	sp,#4
4917  0015               L4221:
4918                     ; 1145   if (NewState != DISABLE)
4920  0015 7b01          	ld	a,(OFST+1,sp)
4921  0017 2706          	jreq	L7502
4922                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4924  0019 721e5250      	bset	21072,#7
4926  001d 2004          	jra	L1602
4927  001f               L7502:
4928                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4930  001f 721f5250      	bres	21072,#7
4931  0023               L1602:
4932                     ; 1153 }
4935  0023 84            	pop	a
4936  0024 81            	ret	
4972                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4972                     ; 1162 {
4973                     .text:	section	.text,new
4974  0000               _TIM1_SelectCOM:
4976  0000 88            	push	a
4977       00000000      OFST:	set	0
4980                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4982  0001 4d            	tnz	a
4983  0002 2711          	jreq	L6321
4984  0004 4a            	dec	a
4985  0005 270e          	jreq	L6321
4986  0007 ae048c        	ldw	x,#1164
4987  000a 89            	pushw	x
4988  000b 5f            	clrw	x
4989  000c 89            	pushw	x
4990  000d ae0000        	ldw	x,#L101
4991  0010 cd0000        	call	_assert_failed
4993  0013 5b04          	addw	sp,#4
4994  0015               L6321:
4995                     ; 1167   if (NewState != DISABLE)
4997  0015 7b01          	ld	a,(OFST+1,sp)
4998  0017 2706          	jreq	L1012
4999                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5001  0019 72145251      	bset	21073,#2
5003  001d 2004          	jra	L3012
5004  001f               L1012:
5005                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5007  001f 72155251      	bres	21073,#2
5008  0023               L3012:
5009                     ; 1175 }
5012  0023 84            	pop	a
5013  0024 81            	ret	
5050                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5050                     ; 1184 {
5051                     .text:	section	.text,new
5052  0000               _TIM1_CCPreloadControl:
5054  0000 88            	push	a
5055       00000000      OFST:	set	0
5058                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5060  0001 4d            	tnz	a
5061  0002 2711          	jreq	L0521
5062  0004 4a            	dec	a
5063  0005 270e          	jreq	L0521
5064  0007 ae04a2        	ldw	x,#1186
5065  000a 89            	pushw	x
5066  000b 5f            	clrw	x
5067  000c 89            	pushw	x
5068  000d ae0000        	ldw	x,#L101
5069  0010 cd0000        	call	_assert_failed
5071  0013 5b04          	addw	sp,#4
5072  0015               L0521:
5073                     ; 1189   if (NewState != DISABLE)
5075  0015 7b01          	ld	a,(OFST+1,sp)
5076  0017 2706          	jreq	L3212
5077                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5079  0019 72105251      	bset	21073,#0
5081  001d 2004          	jra	L5212
5082  001f               L3212:
5083                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5085  001f 72115251      	bres	21073,#0
5086  0023               L5212:
5087                     ; 1197 }
5090  0023 84            	pop	a
5091  0024 81            	ret	
5128                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5128                     ; 1206 {
5129                     .text:	section	.text,new
5130  0000               _TIM1_OC1PreloadConfig:
5132  0000 88            	push	a
5133       00000000      OFST:	set	0
5136                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5138  0001 4d            	tnz	a
5139  0002 2711          	jreq	L2621
5140  0004 4a            	dec	a
5141  0005 270e          	jreq	L2621
5142  0007 ae04b8        	ldw	x,#1208
5143  000a 89            	pushw	x
5144  000b 5f            	clrw	x
5145  000c 89            	pushw	x
5146  000d ae0000        	ldw	x,#L101
5147  0010 cd0000        	call	_assert_failed
5149  0013 5b04          	addw	sp,#4
5150  0015               L2621:
5151                     ; 1211   if (NewState != DISABLE)
5153  0015 7b01          	ld	a,(OFST+1,sp)
5154  0017 2706          	jreq	L5412
5155                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5157  0019 72165258      	bset	21080,#3
5159  001d 2004          	jra	L7412
5160  001f               L5412:
5161                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5163  001f 72175258      	bres	21080,#3
5164  0023               L7412:
5165                     ; 1219 }
5168  0023 84            	pop	a
5169  0024 81            	ret	
5206                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5206                     ; 1228 {
5207                     .text:	section	.text,new
5208  0000               _TIM1_OC2PreloadConfig:
5210  0000 88            	push	a
5211       00000000      OFST:	set	0
5214                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5216  0001 4d            	tnz	a
5217  0002 2711          	jreq	L4721
5218  0004 4a            	dec	a
5219  0005 270e          	jreq	L4721
5220  0007 ae04ce        	ldw	x,#1230
5221  000a 89            	pushw	x
5222  000b 5f            	clrw	x
5223  000c 89            	pushw	x
5224  000d ae0000        	ldw	x,#L101
5225  0010 cd0000        	call	_assert_failed
5227  0013 5b04          	addw	sp,#4
5228  0015               L4721:
5229                     ; 1233   if (NewState != DISABLE)
5231  0015 7b01          	ld	a,(OFST+1,sp)
5232  0017 2706          	jreq	L7612
5233                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5235  0019 72165259      	bset	21081,#3
5237  001d 2004          	jra	L1712
5238  001f               L7612:
5239                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5241  001f 72175259      	bres	21081,#3
5242  0023               L1712:
5243                     ; 1241 }
5246  0023 84            	pop	a
5247  0024 81            	ret	
5284                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5284                     ; 1250 {
5285                     .text:	section	.text,new
5286  0000               _TIM1_OC3PreloadConfig:
5288  0000 88            	push	a
5289       00000000      OFST:	set	0
5292                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5294  0001 4d            	tnz	a
5295  0002 2711          	jreq	L6031
5296  0004 4a            	dec	a
5297  0005 270e          	jreq	L6031
5298  0007 ae04e4        	ldw	x,#1252
5299  000a 89            	pushw	x
5300  000b 5f            	clrw	x
5301  000c 89            	pushw	x
5302  000d ae0000        	ldw	x,#L101
5303  0010 cd0000        	call	_assert_failed
5305  0013 5b04          	addw	sp,#4
5306  0015               L6031:
5307                     ; 1255   if (NewState != DISABLE)
5309  0015 7b01          	ld	a,(OFST+1,sp)
5310  0017 2706          	jreq	L1122
5311                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5313  0019 7216525a      	bset	21082,#3
5315  001d 2004          	jra	L3122
5316  001f               L1122:
5317                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5319  001f 7217525a      	bres	21082,#3
5320  0023               L3122:
5321                     ; 1263 }
5324  0023 84            	pop	a
5325  0024 81            	ret	
5362                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5362                     ; 1272 {
5363                     .text:	section	.text,new
5364  0000               _TIM1_OC4PreloadConfig:
5366  0000 88            	push	a
5367       00000000      OFST:	set	0
5370                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5372  0001 4d            	tnz	a
5373  0002 2711          	jreq	L0231
5374  0004 4a            	dec	a
5375  0005 270e          	jreq	L0231
5376  0007 ae04fa        	ldw	x,#1274
5377  000a 89            	pushw	x
5378  000b 5f            	clrw	x
5379  000c 89            	pushw	x
5380  000d ae0000        	ldw	x,#L101
5381  0010 cd0000        	call	_assert_failed
5383  0013 5b04          	addw	sp,#4
5384  0015               L0231:
5385                     ; 1277   if (NewState != DISABLE)
5387  0015 7b01          	ld	a,(OFST+1,sp)
5388  0017 2706          	jreq	L3322
5389                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5391  0019 7216525b      	bset	21083,#3
5393  001d 2004          	jra	L5322
5394  001f               L3322:
5395                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5397  001f 7217525b      	bres	21083,#3
5398  0023               L5322:
5399                     ; 1285 }
5402  0023 84            	pop	a
5403  0024 81            	ret	
5439                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5439                     ; 1294 {
5440                     .text:	section	.text,new
5441  0000               _TIM1_OC1FastConfig:
5443  0000 88            	push	a
5444       00000000      OFST:	set	0
5447                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5449  0001 4d            	tnz	a
5450  0002 2711          	jreq	L2331
5451  0004 4a            	dec	a
5452  0005 270e          	jreq	L2331
5453  0007 ae0510        	ldw	x,#1296
5454  000a 89            	pushw	x
5455  000b 5f            	clrw	x
5456  000c 89            	pushw	x
5457  000d ae0000        	ldw	x,#L101
5458  0010 cd0000        	call	_assert_failed
5460  0013 5b04          	addw	sp,#4
5461  0015               L2331:
5462                     ; 1299   if (NewState != DISABLE)
5464  0015 7b01          	ld	a,(OFST+1,sp)
5465  0017 2706          	jreq	L5522
5466                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5468  0019 72145258      	bset	21080,#2
5470  001d 2004          	jra	L7522
5471  001f               L5522:
5472                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5474  001f 72155258      	bres	21080,#2
5475  0023               L7522:
5476                     ; 1307 }
5479  0023 84            	pop	a
5480  0024 81            	ret	
5516                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5516                     ; 1316 {
5517                     .text:	section	.text,new
5518  0000               _TIM1_OC2FastConfig:
5520  0000 88            	push	a
5521       00000000      OFST:	set	0
5524                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5526  0001 4d            	tnz	a
5527  0002 2711          	jreq	L4431
5528  0004 4a            	dec	a
5529  0005 270e          	jreq	L4431
5530  0007 ae0526        	ldw	x,#1318
5531  000a 89            	pushw	x
5532  000b 5f            	clrw	x
5533  000c 89            	pushw	x
5534  000d ae0000        	ldw	x,#L101
5535  0010 cd0000        	call	_assert_failed
5537  0013 5b04          	addw	sp,#4
5538  0015               L4431:
5539                     ; 1321   if (NewState != DISABLE)
5541  0015 7b01          	ld	a,(OFST+1,sp)
5542  0017 2706          	jreq	L7722
5543                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5545  0019 72145259      	bset	21081,#2
5547  001d 2004          	jra	L1032
5548  001f               L7722:
5549                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5551  001f 72155259      	bres	21081,#2
5552  0023               L1032:
5553                     ; 1329 }
5556  0023 84            	pop	a
5557  0024 81            	ret	
5593                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5593                     ; 1338 {
5594                     .text:	section	.text,new
5595  0000               _TIM1_OC3FastConfig:
5597  0000 88            	push	a
5598       00000000      OFST:	set	0
5601                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5603  0001 4d            	tnz	a
5604  0002 2711          	jreq	L6531
5605  0004 4a            	dec	a
5606  0005 270e          	jreq	L6531
5607  0007 ae053c        	ldw	x,#1340
5608  000a 89            	pushw	x
5609  000b 5f            	clrw	x
5610  000c 89            	pushw	x
5611  000d ae0000        	ldw	x,#L101
5612  0010 cd0000        	call	_assert_failed
5614  0013 5b04          	addw	sp,#4
5615  0015               L6531:
5616                     ; 1343   if (NewState != DISABLE)
5618  0015 7b01          	ld	a,(OFST+1,sp)
5619  0017 2706          	jreq	L1232
5620                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5622  0019 7214525a      	bset	21082,#2
5624  001d 2004          	jra	L3232
5625  001f               L1232:
5626                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5628  001f 7215525a      	bres	21082,#2
5629  0023               L3232:
5630                     ; 1351 }
5633  0023 84            	pop	a
5634  0024 81            	ret	
5670                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5670                     ; 1360 {
5671                     .text:	section	.text,new
5672  0000               _TIM1_OC4FastConfig:
5674  0000 88            	push	a
5675       00000000      OFST:	set	0
5678                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5680  0001 4d            	tnz	a
5681  0002 2711          	jreq	L0731
5682  0004 4a            	dec	a
5683  0005 270e          	jreq	L0731
5684  0007 ae0552        	ldw	x,#1362
5685  000a 89            	pushw	x
5686  000b 5f            	clrw	x
5687  000c 89            	pushw	x
5688  000d ae0000        	ldw	x,#L101
5689  0010 cd0000        	call	_assert_failed
5691  0013 5b04          	addw	sp,#4
5692  0015               L0731:
5693                     ; 1365   if (NewState != DISABLE)
5695  0015 7b01          	ld	a,(OFST+1,sp)
5696  0017 2706          	jreq	L3432
5697                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5699  0019 7214525b      	bset	21083,#2
5701  001d 2004          	jra	L5432
5702  001f               L3432:
5703                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5705  001f 7215525b      	bres	21083,#2
5706  0023               L5432:
5707                     ; 1373 }
5710  0023 84            	pop	a
5711  0024 81            	ret	
5817                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5817                     ; 1390 {
5818                     .text:	section	.text,new
5819  0000               _TIM1_GenerateEvent:
5821  0000 88            	push	a
5822       00000000      OFST:	set	0
5825                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5827  0001 4d            	tnz	a
5828  0002 260e          	jrne	L0041
5829  0004 ae0570        	ldw	x,#1392
5830  0007 89            	pushw	x
5831  0008 5f            	clrw	x
5832  0009 89            	pushw	x
5833  000a ae0000        	ldw	x,#L101
5834  000d cd0000        	call	_assert_failed
5836  0010 5b04          	addw	sp,#4
5837  0012               L0041:
5838                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5840  0012 7b01          	ld	a,(OFST+1,sp)
5841  0014 c75257        	ld	21079,a
5842                     ; 1396 }
5845  0017 84            	pop	a
5846  0018 81            	ret	
5883                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5883                     ; 1407 {
5884                     .text:	section	.text,new
5885  0000               _TIM1_OC1PolarityConfig:
5887  0000 88            	push	a
5888       00000000      OFST:	set	0
5891                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5893  0001 4d            	tnz	a
5894  0002 2712          	jreq	L2141
5895  0004 a122          	cp	a,#34
5896  0006 270e          	jreq	L2141
5897  0008 ae0581        	ldw	x,#1409
5898  000b 89            	pushw	x
5899  000c 5f            	clrw	x
5900  000d 89            	pushw	x
5901  000e ae0000        	ldw	x,#L101
5902  0011 cd0000        	call	_assert_failed
5904  0014 5b04          	addw	sp,#4
5905  0016               L2141:
5906                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5908  0016 7b01          	ld	a,(OFST+1,sp)
5909  0018 2706          	jreq	L7242
5910                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5912  001a 7212525c      	bset	21084,#1
5914  001e 2004          	jra	L1342
5915  0020               L7242:
5916                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5918  0020 7213525c      	bres	21084,#1
5919  0024               L1342:
5920                     ; 1420 }
5923  0024 84            	pop	a
5924  0025 81            	ret	
5961                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5961                     ; 1431 {
5962                     .text:	section	.text,new
5963  0000               _TIM1_OC1NPolarityConfig:
5965  0000 88            	push	a
5966       00000000      OFST:	set	0
5969                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5971  0001 4d            	tnz	a
5972  0002 2712          	jreq	L4241
5973  0004 a188          	cp	a,#136
5974  0006 270e          	jreq	L4241
5975  0008 ae0599        	ldw	x,#1433
5976  000b 89            	pushw	x
5977  000c 5f            	clrw	x
5978  000d 89            	pushw	x
5979  000e ae0000        	ldw	x,#L101
5980  0011 cd0000        	call	_assert_failed
5982  0014 5b04          	addw	sp,#4
5983  0016               L4241:
5984                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5986  0016 7b01          	ld	a,(OFST+1,sp)
5987  0018 2706          	jreq	L1542
5988                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5990  001a 7216525c      	bset	21084,#3
5992  001e 2004          	jra	L3542
5993  0020               L1542:
5994                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5996  0020 7217525c      	bres	21084,#3
5997  0024               L3542:
5998                     ; 1444 }
6001  0024 84            	pop	a
6002  0025 81            	ret	
6039                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6039                     ; 1455 {
6040                     .text:	section	.text,new
6041  0000               _TIM1_OC2PolarityConfig:
6043  0000 88            	push	a
6044       00000000      OFST:	set	0
6047                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6049  0001 4d            	tnz	a
6050  0002 2712          	jreq	L6341
6051  0004 a122          	cp	a,#34
6052  0006 270e          	jreq	L6341
6053  0008 ae05b1        	ldw	x,#1457
6054  000b 89            	pushw	x
6055  000c 5f            	clrw	x
6056  000d 89            	pushw	x
6057  000e ae0000        	ldw	x,#L101
6058  0011 cd0000        	call	_assert_failed
6060  0014 5b04          	addw	sp,#4
6061  0016               L6341:
6062                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6064  0016 7b01          	ld	a,(OFST+1,sp)
6065  0018 2706          	jreq	L3742
6066                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6068  001a 721a525c      	bset	21084,#5
6070  001e 2004          	jra	L5742
6071  0020               L3742:
6072                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6074  0020 721b525c      	bres	21084,#5
6075  0024               L5742:
6076                     ; 1468 }
6079  0024 84            	pop	a
6080  0025 81            	ret	
6117                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6117                     ; 1479 {
6118                     .text:	section	.text,new
6119  0000               _TIM1_OC2NPolarityConfig:
6121  0000 88            	push	a
6122       00000000      OFST:	set	0
6125                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6127  0001 4d            	tnz	a
6128  0002 2712          	jreq	L0541
6129  0004 a188          	cp	a,#136
6130  0006 270e          	jreq	L0541
6131  0008 ae05c9        	ldw	x,#1481
6132  000b 89            	pushw	x
6133  000c 5f            	clrw	x
6134  000d 89            	pushw	x
6135  000e ae0000        	ldw	x,#L101
6136  0011 cd0000        	call	_assert_failed
6138  0014 5b04          	addw	sp,#4
6139  0016               L0541:
6140                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6142  0016 7b01          	ld	a,(OFST+1,sp)
6143  0018 2706          	jreq	L5152
6144                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6146  001a 721e525c      	bset	21084,#7
6148  001e 2004          	jra	L7152
6149  0020               L5152:
6150                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6152  0020 721f525c      	bres	21084,#7
6153  0024               L7152:
6154                     ; 1492 }
6157  0024 84            	pop	a
6158  0025 81            	ret	
6195                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6195                     ; 1503 {
6196                     .text:	section	.text,new
6197  0000               _TIM1_OC3PolarityConfig:
6199  0000 88            	push	a
6200       00000000      OFST:	set	0
6203                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6205  0001 4d            	tnz	a
6206  0002 2712          	jreq	L2641
6207  0004 a122          	cp	a,#34
6208  0006 270e          	jreq	L2641
6209  0008 ae05e1        	ldw	x,#1505
6210  000b 89            	pushw	x
6211  000c 5f            	clrw	x
6212  000d 89            	pushw	x
6213  000e ae0000        	ldw	x,#L101
6214  0011 cd0000        	call	_assert_failed
6216  0014 5b04          	addw	sp,#4
6217  0016               L2641:
6218                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6220  0016 7b01          	ld	a,(OFST+1,sp)
6221  0018 2706          	jreq	L7352
6222                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6224  001a 7212525d      	bset	21085,#1
6226  001e 2004          	jra	L1452
6227  0020               L7352:
6228                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6230  0020 7213525d      	bres	21085,#1
6231  0024               L1452:
6232                     ; 1516 }
6235  0024 84            	pop	a
6236  0025 81            	ret	
6273                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6273                     ; 1528 {
6274                     .text:	section	.text,new
6275  0000               _TIM1_OC3NPolarityConfig:
6277  0000 88            	push	a
6278       00000000      OFST:	set	0
6281                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6283  0001 4d            	tnz	a
6284  0002 2712          	jreq	L4741
6285  0004 a188          	cp	a,#136
6286  0006 270e          	jreq	L4741
6287  0008 ae05fa        	ldw	x,#1530
6288  000b 89            	pushw	x
6289  000c 5f            	clrw	x
6290  000d 89            	pushw	x
6291  000e ae0000        	ldw	x,#L101
6292  0011 cd0000        	call	_assert_failed
6294  0014 5b04          	addw	sp,#4
6295  0016               L4741:
6296                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6298  0016 7b01          	ld	a,(OFST+1,sp)
6299  0018 2706          	jreq	L1652
6300                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6302  001a 7216525d      	bset	21085,#3
6304  001e 2004          	jra	L3652
6305  0020               L1652:
6306                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6308  0020 7217525d      	bres	21085,#3
6309  0024               L3652:
6310                     ; 1541 }
6313  0024 84            	pop	a
6314  0025 81            	ret	
6351                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6351                     ; 1552 {
6352                     .text:	section	.text,new
6353  0000               _TIM1_OC4PolarityConfig:
6355  0000 88            	push	a
6356       00000000      OFST:	set	0
6359                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6361  0001 4d            	tnz	a
6362  0002 2712          	jreq	L6051
6363  0004 a122          	cp	a,#34
6364  0006 270e          	jreq	L6051
6365  0008 ae0612        	ldw	x,#1554
6366  000b 89            	pushw	x
6367  000c 5f            	clrw	x
6368  000d 89            	pushw	x
6369  000e ae0000        	ldw	x,#L101
6370  0011 cd0000        	call	_assert_failed
6372  0014 5b04          	addw	sp,#4
6373  0016               L6051:
6374                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6376  0016 7b01          	ld	a,(OFST+1,sp)
6377  0018 2706          	jreq	L3062
6378                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6380  001a 721a525d      	bset	21085,#5
6382  001e 2004          	jra	L5062
6383  0020               L3062:
6384                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6386  0020 721b525d      	bres	21085,#5
6387  0024               L5062:
6388                     ; 1565 }
6391  0024 84            	pop	a
6392  0025 81            	ret	
6438                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6438                     ; 1580 {
6439                     .text:	section	.text,new
6440  0000               _TIM1_CCxCmd:
6442  0000 89            	pushw	x
6443       00000000      OFST:	set	0
6446                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6448  0001 9e            	ld	a,xh
6449  0002 4d            	tnz	a
6450  0003 2713          	jreq	L0251
6451  0005 9e            	ld	a,xh
6452  0006 4a            	dec	a
6453  0007 270f          	jreq	L0251
6454  0009 9e            	ld	a,xh
6455  000a a102          	cp	a,#2
6456  000c 270a          	jreq	L0251
6457  000e 9e            	ld	a,xh
6458  000f a103          	cp	a,#3
6459  0011 2705          	jreq	L0251
6460  0013 ae062e        	ldw	x,#1582
6461  0016 ad58          	call	LC013
6462  0018               L0251:
6463                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6465  0018 7b02          	ld	a,(OFST+2,sp)
6466  001a 2708          	jreq	L0351
6467  001c 4a            	dec	a
6468  001d 2705          	jreq	L0351
6469  001f ae062f        	ldw	x,#1583
6470  0022 ad4c          	call	LC013
6471  0024               L0351:
6472                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6474  0024 7b01          	ld	a,(OFST+1,sp)
6475  0026 2610          	jrne	L1362
6476                     ; 1588     if (NewState != DISABLE)
6478  0028 7b02          	ld	a,(OFST+2,sp)
6479  002a 2706          	jreq	L3362
6480                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6482  002c 7210525c      	bset	21084,#0
6484  0030 203c          	jra	L7362
6485  0032               L3362:
6486                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6488  0032 7211525c      	bres	21084,#0
6489  0036 2036          	jra	L7362
6490  0038               L1362:
6491                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6493  0038 a101          	cp	a,#1
6494  003a 2610          	jrne	L1462
6495                     ; 1601     if (NewState != DISABLE)
6497  003c 7b02          	ld	a,(OFST+2,sp)
6498  003e 2706          	jreq	L3462
6499                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6501  0040 7218525c      	bset	21084,#4
6503  0044 2028          	jra	L7362
6504  0046               L3462:
6505                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6507  0046 7219525c      	bres	21084,#4
6508  004a 2022          	jra	L7362
6509  004c               L1462:
6510                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6512  004c a102          	cp	a,#2
6513  004e 2610          	jrne	L1562
6514                     ; 1613     if (NewState != DISABLE)
6516  0050 7b02          	ld	a,(OFST+2,sp)
6517  0052 2706          	jreq	L3562
6518                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6520  0054 7210525d      	bset	21085,#0
6522  0058 2014          	jra	L7362
6523  005a               L3562:
6524                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6526  005a 7211525d      	bres	21085,#0
6527  005e 200e          	jra	L7362
6528  0060               L1562:
6529                     ; 1625     if (NewState != DISABLE)
6531  0060 7b02          	ld	a,(OFST+2,sp)
6532  0062 2706          	jreq	L1662
6533                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6535  0064 7218525d      	bset	21085,#4
6537  0068 2004          	jra	L7362
6538  006a               L1662:
6539                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6541  006a 7219525d      	bres	21085,#4
6542  006e               L7362:
6543                     ; 1634 }
6546  006e 85            	popw	x
6547  006f 81            	ret	
6548  0070               LC013:
6549  0070 89            	pushw	x
6550  0071 5f            	clrw	x
6551  0072 89            	pushw	x
6552  0073 ae0000        	ldw	x,#L101
6553  0076 cd0000        	call	_assert_failed
6555  0079 5b04          	addw	sp,#4
6556  007b 81            	ret	
6602                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6602                     ; 1648 {
6603                     .text:	section	.text,new
6604  0000               _TIM1_CCxNCmd:
6606  0000 89            	pushw	x
6607       00000000      OFST:	set	0
6610                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6612  0001 9e            	ld	a,xh
6613  0002 4d            	tnz	a
6614  0003 270e          	jreq	L2451
6615  0005 9e            	ld	a,xh
6616  0006 4a            	dec	a
6617  0007 270a          	jreq	L2451
6618  0009 9e            	ld	a,xh
6619  000a a102          	cp	a,#2
6620  000c 2705          	jreq	L2451
6621  000e ae0672        	ldw	x,#1650
6622  0011 ad43          	call	LC014
6623  0013               L2451:
6624                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6626  0013 7b02          	ld	a,(OFST+2,sp)
6627  0015 2708          	jreq	L2551
6628  0017 4a            	dec	a
6629  0018 2705          	jreq	L2551
6630  001a ae0673        	ldw	x,#1651
6631  001d ad37          	call	LC014
6632  001f               L2551:
6633                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6635  001f 7b01          	ld	a,(OFST+1,sp)
6636  0021 2610          	jrne	L7072
6637                     ; 1656     if (NewState != DISABLE)
6639  0023 7b02          	ld	a,(OFST+2,sp)
6640  0025 2706          	jreq	L1172
6641                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6643  0027 7214525c      	bset	21084,#2
6645  002b 2027          	jra	L5172
6646  002d               L1172:
6647                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6649  002d 7215525c      	bres	21084,#2
6650  0031 2021          	jra	L5172
6651  0033               L7072:
6652                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6654  0033 4a            	dec	a
6655  0034 2610          	jrne	L7172
6656                     ; 1668     if (NewState != DISABLE)
6658  0036 7b02          	ld	a,(OFST+2,sp)
6659  0038 2706          	jreq	L1272
6660                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6662  003a 721c525c      	bset	21084,#6
6664  003e 2014          	jra	L5172
6665  0040               L1272:
6666                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6668  0040 721d525c      	bres	21084,#6
6669  0044 200e          	jra	L5172
6670  0046               L7172:
6671                     ; 1680     if (NewState != DISABLE)
6673  0046 7b02          	ld	a,(OFST+2,sp)
6674  0048 2706          	jreq	L7272
6675                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6677  004a 7214525d      	bset	21085,#2
6679  004e 2004          	jra	L5172
6680  0050               L7272:
6681                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6683  0050 7215525d      	bres	21085,#2
6684  0054               L5172:
6685                     ; 1689 }
6688  0054 85            	popw	x
6689  0055 81            	ret	
6690  0056               LC014:
6691  0056 89            	pushw	x
6692  0057 5f            	clrw	x
6693  0058 89            	pushw	x
6694  0059 ae0000        	ldw	x,#L101
6695  005c cd0000        	call	_assert_failed
6697  005f 5b04          	addw	sp,#4
6698  0061 81            	ret	
6744                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6744                     ; 1713 {
6745                     .text:	section	.text,new
6746  0000               _TIM1_SelectOCxM:
6748  0000 89            	pushw	x
6749       00000000      OFST:	set	0
6752                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6754  0001 9e            	ld	a,xh
6755  0002 4d            	tnz	a
6756  0003 2713          	jreq	L4651
6757  0005 9e            	ld	a,xh
6758  0006 4a            	dec	a
6759  0007 270f          	jreq	L4651
6760  0009 9e            	ld	a,xh
6761  000a a102          	cp	a,#2
6762  000c 270a          	jreq	L4651
6763  000e 9e            	ld	a,xh
6764  000f a103          	cp	a,#3
6765  0011 2705          	jreq	L4651
6766  0013 ae06b3        	ldw	x,#1715
6767  0016 ad71          	call	LC015
6768  0018               L4651:
6769                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6771  0018 7b02          	ld	a,(OFST+2,sp)
6772  001a 2721          	jreq	L4751
6773  001c a110          	cp	a,#16
6774  001e 271d          	jreq	L4751
6775  0020 a120          	cp	a,#32
6776  0022 2719          	jreq	L4751
6777  0024 a130          	cp	a,#48
6778  0026 2715          	jreq	L4751
6779  0028 a160          	cp	a,#96
6780  002a 2711          	jreq	L4751
6781  002c a170          	cp	a,#112
6782  002e 270d          	jreq	L4751
6783  0030 a150          	cp	a,#80
6784  0032 2709          	jreq	L4751
6785  0034 a140          	cp	a,#64
6786  0036 2705          	jreq	L4751
6787  0038 ae06b4        	ldw	x,#1716
6788  003b ad4c          	call	LC015
6789  003d               L4751:
6790                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6792  003d 7b01          	ld	a,(OFST+1,sp)
6793  003f 2610          	jrne	L5572
6794                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6796  0041 7211525c      	bres	21084,#0
6797                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6797                     ; 1725                             | (uint8_t)TIM1_OCMode);
6799  0045 c65258        	ld	a,21080
6800  0048 a48f          	and	a,#143
6801  004a 1a02          	or	a,(OFST+2,sp)
6802  004c c75258        	ld	21080,a
6804  004f 2036          	jra	L7572
6805  0051               L5572:
6806                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6808  0051 a101          	cp	a,#1
6809  0053 2610          	jrne	L1672
6810                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6812  0055 7219525c      	bres	21084,#4
6813                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6813                     ; 1734                             | (uint8_t)TIM1_OCMode);
6815  0059 c65259        	ld	a,21081
6816  005c a48f          	and	a,#143
6817  005e 1a02          	or	a,(OFST+2,sp)
6818  0060 c75259        	ld	21081,a
6820  0063 2022          	jra	L7572
6821  0065               L1672:
6822                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6824  0065 a102          	cp	a,#2
6825  0067 2610          	jrne	L5672
6826                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6828  0069 7211525d      	bres	21085,#0
6829                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6829                     ; 1743                             | (uint8_t)TIM1_OCMode);
6831  006d c6525a        	ld	a,21082
6832  0070 a48f          	and	a,#143
6833  0072 1a02          	or	a,(OFST+2,sp)
6834  0074 c7525a        	ld	21082,a
6836  0077 200e          	jra	L7572
6837  0079               L5672:
6838                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6840  0079 7219525d      	bres	21085,#4
6841                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6841                     ; 1752                             | (uint8_t)TIM1_OCMode);
6843  007d c6525b        	ld	a,21083
6844  0080 a48f          	and	a,#143
6845  0082 1a02          	or	a,(OFST+2,sp)
6846  0084 c7525b        	ld	21083,a
6847  0087               L7572:
6848                     ; 1754 }
6851  0087 85            	popw	x
6852  0088 81            	ret	
6853  0089               LC015:
6854  0089 89            	pushw	x
6855  008a 5f            	clrw	x
6856  008b 89            	pushw	x
6857  008c ae0000        	ldw	x,#L101
6858  008f cd0000        	call	_assert_failed
6860  0092 5b04          	addw	sp,#4
6861  0094 81            	ret	
6895                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6895                     ; 1763 {
6896                     .text:	section	.text,new
6897  0000               _TIM1_SetCounter:
6901                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6903  0000 9e            	ld	a,xh
6904  0001 c7525e        	ld	21086,a
6905                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6907  0004 9f            	ld	a,xl
6908  0005 c7525f        	ld	21087,a
6909                     ; 1767 }
6912  0008 81            	ret	
6946                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6946                     ; 1776 {
6947                     .text:	section	.text,new
6948  0000               _TIM1_SetAutoreload:
6952                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6954  0000 9e            	ld	a,xh
6955  0001 c75262        	ld	21090,a
6956                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6958  0004 9f            	ld	a,xl
6959  0005 c75263        	ld	21091,a
6960                     ; 1780  }
6963  0008 81            	ret	
6997                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6997                     ; 1789 {
6998                     .text:	section	.text,new
6999  0000               _TIM1_SetCompare1:
7003                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7005  0000 9e            	ld	a,xh
7006  0001 c75265        	ld	21093,a
7007                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7009  0004 9f            	ld	a,xl
7010  0005 c75266        	ld	21094,a
7011                     ; 1793 }
7014  0008 81            	ret	
7048                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7048                     ; 1802 {
7049                     .text:	section	.text,new
7050  0000               _TIM1_SetCompare2:
7054                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7056  0000 9e            	ld	a,xh
7057  0001 c75267        	ld	21095,a
7058                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7060  0004 9f            	ld	a,xl
7061  0005 c75268        	ld	21096,a
7062                     ; 1806 }
7065  0008 81            	ret	
7099                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7099                     ; 1815 {
7100                     .text:	section	.text,new
7101  0000               _TIM1_SetCompare3:
7105                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7107  0000 9e            	ld	a,xh
7108  0001 c75269        	ld	21097,a
7109                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7111  0004 9f            	ld	a,xl
7112  0005 c7526a        	ld	21098,a
7113                     ; 1819 }
7116  0008 81            	ret	
7150                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7150                     ; 1828 {
7151                     .text:	section	.text,new
7152  0000               _TIM1_SetCompare4:
7156                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7158  0000 9e            	ld	a,xh
7159  0001 c7526b        	ld	21099,a
7160                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7162  0004 9f            	ld	a,xl
7163  0005 c7526c        	ld	21100,a
7164                     ; 1832 }
7167  0008 81            	ret	
7204                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7204                     ; 1845 {
7205                     .text:	section	.text,new
7206  0000               _TIM1_SetIC1Prescaler:
7208  0000 88            	push	a
7209       00000000      OFST:	set	0
7212                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7214  0001 4d            	tnz	a
7215  0002 271a          	jreq	L2261
7216  0004 a104          	cp	a,#4
7217  0006 2716          	jreq	L2261
7218  0008 a108          	cp	a,#8
7219  000a 2712          	jreq	L2261
7220  000c a10c          	cp	a,#12
7221  000e 270e          	jreq	L2261
7222  0010 ae0737        	ldw	x,#1847
7223  0013 89            	pushw	x
7224  0014 5f            	clrw	x
7225  0015 89            	pushw	x
7226  0016 ae0000        	ldw	x,#L101
7227  0019 cd0000        	call	_assert_failed
7229  001c 5b04          	addw	sp,#4
7230  001e               L2261:
7231                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7231                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7233  001e c65258        	ld	a,21080
7234  0021 a4f3          	and	a,#243
7235  0023 1a01          	or	a,(OFST+1,sp)
7236  0025 c75258        	ld	21080,a
7237                     ; 1852 }
7240  0028 84            	pop	a
7241  0029 81            	ret	
7278                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7278                     ; 1865 {
7279                     .text:	section	.text,new
7280  0000               _TIM1_SetIC2Prescaler:
7282  0000 88            	push	a
7283       00000000      OFST:	set	0
7286                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7288  0001 4d            	tnz	a
7289  0002 271a          	jreq	L4361
7290  0004 a104          	cp	a,#4
7291  0006 2716          	jreq	L4361
7292  0008 a108          	cp	a,#8
7293  000a 2712          	jreq	L4361
7294  000c a10c          	cp	a,#12
7295  000e 270e          	jreq	L4361
7296  0010 ae074c        	ldw	x,#1868
7297  0013 89            	pushw	x
7298  0014 5f            	clrw	x
7299  0015 89            	pushw	x
7300  0016 ae0000        	ldw	x,#L101
7301  0019 cd0000        	call	_assert_failed
7303  001c 5b04          	addw	sp,#4
7304  001e               L4361:
7305                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7305                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7307  001e c65259        	ld	a,21081
7308  0021 a4f3          	and	a,#243
7309  0023 1a01          	or	a,(OFST+1,sp)
7310  0025 c75259        	ld	21081,a
7311                     ; 1873 }
7314  0028 84            	pop	a
7315  0029 81            	ret	
7352                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7352                     ; 1886 {
7353                     .text:	section	.text,new
7354  0000               _TIM1_SetIC3Prescaler:
7356  0000 88            	push	a
7357       00000000      OFST:	set	0
7360                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7362  0001 4d            	tnz	a
7363  0002 271a          	jreq	L6461
7364  0004 a104          	cp	a,#4
7365  0006 2716          	jreq	L6461
7366  0008 a108          	cp	a,#8
7367  000a 2712          	jreq	L6461
7368  000c a10c          	cp	a,#12
7369  000e 270e          	jreq	L6461
7370  0010 ae0761        	ldw	x,#1889
7371  0013 89            	pushw	x
7372  0014 5f            	clrw	x
7373  0015 89            	pushw	x
7374  0016 ae0000        	ldw	x,#L101
7375  0019 cd0000        	call	_assert_failed
7377  001c 5b04          	addw	sp,#4
7378  001e               L6461:
7379                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7379                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7381  001e c6525a        	ld	a,21082
7382  0021 a4f3          	and	a,#243
7383  0023 1a01          	or	a,(OFST+1,sp)
7384  0025 c7525a        	ld	21082,a
7385                     ; 1894 }
7388  0028 84            	pop	a
7389  0029 81            	ret	
7426                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7426                     ; 1907 {
7427                     .text:	section	.text,new
7428  0000               _TIM1_SetIC4Prescaler:
7430  0000 88            	push	a
7431       00000000      OFST:	set	0
7434                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7436  0001 4d            	tnz	a
7437  0002 271a          	jreq	L0661
7438  0004 a104          	cp	a,#4
7439  0006 2716          	jreq	L0661
7440  0008 a108          	cp	a,#8
7441  000a 2712          	jreq	L0661
7442  000c a10c          	cp	a,#12
7443  000e 270e          	jreq	L0661
7444  0010 ae0776        	ldw	x,#1910
7445  0013 89            	pushw	x
7446  0014 5f            	clrw	x
7447  0015 89            	pushw	x
7448  0016 ae0000        	ldw	x,#L101
7449  0019 cd0000        	call	_assert_failed
7451  001c 5b04          	addw	sp,#4
7452  001e               L0661:
7453                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7453                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7455  001e c6525b        	ld	a,21083
7456  0021 a4f3          	and	a,#243
7457  0023 1a01          	or	a,(OFST+1,sp)
7458  0025 c7525b        	ld	21083,a
7459                     ; 1915 }
7462  0028 84            	pop	a
7463  0029 81            	ret	
7515                     ; 1922 uint16_t TIM1_GetCapture1(void)
7515                     ; 1923 {
7516                     .text:	section	.text,new
7517  0000               _TIM1_GetCapture1:
7519  0000 5204          	subw	sp,#4
7520       00000004      OFST:	set	4
7523                     ; 1926   uint16_t tmpccr1 = 0;
7525                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7529                     ; 1929   tmpccr1h = TIM1->CCR1H;
7531  0002 c65265        	ld	a,21093
7532  0005 6b02          	ld	(OFST-2,sp),a
7533                     ; 1930   tmpccr1l = TIM1->CCR1L;
7535  0007 c65266        	ld	a,21094
7536  000a 6b01          	ld	(OFST-3,sp),a
7537                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7539  000c 5f            	clrw	x
7540  000d 97            	ld	xl,a
7541  000e 1f03          	ldw	(OFST-1,sp),x
7542                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7544  0010 5f            	clrw	x
7545  0011 7b02          	ld	a,(OFST-2,sp)
7546  0013 97            	ld	xl,a
7547  0014 7b04          	ld	a,(OFST+0,sp)
7548  0016 01            	rrwa	x,a
7549  0017 1a03          	or	a,(OFST-1,sp)
7550  0019 01            	rrwa	x,a
7551                     ; 1935   return (uint16_t)tmpccr1;
7555  001a 5b04          	addw	sp,#4
7556  001c 81            	ret	
7608                     ; 1943 uint16_t TIM1_GetCapture2(void)
7608                     ; 1944 {
7609                     .text:	section	.text,new
7610  0000               _TIM1_GetCapture2:
7612  0000 5204          	subw	sp,#4
7613       00000004      OFST:	set	4
7616                     ; 1947   uint16_t tmpccr2 = 0;
7618                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7622                     ; 1950   tmpccr2h = TIM1->CCR2H;
7624  0002 c65267        	ld	a,21095
7625  0005 6b02          	ld	(OFST-2,sp),a
7626                     ; 1951   tmpccr2l = TIM1->CCR2L;
7628  0007 c65268        	ld	a,21096
7629  000a 6b01          	ld	(OFST-3,sp),a
7630                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7632  000c 5f            	clrw	x
7633  000d 97            	ld	xl,a
7634  000e 1f03          	ldw	(OFST-1,sp),x
7635                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7637  0010 5f            	clrw	x
7638  0011 7b02          	ld	a,(OFST-2,sp)
7639  0013 97            	ld	xl,a
7640  0014 7b04          	ld	a,(OFST+0,sp)
7641  0016 01            	rrwa	x,a
7642  0017 1a03          	or	a,(OFST-1,sp)
7643  0019 01            	rrwa	x,a
7644                     ; 1956   return (uint16_t)tmpccr2;
7648  001a 5b04          	addw	sp,#4
7649  001c 81            	ret	
7701                     ; 1964 uint16_t TIM1_GetCapture3(void)
7701                     ; 1965 {
7702                     .text:	section	.text,new
7703  0000               _TIM1_GetCapture3:
7705  0000 5204          	subw	sp,#4
7706       00000004      OFST:	set	4
7709                     ; 1967   uint16_t tmpccr3 = 0;
7711                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7715                     ; 1970   tmpccr3h = TIM1->CCR3H;
7717  0002 c65269        	ld	a,21097
7718  0005 6b02          	ld	(OFST-2,sp),a
7719                     ; 1971   tmpccr3l = TIM1->CCR3L;
7721  0007 c6526a        	ld	a,21098
7722  000a 6b01          	ld	(OFST-3,sp),a
7723                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7725  000c 5f            	clrw	x
7726  000d 97            	ld	xl,a
7727  000e 1f03          	ldw	(OFST-1,sp),x
7728                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7730  0010 5f            	clrw	x
7731  0011 7b02          	ld	a,(OFST-2,sp)
7732  0013 97            	ld	xl,a
7733  0014 7b04          	ld	a,(OFST+0,sp)
7734  0016 01            	rrwa	x,a
7735  0017 1a03          	or	a,(OFST-1,sp)
7736  0019 01            	rrwa	x,a
7737                     ; 1976   return (uint16_t)tmpccr3;
7741  001a 5b04          	addw	sp,#4
7742  001c 81            	ret	
7794                     ; 1984 uint16_t TIM1_GetCapture4(void)
7794                     ; 1985 {
7795                     .text:	section	.text,new
7796  0000               _TIM1_GetCapture4:
7798  0000 5204          	subw	sp,#4
7799       00000004      OFST:	set	4
7802                     ; 1987   uint16_t tmpccr4 = 0;
7804                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7808                     ; 1990   tmpccr4h = TIM1->CCR4H;
7810  0002 c6526b        	ld	a,21099
7811  0005 6b02          	ld	(OFST-2,sp),a
7812                     ; 1991   tmpccr4l = TIM1->CCR4L;
7814  0007 c6526c        	ld	a,21100
7815  000a 6b01          	ld	(OFST-3,sp),a
7816                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7818  000c 5f            	clrw	x
7819  000d 97            	ld	xl,a
7820  000e 1f03          	ldw	(OFST-1,sp),x
7821                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7823  0010 5f            	clrw	x
7824  0011 7b02          	ld	a,(OFST-2,sp)
7825  0013 97            	ld	xl,a
7826  0014 7b04          	ld	a,(OFST+0,sp)
7827  0016 01            	rrwa	x,a
7828  0017 1a03          	or	a,(OFST-1,sp)
7829  0019 01            	rrwa	x,a
7830                     ; 1996   return (uint16_t)tmpccr4;
7834  001a 5b04          	addw	sp,#4
7835  001c 81            	ret	
7869                     ; 2004 uint16_t TIM1_GetCounter(void)
7869                     ; 2005 {
7870                     .text:	section	.text,new
7871  0000               _TIM1_GetCounter:
7873  0000 89            	pushw	x
7874       00000002      OFST:	set	2
7877                     ; 2006   uint16_t tmpcntr = 0;
7879                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7881  0001 c6525e        	ld	a,21086
7882  0004 97            	ld	xl,a
7883  0005 4f            	clr	a
7884  0006 02            	rlwa	x,a
7885  0007 1f01          	ldw	(OFST-1,sp),x
7886                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7888  0009 5f            	clrw	x
7889  000a c6525f        	ld	a,21087
7890  000d 97            	ld	xl,a
7891  000e 01            	rrwa	x,a
7892  000f 1a02          	or	a,(OFST+0,sp)
7893  0011 01            	rrwa	x,a
7894  0012 1a01          	or	a,(OFST-1,sp)
7895  0014 01            	rrwa	x,a
7898  0015 5b02          	addw	sp,#2
7899  0017 81            	ret	
7933                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7933                     ; 2020 {
7934                     .text:	section	.text,new
7935  0000               _TIM1_GetPrescaler:
7937  0000 89            	pushw	x
7938       00000002      OFST:	set	2
7941                     ; 2021   uint16_t temp = 0;
7943                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7945  0001 c65260        	ld	a,21088
7946  0004 97            	ld	xl,a
7947  0005 4f            	clr	a
7948  0006 02            	rlwa	x,a
7949  0007 1f01          	ldw	(OFST-1,sp),x
7950                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7952  0009 5f            	clrw	x
7953  000a c65261        	ld	a,21089
7954  000d 97            	ld	xl,a
7955  000e 01            	rrwa	x,a
7956  000f 1a02          	or	a,(OFST+0,sp)
7957  0011 01            	rrwa	x,a
7958  0012 1a01          	or	a,(OFST-1,sp)
7959  0014 01            	rrwa	x,a
7962  0015 5b02          	addw	sp,#2
7963  0017 81            	ret	
8138                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8138                     ; 2048 {
8139                     .text:	section	.text,new
8140  0000               _TIM1_GetFlagStatus:
8142  0000 89            	pushw	x
8143  0001 89            	pushw	x
8144       00000002      OFST:	set	2
8147                     ; 2049   FlagStatus bitstatus = RESET;
8149                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8153                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8155  0002 a30001        	cpw	x,#1
8156  0005 2745          	jreq	L6071
8157  0007 a30002        	cpw	x,#2
8158  000a 2740          	jreq	L6071
8159  000c a30004        	cpw	x,#4
8160  000f 273b          	jreq	L6071
8161  0011 a30008        	cpw	x,#8
8162  0014 2736          	jreq	L6071
8163  0016 a30010        	cpw	x,#16
8164  0019 2731          	jreq	L6071
8165  001b a30020        	cpw	x,#32
8166  001e 272c          	jreq	L6071
8167  0020 a30040        	cpw	x,#64
8168  0023 2727          	jreq	L6071
8169  0025 a30080        	cpw	x,#128
8170  0028 2722          	jreq	L6071
8171  002a a30200        	cpw	x,#512
8172  002d 271d          	jreq	L6071
8173  002f a30400        	cpw	x,#1024
8174  0032 2718          	jreq	L6071
8175  0034 a30800        	cpw	x,#2048
8176  0037 2713          	jreq	L6071
8177  0039 a31000        	cpw	x,#4096
8178  003c 270e          	jreq	L6071
8179  003e ae0805        	ldw	x,#2053
8180  0041 89            	pushw	x
8181  0042 5f            	clrw	x
8182  0043 89            	pushw	x
8183  0044 ae0000        	ldw	x,#L101
8184  0047 cd0000        	call	_assert_failed
8186  004a 5b04          	addw	sp,#4
8187  004c               L6071:
8188                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8190  004c c65255        	ld	a,21077
8191  004f 1404          	and	a,(OFST+2,sp)
8192  0051 6b01          	ld	(OFST-1,sp),a
8193                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8195  0053 7b03          	ld	a,(OFST+1,sp)
8196  0055 6b02          	ld	(OFST+0,sp),a
8197                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8199  0057 c45256        	and	a,21078
8200  005a 1a01          	or	a,(OFST-1,sp)
8201  005c 2702          	jreq	L7643
8202                     ; 2060     bitstatus = SET;
8204  005e a601          	ld	a,#1
8206  0060               L7643:
8207                     ; 2064     bitstatus = RESET;
8209                     ; 2066   return (FlagStatus)(bitstatus);
8213  0060 5b04          	addw	sp,#4
8214  0062 81            	ret	
8250                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8250                     ; 2088 {
8251                     .text:	section	.text,new
8252  0000               _TIM1_ClearFlag:
8254  0000 89            	pushw	x
8255       00000000      OFST:	set	0
8258                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8260  0001 01            	rrwa	x,a
8261  0002 9f            	ld	a,xl
8262  0003 a4e1          	and	a,#225
8263  0005 97            	ld	xl,a
8264  0006 4f            	clr	a
8265  0007 02            	rlwa	x,a
8266  0008 5d            	tnzw	x
8267  0009 2604          	jrne	L4171
8268  000b 1e01          	ldw	x,(OFST+1,sp)
8269  000d 260e          	jrne	L6171
8270  000f               L4171:
8271  000f ae082a        	ldw	x,#2090
8272  0012 89            	pushw	x
8273  0013 5f            	clrw	x
8274  0014 89            	pushw	x
8275  0015 ae0000        	ldw	x,#L101
8276  0018 cd0000        	call	_assert_failed
8278  001b 5b04          	addw	sp,#4
8279  001d               L6171:
8280                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8282  001d 7b02          	ld	a,(OFST+2,sp)
8283  001f 43            	cpl	a
8284  0020 c75255        	ld	21077,a
8285                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8285                     ; 2095                         (uint8_t)0x1E);
8287  0023 7b01          	ld	a,(OFST+1,sp)
8288  0025 43            	cpl	a
8289  0026 a41e          	and	a,#30
8290  0028 c75256        	ld	21078,a
8291                     ; 2096 }
8294  002b 85            	popw	x
8295  002c 81            	ret	
8360                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8360                     ; 2113 {
8361                     .text:	section	.text,new
8362  0000               _TIM1_GetITStatus:
8364  0000 88            	push	a
8365  0001 89            	pushw	x
8366       00000002      OFST:	set	2
8369                     ; 2114   ITStatus bitstatus = RESET;
8371                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8375                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8377  0002 a101          	cp	a,#1
8378  0004 272a          	jreq	L0371
8379  0006 a102          	cp	a,#2
8380  0008 2726          	jreq	L0371
8381  000a a104          	cp	a,#4
8382  000c 2722          	jreq	L0371
8383  000e a108          	cp	a,#8
8384  0010 271e          	jreq	L0371
8385  0012 a110          	cp	a,#16
8386  0014 271a          	jreq	L0371
8387  0016 a120          	cp	a,#32
8388  0018 2716          	jreq	L0371
8389  001a a140          	cp	a,#64
8390  001c 2712          	jreq	L0371
8391  001e a180          	cp	a,#128
8392  0020 270e          	jreq	L0371
8393  0022 ae0846        	ldw	x,#2118
8394  0025 89            	pushw	x
8395  0026 5f            	clrw	x
8396  0027 89            	pushw	x
8397  0028 ae0000        	ldw	x,#L101
8398  002b cd0000        	call	_assert_failed
8400  002e 5b04          	addw	sp,#4
8401  0030               L0371:
8402                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8404  0030 c65255        	ld	a,21077
8405  0033 1403          	and	a,(OFST+1,sp)
8406  0035 6b01          	ld	(OFST-1,sp),a
8407                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8409  0037 c65254        	ld	a,21076
8410  003a 1403          	and	a,(OFST+1,sp)
8411  003c 6b02          	ld	(OFST+0,sp),a
8412                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8414  003e 7b01          	ld	a,(OFST-1,sp)
8415  0040 2708          	jreq	L3453
8417  0042 7b02          	ld	a,(OFST+0,sp)
8418  0044 2704          	jreq	L3453
8419                     ; 2126     bitstatus = SET;
8421  0046 a601          	ld	a,#1
8423  0048 2001          	jra	L5453
8424  004a               L3453:
8425                     ; 2130     bitstatus = RESET;
8427  004a 4f            	clr	a
8428  004b               L5453:
8429                     ; 2132   return (ITStatus)(bitstatus);
8433  004b 5b03          	addw	sp,#3
8434  004d 81            	ret	
8471                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8471                     ; 2150 {
8472                     .text:	section	.text,new
8473  0000               _TIM1_ClearITPendingBit:
8475  0000 88            	push	a
8476       00000000      OFST:	set	0
8479                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8481  0001 4d            	tnz	a
8482  0002 260e          	jrne	L0471
8483  0004 ae0868        	ldw	x,#2152
8484  0007 89            	pushw	x
8485  0008 5f            	clrw	x
8486  0009 89            	pushw	x
8487  000a ae0000        	ldw	x,#L101
8488  000d cd0000        	call	_assert_failed
8490  0010 5b04          	addw	sp,#4
8491  0012               L0471:
8492                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8494  0012 7b01          	ld	a,(OFST+1,sp)
8495  0014 43            	cpl	a
8496  0015 c75255        	ld	21077,a
8497                     ; 2156 }
8500  0018 84            	pop	a
8501  0019 81            	ret	
8553                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8553                     ; 2175                        uint8_t TIM1_ICSelection,
8553                     ; 2176                        uint8_t TIM1_ICFilter)
8553                     ; 2177 {
8554                     .text:	section	.text,new
8555  0000               L3_TI1_Config:
8557  0000 89            	pushw	x
8558       00000001      OFST:	set	1
8561                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8563  0001 7211525c      	bres	21084,#0
8564  0005 88            	push	a
8565                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8565                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8567  0006 7b06          	ld	a,(OFST+5,sp)
8568  0008 97            	ld	xl,a
8569  0009 a610          	ld	a,#16
8570  000b 42            	mul	x,a
8571  000c 9f            	ld	a,xl
8572  000d 1a03          	or	a,(OFST+2,sp)
8573  000f 6b01          	ld	(OFST+0,sp),a
8574  0011 c65258        	ld	a,21080
8575  0014 a40c          	and	a,#12
8576  0016 1a01          	or	a,(OFST+0,sp)
8577  0018 c75258        	ld	21080,a
8578                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8580  001b 7b02          	ld	a,(OFST+1,sp)
8581  001d 2706          	jreq	L3163
8582                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8584  001f 7212525c      	bset	21084,#1
8586  0023 2004          	jra	L5163
8587  0025               L3163:
8588                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8590  0025 7213525c      	bres	21084,#1
8591  0029               L5163:
8592                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8594  0029 7210525c      	bset	21084,#0
8595                     ; 2197 }
8598  002d 5b03          	addw	sp,#3
8599  002f 81            	ret	
8651                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8651                     ; 2216                        uint8_t TIM1_ICSelection,
8651                     ; 2217                        uint8_t TIM1_ICFilter)
8651                     ; 2218 {
8652                     .text:	section	.text,new
8653  0000               L5_TI2_Config:
8655  0000 89            	pushw	x
8656       00000001      OFST:	set	1
8659                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8661  0001 7219525c      	bres	21084,#4
8662  0005 88            	push	a
8663                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8663                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8665  0006 7b06          	ld	a,(OFST+5,sp)
8666  0008 97            	ld	xl,a
8667  0009 a610          	ld	a,#16
8668  000b 42            	mul	x,a
8669  000c 9f            	ld	a,xl
8670  000d 1a03          	or	a,(OFST+2,sp)
8671  000f 6b01          	ld	(OFST+0,sp),a
8672  0011 c65259        	ld	a,21081
8673  0014 a40c          	and	a,#12
8674  0016 1a01          	or	a,(OFST+0,sp)
8675  0018 c75259        	ld	21081,a
8676                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8678  001b 7b02          	ld	a,(OFST+1,sp)
8679  001d 2706          	jreq	L5463
8680                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8682  001f 721a525c      	bset	21084,#5
8684  0023 2004          	jra	L7463
8685  0025               L5463:
8686                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8688  0025 721b525c      	bres	21084,#5
8689  0029               L7463:
8690                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8692  0029 7218525c      	bset	21084,#4
8693                     ; 2236 }
8696  002d 5b03          	addw	sp,#3
8697  002f 81            	ret	
8749                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8749                     ; 2255                        uint8_t TIM1_ICSelection,
8749                     ; 2256                        uint8_t TIM1_ICFilter)
8749                     ; 2257 {
8750                     .text:	section	.text,new
8751  0000               L7_TI3_Config:
8753  0000 89            	pushw	x
8754       00000001      OFST:	set	1
8757                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8759  0001 7211525d      	bres	21085,#0
8760  0005 88            	push	a
8761                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8761                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8763  0006 7b06          	ld	a,(OFST+5,sp)
8764  0008 97            	ld	xl,a
8765  0009 a610          	ld	a,#16
8766  000b 42            	mul	x,a
8767  000c 9f            	ld	a,xl
8768  000d 1a03          	or	a,(OFST+2,sp)
8769  000f 6b01          	ld	(OFST+0,sp),a
8770  0011 c6525a        	ld	a,21082
8771  0014 a40c          	and	a,#12
8772  0016 1a01          	or	a,(OFST+0,sp)
8773  0018 c7525a        	ld	21082,a
8774                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8776  001b 7b02          	ld	a,(OFST+1,sp)
8777  001d 2706          	jreq	L7763
8778                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8780  001f 7212525d      	bset	21085,#1
8782  0023 2004          	jra	L1073
8783  0025               L7763:
8784                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8786  0025 7213525d      	bres	21085,#1
8787  0029               L1073:
8788                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8790  0029 7210525d      	bset	21085,#0
8791                     ; 2276 }
8794  002d 5b03          	addw	sp,#3
8795  002f 81            	ret	
8847                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8847                     ; 2295                        uint8_t TIM1_ICSelection,
8847                     ; 2296                        uint8_t TIM1_ICFilter)
8847                     ; 2297 {
8848                     .text:	section	.text,new
8849  0000               L11_TI4_Config:
8851  0000 89            	pushw	x
8852       00000001      OFST:	set	1
8855                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8857  0001 7219525d      	bres	21085,#4
8858  0005 88            	push	a
8859                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8859                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8861  0006 7b06          	ld	a,(OFST+5,sp)
8862  0008 97            	ld	xl,a
8863  0009 a610          	ld	a,#16
8864  000b 42            	mul	x,a
8865  000c 9f            	ld	a,xl
8866  000d 1a03          	or	a,(OFST+2,sp)
8867  000f 6b01          	ld	(OFST+0,sp),a
8868  0011 c6525b        	ld	a,21083
8869  0014 a40c          	and	a,#12
8870  0016 1a01          	or	a,(OFST+0,sp)
8871  0018 c7525b        	ld	21083,a
8872                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8874  001b 7b02          	ld	a,(OFST+1,sp)
8875  001d 2706          	jreq	L1373
8876                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8878  001f 721a525d      	bset	21085,#5
8880  0023 2004          	jra	L3373
8881  0025               L1373:
8882                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8884  0025 721b525d      	bres	21085,#5
8885  0029               L3373:
8886                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8888  0029 7218525d      	bset	21085,#4
8889                     ; 2317 }
8892  002d 5b03          	addw	sp,#3
8893  002f 81            	ret	
8906                     	xdef	_TIM1_ClearITPendingBit
8907                     	xdef	_TIM1_GetITStatus
8908                     	xdef	_TIM1_ClearFlag
8909                     	xdef	_TIM1_GetFlagStatus
8910                     	xdef	_TIM1_GetPrescaler
8911                     	xdef	_TIM1_GetCounter
8912                     	xdef	_TIM1_GetCapture4
8913                     	xdef	_TIM1_GetCapture3
8914                     	xdef	_TIM1_GetCapture2
8915                     	xdef	_TIM1_GetCapture1
8916                     	xdef	_TIM1_SetIC4Prescaler
8917                     	xdef	_TIM1_SetIC3Prescaler
8918                     	xdef	_TIM1_SetIC2Prescaler
8919                     	xdef	_TIM1_SetIC1Prescaler
8920                     	xdef	_TIM1_SetCompare4
8921                     	xdef	_TIM1_SetCompare3
8922                     	xdef	_TIM1_SetCompare2
8923                     	xdef	_TIM1_SetCompare1
8924                     	xdef	_TIM1_SetAutoreload
8925                     	xdef	_TIM1_SetCounter
8926                     	xdef	_TIM1_SelectOCxM
8927                     	xdef	_TIM1_CCxNCmd
8928                     	xdef	_TIM1_CCxCmd
8929                     	xdef	_TIM1_OC4PolarityConfig
8930                     	xdef	_TIM1_OC3NPolarityConfig
8931                     	xdef	_TIM1_OC3PolarityConfig
8932                     	xdef	_TIM1_OC2NPolarityConfig
8933                     	xdef	_TIM1_OC2PolarityConfig
8934                     	xdef	_TIM1_OC1NPolarityConfig
8935                     	xdef	_TIM1_OC1PolarityConfig
8936                     	xdef	_TIM1_GenerateEvent
8937                     	xdef	_TIM1_OC4FastConfig
8938                     	xdef	_TIM1_OC3FastConfig
8939                     	xdef	_TIM1_OC2FastConfig
8940                     	xdef	_TIM1_OC1FastConfig
8941                     	xdef	_TIM1_OC4PreloadConfig
8942                     	xdef	_TIM1_OC3PreloadConfig
8943                     	xdef	_TIM1_OC2PreloadConfig
8944                     	xdef	_TIM1_OC1PreloadConfig
8945                     	xdef	_TIM1_CCPreloadControl
8946                     	xdef	_TIM1_SelectCOM
8947                     	xdef	_TIM1_ARRPreloadConfig
8948                     	xdef	_TIM1_ForcedOC4Config
8949                     	xdef	_TIM1_ForcedOC3Config
8950                     	xdef	_TIM1_ForcedOC2Config
8951                     	xdef	_TIM1_ForcedOC1Config
8952                     	xdef	_TIM1_CounterModeConfig
8953                     	xdef	_TIM1_PrescalerConfig
8954                     	xdef	_TIM1_EncoderInterfaceConfig
8955                     	xdef	_TIM1_SelectMasterSlaveMode
8956                     	xdef	_TIM1_SelectSlaveMode
8957                     	xdef	_TIM1_SelectOutputTrigger
8958                     	xdef	_TIM1_SelectOnePulseMode
8959                     	xdef	_TIM1_SelectHallSensor
8960                     	xdef	_TIM1_UpdateRequestConfig
8961                     	xdef	_TIM1_UpdateDisableConfig
8962                     	xdef	_TIM1_SelectInputTrigger
8963                     	xdef	_TIM1_TIxExternalClockConfig
8964                     	xdef	_TIM1_ETRConfig
8965                     	xdef	_TIM1_ETRClockMode2Config
8966                     	xdef	_TIM1_ETRClockMode1Config
8967                     	xdef	_TIM1_InternalClockConfig
8968                     	xdef	_TIM1_ITConfig
8969                     	xdef	_TIM1_CtrlPWMOutputs
8970                     	xdef	_TIM1_Cmd
8971                     	xdef	_TIM1_PWMIConfig
8972                     	xdef	_TIM1_ICInit
8973                     	xdef	_TIM1_BDTRConfig
8974                     	xdef	_TIM1_OC4Init
8975                     	xdef	_TIM1_OC3Init
8976                     	xdef	_TIM1_OC2Init
8977                     	xdef	_TIM1_OC1Init
8978                     	xdef	_TIM1_TimeBaseInit
8979                     	xdef	_TIM1_DeInit
8980                     	xref	_assert_failed
8981                     .const:	section	.text
8982  0000               L101:
8983  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8984  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8985  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8986  0036 5f74696d312e  	dc.b	"_tim1.c",0
9006                     	end
