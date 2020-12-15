   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  17                     .const:	section	.text
  18  0000               _HSIDivFactor:
  19  0000 01            	dc.b	1
  20  0001 02            	dc.b	2
  21  0002 04            	dc.b	4
  22  0003 08            	dc.b	8
  23  0004               _CLKPrescTable:
  24  0004 01            	dc.b	1
  25  0005 02            	dc.b	2
  26  0006 04            	dc.b	4
  27  0007 08            	dc.b	8
  28  0008 0a            	dc.b	10
  29  0009 10            	dc.b	16
  30  000a 14            	dc.b	20
  31  000b 28            	dc.b	40
  60                     ; 72 void CLK_DeInit(void)
  60                     ; 73 {
  62                     .text:	section	.text,new
  63  0000               _CLK_DeInit:
  67                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  69  0000 350150c0      	mov	20672,#1
  70                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  72  0004 725f50c1      	clr	20673
  73                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  75  0008 35e150c4      	mov	20676,#225
  76                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  78  000c 725f50c5      	clr	20677
  79                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  81  0010 351850c6      	mov	20678,#24
  82                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  84  0014 35ff50c7      	mov	20679,#255
  85                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  87  0018 35ff50ca      	mov	20682,#255
  88                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  90  001c 725f50c8      	clr	20680
  91                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  93  0020 725f50c9      	clr	20681
  95  0024               L52:
  96                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  98  0024 c650c9        	ld	a,20681
  99  0027 a501          	bcp	a,#1
 100  0029 26f9          	jrne	L52
 101                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 103  002b 725f50c9      	clr	20681
 104                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 106  002f 725f50cc      	clr	20684
 107                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 109  0033 725f50cd      	clr	20685
 110                     ; 88 }
 113  0037 81            	ret
 170                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 170                     ; 100 {
 171                     .text:	section	.text,new
 172  0000               _CLK_FastHaltWakeUpCmd:
 174  0000 88            	push	a
 175       00000000      OFST:	set	0
 178                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 180  0001 4d            	tnz	a
 181  0002 2704          	jreq	L21
 182  0004 a101          	cp	a,#1
 183  0006 2603          	jrne	L01
 184  0008               L21:
 185  0008 4f            	clr	a
 186  0009 2010          	jra	L41
 187  000b               L01:
 188  000b ae0066        	ldw	x,#102
 189  000e 89            	pushw	x
 190  000f ae0000        	ldw	x,#0
 191  0012 89            	pushw	x
 192  0013 ae000c        	ldw	x,#L75
 193  0016 cd0000        	call	_assert_failed
 195  0019 5b04          	addw	sp,#4
 196  001b               L41:
 197                     ; 104   if (NewState != DISABLE)
 199  001b 0d01          	tnz	(OFST+1,sp)
 200  001d 2706          	jreq	L16
 201                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 203  001f 721450c0      	bset	20672,#2
 205  0023 2004          	jra	L36
 206  0025               L16:
 207                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 209  0025 721550c0      	bres	20672,#2
 210  0029               L36:
 211                     ; 114 }
 214  0029 84            	pop	a
 215  002a 81            	ret
 251                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 251                     ; 122 {
 252                     .text:	section	.text,new
 253  0000               _CLK_HSECmd:
 255  0000 88            	push	a
 256       00000000      OFST:	set	0
 259                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 261  0001 4d            	tnz	a
 262  0002 2704          	jreq	L22
 263  0004 a101          	cp	a,#1
 264  0006 2603          	jrne	L02
 265  0008               L22:
 266  0008 4f            	clr	a
 267  0009 2010          	jra	L42
 268  000b               L02:
 269  000b ae007c        	ldw	x,#124
 270  000e 89            	pushw	x
 271  000f ae0000        	ldw	x,#0
 272  0012 89            	pushw	x
 273  0013 ae000c        	ldw	x,#L75
 274  0016 cd0000        	call	_assert_failed
 276  0019 5b04          	addw	sp,#4
 277  001b               L42:
 278                     ; 126   if (NewState != DISABLE)
 280  001b 0d01          	tnz	(OFST+1,sp)
 281  001d 2706          	jreq	L301
 282                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 284  001f 721050c1      	bset	20673,#0
 286  0023 2004          	jra	L501
 287  0025               L301:
 288                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 290  0025 721150c1      	bres	20673,#0
 291  0029               L501:
 292                     ; 136 }
 295  0029 84            	pop	a
 296  002a 81            	ret
 332                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 332                     ; 144 {
 333                     .text:	section	.text,new
 334  0000               _CLK_HSICmd:
 336  0000 88            	push	a
 337       00000000      OFST:	set	0
 340                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 342  0001 4d            	tnz	a
 343  0002 2704          	jreq	L23
 344  0004 a101          	cp	a,#1
 345  0006 2603          	jrne	L03
 346  0008               L23:
 347  0008 4f            	clr	a
 348  0009 2010          	jra	L43
 349  000b               L03:
 350  000b ae0092        	ldw	x,#146
 351  000e 89            	pushw	x
 352  000f ae0000        	ldw	x,#0
 353  0012 89            	pushw	x
 354  0013 ae000c        	ldw	x,#L75
 355  0016 cd0000        	call	_assert_failed
 357  0019 5b04          	addw	sp,#4
 358  001b               L43:
 359                     ; 148   if (NewState != DISABLE)
 361  001b 0d01          	tnz	(OFST+1,sp)
 362  001d 2706          	jreq	L521
 363                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 365  001f 721050c0      	bset	20672,#0
 367  0023 2004          	jra	L721
 368  0025               L521:
 369                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 371  0025 721150c0      	bres	20672,#0
 372  0029               L721:
 373                     ; 158 }
 376  0029 84            	pop	a
 377  002a 81            	ret
 413                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 413                     ; 167 {
 414                     .text:	section	.text,new
 415  0000               _CLK_LSICmd:
 417  0000 88            	push	a
 418       00000000      OFST:	set	0
 421                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 423  0001 4d            	tnz	a
 424  0002 2704          	jreq	L24
 425  0004 a101          	cp	a,#1
 426  0006 2603          	jrne	L04
 427  0008               L24:
 428  0008 4f            	clr	a
 429  0009 2010          	jra	L44
 430  000b               L04:
 431  000b ae00a9        	ldw	x,#169
 432  000e 89            	pushw	x
 433  000f ae0000        	ldw	x,#0
 434  0012 89            	pushw	x
 435  0013 ae000c        	ldw	x,#L75
 436  0016 cd0000        	call	_assert_failed
 438  0019 5b04          	addw	sp,#4
 439  001b               L44:
 440                     ; 171   if (NewState != DISABLE)
 442  001b 0d01          	tnz	(OFST+1,sp)
 443  001d 2706          	jreq	L741
 444                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 446  001f 721650c0      	bset	20672,#3
 448  0023 2004          	jra	L151
 449  0025               L741:
 450                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 452  0025 721750c0      	bres	20672,#3
 453  0029               L151:
 454                     ; 181 }
 457  0029 84            	pop	a
 458  002a 81            	ret
 494                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 494                     ; 190 {
 495                     .text:	section	.text,new
 496  0000               _CLK_CCOCmd:
 498  0000 88            	push	a
 499       00000000      OFST:	set	0
 502                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 504  0001 4d            	tnz	a
 505  0002 2704          	jreq	L25
 506  0004 a101          	cp	a,#1
 507  0006 2603          	jrne	L05
 508  0008               L25:
 509  0008 4f            	clr	a
 510  0009 2010          	jra	L45
 511  000b               L05:
 512  000b ae00c0        	ldw	x,#192
 513  000e 89            	pushw	x
 514  000f ae0000        	ldw	x,#0
 515  0012 89            	pushw	x
 516  0013 ae000c        	ldw	x,#L75
 517  0016 cd0000        	call	_assert_failed
 519  0019 5b04          	addw	sp,#4
 520  001b               L45:
 521                     ; 194   if (NewState != DISABLE)
 523  001b 0d01          	tnz	(OFST+1,sp)
 524  001d 2706          	jreq	L171
 525                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 527  001f 721050c9      	bset	20681,#0
 529  0023 2004          	jra	L371
 530  0025               L171:
 531                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 533  0025 721150c9      	bres	20681,#0
 534  0029               L371:
 535                     ; 204 }
 538  0029 84            	pop	a
 539  002a 81            	ret
 575                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 575                     ; 214 {
 576                     .text:	section	.text,new
 577  0000               _CLK_ClockSwitchCmd:
 579  0000 88            	push	a
 580       00000000      OFST:	set	0
 583                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 585  0001 4d            	tnz	a
 586  0002 2704          	jreq	L26
 587  0004 a101          	cp	a,#1
 588  0006 2603          	jrne	L06
 589  0008               L26:
 590  0008 4f            	clr	a
 591  0009 2010          	jra	L46
 592  000b               L06:
 593  000b ae00d8        	ldw	x,#216
 594  000e 89            	pushw	x
 595  000f ae0000        	ldw	x,#0
 596  0012 89            	pushw	x
 597  0013 ae000c        	ldw	x,#L75
 598  0016 cd0000        	call	_assert_failed
 600  0019 5b04          	addw	sp,#4
 601  001b               L46:
 602                     ; 218   if (NewState != DISABLE )
 604  001b 0d01          	tnz	(OFST+1,sp)
 605  001d 2706          	jreq	L312
 606                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 608  001f 721250c5      	bset	20677,#1
 610  0023 2004          	jra	L512
 611  0025               L312:
 612                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 614  0025 721350c5      	bres	20677,#1
 615  0029               L512:
 616                     ; 228 }
 619  0029 84            	pop	a
 620  002a 81            	ret
 657                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 657                     ; 239 {
 658                     .text:	section	.text,new
 659  0000               _CLK_SlowActiveHaltWakeUpCmd:
 661  0000 88            	push	a
 662       00000000      OFST:	set	0
 665                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 667  0001 4d            	tnz	a
 668  0002 2704          	jreq	L27
 669  0004 a101          	cp	a,#1
 670  0006 2603          	jrne	L07
 671  0008               L27:
 672  0008 4f            	clr	a
 673  0009 2010          	jra	L47
 674  000b               L07:
 675  000b ae00f1        	ldw	x,#241
 676  000e 89            	pushw	x
 677  000f ae0000        	ldw	x,#0
 678  0012 89            	pushw	x
 679  0013 ae000c        	ldw	x,#L75
 680  0016 cd0000        	call	_assert_failed
 682  0019 5b04          	addw	sp,#4
 683  001b               L47:
 684                     ; 243   if (NewState != DISABLE)
 686  001b 0d01          	tnz	(OFST+1,sp)
 687  001d 2706          	jreq	L532
 688                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 690  001f 721a50c0      	bset	20672,#5
 692  0023 2004          	jra	L732
 693  0025               L532:
 694                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 696  0025 721b50c0      	bres	20672,#5
 697  0029               L732:
 698                     ; 253 }
 701  0029 84            	pop	a
 702  002a 81            	ret
 862                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 862                     ; 264 {
 863                     .text:	section	.text,new
 864  0000               _CLK_PeripheralClockConfig:
 866  0000 89            	pushw	x
 867       00000000      OFST:	set	0
 870                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 872  0001 9f            	ld	a,xl
 873  0002 4d            	tnz	a
 874  0003 2705          	jreq	L201
 875  0005 9f            	ld	a,xl
 876  0006 a101          	cp	a,#1
 877  0008 2603          	jrne	L001
 878  000a               L201:
 879  000a 4f            	clr	a
 880  000b 2010          	jra	L401
 881  000d               L001:
 882  000d ae010a        	ldw	x,#266
 883  0010 89            	pushw	x
 884  0011 ae0000        	ldw	x,#0
 885  0014 89            	pushw	x
 886  0015 ae000c        	ldw	x,#L75
 887  0018 cd0000        	call	_assert_failed
 889  001b 5b04          	addw	sp,#4
 890  001d               L401:
 891                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 893  001d 0d01          	tnz	(OFST+1,sp)
 894  001f 274e          	jreq	L011
 895  0021 7b01          	ld	a,(OFST+1,sp)
 896  0023 a101          	cp	a,#1
 897  0025 2748          	jreq	L011
 898  0027 7b01          	ld	a,(OFST+1,sp)
 899  0029 a103          	cp	a,#3
 900  002b 2742          	jreq	L011
 901  002d 7b01          	ld	a,(OFST+1,sp)
 902  002f a103          	cp	a,#3
 903  0031 273c          	jreq	L011
 904  0033 7b01          	ld	a,(OFST+1,sp)
 905  0035 a103          	cp	a,#3
 906  0037 2736          	jreq	L011
 907  0039 7b01          	ld	a,(OFST+1,sp)
 908  003b a104          	cp	a,#4
 909  003d 2730          	jreq	L011
 910  003f 7b01          	ld	a,(OFST+1,sp)
 911  0041 a105          	cp	a,#5
 912  0043 272a          	jreq	L011
 913  0045 7b01          	ld	a,(OFST+1,sp)
 914  0047 a105          	cp	a,#5
 915  0049 2724          	jreq	L011
 916  004b 7b01          	ld	a,(OFST+1,sp)
 917  004d a104          	cp	a,#4
 918  004f 271e          	jreq	L011
 919  0051 7b01          	ld	a,(OFST+1,sp)
 920  0053 a106          	cp	a,#6
 921  0055 2718          	jreq	L011
 922  0057 7b01          	ld	a,(OFST+1,sp)
 923  0059 a107          	cp	a,#7
 924  005b 2712          	jreq	L011
 925  005d 7b01          	ld	a,(OFST+1,sp)
 926  005f a117          	cp	a,#23
 927  0061 270c          	jreq	L011
 928  0063 7b01          	ld	a,(OFST+1,sp)
 929  0065 a113          	cp	a,#19
 930  0067 2706          	jreq	L011
 931  0069 7b01          	ld	a,(OFST+1,sp)
 932  006b a112          	cp	a,#18
 933  006d 2603          	jrne	L601
 934  006f               L011:
 935  006f 4f            	clr	a
 936  0070 2010          	jra	L211
 937  0072               L601:
 938  0072 ae010b        	ldw	x,#267
 939  0075 89            	pushw	x
 940  0076 ae0000        	ldw	x,#0
 941  0079 89            	pushw	x
 942  007a ae000c        	ldw	x,#L75
 943  007d cd0000        	call	_assert_failed
 945  0080 5b04          	addw	sp,#4
 946  0082               L211:
 947                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 949  0082 7b01          	ld	a,(OFST+1,sp)
 950  0084 a510          	bcp	a,#16
 951  0086 2633          	jrne	L323
 952                     ; 271     if (NewState != DISABLE)
 954  0088 0d02          	tnz	(OFST+2,sp)
 955  008a 2717          	jreq	L523
 956                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 958  008c 7b01          	ld	a,(OFST+1,sp)
 959  008e a40f          	and	a,#15
 960  0090 5f            	clrw	x
 961  0091 97            	ld	xl,a
 962  0092 a601          	ld	a,#1
 963  0094 5d            	tnzw	x
 964  0095 2704          	jreq	L411
 965  0097               L611:
 966  0097 48            	sll	a
 967  0098 5a            	decw	x
 968  0099 26fc          	jrne	L611
 969  009b               L411:
 970  009b ca50c7        	or	a,20679
 971  009e c750c7        	ld	20679,a
 973  00a1 2049          	jra	L133
 974  00a3               L523:
 975                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 977  00a3 7b01          	ld	a,(OFST+1,sp)
 978  00a5 a40f          	and	a,#15
 979  00a7 5f            	clrw	x
 980  00a8 97            	ld	xl,a
 981  00a9 a601          	ld	a,#1
 982  00ab 5d            	tnzw	x
 983  00ac 2704          	jreq	L021
 984  00ae               L221:
 985  00ae 48            	sll	a
 986  00af 5a            	decw	x
 987  00b0 26fc          	jrne	L221
 988  00b2               L021:
 989  00b2 43            	cpl	a
 990  00b3 c450c7        	and	a,20679
 991  00b6 c750c7        	ld	20679,a
 992  00b9 2031          	jra	L133
 993  00bb               L323:
 994                     ; 284     if (NewState != DISABLE)
 996  00bb 0d02          	tnz	(OFST+2,sp)
 997  00bd 2717          	jreq	L333
 998                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
1000  00bf 7b01          	ld	a,(OFST+1,sp)
1001  00c1 a40f          	and	a,#15
1002  00c3 5f            	clrw	x
1003  00c4 97            	ld	xl,a
1004  00c5 a601          	ld	a,#1
1005  00c7 5d            	tnzw	x
1006  00c8 2704          	jreq	L421
1007  00ca               L621:
1008  00ca 48            	sll	a
1009  00cb 5a            	decw	x
1010  00cc 26fc          	jrne	L621
1011  00ce               L421:
1012  00ce ca50ca        	or	a,20682
1013  00d1 c750ca        	ld	20682,a
1015  00d4 2016          	jra	L133
1016  00d6               L333:
1017                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1019  00d6 7b01          	ld	a,(OFST+1,sp)
1020  00d8 a40f          	and	a,#15
1021  00da 5f            	clrw	x
1022  00db 97            	ld	xl,a
1023  00dc a601          	ld	a,#1
1024  00de 5d            	tnzw	x
1025  00df 2704          	jreq	L031
1026  00e1               L231:
1027  00e1 48            	sll	a
1028  00e2 5a            	decw	x
1029  00e3 26fc          	jrne	L231
1030  00e5               L031:
1031  00e5 43            	cpl	a
1032  00e6 c450ca        	and	a,20682
1033  00e9 c750ca        	ld	20682,a
1034  00ec               L133:
1035                     ; 295 }
1038  00ec 85            	popw	x
1039  00ed 81            	ret
1226                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1226                     ; 310 {
1227                     .text:	section	.text,new
1228  0000               _CLK_ClockSwitchConfig:
1230  0000 89            	pushw	x
1231  0001 5204          	subw	sp,#4
1232       00000004      OFST:	set	4
1235                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1237  0003 aeffff        	ldw	x,#65535
1238  0006 1f03          	ldw	(OFST-1,sp),x
1239                     ; 313   ErrorStatus Swif = ERROR;
1241                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1243  0008 7b06          	ld	a,(OFST+2,sp)
1244  000a a1e1          	cp	a,#225
1245  000c 270c          	jreq	L041
1246  000e 7b06          	ld	a,(OFST+2,sp)
1247  0010 a1d2          	cp	a,#210
1248  0012 2706          	jreq	L041
1249  0014 7b06          	ld	a,(OFST+2,sp)
1250  0016 a1b4          	cp	a,#180
1251  0018 2603          	jrne	L631
1252  001a               L041:
1253  001a 4f            	clr	a
1254  001b 2010          	jra	L241
1255  001d               L631:
1256  001d ae013c        	ldw	x,#316
1257  0020 89            	pushw	x
1258  0021 ae0000        	ldw	x,#0
1259  0024 89            	pushw	x
1260  0025 ae000c        	ldw	x,#L75
1261  0028 cd0000        	call	_assert_failed
1263  002b 5b04          	addw	sp,#4
1264  002d               L241:
1265                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1267  002d 0d05          	tnz	(OFST+1,sp)
1268  002f 2706          	jreq	L641
1269  0031 7b05          	ld	a,(OFST+1,sp)
1270  0033 a101          	cp	a,#1
1271  0035 2603          	jrne	L441
1272  0037               L641:
1273  0037 4f            	clr	a
1274  0038 2010          	jra	L051
1275  003a               L441:
1276  003a ae013d        	ldw	x,#317
1277  003d 89            	pushw	x
1278  003e ae0000        	ldw	x,#0
1279  0041 89            	pushw	x
1280  0042 ae000c        	ldw	x,#L75
1281  0045 cd0000        	call	_assert_failed
1283  0048 5b04          	addw	sp,#4
1284  004a               L051:
1285                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1287  004a 0d09          	tnz	(OFST+5,sp)
1288  004c 2706          	jreq	L451
1289  004e 7b09          	ld	a,(OFST+5,sp)
1290  0050 a101          	cp	a,#1
1291  0052 2603          	jrne	L251
1292  0054               L451:
1293  0054 4f            	clr	a
1294  0055 2010          	jra	L651
1295  0057               L251:
1296  0057 ae013e        	ldw	x,#318
1297  005a 89            	pushw	x
1298  005b ae0000        	ldw	x,#0
1299  005e 89            	pushw	x
1300  005f ae000c        	ldw	x,#L75
1301  0062 cd0000        	call	_assert_failed
1303  0065 5b04          	addw	sp,#4
1304  0067               L651:
1305                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1307  0067 0d0a          	tnz	(OFST+6,sp)
1308  0069 2706          	jreq	L261
1309  006b 7b0a          	ld	a,(OFST+6,sp)
1310  006d a101          	cp	a,#1
1311  006f 2603          	jrne	L061
1312  0071               L261:
1313  0071 4f            	clr	a
1314  0072 2010          	jra	L461
1315  0074               L061:
1316  0074 ae013f        	ldw	x,#319
1317  0077 89            	pushw	x
1318  0078 ae0000        	ldw	x,#0
1319  007b 89            	pushw	x
1320  007c ae000c        	ldw	x,#L75
1321  007f cd0000        	call	_assert_failed
1323  0082 5b04          	addw	sp,#4
1324  0084               L461:
1325                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1327  0084 c650c3        	ld	a,20675
1328  0087 6b01          	ld	(OFST-3,sp),a
1329                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1331  0089 7b05          	ld	a,(OFST+1,sp)
1332  008b a101          	cp	a,#1
1333  008d 264b          	jrne	L544
1334                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1336  008f 721250c5      	bset	20677,#1
1337                     ; 331     if (ITState != DISABLE)
1339  0093 0d09          	tnz	(OFST+5,sp)
1340  0095 2706          	jreq	L744
1341                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1343  0097 721450c5      	bset	20677,#2
1345  009b 2004          	jra	L154
1346  009d               L744:
1347                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1349  009d 721550c5      	bres	20677,#2
1350  00a1               L154:
1351                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1353  00a1 7b06          	ld	a,(OFST+2,sp)
1354  00a3 c750c4        	ld	20676,a
1356  00a6 2007          	jra	L754
1357  00a8               L354:
1358                     ; 346       DownCounter--;
1360  00a8 1e03          	ldw	x,(OFST-1,sp)
1361  00aa 1d0001        	subw	x,#1
1362  00ad 1f03          	ldw	(OFST-1,sp),x
1363  00af               L754:
1364                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1366  00af c650c5        	ld	a,20677
1367  00b2 a501          	bcp	a,#1
1368  00b4 2704          	jreq	L364
1370  00b6 1e03          	ldw	x,(OFST-1,sp)
1371  00b8 26ee          	jrne	L354
1372  00ba               L364:
1373                     ; 349     if(DownCounter != 0)
1375  00ba 1e03          	ldw	x,(OFST-1,sp)
1376  00bc 2706          	jreq	L564
1377                     ; 351       Swif = SUCCESS;
1379  00be a601          	ld	a,#1
1380  00c0 6b02          	ld	(OFST-2,sp),a
1382  00c2 2002          	jra	L174
1383  00c4               L564:
1384                     ; 355       Swif = ERROR;
1386  00c4 0f02          	clr	(OFST-2,sp)
1387  00c6               L174:
1388                     ; 390   if(Swif != ERROR)
1390  00c6 0d02          	tnz	(OFST-2,sp)
1391  00c8 2767          	jreq	L515
1392                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1394  00ca 0d0a          	tnz	(OFST+6,sp)
1395  00cc 2645          	jrne	L715
1397  00ce 7b01          	ld	a,(OFST-3,sp)
1398  00d0 a1e1          	cp	a,#225
1399  00d2 263f          	jrne	L715
1400                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1402  00d4 721150c0      	bres	20672,#0
1404  00d8 2057          	jra	L515
1405  00da               L544:
1406                     ; 361     if (ITState != DISABLE)
1408  00da 0d09          	tnz	(OFST+5,sp)
1409  00dc 2706          	jreq	L374
1410                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1412  00de 721450c5      	bset	20677,#2
1414  00e2 2004          	jra	L574
1415  00e4               L374:
1416                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1418  00e4 721550c5      	bres	20677,#2
1419  00e8               L574:
1420                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1422  00e8 7b06          	ld	a,(OFST+2,sp)
1423  00ea c750c4        	ld	20676,a
1425  00ed 2007          	jra	L305
1426  00ef               L774:
1427                     ; 376       DownCounter--;
1429  00ef 1e03          	ldw	x,(OFST-1,sp)
1430  00f1 1d0001        	subw	x,#1
1431  00f4 1f03          	ldw	(OFST-1,sp),x
1432  00f6               L305:
1433                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1435  00f6 c650c5        	ld	a,20677
1436  00f9 a508          	bcp	a,#8
1437  00fb 2704          	jreq	L705
1439  00fd 1e03          	ldw	x,(OFST-1,sp)
1440  00ff 26ee          	jrne	L774
1441  0101               L705:
1442                     ; 379     if(DownCounter != 0)
1444  0101 1e03          	ldw	x,(OFST-1,sp)
1445  0103 270a          	jreq	L115
1446                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1448  0105 721250c5      	bset	20677,#1
1449                     ; 383       Swif = SUCCESS;
1451  0109 a601          	ld	a,#1
1452  010b 6b02          	ld	(OFST-2,sp),a
1454  010d 20b7          	jra	L174
1455  010f               L115:
1456                     ; 387       Swif = ERROR;
1458  010f 0f02          	clr	(OFST-2,sp)
1459  0111 20b3          	jra	L174
1460  0113               L715:
1461                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1463  0113 0d0a          	tnz	(OFST+6,sp)
1464  0115 260c          	jrne	L325
1466  0117 7b01          	ld	a,(OFST-3,sp)
1467  0119 a1d2          	cp	a,#210
1468  011b 2606          	jrne	L325
1469                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1471  011d 721750c0      	bres	20672,#3
1473  0121 200e          	jra	L515
1474  0123               L325:
1475                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1477  0123 0d0a          	tnz	(OFST+6,sp)
1478  0125 260a          	jrne	L515
1480  0127 7b01          	ld	a,(OFST-3,sp)
1481  0129 a1b4          	cp	a,#180
1482  012b 2604          	jrne	L515
1483                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1485  012d 721150c1      	bres	20673,#0
1486  0131               L515:
1487                     ; 406   return(Swif);
1489  0131 7b02          	ld	a,(OFST-2,sp)
1492  0133 5b06          	addw	sp,#6
1493  0135 81            	ret
1632                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1632                     ; 416 {
1633                     .text:	section	.text,new
1634  0000               _CLK_HSIPrescalerConfig:
1636  0000 88            	push	a
1637       00000000      OFST:	set	0
1640                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1642  0001 4d            	tnz	a
1643  0002 270c          	jreq	L271
1644  0004 a108          	cp	a,#8
1645  0006 2708          	jreq	L271
1646  0008 a110          	cp	a,#16
1647  000a 2704          	jreq	L271
1648  000c a118          	cp	a,#24
1649  000e 2603          	jrne	L071
1650  0010               L271:
1651  0010 4f            	clr	a
1652  0011 2010          	jra	L471
1653  0013               L071:
1654  0013 ae01a2        	ldw	x,#418
1655  0016 89            	pushw	x
1656  0017 ae0000        	ldw	x,#0
1657  001a 89            	pushw	x
1658  001b ae000c        	ldw	x,#L75
1659  001e cd0000        	call	_assert_failed
1661  0021 5b04          	addw	sp,#4
1662  0023               L471:
1663                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1665  0023 c650c6        	ld	a,20678
1666  0026 a4e7          	and	a,#231
1667  0028 c750c6        	ld	20678,a
1668                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1670  002b c650c6        	ld	a,20678
1671  002e 1a01          	or	a,(OFST+1,sp)
1672  0030 c750c6        	ld	20678,a
1673                     ; 425 }
1676  0033 84            	pop	a
1677  0034 81            	ret
1813                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1813                     ; 437 {
1814                     .text:	section	.text,new
1815  0000               _CLK_CCOConfig:
1817  0000 88            	push	a
1818       00000000      OFST:	set	0
1821                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1823  0001 4d            	tnz	a
1824  0002 2730          	jreq	L202
1825  0004 a104          	cp	a,#4
1826  0006 272c          	jreq	L202
1827  0008 a102          	cp	a,#2
1828  000a 2728          	jreq	L202
1829  000c a108          	cp	a,#8
1830  000e 2724          	jreq	L202
1831  0010 a10a          	cp	a,#10
1832  0012 2720          	jreq	L202
1833  0014 a10c          	cp	a,#12
1834  0016 271c          	jreq	L202
1835  0018 a10e          	cp	a,#14
1836  001a 2718          	jreq	L202
1837  001c a110          	cp	a,#16
1838  001e 2714          	jreq	L202
1839  0020 a112          	cp	a,#18
1840  0022 2710          	jreq	L202
1841  0024 a114          	cp	a,#20
1842  0026 270c          	jreq	L202
1843  0028 a116          	cp	a,#22
1844  002a 2708          	jreq	L202
1845  002c a118          	cp	a,#24
1846  002e 2704          	jreq	L202
1847  0030 a11a          	cp	a,#26
1848  0032 2603          	jrne	L002
1849  0034               L202:
1850  0034 4f            	clr	a
1851  0035 2010          	jra	L402
1852  0037               L002:
1853  0037 ae01b7        	ldw	x,#439
1854  003a 89            	pushw	x
1855  003b ae0000        	ldw	x,#0
1856  003e 89            	pushw	x
1857  003f ae000c        	ldw	x,#L75
1858  0042 cd0000        	call	_assert_failed
1860  0045 5b04          	addw	sp,#4
1861  0047               L402:
1862                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1864  0047 c650c9        	ld	a,20681
1865  004a a4e1          	and	a,#225
1866  004c c750c9        	ld	20681,a
1867                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1869  004f c650c9        	ld	a,20681
1870  0052 1a01          	or	a,(OFST+1,sp)
1871  0054 c750c9        	ld	20681,a
1872                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1874  0057 721050c9      	bset	20681,#0
1875                     ; 449 }
1878  005b 84            	pop	a
1879  005c 81            	ret
1945                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1945                     ; 460 {
1946                     .text:	section	.text,new
1947  0000               _CLK_ITConfig:
1949  0000 89            	pushw	x
1950       00000000      OFST:	set	0
1953                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1955  0001 9f            	ld	a,xl
1956  0002 4d            	tnz	a
1957  0003 2705          	jreq	L212
1958  0005 9f            	ld	a,xl
1959  0006 a101          	cp	a,#1
1960  0008 2603          	jrne	L012
1961  000a               L212:
1962  000a 4f            	clr	a
1963  000b 2010          	jra	L412
1964  000d               L012:
1965  000d ae01ce        	ldw	x,#462
1966  0010 89            	pushw	x
1967  0011 ae0000        	ldw	x,#0
1968  0014 89            	pushw	x
1969  0015 ae000c        	ldw	x,#L75
1970  0018 cd0000        	call	_assert_failed
1972  001b 5b04          	addw	sp,#4
1973  001d               L412:
1974                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1976  001d 7b01          	ld	a,(OFST+1,sp)
1977  001f a10c          	cp	a,#12
1978  0021 2706          	jreq	L022
1979  0023 7b01          	ld	a,(OFST+1,sp)
1980  0025 a11c          	cp	a,#28
1981  0027 2603          	jrne	L612
1982  0029               L022:
1983  0029 4f            	clr	a
1984  002a 2010          	jra	L222
1985  002c               L612:
1986  002c ae01cf        	ldw	x,#463
1987  002f 89            	pushw	x
1988  0030 ae0000        	ldw	x,#0
1989  0033 89            	pushw	x
1990  0034 ae000c        	ldw	x,#L75
1991  0037 cd0000        	call	_assert_failed
1993  003a 5b04          	addw	sp,#4
1994  003c               L222:
1995                     ; 465   if (NewState != DISABLE)
1997  003c 0d02          	tnz	(OFST+2,sp)
1998  003e 271a          	jreq	L527
1999                     ; 467     switch (CLK_IT)
2001  0040 7b01          	ld	a,(OFST+1,sp)
2003                     ; 475     default:
2003                     ; 476       break;
2004  0042 a00c          	sub	a,#12
2005  0044 270a          	jreq	L166
2006  0046 a010          	sub	a,#16
2007  0048 2624          	jrne	L337
2008                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2008                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2010  004a 721450c5      	bset	20677,#2
2011                     ; 471       break;
2013  004e 201e          	jra	L337
2014  0050               L166:
2015                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2015                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2017  0050 721450c8      	bset	20680,#2
2018                     ; 474       break;
2020  0054 2018          	jra	L337
2021  0056               L366:
2022                     ; 475     default:
2022                     ; 476       break;
2024  0056 2016          	jra	L337
2025  0058               L137:
2027  0058 2014          	jra	L337
2028  005a               L527:
2029                     ; 481     switch (CLK_IT)
2031  005a 7b01          	ld	a,(OFST+1,sp)
2033                     ; 489     default:
2033                     ; 490       break;
2034  005c a00c          	sub	a,#12
2035  005e 270a          	jreq	L766
2036  0060 a010          	sub	a,#16
2037  0062 260a          	jrne	L337
2038                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2038                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2040  0064 721550c5      	bres	20677,#2
2041                     ; 485       break;
2043  0068 2004          	jra	L337
2044  006a               L766:
2045                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2045                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2047  006a 721550c8      	bres	20680,#2
2048                     ; 488       break;
2049  006e               L337:
2050                     ; 493 }
2053  006e 85            	popw	x
2054  006f 81            	ret
2055  0070               L176:
2056                     ; 489     default:
2056                     ; 490       break;
2058  0070 20fc          	jra	L337
2059  0072               L737:
2060  0072 20fa          	jra	L337
2096                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2096                     ; 501 {
2097                     .text:	section	.text,new
2098  0000               _CLK_SYSCLKConfig:
2100  0000 88            	push	a
2101       00000000      OFST:	set	0
2104                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2106  0001 4d            	tnz	a
2107  0002 272c          	jreq	L032
2108  0004 a108          	cp	a,#8
2109  0006 2728          	jreq	L032
2110  0008 a110          	cp	a,#16
2111  000a 2724          	jreq	L032
2112  000c a118          	cp	a,#24
2113  000e 2720          	jreq	L032
2114  0010 a180          	cp	a,#128
2115  0012 271c          	jreq	L032
2116  0014 a181          	cp	a,#129
2117  0016 2718          	jreq	L032
2118  0018 a182          	cp	a,#130
2119  001a 2714          	jreq	L032
2120  001c a183          	cp	a,#131
2121  001e 2710          	jreq	L032
2122  0020 a184          	cp	a,#132
2123  0022 270c          	jreq	L032
2124  0024 a185          	cp	a,#133
2125  0026 2708          	jreq	L032
2126  0028 a186          	cp	a,#134
2127  002a 2704          	jreq	L032
2128  002c a187          	cp	a,#135
2129  002e 2603          	jrne	L622
2130  0030               L032:
2131  0030 4f            	clr	a
2132  0031 2010          	jra	L232
2133  0033               L622:
2134  0033 ae01f7        	ldw	x,#503
2135  0036 89            	pushw	x
2136  0037 ae0000        	ldw	x,#0
2137  003a 89            	pushw	x
2138  003b ae000c        	ldw	x,#L75
2139  003e cd0000        	call	_assert_failed
2141  0041 5b04          	addw	sp,#4
2142  0043               L232:
2143                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2145  0043 7b01          	ld	a,(OFST+1,sp)
2146  0045 a580          	bcp	a,#128
2147  0047 2614          	jrne	L757
2148                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2150  0049 c650c6        	ld	a,20678
2151  004c a4e7          	and	a,#231
2152  004e c750c6        	ld	20678,a
2153                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2155  0051 7b01          	ld	a,(OFST+1,sp)
2156  0053 a418          	and	a,#24
2157  0055 ca50c6        	or	a,20678
2158  0058 c750c6        	ld	20678,a
2160  005b 2012          	jra	L167
2161  005d               L757:
2162                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2164  005d c650c6        	ld	a,20678
2165  0060 a4f8          	and	a,#248
2166  0062 c750c6        	ld	20678,a
2167                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2169  0065 7b01          	ld	a,(OFST+1,sp)
2170  0067 a407          	and	a,#7
2171  0069 ca50c6        	or	a,20678
2172  006c c750c6        	ld	20678,a
2173  006f               L167:
2174                     ; 515 }
2177  006f 84            	pop	a
2178  0070 81            	ret
2235                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2235                     ; 524 {
2236                     .text:	section	.text,new
2237  0000               _CLK_SWIMConfig:
2239  0000 88            	push	a
2240       00000000      OFST:	set	0
2243                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2245  0001 4d            	tnz	a
2246  0002 2704          	jreq	L042
2247  0004 a101          	cp	a,#1
2248  0006 2603          	jrne	L632
2249  0008               L042:
2250  0008 4f            	clr	a
2251  0009 2010          	jra	L242
2252  000b               L632:
2253  000b ae020e        	ldw	x,#526
2254  000e 89            	pushw	x
2255  000f ae0000        	ldw	x,#0
2256  0012 89            	pushw	x
2257  0013 ae000c        	ldw	x,#L75
2258  0016 cd0000        	call	_assert_failed
2260  0019 5b04          	addw	sp,#4
2261  001b               L242:
2262                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2264  001b 0d01          	tnz	(OFST+1,sp)
2265  001d 2706          	jreq	L1101
2266                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2268  001f 721050cd      	bset	20685,#0
2270  0023 2004          	jra	L3101
2271  0025               L1101:
2272                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2274  0025 721150cd      	bres	20685,#0
2275  0029               L3101:
2276                     ; 538 }
2279  0029 84            	pop	a
2280  002a 81            	ret
2304                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2304                     ; 548 {
2305                     .text:	section	.text,new
2306  0000               _CLK_ClockSecuritySystemEnable:
2310                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2312  0000 721050c8      	bset	20680,#0
2313                     ; 551 }
2316  0004 81            	ret
2341                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2341                     ; 560 {
2342                     .text:	section	.text,new
2343  0000               _CLK_GetSYSCLKSource:
2347                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2349  0000 c650c3        	ld	a,20675
2352  0003 81            	ret
2409                     ; 569 uint32_t CLK_GetClockFreq(void)
2409                     ; 570 {
2410                     .text:	section	.text,new
2411  0000               _CLK_GetClockFreq:
2413  0000 5209          	subw	sp,#9
2414       00000009      OFST:	set	9
2417                     ; 571   uint32_t clockfrequency = 0;
2419                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2421                     ; 573   uint8_t tmp = 0, presc = 0;
2425                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2427  0002 c650c3        	ld	a,20675
2428  0005 6b09          	ld	(OFST+0,sp),a
2429                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2431  0007 7b09          	ld	a,(OFST+0,sp)
2432  0009 a1e1          	cp	a,#225
2433  000b 2641          	jrne	L1601
2434                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2436  000d c650c6        	ld	a,20678
2437  0010 a418          	and	a,#24
2438  0012 6b09          	ld	(OFST+0,sp),a
2439                     ; 581     tmp = (uint8_t)(tmp >> 3);
2441  0014 0409          	srl	(OFST+0,sp)
2442  0016 0409          	srl	(OFST+0,sp)
2443  0018 0409          	srl	(OFST+0,sp)
2444                     ; 582     presc = HSIDivFactor[tmp];
2446  001a 7b09          	ld	a,(OFST+0,sp)
2447  001c 5f            	clrw	x
2448  001d 97            	ld	xl,a
2449  001e d60000        	ld	a,(_HSIDivFactor,x)
2450  0021 6b09          	ld	(OFST+0,sp),a
2451                     ; 583     clockfrequency = HSI_VALUE / presc;
2453  0023 7b09          	ld	a,(OFST+0,sp)
2454  0025 b703          	ld	c_lreg+3,a
2455  0027 3f02          	clr	c_lreg+2
2456  0029 3f01          	clr	c_lreg+1
2457  002b 3f00          	clr	c_lreg
2458  002d 96            	ldw	x,sp
2459  002e 1c0001        	addw	x,#OFST-8
2460  0031 cd0000        	call	c_rtol
2462  0034 ae2400        	ldw	x,#9216
2463  0037 bf02          	ldw	c_lreg+2,x
2464  0039 ae00f4        	ldw	x,#244
2465  003c bf00          	ldw	c_lreg,x
2466  003e 96            	ldw	x,sp
2467  003f 1c0001        	addw	x,#OFST-8
2468  0042 cd0000        	call	c_ludv
2470  0045 96            	ldw	x,sp
2471  0046 1c0005        	addw	x,#OFST-4
2472  0049 cd0000        	call	c_rtol
2475  004c 201c          	jra	L3601
2476  004e               L1601:
2477                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2479  004e 7b09          	ld	a,(OFST+0,sp)
2480  0050 a1d2          	cp	a,#210
2481  0052 260c          	jrne	L5601
2482                     ; 587     clockfrequency = LSI_VALUE;
2484  0054 aef400        	ldw	x,#62464
2485  0057 1f07          	ldw	(OFST-2,sp),x
2486  0059 ae0001        	ldw	x,#1
2487  005c 1f05          	ldw	(OFST-4,sp),x
2489  005e 200a          	jra	L3601
2490  0060               L5601:
2491                     ; 591     clockfrequency = HSE_VALUE;
2493  0060 ae2400        	ldw	x,#9216
2494  0063 1f07          	ldw	(OFST-2,sp),x
2495  0065 ae00f4        	ldw	x,#244
2496  0068 1f05          	ldw	(OFST-4,sp),x
2497  006a               L3601:
2498                     ; 594   return((uint32_t)clockfrequency);
2500  006a 96            	ldw	x,sp
2501  006b 1c0005        	addw	x,#OFST-4
2502  006e cd0000        	call	c_ltor
2506  0071 5b09          	addw	sp,#9
2507  0073 81            	ret
2607                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2607                     ; 605 {
2608                     .text:	section	.text,new
2609  0000               _CLK_AdjustHSICalibrationValue:
2611  0000 88            	push	a
2612       00000000      OFST:	set	0
2615                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2617  0001 4d            	tnz	a
2618  0002 271c          	jreq	L652
2619  0004 a101          	cp	a,#1
2620  0006 2718          	jreq	L652
2621  0008 a102          	cp	a,#2
2622  000a 2714          	jreq	L652
2623  000c a103          	cp	a,#3
2624  000e 2710          	jreq	L652
2625  0010 a104          	cp	a,#4
2626  0012 270c          	jreq	L652
2627  0014 a105          	cp	a,#5
2628  0016 2708          	jreq	L652
2629  0018 a106          	cp	a,#6
2630  001a 2704          	jreq	L652
2631  001c a107          	cp	a,#7
2632  001e 2603          	jrne	L452
2633  0020               L652:
2634  0020 4f            	clr	a
2635  0021 2010          	jra	L062
2636  0023               L452:
2637  0023 ae025f        	ldw	x,#607
2638  0026 89            	pushw	x
2639  0027 ae0000        	ldw	x,#0
2640  002a 89            	pushw	x
2641  002b ae000c        	ldw	x,#L75
2642  002e cd0000        	call	_assert_failed
2644  0031 5b04          	addw	sp,#4
2645  0033               L062:
2646                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2648  0033 c650cc        	ld	a,20684
2649  0036 a4f8          	and	a,#248
2650  0038 1a01          	or	a,(OFST+1,sp)
2651  003a c750cc        	ld	20684,a
2652                     ; 611 }
2655  003d 84            	pop	a
2656  003e 81            	ret
2680                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2680                     ; 623 {
2681                     .text:	section	.text,new
2682  0000               _CLK_SYSCLKEmergencyClear:
2686                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2688  0000 721150c5      	bres	20677,#0
2689                     ; 625 }
2692  0004 81            	ret
2842                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2842                     ; 635 {
2843                     .text:	section	.text,new
2844  0000               _CLK_GetFlagStatus:
2846  0000 89            	pushw	x
2847  0001 5203          	subw	sp,#3
2848       00000003      OFST:	set	3
2851                     ; 636   uint16_t statusreg = 0;
2853                     ; 637   uint8_t tmpreg = 0;
2855                     ; 638   FlagStatus bitstatus = RESET;
2857                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2859  0003 a30110        	cpw	x,#272
2860  0006 2728          	jreq	L072
2861  0008 a30102        	cpw	x,#258
2862  000b 2723          	jreq	L072
2863  000d a30202        	cpw	x,#514
2864  0010 271e          	jreq	L072
2865  0012 a30308        	cpw	x,#776
2866  0015 2719          	jreq	L072
2867  0017 a30301        	cpw	x,#769
2868  001a 2714          	jreq	L072
2869  001c a30408        	cpw	x,#1032
2870  001f 270f          	jreq	L072
2871  0021 a30402        	cpw	x,#1026
2872  0024 270a          	jreq	L072
2873  0026 a30504        	cpw	x,#1284
2874  0029 2705          	jreq	L072
2875  002b a30502        	cpw	x,#1282
2876  002e 2603          	jrne	L662
2877  0030               L072:
2878  0030 4f            	clr	a
2879  0031 2010          	jra	L272
2880  0033               L662:
2881  0033 ae0281        	ldw	x,#641
2882  0036 89            	pushw	x
2883  0037 ae0000        	ldw	x,#0
2884  003a 89            	pushw	x
2885  003b ae000c        	ldw	x,#L75
2886  003e cd0000        	call	_assert_failed
2888  0041 5b04          	addw	sp,#4
2889  0043               L272:
2890                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2892  0043 7b04          	ld	a,(OFST+1,sp)
2893  0045 97            	ld	xl,a
2894  0046 7b05          	ld	a,(OFST+2,sp)
2895  0048 9f            	ld	a,xl
2896  0049 a4ff          	and	a,#255
2897  004b 97            	ld	xl,a
2898  004c 4f            	clr	a
2899  004d 02            	rlwa	x,a
2900  004e 1f01          	ldw	(OFST-2,sp),x
2901  0050 01            	rrwa	x,a
2902                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2904  0051 1e01          	ldw	x,(OFST-2,sp)
2905  0053 a30100        	cpw	x,#256
2906  0056 2607          	jrne	L7221
2907                     ; 649     tmpreg = CLK->ICKR;
2909  0058 c650c0        	ld	a,20672
2910  005b 6b03          	ld	(OFST+0,sp),a
2912  005d 202f          	jra	L1321
2913  005f               L7221:
2914                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2916  005f 1e01          	ldw	x,(OFST-2,sp)
2917  0061 a30200        	cpw	x,#512
2918  0064 2607          	jrne	L3321
2919                     ; 653     tmpreg = CLK->ECKR;
2921  0066 c650c1        	ld	a,20673
2922  0069 6b03          	ld	(OFST+0,sp),a
2924  006b 2021          	jra	L1321
2925  006d               L3321:
2926                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2928  006d 1e01          	ldw	x,(OFST-2,sp)
2929  006f a30300        	cpw	x,#768
2930  0072 2607          	jrne	L7321
2931                     ; 657     tmpreg = CLK->SWCR;
2933  0074 c650c5        	ld	a,20677
2934  0077 6b03          	ld	(OFST+0,sp),a
2936  0079 2013          	jra	L1321
2937  007b               L7321:
2938                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2940  007b 1e01          	ldw	x,(OFST-2,sp)
2941  007d a30400        	cpw	x,#1024
2942  0080 2607          	jrne	L3421
2943                     ; 661     tmpreg = CLK->CSSR;
2945  0082 c650c8        	ld	a,20680
2946  0085 6b03          	ld	(OFST+0,sp),a
2948  0087 2005          	jra	L1321
2949  0089               L3421:
2950                     ; 665     tmpreg = CLK->CCOR;
2952  0089 c650c9        	ld	a,20681
2953  008c 6b03          	ld	(OFST+0,sp),a
2954  008e               L1321:
2955                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2957  008e 7b05          	ld	a,(OFST+2,sp)
2958  0090 1503          	bcp	a,(OFST+0,sp)
2959  0092 2706          	jreq	L7421
2960                     ; 670     bitstatus = SET;
2962  0094 a601          	ld	a,#1
2963  0096 6b03          	ld	(OFST+0,sp),a
2965  0098 2002          	jra	L1521
2966  009a               L7421:
2967                     ; 674     bitstatus = RESET;
2969  009a 0f03          	clr	(OFST+0,sp)
2970  009c               L1521:
2971                     ; 678   return((FlagStatus)bitstatus);
2973  009c 7b03          	ld	a,(OFST+0,sp)
2976  009e 5b05          	addw	sp,#5
2977  00a0 81            	ret
3024                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3024                     ; 688 {
3025                     .text:	section	.text,new
3026  0000               _CLK_GetITStatus:
3028  0000 88            	push	a
3029  0001 88            	push	a
3030       00000001      OFST:	set	1
3033                     ; 689   ITStatus bitstatus = RESET;
3035                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3037  0002 a10c          	cp	a,#12
3038  0004 2704          	jreq	L003
3039  0006 a11c          	cp	a,#28
3040  0008 2603          	jrne	L672
3041  000a               L003:
3042  000a 4f            	clr	a
3043  000b 2010          	jra	L203
3044  000d               L672:
3045  000d ae02b4        	ldw	x,#692
3046  0010 89            	pushw	x
3047  0011 ae0000        	ldw	x,#0
3048  0014 89            	pushw	x
3049  0015 ae000c        	ldw	x,#L75
3050  0018 cd0000        	call	_assert_failed
3052  001b 5b04          	addw	sp,#4
3053  001d               L203:
3054                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3056  001d 7b02          	ld	a,(OFST+1,sp)
3057  001f a11c          	cp	a,#28
3058  0021 2613          	jrne	L5721
3059                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3061  0023 c650c5        	ld	a,20677
3062  0026 1402          	and	a,(OFST+1,sp)
3063  0028 a10c          	cp	a,#12
3064  002a 2606          	jrne	L7721
3065                     ; 699       bitstatus = SET;
3067  002c a601          	ld	a,#1
3068  002e 6b01          	ld	(OFST+0,sp),a
3070  0030 2015          	jra	L3031
3071  0032               L7721:
3072                     ; 703       bitstatus = RESET;
3074  0032 0f01          	clr	(OFST+0,sp)
3075  0034 2011          	jra	L3031
3076  0036               L5721:
3077                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3079  0036 c650c8        	ld	a,20680
3080  0039 1402          	and	a,(OFST+1,sp)
3081  003b a10c          	cp	a,#12
3082  003d 2606          	jrne	L5031
3083                     ; 711       bitstatus = SET;
3085  003f a601          	ld	a,#1
3086  0041 6b01          	ld	(OFST+0,sp),a
3088  0043 2002          	jra	L3031
3089  0045               L5031:
3090                     ; 715       bitstatus = RESET;
3092  0045 0f01          	clr	(OFST+0,sp)
3093  0047               L3031:
3094                     ; 720   return bitstatus;
3096  0047 7b01          	ld	a,(OFST+0,sp)
3099  0049 85            	popw	x
3100  004a 81            	ret
3137                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3137                     ; 730 {
3138                     .text:	section	.text,new
3139  0000               _CLK_ClearITPendingBit:
3141  0000 88            	push	a
3142       00000000      OFST:	set	0
3145                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3147  0001 a10c          	cp	a,#12
3148  0003 2704          	jreq	L013
3149  0005 a11c          	cp	a,#28
3150  0007 2603          	jrne	L603
3151  0009               L013:
3152  0009 4f            	clr	a
3153  000a 2010          	jra	L213
3154  000c               L603:
3155  000c ae02dc        	ldw	x,#732
3156  000f 89            	pushw	x
3157  0010 ae0000        	ldw	x,#0
3158  0013 89            	pushw	x
3159  0014 ae000c        	ldw	x,#L75
3160  0017 cd0000        	call	_assert_failed
3162  001a 5b04          	addw	sp,#4
3163  001c               L213:
3164                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3166  001c 7b01          	ld	a,(OFST+1,sp)
3167  001e a10c          	cp	a,#12
3168  0020 2606          	jrne	L7231
3169                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3171  0022 721750c8      	bres	20680,#3
3173  0026 2004          	jra	L1331
3174  0028               L7231:
3175                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3177  0028 721750c5      	bres	20677,#3
3178  002c               L1331:
3179                     ; 745 }
3182  002c 84            	pop	a
3183  002d 81            	ret
3218                     	xdef	_CLKPrescTable
3219                     	xdef	_HSIDivFactor
3220                     	xdef	_CLK_ClearITPendingBit
3221                     	xdef	_CLK_GetITStatus
3222                     	xdef	_CLK_GetFlagStatus
3223                     	xdef	_CLK_GetSYSCLKSource
3224                     	xdef	_CLK_GetClockFreq
3225                     	xdef	_CLK_AdjustHSICalibrationValue
3226                     	xdef	_CLK_SYSCLKEmergencyClear
3227                     	xdef	_CLK_ClockSecuritySystemEnable
3228                     	xdef	_CLK_SWIMConfig
3229                     	xdef	_CLK_SYSCLKConfig
3230                     	xdef	_CLK_ITConfig
3231                     	xdef	_CLK_CCOConfig
3232                     	xdef	_CLK_HSIPrescalerConfig
3233                     	xdef	_CLK_ClockSwitchConfig
3234                     	xdef	_CLK_PeripheralClockConfig
3235                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3236                     	xdef	_CLK_FastHaltWakeUpCmd
3237                     	xdef	_CLK_ClockSwitchCmd
3238                     	xdef	_CLK_CCOCmd
3239                     	xdef	_CLK_LSICmd
3240                     	xdef	_CLK_HSICmd
3241                     	xdef	_CLK_HSECmd
3242                     	xdef	_CLK_DeInit
3243                     	xref	_assert_failed
3244                     	switch	.const
3245  000c               L75:
3246  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3247  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3248  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3249  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3250                     	xref.b	c_lreg
3251                     	xref.b	c_x
3271                     	xref	c_ltor
3272                     	xref	c_ludv
3273                     	xref	c_rtol
3274                     	end
