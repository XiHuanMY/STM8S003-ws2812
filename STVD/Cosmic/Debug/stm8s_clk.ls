   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  21                     .const:	section	.text
  22  0000               _HSIDivFactor:
  23  0000 01            	dc.b	1
  24  0001 02            	dc.b	2
  25  0002 04            	dc.b	4
  26  0003 08            	dc.b	8
  27  0004               _CLKPrescTable:
  28  0004 01            	dc.b	1
  29  0005 02            	dc.b	2
  30  0006 04            	dc.b	4
  31  0007 08            	dc.b	8
  32  0008 0a            	dc.b	10
  33  0009 10            	dc.b	16
  34  000a 14            	dc.b	20
  35  000b 28            	dc.b	40
  64                     ; 72 void CLK_DeInit(void)
  64                     ; 73 {
  66                     .text:	section	.text,new
  67  0000               _CLK_DeInit:
  71                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  73  0000 350150c0      	mov	20672,#1
  74                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  76  0004 725f50c1      	clr	20673
  77                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  79  0008 35e150c4      	mov	20676,#225
  80                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  82  000c 725f50c5      	clr	20677
  83                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  85  0010 351850c6      	mov	20678,#24
  86                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  88  0014 35ff50c7      	mov	20679,#255
  89                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  91  0018 35ff50ca      	mov	20682,#255
  92                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  94  001c 725f50c8      	clr	20680
  95                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  97  0020 725f50c9      	clr	20681
  99  0024               L52:
 100                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 102  0024 720050c9fb    	btjt	20681,#0,L52
 103                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 105  0029 725f50c9      	clr	20681
 106                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 108  002d 725f50cc      	clr	20684
 109                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 111  0031 725f50cd      	clr	20685
 112                     ; 88 }
 115  0035 81            	ret	
 172                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 172                     ; 100 {
 173                     .text:	section	.text,new
 174  0000               _CLK_FastHaltWakeUpCmd:
 176  0000 88            	push	a
 177       00000000      OFST:	set	0
 180                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 182  0001 4d            	tnz	a
 183  0002 2711          	jreq	L41
 184  0004 4a            	dec	a
 185  0005 270e          	jreq	L41
 186  0007 ae0066        	ldw	x,#102
 187  000a 89            	pushw	x
 188  000b 5f            	clrw	x
 189  000c 89            	pushw	x
 190  000d ae000c        	ldw	x,#L75
 191  0010 cd0000        	call	_assert_failed
 193  0013 5b04          	addw	sp,#4
 194  0015               L41:
 195                     ; 104   if (NewState != DISABLE)
 197  0015 7b01          	ld	a,(OFST+1,sp)
 198  0017 2706          	jreq	L16
 199                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 201  0019 721450c0      	bset	20672,#2
 203  001d 2004          	jra	L36
 204  001f               L16:
 205                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 207  001f 721550c0      	bres	20672,#2
 208  0023               L36:
 209                     ; 114 }
 212  0023 84            	pop	a
 213  0024 81            	ret	
 249                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 249                     ; 122 {
 250                     .text:	section	.text,new
 251  0000               _CLK_HSECmd:
 253  0000 88            	push	a
 254       00000000      OFST:	set	0
 257                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 259  0001 4d            	tnz	a
 260  0002 2711          	jreq	L62
 261  0004 4a            	dec	a
 262  0005 270e          	jreq	L62
 263  0007 ae007c        	ldw	x,#124
 264  000a 89            	pushw	x
 265  000b 5f            	clrw	x
 266  000c 89            	pushw	x
 267  000d ae000c        	ldw	x,#L75
 268  0010 cd0000        	call	_assert_failed
 270  0013 5b04          	addw	sp,#4
 271  0015               L62:
 272                     ; 126   if (NewState != DISABLE)
 274  0015 7b01          	ld	a,(OFST+1,sp)
 275  0017 2706          	jreq	L301
 276                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 278  0019 721050c1      	bset	20673,#0
 280  001d 2004          	jra	L501
 281  001f               L301:
 282                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 284  001f 721150c1      	bres	20673,#0
 285  0023               L501:
 286                     ; 136 }
 289  0023 84            	pop	a
 290  0024 81            	ret	
 326                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 326                     ; 144 {
 327                     .text:	section	.text,new
 328  0000               _CLK_HSICmd:
 330  0000 88            	push	a
 331       00000000      OFST:	set	0
 334                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 336  0001 4d            	tnz	a
 337  0002 2711          	jreq	L04
 338  0004 4a            	dec	a
 339  0005 270e          	jreq	L04
 340  0007 ae0092        	ldw	x,#146
 341  000a 89            	pushw	x
 342  000b 5f            	clrw	x
 343  000c 89            	pushw	x
 344  000d ae000c        	ldw	x,#L75
 345  0010 cd0000        	call	_assert_failed
 347  0013 5b04          	addw	sp,#4
 348  0015               L04:
 349                     ; 148   if (NewState != DISABLE)
 351  0015 7b01          	ld	a,(OFST+1,sp)
 352  0017 2706          	jreq	L521
 353                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 355  0019 721050c0      	bset	20672,#0
 357  001d 2004          	jra	L721
 358  001f               L521:
 359                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 361  001f 721150c0      	bres	20672,#0
 362  0023               L721:
 363                     ; 158 }
 366  0023 84            	pop	a
 367  0024 81            	ret	
 403                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 403                     ; 167 {
 404                     .text:	section	.text,new
 405  0000               _CLK_LSICmd:
 407  0000 88            	push	a
 408       00000000      OFST:	set	0
 411                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 413  0001 4d            	tnz	a
 414  0002 2711          	jreq	L25
 415  0004 4a            	dec	a
 416  0005 270e          	jreq	L25
 417  0007 ae00a9        	ldw	x,#169
 418  000a 89            	pushw	x
 419  000b 5f            	clrw	x
 420  000c 89            	pushw	x
 421  000d ae000c        	ldw	x,#L75
 422  0010 cd0000        	call	_assert_failed
 424  0013 5b04          	addw	sp,#4
 425  0015               L25:
 426                     ; 171   if (NewState != DISABLE)
 428  0015 7b01          	ld	a,(OFST+1,sp)
 429  0017 2706          	jreq	L741
 430                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 432  0019 721650c0      	bset	20672,#3
 434  001d 2004          	jra	L151
 435  001f               L741:
 436                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 438  001f 721750c0      	bres	20672,#3
 439  0023               L151:
 440                     ; 181 }
 443  0023 84            	pop	a
 444  0024 81            	ret	
 480                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 480                     ; 190 {
 481                     .text:	section	.text,new
 482  0000               _CLK_CCOCmd:
 484  0000 88            	push	a
 485       00000000      OFST:	set	0
 488                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 490  0001 4d            	tnz	a
 491  0002 2711          	jreq	L46
 492  0004 4a            	dec	a
 493  0005 270e          	jreq	L46
 494  0007 ae00c0        	ldw	x,#192
 495  000a 89            	pushw	x
 496  000b 5f            	clrw	x
 497  000c 89            	pushw	x
 498  000d ae000c        	ldw	x,#L75
 499  0010 cd0000        	call	_assert_failed
 501  0013 5b04          	addw	sp,#4
 502  0015               L46:
 503                     ; 194   if (NewState != DISABLE)
 505  0015 7b01          	ld	a,(OFST+1,sp)
 506  0017 2706          	jreq	L171
 507                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 509  0019 721050c9      	bset	20681,#0
 511  001d 2004          	jra	L371
 512  001f               L171:
 513                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 515  001f 721150c9      	bres	20681,#0
 516  0023               L371:
 517                     ; 204 }
 520  0023 84            	pop	a
 521  0024 81            	ret	
 557                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 557                     ; 214 {
 558                     .text:	section	.text,new
 559  0000               _CLK_ClockSwitchCmd:
 561  0000 88            	push	a
 562       00000000      OFST:	set	0
 565                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 567  0001 4d            	tnz	a
 568  0002 2711          	jreq	L67
 569  0004 4a            	dec	a
 570  0005 270e          	jreq	L67
 571  0007 ae00d8        	ldw	x,#216
 572  000a 89            	pushw	x
 573  000b 5f            	clrw	x
 574  000c 89            	pushw	x
 575  000d ae000c        	ldw	x,#L75
 576  0010 cd0000        	call	_assert_failed
 578  0013 5b04          	addw	sp,#4
 579  0015               L67:
 580                     ; 218   if (NewState != DISABLE )
 582  0015 7b01          	ld	a,(OFST+1,sp)
 583  0017 2706          	jreq	L312
 584                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 586  0019 721250c5      	bset	20677,#1
 588  001d 2004          	jra	L512
 589  001f               L312:
 590                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 592  001f 721350c5      	bres	20677,#1
 593  0023               L512:
 594                     ; 228 }
 597  0023 84            	pop	a
 598  0024 81            	ret	
 635                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 635                     ; 239 {
 636                     .text:	section	.text,new
 637  0000               _CLK_SlowActiveHaltWakeUpCmd:
 639  0000 88            	push	a
 640       00000000      OFST:	set	0
 643                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 645  0001 4d            	tnz	a
 646  0002 2711          	jreq	L011
 647  0004 4a            	dec	a
 648  0005 270e          	jreq	L011
 649  0007 ae00f1        	ldw	x,#241
 650  000a 89            	pushw	x
 651  000b 5f            	clrw	x
 652  000c 89            	pushw	x
 653  000d ae000c        	ldw	x,#L75
 654  0010 cd0000        	call	_assert_failed
 656  0013 5b04          	addw	sp,#4
 657  0015               L011:
 658                     ; 243   if (NewState != DISABLE)
 660  0015 7b01          	ld	a,(OFST+1,sp)
 661  0017 2706          	jreq	L532
 662                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 664  0019 721a50c0      	bset	20672,#5
 666  001d 2004          	jra	L732
 667  001f               L532:
 668                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 670  001f 721b50c0      	bres	20672,#5
 671  0023               L732:
 672                     ; 253 }
 675  0023 84            	pop	a
 676  0024 81            	ret	
 836                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 836                     ; 264 {
 837                     .text:	section	.text,new
 838  0000               _CLK_PeripheralClockConfig:
 840  0000 89            	pushw	x
 841       00000000      OFST:	set	0
 844                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 846  0001 9f            	ld	a,xl
 847  0002 4d            	tnz	a
 848  0003 270a          	jreq	L221
 849  0005 9f            	ld	a,xl
 850  0006 4a            	dec	a
 851  0007 2706          	jreq	L221
 852  0009 ae010a        	ldw	x,#266
 853  000c cd0092        	call	LC004
 854  000f               L221:
 855                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 857  000f 7b01          	ld	a,(OFST+1,sp)
 858  0011 272f          	jreq	L231
 859  0013 a101          	cp	a,#1
 860  0015 272b          	jreq	L231
 861  0017 a103          	cp	a,#3
 862  0019 2727          	jreq	L231
 863  001b a104          	cp	a,#4
 864  001d 2723          	jreq	L231
 865  001f a105          	cp	a,#5
 866  0021 271f          	jreq	L231
 867  0023 a104          	cp	a,#4
 868  0025 271b          	jreq	L231
 869  0027 a106          	cp	a,#6
 870  0029 2717          	jreq	L231
 871  002b a107          	cp	a,#7
 872  002d 2713          	jreq	L231
 873  002f a117          	cp	a,#23
 874  0031 270f          	jreq	L231
 875  0033 a113          	cp	a,#19
 876  0035 270b          	jreq	L231
 877  0037 a112          	cp	a,#18
 878  0039 2707          	jreq	L231
 879  003b ae010b        	ldw	x,#267
 880  003e ad52          	call	LC004
 881  0040 7b01          	ld	a,(OFST+1,sp)
 882  0042               L231:
 883                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 885  0042 a510          	bcp	a,#16
 886  0044 2622          	jrne	L323
 887                     ; 271     if (NewState != DISABLE)
 889  0046 0d02          	tnz	(OFST+2,sp)
 890  0048 270d          	jreq	L523
 891                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 893  004a ad3e          	call	LC003
 894  004c 2704          	jreq	L631
 895  004e               L041:
 896  004e 48            	sll	a
 897  004f 5a            	decw	x
 898  0050 26fc          	jrne	L041
 899  0052               L631:
 900  0052 ca50c7        	or	a,20679
 902  0055 200c          	jp	LC002
 903  0057               L523:
 904                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 906  0057 ad31          	call	LC003
 907  0059 2704          	jreq	L241
 908  005b               L441:
 909  005b 48            	sll	a
 910  005c 5a            	decw	x
 911  005d 26fc          	jrne	L441
 912  005f               L241:
 913  005f 43            	cpl	a
 914  0060 c450c7        	and	a,20679
 915  0063               LC002:
 916  0063 c750c7        	ld	20679,a
 917  0066 2020          	jra	L133
 918  0068               L323:
 919                     ; 284     if (NewState != DISABLE)
 921  0068 0d02          	tnz	(OFST+2,sp)
 922  006a 270d          	jreq	L333
 923                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 925  006c ad1c          	call	LC003
 926  006e 2704          	jreq	L641
 927  0070               L051:
 928  0070 48            	sll	a
 929  0071 5a            	decw	x
 930  0072 26fc          	jrne	L051
 931  0074               L641:
 932  0074 ca50ca        	or	a,20682
 934  0077 200c          	jp	LC001
 935  0079               L333:
 936                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 938  0079 ad0f          	call	LC003
 939  007b 2704          	jreq	L251
 940  007d               L451:
 941  007d 48            	sll	a
 942  007e 5a            	decw	x
 943  007f 26fc          	jrne	L451
 944  0081               L251:
 945  0081 43            	cpl	a
 946  0082 c450ca        	and	a,20682
 947  0085               LC001:
 948  0085 c750ca        	ld	20682,a
 949  0088               L133:
 950                     ; 295 }
 953  0088 85            	popw	x
 954  0089 81            	ret	
 955  008a               LC003:
 956  008a a40f          	and	a,#15
 957  008c 5f            	clrw	x
 958  008d 97            	ld	xl,a
 959  008e a601          	ld	a,#1
 960  0090 5d            	tnzw	x
 961  0091 81            	ret	
 962  0092               LC004:
 963  0092 89            	pushw	x
 964  0093 5f            	clrw	x
 965  0094 89            	pushw	x
 966  0095 ae000c        	ldw	x,#L75
 967  0098 cd0000        	call	_assert_failed
 969  009b 5b04          	addw	sp,#4
 970  009d 81            	ret	
1159                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1159                     ; 310 {
1160                     .text:	section	.text,new
1161  0000               _CLK_ClockSwitchConfig:
1163  0000 89            	pushw	x
1164  0001 5204          	subw	sp,#4
1165       00000004      OFST:	set	4
1168                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1170  0003 aeffff        	ldw	x,#65535
1171  0006 1f03          	ldw	(OFST-1,sp),x
1172                     ; 313   ErrorStatus Swif = ERROR;
1174                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1176  0008 7b06          	ld	a,(OFST+2,sp)
1177  000a a1e1          	cp	a,#225
1178  000c 270e          	jreq	L461
1179  000e a1d2          	cp	a,#210
1180  0010 270a          	jreq	L461
1181  0012 a1b4          	cp	a,#180
1182  0014 2706          	jreq	L461
1183  0016 ae013c        	ldw	x,#316
1184  0019 cd00dc        	call	LC007
1185  001c               L461:
1186                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1188  001c 7b05          	ld	a,(OFST+1,sp)
1189  001e 2709          	jreq	L471
1190  0020 4a            	dec	a
1191  0021 2706          	jreq	L471
1192  0023 ae013d        	ldw	x,#317
1193  0026 cd00dc        	call	LC007
1194  0029               L471:
1195                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1197  0029 7b09          	ld	a,(OFST+5,sp)
1198  002b 2709          	jreq	L402
1199  002d 4a            	dec	a
1200  002e 2706          	jreq	L402
1201  0030 ae013e        	ldw	x,#318
1202  0033 cd00dc        	call	LC007
1203  0036               L402:
1204                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1206  0036 7b0a          	ld	a,(OFST+6,sp)
1207  0038 2709          	jreq	L412
1208  003a 4a            	dec	a
1209  003b 2706          	jreq	L412
1210  003d ae013f        	ldw	x,#319
1211  0040 cd00dc        	call	LC007
1212  0043               L412:
1213                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1215  0043 c650c3        	ld	a,20675
1216  0046 6b01          	ld	(OFST-3,sp),a
1217                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1219  0048 7b05          	ld	a,(OFST+1,sp)
1220  004a 4a            	dec	a
1221  004b 263d          	jrne	L744
1222                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1224  004d 721250c5      	bset	20677,#1
1225                     ; 331     if (ITState != DISABLE)
1227  0051 7b09          	ld	a,(OFST+5,sp)
1228  0053 2706          	jreq	L154
1229                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1231  0055 721450c5      	bset	20677,#2
1233  0059 2004          	jra	L354
1234  005b               L154:
1235                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1237  005b 721550c5      	bres	20677,#2
1238  005f               L354:
1239                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1241  005f 7b06          	ld	a,(OFST+2,sp)
1242  0061 c750c4        	ld	20676,a
1244  0064 2003          	jra	L164
1245  0066               L554:
1246                     ; 346       DownCounter--;
1248  0066 5a            	decw	x
1249  0067 1f03          	ldw	(OFST-1,sp),x
1250  0069               L164:
1251                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1253  0069 720150c504    	btjf	20677,#0,L564
1255  006e 1e03          	ldw	x,(OFST-1,sp)
1256  0070 26f4          	jrne	L554
1257  0072               L564:
1258                     ; 349     if(DownCounter != 0)
1260  0072 1e03          	ldw	x,(OFST-1,sp)
1261                     ; 351       Swif = SUCCESS;
1263  0074 263d          	jrne	LC006
1264  0076               L764:
1265                     ; 355       Swif = ERROR;
1268  0076 0f02          	clr	(OFST-2,sp)
1269  0078               L374:
1270                     ; 390   if(Swif != ERROR)
1272  0078 275d          	jreq	L715
1273                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1275  007a 7b0a          	ld	a,(OFST+6,sp)
1276  007c 263b          	jrne	L125
1278  007e 7b01          	ld	a,(OFST-3,sp)
1279  0080 a1e1          	cp	a,#225
1280  0082 2635          	jrne	L125
1281                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1283  0084 721150c0      	bres	20672,#0
1285  0088 204d          	jra	L715
1286  008a               L744:
1287                     ; 361     if (ITState != DISABLE)
1289  008a 7b09          	ld	a,(OFST+5,sp)
1290  008c 2706          	jreq	L574
1291                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1293  008e 721450c5      	bset	20677,#2
1295  0092 2004          	jra	L774
1296  0094               L574:
1297                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1299  0094 721550c5      	bres	20677,#2
1300  0098               L774:
1301                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1303  0098 7b06          	ld	a,(OFST+2,sp)
1304  009a c750c4        	ld	20676,a
1306  009d 2003          	jra	L505
1307  009f               L105:
1308                     ; 376       DownCounter--;
1310  009f 5a            	decw	x
1311  00a0 1f03          	ldw	(OFST-1,sp),x
1312  00a2               L505:
1313                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1315  00a2 720750c504    	btjf	20677,#3,L115
1317  00a7 1e03          	ldw	x,(OFST-1,sp)
1318  00a9 26f4          	jrne	L105
1319  00ab               L115:
1320                     ; 379     if(DownCounter != 0)
1322  00ab 1e03          	ldw	x,(OFST-1,sp)
1323  00ad 27c7          	jreq	L764
1324                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1326  00af 721250c5      	bset	20677,#1
1327                     ; 383       Swif = SUCCESS;
1329  00b3               LC006:
1331  00b3 a601          	ld	a,#1
1332  00b5 6b02          	ld	(OFST-2,sp),a
1334  00b7 20bf          	jra	L374
1335                     ; 387       Swif = ERROR;
1336  00b9               L125:
1337                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1339  00b9 7b0a          	ld	a,(OFST+6,sp)
1340  00bb 260c          	jrne	L525
1342  00bd 7b01          	ld	a,(OFST-3,sp)
1343  00bf a1d2          	cp	a,#210
1344  00c1 2606          	jrne	L525
1345                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1347  00c3 721750c0      	bres	20672,#3
1349  00c7 200e          	jra	L715
1350  00c9               L525:
1351                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1353  00c9 7b0a          	ld	a,(OFST+6,sp)
1354  00cb 260a          	jrne	L715
1356  00cd 7b01          	ld	a,(OFST-3,sp)
1357  00cf a1b4          	cp	a,#180
1358  00d1 2604          	jrne	L715
1359                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1361  00d3 721150c1      	bres	20673,#0
1362  00d7               L715:
1363                     ; 406   return(Swif);
1365  00d7 7b02          	ld	a,(OFST-2,sp)
1368  00d9 5b06          	addw	sp,#6
1369  00db 81            	ret	
1370  00dc               LC007:
1371  00dc 89            	pushw	x
1372  00dd 5f            	clrw	x
1373  00de 89            	pushw	x
1374  00df ae000c        	ldw	x,#L75
1375  00e2 cd0000        	call	_assert_failed
1377  00e5 5b04          	addw	sp,#4
1378  00e7 81            	ret	
1517                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1517                     ; 416 {
1518                     .text:	section	.text,new
1519  0000               _CLK_HSIPrescalerConfig:
1521  0000 88            	push	a
1522       00000000      OFST:	set	0
1525                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1527  0001 4d            	tnz	a
1528  0002 271a          	jreq	L622
1529  0004 a108          	cp	a,#8
1530  0006 2716          	jreq	L622
1531  0008 a110          	cp	a,#16
1532  000a 2712          	jreq	L622
1533  000c a118          	cp	a,#24
1534  000e 270e          	jreq	L622
1535  0010 ae01a2        	ldw	x,#418
1536  0013 89            	pushw	x
1537  0014 5f            	clrw	x
1538  0015 89            	pushw	x
1539  0016 ae000c        	ldw	x,#L75
1540  0019 cd0000        	call	_assert_failed
1542  001c 5b04          	addw	sp,#4
1543  001e               L622:
1544                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1546  001e c650c6        	ld	a,20678
1547  0021 a4e7          	and	a,#231
1548  0023 c750c6        	ld	20678,a
1549                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1551  0026 c650c6        	ld	a,20678
1552  0029 1a01          	or	a,(OFST+1,sp)
1553  002b c750c6        	ld	20678,a
1554                     ; 425 }
1557  002e 84            	pop	a
1558  002f 81            	ret	
1694                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1694                     ; 437 {
1695                     .text:	section	.text,new
1696  0000               _CLK_CCOConfig:
1698  0000 88            	push	a
1699       00000000      OFST:	set	0
1702                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1704  0001 4d            	tnz	a
1705  0002 273e          	jreq	L042
1706  0004 a104          	cp	a,#4
1707  0006 273a          	jreq	L042
1708  0008 a102          	cp	a,#2
1709  000a 2736          	jreq	L042
1710  000c a108          	cp	a,#8
1711  000e 2732          	jreq	L042
1712  0010 a10a          	cp	a,#10
1713  0012 272e          	jreq	L042
1714  0014 a10c          	cp	a,#12
1715  0016 272a          	jreq	L042
1716  0018 a10e          	cp	a,#14
1717  001a 2726          	jreq	L042
1718  001c a110          	cp	a,#16
1719  001e 2722          	jreq	L042
1720  0020 a112          	cp	a,#18
1721  0022 271e          	jreq	L042
1722  0024 a114          	cp	a,#20
1723  0026 271a          	jreq	L042
1724  0028 a116          	cp	a,#22
1725  002a 2716          	jreq	L042
1726  002c a118          	cp	a,#24
1727  002e 2712          	jreq	L042
1728  0030 a11a          	cp	a,#26
1729  0032 270e          	jreq	L042
1730  0034 ae01b7        	ldw	x,#439
1731  0037 89            	pushw	x
1732  0038 5f            	clrw	x
1733  0039 89            	pushw	x
1734  003a ae000c        	ldw	x,#L75
1735  003d cd0000        	call	_assert_failed
1737  0040 5b04          	addw	sp,#4
1738  0042               L042:
1739                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1741  0042 c650c9        	ld	a,20681
1742  0045 a4e1          	and	a,#225
1743  0047 c750c9        	ld	20681,a
1744                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1746  004a c650c9        	ld	a,20681
1747  004d 1a01          	or	a,(OFST+1,sp)
1748  004f c750c9        	ld	20681,a
1749                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1751                     ; 449 }
1754  0052 84            	pop	a
1755  0053 721050c9      	bset	20681,#0
1756  0057 81            	ret	
1822                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1822                     ; 460 {
1823                     .text:	section	.text,new
1824  0000               _CLK_ITConfig:
1826  0000 89            	pushw	x
1827       00000000      OFST:	set	0
1830                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1832  0001 9f            	ld	a,xl
1833  0002 4d            	tnz	a
1834  0003 2709          	jreq	L252
1835  0005 9f            	ld	a,xl
1836  0006 4a            	dec	a
1837  0007 2705          	jreq	L252
1838  0009 ae01ce        	ldw	x,#462
1839  000c ad3f          	call	LC008
1840  000e               L252:
1841                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1843  000e 7b01          	ld	a,(OFST+1,sp)
1844  0010 a10c          	cp	a,#12
1845  0012 2709          	jreq	L262
1846  0014 a11c          	cp	a,#28
1847  0016 2705          	jreq	L262
1848  0018 ae01cf        	ldw	x,#463
1849  001b ad30          	call	LC008
1850  001d               L262:
1851                     ; 465   if (NewState != DISABLE)
1853  001d 7b02          	ld	a,(OFST+2,sp)
1854  001f 2716          	jreq	L727
1855                     ; 467     switch (CLK_IT)
1857  0021 7b01          	ld	a,(OFST+1,sp)
1859                     ; 475     default:
1859                     ; 476       break;
1860  0023 a00c          	sub	a,#12
1861  0025 270a          	jreq	L366
1862  0027 a010          	sub	a,#16
1863  0029 2620          	jrne	L537
1864                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1864                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1866  002b 721450c5      	bset	20677,#2
1867                     ; 471       break;
1869  002f 201a          	jra	L537
1870  0031               L366:
1871                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1871                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1873  0031 721450c8      	bset	20680,#2
1874                     ; 474       break;
1876  0035 2014          	jra	L537
1877                     ; 475     default:
1877                     ; 476       break;
1880  0037               L727:
1881                     ; 481     switch (CLK_IT)
1883  0037 7b01          	ld	a,(OFST+1,sp)
1885                     ; 489     default:
1885                     ; 490       break;
1886  0039 a00c          	sub	a,#12
1887  003b 270a          	jreq	L176
1888  003d a010          	sub	a,#16
1889  003f 260a          	jrne	L537
1890                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1890                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1892  0041 721550c5      	bres	20677,#2
1893                     ; 485       break;
1895  0045 2004          	jra	L537
1896  0047               L176:
1897                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1897                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1899  0047 721550c8      	bres	20680,#2
1900                     ; 488       break;
1901  004b               L537:
1902                     ; 493 }
1905  004b 85            	popw	x
1906  004c 81            	ret	
1907                     ; 489     default:
1907                     ; 490       break;
1909  004d               LC008:
1910  004d 89            	pushw	x
1911  004e 5f            	clrw	x
1912  004f 89            	pushw	x
1913  0050 ae000c        	ldw	x,#L75
1914  0053 cd0000        	call	_assert_failed
1916  0056 5b04          	addw	sp,#4
1917  0058 81            	ret	
1953                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1953                     ; 501 {
1954                     .text:	section	.text,new
1955  0000               _CLK_SYSCLKConfig:
1957  0000 88            	push	a
1958       00000000      OFST:	set	0
1961                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1963  0001 4d            	tnz	a
1964  0002 273a          	jreq	L472
1965  0004 a108          	cp	a,#8
1966  0006 2736          	jreq	L472
1967  0008 a110          	cp	a,#16
1968  000a 2732          	jreq	L472
1969  000c a118          	cp	a,#24
1970  000e 272e          	jreq	L472
1971  0010 a180          	cp	a,#128
1972  0012 272a          	jreq	L472
1973  0014 a181          	cp	a,#129
1974  0016 2726          	jreq	L472
1975  0018 a182          	cp	a,#130
1976  001a 2722          	jreq	L472
1977  001c a183          	cp	a,#131
1978  001e 271e          	jreq	L472
1979  0020 a184          	cp	a,#132
1980  0022 271a          	jreq	L472
1981  0024 a185          	cp	a,#133
1982  0026 2716          	jreq	L472
1983  0028 a186          	cp	a,#134
1984  002a 2712          	jreq	L472
1985  002c a187          	cp	a,#135
1986  002e 270e          	jreq	L472
1987  0030 ae01f7        	ldw	x,#503
1988  0033 89            	pushw	x
1989  0034 5f            	clrw	x
1990  0035 89            	pushw	x
1991  0036 ae000c        	ldw	x,#L75
1992  0039 cd0000        	call	_assert_failed
1994  003c 5b04          	addw	sp,#4
1995  003e               L472:
1996                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1998  003e 7b01          	ld	a,(OFST+1,sp)
1999  0040 2b0e          	jrmi	L167
2000                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2002  0042 c650c6        	ld	a,20678
2003  0045 a4e7          	and	a,#231
2004  0047 c750c6        	ld	20678,a
2005                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2007  004a 7b01          	ld	a,(OFST+1,sp)
2008  004c a418          	and	a,#24
2010  004e 200c          	jra	L367
2011  0050               L167:
2012                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2014  0050 c650c6        	ld	a,20678
2015  0053 a4f8          	and	a,#248
2016  0055 c750c6        	ld	20678,a
2017                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2019  0058 7b01          	ld	a,(OFST+1,sp)
2020  005a a407          	and	a,#7
2021  005c               L367:
2022  005c ca50c6        	or	a,20678
2023  005f c750c6        	ld	20678,a
2024                     ; 515 }
2027  0062 84            	pop	a
2028  0063 81            	ret	
2085                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2085                     ; 524 {
2086                     .text:	section	.text,new
2087  0000               _CLK_SWIMConfig:
2089  0000 88            	push	a
2090       00000000      OFST:	set	0
2093                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2095  0001 4d            	tnz	a
2096  0002 2711          	jreq	L603
2097  0004 4a            	dec	a
2098  0005 270e          	jreq	L603
2099  0007 ae020e        	ldw	x,#526
2100  000a 89            	pushw	x
2101  000b 5f            	clrw	x
2102  000c 89            	pushw	x
2103  000d ae000c        	ldw	x,#L75
2104  0010 cd0000        	call	_assert_failed
2106  0013 5b04          	addw	sp,#4
2107  0015               L603:
2108                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2110  0015 7b01          	ld	a,(OFST+1,sp)
2111  0017 2706          	jreq	L3101
2112                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2114  0019 721050cd      	bset	20685,#0
2116  001d 2004          	jra	L5101
2117  001f               L3101:
2118                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2120  001f 721150cd      	bres	20685,#0
2121  0023               L5101:
2122                     ; 538 }
2125  0023 84            	pop	a
2126  0024 81            	ret	
2150                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2150                     ; 548 {
2151                     .text:	section	.text,new
2152  0000               _CLK_ClockSecuritySystemEnable:
2156                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2158  0000 721050c8      	bset	20680,#0
2159                     ; 551 }
2162  0004 81            	ret	
2187                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2187                     ; 560 {
2188                     .text:	section	.text,new
2189  0000               _CLK_GetSYSCLKSource:
2193                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2195  0000 c650c3        	ld	a,20675
2198  0003 81            	ret	
2261                     ; 569 uint32_t CLK_GetClockFreq(void)
2261                     ; 570 {
2262                     .text:	section	.text,new
2263  0000               _CLK_GetClockFreq:
2265  0000 5209          	subw	sp,#9
2266       00000009      OFST:	set	9
2269                     ; 571   uint32_t clockfrequency = 0;
2271                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2273                     ; 573   uint8_t tmp = 0, presc = 0;
2277                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2279  0002 c650c3        	ld	a,20675
2280  0005 6b09          	ld	(OFST+0,sp),a
2281                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2283  0007 a1e1          	cp	a,#225
2284  0009 2634          	jrne	L1701
2285                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2287  000b c650c6        	ld	a,20678
2288  000e a418          	and	a,#24
2289  0010 44            	srl	a
2290  0011 44            	srl	a
2291  0012 44            	srl	a
2292                     ; 581     tmp = (uint8_t)(tmp >> 3);
2294                     ; 582     presc = HSIDivFactor[tmp];
2296  0013 5f            	clrw	x
2297  0014 97            	ld	xl,a
2298  0015 d60000        	ld	a,(_HSIDivFactor,x)
2299  0018 6b09          	ld	(OFST+0,sp),a
2300                     ; 583     clockfrequency = HSI_VALUE / presc;
2302  001a b703          	ld	c_lreg+3,a
2303  001c 3f02          	clr	c_lreg+2
2304  001e 3f01          	clr	c_lreg+1
2305  0020 3f00          	clr	c_lreg
2306  0022 96            	ldw	x,sp
2307  0023 5c            	incw	x
2308  0024 cd0000        	call	c_rtol
2310  0027 ae2400        	ldw	x,#9216
2311  002a bf02          	ldw	c_lreg+2,x
2312  002c ae00f4        	ldw	x,#244
2313  002f bf00          	ldw	c_lreg,x
2314  0031 96            	ldw	x,sp
2315  0032 5c            	incw	x
2316  0033 cd0000        	call	c_ludv
2318  0036 96            	ldw	x,sp
2319  0037 1c0005        	addw	x,#OFST-4
2320  003a cd0000        	call	c_rtol
2323  003d 2018          	jra	L3701
2324  003f               L1701:
2325                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2327  003f a1d2          	cp	a,#210
2328  0041 260a          	jrne	L5701
2329                     ; 587     clockfrequency = LSI_VALUE;
2331  0043 aef400        	ldw	x,#62464
2332  0046 1f07          	ldw	(OFST-2,sp),x
2333  0048 ae0001        	ldw	x,#1
2335  004b 2008          	jp	LC009
2336  004d               L5701:
2337                     ; 591     clockfrequency = HSE_VALUE;
2339  004d ae2400        	ldw	x,#9216
2340  0050 1f07          	ldw	(OFST-2,sp),x
2341  0052 ae00f4        	ldw	x,#244
2342  0055               LC009:
2343  0055 1f05          	ldw	(OFST-4,sp),x
2344  0057               L3701:
2345                     ; 594   return((uint32_t)clockfrequency);
2347  0057 96            	ldw	x,sp
2348  0058 1c0005        	addw	x,#OFST-4
2349  005b cd0000        	call	c_ltor
2353  005e 5b09          	addw	sp,#9
2354  0060 81            	ret	
2454                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2454                     ; 605 {
2455                     .text:	section	.text,new
2456  0000               _CLK_AdjustHSICalibrationValue:
2458  0000 88            	push	a
2459       00000000      OFST:	set	0
2462                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2464  0001 4d            	tnz	a
2465  0002 272a          	jreq	L623
2466  0004 a101          	cp	a,#1
2467  0006 2726          	jreq	L623
2468  0008 a102          	cp	a,#2
2469  000a 2722          	jreq	L623
2470  000c a103          	cp	a,#3
2471  000e 271e          	jreq	L623
2472  0010 a104          	cp	a,#4
2473  0012 271a          	jreq	L623
2474  0014 a105          	cp	a,#5
2475  0016 2716          	jreq	L623
2476  0018 a106          	cp	a,#6
2477  001a 2712          	jreq	L623
2478  001c a107          	cp	a,#7
2479  001e 270e          	jreq	L623
2480  0020 ae025f        	ldw	x,#607
2481  0023 89            	pushw	x
2482  0024 5f            	clrw	x
2483  0025 89            	pushw	x
2484  0026 ae000c        	ldw	x,#L75
2485  0029 cd0000        	call	_assert_failed
2487  002c 5b04          	addw	sp,#4
2488  002e               L623:
2489                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2491  002e c650cc        	ld	a,20684
2492  0031 a4f8          	and	a,#248
2493  0033 1a01          	or	a,(OFST+1,sp)
2494  0035 c750cc        	ld	20684,a
2495                     ; 611 }
2498  0038 84            	pop	a
2499  0039 81            	ret	
2523                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2523                     ; 623 {
2524                     .text:	section	.text,new
2525  0000               _CLK_SYSCLKEmergencyClear:
2529                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2531  0000 721150c5      	bres	20677,#0
2532                     ; 625 }
2535  0004 81            	ret	
2689                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2689                     ; 635 {
2690                     .text:	section	.text,new
2691  0000               _CLK_GetFlagStatus:
2693  0000 89            	pushw	x
2694  0001 5203          	subw	sp,#3
2695       00000003      OFST:	set	3
2698                     ; 636   uint16_t statusreg = 0;
2700                     ; 637   uint8_t tmpreg = 0;
2702                     ; 638   FlagStatus bitstatus = RESET;
2704                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2706  0003 a30110        	cpw	x,#272
2707  0006 2736          	jreq	L243
2708  0008 a30102        	cpw	x,#258
2709  000b 2731          	jreq	L243
2710  000d a30202        	cpw	x,#514
2711  0010 272c          	jreq	L243
2712  0012 a30308        	cpw	x,#776
2713  0015 2727          	jreq	L243
2714  0017 a30301        	cpw	x,#769
2715  001a 2722          	jreq	L243
2716  001c a30408        	cpw	x,#1032
2717  001f 271d          	jreq	L243
2718  0021 a30402        	cpw	x,#1026
2719  0024 2718          	jreq	L243
2720  0026 a30504        	cpw	x,#1284
2721  0029 2713          	jreq	L243
2722  002b a30502        	cpw	x,#1282
2723  002e 270e          	jreq	L243
2724  0030 ae0281        	ldw	x,#641
2725  0033 89            	pushw	x
2726  0034 5f            	clrw	x
2727  0035 89            	pushw	x
2728  0036 ae000c        	ldw	x,#L75
2729  0039 cd0000        	call	_assert_failed
2731  003c 5b04          	addw	sp,#4
2732  003e               L243:
2733                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2735  003e 7b04          	ld	a,(OFST+1,sp)
2736  0040 97            	ld	xl,a
2737  0041 4f            	clr	a
2738  0042 02            	rlwa	x,a
2739  0043 1f01          	ldw	(OFST-2,sp),x
2740                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2742  0045 a30100        	cpw	x,#256
2743  0048 2605          	jrne	L3421
2744                     ; 649     tmpreg = CLK->ICKR;
2746  004a c650c0        	ld	a,20672
2748  004d 2021          	jra	L5421
2749  004f               L3421:
2750                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2752  004f a30200        	cpw	x,#512
2753  0052 2605          	jrne	L7421
2754                     ; 653     tmpreg = CLK->ECKR;
2756  0054 c650c1        	ld	a,20673
2758  0057 2017          	jra	L5421
2759  0059               L7421:
2760                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2762  0059 a30300        	cpw	x,#768
2763  005c 2605          	jrne	L3521
2764                     ; 657     tmpreg = CLK->SWCR;
2766  005e c650c5        	ld	a,20677
2768  0061 200d          	jra	L5421
2769  0063               L3521:
2770                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2772  0063 a30400        	cpw	x,#1024
2773  0066 2605          	jrne	L7521
2774                     ; 661     tmpreg = CLK->CSSR;
2776  0068 c650c8        	ld	a,20680
2778  006b 2003          	jra	L5421
2779  006d               L7521:
2780                     ; 665     tmpreg = CLK->CCOR;
2782  006d c650c9        	ld	a,20681
2783  0070               L5421:
2784  0070 6b03          	ld	(OFST+0,sp),a
2785                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2787  0072 7b05          	ld	a,(OFST+2,sp)
2788  0074 1503          	bcp	a,(OFST+0,sp)
2789  0076 2704          	jreq	L3621
2790                     ; 670     bitstatus = SET;
2792  0078 a601          	ld	a,#1
2794  007a 2001          	jra	L5621
2795  007c               L3621:
2796                     ; 674     bitstatus = RESET;
2798  007c 4f            	clr	a
2799  007d               L5621:
2800                     ; 678   return((FlagStatus)bitstatus);
2804  007d 5b05          	addw	sp,#5
2805  007f 81            	ret	
2852                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2852                     ; 688 {
2853                     .text:	section	.text,new
2854  0000               _CLK_GetITStatus:
2856  0000 88            	push	a
2857  0001 88            	push	a
2858       00000001      OFST:	set	1
2861                     ; 689   ITStatus bitstatus = RESET;
2863                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2865  0002 a10c          	cp	a,#12
2866  0004 2712          	jreq	L453
2867  0006 a11c          	cp	a,#28
2868  0008 270e          	jreq	L453
2869  000a ae02b4        	ldw	x,#692
2870  000d 89            	pushw	x
2871  000e 5f            	clrw	x
2872  000f 89            	pushw	x
2873  0010 ae000c        	ldw	x,#L75
2874  0013 cd0000        	call	_assert_failed
2876  0016 5b04          	addw	sp,#4
2877  0018               L453:
2878                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2880  0018 7b02          	ld	a,(OFST+1,sp)
2881  001a a11c          	cp	a,#28
2882  001c 260b          	jrne	L1131
2883                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2885  001e c650c5        	ld	a,20677
2886  0021 1402          	and	a,(OFST+1,sp)
2887  0023 a10c          	cp	a,#12
2888  0025 260f          	jrne	L1231
2889                     ; 699       bitstatus = SET;
2891  0027 2009          	jp	LC011
2892                     ; 703       bitstatus = RESET;
2893  0029               L1131:
2894                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2896  0029 c650c8        	ld	a,20680
2897  002c 1402          	and	a,(OFST+1,sp)
2898  002e a10c          	cp	a,#12
2899  0030 2604          	jrne	L1231
2900                     ; 711       bitstatus = SET;
2902  0032               LC011:
2904  0032 a601          	ld	a,#1
2906  0034 2001          	jra	L7131
2907  0036               L1231:
2908                     ; 715       bitstatus = RESET;
2911  0036 4f            	clr	a
2912  0037               L7131:
2913                     ; 720   return bitstatus;
2917  0037 85            	popw	x
2918  0038 81            	ret	
2955                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2955                     ; 730 {
2956                     .text:	section	.text,new
2957  0000               _CLK_ClearITPendingBit:
2959  0000 88            	push	a
2960       00000000      OFST:	set	0
2963                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2965  0001 a10c          	cp	a,#12
2966  0003 2712          	jreq	L663
2967  0005 a11c          	cp	a,#28
2968  0007 270e          	jreq	L663
2969  0009 ae02dc        	ldw	x,#732
2970  000c 89            	pushw	x
2971  000d 5f            	clrw	x
2972  000e 89            	pushw	x
2973  000f ae000c        	ldw	x,#L75
2974  0012 cd0000        	call	_assert_failed
2976  0015 5b04          	addw	sp,#4
2977  0017               L663:
2978                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2980  0017 7b01          	ld	a,(OFST+1,sp)
2981  0019 a10c          	cp	a,#12
2982  001b 2606          	jrne	L3431
2983                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2985  001d 721750c8      	bres	20680,#3
2987  0021 2004          	jra	L5431
2988  0023               L3431:
2989                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2991  0023 721750c5      	bres	20677,#3
2992  0027               L5431:
2993                     ; 745 }
2996  0027 84            	pop	a
2997  0028 81            	ret	
3032                     	xdef	_CLKPrescTable
3033                     	xdef	_HSIDivFactor
3034                     	xdef	_CLK_ClearITPendingBit
3035                     	xdef	_CLK_GetITStatus
3036                     	xdef	_CLK_GetFlagStatus
3037                     	xdef	_CLK_GetSYSCLKSource
3038                     	xdef	_CLK_GetClockFreq
3039                     	xdef	_CLK_AdjustHSICalibrationValue
3040                     	xdef	_CLK_SYSCLKEmergencyClear
3041                     	xdef	_CLK_ClockSecuritySystemEnable
3042                     	xdef	_CLK_SWIMConfig
3043                     	xdef	_CLK_SYSCLKConfig
3044                     	xdef	_CLK_ITConfig
3045                     	xdef	_CLK_CCOConfig
3046                     	xdef	_CLK_HSIPrescalerConfig
3047                     	xdef	_CLK_ClockSwitchConfig
3048                     	xdef	_CLK_PeripheralClockConfig
3049                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3050                     	xdef	_CLK_FastHaltWakeUpCmd
3051                     	xdef	_CLK_ClockSwitchCmd
3052                     	xdef	_CLK_CCOCmd
3053                     	xdef	_CLK_LSICmd
3054                     	xdef	_CLK_HSICmd
3055                     	xdef	_CLK_HSECmd
3056                     	xdef	_CLK_DeInit
3057                     	xref	_assert_failed
3058                     	switch	.const
3059  000c               L75:
3060  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3061  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3062  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3063  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3064                     	xref.b	c_lreg
3065                     	xref.b	c_x
3085                     	xref	c_ltor
3086                     	xref	c_ludv
3087                     	xref	c_rtol
3088                     	end
