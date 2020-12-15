   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 58 void TIM1_DeInit(void)
  45                     ; 59 {
  47                     .text:	section	.text,new
  48  0000               _TIM1_DeInit:
  52                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  54  0000 725f5250      	clr	21072
  55                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  57  0004 725f5251      	clr	21073
  58                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  60  0008 725f5252      	clr	21074
  61                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  63  000c 725f5253      	clr	21075
  64                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  66  0010 725f5254      	clr	21076
  67                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  69  0014 725f5256      	clr	21078
  70                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  72  0018 725f525c      	clr	21084
  73                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  75  001c 725f525d      	clr	21085
  76                     ; 70   TIM1->CCMR1 = 0x01;
  78  0020 35015258      	mov	21080,#1
  79                     ; 71   TIM1->CCMR2 = 0x01;
  81  0024 35015259      	mov	21081,#1
  82                     ; 72   TIM1->CCMR3 = 0x01;
  84  0028 3501525a      	mov	21082,#1
  85                     ; 73   TIM1->CCMR4 = 0x01;
  87  002c 3501525b      	mov	21083,#1
  88                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  90  0030 725f525c      	clr	21084
  91                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  93  0034 725f525d      	clr	21085
  94                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  96  0038 725f5258      	clr	21080
  97                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  99  003c 725f5259      	clr	21081
 100                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 102  0040 725f525a      	clr	21082
 103                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 105  0044 725f525b      	clr	21083
 106                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 108  0048 725f525e      	clr	21086
 109                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 111  004c 725f525f      	clr	21087
 112                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 114  0050 725f5260      	clr	21088
 115                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 117  0054 725f5261      	clr	21089
 118                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 120  0058 35ff5262      	mov	21090,#255
 121                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 123  005c 35ff5263      	mov	21091,#255
 124                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 126  0060 725f5265      	clr	21093
 127                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 129  0064 725f5266      	clr	21094
 130                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 132  0068 725f5267      	clr	21095
 133                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 135  006c 725f5268      	clr	21096
 136                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 138  0070 725f5269      	clr	21097
 139                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 141  0074 725f526a      	clr	21098
 142                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 144  0078 725f526b      	clr	21099
 145                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 147  007c 725f526c      	clr	21100
 148                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 150  0080 725f526f      	clr	21103
 151                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 153  0084 35015257      	mov	21079,#1
 154                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 156  0088 725f526e      	clr	21102
 157                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 159  008c 725f526d      	clr	21101
 160                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 162  0090 725f5264      	clr	21092
 163                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 165  0094 725f5255      	clr	21077
 166                     ; 101 }
 169  0098 81            	ret
 273                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 273                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 273                     ; 113                        uint16_t TIM1_Period,
 273                     ; 114                        uint8_t TIM1_RepetitionCounter)
 273                     ; 115 {
 274                     .text:	section	.text,new
 275  0000               _TIM1_TimeBaseInit:
 277  0000 89            	pushw	x
 278       00000000      OFST:	set	0
 281                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 283  0001 0d05          	tnz	(OFST+5,sp)
 284  0003 2718          	jreq	L21
 285  0005 7b05          	ld	a,(OFST+5,sp)
 286  0007 a110          	cp	a,#16
 287  0009 2712          	jreq	L21
 288  000b 7b05          	ld	a,(OFST+5,sp)
 289  000d a120          	cp	a,#32
 290  000f 270c          	jreq	L21
 291  0011 7b05          	ld	a,(OFST+5,sp)
 292  0013 a140          	cp	a,#64
 293  0015 2706          	jreq	L21
 294  0017 7b05          	ld	a,(OFST+5,sp)
 295  0019 a160          	cp	a,#96
 296  001b 2603          	jrne	L01
 297  001d               L21:
 298  001d 4f            	clr	a
 299  001e 2010          	jra	L41
 300  0020               L01:
 301  0020 ae0075        	ldw	x,#117
 302  0023 89            	pushw	x
 303  0024 ae0000        	ldw	x,#0
 304  0027 89            	pushw	x
 305  0028 ae0000        	ldw	x,#L37
 306  002b cd0000        	call	_assert_failed
 308  002e 5b04          	addw	sp,#4
 309  0030               L41:
 310                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 312  0030 7b06          	ld	a,(OFST+6,sp)
 313  0032 c75262        	ld	21090,a
 314                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 316  0035 7b07          	ld	a,(OFST+7,sp)
 317  0037 c75263        	ld	21091,a
 318                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 320  003a 7b01          	ld	a,(OFST+1,sp)
 321  003c c75260        	ld	21088,a
 322                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 324  003f 7b02          	ld	a,(OFST+2,sp)
 325  0041 c75261        	ld	21089,a
 326                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 326                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 328  0044 c65250        	ld	a,21072
 329  0047 a48f          	and	a,#143
 330  0049 1a05          	or	a,(OFST+5,sp)
 331  004b c75250        	ld	21072,a
 332                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 334  004e 7b08          	ld	a,(OFST+8,sp)
 335  0050 c75264        	ld	21092,a
 336                     ; 133 }
 339  0053 85            	popw	x
 340  0054 81            	ret
 624                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 624                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 624                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 624                     ; 157                   uint16_t TIM1_Pulse,
 624                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 624                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 624                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 624                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 624                     ; 162 {
 625                     .text:	section	.text,new
 626  0000               _TIM1_OC1Init:
 628  0000 89            	pushw	x
 629  0001 5203          	subw	sp,#3
 630       00000003      OFST:	set	3
 633                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 635  0003 9e            	ld	a,xh
 636  0004 4d            	tnz	a
 637  0005 2719          	jreq	L22
 638  0007 9e            	ld	a,xh
 639  0008 a110          	cp	a,#16
 640  000a 2714          	jreq	L22
 641  000c 9e            	ld	a,xh
 642  000d a120          	cp	a,#32
 643  000f 270f          	jreq	L22
 644  0011 9e            	ld	a,xh
 645  0012 a130          	cp	a,#48
 646  0014 270a          	jreq	L22
 647  0016 9e            	ld	a,xh
 648  0017 a160          	cp	a,#96
 649  0019 2705          	jreq	L22
 650  001b 9e            	ld	a,xh
 651  001c a170          	cp	a,#112
 652  001e 2603          	jrne	L02
 653  0020               L22:
 654  0020 4f            	clr	a
 655  0021 2010          	jra	L42
 656  0023               L02:
 657  0023 ae00a4        	ldw	x,#164
 658  0026 89            	pushw	x
 659  0027 ae0000        	ldw	x,#0
 660  002a 89            	pushw	x
 661  002b ae0000        	ldw	x,#L37
 662  002e cd0000        	call	_assert_failed
 664  0031 5b04          	addw	sp,#4
 665  0033               L42:
 666                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 668  0033 0d05          	tnz	(OFST+2,sp)
 669  0035 2706          	jreq	L03
 670  0037 7b05          	ld	a,(OFST+2,sp)
 671  0039 a111          	cp	a,#17
 672  003b 2603          	jrne	L62
 673  003d               L03:
 674  003d 4f            	clr	a
 675  003e 2010          	jra	L23
 676  0040               L62:
 677  0040 ae00a5        	ldw	x,#165
 678  0043 89            	pushw	x
 679  0044 ae0000        	ldw	x,#0
 680  0047 89            	pushw	x
 681  0048 ae0000        	ldw	x,#L37
 682  004b cd0000        	call	_assert_failed
 684  004e 5b04          	addw	sp,#4
 685  0050               L23:
 686                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 688  0050 0d08          	tnz	(OFST+5,sp)
 689  0052 2706          	jreq	L63
 690  0054 7b08          	ld	a,(OFST+5,sp)
 691  0056 a144          	cp	a,#68
 692  0058 2603          	jrne	L43
 693  005a               L63:
 694  005a 4f            	clr	a
 695  005b 2010          	jra	L04
 696  005d               L43:
 697  005d ae00a6        	ldw	x,#166
 698  0060 89            	pushw	x
 699  0061 ae0000        	ldw	x,#0
 700  0064 89            	pushw	x
 701  0065 ae0000        	ldw	x,#L37
 702  0068 cd0000        	call	_assert_failed
 704  006b 5b04          	addw	sp,#4
 705  006d               L04:
 706                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 708  006d 0d0b          	tnz	(OFST+8,sp)
 709  006f 2706          	jreq	L44
 710  0071 7b0b          	ld	a,(OFST+8,sp)
 711  0073 a122          	cp	a,#34
 712  0075 2603          	jrne	L24
 713  0077               L44:
 714  0077 4f            	clr	a
 715  0078 2010          	jra	L64
 716  007a               L24:
 717  007a ae00a7        	ldw	x,#167
 718  007d 89            	pushw	x
 719  007e ae0000        	ldw	x,#0
 720  0081 89            	pushw	x
 721  0082 ae0000        	ldw	x,#L37
 722  0085 cd0000        	call	_assert_failed
 724  0088 5b04          	addw	sp,#4
 725  008a               L64:
 726                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 728  008a 0d0c          	tnz	(OFST+9,sp)
 729  008c 2706          	jreq	L25
 730  008e 7b0c          	ld	a,(OFST+9,sp)
 731  0090 a188          	cp	a,#136
 732  0092 2603          	jrne	L05
 733  0094               L25:
 734  0094 4f            	clr	a
 735  0095 2010          	jra	L45
 736  0097               L05:
 737  0097 ae00a8        	ldw	x,#168
 738  009a 89            	pushw	x
 739  009b ae0000        	ldw	x,#0
 740  009e 89            	pushw	x
 741  009f ae0000        	ldw	x,#L37
 742  00a2 cd0000        	call	_assert_failed
 744  00a5 5b04          	addw	sp,#4
 745  00a7               L45:
 746                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 748  00a7 7b0d          	ld	a,(OFST+10,sp)
 749  00a9 a155          	cp	a,#85
 750  00ab 2704          	jreq	L06
 751  00ad 0d0d          	tnz	(OFST+10,sp)
 752  00af 2603          	jrne	L65
 753  00b1               L06:
 754  00b1 4f            	clr	a
 755  00b2 2010          	jra	L26
 756  00b4               L65:
 757  00b4 ae00a9        	ldw	x,#169
 758  00b7 89            	pushw	x
 759  00b8 ae0000        	ldw	x,#0
 760  00bb 89            	pushw	x
 761  00bc ae0000        	ldw	x,#L37
 762  00bf cd0000        	call	_assert_failed
 764  00c2 5b04          	addw	sp,#4
 765  00c4               L26:
 766                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 768  00c4 7b0e          	ld	a,(OFST+11,sp)
 769  00c6 a12a          	cp	a,#42
 770  00c8 2704          	jreq	L66
 771  00ca 0d0e          	tnz	(OFST+11,sp)
 772  00cc 2603          	jrne	L46
 773  00ce               L66:
 774  00ce 4f            	clr	a
 775  00cf 2010          	jra	L07
 776  00d1               L46:
 777  00d1 ae00aa        	ldw	x,#170
 778  00d4 89            	pushw	x
 779  00d5 ae0000        	ldw	x,#0
 780  00d8 89            	pushw	x
 781  00d9 ae0000        	ldw	x,#L37
 782  00dc cd0000        	call	_assert_failed
 784  00df 5b04          	addw	sp,#4
 785  00e1               L07:
 786                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 786                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 788  00e1 c6525c        	ld	a,21084
 789  00e4 a4f0          	and	a,#240
 790  00e6 c7525c        	ld	21084,a
 791                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 791                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 791                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 791                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 793  00e9 7b0c          	ld	a,(OFST+9,sp)
 794  00eb a408          	and	a,#8
 795  00ed 6b03          	ld	(OFST+0,sp),a
 796  00ef 7b0b          	ld	a,(OFST+8,sp)
 797  00f1 a402          	and	a,#2
 798  00f3 1a03          	or	a,(OFST+0,sp)
 799  00f5 6b02          	ld	(OFST-1,sp),a
 800  00f7 7b08          	ld	a,(OFST+5,sp)
 801  00f9 a404          	and	a,#4
 802  00fb 6b01          	ld	(OFST-2,sp),a
 803  00fd 7b05          	ld	a,(OFST+2,sp)
 804  00ff a401          	and	a,#1
 805  0101 1a01          	or	a,(OFST-2,sp)
 806  0103 1a02          	or	a,(OFST-1,sp)
 807  0105 ca525c        	or	a,21084
 808  0108 c7525c        	ld	21084,a
 809                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 809                     ; 185                           (uint8_t)TIM1_OCMode);
 811  010b c65258        	ld	a,21080
 812  010e a48f          	and	a,#143
 813  0110 1a04          	or	a,(OFST+1,sp)
 814  0112 c75258        	ld	21080,a
 815                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 817  0115 c6526f        	ld	a,21103
 818  0118 a4fc          	and	a,#252
 819  011a c7526f        	ld	21103,a
 820                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 820                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 822  011d 7b0e          	ld	a,(OFST+11,sp)
 823  011f a402          	and	a,#2
 824  0121 6b03          	ld	(OFST+0,sp),a
 825  0123 7b0d          	ld	a,(OFST+10,sp)
 826  0125 a401          	and	a,#1
 827  0127 1a03          	or	a,(OFST+0,sp)
 828  0129 ca526f        	or	a,21103
 829  012c c7526f        	ld	21103,a
 830                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 832  012f 7b09          	ld	a,(OFST+6,sp)
 833  0131 c75265        	ld	21093,a
 834                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 836  0134 7b0a          	ld	a,(OFST+7,sp)
 837  0136 c75266        	ld	21094,a
 838                     ; 196 }
 841  0139 5b05          	addw	sp,#5
 842  013b 81            	ret
 945                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 945                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 945                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 945                     ; 220                   uint16_t TIM1_Pulse,
 945                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 945                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 945                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 945                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 945                     ; 225 {
 946                     .text:	section	.text,new
 947  0000               _TIM1_OC2Init:
 949  0000 89            	pushw	x
 950  0001 5203          	subw	sp,#3
 951       00000003      OFST:	set	3
 954                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 956  0003 9e            	ld	a,xh
 957  0004 4d            	tnz	a
 958  0005 2719          	jreq	L67
 959  0007 9e            	ld	a,xh
 960  0008 a110          	cp	a,#16
 961  000a 2714          	jreq	L67
 962  000c 9e            	ld	a,xh
 963  000d a120          	cp	a,#32
 964  000f 270f          	jreq	L67
 965  0011 9e            	ld	a,xh
 966  0012 a130          	cp	a,#48
 967  0014 270a          	jreq	L67
 968  0016 9e            	ld	a,xh
 969  0017 a160          	cp	a,#96
 970  0019 2705          	jreq	L67
 971  001b 9e            	ld	a,xh
 972  001c a170          	cp	a,#112
 973  001e 2603          	jrne	L47
 974  0020               L67:
 975  0020 4f            	clr	a
 976  0021 2010          	jra	L001
 977  0023               L47:
 978  0023 ae00e3        	ldw	x,#227
 979  0026 89            	pushw	x
 980  0027 ae0000        	ldw	x,#0
 981  002a 89            	pushw	x
 982  002b ae0000        	ldw	x,#L37
 983  002e cd0000        	call	_assert_failed
 985  0031 5b04          	addw	sp,#4
 986  0033               L001:
 987                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 989  0033 0d05          	tnz	(OFST+2,sp)
 990  0035 2706          	jreq	L401
 991  0037 7b05          	ld	a,(OFST+2,sp)
 992  0039 a111          	cp	a,#17
 993  003b 2603          	jrne	L201
 994  003d               L401:
 995  003d 4f            	clr	a
 996  003e 2010          	jra	L601
 997  0040               L201:
 998  0040 ae00e4        	ldw	x,#228
 999  0043 89            	pushw	x
1000  0044 ae0000        	ldw	x,#0
1001  0047 89            	pushw	x
1002  0048 ae0000        	ldw	x,#L37
1003  004b cd0000        	call	_assert_failed
1005  004e 5b04          	addw	sp,#4
1006  0050               L601:
1007                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1009  0050 0d08          	tnz	(OFST+5,sp)
1010  0052 2706          	jreq	L211
1011  0054 7b08          	ld	a,(OFST+5,sp)
1012  0056 a144          	cp	a,#68
1013  0058 2603          	jrne	L011
1014  005a               L211:
1015  005a 4f            	clr	a
1016  005b 2010          	jra	L411
1017  005d               L011:
1018  005d ae00e5        	ldw	x,#229
1019  0060 89            	pushw	x
1020  0061 ae0000        	ldw	x,#0
1021  0064 89            	pushw	x
1022  0065 ae0000        	ldw	x,#L37
1023  0068 cd0000        	call	_assert_failed
1025  006b 5b04          	addw	sp,#4
1026  006d               L411:
1027                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1029  006d 0d0b          	tnz	(OFST+8,sp)
1030  006f 2706          	jreq	L021
1031  0071 7b0b          	ld	a,(OFST+8,sp)
1032  0073 a122          	cp	a,#34
1033  0075 2603          	jrne	L611
1034  0077               L021:
1035  0077 4f            	clr	a
1036  0078 2010          	jra	L221
1037  007a               L611:
1038  007a ae00e6        	ldw	x,#230
1039  007d 89            	pushw	x
1040  007e ae0000        	ldw	x,#0
1041  0081 89            	pushw	x
1042  0082 ae0000        	ldw	x,#L37
1043  0085 cd0000        	call	_assert_failed
1045  0088 5b04          	addw	sp,#4
1046  008a               L221:
1047                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1049  008a 0d0c          	tnz	(OFST+9,sp)
1050  008c 2706          	jreq	L621
1051  008e 7b0c          	ld	a,(OFST+9,sp)
1052  0090 a188          	cp	a,#136
1053  0092 2603          	jrne	L421
1054  0094               L621:
1055  0094 4f            	clr	a
1056  0095 2010          	jra	L031
1057  0097               L421:
1058  0097 ae00e7        	ldw	x,#231
1059  009a 89            	pushw	x
1060  009b ae0000        	ldw	x,#0
1061  009e 89            	pushw	x
1062  009f ae0000        	ldw	x,#L37
1063  00a2 cd0000        	call	_assert_failed
1065  00a5 5b04          	addw	sp,#4
1066  00a7               L031:
1067                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1069  00a7 7b0d          	ld	a,(OFST+10,sp)
1070  00a9 a155          	cp	a,#85
1071  00ab 2704          	jreq	L431
1072  00ad 0d0d          	tnz	(OFST+10,sp)
1073  00af 2603          	jrne	L231
1074  00b1               L431:
1075  00b1 4f            	clr	a
1076  00b2 2010          	jra	L631
1077  00b4               L231:
1078  00b4 ae00e8        	ldw	x,#232
1079  00b7 89            	pushw	x
1080  00b8 ae0000        	ldw	x,#0
1081  00bb 89            	pushw	x
1082  00bc ae0000        	ldw	x,#L37
1083  00bf cd0000        	call	_assert_failed
1085  00c2 5b04          	addw	sp,#4
1086  00c4               L631:
1087                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1089  00c4 7b0e          	ld	a,(OFST+11,sp)
1090  00c6 a12a          	cp	a,#42
1091  00c8 2704          	jreq	L241
1092  00ca 0d0e          	tnz	(OFST+11,sp)
1093  00cc 2603          	jrne	L041
1094  00ce               L241:
1095  00ce 4f            	clr	a
1096  00cf 2010          	jra	L441
1097  00d1               L041:
1098  00d1 ae00e9        	ldw	x,#233
1099  00d4 89            	pushw	x
1100  00d5 ae0000        	ldw	x,#0
1101  00d8 89            	pushw	x
1102  00d9 ae0000        	ldw	x,#L37
1103  00dc cd0000        	call	_assert_failed
1105  00df 5b04          	addw	sp,#4
1106  00e1               L441:
1107                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1107                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1109  00e1 c6525c        	ld	a,21084
1110  00e4 a40f          	and	a,#15
1111  00e6 c7525c        	ld	21084,a
1112                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1112                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1112                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1112                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1114  00e9 7b0c          	ld	a,(OFST+9,sp)
1115  00eb a480          	and	a,#128
1116  00ed 6b03          	ld	(OFST+0,sp),a
1117  00ef 7b0b          	ld	a,(OFST+8,sp)
1118  00f1 a420          	and	a,#32
1119  00f3 1a03          	or	a,(OFST+0,sp)
1120  00f5 6b02          	ld	(OFST-1,sp),a
1121  00f7 7b08          	ld	a,(OFST+5,sp)
1122  00f9 a440          	and	a,#64
1123  00fb 6b01          	ld	(OFST-2,sp),a
1124  00fd 7b05          	ld	a,(OFST+2,sp)
1125  00ff a410          	and	a,#16
1126  0101 1a01          	or	a,(OFST-2,sp)
1127  0103 1a02          	or	a,(OFST-1,sp)
1128  0105 ca525c        	or	a,21084
1129  0108 c7525c        	ld	21084,a
1130                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1130                     ; 249                           (uint8_t)TIM1_OCMode);
1132  010b c65259        	ld	a,21081
1133  010e a48f          	and	a,#143
1134  0110 1a04          	or	a,(OFST+1,sp)
1135  0112 c75259        	ld	21081,a
1136                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1138  0115 c6526f        	ld	a,21103
1139  0118 a4f3          	and	a,#243
1140  011a c7526f        	ld	21103,a
1141                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1141                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1143  011d 7b0e          	ld	a,(OFST+11,sp)
1144  011f a408          	and	a,#8
1145  0121 6b03          	ld	(OFST+0,sp),a
1146  0123 7b0d          	ld	a,(OFST+10,sp)
1147  0125 a404          	and	a,#4
1148  0127 1a03          	or	a,(OFST+0,sp)
1149  0129 ca526f        	or	a,21103
1150  012c c7526f        	ld	21103,a
1151                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1153  012f 7b09          	ld	a,(OFST+6,sp)
1154  0131 c75267        	ld	21095,a
1155                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1157  0134 7b0a          	ld	a,(OFST+7,sp)
1158  0136 c75268        	ld	21096,a
1159                     ; 260 }
1162  0139 5b05          	addw	sp,#5
1163  013b 81            	ret
1266                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1266                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1266                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1266                     ; 284                   uint16_t TIM1_Pulse,
1266                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1266                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1266                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1266                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1266                     ; 289 {
1267                     .text:	section	.text,new
1268  0000               _TIM1_OC3Init:
1270  0000 89            	pushw	x
1271  0001 5203          	subw	sp,#3
1272       00000003      OFST:	set	3
1275                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1277  0003 9e            	ld	a,xh
1278  0004 4d            	tnz	a
1279  0005 2719          	jreq	L251
1280  0007 9e            	ld	a,xh
1281  0008 a110          	cp	a,#16
1282  000a 2714          	jreq	L251
1283  000c 9e            	ld	a,xh
1284  000d a120          	cp	a,#32
1285  000f 270f          	jreq	L251
1286  0011 9e            	ld	a,xh
1287  0012 a130          	cp	a,#48
1288  0014 270a          	jreq	L251
1289  0016 9e            	ld	a,xh
1290  0017 a160          	cp	a,#96
1291  0019 2705          	jreq	L251
1292  001b 9e            	ld	a,xh
1293  001c a170          	cp	a,#112
1294  001e 2603          	jrne	L051
1295  0020               L251:
1296  0020 4f            	clr	a
1297  0021 2010          	jra	L451
1298  0023               L051:
1299  0023 ae0123        	ldw	x,#291
1300  0026 89            	pushw	x
1301  0027 ae0000        	ldw	x,#0
1302  002a 89            	pushw	x
1303  002b ae0000        	ldw	x,#L37
1304  002e cd0000        	call	_assert_failed
1306  0031 5b04          	addw	sp,#4
1307  0033               L451:
1308                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1310  0033 0d05          	tnz	(OFST+2,sp)
1311  0035 2706          	jreq	L061
1312  0037 7b05          	ld	a,(OFST+2,sp)
1313  0039 a111          	cp	a,#17
1314  003b 2603          	jrne	L651
1315  003d               L061:
1316  003d 4f            	clr	a
1317  003e 2010          	jra	L261
1318  0040               L651:
1319  0040 ae0124        	ldw	x,#292
1320  0043 89            	pushw	x
1321  0044 ae0000        	ldw	x,#0
1322  0047 89            	pushw	x
1323  0048 ae0000        	ldw	x,#L37
1324  004b cd0000        	call	_assert_failed
1326  004e 5b04          	addw	sp,#4
1327  0050               L261:
1328                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1330  0050 0d08          	tnz	(OFST+5,sp)
1331  0052 2706          	jreq	L661
1332  0054 7b08          	ld	a,(OFST+5,sp)
1333  0056 a144          	cp	a,#68
1334  0058 2603          	jrne	L461
1335  005a               L661:
1336  005a 4f            	clr	a
1337  005b 2010          	jra	L071
1338  005d               L461:
1339  005d ae0125        	ldw	x,#293
1340  0060 89            	pushw	x
1341  0061 ae0000        	ldw	x,#0
1342  0064 89            	pushw	x
1343  0065 ae0000        	ldw	x,#L37
1344  0068 cd0000        	call	_assert_failed
1346  006b 5b04          	addw	sp,#4
1347  006d               L071:
1348                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1350  006d 0d0b          	tnz	(OFST+8,sp)
1351  006f 2706          	jreq	L471
1352  0071 7b0b          	ld	a,(OFST+8,sp)
1353  0073 a122          	cp	a,#34
1354  0075 2603          	jrne	L271
1355  0077               L471:
1356  0077 4f            	clr	a
1357  0078 2010          	jra	L671
1358  007a               L271:
1359  007a ae0126        	ldw	x,#294
1360  007d 89            	pushw	x
1361  007e ae0000        	ldw	x,#0
1362  0081 89            	pushw	x
1363  0082 ae0000        	ldw	x,#L37
1364  0085 cd0000        	call	_assert_failed
1366  0088 5b04          	addw	sp,#4
1367  008a               L671:
1368                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1370  008a 0d0c          	tnz	(OFST+9,sp)
1371  008c 2706          	jreq	L202
1372  008e 7b0c          	ld	a,(OFST+9,sp)
1373  0090 a188          	cp	a,#136
1374  0092 2603          	jrne	L002
1375  0094               L202:
1376  0094 4f            	clr	a
1377  0095 2010          	jra	L402
1378  0097               L002:
1379  0097 ae0127        	ldw	x,#295
1380  009a 89            	pushw	x
1381  009b ae0000        	ldw	x,#0
1382  009e 89            	pushw	x
1383  009f ae0000        	ldw	x,#L37
1384  00a2 cd0000        	call	_assert_failed
1386  00a5 5b04          	addw	sp,#4
1387  00a7               L402:
1388                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1390  00a7 7b0d          	ld	a,(OFST+10,sp)
1391  00a9 a155          	cp	a,#85
1392  00ab 2704          	jreq	L012
1393  00ad 0d0d          	tnz	(OFST+10,sp)
1394  00af 2603          	jrne	L602
1395  00b1               L012:
1396  00b1 4f            	clr	a
1397  00b2 2010          	jra	L212
1398  00b4               L602:
1399  00b4 ae0128        	ldw	x,#296
1400  00b7 89            	pushw	x
1401  00b8 ae0000        	ldw	x,#0
1402  00bb 89            	pushw	x
1403  00bc ae0000        	ldw	x,#L37
1404  00bf cd0000        	call	_assert_failed
1406  00c2 5b04          	addw	sp,#4
1407  00c4               L212:
1408                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1410  00c4 7b0e          	ld	a,(OFST+11,sp)
1411  00c6 a12a          	cp	a,#42
1412  00c8 2704          	jreq	L612
1413  00ca 0d0e          	tnz	(OFST+11,sp)
1414  00cc 2603          	jrne	L412
1415  00ce               L612:
1416  00ce 4f            	clr	a
1417  00cf 2010          	jra	L022
1418  00d1               L412:
1419  00d1 ae0129        	ldw	x,#297
1420  00d4 89            	pushw	x
1421  00d5 ae0000        	ldw	x,#0
1422  00d8 89            	pushw	x
1423  00d9 ae0000        	ldw	x,#L37
1424  00dc cd0000        	call	_assert_failed
1426  00df 5b04          	addw	sp,#4
1427  00e1               L022:
1428                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1428                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1430  00e1 c6525d        	ld	a,21085
1431  00e4 a4f0          	and	a,#240
1432  00e6 c7525d        	ld	21085,a
1433                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1433                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1433                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1433                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1435  00e9 7b0c          	ld	a,(OFST+9,sp)
1436  00eb a408          	and	a,#8
1437  00ed 6b03          	ld	(OFST+0,sp),a
1438  00ef 7b0b          	ld	a,(OFST+8,sp)
1439  00f1 a402          	and	a,#2
1440  00f3 1a03          	or	a,(OFST+0,sp)
1441  00f5 6b02          	ld	(OFST-1,sp),a
1442  00f7 7b08          	ld	a,(OFST+5,sp)
1443  00f9 a404          	and	a,#4
1444  00fb 6b01          	ld	(OFST-2,sp),a
1445  00fd 7b05          	ld	a,(OFST+2,sp)
1446  00ff a401          	and	a,#1
1447  0101 1a01          	or	a,(OFST-2,sp)
1448  0103 1a02          	or	a,(OFST-1,sp)
1449  0105 ca525d        	or	a,21085
1450  0108 c7525d        	ld	21085,a
1451                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1451                     ; 312                           (uint8_t)TIM1_OCMode);
1453  010b c6525a        	ld	a,21082
1454  010e a48f          	and	a,#143
1455  0110 1a04          	or	a,(OFST+1,sp)
1456  0112 c7525a        	ld	21082,a
1457                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1459  0115 c6526f        	ld	a,21103
1460  0118 a4cf          	and	a,#207
1461  011a c7526f        	ld	21103,a
1462                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1462                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1464  011d 7b0e          	ld	a,(OFST+11,sp)
1465  011f a420          	and	a,#32
1466  0121 6b03          	ld	(OFST+0,sp),a
1467  0123 7b0d          	ld	a,(OFST+10,sp)
1468  0125 a410          	and	a,#16
1469  0127 1a03          	or	a,(OFST+0,sp)
1470  0129 ca526f        	or	a,21103
1471  012c c7526f        	ld	21103,a
1472                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1474  012f 7b09          	ld	a,(OFST+6,sp)
1475  0131 c75269        	ld	21097,a
1476                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1478  0134 7b0a          	ld	a,(OFST+7,sp)
1479  0136 c7526a        	ld	21098,a
1480                     ; 323 }
1483  0139 5b05          	addw	sp,#5
1484  013b 81            	ret
1557                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1557                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1557                     ; 340                   uint16_t TIM1_Pulse,
1557                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1557                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1557                     ; 343 {
1558                     .text:	section	.text,new
1559  0000               _TIM1_OC4Init:
1561  0000 89            	pushw	x
1562  0001 88            	push	a
1563       00000001      OFST:	set	1
1566                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1568  0002 9e            	ld	a,xh
1569  0003 4d            	tnz	a
1570  0004 2719          	jreq	L622
1571  0006 9e            	ld	a,xh
1572  0007 a110          	cp	a,#16
1573  0009 2714          	jreq	L622
1574  000b 9e            	ld	a,xh
1575  000c a120          	cp	a,#32
1576  000e 270f          	jreq	L622
1577  0010 9e            	ld	a,xh
1578  0011 a130          	cp	a,#48
1579  0013 270a          	jreq	L622
1580  0015 9e            	ld	a,xh
1581  0016 a160          	cp	a,#96
1582  0018 2705          	jreq	L622
1583  001a 9e            	ld	a,xh
1584  001b a170          	cp	a,#112
1585  001d 2603          	jrne	L422
1586  001f               L622:
1587  001f 4f            	clr	a
1588  0020 2010          	jra	L032
1589  0022               L422:
1590  0022 ae0159        	ldw	x,#345
1591  0025 89            	pushw	x
1592  0026 ae0000        	ldw	x,#0
1593  0029 89            	pushw	x
1594  002a ae0000        	ldw	x,#L37
1595  002d cd0000        	call	_assert_failed
1597  0030 5b04          	addw	sp,#4
1598  0032               L032:
1599                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1601  0032 0d03          	tnz	(OFST+2,sp)
1602  0034 2706          	jreq	L432
1603  0036 7b03          	ld	a,(OFST+2,sp)
1604  0038 a111          	cp	a,#17
1605  003a 2603          	jrne	L232
1606  003c               L432:
1607  003c 4f            	clr	a
1608  003d 2010          	jra	L632
1609  003f               L232:
1610  003f ae015a        	ldw	x,#346
1611  0042 89            	pushw	x
1612  0043 ae0000        	ldw	x,#0
1613  0046 89            	pushw	x
1614  0047 ae0000        	ldw	x,#L37
1615  004a cd0000        	call	_assert_failed
1617  004d 5b04          	addw	sp,#4
1618  004f               L632:
1619                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1621  004f 0d08          	tnz	(OFST+7,sp)
1622  0051 2706          	jreq	L242
1623  0053 7b08          	ld	a,(OFST+7,sp)
1624  0055 a122          	cp	a,#34
1625  0057 2603          	jrne	L042
1626  0059               L242:
1627  0059 4f            	clr	a
1628  005a 2010          	jra	L442
1629  005c               L042:
1630  005c ae015b        	ldw	x,#347
1631  005f 89            	pushw	x
1632  0060 ae0000        	ldw	x,#0
1633  0063 89            	pushw	x
1634  0064 ae0000        	ldw	x,#L37
1635  0067 cd0000        	call	_assert_failed
1637  006a 5b04          	addw	sp,#4
1638  006c               L442:
1639                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1641  006c 7b09          	ld	a,(OFST+8,sp)
1642  006e a155          	cp	a,#85
1643  0070 2704          	jreq	L052
1644  0072 0d09          	tnz	(OFST+8,sp)
1645  0074 2603          	jrne	L642
1646  0076               L052:
1647  0076 4f            	clr	a
1648  0077 2010          	jra	L252
1649  0079               L642:
1650  0079 ae015c        	ldw	x,#348
1651  007c 89            	pushw	x
1652  007d ae0000        	ldw	x,#0
1653  0080 89            	pushw	x
1654  0081 ae0000        	ldw	x,#L37
1655  0084 cd0000        	call	_assert_failed
1657  0087 5b04          	addw	sp,#4
1658  0089               L252:
1659                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1661  0089 c6525d        	ld	a,21085
1662  008c a4cf          	and	a,#207
1663  008e c7525d        	ld	21085,a
1664                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1664                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1666  0091 7b08          	ld	a,(OFST+7,sp)
1667  0093 a420          	and	a,#32
1668  0095 6b01          	ld	(OFST+0,sp),a
1669  0097 7b03          	ld	a,(OFST+2,sp)
1670  0099 a410          	and	a,#16
1671  009b 1a01          	or	a,(OFST+0,sp)
1672  009d ca525d        	or	a,21085
1673  00a0 c7525d        	ld	21085,a
1674                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1674                     ; 358                           TIM1_OCMode);
1676  00a3 c6525b        	ld	a,21083
1677  00a6 a48f          	and	a,#143
1678  00a8 1a02          	or	a,(OFST+1,sp)
1679  00aa c7525b        	ld	21083,a
1680                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1682  00ad 0d09          	tnz	(OFST+8,sp)
1683  00af 270a          	jreq	L124
1684                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1686  00b1 c6526f        	ld	a,21103
1687  00b4 aadf          	or	a,#223
1688  00b6 c7526f        	ld	21103,a
1690  00b9 2004          	jra	L324
1691  00bb               L124:
1692                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1694  00bb 721d526f      	bres	21103,#6
1695  00bf               L324:
1696                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1698  00bf 7b06          	ld	a,(OFST+5,sp)
1699  00c1 c7526b        	ld	21099,a
1700                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1702  00c4 7b07          	ld	a,(OFST+6,sp)
1703  00c6 c7526c        	ld	21100,a
1704                     ; 373 }
1707  00c9 5b03          	addw	sp,#3
1708  00cb 81            	ret
1912                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1912                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1912                     ; 390                      uint8_t TIM1_DeadTime,
1912                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1912                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1912                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1912                     ; 394 {
1913                     .text:	section	.text,new
1914  0000               _TIM1_BDTRConfig:
1916  0000 89            	pushw	x
1917  0001 88            	push	a
1918       00000001      OFST:	set	1
1921                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1923  0002 9e            	ld	a,xh
1924  0003 a104          	cp	a,#4
1925  0005 2704          	jreq	L062
1926  0007 9e            	ld	a,xh
1927  0008 4d            	tnz	a
1928  0009 2603          	jrne	L652
1929  000b               L062:
1930  000b 4f            	clr	a
1931  000c 2010          	jra	L262
1932  000e               L652:
1933  000e ae018c        	ldw	x,#396
1934  0011 89            	pushw	x
1935  0012 ae0000        	ldw	x,#0
1936  0015 89            	pushw	x
1937  0016 ae0000        	ldw	x,#L37
1938  0019 cd0000        	call	_assert_failed
1940  001c 5b04          	addw	sp,#4
1941  001e               L262:
1942                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1944  001e 0d03          	tnz	(OFST+2,sp)
1945  0020 2712          	jreq	L662
1946  0022 7b03          	ld	a,(OFST+2,sp)
1947  0024 a101          	cp	a,#1
1948  0026 270c          	jreq	L662
1949  0028 7b03          	ld	a,(OFST+2,sp)
1950  002a a102          	cp	a,#2
1951  002c 2706          	jreq	L662
1952  002e 7b03          	ld	a,(OFST+2,sp)
1953  0030 a103          	cp	a,#3
1954  0032 2603          	jrne	L462
1955  0034               L662:
1956  0034 4f            	clr	a
1957  0035 2010          	jra	L072
1958  0037               L462:
1959  0037 ae018d        	ldw	x,#397
1960  003a 89            	pushw	x
1961  003b ae0000        	ldw	x,#0
1962  003e 89            	pushw	x
1963  003f ae0000        	ldw	x,#L37
1964  0042 cd0000        	call	_assert_failed
1966  0045 5b04          	addw	sp,#4
1967  0047               L072:
1968                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1970  0047 7b07          	ld	a,(OFST+6,sp)
1971  0049 a110          	cp	a,#16
1972  004b 2704          	jreq	L472
1973  004d 0d07          	tnz	(OFST+6,sp)
1974  004f 2603          	jrne	L272
1975  0051               L472:
1976  0051 4f            	clr	a
1977  0052 2010          	jra	L672
1978  0054               L272:
1979  0054 ae018e        	ldw	x,#398
1980  0057 89            	pushw	x
1981  0058 ae0000        	ldw	x,#0
1982  005b 89            	pushw	x
1983  005c ae0000        	ldw	x,#L37
1984  005f cd0000        	call	_assert_failed
1986  0062 5b04          	addw	sp,#4
1987  0064               L672:
1988                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1990  0064 0d08          	tnz	(OFST+7,sp)
1991  0066 2706          	jreq	L203
1992  0068 7b08          	ld	a,(OFST+7,sp)
1993  006a a120          	cp	a,#32
1994  006c 2603          	jrne	L003
1995  006e               L203:
1996  006e 4f            	clr	a
1997  006f 2010          	jra	L403
1998  0071               L003:
1999  0071 ae018f        	ldw	x,#399
2000  0074 89            	pushw	x
2001  0075 ae0000        	ldw	x,#0
2002  0078 89            	pushw	x
2003  0079 ae0000        	ldw	x,#L37
2004  007c cd0000        	call	_assert_failed
2006  007f 5b04          	addw	sp,#4
2007  0081               L403:
2008                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2010  0081 7b09          	ld	a,(OFST+8,sp)
2011  0083 a140          	cp	a,#64
2012  0085 2704          	jreq	L013
2013  0087 0d09          	tnz	(OFST+8,sp)
2014  0089 2603          	jrne	L603
2015  008b               L013:
2016  008b 4f            	clr	a
2017  008c 2010          	jra	L213
2018  008e               L603:
2019  008e ae0190        	ldw	x,#400
2020  0091 89            	pushw	x
2021  0092 ae0000        	ldw	x,#0
2022  0095 89            	pushw	x
2023  0096 ae0000        	ldw	x,#L37
2024  0099 cd0000        	call	_assert_failed
2026  009c 5b04          	addw	sp,#4
2027  009e               L213:
2028                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2030  009e 7b06          	ld	a,(OFST+5,sp)
2031  00a0 c7526e        	ld	21102,a
2032                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2032                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2032                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2034  00a3 7b07          	ld	a,(OFST+6,sp)
2035  00a5 1a08          	or	a,(OFST+7,sp)
2036  00a7 1a09          	or	a,(OFST+8,sp)
2037  00a9 6b01          	ld	(OFST+0,sp),a
2038  00ab 7b02          	ld	a,(OFST+1,sp)
2039  00ad 1a03          	or	a,(OFST+2,sp)
2040  00af 1a01          	or	a,(OFST+0,sp)
2041  00b1 c7526d        	ld	21101,a
2042                     ; 409 }
2045  00b4 5b03          	addw	sp,#3
2046  00b6 81            	ret
2247                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2247                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2247                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2247                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2247                     ; 427                  uint8_t TIM1_ICFilter)
2247                     ; 428 {
2248                     .text:	section	.text,new
2249  0000               _TIM1_ICInit:
2251  0000 89            	pushw	x
2252       00000000      OFST:	set	0
2255                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2257  0001 9e            	ld	a,xh
2258  0002 4d            	tnz	a
2259  0003 270f          	jreq	L023
2260  0005 9e            	ld	a,xh
2261  0006 a101          	cp	a,#1
2262  0008 270a          	jreq	L023
2263  000a 9e            	ld	a,xh
2264  000b a102          	cp	a,#2
2265  000d 2705          	jreq	L023
2266  000f 9e            	ld	a,xh
2267  0010 a103          	cp	a,#3
2268  0012 2603          	jrne	L613
2269  0014               L023:
2270  0014 4f            	clr	a
2271  0015 2010          	jra	L223
2272  0017               L613:
2273  0017 ae01ae        	ldw	x,#430
2274  001a 89            	pushw	x
2275  001b ae0000        	ldw	x,#0
2276  001e 89            	pushw	x
2277  001f ae0000        	ldw	x,#L37
2278  0022 cd0000        	call	_assert_failed
2280  0025 5b04          	addw	sp,#4
2281  0027               L223:
2282                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2284  0027 0d02          	tnz	(OFST+2,sp)
2285  0029 2706          	jreq	L623
2286  002b 7b02          	ld	a,(OFST+2,sp)
2287  002d a101          	cp	a,#1
2288  002f 2603          	jrne	L423
2289  0031               L623:
2290  0031 4f            	clr	a
2291  0032 2010          	jra	L033
2292  0034               L423:
2293  0034 ae01af        	ldw	x,#431
2294  0037 89            	pushw	x
2295  0038 ae0000        	ldw	x,#0
2296  003b 89            	pushw	x
2297  003c ae0000        	ldw	x,#L37
2298  003f cd0000        	call	_assert_failed
2300  0042 5b04          	addw	sp,#4
2301  0044               L033:
2302                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2304  0044 7b05          	ld	a,(OFST+5,sp)
2305  0046 a101          	cp	a,#1
2306  0048 270c          	jreq	L433
2307  004a 7b05          	ld	a,(OFST+5,sp)
2308  004c a102          	cp	a,#2
2309  004e 2706          	jreq	L433
2310  0050 7b05          	ld	a,(OFST+5,sp)
2311  0052 a103          	cp	a,#3
2312  0054 2603          	jrne	L233
2313  0056               L433:
2314  0056 4f            	clr	a
2315  0057 2010          	jra	L633
2316  0059               L233:
2317  0059 ae01b0        	ldw	x,#432
2318  005c 89            	pushw	x
2319  005d ae0000        	ldw	x,#0
2320  0060 89            	pushw	x
2321  0061 ae0000        	ldw	x,#L37
2322  0064 cd0000        	call	_assert_failed
2324  0067 5b04          	addw	sp,#4
2325  0069               L633:
2326                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2328  0069 0d06          	tnz	(OFST+6,sp)
2329  006b 2712          	jreq	L243
2330  006d 7b06          	ld	a,(OFST+6,sp)
2331  006f a104          	cp	a,#4
2332  0071 270c          	jreq	L243
2333  0073 7b06          	ld	a,(OFST+6,sp)
2334  0075 a108          	cp	a,#8
2335  0077 2706          	jreq	L243
2336  0079 7b06          	ld	a,(OFST+6,sp)
2337  007b a10c          	cp	a,#12
2338  007d 2603          	jrne	L043
2339  007f               L243:
2340  007f 4f            	clr	a
2341  0080 2010          	jra	L443
2342  0082               L043:
2343  0082 ae01b1        	ldw	x,#433
2344  0085 89            	pushw	x
2345  0086 ae0000        	ldw	x,#0
2346  0089 89            	pushw	x
2347  008a ae0000        	ldw	x,#L37
2348  008d cd0000        	call	_assert_failed
2350  0090 5b04          	addw	sp,#4
2351  0092               L443:
2352                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2354  0092 7b07          	ld	a,(OFST+7,sp)
2355  0094 a110          	cp	a,#16
2356  0096 2403          	jruge	L643
2357  0098 4f            	clr	a
2358  0099 2010          	jra	L053
2359  009b               L643:
2360  009b ae01b2        	ldw	x,#434
2361  009e 89            	pushw	x
2362  009f ae0000        	ldw	x,#0
2363  00a2 89            	pushw	x
2364  00a3 ae0000        	ldw	x,#L37
2365  00a6 cd0000        	call	_assert_failed
2367  00a9 5b04          	addw	sp,#4
2368  00ab               L053:
2369                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2371  00ab 0d01          	tnz	(OFST+1,sp)
2372  00ad 2614          	jrne	L746
2373                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2373                     ; 440                (uint8_t)TIM1_ICSelection,
2373                     ; 441                (uint8_t)TIM1_ICFilter);
2375  00af 7b07          	ld	a,(OFST+7,sp)
2376  00b1 88            	push	a
2377  00b2 7b06          	ld	a,(OFST+6,sp)
2378  00b4 97            	ld	xl,a
2379  00b5 7b03          	ld	a,(OFST+3,sp)
2380  00b7 95            	ld	xh,a
2381  00b8 cd0000        	call	L3_TI1_Config
2383  00bb 84            	pop	a
2384                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2386  00bc 7b06          	ld	a,(OFST+6,sp)
2387  00be cd0000        	call	_TIM1_SetIC1Prescaler
2390  00c1 2046          	jra	L156
2391  00c3               L746:
2392                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2394  00c3 7b01          	ld	a,(OFST+1,sp)
2395  00c5 a101          	cp	a,#1
2396  00c7 2614          	jrne	L356
2397                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2397                     ; 449                (uint8_t)TIM1_ICSelection,
2397                     ; 450                (uint8_t)TIM1_ICFilter);
2399  00c9 7b07          	ld	a,(OFST+7,sp)
2400  00cb 88            	push	a
2401  00cc 7b06          	ld	a,(OFST+6,sp)
2402  00ce 97            	ld	xl,a
2403  00cf 7b03          	ld	a,(OFST+3,sp)
2404  00d1 95            	ld	xh,a
2405  00d2 cd0000        	call	L5_TI2_Config
2407  00d5 84            	pop	a
2408                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2410  00d6 7b06          	ld	a,(OFST+6,sp)
2411  00d8 cd0000        	call	_TIM1_SetIC2Prescaler
2414  00db 202c          	jra	L156
2415  00dd               L356:
2416                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2418  00dd 7b01          	ld	a,(OFST+1,sp)
2419  00df a102          	cp	a,#2
2420  00e1 2614          	jrne	L756
2421                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2421                     ; 458                (uint8_t)TIM1_ICSelection,
2421                     ; 459                (uint8_t)TIM1_ICFilter);
2423  00e3 7b07          	ld	a,(OFST+7,sp)
2424  00e5 88            	push	a
2425  00e6 7b06          	ld	a,(OFST+6,sp)
2426  00e8 97            	ld	xl,a
2427  00e9 7b03          	ld	a,(OFST+3,sp)
2428  00eb 95            	ld	xh,a
2429  00ec cd0000        	call	L7_TI3_Config
2431  00ef 84            	pop	a
2432                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2434  00f0 7b06          	ld	a,(OFST+6,sp)
2435  00f2 cd0000        	call	_TIM1_SetIC3Prescaler
2438  00f5 2012          	jra	L156
2439  00f7               L756:
2440                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2440                     ; 467                (uint8_t)TIM1_ICSelection,
2440                     ; 468                (uint8_t)TIM1_ICFilter);
2442  00f7 7b07          	ld	a,(OFST+7,sp)
2443  00f9 88            	push	a
2444  00fa 7b06          	ld	a,(OFST+6,sp)
2445  00fc 97            	ld	xl,a
2446  00fd 7b03          	ld	a,(OFST+3,sp)
2447  00ff 95            	ld	xh,a
2448  0100 cd0000        	call	L11_TI4_Config
2450  0103 84            	pop	a
2451                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2453  0104 7b06          	ld	a,(OFST+6,sp)
2454  0106 cd0000        	call	_TIM1_SetIC4Prescaler
2456  0109               L156:
2457                     ; 472 }
2460  0109 85            	popw	x
2461  010a 81            	ret
2552                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2552                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2552                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2552                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2552                     ; 492                      uint8_t TIM1_ICFilter)
2552                     ; 493 {
2553                     .text:	section	.text,new
2554  0000               _TIM1_PWMIConfig:
2556  0000 89            	pushw	x
2557  0001 89            	pushw	x
2558       00000002      OFST:	set	2
2561                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2563                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2565                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2567  0002 9e            	ld	a,xh
2568  0003 4d            	tnz	a
2569  0004 2705          	jreq	L653
2570  0006 9e            	ld	a,xh
2571  0007 a101          	cp	a,#1
2572  0009 2603          	jrne	L453
2573  000b               L653:
2574  000b 4f            	clr	a
2575  000c 2010          	jra	L063
2576  000e               L453:
2577  000e ae01f2        	ldw	x,#498
2578  0011 89            	pushw	x
2579  0012 ae0000        	ldw	x,#0
2580  0015 89            	pushw	x
2581  0016 ae0000        	ldw	x,#L37
2582  0019 cd0000        	call	_assert_failed
2584  001c 5b04          	addw	sp,#4
2585  001e               L063:
2586                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2588  001e 0d04          	tnz	(OFST+2,sp)
2589  0020 2706          	jreq	L463
2590  0022 7b04          	ld	a,(OFST+2,sp)
2591  0024 a101          	cp	a,#1
2592  0026 2603          	jrne	L263
2593  0028               L463:
2594  0028 4f            	clr	a
2595  0029 2010          	jra	L663
2596  002b               L263:
2597  002b ae01f3        	ldw	x,#499
2598  002e 89            	pushw	x
2599  002f ae0000        	ldw	x,#0
2600  0032 89            	pushw	x
2601  0033 ae0000        	ldw	x,#L37
2602  0036 cd0000        	call	_assert_failed
2604  0039 5b04          	addw	sp,#4
2605  003b               L663:
2606                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2608  003b 7b07          	ld	a,(OFST+5,sp)
2609  003d a101          	cp	a,#1
2610  003f 270c          	jreq	L273
2611  0041 7b07          	ld	a,(OFST+5,sp)
2612  0043 a102          	cp	a,#2
2613  0045 2706          	jreq	L273
2614  0047 7b07          	ld	a,(OFST+5,sp)
2615  0049 a103          	cp	a,#3
2616  004b 2603          	jrne	L073
2617  004d               L273:
2618  004d 4f            	clr	a
2619  004e 2010          	jra	L473
2620  0050               L073:
2621  0050 ae01f4        	ldw	x,#500
2622  0053 89            	pushw	x
2623  0054 ae0000        	ldw	x,#0
2624  0057 89            	pushw	x
2625  0058 ae0000        	ldw	x,#L37
2626  005b cd0000        	call	_assert_failed
2628  005e 5b04          	addw	sp,#4
2629  0060               L473:
2630                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2632  0060 0d08          	tnz	(OFST+6,sp)
2633  0062 2712          	jreq	L004
2634  0064 7b08          	ld	a,(OFST+6,sp)
2635  0066 a104          	cp	a,#4
2636  0068 270c          	jreq	L004
2637  006a 7b08          	ld	a,(OFST+6,sp)
2638  006c a108          	cp	a,#8
2639  006e 2706          	jreq	L004
2640  0070 7b08          	ld	a,(OFST+6,sp)
2641  0072 a10c          	cp	a,#12
2642  0074 2603          	jrne	L673
2643  0076               L004:
2644  0076 4f            	clr	a
2645  0077 2010          	jra	L204
2646  0079               L673:
2647  0079 ae01f5        	ldw	x,#501
2648  007c 89            	pushw	x
2649  007d ae0000        	ldw	x,#0
2650  0080 89            	pushw	x
2651  0081 ae0000        	ldw	x,#L37
2652  0084 cd0000        	call	_assert_failed
2654  0087 5b04          	addw	sp,#4
2655  0089               L204:
2656                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2658  0089 7b04          	ld	a,(OFST+2,sp)
2659  008b a101          	cp	a,#1
2660  008d 2706          	jreq	L327
2661                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2663  008f a601          	ld	a,#1
2664  0091 6b01          	ld	(OFST-1,sp),a
2666  0093 2002          	jra	L527
2667  0095               L327:
2668                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2670  0095 0f01          	clr	(OFST-1,sp)
2671  0097               L527:
2672                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2674  0097 7b07          	ld	a,(OFST+5,sp)
2675  0099 a101          	cp	a,#1
2676  009b 2606          	jrne	L727
2677                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2679  009d a602          	ld	a,#2
2680  009f 6b02          	ld	(OFST+0,sp),a
2682  00a1 2004          	jra	L137
2683  00a3               L727:
2684                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2686  00a3 a601          	ld	a,#1
2687  00a5 6b02          	ld	(OFST+0,sp),a
2688  00a7               L137:
2689                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2691  00a7 0d03          	tnz	(OFST+1,sp)
2692  00a9 2626          	jrne	L337
2693                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2693                     ; 527                (uint8_t)TIM1_ICFilter);
2695  00ab 7b09          	ld	a,(OFST+7,sp)
2696  00ad 88            	push	a
2697  00ae 7b08          	ld	a,(OFST+6,sp)
2698  00b0 97            	ld	xl,a
2699  00b1 7b05          	ld	a,(OFST+3,sp)
2700  00b3 95            	ld	xh,a
2701  00b4 cd0000        	call	L3_TI1_Config
2703  00b7 84            	pop	a
2704                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2706  00b8 7b08          	ld	a,(OFST+6,sp)
2707  00ba cd0000        	call	_TIM1_SetIC1Prescaler
2709                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2711  00bd 7b09          	ld	a,(OFST+7,sp)
2712  00bf 88            	push	a
2713  00c0 7b03          	ld	a,(OFST+1,sp)
2714  00c2 97            	ld	xl,a
2715  00c3 7b02          	ld	a,(OFST+0,sp)
2716  00c5 95            	ld	xh,a
2717  00c6 cd0000        	call	L5_TI2_Config
2719  00c9 84            	pop	a
2720                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2722  00ca 7b08          	ld	a,(OFST+6,sp)
2723  00cc cd0000        	call	_TIM1_SetIC2Prescaler
2726  00cf 2024          	jra	L537
2727  00d1               L337:
2728                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2728                     ; 542                (uint8_t)TIM1_ICFilter);
2730  00d1 7b09          	ld	a,(OFST+7,sp)
2731  00d3 88            	push	a
2732  00d4 7b08          	ld	a,(OFST+6,sp)
2733  00d6 97            	ld	xl,a
2734  00d7 7b05          	ld	a,(OFST+3,sp)
2735  00d9 95            	ld	xh,a
2736  00da cd0000        	call	L5_TI2_Config
2738  00dd 84            	pop	a
2739                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2741  00de 7b08          	ld	a,(OFST+6,sp)
2742  00e0 cd0000        	call	_TIM1_SetIC2Prescaler
2744                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2746  00e3 7b09          	ld	a,(OFST+7,sp)
2747  00e5 88            	push	a
2748  00e6 7b03          	ld	a,(OFST+1,sp)
2749  00e8 97            	ld	xl,a
2750  00e9 7b02          	ld	a,(OFST+0,sp)
2751  00eb 95            	ld	xh,a
2752  00ec cd0000        	call	L3_TI1_Config
2754  00ef 84            	pop	a
2755                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2757  00f0 7b08          	ld	a,(OFST+6,sp)
2758  00f2 cd0000        	call	_TIM1_SetIC1Prescaler
2760  00f5               L537:
2761                     ; 553 }
2764  00f5 5b04          	addw	sp,#4
2765  00f7 81            	ret
2821                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2821                     ; 562 {
2822                     .text:	section	.text,new
2823  0000               _TIM1_Cmd:
2825  0000 88            	push	a
2826       00000000      OFST:	set	0
2829                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2831  0001 4d            	tnz	a
2832  0002 2704          	jreq	L014
2833  0004 a101          	cp	a,#1
2834  0006 2603          	jrne	L604
2835  0008               L014:
2836  0008 4f            	clr	a
2837  0009 2010          	jra	L214
2838  000b               L604:
2839  000b ae0234        	ldw	x,#564
2840  000e 89            	pushw	x
2841  000f ae0000        	ldw	x,#0
2842  0012 89            	pushw	x
2843  0013 ae0000        	ldw	x,#L37
2844  0016 cd0000        	call	_assert_failed
2846  0019 5b04          	addw	sp,#4
2847  001b               L214:
2848                     ; 567   if (NewState != DISABLE)
2850  001b 0d01          	tnz	(OFST+1,sp)
2851  001d 2706          	jreq	L567
2852                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2854  001f 72105250      	bset	21072,#0
2856  0023 2004          	jra	L767
2857  0025               L567:
2858                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2860  0025 72115250      	bres	21072,#0
2861  0029               L767:
2862                     ; 575 }
2865  0029 84            	pop	a
2866  002a 81            	ret
2903                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2903                     ; 584 {
2904                     .text:	section	.text,new
2905  0000               _TIM1_CtrlPWMOutputs:
2907  0000 88            	push	a
2908       00000000      OFST:	set	0
2911                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2913  0001 4d            	tnz	a
2914  0002 2704          	jreq	L024
2915  0004 a101          	cp	a,#1
2916  0006 2603          	jrne	L614
2917  0008               L024:
2918  0008 4f            	clr	a
2919  0009 2010          	jra	L224
2920  000b               L614:
2921  000b ae024a        	ldw	x,#586
2922  000e 89            	pushw	x
2923  000f ae0000        	ldw	x,#0
2924  0012 89            	pushw	x
2925  0013 ae0000        	ldw	x,#L37
2926  0016 cd0000        	call	_assert_failed
2928  0019 5b04          	addw	sp,#4
2929  001b               L224:
2930                     ; 590   if (NewState != DISABLE)
2932  001b 0d01          	tnz	(OFST+1,sp)
2933  001d 2706          	jreq	L7001
2934                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2936  001f 721e526d      	bset	21101,#7
2938  0023 2004          	jra	L1101
2939  0025               L7001:
2940                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2942  0025 721f526d      	bres	21101,#7
2943  0029               L1101:
2944                     ; 598 }
2947  0029 84            	pop	a
2948  002a 81            	ret
3056                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3056                     ; 618 {
3057                     .text:	section	.text,new
3058  0000               _TIM1_ITConfig:
3060  0000 89            	pushw	x
3061       00000000      OFST:	set	0
3064                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3066  0001 9e            	ld	a,xh
3067  0002 4d            	tnz	a
3068  0003 2703          	jreq	L624
3069  0005 4f            	clr	a
3070  0006 2010          	jra	L034
3071  0008               L624:
3072  0008 ae026c        	ldw	x,#620
3073  000b 89            	pushw	x
3074  000c ae0000        	ldw	x,#0
3075  000f 89            	pushw	x
3076  0010 ae0000        	ldw	x,#L37
3077  0013 cd0000        	call	_assert_failed
3079  0016 5b04          	addw	sp,#4
3080  0018               L034:
3081                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3083  0018 0d02          	tnz	(OFST+2,sp)
3084  001a 2706          	jreq	L434
3085  001c 7b02          	ld	a,(OFST+2,sp)
3086  001e a101          	cp	a,#1
3087  0020 2603          	jrne	L234
3088  0022               L434:
3089  0022 4f            	clr	a
3090  0023 2010          	jra	L634
3091  0025               L234:
3092  0025 ae026d        	ldw	x,#621
3093  0028 89            	pushw	x
3094  0029 ae0000        	ldw	x,#0
3095  002c 89            	pushw	x
3096  002d ae0000        	ldw	x,#L37
3097  0030 cd0000        	call	_assert_failed
3099  0033 5b04          	addw	sp,#4
3100  0035               L634:
3101                     ; 623   if (NewState != DISABLE)
3103  0035 0d02          	tnz	(OFST+2,sp)
3104  0037 270a          	jreq	L1601
3105                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3107  0039 c65254        	ld	a,21076
3108  003c 1a01          	or	a,(OFST+1,sp)
3109  003e c75254        	ld	21076,a
3111  0041 2009          	jra	L3601
3112  0043               L1601:
3113                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3115  0043 7b01          	ld	a,(OFST+1,sp)
3116  0045 43            	cpl	a
3117  0046 c45254        	and	a,21076
3118  0049 c75254        	ld	21076,a
3119  004c               L3601:
3120                     ; 633 }
3123  004c 85            	popw	x
3124  004d 81            	ret
3148                     ; 640 void TIM1_InternalClockConfig(void)
3148                     ; 641 {
3149                     .text:	section	.text,new
3150  0000               _TIM1_InternalClockConfig:
3154                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3156  0000 c65252        	ld	a,21074
3157  0003 a4f8          	and	a,#248
3158  0005 c75252        	ld	21074,a
3159                     ; 644 }
3162  0008 81            	ret
3278                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3278                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3278                     ; 664                               uint8_t ExtTRGFilter)
3278                     ; 665 {
3279                     .text:	section	.text,new
3280  0000               _TIM1_ETRClockMode1Config:
3282  0000 89            	pushw	x
3283       00000000      OFST:	set	0
3286                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3288  0001 9e            	ld	a,xh
3289  0002 4d            	tnz	a
3290  0003 270f          	jreq	L644
3291  0005 9e            	ld	a,xh
3292  0006 a110          	cp	a,#16
3293  0008 270a          	jreq	L644
3294  000a 9e            	ld	a,xh
3295  000b a120          	cp	a,#32
3296  000d 2705          	jreq	L644
3297  000f 9e            	ld	a,xh
3298  0010 a130          	cp	a,#48
3299  0012 2603          	jrne	L444
3300  0014               L644:
3301  0014 4f            	clr	a
3302  0015 2010          	jra	L054
3303  0017               L444:
3304  0017 ae029b        	ldw	x,#667
3305  001a 89            	pushw	x
3306  001b ae0000        	ldw	x,#0
3307  001e 89            	pushw	x
3308  001f ae0000        	ldw	x,#L37
3309  0022 cd0000        	call	_assert_failed
3311  0025 5b04          	addw	sp,#4
3312  0027               L054:
3313                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3315  0027 7b02          	ld	a,(OFST+2,sp)
3316  0029 a180          	cp	a,#128
3317  002b 2704          	jreq	L454
3318  002d 0d02          	tnz	(OFST+2,sp)
3319  002f 2603          	jrne	L254
3320  0031               L454:
3321  0031 4f            	clr	a
3322  0032 2010          	jra	L654
3323  0034               L254:
3324  0034 ae029c        	ldw	x,#668
3325  0037 89            	pushw	x
3326  0038 ae0000        	ldw	x,#0
3327  003b 89            	pushw	x
3328  003c ae0000        	ldw	x,#L37
3329  003f cd0000        	call	_assert_failed
3331  0042 5b04          	addw	sp,#4
3332  0044               L654:
3333                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3335  0044 7b05          	ld	a,(OFST+5,sp)
3336  0046 88            	push	a
3337  0047 7b03          	ld	a,(OFST+3,sp)
3338  0049 97            	ld	xl,a
3339  004a 7b02          	ld	a,(OFST+2,sp)
3340  004c 95            	ld	xh,a
3341  004d cd0000        	call	_TIM1_ETRConfig
3343  0050 84            	pop	a
3344                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3344                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3346  0051 c65252        	ld	a,21074
3347  0054 a488          	and	a,#136
3348  0056 aa77          	or	a,#119
3349  0058 c75252        	ld	21074,a
3350                     ; 676 }
3353  005b 85            	popw	x
3354  005c 81            	ret
3411                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3411                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3411                     ; 696                               uint8_t ExtTRGFilter)
3411                     ; 697 {
3412                     .text:	section	.text,new
3413  0000               _TIM1_ETRClockMode2Config:
3415  0000 89            	pushw	x
3416       00000000      OFST:	set	0
3419                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3421  0001 9e            	ld	a,xh
3422  0002 4d            	tnz	a
3423  0003 270f          	jreq	L464
3424  0005 9e            	ld	a,xh
3425  0006 a110          	cp	a,#16
3426  0008 270a          	jreq	L464
3427  000a 9e            	ld	a,xh
3428  000b a120          	cp	a,#32
3429  000d 2705          	jreq	L464
3430  000f 9e            	ld	a,xh
3431  0010 a130          	cp	a,#48
3432  0012 2603          	jrne	L264
3433  0014               L464:
3434  0014 4f            	clr	a
3435  0015 2010          	jra	L664
3436  0017               L264:
3437  0017 ae02bb        	ldw	x,#699
3438  001a 89            	pushw	x
3439  001b ae0000        	ldw	x,#0
3440  001e 89            	pushw	x
3441  001f ae0000        	ldw	x,#L37
3442  0022 cd0000        	call	_assert_failed
3444  0025 5b04          	addw	sp,#4
3445  0027               L664:
3446                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3448  0027 7b02          	ld	a,(OFST+2,sp)
3449  0029 a180          	cp	a,#128
3450  002b 2704          	jreq	L274
3451  002d 0d02          	tnz	(OFST+2,sp)
3452  002f 2603          	jrne	L074
3453  0031               L274:
3454  0031 4f            	clr	a
3455  0032 2010          	jra	L474
3456  0034               L074:
3457  0034 ae02bc        	ldw	x,#700
3458  0037 89            	pushw	x
3459  0038 ae0000        	ldw	x,#0
3460  003b 89            	pushw	x
3461  003c ae0000        	ldw	x,#L37
3462  003f cd0000        	call	_assert_failed
3464  0042 5b04          	addw	sp,#4
3465  0044               L474:
3466                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3468  0044 7b05          	ld	a,(OFST+5,sp)
3469  0046 88            	push	a
3470  0047 7b03          	ld	a,(OFST+3,sp)
3471  0049 97            	ld	xl,a
3472  004a 7b02          	ld	a,(OFST+2,sp)
3473  004c 95            	ld	xh,a
3474  004d cd0000        	call	_TIM1_ETRConfig
3476  0050 84            	pop	a
3477                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3479  0051 721c5253      	bset	21075,#6
3480                     ; 707 }
3483  0055 85            	popw	x
3484  0056 81            	ret
3539                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3539                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3539                     ; 727                     uint8_t ExtTRGFilter)
3539                     ; 728 {
3540                     .text:	section	.text,new
3541  0000               _TIM1_ETRConfig:
3543  0000 89            	pushw	x
3544       00000000      OFST:	set	0
3547                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3549  0001 7b05          	ld	a,(OFST+5,sp)
3550  0003 a110          	cp	a,#16
3551  0005 2403          	jruge	L005
3552  0007 4f            	clr	a
3553  0008 2010          	jra	L205
3554  000a               L005:
3555  000a ae02da        	ldw	x,#730
3556  000d 89            	pushw	x
3557  000e ae0000        	ldw	x,#0
3558  0011 89            	pushw	x
3559  0012 ae0000        	ldw	x,#L37
3560  0015 cd0000        	call	_assert_failed
3562  0018 5b04          	addw	sp,#4
3563  001a               L205:
3564                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3564                     ; 733                          (uint8_t)ExtTRGFilter );
3566  001a 7b01          	ld	a,(OFST+1,sp)
3567  001c 1a02          	or	a,(OFST+2,sp)
3568  001e 1a05          	or	a,(OFST+5,sp)
3569  0020 ca5253        	or	a,21075
3570  0023 c75253        	ld	21075,a
3571                     ; 734 }
3574  0026 85            	popw	x
3575  0027 81            	ret
3663                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3663                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3663                     ; 753                                  uint8_t ICFilter)
3663                     ; 754 {
3664                     .text:	section	.text,new
3665  0000               _TIM1_TIxExternalClockConfig:
3667  0000 89            	pushw	x
3668       00000000      OFST:	set	0
3671                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3673  0001 9e            	ld	a,xh
3674  0002 a140          	cp	a,#64
3675  0004 270a          	jreq	L015
3676  0006 9e            	ld	a,xh
3677  0007 a160          	cp	a,#96
3678  0009 2705          	jreq	L015
3679  000b 9e            	ld	a,xh
3680  000c a150          	cp	a,#80
3681  000e 2603          	jrne	L605
3682  0010               L015:
3683  0010 4f            	clr	a
3684  0011 2010          	jra	L215
3685  0013               L605:
3686  0013 ae02f4        	ldw	x,#756
3687  0016 89            	pushw	x
3688  0017 ae0000        	ldw	x,#0
3689  001a 89            	pushw	x
3690  001b ae0000        	ldw	x,#L37
3691  001e cd0000        	call	_assert_failed
3693  0021 5b04          	addw	sp,#4
3694  0023               L215:
3695                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3697  0023 0d02          	tnz	(OFST+2,sp)
3698  0025 2706          	jreq	L615
3699  0027 7b02          	ld	a,(OFST+2,sp)
3700  0029 a101          	cp	a,#1
3701  002b 2603          	jrne	L415
3702  002d               L615:
3703  002d 4f            	clr	a
3704  002e 2010          	jra	L025
3705  0030               L415:
3706  0030 ae02f5        	ldw	x,#757
3707  0033 89            	pushw	x
3708  0034 ae0000        	ldw	x,#0
3709  0037 89            	pushw	x
3710  0038 ae0000        	ldw	x,#L37
3711  003b cd0000        	call	_assert_failed
3713  003e 5b04          	addw	sp,#4
3714  0040               L025:
3715                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3717  0040 7b05          	ld	a,(OFST+5,sp)
3718  0042 a110          	cp	a,#16
3719  0044 2403          	jruge	L225
3720  0046 4f            	clr	a
3721  0047 2010          	jra	L425
3722  0049               L225:
3723  0049 ae02f6        	ldw	x,#758
3724  004c 89            	pushw	x
3725  004d ae0000        	ldw	x,#0
3726  0050 89            	pushw	x
3727  0051 ae0000        	ldw	x,#L37
3728  0054 cd0000        	call	_assert_failed
3730  0057 5b04          	addw	sp,#4
3731  0059               L425:
3732                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3734  0059 7b01          	ld	a,(OFST+1,sp)
3735  005b a160          	cp	a,#96
3736  005d 260f          	jrne	L3521
3737                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3739  005f 7b05          	ld	a,(OFST+5,sp)
3740  0061 88            	push	a
3741  0062 ae0001        	ldw	x,#1
3742  0065 7b03          	ld	a,(OFST+3,sp)
3743  0067 95            	ld	xh,a
3744  0068 cd0000        	call	L5_TI2_Config
3746  006b 84            	pop	a
3748  006c 200d          	jra	L5521
3749  006e               L3521:
3750                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3752  006e 7b05          	ld	a,(OFST+5,sp)
3753  0070 88            	push	a
3754  0071 ae0001        	ldw	x,#1
3755  0074 7b03          	ld	a,(OFST+3,sp)
3756  0076 95            	ld	xh,a
3757  0077 cd0000        	call	L3_TI1_Config
3759  007a 84            	pop	a
3760  007b               L5521:
3761                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3763  007b 7b01          	ld	a,(OFST+1,sp)
3764  007d cd0000        	call	_TIM1_SelectInputTrigger
3766                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3768  0080 c65252        	ld	a,21074
3769  0083 aa07          	or	a,#7
3770  0085 c75252        	ld	21074,a
3771                     ; 775 }
3774  0088 85            	popw	x
3775  0089 81            	ret
3861                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3861                     ; 788 {
3862                     .text:	section	.text,new
3863  0000               _TIM1_SelectInputTrigger:
3865  0000 88            	push	a
3866       00000000      OFST:	set	0
3869                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3871  0001 a140          	cp	a,#64
3872  0003 2713          	jreq	L235
3873  0005 a150          	cp	a,#80
3874  0007 270f          	jreq	L235
3875  0009 a160          	cp	a,#96
3876  000b 270b          	jreq	L235
3877  000d a170          	cp	a,#112
3878  000f 2707          	jreq	L235
3879  0011 a130          	cp	a,#48
3880  0013 2703          	jreq	L235
3881  0015 4d            	tnz	a
3882  0016 2603          	jrne	L035
3883  0018               L235:
3884  0018 4f            	clr	a
3885  0019 2010          	jra	L435
3886  001b               L035:
3887  001b ae0316        	ldw	x,#790
3888  001e 89            	pushw	x
3889  001f ae0000        	ldw	x,#0
3890  0022 89            	pushw	x
3891  0023 ae0000        	ldw	x,#L37
3892  0026 cd0000        	call	_assert_failed
3894  0029 5b04          	addw	sp,#4
3895  002b               L435:
3896                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3898  002b c65252        	ld	a,21074
3899  002e a48f          	and	a,#143
3900  0030 1a01          	or	a,(OFST+1,sp)
3901  0032 c75252        	ld	21074,a
3902                     ; 794 }
3905  0035 84            	pop	a
3906  0036 81            	ret
3943                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3943                     ; 804 {
3944                     .text:	section	.text,new
3945  0000               _TIM1_UpdateDisableConfig:
3947  0000 88            	push	a
3948       00000000      OFST:	set	0
3951                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3953  0001 4d            	tnz	a
3954  0002 2704          	jreq	L245
3955  0004 a101          	cp	a,#1
3956  0006 2603          	jrne	L045
3957  0008               L245:
3958  0008 4f            	clr	a
3959  0009 2010          	jra	L445
3960  000b               L045:
3961  000b ae0326        	ldw	x,#806
3962  000e 89            	pushw	x
3963  000f ae0000        	ldw	x,#0
3964  0012 89            	pushw	x
3965  0013 ae0000        	ldw	x,#L37
3966  0016 cd0000        	call	_assert_failed
3968  0019 5b04          	addw	sp,#4
3969  001b               L445:
3970                     ; 809   if (NewState != DISABLE)
3972  001b 0d01          	tnz	(OFST+1,sp)
3973  001d 2706          	jreq	L3331
3974                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3976  001f 72125250      	bset	21072,#1
3978  0023 2004          	jra	L5331
3979  0025               L3331:
3980                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3982  0025 72135250      	bres	21072,#1
3983  0029               L5331:
3984                     ; 817 }
3987  0029 84            	pop	a
3988  002a 81            	ret
4047                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4047                     ; 828 {
4048                     .text:	section	.text,new
4049  0000               _TIM1_UpdateRequestConfig:
4051  0000 88            	push	a
4052       00000000      OFST:	set	0
4055                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4057  0001 4d            	tnz	a
4058  0002 2704          	jreq	L255
4059  0004 a101          	cp	a,#1
4060  0006 2603          	jrne	L055
4061  0008               L255:
4062  0008 4f            	clr	a
4063  0009 2010          	jra	L455
4064  000b               L055:
4065  000b ae033e        	ldw	x,#830
4066  000e 89            	pushw	x
4067  000f ae0000        	ldw	x,#0
4068  0012 89            	pushw	x
4069  0013 ae0000        	ldw	x,#L37
4070  0016 cd0000        	call	_assert_failed
4072  0019 5b04          	addw	sp,#4
4073  001b               L455:
4074                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4076  001b 0d01          	tnz	(OFST+1,sp)
4077  001d 2706          	jreq	L5631
4078                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4080  001f 72145250      	bset	21072,#2
4082  0023 2004          	jra	L7631
4083  0025               L5631:
4084                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4086  0025 72155250      	bres	21072,#2
4087  0029               L7631:
4088                     ; 841 }
4091  0029 84            	pop	a
4092  002a 81            	ret
4129                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4129                     ; 850 {
4130                     .text:	section	.text,new
4131  0000               _TIM1_SelectHallSensor:
4133  0000 88            	push	a
4134       00000000      OFST:	set	0
4137                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4139  0001 4d            	tnz	a
4140  0002 2704          	jreq	L265
4141  0004 a101          	cp	a,#1
4142  0006 2603          	jrne	L065
4143  0008               L265:
4144  0008 4f            	clr	a
4145  0009 2010          	jra	L465
4146  000b               L065:
4147  000b ae0354        	ldw	x,#852
4148  000e 89            	pushw	x
4149  000f ae0000        	ldw	x,#0
4150  0012 89            	pushw	x
4151  0013 ae0000        	ldw	x,#L37
4152  0016 cd0000        	call	_assert_failed
4154  0019 5b04          	addw	sp,#4
4155  001b               L465:
4156                     ; 855   if (NewState != DISABLE)
4158  001b 0d01          	tnz	(OFST+1,sp)
4159  001d 2706          	jreq	L7041
4160                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4162  001f 721e5251      	bset	21073,#7
4164  0023 2004          	jra	L1141
4165  0025               L7041:
4166                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4168  0025 721f5251      	bres	21073,#7
4169  0029               L1141:
4170                     ; 863 }
4173  0029 84            	pop	a
4174  002a 81            	ret
4232                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4232                     ; 874 {
4233                     .text:	section	.text,new
4234  0000               _TIM1_SelectOnePulseMode:
4236  0000 88            	push	a
4237       00000000      OFST:	set	0
4240                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4242  0001 a101          	cp	a,#1
4243  0003 2703          	jreq	L275
4244  0005 4d            	tnz	a
4245  0006 2603          	jrne	L075
4246  0008               L275:
4247  0008 4f            	clr	a
4248  0009 2010          	jra	L475
4249  000b               L075:
4250  000b ae036c        	ldw	x,#876
4251  000e 89            	pushw	x
4252  000f ae0000        	ldw	x,#0
4253  0012 89            	pushw	x
4254  0013 ae0000        	ldw	x,#L37
4255  0016 cd0000        	call	_assert_failed
4257  0019 5b04          	addw	sp,#4
4258  001b               L475:
4259                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4261  001b 0d01          	tnz	(OFST+1,sp)
4262  001d 2706          	jreq	L1441
4263                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4265  001f 72165250      	bset	21072,#3
4267  0023 2004          	jra	L3441
4268  0025               L1441:
4269                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4271  0025 72175250      	bres	21072,#3
4272  0029               L3441:
4273                     ; 888 }
4276  0029 84            	pop	a
4277  002a 81            	ret
4376                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4376                     ; 904 {
4377                     .text:	section	.text,new
4378  0000               _TIM1_SelectOutputTrigger:
4380  0000 88            	push	a
4381       00000000      OFST:	set	0
4384                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4386  0001 4d            	tnz	a
4387  0002 2718          	jreq	L206
4388  0004 a110          	cp	a,#16
4389  0006 2714          	jreq	L206
4390  0008 a120          	cp	a,#32
4391  000a 2710          	jreq	L206
4392  000c a130          	cp	a,#48
4393  000e 270c          	jreq	L206
4394  0010 a140          	cp	a,#64
4395  0012 2708          	jreq	L206
4396  0014 a150          	cp	a,#80
4397  0016 2704          	jreq	L206
4398  0018 a160          	cp	a,#96
4399  001a 2603          	jrne	L006
4400  001c               L206:
4401  001c 4f            	clr	a
4402  001d 2010          	jra	L406
4403  001f               L006:
4404  001f ae038a        	ldw	x,#906
4405  0022 89            	pushw	x
4406  0023 ae0000        	ldw	x,#0
4407  0026 89            	pushw	x
4408  0027 ae0000        	ldw	x,#L37
4409  002a cd0000        	call	_assert_failed
4411  002d 5b04          	addw	sp,#4
4412  002f               L406:
4413                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4413                     ; 910                         (uint8_t) TIM1_TRGOSource);
4415  002f c65251        	ld	a,21073
4416  0032 a48f          	and	a,#143
4417  0034 1a01          	or	a,(OFST+1,sp)
4418  0036 c75251        	ld	21073,a
4419                     ; 911 }
4422  0039 84            	pop	a
4423  003a 81            	ret
4498                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4498                     ; 924 {
4499                     .text:	section	.text,new
4500  0000               _TIM1_SelectSlaveMode:
4502  0000 88            	push	a
4503       00000000      OFST:	set	0
4506                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4508  0001 a104          	cp	a,#4
4509  0003 270c          	jreq	L216
4510  0005 a105          	cp	a,#5
4511  0007 2708          	jreq	L216
4512  0009 a106          	cp	a,#6
4513  000b 2704          	jreq	L216
4514  000d a107          	cp	a,#7
4515  000f 2603          	jrne	L016
4516  0011               L216:
4517  0011 4f            	clr	a
4518  0012 2010          	jra	L416
4519  0014               L016:
4520  0014 ae039e        	ldw	x,#926
4521  0017 89            	pushw	x
4522  0018 ae0000        	ldw	x,#0
4523  001b 89            	pushw	x
4524  001c ae0000        	ldw	x,#L37
4525  001f cd0000        	call	_assert_failed
4527  0022 5b04          	addw	sp,#4
4528  0024               L416:
4529                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4529                     ; 930                          (uint8_t)TIM1_SlaveMode);
4531  0024 c65252        	ld	a,21074
4532  0027 a4f8          	and	a,#248
4533  0029 1a01          	or	a,(OFST+1,sp)
4534  002b c75252        	ld	21074,a
4535                     ; 931 }
4538  002e 84            	pop	a
4539  002f 81            	ret
4576                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4576                     ; 940 {
4577                     .text:	section	.text,new
4578  0000               _TIM1_SelectMasterSlaveMode:
4580  0000 88            	push	a
4581       00000000      OFST:	set	0
4584                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4586  0001 4d            	tnz	a
4587  0002 2704          	jreq	L226
4588  0004 a101          	cp	a,#1
4589  0006 2603          	jrne	L026
4590  0008               L226:
4591  0008 4f            	clr	a
4592  0009 2010          	jra	L426
4593  000b               L026:
4594  000b ae03ae        	ldw	x,#942
4595  000e 89            	pushw	x
4596  000f ae0000        	ldw	x,#0
4597  0012 89            	pushw	x
4598  0013 ae0000        	ldw	x,#L37
4599  0016 cd0000        	call	_assert_failed
4601  0019 5b04          	addw	sp,#4
4602  001b               L426:
4603                     ; 945   if (NewState != DISABLE)
4605  001b 0d01          	tnz	(OFST+1,sp)
4606  001d 2706          	jreq	L5551
4607                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4609  001f 721e5252      	bset	21074,#7
4611  0023 2004          	jra	L7551
4612  0025               L5551:
4613                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4615  0025 721f5252      	bres	21074,#7
4616  0029               L7551:
4617                     ; 953 }
4620  0029 84            	pop	a
4621  002a 81            	ret
4708                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4708                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4708                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4708                     ; 978 {
4709                     .text:	section	.text,new
4710  0000               _TIM1_EncoderInterfaceConfig:
4712  0000 89            	pushw	x
4713       00000000      OFST:	set	0
4716                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4718  0001 9e            	ld	a,xh
4719  0002 a101          	cp	a,#1
4720  0004 270a          	jreq	L236
4721  0006 9e            	ld	a,xh
4722  0007 a102          	cp	a,#2
4723  0009 2705          	jreq	L236
4724  000b 9e            	ld	a,xh
4725  000c a103          	cp	a,#3
4726  000e 2603          	jrne	L036
4727  0010               L236:
4728  0010 4f            	clr	a
4729  0011 2010          	jra	L436
4730  0013               L036:
4731  0013 ae03d4        	ldw	x,#980
4732  0016 89            	pushw	x
4733  0017 ae0000        	ldw	x,#0
4734  001a 89            	pushw	x
4735  001b ae0000        	ldw	x,#L37
4736  001e cd0000        	call	_assert_failed
4738  0021 5b04          	addw	sp,#4
4739  0023               L436:
4740                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4742  0023 0d02          	tnz	(OFST+2,sp)
4743  0025 2706          	jreq	L046
4744  0027 7b02          	ld	a,(OFST+2,sp)
4745  0029 a101          	cp	a,#1
4746  002b 2603          	jrne	L636
4747  002d               L046:
4748  002d 4f            	clr	a
4749  002e 2010          	jra	L246
4750  0030               L636:
4751  0030 ae03d5        	ldw	x,#981
4752  0033 89            	pushw	x
4753  0034 ae0000        	ldw	x,#0
4754  0037 89            	pushw	x
4755  0038 ae0000        	ldw	x,#L37
4756  003b cd0000        	call	_assert_failed
4758  003e 5b04          	addw	sp,#4
4759  0040               L246:
4760                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4762  0040 0d05          	tnz	(OFST+5,sp)
4763  0042 2706          	jreq	L646
4764  0044 7b05          	ld	a,(OFST+5,sp)
4765  0046 a101          	cp	a,#1
4766  0048 2603          	jrne	L446
4767  004a               L646:
4768  004a 4f            	clr	a
4769  004b 2010          	jra	L056
4770  004d               L446:
4771  004d ae03d6        	ldw	x,#982
4772  0050 89            	pushw	x
4773  0051 ae0000        	ldw	x,#0
4774  0054 89            	pushw	x
4775  0055 ae0000        	ldw	x,#L37
4776  0058 cd0000        	call	_assert_failed
4778  005b 5b04          	addw	sp,#4
4779  005d               L056:
4780                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4782  005d 0d02          	tnz	(OFST+2,sp)
4783  005f 2706          	jreq	L1261
4784                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4786  0061 7212525c      	bset	21084,#1
4788  0065 2004          	jra	L3261
4789  0067               L1261:
4790                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4792  0067 7213525c      	bres	21084,#1
4793  006b               L3261:
4794                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4796  006b 0d05          	tnz	(OFST+5,sp)
4797  006d 2706          	jreq	L5261
4798                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4800  006f 721a525c      	bset	21084,#5
4802  0073 2004          	jra	L7261
4803  0075               L5261:
4804                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4806  0075 721b525c      	bres	21084,#5
4807  0079               L7261:
4808                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4808                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4810  0079 c65252        	ld	a,21074
4811  007c a4f0          	and	a,#240
4812  007e 1a01          	or	a,(OFST+1,sp)
4813  0080 c75252        	ld	21074,a
4814                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4814                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4816  0083 c65258        	ld	a,21080
4817  0086 a4fc          	and	a,#252
4818  0088 aa01          	or	a,#1
4819  008a c75258        	ld	21080,a
4820                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4820                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4822  008d c65259        	ld	a,21081
4823  0090 a4fc          	and	a,#252
4824  0092 aa01          	or	a,#1
4825  0094 c75259        	ld	21081,a
4826                     ; 1011 }
4829  0097 85            	popw	x
4830  0098 81            	ret
4896                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4896                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4896                     ; 1025 {
4897                     .text:	section	.text,new
4898  0000               _TIM1_PrescalerConfig:
4900  0000 89            	pushw	x
4901       00000000      OFST:	set	0
4904                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4906  0001 0d05          	tnz	(OFST+5,sp)
4907  0003 2706          	jreq	L656
4908  0005 7b05          	ld	a,(OFST+5,sp)
4909  0007 a101          	cp	a,#1
4910  0009 2603          	jrne	L456
4911  000b               L656:
4912  000b 4f            	clr	a
4913  000c 2010          	jra	L066
4914  000e               L456:
4915  000e ae0403        	ldw	x,#1027
4916  0011 89            	pushw	x
4917  0012 ae0000        	ldw	x,#0
4918  0015 89            	pushw	x
4919  0016 ae0000        	ldw	x,#L37
4920  0019 cd0000        	call	_assert_failed
4922  001c 5b04          	addw	sp,#4
4923  001e               L066:
4924                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4926  001e 7b01          	ld	a,(OFST+1,sp)
4927  0020 c75260        	ld	21088,a
4928                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4930  0023 7b02          	ld	a,(OFST+2,sp)
4931  0025 c75261        	ld	21089,a
4932                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4934  0028 7b05          	ld	a,(OFST+5,sp)
4935  002a c75257        	ld	21079,a
4936                     ; 1035 }
4939  002d 85            	popw	x
4940  002e 81            	ret
4977                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4977                     ; 1049 {
4978                     .text:	section	.text,new
4979  0000               _TIM1_CounterModeConfig:
4981  0000 88            	push	a
4982       00000000      OFST:	set	0
4985                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4987  0001 4d            	tnz	a
4988  0002 2710          	jreq	L666
4989  0004 a110          	cp	a,#16
4990  0006 270c          	jreq	L666
4991  0008 a120          	cp	a,#32
4992  000a 2708          	jreq	L666
4993  000c a140          	cp	a,#64
4994  000e 2704          	jreq	L666
4995  0010 a160          	cp	a,#96
4996  0012 2603          	jrne	L466
4997  0014               L666:
4998  0014 4f            	clr	a
4999  0015 2010          	jra	L076
5000  0017               L466:
5001  0017 ae041b        	ldw	x,#1051
5002  001a 89            	pushw	x
5003  001b ae0000        	ldw	x,#0
5004  001e 89            	pushw	x
5005  001f ae0000        	ldw	x,#L37
5006  0022 cd0000        	call	_assert_failed
5008  0025 5b04          	addw	sp,#4
5009  0027               L076:
5010                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5010                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5012  0027 c65250        	ld	a,21072
5013  002a a48f          	and	a,#143
5014  002c 1a01          	or	a,(OFST+1,sp)
5015  002e c75250        	ld	21072,a
5016                     ; 1057 }
5019  0031 84            	pop	a
5020  0032 81            	ret
5079                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5079                     ; 1068 {
5080                     .text:	section	.text,new
5081  0000               _TIM1_ForcedOC1Config:
5083  0000 88            	push	a
5084       00000000      OFST:	set	0
5087                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5089  0001 a150          	cp	a,#80
5090  0003 2704          	jreq	L676
5091  0005 a140          	cp	a,#64
5092  0007 2603          	jrne	L476
5093  0009               L676:
5094  0009 4f            	clr	a
5095  000a 2010          	jra	L007
5096  000c               L476:
5097  000c ae042e        	ldw	x,#1070
5098  000f 89            	pushw	x
5099  0010 ae0000        	ldw	x,#0
5100  0013 89            	pushw	x
5101  0014 ae0000        	ldw	x,#L37
5102  0017 cd0000        	call	_assert_failed
5104  001a 5b04          	addw	sp,#4
5105  001c               L007:
5106                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5106                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5108  001c c65258        	ld	a,21080
5109  001f a48f          	and	a,#143
5110  0021 1a01          	or	a,(OFST+1,sp)
5111  0023 c75258        	ld	21080,a
5112                     ; 1075 }
5115  0026 84            	pop	a
5116  0027 81            	ret
5153                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5153                     ; 1086 {
5154                     .text:	section	.text,new
5155  0000               _TIM1_ForcedOC2Config:
5157  0000 88            	push	a
5158       00000000      OFST:	set	0
5161                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5163  0001 a150          	cp	a,#80
5164  0003 2704          	jreq	L607
5165  0005 a140          	cp	a,#64
5166  0007 2603          	jrne	L407
5167  0009               L607:
5168  0009 4f            	clr	a
5169  000a 2010          	jra	L017
5170  000c               L407:
5171  000c ae0440        	ldw	x,#1088
5172  000f 89            	pushw	x
5173  0010 ae0000        	ldw	x,#0
5174  0013 89            	pushw	x
5175  0014 ae0000        	ldw	x,#L37
5176  0017 cd0000        	call	_assert_failed
5178  001a 5b04          	addw	sp,#4
5179  001c               L017:
5180                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5180                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5182  001c c65259        	ld	a,21081
5183  001f a48f          	and	a,#143
5184  0021 1a01          	or	a,(OFST+1,sp)
5185  0023 c75259        	ld	21081,a
5186                     ; 1093 }
5189  0026 84            	pop	a
5190  0027 81            	ret
5227                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5227                     ; 1105 {
5228                     .text:	section	.text,new
5229  0000               _TIM1_ForcedOC3Config:
5231  0000 88            	push	a
5232       00000000      OFST:	set	0
5235                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5237  0001 a150          	cp	a,#80
5238  0003 2704          	jreq	L617
5239  0005 a140          	cp	a,#64
5240  0007 2603          	jrne	L417
5241  0009               L617:
5242  0009 4f            	clr	a
5243  000a 2010          	jra	L027
5244  000c               L417:
5245  000c ae0453        	ldw	x,#1107
5246  000f 89            	pushw	x
5247  0010 ae0000        	ldw	x,#0
5248  0013 89            	pushw	x
5249  0014 ae0000        	ldw	x,#L37
5250  0017 cd0000        	call	_assert_failed
5252  001a 5b04          	addw	sp,#4
5253  001c               L027:
5254                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5254                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5256  001c c6525a        	ld	a,21082
5257  001f a48f          	and	a,#143
5258  0021 1a01          	or	a,(OFST+1,sp)
5259  0023 c7525a        	ld	21082,a
5260                     ; 1112 }
5263  0026 84            	pop	a
5264  0027 81            	ret
5301                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5301                     ; 1124 {
5302                     .text:	section	.text,new
5303  0000               _TIM1_ForcedOC4Config:
5305  0000 88            	push	a
5306       00000000      OFST:	set	0
5309                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5311  0001 a150          	cp	a,#80
5312  0003 2704          	jreq	L627
5313  0005 a140          	cp	a,#64
5314  0007 2603          	jrne	L427
5315  0009               L627:
5316  0009 4f            	clr	a
5317  000a 2010          	jra	L037
5318  000c               L427:
5319  000c ae0466        	ldw	x,#1126
5320  000f 89            	pushw	x
5321  0010 ae0000        	ldw	x,#0
5322  0013 89            	pushw	x
5323  0014 ae0000        	ldw	x,#L37
5324  0017 cd0000        	call	_assert_failed
5326  001a 5b04          	addw	sp,#4
5327  001c               L037:
5328                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5328                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5330  001c c6525b        	ld	a,21083
5331  001f a48f          	and	a,#143
5332  0021 1a01          	or	a,(OFST+1,sp)
5333  0023 c7525b        	ld	21083,a
5334                     ; 1131 }
5337  0026 84            	pop	a
5338  0027 81            	ret
5375                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5375                     ; 1140 {
5376                     .text:	section	.text,new
5377  0000               _TIM1_ARRPreloadConfig:
5379  0000 88            	push	a
5380       00000000      OFST:	set	0
5383                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5385  0001 4d            	tnz	a
5386  0002 2704          	jreq	L637
5387  0004 a101          	cp	a,#1
5388  0006 2603          	jrne	L437
5389  0008               L637:
5390  0008 4f            	clr	a
5391  0009 2010          	jra	L047
5392  000b               L437:
5393  000b ae0476        	ldw	x,#1142
5394  000e 89            	pushw	x
5395  000f ae0000        	ldw	x,#0
5396  0012 89            	pushw	x
5397  0013 ae0000        	ldw	x,#L37
5398  0016 cd0000        	call	_assert_failed
5400  0019 5b04          	addw	sp,#4
5401  001b               L047:
5402                     ; 1145   if (NewState != DISABLE)
5404  001b 0d01          	tnz	(OFST+1,sp)
5405  001d 2706          	jreq	L5102
5406                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5408  001f 721e5250      	bset	21072,#7
5410  0023 2004          	jra	L7102
5411  0025               L5102:
5412                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5414  0025 721f5250      	bres	21072,#7
5415  0029               L7102:
5416                     ; 1153 }
5419  0029 84            	pop	a
5420  002a 81            	ret
5456                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5456                     ; 1162 {
5457                     .text:	section	.text,new
5458  0000               _TIM1_SelectCOM:
5460  0000 88            	push	a
5461       00000000      OFST:	set	0
5464                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5466  0001 4d            	tnz	a
5467  0002 2704          	jreq	L647
5468  0004 a101          	cp	a,#1
5469  0006 2603          	jrne	L447
5470  0008               L647:
5471  0008 4f            	clr	a
5472  0009 2010          	jra	L057
5473  000b               L447:
5474  000b ae048c        	ldw	x,#1164
5475  000e 89            	pushw	x
5476  000f ae0000        	ldw	x,#0
5477  0012 89            	pushw	x
5478  0013 ae0000        	ldw	x,#L37
5479  0016 cd0000        	call	_assert_failed
5481  0019 5b04          	addw	sp,#4
5482  001b               L057:
5483                     ; 1167   if (NewState != DISABLE)
5485  001b 0d01          	tnz	(OFST+1,sp)
5486  001d 2706          	jreq	L7302
5487                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5489  001f 72145251      	bset	21073,#2
5491  0023 2004          	jra	L1402
5492  0025               L7302:
5493                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5495  0025 72155251      	bres	21073,#2
5496  0029               L1402:
5497                     ; 1175 }
5500  0029 84            	pop	a
5501  002a 81            	ret
5538                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5538                     ; 1184 {
5539                     .text:	section	.text,new
5540  0000               _TIM1_CCPreloadControl:
5542  0000 88            	push	a
5543       00000000      OFST:	set	0
5546                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5548  0001 4d            	tnz	a
5549  0002 2704          	jreq	L657
5550  0004 a101          	cp	a,#1
5551  0006 2603          	jrne	L457
5552  0008               L657:
5553  0008 4f            	clr	a
5554  0009 2010          	jra	L067
5555  000b               L457:
5556  000b ae04a2        	ldw	x,#1186
5557  000e 89            	pushw	x
5558  000f ae0000        	ldw	x,#0
5559  0012 89            	pushw	x
5560  0013 ae0000        	ldw	x,#L37
5561  0016 cd0000        	call	_assert_failed
5563  0019 5b04          	addw	sp,#4
5564  001b               L067:
5565                     ; 1189   if (NewState != DISABLE)
5567  001b 0d01          	tnz	(OFST+1,sp)
5568  001d 2706          	jreq	L1602
5569                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5571  001f 72105251      	bset	21073,#0
5573  0023 2004          	jra	L3602
5574  0025               L1602:
5575                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5577  0025 72115251      	bres	21073,#0
5578  0029               L3602:
5579                     ; 1197 }
5582  0029 84            	pop	a
5583  002a 81            	ret
5620                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5620                     ; 1206 {
5621                     .text:	section	.text,new
5622  0000               _TIM1_OC1PreloadConfig:
5624  0000 88            	push	a
5625       00000000      OFST:	set	0
5628                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5630  0001 4d            	tnz	a
5631  0002 2704          	jreq	L667
5632  0004 a101          	cp	a,#1
5633  0006 2603          	jrne	L467
5634  0008               L667:
5635  0008 4f            	clr	a
5636  0009 2010          	jra	L077
5637  000b               L467:
5638  000b ae04b8        	ldw	x,#1208
5639  000e 89            	pushw	x
5640  000f ae0000        	ldw	x,#0
5641  0012 89            	pushw	x
5642  0013 ae0000        	ldw	x,#L37
5643  0016 cd0000        	call	_assert_failed
5645  0019 5b04          	addw	sp,#4
5646  001b               L077:
5647                     ; 1211   if (NewState != DISABLE)
5649  001b 0d01          	tnz	(OFST+1,sp)
5650  001d 2706          	jreq	L3012
5651                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5653  001f 72165258      	bset	21080,#3
5655  0023 2004          	jra	L5012
5656  0025               L3012:
5657                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5659  0025 72175258      	bres	21080,#3
5660  0029               L5012:
5661                     ; 1219 }
5664  0029 84            	pop	a
5665  002a 81            	ret
5702                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5702                     ; 1228 {
5703                     .text:	section	.text,new
5704  0000               _TIM1_OC2PreloadConfig:
5706  0000 88            	push	a
5707       00000000      OFST:	set	0
5710                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5712  0001 4d            	tnz	a
5713  0002 2704          	jreq	L677
5714  0004 a101          	cp	a,#1
5715  0006 2603          	jrne	L477
5716  0008               L677:
5717  0008 4f            	clr	a
5718  0009 2010          	jra	L0001
5719  000b               L477:
5720  000b ae04ce        	ldw	x,#1230
5721  000e 89            	pushw	x
5722  000f ae0000        	ldw	x,#0
5723  0012 89            	pushw	x
5724  0013 ae0000        	ldw	x,#L37
5725  0016 cd0000        	call	_assert_failed
5727  0019 5b04          	addw	sp,#4
5728  001b               L0001:
5729                     ; 1233   if (NewState != DISABLE)
5731  001b 0d01          	tnz	(OFST+1,sp)
5732  001d 2706          	jreq	L5212
5733                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5735  001f 72165259      	bset	21081,#3
5737  0023 2004          	jra	L7212
5738  0025               L5212:
5739                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5741  0025 72175259      	bres	21081,#3
5742  0029               L7212:
5743                     ; 1241 }
5746  0029 84            	pop	a
5747  002a 81            	ret
5784                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5784                     ; 1250 {
5785                     .text:	section	.text,new
5786  0000               _TIM1_OC3PreloadConfig:
5788  0000 88            	push	a
5789       00000000      OFST:	set	0
5792                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5794  0001 4d            	tnz	a
5795  0002 2704          	jreq	L6001
5796  0004 a101          	cp	a,#1
5797  0006 2603          	jrne	L4001
5798  0008               L6001:
5799  0008 4f            	clr	a
5800  0009 2010          	jra	L0101
5801  000b               L4001:
5802  000b ae04e4        	ldw	x,#1252
5803  000e 89            	pushw	x
5804  000f ae0000        	ldw	x,#0
5805  0012 89            	pushw	x
5806  0013 ae0000        	ldw	x,#L37
5807  0016 cd0000        	call	_assert_failed
5809  0019 5b04          	addw	sp,#4
5810  001b               L0101:
5811                     ; 1255   if (NewState != DISABLE)
5813  001b 0d01          	tnz	(OFST+1,sp)
5814  001d 2706          	jreq	L7412
5815                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5817  001f 7216525a      	bset	21082,#3
5819  0023 2004          	jra	L1512
5820  0025               L7412:
5821                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5823  0025 7217525a      	bres	21082,#3
5824  0029               L1512:
5825                     ; 1263 }
5828  0029 84            	pop	a
5829  002a 81            	ret
5866                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5866                     ; 1272 {
5867                     .text:	section	.text,new
5868  0000               _TIM1_OC4PreloadConfig:
5870  0000 88            	push	a
5871       00000000      OFST:	set	0
5874                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5876  0001 4d            	tnz	a
5877  0002 2704          	jreq	L6101
5878  0004 a101          	cp	a,#1
5879  0006 2603          	jrne	L4101
5880  0008               L6101:
5881  0008 4f            	clr	a
5882  0009 2010          	jra	L0201
5883  000b               L4101:
5884  000b ae04fa        	ldw	x,#1274
5885  000e 89            	pushw	x
5886  000f ae0000        	ldw	x,#0
5887  0012 89            	pushw	x
5888  0013 ae0000        	ldw	x,#L37
5889  0016 cd0000        	call	_assert_failed
5891  0019 5b04          	addw	sp,#4
5892  001b               L0201:
5893                     ; 1277   if (NewState != DISABLE)
5895  001b 0d01          	tnz	(OFST+1,sp)
5896  001d 2706          	jreq	L1712
5897                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5899  001f 7216525b      	bset	21083,#3
5901  0023 2004          	jra	L3712
5902  0025               L1712:
5903                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5905  0025 7217525b      	bres	21083,#3
5906  0029               L3712:
5907                     ; 1285 }
5910  0029 84            	pop	a
5911  002a 81            	ret
5947                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5947                     ; 1294 {
5948                     .text:	section	.text,new
5949  0000               _TIM1_OC1FastConfig:
5951  0000 88            	push	a
5952       00000000      OFST:	set	0
5955                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5957  0001 4d            	tnz	a
5958  0002 2704          	jreq	L6201
5959  0004 a101          	cp	a,#1
5960  0006 2603          	jrne	L4201
5961  0008               L6201:
5962  0008 4f            	clr	a
5963  0009 2010          	jra	L0301
5964  000b               L4201:
5965  000b ae0510        	ldw	x,#1296
5966  000e 89            	pushw	x
5967  000f ae0000        	ldw	x,#0
5968  0012 89            	pushw	x
5969  0013 ae0000        	ldw	x,#L37
5970  0016 cd0000        	call	_assert_failed
5972  0019 5b04          	addw	sp,#4
5973  001b               L0301:
5974                     ; 1299   if (NewState != DISABLE)
5976  001b 0d01          	tnz	(OFST+1,sp)
5977  001d 2706          	jreq	L3122
5978                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5980  001f 72145258      	bset	21080,#2
5982  0023 2004          	jra	L5122
5983  0025               L3122:
5984                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5986  0025 72155258      	bres	21080,#2
5987  0029               L5122:
5988                     ; 1307 }
5991  0029 84            	pop	a
5992  002a 81            	ret
6028                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6028                     ; 1316 {
6029                     .text:	section	.text,new
6030  0000               _TIM1_OC2FastConfig:
6032  0000 88            	push	a
6033       00000000      OFST:	set	0
6036                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6038  0001 4d            	tnz	a
6039  0002 2704          	jreq	L6301
6040  0004 a101          	cp	a,#1
6041  0006 2603          	jrne	L4301
6042  0008               L6301:
6043  0008 4f            	clr	a
6044  0009 2010          	jra	L0401
6045  000b               L4301:
6046  000b ae0526        	ldw	x,#1318
6047  000e 89            	pushw	x
6048  000f ae0000        	ldw	x,#0
6049  0012 89            	pushw	x
6050  0013 ae0000        	ldw	x,#L37
6051  0016 cd0000        	call	_assert_failed
6053  0019 5b04          	addw	sp,#4
6054  001b               L0401:
6055                     ; 1321   if (NewState != DISABLE)
6057  001b 0d01          	tnz	(OFST+1,sp)
6058  001d 2706          	jreq	L5322
6059                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6061  001f 72145259      	bset	21081,#2
6063  0023 2004          	jra	L7322
6064  0025               L5322:
6065                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6067  0025 72155259      	bres	21081,#2
6068  0029               L7322:
6069                     ; 1329 }
6072  0029 84            	pop	a
6073  002a 81            	ret
6109                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6109                     ; 1338 {
6110                     .text:	section	.text,new
6111  0000               _TIM1_OC3FastConfig:
6113  0000 88            	push	a
6114       00000000      OFST:	set	0
6117                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6119  0001 4d            	tnz	a
6120  0002 2704          	jreq	L6401
6121  0004 a101          	cp	a,#1
6122  0006 2603          	jrne	L4401
6123  0008               L6401:
6124  0008 4f            	clr	a
6125  0009 2010          	jra	L0501
6126  000b               L4401:
6127  000b ae053c        	ldw	x,#1340
6128  000e 89            	pushw	x
6129  000f ae0000        	ldw	x,#0
6130  0012 89            	pushw	x
6131  0013 ae0000        	ldw	x,#L37
6132  0016 cd0000        	call	_assert_failed
6134  0019 5b04          	addw	sp,#4
6135  001b               L0501:
6136                     ; 1343   if (NewState != DISABLE)
6138  001b 0d01          	tnz	(OFST+1,sp)
6139  001d 2706          	jreq	L7522
6140                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6142  001f 7214525a      	bset	21082,#2
6144  0023 2004          	jra	L1622
6145  0025               L7522:
6146                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6148  0025 7215525a      	bres	21082,#2
6149  0029               L1622:
6150                     ; 1351 }
6153  0029 84            	pop	a
6154  002a 81            	ret
6190                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6190                     ; 1360 {
6191                     .text:	section	.text,new
6192  0000               _TIM1_OC4FastConfig:
6194  0000 88            	push	a
6195       00000000      OFST:	set	0
6198                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6200  0001 4d            	tnz	a
6201  0002 2704          	jreq	L6501
6202  0004 a101          	cp	a,#1
6203  0006 2603          	jrne	L4501
6204  0008               L6501:
6205  0008 4f            	clr	a
6206  0009 2010          	jra	L0601
6207  000b               L4501:
6208  000b ae0552        	ldw	x,#1362
6209  000e 89            	pushw	x
6210  000f ae0000        	ldw	x,#0
6211  0012 89            	pushw	x
6212  0013 ae0000        	ldw	x,#L37
6213  0016 cd0000        	call	_assert_failed
6215  0019 5b04          	addw	sp,#4
6216  001b               L0601:
6217                     ; 1365   if (NewState != DISABLE)
6219  001b 0d01          	tnz	(OFST+1,sp)
6220  001d 2706          	jreq	L1032
6221                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6223  001f 7214525b      	bset	21083,#2
6225  0023 2004          	jra	L3032
6226  0025               L1032:
6227                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6229  0025 7215525b      	bres	21083,#2
6230  0029               L3032:
6231                     ; 1373 }
6234  0029 84            	pop	a
6235  002a 81            	ret
6341                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6341                     ; 1390 {
6342                     .text:	section	.text,new
6343  0000               _TIM1_GenerateEvent:
6345  0000 88            	push	a
6346       00000000      OFST:	set	0
6349                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6351  0001 4d            	tnz	a
6352  0002 2703          	jreq	L4601
6353  0004 4f            	clr	a
6354  0005 2010          	jra	L6601
6355  0007               L4601:
6356  0007 ae0570        	ldw	x,#1392
6357  000a 89            	pushw	x
6358  000b ae0000        	ldw	x,#0
6359  000e 89            	pushw	x
6360  000f ae0000        	ldw	x,#L37
6361  0012 cd0000        	call	_assert_failed
6363  0015 5b04          	addw	sp,#4
6364  0017               L6601:
6365                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6367  0017 7b01          	ld	a,(OFST+1,sp)
6368  0019 c75257        	ld	21079,a
6369                     ; 1396 }
6372  001c 84            	pop	a
6373  001d 81            	ret
6410                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6410                     ; 1407 {
6411                     .text:	section	.text,new
6412  0000               _TIM1_OC1PolarityConfig:
6414  0000 88            	push	a
6415       00000000      OFST:	set	0
6418                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6420  0001 4d            	tnz	a
6421  0002 2704          	jreq	L4701
6422  0004 a122          	cp	a,#34
6423  0006 2603          	jrne	L2701
6424  0008               L4701:
6425  0008 4f            	clr	a
6426  0009 2010          	jra	L6701
6427  000b               L2701:
6428  000b ae0581        	ldw	x,#1409
6429  000e 89            	pushw	x
6430  000f ae0000        	ldw	x,#0
6431  0012 89            	pushw	x
6432  0013 ae0000        	ldw	x,#L37
6433  0016 cd0000        	call	_assert_failed
6435  0019 5b04          	addw	sp,#4
6436  001b               L6701:
6437                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6439  001b 0d01          	tnz	(OFST+1,sp)
6440  001d 2706          	jreq	L5632
6441                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6443  001f 7212525c      	bset	21084,#1
6445  0023 2004          	jra	L7632
6446  0025               L5632:
6447                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6449  0025 7213525c      	bres	21084,#1
6450  0029               L7632:
6451                     ; 1420 }
6454  0029 84            	pop	a
6455  002a 81            	ret
6492                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6492                     ; 1431 {
6493                     .text:	section	.text,new
6494  0000               _TIM1_OC1NPolarityConfig:
6496  0000 88            	push	a
6497       00000000      OFST:	set	0
6500                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6502  0001 4d            	tnz	a
6503  0002 2704          	jreq	L4011
6504  0004 a188          	cp	a,#136
6505  0006 2603          	jrne	L2011
6506  0008               L4011:
6507  0008 4f            	clr	a
6508  0009 2010          	jra	L6011
6509  000b               L2011:
6510  000b ae0599        	ldw	x,#1433
6511  000e 89            	pushw	x
6512  000f ae0000        	ldw	x,#0
6513  0012 89            	pushw	x
6514  0013 ae0000        	ldw	x,#L37
6515  0016 cd0000        	call	_assert_failed
6517  0019 5b04          	addw	sp,#4
6518  001b               L6011:
6519                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6521  001b 0d01          	tnz	(OFST+1,sp)
6522  001d 2706          	jreq	L7042
6523                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6525  001f 7216525c      	bset	21084,#3
6527  0023 2004          	jra	L1142
6528  0025               L7042:
6529                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6531  0025 7217525c      	bres	21084,#3
6532  0029               L1142:
6533                     ; 1444 }
6536  0029 84            	pop	a
6537  002a 81            	ret
6574                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6574                     ; 1455 {
6575                     .text:	section	.text,new
6576  0000               _TIM1_OC2PolarityConfig:
6578  0000 88            	push	a
6579       00000000      OFST:	set	0
6582                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6584  0001 4d            	tnz	a
6585  0002 2704          	jreq	L4111
6586  0004 a122          	cp	a,#34
6587  0006 2603          	jrne	L2111
6588  0008               L4111:
6589  0008 4f            	clr	a
6590  0009 2010          	jra	L6111
6591  000b               L2111:
6592  000b ae05b1        	ldw	x,#1457
6593  000e 89            	pushw	x
6594  000f ae0000        	ldw	x,#0
6595  0012 89            	pushw	x
6596  0013 ae0000        	ldw	x,#L37
6597  0016 cd0000        	call	_assert_failed
6599  0019 5b04          	addw	sp,#4
6600  001b               L6111:
6601                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6603  001b 0d01          	tnz	(OFST+1,sp)
6604  001d 2706          	jreq	L1342
6605                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6607  001f 721a525c      	bset	21084,#5
6609  0023 2004          	jra	L3342
6610  0025               L1342:
6611                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6613  0025 721b525c      	bres	21084,#5
6614  0029               L3342:
6615                     ; 1468 }
6618  0029 84            	pop	a
6619  002a 81            	ret
6656                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6656                     ; 1479 {
6657                     .text:	section	.text,new
6658  0000               _TIM1_OC2NPolarityConfig:
6660  0000 88            	push	a
6661       00000000      OFST:	set	0
6664                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6666  0001 4d            	tnz	a
6667  0002 2704          	jreq	L4211
6668  0004 a188          	cp	a,#136
6669  0006 2603          	jrne	L2211
6670  0008               L4211:
6671  0008 4f            	clr	a
6672  0009 2010          	jra	L6211
6673  000b               L2211:
6674  000b ae05c9        	ldw	x,#1481
6675  000e 89            	pushw	x
6676  000f ae0000        	ldw	x,#0
6677  0012 89            	pushw	x
6678  0013 ae0000        	ldw	x,#L37
6679  0016 cd0000        	call	_assert_failed
6681  0019 5b04          	addw	sp,#4
6682  001b               L6211:
6683                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6685  001b 0d01          	tnz	(OFST+1,sp)
6686  001d 2706          	jreq	L3542
6687                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6689  001f 721e525c      	bset	21084,#7
6691  0023 2004          	jra	L5542
6692  0025               L3542:
6693                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6695  0025 721f525c      	bres	21084,#7
6696  0029               L5542:
6697                     ; 1492 }
6700  0029 84            	pop	a
6701  002a 81            	ret
6738                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6738                     ; 1503 {
6739                     .text:	section	.text,new
6740  0000               _TIM1_OC3PolarityConfig:
6742  0000 88            	push	a
6743       00000000      OFST:	set	0
6746                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6748  0001 4d            	tnz	a
6749  0002 2704          	jreq	L4311
6750  0004 a122          	cp	a,#34
6751  0006 2603          	jrne	L2311
6752  0008               L4311:
6753  0008 4f            	clr	a
6754  0009 2010          	jra	L6311
6755  000b               L2311:
6756  000b ae05e1        	ldw	x,#1505
6757  000e 89            	pushw	x
6758  000f ae0000        	ldw	x,#0
6759  0012 89            	pushw	x
6760  0013 ae0000        	ldw	x,#L37
6761  0016 cd0000        	call	_assert_failed
6763  0019 5b04          	addw	sp,#4
6764  001b               L6311:
6765                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6767  001b 0d01          	tnz	(OFST+1,sp)
6768  001d 2706          	jreq	L5742
6769                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6771  001f 7212525d      	bset	21085,#1
6773  0023 2004          	jra	L7742
6774  0025               L5742:
6775                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6777  0025 7213525d      	bres	21085,#1
6778  0029               L7742:
6779                     ; 1516 }
6782  0029 84            	pop	a
6783  002a 81            	ret
6820                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6820                     ; 1528 {
6821                     .text:	section	.text,new
6822  0000               _TIM1_OC3NPolarityConfig:
6824  0000 88            	push	a
6825       00000000      OFST:	set	0
6828                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6830  0001 4d            	tnz	a
6831  0002 2704          	jreq	L4411
6832  0004 a188          	cp	a,#136
6833  0006 2603          	jrne	L2411
6834  0008               L4411:
6835  0008 4f            	clr	a
6836  0009 2010          	jra	L6411
6837  000b               L2411:
6838  000b ae05fa        	ldw	x,#1530
6839  000e 89            	pushw	x
6840  000f ae0000        	ldw	x,#0
6841  0012 89            	pushw	x
6842  0013 ae0000        	ldw	x,#L37
6843  0016 cd0000        	call	_assert_failed
6845  0019 5b04          	addw	sp,#4
6846  001b               L6411:
6847                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6849  001b 0d01          	tnz	(OFST+1,sp)
6850  001d 2706          	jreq	L7152
6851                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6853  001f 7216525d      	bset	21085,#3
6855  0023 2004          	jra	L1252
6856  0025               L7152:
6857                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6859  0025 7217525d      	bres	21085,#3
6860  0029               L1252:
6861                     ; 1541 }
6864  0029 84            	pop	a
6865  002a 81            	ret
6902                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6902                     ; 1552 {
6903                     .text:	section	.text,new
6904  0000               _TIM1_OC4PolarityConfig:
6906  0000 88            	push	a
6907       00000000      OFST:	set	0
6910                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6912  0001 4d            	tnz	a
6913  0002 2704          	jreq	L4511
6914  0004 a122          	cp	a,#34
6915  0006 2603          	jrne	L2511
6916  0008               L4511:
6917  0008 4f            	clr	a
6918  0009 2010          	jra	L6511
6919  000b               L2511:
6920  000b ae0612        	ldw	x,#1554
6921  000e 89            	pushw	x
6922  000f ae0000        	ldw	x,#0
6923  0012 89            	pushw	x
6924  0013 ae0000        	ldw	x,#L37
6925  0016 cd0000        	call	_assert_failed
6927  0019 5b04          	addw	sp,#4
6928  001b               L6511:
6929                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6931  001b 0d01          	tnz	(OFST+1,sp)
6932  001d 2706          	jreq	L1452
6933                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6935  001f 721a525d      	bset	21085,#5
6937  0023 2004          	jra	L3452
6938  0025               L1452:
6939                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6941  0025 721b525d      	bres	21085,#5
6942  0029               L3452:
6943                     ; 1565 }
6946  0029 84            	pop	a
6947  002a 81            	ret
6993                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6993                     ; 1580 {
6994                     .text:	section	.text,new
6995  0000               _TIM1_CCxCmd:
6997  0000 89            	pushw	x
6998       00000000      OFST:	set	0
7001                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7003  0001 9e            	ld	a,xh
7004  0002 4d            	tnz	a
7005  0003 270f          	jreq	L4611
7006  0005 9e            	ld	a,xh
7007  0006 a101          	cp	a,#1
7008  0008 270a          	jreq	L4611
7009  000a 9e            	ld	a,xh
7010  000b a102          	cp	a,#2
7011  000d 2705          	jreq	L4611
7012  000f 9e            	ld	a,xh
7013  0010 a103          	cp	a,#3
7014  0012 2603          	jrne	L2611
7015  0014               L4611:
7016  0014 4f            	clr	a
7017  0015 2010          	jra	L6611
7018  0017               L2611:
7019  0017 ae062e        	ldw	x,#1582
7020  001a 89            	pushw	x
7021  001b ae0000        	ldw	x,#0
7022  001e 89            	pushw	x
7023  001f ae0000        	ldw	x,#L37
7024  0022 cd0000        	call	_assert_failed
7026  0025 5b04          	addw	sp,#4
7027  0027               L6611:
7028                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7030  0027 0d02          	tnz	(OFST+2,sp)
7031  0029 2706          	jreq	L2711
7032  002b 7b02          	ld	a,(OFST+2,sp)
7033  002d a101          	cp	a,#1
7034  002f 2603          	jrne	L0711
7035  0031               L2711:
7036  0031 4f            	clr	a
7037  0032 2010          	jra	L4711
7038  0034               L0711:
7039  0034 ae062f        	ldw	x,#1583
7040  0037 89            	pushw	x
7041  0038 ae0000        	ldw	x,#0
7042  003b 89            	pushw	x
7043  003c ae0000        	ldw	x,#L37
7044  003f cd0000        	call	_assert_failed
7046  0042 5b04          	addw	sp,#4
7047  0044               L4711:
7048                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7050  0044 0d01          	tnz	(OFST+1,sp)
7051  0046 2610          	jrne	L7652
7052                     ; 1588     if (NewState != DISABLE)
7054  0048 0d02          	tnz	(OFST+2,sp)
7055  004a 2706          	jreq	L1752
7056                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7058  004c 7210525c      	bset	21084,#0
7060  0050 2040          	jra	L5752
7061  0052               L1752:
7062                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7064  0052 7211525c      	bres	21084,#0
7065  0056 203a          	jra	L5752
7066  0058               L7652:
7067                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7069  0058 7b01          	ld	a,(OFST+1,sp)
7070  005a a101          	cp	a,#1
7071  005c 2610          	jrne	L7752
7072                     ; 1601     if (NewState != DISABLE)
7074  005e 0d02          	tnz	(OFST+2,sp)
7075  0060 2706          	jreq	L1062
7076                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7078  0062 7218525c      	bset	21084,#4
7080  0066 202a          	jra	L5752
7081  0068               L1062:
7082                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7084  0068 7219525c      	bres	21084,#4
7085  006c 2024          	jra	L5752
7086  006e               L7752:
7087                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7089  006e 7b01          	ld	a,(OFST+1,sp)
7090  0070 a102          	cp	a,#2
7091  0072 2610          	jrne	L7062
7092                     ; 1613     if (NewState != DISABLE)
7094  0074 0d02          	tnz	(OFST+2,sp)
7095  0076 2706          	jreq	L1162
7096                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7098  0078 7210525d      	bset	21085,#0
7100  007c 2014          	jra	L5752
7101  007e               L1162:
7102                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7104  007e 7211525d      	bres	21085,#0
7105  0082 200e          	jra	L5752
7106  0084               L7062:
7107                     ; 1625     if (NewState != DISABLE)
7109  0084 0d02          	tnz	(OFST+2,sp)
7110  0086 2706          	jreq	L7162
7111                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7113  0088 7218525d      	bset	21085,#4
7115  008c 2004          	jra	L5752
7116  008e               L7162:
7117                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7119  008e 7219525d      	bres	21085,#4
7120  0092               L5752:
7121                     ; 1634 }
7124  0092 85            	popw	x
7125  0093 81            	ret
7171                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7171                     ; 1648 {
7172                     .text:	section	.text,new
7173  0000               _TIM1_CCxNCmd:
7175  0000 89            	pushw	x
7176       00000000      OFST:	set	0
7179                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7181  0001 9e            	ld	a,xh
7182  0002 4d            	tnz	a
7183  0003 270a          	jreq	L2021
7184  0005 9e            	ld	a,xh
7185  0006 a101          	cp	a,#1
7186  0008 2705          	jreq	L2021
7187  000a 9e            	ld	a,xh
7188  000b a102          	cp	a,#2
7189  000d 2603          	jrne	L0021
7190  000f               L2021:
7191  000f 4f            	clr	a
7192  0010 2010          	jra	L4021
7193  0012               L0021:
7194  0012 ae0672        	ldw	x,#1650
7195  0015 89            	pushw	x
7196  0016 ae0000        	ldw	x,#0
7197  0019 89            	pushw	x
7198  001a ae0000        	ldw	x,#L37
7199  001d cd0000        	call	_assert_failed
7201  0020 5b04          	addw	sp,#4
7202  0022               L4021:
7203                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7205  0022 0d02          	tnz	(OFST+2,sp)
7206  0024 2706          	jreq	L0121
7207  0026 7b02          	ld	a,(OFST+2,sp)
7208  0028 a101          	cp	a,#1
7209  002a 2603          	jrne	L6021
7210  002c               L0121:
7211  002c 4f            	clr	a
7212  002d 2010          	jra	L2121
7213  002f               L6021:
7214  002f ae0673        	ldw	x,#1651
7215  0032 89            	pushw	x
7216  0033 ae0000        	ldw	x,#0
7217  0036 89            	pushw	x
7218  0037 ae0000        	ldw	x,#L37
7219  003a cd0000        	call	_assert_failed
7221  003d 5b04          	addw	sp,#4
7222  003f               L2121:
7223                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7225  003f 0d01          	tnz	(OFST+1,sp)
7226  0041 2610          	jrne	L5462
7227                     ; 1656     if (NewState != DISABLE)
7229  0043 0d02          	tnz	(OFST+2,sp)
7230  0045 2706          	jreq	L7462
7231                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7233  0047 7214525c      	bset	21084,#2
7235  004b 202a          	jra	L3562
7236  004d               L7462:
7237                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7239  004d 7215525c      	bres	21084,#2
7240  0051 2024          	jra	L3562
7241  0053               L5462:
7242                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7244  0053 7b01          	ld	a,(OFST+1,sp)
7245  0055 a101          	cp	a,#1
7246  0057 2610          	jrne	L5562
7247                     ; 1668     if (NewState != DISABLE)
7249  0059 0d02          	tnz	(OFST+2,sp)
7250  005b 2706          	jreq	L7562
7251                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7253  005d 721c525c      	bset	21084,#6
7255  0061 2014          	jra	L3562
7256  0063               L7562:
7257                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7259  0063 721d525c      	bres	21084,#6
7260  0067 200e          	jra	L3562
7261  0069               L5562:
7262                     ; 1680     if (NewState != DISABLE)
7264  0069 0d02          	tnz	(OFST+2,sp)
7265  006b 2706          	jreq	L5662
7266                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7268  006d 7214525d      	bset	21085,#2
7270  0071 2004          	jra	L3562
7271  0073               L5662:
7272                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7274  0073 7215525d      	bres	21085,#2
7275  0077               L3562:
7276                     ; 1689 }
7279  0077 85            	popw	x
7280  0078 81            	ret
7326                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7326                     ; 1713 {
7327                     .text:	section	.text,new
7328  0000               _TIM1_SelectOCxM:
7330  0000 89            	pushw	x
7331       00000000      OFST:	set	0
7334                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7336  0001 9e            	ld	a,xh
7337  0002 4d            	tnz	a
7338  0003 270f          	jreq	L0221
7339  0005 9e            	ld	a,xh
7340  0006 a101          	cp	a,#1
7341  0008 270a          	jreq	L0221
7342  000a 9e            	ld	a,xh
7343  000b a102          	cp	a,#2
7344  000d 2705          	jreq	L0221
7345  000f 9e            	ld	a,xh
7346  0010 a103          	cp	a,#3
7347  0012 2603          	jrne	L6121
7348  0014               L0221:
7349  0014 4f            	clr	a
7350  0015 2010          	jra	L2221
7351  0017               L6121:
7352  0017 ae06b3        	ldw	x,#1715
7353  001a 89            	pushw	x
7354  001b ae0000        	ldw	x,#0
7355  001e 89            	pushw	x
7356  001f ae0000        	ldw	x,#L37
7357  0022 cd0000        	call	_assert_failed
7359  0025 5b04          	addw	sp,#4
7360  0027               L2221:
7361                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7363  0027 0d02          	tnz	(OFST+2,sp)
7364  0029 272a          	jreq	L6221
7365  002b 7b02          	ld	a,(OFST+2,sp)
7366  002d a110          	cp	a,#16
7367  002f 2724          	jreq	L6221
7368  0031 7b02          	ld	a,(OFST+2,sp)
7369  0033 a120          	cp	a,#32
7370  0035 271e          	jreq	L6221
7371  0037 7b02          	ld	a,(OFST+2,sp)
7372  0039 a130          	cp	a,#48
7373  003b 2718          	jreq	L6221
7374  003d 7b02          	ld	a,(OFST+2,sp)
7375  003f a160          	cp	a,#96
7376  0041 2712          	jreq	L6221
7377  0043 7b02          	ld	a,(OFST+2,sp)
7378  0045 a170          	cp	a,#112
7379  0047 270c          	jreq	L6221
7380  0049 7b02          	ld	a,(OFST+2,sp)
7381  004b a150          	cp	a,#80
7382  004d 2706          	jreq	L6221
7383  004f 7b02          	ld	a,(OFST+2,sp)
7384  0051 a140          	cp	a,#64
7385  0053 2603          	jrne	L4221
7386  0055               L6221:
7387  0055 4f            	clr	a
7388  0056 2010          	jra	L0321
7389  0058               L4221:
7390  0058 ae06b4        	ldw	x,#1716
7391  005b 89            	pushw	x
7392  005c ae0000        	ldw	x,#0
7393  005f 89            	pushw	x
7394  0060 ae0000        	ldw	x,#L37
7395  0063 cd0000        	call	_assert_failed
7397  0066 5b04          	addw	sp,#4
7398  0068               L0321:
7399                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7401  0068 0d01          	tnz	(OFST+1,sp)
7402  006a 2610          	jrne	L3172
7403                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7405  006c 7211525c      	bres	21084,#0
7406                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7406                     ; 1725                             | (uint8_t)TIM1_OCMode);
7408  0070 c65258        	ld	a,21080
7409  0073 a48f          	and	a,#143
7410  0075 1a02          	or	a,(OFST+2,sp)
7411  0077 c75258        	ld	21080,a
7413  007a 203a          	jra	L5172
7414  007c               L3172:
7415                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7417  007c 7b01          	ld	a,(OFST+1,sp)
7418  007e a101          	cp	a,#1
7419  0080 2610          	jrne	L7172
7420                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7422  0082 7219525c      	bres	21084,#4
7423                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7423                     ; 1734                             | (uint8_t)TIM1_OCMode);
7425  0086 c65259        	ld	a,21081
7426  0089 a48f          	and	a,#143
7427  008b 1a02          	or	a,(OFST+2,sp)
7428  008d c75259        	ld	21081,a
7430  0090 2024          	jra	L5172
7431  0092               L7172:
7432                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7434  0092 7b01          	ld	a,(OFST+1,sp)
7435  0094 a102          	cp	a,#2
7436  0096 2610          	jrne	L3272
7437                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7439  0098 7211525d      	bres	21085,#0
7440                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7440                     ; 1743                             | (uint8_t)TIM1_OCMode);
7442  009c c6525a        	ld	a,21082
7443  009f a48f          	and	a,#143
7444  00a1 1a02          	or	a,(OFST+2,sp)
7445  00a3 c7525a        	ld	21082,a
7447  00a6 200e          	jra	L5172
7448  00a8               L3272:
7449                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7451  00a8 7219525d      	bres	21085,#4
7452                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7452                     ; 1752                             | (uint8_t)TIM1_OCMode);
7454  00ac c6525b        	ld	a,21083
7455  00af a48f          	and	a,#143
7456  00b1 1a02          	or	a,(OFST+2,sp)
7457  00b3 c7525b        	ld	21083,a
7458  00b6               L5172:
7459                     ; 1754 }
7462  00b6 85            	popw	x
7463  00b7 81            	ret
7495                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7495                     ; 1763 {
7496                     .text:	section	.text,new
7497  0000               _TIM1_SetCounter:
7501                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7503  0000 9e            	ld	a,xh
7504  0001 c7525e        	ld	21086,a
7505                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7507  0004 9f            	ld	a,xl
7508  0005 c7525f        	ld	21087,a
7509                     ; 1767 }
7512  0008 81            	ret
7544                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7544                     ; 1776 {
7545                     .text:	section	.text,new
7546  0000               _TIM1_SetAutoreload:
7550                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7552  0000 9e            	ld	a,xh
7553  0001 c75262        	ld	21090,a
7554                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7556  0004 9f            	ld	a,xl
7557  0005 c75263        	ld	21091,a
7558                     ; 1780  }
7561  0008 81            	ret
7593                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7593                     ; 1789 {
7594                     .text:	section	.text,new
7595  0000               _TIM1_SetCompare1:
7599                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7601  0000 9e            	ld	a,xh
7602  0001 c75265        	ld	21093,a
7603                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7605  0004 9f            	ld	a,xl
7606  0005 c75266        	ld	21094,a
7607                     ; 1793 }
7610  0008 81            	ret
7642                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7642                     ; 1802 {
7643                     .text:	section	.text,new
7644  0000               _TIM1_SetCompare2:
7648                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7650  0000 9e            	ld	a,xh
7651  0001 c75267        	ld	21095,a
7652                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7654  0004 9f            	ld	a,xl
7655  0005 c75268        	ld	21096,a
7656                     ; 1806 }
7659  0008 81            	ret
7691                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7691                     ; 1815 {
7692                     .text:	section	.text,new
7693  0000               _TIM1_SetCompare3:
7697                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7699  0000 9e            	ld	a,xh
7700  0001 c75269        	ld	21097,a
7701                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7703  0004 9f            	ld	a,xl
7704  0005 c7526a        	ld	21098,a
7705                     ; 1819 }
7708  0008 81            	ret
7740                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7740                     ; 1828 {
7741                     .text:	section	.text,new
7742  0000               _TIM1_SetCompare4:
7746                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7748  0000 9e            	ld	a,xh
7749  0001 c7526b        	ld	21099,a
7750                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7752  0004 9f            	ld	a,xl
7753  0005 c7526c        	ld	21100,a
7754                     ; 1832 }
7757  0008 81            	ret
7794                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7794                     ; 1845 {
7795                     .text:	section	.text,new
7796  0000               _TIM1_SetIC1Prescaler:
7798  0000 88            	push	a
7799       00000000      OFST:	set	0
7802                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7804  0001 4d            	tnz	a
7805  0002 270c          	jreq	L2521
7806  0004 a104          	cp	a,#4
7807  0006 2708          	jreq	L2521
7808  0008 a108          	cp	a,#8
7809  000a 2704          	jreq	L2521
7810  000c a10c          	cp	a,#12
7811  000e 2603          	jrne	L0521
7812  0010               L2521:
7813  0010 4f            	clr	a
7814  0011 2010          	jra	L4521
7815  0013               L0521:
7816  0013 ae0737        	ldw	x,#1847
7817  0016 89            	pushw	x
7818  0017 ae0000        	ldw	x,#0
7819  001a 89            	pushw	x
7820  001b ae0000        	ldw	x,#L37
7821  001e cd0000        	call	_assert_failed
7823  0021 5b04          	addw	sp,#4
7824  0023               L4521:
7825                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7825                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7827  0023 c65258        	ld	a,21080
7828  0026 a4f3          	and	a,#243
7829  0028 1a01          	or	a,(OFST+1,sp)
7830  002a c75258        	ld	21080,a
7831                     ; 1852 }
7834  002d 84            	pop	a
7835  002e 81            	ret
7872                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7872                     ; 1865 {
7873                     .text:	section	.text,new
7874  0000               _TIM1_SetIC2Prescaler:
7876  0000 88            	push	a
7877       00000000      OFST:	set	0
7880                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7882  0001 4d            	tnz	a
7883  0002 270c          	jreq	L2621
7884  0004 a104          	cp	a,#4
7885  0006 2708          	jreq	L2621
7886  0008 a108          	cp	a,#8
7887  000a 2704          	jreq	L2621
7888  000c a10c          	cp	a,#12
7889  000e 2603          	jrne	L0621
7890  0010               L2621:
7891  0010 4f            	clr	a
7892  0011 2010          	jra	L4621
7893  0013               L0621:
7894  0013 ae074c        	ldw	x,#1868
7895  0016 89            	pushw	x
7896  0017 ae0000        	ldw	x,#0
7897  001a 89            	pushw	x
7898  001b ae0000        	ldw	x,#L37
7899  001e cd0000        	call	_assert_failed
7901  0021 5b04          	addw	sp,#4
7902  0023               L4621:
7903                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7903                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7905  0023 c65259        	ld	a,21081
7906  0026 a4f3          	and	a,#243
7907  0028 1a01          	or	a,(OFST+1,sp)
7908  002a c75259        	ld	21081,a
7909                     ; 1873 }
7912  002d 84            	pop	a
7913  002e 81            	ret
7950                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7950                     ; 1886 {
7951                     .text:	section	.text,new
7952  0000               _TIM1_SetIC3Prescaler:
7954  0000 88            	push	a
7955       00000000      OFST:	set	0
7958                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7960  0001 4d            	tnz	a
7961  0002 270c          	jreq	L2721
7962  0004 a104          	cp	a,#4
7963  0006 2708          	jreq	L2721
7964  0008 a108          	cp	a,#8
7965  000a 2704          	jreq	L2721
7966  000c a10c          	cp	a,#12
7967  000e 2603          	jrne	L0721
7968  0010               L2721:
7969  0010 4f            	clr	a
7970  0011 2010          	jra	L4721
7971  0013               L0721:
7972  0013 ae0761        	ldw	x,#1889
7973  0016 89            	pushw	x
7974  0017 ae0000        	ldw	x,#0
7975  001a 89            	pushw	x
7976  001b ae0000        	ldw	x,#L37
7977  001e cd0000        	call	_assert_failed
7979  0021 5b04          	addw	sp,#4
7980  0023               L4721:
7981                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7981                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7983  0023 c6525a        	ld	a,21082
7984  0026 a4f3          	and	a,#243
7985  0028 1a01          	or	a,(OFST+1,sp)
7986  002a c7525a        	ld	21082,a
7987                     ; 1894 }
7990  002d 84            	pop	a
7991  002e 81            	ret
8028                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8028                     ; 1907 {
8029                     .text:	section	.text,new
8030  0000               _TIM1_SetIC4Prescaler:
8032  0000 88            	push	a
8033       00000000      OFST:	set	0
8036                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8038  0001 4d            	tnz	a
8039  0002 270c          	jreq	L2031
8040  0004 a104          	cp	a,#4
8041  0006 2708          	jreq	L2031
8042  0008 a108          	cp	a,#8
8043  000a 2704          	jreq	L2031
8044  000c a10c          	cp	a,#12
8045  000e 2603          	jrne	L0031
8046  0010               L2031:
8047  0010 4f            	clr	a
8048  0011 2010          	jra	L4031
8049  0013               L0031:
8050  0013 ae0776        	ldw	x,#1910
8051  0016 89            	pushw	x
8052  0017 ae0000        	ldw	x,#0
8053  001a 89            	pushw	x
8054  001b ae0000        	ldw	x,#L37
8055  001e cd0000        	call	_assert_failed
8057  0021 5b04          	addw	sp,#4
8058  0023               L4031:
8059                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8059                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8061  0023 c6525b        	ld	a,21083
8062  0026 a4f3          	and	a,#243
8063  0028 1a01          	or	a,(OFST+1,sp)
8064  002a c7525b        	ld	21083,a
8065                     ; 1915 }
8068  002d 84            	pop	a
8069  002e 81            	ret
8115                     ; 1922 uint16_t TIM1_GetCapture1(void)
8115                     ; 1923 {
8116                     .text:	section	.text,new
8117  0000               _TIM1_GetCapture1:
8119  0000 5204          	subw	sp,#4
8120       00000004      OFST:	set	4
8123                     ; 1926   uint16_t tmpccr1 = 0;
8125                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8129                     ; 1929   tmpccr1h = TIM1->CCR1H;
8131  0002 c65265        	ld	a,21093
8132  0005 6b02          	ld	(OFST-2,sp),a
8133                     ; 1930   tmpccr1l = TIM1->CCR1L;
8135  0007 c65266        	ld	a,21094
8136  000a 6b01          	ld	(OFST-3,sp),a
8137                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8139  000c 7b01          	ld	a,(OFST-3,sp)
8140  000e 5f            	clrw	x
8141  000f 97            	ld	xl,a
8142  0010 1f03          	ldw	(OFST-1,sp),x
8143                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8145  0012 7b02          	ld	a,(OFST-2,sp)
8146  0014 5f            	clrw	x
8147  0015 97            	ld	xl,a
8148  0016 4f            	clr	a
8149  0017 02            	rlwa	x,a
8150  0018 01            	rrwa	x,a
8151  0019 1a04          	or	a,(OFST+0,sp)
8152  001b 01            	rrwa	x,a
8153  001c 1a03          	or	a,(OFST-1,sp)
8154  001e 01            	rrwa	x,a
8155  001f 1f03          	ldw	(OFST-1,sp),x
8156                     ; 1935   return (uint16_t)tmpccr1;
8158  0021 1e03          	ldw	x,(OFST-1,sp)
8161  0023 5b04          	addw	sp,#4
8162  0025 81            	ret
8208                     ; 1943 uint16_t TIM1_GetCapture2(void)
8208                     ; 1944 {
8209                     .text:	section	.text,new
8210  0000               _TIM1_GetCapture2:
8212  0000 5204          	subw	sp,#4
8213       00000004      OFST:	set	4
8216                     ; 1947   uint16_t tmpccr2 = 0;
8218                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8222                     ; 1950   tmpccr2h = TIM1->CCR2H;
8224  0002 c65267        	ld	a,21095
8225  0005 6b02          	ld	(OFST-2,sp),a
8226                     ; 1951   tmpccr2l = TIM1->CCR2L;
8228  0007 c65268        	ld	a,21096
8229  000a 6b01          	ld	(OFST-3,sp),a
8230                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8232  000c 7b01          	ld	a,(OFST-3,sp)
8233  000e 5f            	clrw	x
8234  000f 97            	ld	xl,a
8235  0010 1f03          	ldw	(OFST-1,sp),x
8236                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8238  0012 7b02          	ld	a,(OFST-2,sp)
8239  0014 5f            	clrw	x
8240  0015 97            	ld	xl,a
8241  0016 4f            	clr	a
8242  0017 02            	rlwa	x,a
8243  0018 01            	rrwa	x,a
8244  0019 1a04          	or	a,(OFST+0,sp)
8245  001b 01            	rrwa	x,a
8246  001c 1a03          	or	a,(OFST-1,sp)
8247  001e 01            	rrwa	x,a
8248  001f 1f03          	ldw	(OFST-1,sp),x
8249                     ; 1956   return (uint16_t)tmpccr2;
8251  0021 1e03          	ldw	x,(OFST-1,sp)
8254  0023 5b04          	addw	sp,#4
8255  0025 81            	ret
8301                     ; 1964 uint16_t TIM1_GetCapture3(void)
8301                     ; 1965 {
8302                     .text:	section	.text,new
8303  0000               _TIM1_GetCapture3:
8305  0000 5204          	subw	sp,#4
8306       00000004      OFST:	set	4
8309                     ; 1967   uint16_t tmpccr3 = 0;
8311                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8315                     ; 1970   tmpccr3h = TIM1->CCR3H;
8317  0002 c65269        	ld	a,21097
8318  0005 6b02          	ld	(OFST-2,sp),a
8319                     ; 1971   tmpccr3l = TIM1->CCR3L;
8321  0007 c6526a        	ld	a,21098
8322  000a 6b01          	ld	(OFST-3,sp),a
8323                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8325  000c 7b01          	ld	a,(OFST-3,sp)
8326  000e 5f            	clrw	x
8327  000f 97            	ld	xl,a
8328  0010 1f03          	ldw	(OFST-1,sp),x
8329                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8331  0012 7b02          	ld	a,(OFST-2,sp)
8332  0014 5f            	clrw	x
8333  0015 97            	ld	xl,a
8334  0016 4f            	clr	a
8335  0017 02            	rlwa	x,a
8336  0018 01            	rrwa	x,a
8337  0019 1a04          	or	a,(OFST+0,sp)
8338  001b 01            	rrwa	x,a
8339  001c 1a03          	or	a,(OFST-1,sp)
8340  001e 01            	rrwa	x,a
8341  001f 1f03          	ldw	(OFST-1,sp),x
8342                     ; 1976   return (uint16_t)tmpccr3;
8344  0021 1e03          	ldw	x,(OFST-1,sp)
8347  0023 5b04          	addw	sp,#4
8348  0025 81            	ret
8394                     ; 1984 uint16_t TIM1_GetCapture4(void)
8394                     ; 1985 {
8395                     .text:	section	.text,new
8396  0000               _TIM1_GetCapture4:
8398  0000 5204          	subw	sp,#4
8399       00000004      OFST:	set	4
8402                     ; 1987   uint16_t tmpccr4 = 0;
8404                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8408                     ; 1990   tmpccr4h = TIM1->CCR4H;
8410  0002 c6526b        	ld	a,21099
8411  0005 6b02          	ld	(OFST-2,sp),a
8412                     ; 1991   tmpccr4l = TIM1->CCR4L;
8414  0007 c6526c        	ld	a,21100
8415  000a 6b01          	ld	(OFST-3,sp),a
8416                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8418  000c 7b01          	ld	a,(OFST-3,sp)
8419  000e 5f            	clrw	x
8420  000f 97            	ld	xl,a
8421  0010 1f03          	ldw	(OFST-1,sp),x
8422                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8424  0012 7b02          	ld	a,(OFST-2,sp)
8425  0014 5f            	clrw	x
8426  0015 97            	ld	xl,a
8427  0016 4f            	clr	a
8428  0017 02            	rlwa	x,a
8429  0018 01            	rrwa	x,a
8430  0019 1a04          	or	a,(OFST+0,sp)
8431  001b 01            	rrwa	x,a
8432  001c 1a03          	or	a,(OFST-1,sp)
8433  001e 01            	rrwa	x,a
8434  001f 1f03          	ldw	(OFST-1,sp),x
8435                     ; 1996   return (uint16_t)tmpccr4;
8437  0021 1e03          	ldw	x,(OFST-1,sp)
8440  0023 5b04          	addw	sp,#4
8441  0025 81            	ret
8473                     ; 2004 uint16_t TIM1_GetCounter(void)
8473                     ; 2005 {
8474                     .text:	section	.text,new
8475  0000               _TIM1_GetCounter:
8477  0000 89            	pushw	x
8478       00000002      OFST:	set	2
8481                     ; 2006   uint16_t tmpcntr = 0;
8483                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8485  0001 c6525e        	ld	a,21086
8486  0004 5f            	clrw	x
8487  0005 97            	ld	xl,a
8488  0006 4f            	clr	a
8489  0007 02            	rlwa	x,a
8490  0008 1f01          	ldw	(OFST-1,sp),x
8491                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8493  000a c6525f        	ld	a,21087
8494  000d 5f            	clrw	x
8495  000e 97            	ld	xl,a
8496  000f 01            	rrwa	x,a
8497  0010 1a02          	or	a,(OFST+0,sp)
8498  0012 01            	rrwa	x,a
8499  0013 1a01          	or	a,(OFST-1,sp)
8500  0015 01            	rrwa	x,a
8503  0016 5b02          	addw	sp,#2
8504  0018 81            	ret
8536                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8536                     ; 2020 {
8537                     .text:	section	.text,new
8538  0000               _TIM1_GetPrescaler:
8540  0000 89            	pushw	x
8541       00000002      OFST:	set	2
8544                     ; 2021   uint16_t temp = 0;
8546                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8548  0001 c65260        	ld	a,21088
8549  0004 5f            	clrw	x
8550  0005 97            	ld	xl,a
8551  0006 4f            	clr	a
8552  0007 02            	rlwa	x,a
8553  0008 1f01          	ldw	(OFST-1,sp),x
8554                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8556  000a c65261        	ld	a,21089
8557  000d 5f            	clrw	x
8558  000e 97            	ld	xl,a
8559  000f 01            	rrwa	x,a
8560  0010 1a02          	or	a,(OFST+0,sp)
8561  0012 01            	rrwa	x,a
8562  0013 1a01          	or	a,(OFST-1,sp)
8563  0015 01            	rrwa	x,a
8566  0016 5b02          	addw	sp,#2
8567  0018 81            	ret
8738                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8738                     ; 2048 {
8739                     .text:	section	.text,new
8740  0000               _TIM1_GetFlagStatus:
8742  0000 89            	pushw	x
8743  0001 89            	pushw	x
8744       00000002      OFST:	set	2
8747                     ; 2049   FlagStatus bitstatus = RESET;
8749                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8753                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8755  0002 a30001        	cpw	x,#1
8756  0005 2737          	jreq	L6231
8757  0007 a30002        	cpw	x,#2
8758  000a 2732          	jreq	L6231
8759  000c a30004        	cpw	x,#4
8760  000f 272d          	jreq	L6231
8761  0011 a30008        	cpw	x,#8
8762  0014 2728          	jreq	L6231
8763  0016 a30010        	cpw	x,#16
8764  0019 2723          	jreq	L6231
8765  001b a30020        	cpw	x,#32
8766  001e 271e          	jreq	L6231
8767  0020 a30040        	cpw	x,#64
8768  0023 2719          	jreq	L6231
8769  0025 a30080        	cpw	x,#128
8770  0028 2714          	jreq	L6231
8771  002a a30200        	cpw	x,#512
8772  002d 270f          	jreq	L6231
8773  002f a30400        	cpw	x,#1024
8774  0032 270a          	jreq	L6231
8775  0034 a30800        	cpw	x,#2048
8776  0037 2705          	jreq	L6231
8777  0039 a31000        	cpw	x,#4096
8778  003c 2603          	jrne	L4231
8779  003e               L6231:
8780  003e 4f            	clr	a
8781  003f 2010          	jra	L0331
8782  0041               L4231:
8783  0041 ae0805        	ldw	x,#2053
8784  0044 89            	pushw	x
8785  0045 ae0000        	ldw	x,#0
8786  0048 89            	pushw	x
8787  0049 ae0000        	ldw	x,#L37
8788  004c cd0000        	call	_assert_failed
8790  004f 5b04          	addw	sp,#4
8791  0051               L0331:
8792                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8794  0051 c65255        	ld	a,21077
8795  0054 1404          	and	a,(OFST+2,sp)
8796  0056 6b01          	ld	(OFST-1,sp),a
8797                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8799  0058 7b03          	ld	a,(OFST+1,sp)
8800  005a 6b02          	ld	(OFST+0,sp),a
8801                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8803  005c c65256        	ld	a,21078
8804  005f 1402          	and	a,(OFST+0,sp)
8805  0061 1a01          	or	a,(OFST-1,sp)
8806  0063 2706          	jreq	L1533
8807                     ; 2060     bitstatus = SET;
8809  0065 a601          	ld	a,#1
8810  0067 6b02          	ld	(OFST+0,sp),a
8812  0069 2002          	jra	L3533
8813  006b               L1533:
8814                     ; 2064     bitstatus = RESET;
8816  006b 0f02          	clr	(OFST+0,sp)
8817  006d               L3533:
8818                     ; 2066   return (FlagStatus)(bitstatus);
8820  006d 7b02          	ld	a,(OFST+0,sp)
8823  006f 5b04          	addw	sp,#4
8824  0071 81            	ret
8860                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8860                     ; 2088 {
8861                     .text:	section	.text,new
8862  0000               _TIM1_ClearFlag:
8864  0000 89            	pushw	x
8865       00000000      OFST:	set	0
8868                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8870  0001 01            	rrwa	x,a
8871  0002 9f            	ld	a,xl
8872  0003 a4e1          	and	a,#225
8873  0005 97            	ld	xl,a
8874  0006 4f            	clr	a
8875  0007 02            	rlwa	x,a
8876  0008 5d            	tnzw	x
8877  0009 2607          	jrne	L4331
8878  000b 1e01          	ldw	x,(OFST+1,sp)
8879  000d 2703          	jreq	L4331
8880  000f 4f            	clr	a
8881  0010 2010          	jra	L6331
8882  0012               L4331:
8883  0012 ae082a        	ldw	x,#2090
8884  0015 89            	pushw	x
8885  0016 ae0000        	ldw	x,#0
8886  0019 89            	pushw	x
8887  001a ae0000        	ldw	x,#L37
8888  001d cd0000        	call	_assert_failed
8890  0020 5b04          	addw	sp,#4
8891  0022               L6331:
8892                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8894  0022 7b02          	ld	a,(OFST+2,sp)
8895  0024 43            	cpl	a
8896  0025 c75255        	ld	21077,a
8897                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8897                     ; 2095                         (uint8_t)0x1E);
8899  0028 7b01          	ld	a,(OFST+1,sp)
8900  002a 43            	cpl	a
8901  002b a41e          	and	a,#30
8902  002d c75256        	ld	21078,a
8903                     ; 2096 }
8906  0030 85            	popw	x
8907  0031 81            	ret
8968                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8968                     ; 2113 {
8969                     .text:	section	.text,new
8970  0000               _TIM1_GetITStatus:
8972  0000 88            	push	a
8973  0001 89            	pushw	x
8974       00000002      OFST:	set	2
8977                     ; 2114   ITStatus bitstatus = RESET;
8979                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8983                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8985  0002 a101          	cp	a,#1
8986  0004 271c          	jreq	L4431
8987  0006 a102          	cp	a,#2
8988  0008 2718          	jreq	L4431
8989  000a a104          	cp	a,#4
8990  000c 2714          	jreq	L4431
8991  000e a108          	cp	a,#8
8992  0010 2710          	jreq	L4431
8993  0012 a110          	cp	a,#16
8994  0014 270c          	jreq	L4431
8995  0016 a120          	cp	a,#32
8996  0018 2708          	jreq	L4431
8997  001a a140          	cp	a,#64
8998  001c 2704          	jreq	L4431
8999  001e a180          	cp	a,#128
9000  0020 2603          	jrne	L2431
9001  0022               L4431:
9002  0022 4f            	clr	a
9003  0023 2010          	jra	L6431
9004  0025               L2431:
9005  0025 ae0846        	ldw	x,#2118
9006  0028 89            	pushw	x
9007  0029 ae0000        	ldw	x,#0
9008  002c 89            	pushw	x
9009  002d ae0000        	ldw	x,#L37
9010  0030 cd0000        	call	_assert_failed
9012  0033 5b04          	addw	sp,#4
9013  0035               L6431:
9014                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9016  0035 c65255        	ld	a,21077
9017  0038 1403          	and	a,(OFST+1,sp)
9018  003a 6b01          	ld	(OFST-1,sp),a
9019                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9021  003c c65254        	ld	a,21076
9022  003f 1403          	and	a,(OFST+1,sp)
9023  0041 6b02          	ld	(OFST+0,sp),a
9024                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9026  0043 0d01          	tnz	(OFST-1,sp)
9027  0045 270a          	jreq	L1243
9029  0047 0d02          	tnz	(OFST+0,sp)
9030  0049 2706          	jreq	L1243
9031                     ; 2126     bitstatus = SET;
9033  004b a601          	ld	a,#1
9034  004d 6b02          	ld	(OFST+0,sp),a
9036  004f 2002          	jra	L3243
9037  0051               L1243:
9038                     ; 2130     bitstatus = RESET;
9040  0051 0f02          	clr	(OFST+0,sp)
9041  0053               L3243:
9042                     ; 2132   return (ITStatus)(bitstatus);
9044  0053 7b02          	ld	a,(OFST+0,sp)
9047  0055 5b03          	addw	sp,#3
9048  0057 81            	ret
9085                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9085                     ; 2150 {
9086                     .text:	section	.text,new
9087  0000               _TIM1_ClearITPendingBit:
9089  0000 88            	push	a
9090       00000000      OFST:	set	0
9093                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9095  0001 4d            	tnz	a
9096  0002 2703          	jreq	L2531
9097  0004 4f            	clr	a
9098  0005 2010          	jra	L4531
9099  0007               L2531:
9100  0007 ae0868        	ldw	x,#2152
9101  000a 89            	pushw	x
9102  000b ae0000        	ldw	x,#0
9103  000e 89            	pushw	x
9104  000f ae0000        	ldw	x,#L37
9105  0012 cd0000        	call	_assert_failed
9107  0015 5b04          	addw	sp,#4
9108  0017               L4531:
9109                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9111  0017 7b01          	ld	a,(OFST+1,sp)
9112  0019 43            	cpl	a
9113  001a c75255        	ld	21077,a
9114                     ; 2156 }
9117  001d 84            	pop	a
9118  001e 81            	ret
9164                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9164                     ; 2175                        uint8_t TIM1_ICSelection,
9164                     ; 2176                        uint8_t TIM1_ICFilter)
9164                     ; 2177 {
9165                     .text:	section	.text,new
9166  0000               L3_TI1_Config:
9168  0000 89            	pushw	x
9169  0001 88            	push	a
9170       00000001      OFST:	set	1
9173                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9175  0002 7211525c      	bres	21084,#0
9176                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9176                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9178  0006 7b06          	ld	a,(OFST+5,sp)
9179  0008 97            	ld	xl,a
9180  0009 a610          	ld	a,#16
9181  000b 42            	mul	x,a
9182  000c 9f            	ld	a,xl
9183  000d 1a03          	or	a,(OFST+2,sp)
9184  000f 6b01          	ld	(OFST+0,sp),a
9185  0011 c65258        	ld	a,21080
9186  0014 a40c          	and	a,#12
9187  0016 1a01          	or	a,(OFST+0,sp)
9188  0018 c75258        	ld	21080,a
9189                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9191  001b 0d02          	tnz	(OFST+1,sp)
9192  001d 2706          	jreq	L3643
9193                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9195  001f 7212525c      	bset	21084,#1
9197  0023 2004          	jra	L5643
9198  0025               L3643:
9199                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9201  0025 7213525c      	bres	21084,#1
9202  0029               L5643:
9203                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9205  0029 7210525c      	bset	21084,#0
9206                     ; 2197 }
9209  002d 5b03          	addw	sp,#3
9210  002f 81            	ret
9256                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9256                     ; 2216                        uint8_t TIM1_ICSelection,
9256                     ; 2217                        uint8_t TIM1_ICFilter)
9256                     ; 2218 {
9257                     .text:	section	.text,new
9258  0000               L5_TI2_Config:
9260  0000 89            	pushw	x
9261  0001 88            	push	a
9262       00000001      OFST:	set	1
9265                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9267  0002 7219525c      	bres	21084,#4
9268                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9268                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9270  0006 7b06          	ld	a,(OFST+5,sp)
9271  0008 97            	ld	xl,a
9272  0009 a610          	ld	a,#16
9273  000b 42            	mul	x,a
9274  000c 9f            	ld	a,xl
9275  000d 1a03          	or	a,(OFST+2,sp)
9276  000f 6b01          	ld	(OFST+0,sp),a
9277  0011 c65259        	ld	a,21081
9278  0014 a40c          	and	a,#12
9279  0016 1a01          	or	a,(OFST+0,sp)
9280  0018 c75259        	ld	21081,a
9281                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9283  001b 0d02          	tnz	(OFST+1,sp)
9284  001d 2706          	jreq	L7053
9285                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9287  001f 721a525c      	bset	21084,#5
9289  0023 2004          	jra	L1153
9290  0025               L7053:
9291                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9293  0025 721b525c      	bres	21084,#5
9294  0029               L1153:
9295                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9297  0029 7218525c      	bset	21084,#4
9298                     ; 2236 }
9301  002d 5b03          	addw	sp,#3
9302  002f 81            	ret
9348                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9348                     ; 2255                        uint8_t TIM1_ICSelection,
9348                     ; 2256                        uint8_t TIM1_ICFilter)
9348                     ; 2257 {
9349                     .text:	section	.text,new
9350  0000               L7_TI3_Config:
9352  0000 89            	pushw	x
9353  0001 88            	push	a
9354       00000001      OFST:	set	1
9357                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9359  0002 7211525d      	bres	21085,#0
9360                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9360                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9362  0006 7b06          	ld	a,(OFST+5,sp)
9363  0008 97            	ld	xl,a
9364  0009 a610          	ld	a,#16
9365  000b 42            	mul	x,a
9366  000c 9f            	ld	a,xl
9367  000d 1a03          	or	a,(OFST+2,sp)
9368  000f 6b01          	ld	(OFST+0,sp),a
9369  0011 c6525a        	ld	a,21082
9370  0014 a40c          	and	a,#12
9371  0016 1a01          	or	a,(OFST+0,sp)
9372  0018 c7525a        	ld	21082,a
9373                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9375  001b 0d02          	tnz	(OFST+1,sp)
9376  001d 2706          	jreq	L3353
9377                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9379  001f 7212525d      	bset	21085,#1
9381  0023 2004          	jra	L5353
9382  0025               L3353:
9383                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9385  0025 7213525d      	bres	21085,#1
9386  0029               L5353:
9387                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9389  0029 7210525d      	bset	21085,#0
9390                     ; 2276 }
9393  002d 5b03          	addw	sp,#3
9394  002f 81            	ret
9440                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9440                     ; 2295                        uint8_t TIM1_ICSelection,
9440                     ; 2296                        uint8_t TIM1_ICFilter)
9440                     ; 2297 {
9441                     .text:	section	.text,new
9442  0000               L11_TI4_Config:
9444  0000 89            	pushw	x
9445  0001 88            	push	a
9446       00000001      OFST:	set	1
9449                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9451  0002 7219525d      	bres	21085,#4
9452                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9452                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9454  0006 7b06          	ld	a,(OFST+5,sp)
9455  0008 97            	ld	xl,a
9456  0009 a610          	ld	a,#16
9457  000b 42            	mul	x,a
9458  000c 9f            	ld	a,xl
9459  000d 1a03          	or	a,(OFST+2,sp)
9460  000f 6b01          	ld	(OFST+0,sp),a
9461  0011 c6525b        	ld	a,21083
9462  0014 a40c          	and	a,#12
9463  0016 1a01          	or	a,(OFST+0,sp)
9464  0018 c7525b        	ld	21083,a
9465                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9467  001b 0d02          	tnz	(OFST+1,sp)
9468  001d 2706          	jreq	L7553
9469                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9471  001f 721a525d      	bset	21085,#5
9473  0023 2004          	jra	L1653
9474  0025               L7553:
9475                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9477  0025 721b525d      	bres	21085,#5
9478  0029               L1653:
9479                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9481  0029 7218525d      	bset	21085,#4
9482                     ; 2317 }
9485  002d 5b03          	addw	sp,#3
9486  002f 81            	ret
9499                     	xdef	_TIM1_ClearITPendingBit
9500                     	xdef	_TIM1_GetITStatus
9501                     	xdef	_TIM1_ClearFlag
9502                     	xdef	_TIM1_GetFlagStatus
9503                     	xdef	_TIM1_GetPrescaler
9504                     	xdef	_TIM1_GetCounter
9505                     	xdef	_TIM1_GetCapture4
9506                     	xdef	_TIM1_GetCapture3
9507                     	xdef	_TIM1_GetCapture2
9508                     	xdef	_TIM1_GetCapture1
9509                     	xdef	_TIM1_SetIC4Prescaler
9510                     	xdef	_TIM1_SetIC3Prescaler
9511                     	xdef	_TIM1_SetIC2Prescaler
9512                     	xdef	_TIM1_SetIC1Prescaler
9513                     	xdef	_TIM1_SetCompare4
9514                     	xdef	_TIM1_SetCompare3
9515                     	xdef	_TIM1_SetCompare2
9516                     	xdef	_TIM1_SetCompare1
9517                     	xdef	_TIM1_SetAutoreload
9518                     	xdef	_TIM1_SetCounter
9519                     	xdef	_TIM1_SelectOCxM
9520                     	xdef	_TIM1_CCxNCmd
9521                     	xdef	_TIM1_CCxCmd
9522                     	xdef	_TIM1_OC4PolarityConfig
9523                     	xdef	_TIM1_OC3NPolarityConfig
9524                     	xdef	_TIM1_OC3PolarityConfig
9525                     	xdef	_TIM1_OC2NPolarityConfig
9526                     	xdef	_TIM1_OC2PolarityConfig
9527                     	xdef	_TIM1_OC1NPolarityConfig
9528                     	xdef	_TIM1_OC1PolarityConfig
9529                     	xdef	_TIM1_GenerateEvent
9530                     	xdef	_TIM1_OC4FastConfig
9531                     	xdef	_TIM1_OC3FastConfig
9532                     	xdef	_TIM1_OC2FastConfig
9533                     	xdef	_TIM1_OC1FastConfig
9534                     	xdef	_TIM1_OC4PreloadConfig
9535                     	xdef	_TIM1_OC3PreloadConfig
9536                     	xdef	_TIM1_OC2PreloadConfig
9537                     	xdef	_TIM1_OC1PreloadConfig
9538                     	xdef	_TIM1_CCPreloadControl
9539                     	xdef	_TIM1_SelectCOM
9540                     	xdef	_TIM1_ARRPreloadConfig
9541                     	xdef	_TIM1_ForcedOC4Config
9542                     	xdef	_TIM1_ForcedOC3Config
9543                     	xdef	_TIM1_ForcedOC2Config
9544                     	xdef	_TIM1_ForcedOC1Config
9545                     	xdef	_TIM1_CounterModeConfig
9546                     	xdef	_TIM1_PrescalerConfig
9547                     	xdef	_TIM1_EncoderInterfaceConfig
9548                     	xdef	_TIM1_SelectMasterSlaveMode
9549                     	xdef	_TIM1_SelectSlaveMode
9550                     	xdef	_TIM1_SelectOutputTrigger
9551                     	xdef	_TIM1_SelectOnePulseMode
9552                     	xdef	_TIM1_SelectHallSensor
9553                     	xdef	_TIM1_UpdateRequestConfig
9554                     	xdef	_TIM1_UpdateDisableConfig
9555                     	xdef	_TIM1_SelectInputTrigger
9556                     	xdef	_TIM1_TIxExternalClockConfig
9557                     	xdef	_TIM1_ETRConfig
9558                     	xdef	_TIM1_ETRClockMode2Config
9559                     	xdef	_TIM1_ETRClockMode1Config
9560                     	xdef	_TIM1_InternalClockConfig
9561                     	xdef	_TIM1_ITConfig
9562                     	xdef	_TIM1_CtrlPWMOutputs
9563                     	xdef	_TIM1_Cmd
9564                     	xdef	_TIM1_PWMIConfig
9565                     	xdef	_TIM1_ICInit
9566                     	xdef	_TIM1_BDTRConfig
9567                     	xdef	_TIM1_OC4Init
9568                     	xdef	_TIM1_OC3Init
9569                     	xdef	_TIM1_OC2Init
9570                     	xdef	_TIM1_OC1Init
9571                     	xdef	_TIM1_TimeBaseInit
9572                     	xdef	_TIM1_DeInit
9573                     	xref	_assert_failed
9574                     .const:	section	.text
9575  0000               L37:
9576  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
9577  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
9578  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
9579  0036 5f74696d312e  	dc.b	"_tim1.c",0
9599                     	end
