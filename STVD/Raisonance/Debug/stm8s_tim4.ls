   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 49 void TIM4_DeInit(void)
  45                     ; 50 {
  47                     .text:	section	.text,new
  48  0000               _TIM4_DeInit:
  52                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  54  0000 725f5340      	clr	21312
  55                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  57  0004 725f5343      	clr	21315
  58                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  60  0008 725f5346      	clr	21318
  61                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  63  000c 725f5347      	clr	21319
  64                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  66  0010 35ff5348      	mov	21320,#255
  67                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  69  0014 725f5344      	clr	21316
  70                     ; 57 }
  73  0018 81            	ret
 178                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 178                     ; 66 {
 179                     .text:	section	.text,new
 180  0000               _TIM4_TimeBaseInit:
 182  0000 89            	pushw	x
 183       00000000      OFST:	set	0
 186                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 188  0001 9e            	ld	a,xh
 189  0002 4d            	tnz	a
 190  0003 2723          	jreq	L21
 191  0005 9e            	ld	a,xh
 192  0006 a101          	cp	a,#1
 193  0008 271e          	jreq	L21
 194  000a 9e            	ld	a,xh
 195  000b a102          	cp	a,#2
 196  000d 2719          	jreq	L21
 197  000f 9e            	ld	a,xh
 198  0010 a103          	cp	a,#3
 199  0012 2714          	jreq	L21
 200  0014 9e            	ld	a,xh
 201  0015 a104          	cp	a,#4
 202  0017 270f          	jreq	L21
 203  0019 9e            	ld	a,xh
 204  001a a105          	cp	a,#5
 205  001c 270a          	jreq	L21
 206  001e 9e            	ld	a,xh
 207  001f a106          	cp	a,#6
 208  0021 2705          	jreq	L21
 209  0023 9e            	ld	a,xh
 210  0024 a107          	cp	a,#7
 211  0026 2603          	jrne	L01
 212  0028               L21:
 213  0028 4f            	clr	a
 214  0029 2010          	jra	L41
 215  002b               L01:
 216  002b ae0044        	ldw	x,#68
 217  002e 89            	pushw	x
 218  002f ae0000        	ldw	x,#0
 219  0032 89            	pushw	x
 220  0033 ae0000        	ldw	x,#L56
 221  0036 cd0000        	call	_assert_failed
 223  0039 5b04          	addw	sp,#4
 224  003b               L41:
 225                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 227  003b 7b01          	ld	a,(OFST+1,sp)
 228  003d c75347        	ld	21319,a
 229                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 231  0040 7b02          	ld	a,(OFST+2,sp)
 232  0042 c75348        	ld	21320,a
 233                     ; 73 }
 236  0045 85            	popw	x
 237  0046 81            	ret
 293                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 293                     ; 82 {
 294                     .text:	section	.text,new
 295  0000               _TIM4_Cmd:
 297  0000 88            	push	a
 298       00000000      OFST:	set	0
 301                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 303  0001 4d            	tnz	a
 304  0002 2704          	jreq	L22
 305  0004 a101          	cp	a,#1
 306  0006 2603          	jrne	L02
 307  0008               L22:
 308  0008 4f            	clr	a
 309  0009 2010          	jra	L42
 310  000b               L02:
 311  000b ae0054        	ldw	x,#84
 312  000e 89            	pushw	x
 313  000f ae0000        	ldw	x,#0
 314  0012 89            	pushw	x
 315  0013 ae0000        	ldw	x,#L56
 316  0016 cd0000        	call	_assert_failed
 318  0019 5b04          	addw	sp,#4
 319  001b               L42:
 320                     ; 87   if (NewState != DISABLE)
 322  001b 0d01          	tnz	(OFST+1,sp)
 323  001d 2706          	jreq	L511
 324                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 326  001f 72105340      	bset	21312,#0
 328  0023 2004          	jra	L711
 329  0025               L511:
 330                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 332  0025 72115340      	bres	21312,#0
 333  0029               L711:
 334                     ; 95 }
 337  0029 84            	pop	a
 338  002a 81            	ret
 397                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 397                     ; 108 {
 398                     .text:	section	.text,new
 399  0000               _TIM4_ITConfig:
 401  0000 89            	pushw	x
 402       00000000      OFST:	set	0
 405                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 407  0001 9e            	ld	a,xh
 408  0002 a101          	cp	a,#1
 409  0004 2603          	jrne	L03
 410  0006 4f            	clr	a
 411  0007 2010          	jra	L23
 412  0009               L03:
 413  0009 ae006e        	ldw	x,#110
 414  000c 89            	pushw	x
 415  000d ae0000        	ldw	x,#0
 416  0010 89            	pushw	x
 417  0011 ae0000        	ldw	x,#L56
 418  0014 cd0000        	call	_assert_failed
 420  0017 5b04          	addw	sp,#4
 421  0019               L23:
 422                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 424  0019 0d02          	tnz	(OFST+2,sp)
 425  001b 2706          	jreq	L63
 426  001d 7b02          	ld	a,(OFST+2,sp)
 427  001f a101          	cp	a,#1
 428  0021 2603          	jrne	L43
 429  0023               L63:
 430  0023 4f            	clr	a
 431  0024 2010          	jra	L04
 432  0026               L43:
 433  0026 ae006f        	ldw	x,#111
 434  0029 89            	pushw	x
 435  002a ae0000        	ldw	x,#0
 436  002d 89            	pushw	x
 437  002e ae0000        	ldw	x,#L56
 438  0031 cd0000        	call	_assert_failed
 440  0034 5b04          	addw	sp,#4
 441  0036               L04:
 442                     ; 113   if (NewState != DISABLE)
 444  0036 0d02          	tnz	(OFST+2,sp)
 445  0038 270a          	jreq	L151
 446                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 448  003a c65343        	ld	a,21315
 449  003d 1a01          	or	a,(OFST+1,sp)
 450  003f c75343        	ld	21315,a
 452  0042 2009          	jra	L351
 453  0044               L151:
 454                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 456  0044 7b01          	ld	a,(OFST+1,sp)
 457  0046 43            	cpl	a
 458  0047 c45343        	and	a,21315
 459  004a c75343        	ld	21315,a
 460  004d               L351:
 461                     ; 123 }
 464  004d 85            	popw	x
 465  004e 81            	ret
 502                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 502                     ; 132 {
 503                     .text:	section	.text,new
 504  0000               _TIM4_UpdateDisableConfig:
 506  0000 88            	push	a
 507       00000000      OFST:	set	0
 510                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 512  0001 4d            	tnz	a
 513  0002 2704          	jreq	L64
 514  0004 a101          	cp	a,#1
 515  0006 2603          	jrne	L44
 516  0008               L64:
 517  0008 4f            	clr	a
 518  0009 2010          	jra	L05
 519  000b               L44:
 520  000b ae0086        	ldw	x,#134
 521  000e 89            	pushw	x
 522  000f ae0000        	ldw	x,#0
 523  0012 89            	pushw	x
 524  0013 ae0000        	ldw	x,#L56
 525  0016 cd0000        	call	_assert_failed
 527  0019 5b04          	addw	sp,#4
 528  001b               L05:
 529                     ; 137   if (NewState != DISABLE)
 531  001b 0d01          	tnz	(OFST+1,sp)
 532  001d 2706          	jreq	L371
 533                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 535  001f 72125340      	bset	21312,#1
 537  0023 2004          	jra	L571
 538  0025               L371:
 539                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 541  0025 72135340      	bres	21312,#1
 542  0029               L571:
 543                     ; 145 }
 546  0029 84            	pop	a
 547  002a 81            	ret
 606                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 606                     ; 156 {
 607                     .text:	section	.text,new
 608  0000               _TIM4_UpdateRequestConfig:
 610  0000 88            	push	a
 611       00000000      OFST:	set	0
 614                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 616  0001 4d            	tnz	a
 617  0002 2704          	jreq	L65
 618  0004 a101          	cp	a,#1
 619  0006 2603          	jrne	L45
 620  0008               L65:
 621  0008 4f            	clr	a
 622  0009 2010          	jra	L06
 623  000b               L45:
 624  000b ae009e        	ldw	x,#158
 625  000e 89            	pushw	x
 626  000f ae0000        	ldw	x,#0
 627  0012 89            	pushw	x
 628  0013 ae0000        	ldw	x,#L56
 629  0016 cd0000        	call	_assert_failed
 631  0019 5b04          	addw	sp,#4
 632  001b               L06:
 633                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 635  001b 0d01          	tnz	(OFST+1,sp)
 636  001d 2706          	jreq	L522
 637                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 639  001f 72145340      	bset	21312,#2
 641  0023 2004          	jra	L722
 642  0025               L522:
 643                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 645  0025 72155340      	bres	21312,#2
 646  0029               L722:
 647                     ; 169 }
 650  0029 84            	pop	a
 651  002a 81            	ret
 709                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 709                     ; 180 {
 710                     .text:	section	.text,new
 711  0000               _TIM4_SelectOnePulseMode:
 713  0000 88            	push	a
 714       00000000      OFST:	set	0
 717                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 719  0001 a101          	cp	a,#1
 720  0003 2703          	jreq	L66
 721  0005 4d            	tnz	a
 722  0006 2603          	jrne	L46
 723  0008               L66:
 724  0008 4f            	clr	a
 725  0009 2010          	jra	L07
 726  000b               L46:
 727  000b ae00b6        	ldw	x,#182
 728  000e 89            	pushw	x
 729  000f ae0000        	ldw	x,#0
 730  0012 89            	pushw	x
 731  0013 ae0000        	ldw	x,#L56
 732  0016 cd0000        	call	_assert_failed
 734  0019 5b04          	addw	sp,#4
 735  001b               L07:
 736                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 738  001b 0d01          	tnz	(OFST+1,sp)
 739  001d 2706          	jreq	L752
 740                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 742  001f 72165340      	bset	21312,#3
 744  0023 2004          	jra	L162
 745  0025               L752:
 746                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 748  0025 72175340      	bres	21312,#3
 749  0029               L162:
 750                     ; 193 }
 753  0029 84            	pop	a
 754  002a 81            	ret
 823                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 823                     ; 216 {
 824                     .text:	section	.text,new
 825  0000               _TIM4_PrescalerConfig:
 827  0000 89            	pushw	x
 828       00000000      OFST:	set	0
 831                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 833  0001 9f            	ld	a,xl
 834  0002 4d            	tnz	a
 835  0003 2705          	jreq	L67
 836  0005 9f            	ld	a,xl
 837  0006 a101          	cp	a,#1
 838  0008 2603          	jrne	L47
 839  000a               L67:
 840  000a 4f            	clr	a
 841  000b 2010          	jra	L001
 842  000d               L47:
 843  000d ae00da        	ldw	x,#218
 844  0010 89            	pushw	x
 845  0011 ae0000        	ldw	x,#0
 846  0014 89            	pushw	x
 847  0015 ae0000        	ldw	x,#L56
 848  0018 cd0000        	call	_assert_failed
 850  001b 5b04          	addw	sp,#4
 851  001d               L001:
 852                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 854  001d 0d01          	tnz	(OFST+1,sp)
 855  001f 272a          	jreq	L401
 856  0021 7b01          	ld	a,(OFST+1,sp)
 857  0023 a101          	cp	a,#1
 858  0025 2724          	jreq	L401
 859  0027 7b01          	ld	a,(OFST+1,sp)
 860  0029 a102          	cp	a,#2
 861  002b 271e          	jreq	L401
 862  002d 7b01          	ld	a,(OFST+1,sp)
 863  002f a103          	cp	a,#3
 864  0031 2718          	jreq	L401
 865  0033 7b01          	ld	a,(OFST+1,sp)
 866  0035 a104          	cp	a,#4
 867  0037 2712          	jreq	L401
 868  0039 7b01          	ld	a,(OFST+1,sp)
 869  003b a105          	cp	a,#5
 870  003d 270c          	jreq	L401
 871  003f 7b01          	ld	a,(OFST+1,sp)
 872  0041 a106          	cp	a,#6
 873  0043 2706          	jreq	L401
 874  0045 7b01          	ld	a,(OFST+1,sp)
 875  0047 a107          	cp	a,#7
 876  0049 2603          	jrne	L201
 877  004b               L401:
 878  004b 4f            	clr	a
 879  004c 2010          	jra	L601
 880  004e               L201:
 881  004e ae00db        	ldw	x,#219
 882  0051 89            	pushw	x
 883  0052 ae0000        	ldw	x,#0
 884  0055 89            	pushw	x
 885  0056 ae0000        	ldw	x,#L56
 886  0059 cd0000        	call	_assert_failed
 888  005c 5b04          	addw	sp,#4
 889  005e               L601:
 890                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 892  005e 7b01          	ld	a,(OFST+1,sp)
 893  0060 c75347        	ld	21319,a
 894                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 896  0063 7b02          	ld	a,(OFST+2,sp)
 897  0065 c75345        	ld	21317,a
 898                     ; 226 }
 901  0068 85            	popw	x
 902  0069 81            	ret
 939                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 939                     ; 235 {
 940                     .text:	section	.text,new
 941  0000               _TIM4_ARRPreloadConfig:
 943  0000 88            	push	a
 944       00000000      OFST:	set	0
 947                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 949  0001 4d            	tnz	a
 950  0002 2704          	jreq	L411
 951  0004 a101          	cp	a,#1
 952  0006 2603          	jrne	L211
 953  0008               L411:
 954  0008 4f            	clr	a
 955  0009 2010          	jra	L611
 956  000b               L211:
 957  000b ae00ed        	ldw	x,#237
 958  000e 89            	pushw	x
 959  000f ae0000        	ldw	x,#0
 960  0012 89            	pushw	x
 961  0013 ae0000        	ldw	x,#L56
 962  0016 cd0000        	call	_assert_failed
 964  0019 5b04          	addw	sp,#4
 965  001b               L611:
 966                     ; 240   if (NewState != DISABLE)
 968  001b 0d01          	tnz	(OFST+1,sp)
 969  001d 2706          	jreq	L333
 970                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 972  001f 721e5340      	bset	21312,#7
 974  0023 2004          	jra	L533
 975  0025               L333:
 976                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 978  0025 721f5340      	bres	21312,#7
 979  0029               L533:
 980                     ; 248 }
 983  0029 84            	pop	a
 984  002a 81            	ret
1034                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
1034                     ; 258 {
1035                     .text:	section	.text,new
1036  0000               _TIM4_GenerateEvent:
1038  0000 88            	push	a
1039       00000000      OFST:	set	0
1042                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
1044  0001 a101          	cp	a,#1
1045  0003 2603          	jrne	L221
1046  0005 4f            	clr	a
1047  0006 2010          	jra	L421
1048  0008               L221:
1049  0008 ae0104        	ldw	x,#260
1050  000b 89            	pushw	x
1051  000c ae0000        	ldw	x,#0
1052  000f 89            	pushw	x
1053  0010 ae0000        	ldw	x,#L56
1054  0013 cd0000        	call	_assert_failed
1056  0016 5b04          	addw	sp,#4
1057  0018               L421:
1058                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1060  0018 7b01          	ld	a,(OFST+1,sp)
1061  001a c75345        	ld	21317,a
1062                     ; 264 }
1065  001d 84            	pop	a
1066  001e 81            	ret
1098                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1098                     ; 273 {
1099                     .text:	section	.text,new
1100  0000               _TIM4_SetCounter:
1104                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1106  0000 c75346        	ld	21318,a
1107                     ; 276 }
1110  0003 81            	ret
1142                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1142                     ; 285 {
1143                     .text:	section	.text,new
1144  0000               _TIM4_SetAutoreload:
1148                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1150  0000 c75348        	ld	21320,a
1151                     ; 288 }
1154  0003 81            	ret
1177                     ; 295 uint8_t TIM4_GetCounter(void)
1177                     ; 296 {
1178                     .text:	section	.text,new
1179  0000               _TIM4_GetCounter:
1183                     ; 298   return (uint8_t)(TIM4->CNTR);
1185  0000 c65346        	ld	a,21318
1188  0003 81            	ret
1212                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1212                     ; 307 {
1213                     .text:	section	.text,new
1214  0000               _TIM4_GetPrescaler:
1218                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1220  0000 c65347        	ld	a,21319
1223  0003 81            	ret
1303                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1303                     ; 320 {
1304                     .text:	section	.text,new
1305  0000               _TIM4_GetFlagStatus:
1307  0000 88            	push	a
1308  0001 88            	push	a
1309       00000001      OFST:	set	1
1312                     ; 321   FlagStatus bitstatus = RESET;
1314                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1316  0002 a101          	cp	a,#1
1317  0004 2603          	jrne	L041
1318  0006 4f            	clr	a
1319  0007 2010          	jra	L241
1320  0009               L041:
1321  0009 ae0144        	ldw	x,#324
1322  000c 89            	pushw	x
1323  000d ae0000        	ldw	x,#0
1324  0010 89            	pushw	x
1325  0011 ae0000        	ldw	x,#L56
1326  0014 cd0000        	call	_assert_failed
1328  0017 5b04          	addw	sp,#4
1329  0019               L241:
1330                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1332  0019 c65344        	ld	a,21316
1333  001c 1502          	bcp	a,(OFST+1,sp)
1334  001e 2706          	jreq	L374
1335                     ; 328     bitstatus = SET;
1337  0020 a601          	ld	a,#1
1338  0022 6b01          	ld	(OFST+0,sp),a
1340  0024 2002          	jra	L574
1341  0026               L374:
1342                     ; 332     bitstatus = RESET;
1344  0026 0f01          	clr	(OFST+0,sp)
1345  0028               L574:
1346                     ; 334   return ((FlagStatus)bitstatus);
1348  0028 7b01          	ld	a,(OFST+0,sp)
1351  002a 85            	popw	x
1352  002b 81            	ret
1388                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1388                     ; 345 {
1389                     .text:	section	.text,new
1390  0000               _TIM4_ClearFlag:
1392  0000 88            	push	a
1393       00000000      OFST:	set	0
1396                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1398  0001 a101          	cp	a,#1
1399  0003 2603          	jrne	L641
1400  0005 4f            	clr	a
1401  0006 2010          	jra	L051
1402  0008               L641:
1403  0008 ae015b        	ldw	x,#347
1404  000b 89            	pushw	x
1405  000c ae0000        	ldw	x,#0
1406  000f 89            	pushw	x
1407  0010 ae0000        	ldw	x,#L56
1408  0013 cd0000        	call	_assert_failed
1410  0016 5b04          	addw	sp,#4
1411  0018               L051:
1412                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1414  0018 7b01          	ld	a,(OFST+1,sp)
1415  001a 43            	cpl	a
1416  001b c75344        	ld	21316,a
1417                     ; 351 }
1420  001e 84            	pop	a
1421  001f 81            	ret
1482                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1482                     ; 361 {
1483                     .text:	section	.text,new
1484  0000               _TIM4_GetITStatus:
1486  0000 88            	push	a
1487  0001 89            	pushw	x
1488       00000002      OFST:	set	2
1491                     ; 362   ITStatus bitstatus = RESET;
1493                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1497                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1499  0002 a101          	cp	a,#1
1500  0004 2603          	jrne	L451
1501  0006 4f            	clr	a
1502  0007 2010          	jra	L651
1503  0009               L451:
1504  0009 ae016f        	ldw	x,#367
1505  000c 89            	pushw	x
1506  000d ae0000        	ldw	x,#0
1507  0010 89            	pushw	x
1508  0011 ae0000        	ldw	x,#L56
1509  0014 cd0000        	call	_assert_failed
1511  0017 5b04          	addw	sp,#4
1512  0019               L651:
1513                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1515  0019 c65344        	ld	a,21316
1516  001c 1403          	and	a,(OFST+1,sp)
1517  001e 6b01          	ld	(OFST-1,sp),a
1518                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1520  0020 c65343        	ld	a,21315
1521  0023 1403          	and	a,(OFST+1,sp)
1522  0025 6b02          	ld	(OFST+0,sp),a
1523                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1525  0027 0d01          	tnz	(OFST-1,sp)
1526  0029 270a          	jreq	L345
1528  002b 0d02          	tnz	(OFST+0,sp)
1529  002d 2706          	jreq	L345
1530                     ; 375     bitstatus = (ITStatus)SET;
1532  002f a601          	ld	a,#1
1533  0031 6b02          	ld	(OFST+0,sp),a
1535  0033 2002          	jra	L545
1536  0035               L345:
1537                     ; 379     bitstatus = (ITStatus)RESET;
1539  0035 0f02          	clr	(OFST+0,sp)
1540  0037               L545:
1541                     ; 381   return ((ITStatus)bitstatus);
1543  0037 7b02          	ld	a,(OFST+0,sp)
1546  0039 5b03          	addw	sp,#3
1547  003b 81            	ret
1584                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1584                     ; 392 {
1585                     .text:	section	.text,new
1586  0000               _TIM4_ClearITPendingBit:
1588  0000 88            	push	a
1589       00000000      OFST:	set	0
1592                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1594  0001 a101          	cp	a,#1
1595  0003 2603          	jrne	L261
1596  0005 4f            	clr	a
1597  0006 2010          	jra	L461
1598  0008               L261:
1599  0008 ae018a        	ldw	x,#394
1600  000b 89            	pushw	x
1601  000c ae0000        	ldw	x,#0
1602  000f 89            	pushw	x
1603  0010 ae0000        	ldw	x,#L56
1604  0013 cd0000        	call	_assert_failed
1606  0016 5b04          	addw	sp,#4
1607  0018               L461:
1608                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1610  0018 7b01          	ld	a,(OFST+1,sp)
1611  001a 43            	cpl	a
1612  001b c75344        	ld	21316,a
1613                     ; 398 }
1616  001e 84            	pop	a
1617  001f 81            	ret
1630                     	xdef	_TIM4_ClearITPendingBit
1631                     	xdef	_TIM4_GetITStatus
1632                     	xdef	_TIM4_ClearFlag
1633                     	xdef	_TIM4_GetFlagStatus
1634                     	xdef	_TIM4_GetPrescaler
1635                     	xdef	_TIM4_GetCounter
1636                     	xdef	_TIM4_SetAutoreload
1637                     	xdef	_TIM4_SetCounter
1638                     	xdef	_TIM4_GenerateEvent
1639                     	xdef	_TIM4_ARRPreloadConfig
1640                     	xdef	_TIM4_PrescalerConfig
1641                     	xdef	_TIM4_SelectOnePulseMode
1642                     	xdef	_TIM4_UpdateRequestConfig
1643                     	xdef	_TIM4_UpdateDisableConfig
1644                     	xdef	_TIM4_ITConfig
1645                     	xdef	_TIM4_Cmd
1646                     	xdef	_TIM4_TimeBaseInit
1647                     	xdef	_TIM4_DeInit
1648                     	xref	_assert_failed
1649                     .const:	section	.text
1650  0000               L56:
1651  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1652  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1653  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1654  0036 5f74696d342e  	dc.b	"_tim4.c",0
1674                     	end
