   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 50 void SPI_DeInit(void)
  45                     ; 51 {
  47                     .text:	section	.text,new
  48  0000               _SPI_DeInit:
  52                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  54  0000 725f5200      	clr	20992
  55                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  57  0004 725f5201      	clr	20993
  58                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  60  0008 725f5202      	clr	20994
  61                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  63  000c 35025203      	mov	20995,#2
  64                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  66  0010 35075205      	mov	20997,#7
  67                     ; 57 }
  70  0014 81            	ret
 385                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 385                     ; 79 {
 386                     .text:	section	.text,new
 387  0000               _SPI_Init:
 389  0000 89            	pushw	x
 390  0001 88            	push	a
 391       00000001      OFST:	set	1
 394                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 396  0002 9e            	ld	a,xh
 397  0003 4d            	tnz	a
 398  0004 2705          	jreq	L21
 399  0006 9e            	ld	a,xh
 400  0007 a180          	cp	a,#128
 401  0009 2603          	jrne	L01
 402  000b               L21:
 403  000b 4f            	clr	a
 404  000c 2010          	jra	L41
 405  000e               L01:
 406  000e ae0051        	ldw	x,#81
 407  0011 89            	pushw	x
 408  0012 ae0000        	ldw	x,#0
 409  0015 89            	pushw	x
 410  0016 ae0000        	ldw	x,#L102
 411  0019 cd0000        	call	_assert_failed
 413  001c 5b04          	addw	sp,#4
 414  001e               L41:
 415                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 417  001e 0d03          	tnz	(OFST+2,sp)
 418  0020 272a          	jreq	L02
 419  0022 7b03          	ld	a,(OFST+2,sp)
 420  0024 a108          	cp	a,#8
 421  0026 2724          	jreq	L02
 422  0028 7b03          	ld	a,(OFST+2,sp)
 423  002a a110          	cp	a,#16
 424  002c 271e          	jreq	L02
 425  002e 7b03          	ld	a,(OFST+2,sp)
 426  0030 a118          	cp	a,#24
 427  0032 2718          	jreq	L02
 428  0034 7b03          	ld	a,(OFST+2,sp)
 429  0036 a120          	cp	a,#32
 430  0038 2712          	jreq	L02
 431  003a 7b03          	ld	a,(OFST+2,sp)
 432  003c a128          	cp	a,#40
 433  003e 270c          	jreq	L02
 434  0040 7b03          	ld	a,(OFST+2,sp)
 435  0042 a130          	cp	a,#48
 436  0044 2706          	jreq	L02
 437  0046 7b03          	ld	a,(OFST+2,sp)
 438  0048 a138          	cp	a,#56
 439  004a 2603          	jrne	L61
 440  004c               L02:
 441  004c 4f            	clr	a
 442  004d 2010          	jra	L22
 443  004f               L61:
 444  004f ae0052        	ldw	x,#82
 445  0052 89            	pushw	x
 446  0053 ae0000        	ldw	x,#0
 447  0056 89            	pushw	x
 448  0057 ae0000        	ldw	x,#L102
 449  005a cd0000        	call	_assert_failed
 451  005d 5b04          	addw	sp,#4
 452  005f               L22:
 453                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 455  005f 7b06          	ld	a,(OFST+5,sp)
 456  0061 a104          	cp	a,#4
 457  0063 2704          	jreq	L62
 458  0065 0d06          	tnz	(OFST+5,sp)
 459  0067 2603          	jrne	L42
 460  0069               L62:
 461  0069 4f            	clr	a
 462  006a 2010          	jra	L03
 463  006c               L42:
 464  006c ae0053        	ldw	x,#83
 465  006f 89            	pushw	x
 466  0070 ae0000        	ldw	x,#0
 467  0073 89            	pushw	x
 468  0074 ae0000        	ldw	x,#L102
 469  0077 cd0000        	call	_assert_failed
 471  007a 5b04          	addw	sp,#4
 472  007c               L03:
 473                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 475  007c 0d07          	tnz	(OFST+6,sp)
 476  007e 2706          	jreq	L43
 477  0080 7b07          	ld	a,(OFST+6,sp)
 478  0082 a102          	cp	a,#2
 479  0084 2603          	jrne	L23
 480  0086               L43:
 481  0086 4f            	clr	a
 482  0087 2010          	jra	L63
 483  0089               L23:
 484  0089 ae0054        	ldw	x,#84
 485  008c 89            	pushw	x
 486  008d ae0000        	ldw	x,#0
 487  0090 89            	pushw	x
 488  0091 ae0000        	ldw	x,#L102
 489  0094 cd0000        	call	_assert_failed
 491  0097 5b04          	addw	sp,#4
 492  0099               L63:
 493                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 495  0099 0d08          	tnz	(OFST+7,sp)
 496  009b 2706          	jreq	L24
 497  009d 7b08          	ld	a,(OFST+7,sp)
 498  009f a101          	cp	a,#1
 499  00a1 2603          	jrne	L04
 500  00a3               L24:
 501  00a3 4f            	clr	a
 502  00a4 2010          	jra	L44
 503  00a6               L04:
 504  00a6 ae0055        	ldw	x,#85
 505  00a9 89            	pushw	x
 506  00aa ae0000        	ldw	x,#0
 507  00ad 89            	pushw	x
 508  00ae ae0000        	ldw	x,#L102
 509  00b1 cd0000        	call	_assert_failed
 511  00b4 5b04          	addw	sp,#4
 512  00b6               L44:
 513                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 515  00b6 0d09          	tnz	(OFST+8,sp)
 516  00b8 2712          	jreq	L05
 517  00ba 7b09          	ld	a,(OFST+8,sp)
 518  00bc a104          	cp	a,#4
 519  00be 270c          	jreq	L05
 520  00c0 7b09          	ld	a,(OFST+8,sp)
 521  00c2 a180          	cp	a,#128
 522  00c4 2706          	jreq	L05
 523  00c6 7b09          	ld	a,(OFST+8,sp)
 524  00c8 a1c0          	cp	a,#192
 525  00ca 2603          	jrne	L64
 526  00cc               L05:
 527  00cc 4f            	clr	a
 528  00cd 2010          	jra	L25
 529  00cf               L64:
 530  00cf ae0056        	ldw	x,#86
 531  00d2 89            	pushw	x
 532  00d3 ae0000        	ldw	x,#0
 533  00d6 89            	pushw	x
 534  00d7 ae0000        	ldw	x,#L102
 535  00da cd0000        	call	_assert_failed
 537  00dd 5b04          	addw	sp,#4
 538  00df               L25:
 539                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 541  00df 7b0a          	ld	a,(OFST+9,sp)
 542  00e1 a102          	cp	a,#2
 543  00e3 2704          	jreq	L65
 544  00e5 0d0a          	tnz	(OFST+9,sp)
 545  00e7 2603          	jrne	L45
 546  00e9               L65:
 547  00e9 4f            	clr	a
 548  00ea 2010          	jra	L06
 549  00ec               L45:
 550  00ec ae0057        	ldw	x,#87
 551  00ef 89            	pushw	x
 552  00f0 ae0000        	ldw	x,#0
 553  00f3 89            	pushw	x
 554  00f4 ae0000        	ldw	x,#L102
 555  00f7 cd0000        	call	_assert_failed
 557  00fa 5b04          	addw	sp,#4
 558  00fc               L06:
 559                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 561  00fc 0d0b          	tnz	(OFST+10,sp)
 562  00fe 2703          	jreq	L26
 563  0100 4f            	clr	a
 564  0101 2010          	jra	L46
 565  0103               L26:
 566  0103 ae0058        	ldw	x,#88
 567  0106 89            	pushw	x
 568  0107 ae0000        	ldw	x,#0
 569  010a 89            	pushw	x
 570  010b ae0000        	ldw	x,#L102
 571  010e cd0000        	call	_assert_failed
 573  0111 5b04          	addw	sp,#4
 574  0113               L46:
 575                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 575                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 577  0113 7b07          	ld	a,(OFST+6,sp)
 578  0115 1a08          	or	a,(OFST+7,sp)
 579  0117 6b01          	ld	(OFST+0,sp),a
 580  0119 7b02          	ld	a,(OFST+1,sp)
 581  011b 1a03          	or	a,(OFST+2,sp)
 582  011d 1a01          	or	a,(OFST+0,sp)
 583  011f c75200        	ld	20992,a
 584                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 586  0122 7b09          	ld	a,(OFST+8,sp)
 587  0124 1a0a          	or	a,(OFST+9,sp)
 588  0126 c75201        	ld	20993,a
 589                     ; 97   if (Mode == SPI_MODE_MASTER)
 591  0129 7b06          	ld	a,(OFST+5,sp)
 592  012b a104          	cp	a,#4
 593  012d 2606          	jrne	L302
 594                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 596  012f 72105201      	bset	20993,#0
 598  0133 2004          	jra	L502
 599  0135               L302:
 600                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 602  0135 72115201      	bres	20993,#0
 603  0139               L502:
 604                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 606  0139 c65200        	ld	a,20992
 607  013c 1a06          	or	a,(OFST+5,sp)
 608  013e c75200        	ld	20992,a
 609                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 611  0141 7b0b          	ld	a,(OFST+10,sp)
 612  0143 c75205        	ld	20997,a
 613                     ; 111 }
 616  0146 5b03          	addw	sp,#3
 617  0148 81            	ret
 673                     ; 119 void SPI_Cmd(FunctionalState NewState)
 673                     ; 120 {
 674                     .text:	section	.text,new
 675  0000               _SPI_Cmd:
 677  0000 88            	push	a
 678       00000000      OFST:	set	0
 681                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 683  0001 4d            	tnz	a
 684  0002 2704          	jreq	L27
 685  0004 a101          	cp	a,#1
 686  0006 2603          	jrne	L07
 687  0008               L27:
 688  0008 4f            	clr	a
 689  0009 2010          	jra	L47
 690  000b               L07:
 691  000b ae007a        	ldw	x,#122
 692  000e 89            	pushw	x
 693  000f ae0000        	ldw	x,#0
 694  0012 89            	pushw	x
 695  0013 ae0000        	ldw	x,#L102
 696  0016 cd0000        	call	_assert_failed
 698  0019 5b04          	addw	sp,#4
 699  001b               L47:
 700                     ; 124   if (NewState != DISABLE)
 702  001b 0d01          	tnz	(OFST+1,sp)
 703  001d 2706          	jreq	L532
 704                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 706  001f 721c5200      	bset	20992,#6
 708  0023 2004          	jra	L732
 709  0025               L532:
 710                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 712  0025 721d5200      	bres	20992,#6
 713  0029               L732:
 714                     ; 132 }
 717  0029 84            	pop	a
 718  002a 81            	ret
 826                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 826                     ; 142 {
 827                     .text:	section	.text,new
 828  0000               _SPI_ITConfig:
 830  0000 89            	pushw	x
 831  0001 88            	push	a
 832       00000001      OFST:	set	1
 835                     ; 143   uint8_t itpos = 0;
 837                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 839  0002 9e            	ld	a,xh
 840  0003 a117          	cp	a,#23
 841  0005 270f          	jreq	L201
 842  0007 9e            	ld	a,xh
 843  0008 a106          	cp	a,#6
 844  000a 270a          	jreq	L201
 845  000c 9e            	ld	a,xh
 846  000d a105          	cp	a,#5
 847  000f 2705          	jreq	L201
 848  0011 9e            	ld	a,xh
 849  0012 a134          	cp	a,#52
 850  0014 2603          	jrne	L001
 851  0016               L201:
 852  0016 4f            	clr	a
 853  0017 2010          	jra	L401
 854  0019               L001:
 855  0019 ae0091        	ldw	x,#145
 856  001c 89            	pushw	x
 857  001d ae0000        	ldw	x,#0
 858  0020 89            	pushw	x
 859  0021 ae0000        	ldw	x,#L102
 860  0024 cd0000        	call	_assert_failed
 862  0027 5b04          	addw	sp,#4
 863  0029               L401:
 864                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 866  0029 0d03          	tnz	(OFST+2,sp)
 867  002b 2706          	jreq	L011
 868  002d 7b03          	ld	a,(OFST+2,sp)
 869  002f a101          	cp	a,#1
 870  0031 2603          	jrne	L601
 871  0033               L011:
 872  0033 4f            	clr	a
 873  0034 2010          	jra	L211
 874  0036               L601:
 875  0036 ae0092        	ldw	x,#146
 876  0039 89            	pushw	x
 877  003a ae0000        	ldw	x,#0
 878  003d 89            	pushw	x
 879  003e ae0000        	ldw	x,#L102
 880  0041 cd0000        	call	_assert_failed
 882  0044 5b04          	addw	sp,#4
 883  0046               L211:
 884                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 886  0046 7b02          	ld	a,(OFST+1,sp)
 887  0048 a40f          	and	a,#15
 888  004a 5f            	clrw	x
 889  004b 97            	ld	xl,a
 890  004c a601          	ld	a,#1
 891  004e 5d            	tnzw	x
 892  004f 2704          	jreq	L411
 893  0051               L611:
 894  0051 48            	sll	a
 895  0052 5a            	decw	x
 896  0053 26fc          	jrne	L611
 897  0055               L411:
 898  0055 6b01          	ld	(OFST+0,sp),a
 899                     ; 151   if (NewState != DISABLE)
 901  0057 0d03          	tnz	(OFST+2,sp)
 902  0059 270a          	jreq	L703
 903                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 905  005b c65202        	ld	a,20994
 906  005e 1a01          	or	a,(OFST+0,sp)
 907  0060 c75202        	ld	20994,a
 909  0063 2009          	jra	L113
 910  0065               L703:
 911                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 913  0065 7b01          	ld	a,(OFST+0,sp)
 914  0067 43            	cpl	a
 915  0068 c45202        	and	a,20994
 916  006b c75202        	ld	20994,a
 917  006e               L113:
 918                     ; 159 }
 921  006e 5b03          	addw	sp,#3
 922  0070 81            	ret
 954                     ; 166 void SPI_SendData(uint8_t Data)
 954                     ; 167 {
 955                     .text:	section	.text,new
 956  0000               _SPI_SendData:
 960                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 962  0000 c75204        	ld	20996,a
 963                     ; 169 }
 966  0003 81            	ret
 989                     ; 176 uint8_t SPI_ReceiveData(void)
 989                     ; 177 {
 990                     .text:	section	.text,new
 991  0000               _SPI_ReceiveData:
 995                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 997  0000 c65204        	ld	a,20996
1000  0003 81            	ret
1037                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1037                     ; 188 {
1038                     .text:	section	.text,new
1039  0000               _SPI_NSSInternalSoftwareCmd:
1041  0000 88            	push	a
1042       00000000      OFST:	set	0
1045                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1047  0001 4d            	tnz	a
1048  0002 2704          	jreq	L031
1049  0004 a101          	cp	a,#1
1050  0006 2603          	jrne	L621
1051  0008               L031:
1052  0008 4f            	clr	a
1053  0009 2010          	jra	L231
1054  000b               L621:
1055  000b ae00be        	ldw	x,#190
1056  000e 89            	pushw	x
1057  000f ae0000        	ldw	x,#0
1058  0012 89            	pushw	x
1059  0013 ae0000        	ldw	x,#L102
1060  0016 cd0000        	call	_assert_failed
1062  0019 5b04          	addw	sp,#4
1063  001b               L231:
1064                     ; 192   if (NewState != DISABLE)
1066  001b 0d01          	tnz	(OFST+1,sp)
1067  001d 2706          	jreq	L553
1068                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1070  001f 72105201      	bset	20993,#0
1072  0023 2004          	jra	L753
1073  0025               L553:
1074                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1076  0025 72115201      	bres	20993,#0
1077  0029               L753:
1078                     ; 200 }
1081  0029 84            	pop	a
1082  002a 81            	ret
1105                     ; 207 void SPI_TransmitCRC(void)
1105                     ; 208 {
1106                     .text:	section	.text,new
1107  0000               _SPI_TransmitCRC:
1111                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1113  0000 72185201      	bset	20993,#4
1114                     ; 210 }
1117  0004 81            	ret
1154                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1154                     ; 219 {
1155                     .text:	section	.text,new
1156  0000               _SPI_CalculateCRCCmd:
1158  0000 88            	push	a
1159       00000000      OFST:	set	0
1162                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1164  0001 4d            	tnz	a
1165  0002 2704          	jreq	L241
1166  0004 a101          	cp	a,#1
1167  0006 2603          	jrne	L041
1168  0008               L241:
1169  0008 4f            	clr	a
1170  0009 2010          	jra	L441
1171  000b               L041:
1172  000b ae00dd        	ldw	x,#221
1173  000e 89            	pushw	x
1174  000f ae0000        	ldw	x,#0
1175  0012 89            	pushw	x
1176  0013 ae0000        	ldw	x,#L102
1177  0016 cd0000        	call	_assert_failed
1179  0019 5b04          	addw	sp,#4
1180  001b               L441:
1181                     ; 223   if (NewState != DISABLE)
1183  001b 0d01          	tnz	(OFST+1,sp)
1184  001d 2706          	jreq	L704
1185                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1187  001f 721a5201      	bset	20993,#5
1189  0023 2004          	jra	L114
1190  0025               L704:
1191                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1193  0025 721b5201      	bres	20993,#5
1194  0029               L114:
1195                     ; 231 }
1198  0029 84            	pop	a
1199  002a 81            	ret
1262                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1262                     ; 239 {
1263                     .text:	section	.text,new
1264  0000               _SPI_GetCRC:
1266  0000 88            	push	a
1267  0001 88            	push	a
1268       00000001      OFST:	set	1
1271                     ; 240   uint8_t crcreg = 0;
1273                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1275  0002 a101          	cp	a,#1
1276  0004 2703          	jreq	L251
1277  0006 4d            	tnz	a
1278  0007 2603          	jrne	L051
1279  0009               L251:
1280  0009 4f            	clr	a
1281  000a 2010          	jra	L451
1282  000c               L051:
1283  000c ae00f3        	ldw	x,#243
1284  000f 89            	pushw	x
1285  0010 ae0000        	ldw	x,#0
1286  0013 89            	pushw	x
1287  0014 ae0000        	ldw	x,#L102
1288  0017 cd0000        	call	_assert_failed
1290  001a 5b04          	addw	sp,#4
1291  001c               L451:
1292                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1294  001c 0d02          	tnz	(OFST+1,sp)
1295  001e 2707          	jreq	L344
1296                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1298  0020 c65207        	ld	a,20999
1299  0023 6b01          	ld	(OFST+0,sp),a
1301  0025 2005          	jra	L544
1302  0027               L344:
1303                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1305  0027 c65206        	ld	a,20998
1306  002a 6b01          	ld	(OFST+0,sp),a
1307  002c               L544:
1308                     ; 255   return crcreg;
1310  002c 7b01          	ld	a,(OFST+0,sp)
1313  002e 85            	popw	x
1314  002f 81            	ret
1339                     ; 263 void SPI_ResetCRC(void)
1339                     ; 264 {
1340                     .text:	section	.text,new
1341  0000               _SPI_ResetCRC:
1345                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1347  0000 a601          	ld	a,#1
1348  0002 cd0000        	call	_SPI_CalculateCRCCmd
1350                     ; 270   SPI_Cmd(ENABLE);
1352  0005 a601          	ld	a,#1
1353  0007 cd0000        	call	_SPI_Cmd
1355                     ; 271 }
1358  000a 81            	ret
1382                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1382                     ; 279 {
1383                     .text:	section	.text,new
1384  0000               _SPI_GetCRCPolynomial:
1388                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1390  0000 c65205        	ld	a,20997
1393  0003 81            	ret
1450                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1450                     ; 289 {
1451                     .text:	section	.text,new
1452  0000               _SPI_BiDirectionalLineConfig:
1454  0000 88            	push	a
1455       00000000      OFST:	set	0
1458                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1460  0001 4d            	tnz	a
1461  0002 2704          	jreq	L661
1462  0004 a101          	cp	a,#1
1463  0006 2603          	jrne	L461
1464  0008               L661:
1465  0008 4f            	clr	a
1466  0009 2010          	jra	L071
1467  000b               L461:
1468  000b ae0123        	ldw	x,#291
1469  000e 89            	pushw	x
1470  000f ae0000        	ldw	x,#0
1471  0012 89            	pushw	x
1472  0013 ae0000        	ldw	x,#L102
1473  0016 cd0000        	call	_assert_failed
1475  0019 5b04          	addw	sp,#4
1476  001b               L071:
1477                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1479  001b 0d01          	tnz	(OFST+1,sp)
1480  001d 2706          	jreq	L515
1481                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1483  001f 721c5201      	bset	20993,#6
1485  0023 2004          	jra	L715
1486  0025               L515:
1487                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1489  0025 721d5201      	bres	20993,#6
1490  0029               L715:
1491                     ; 301 }
1494  0029 84            	pop	a
1495  002a 81            	ret
1617                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1617                     ; 312 {
1618                     .text:	section	.text,new
1619  0000               _SPI_GetFlagStatus:
1621  0000 88            	push	a
1622  0001 88            	push	a
1623       00000001      OFST:	set	1
1626                     ; 313   FlagStatus status = RESET;
1628                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1630  0002 a140          	cp	a,#64
1631  0004 2718          	jreq	L671
1632  0006 a120          	cp	a,#32
1633  0008 2714          	jreq	L671
1634  000a a110          	cp	a,#16
1635  000c 2710          	jreq	L671
1636  000e a108          	cp	a,#8
1637  0010 270c          	jreq	L671
1638  0012 a102          	cp	a,#2
1639  0014 2708          	jreq	L671
1640  0016 a101          	cp	a,#1
1641  0018 2704          	jreq	L671
1642  001a a180          	cp	a,#128
1643  001c 2603          	jrne	L471
1644  001e               L671:
1645  001e 4f            	clr	a
1646  001f 2010          	jra	L002
1647  0021               L471:
1648  0021 ae013b        	ldw	x,#315
1649  0024 89            	pushw	x
1650  0025 ae0000        	ldw	x,#0
1651  0028 89            	pushw	x
1652  0029 ae0000        	ldw	x,#L102
1653  002c cd0000        	call	_assert_failed
1655  002f 5b04          	addw	sp,#4
1656  0031               L002:
1657                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1659  0031 c65203        	ld	a,20995
1660  0034 1502          	bcp	a,(OFST+1,sp)
1661  0036 2706          	jreq	L575
1662                     ; 320     status = SET; /* SPI_FLAG is set */
1664  0038 a601          	ld	a,#1
1665  003a 6b01          	ld	(OFST+0,sp),a
1667  003c 2002          	jra	L775
1668  003e               L575:
1669                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1671  003e 0f01          	clr	(OFST+0,sp)
1672  0040               L775:
1673                     ; 328   return status;
1675  0040 7b01          	ld	a,(OFST+0,sp)
1678  0042 85            	popw	x
1679  0043 81            	ret
1715                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1715                     ; 347 {
1716                     .text:	section	.text,new
1717  0000               _SPI_ClearFlag:
1719  0000 88            	push	a
1720       00000000      OFST:	set	0
1723                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1725  0001 a110          	cp	a,#16
1726  0003 2704          	jreq	L602
1727  0005 a108          	cp	a,#8
1728  0007 2603          	jrne	L402
1729  0009               L602:
1730  0009 4f            	clr	a
1731  000a 2010          	jra	L012
1732  000c               L402:
1733  000c ae015c        	ldw	x,#348
1734  000f 89            	pushw	x
1735  0010 ae0000        	ldw	x,#0
1736  0013 89            	pushw	x
1737  0014 ae0000        	ldw	x,#L102
1738  0017 cd0000        	call	_assert_failed
1740  001a 5b04          	addw	sp,#4
1741  001c               L012:
1742                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1744  001c 7b01          	ld	a,(OFST+1,sp)
1745  001e 43            	cpl	a
1746  001f c75203        	ld	20995,a
1747                     ; 351 }
1750  0022 84            	pop	a
1751  0023 81            	ret
1826                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1826                     ; 367 {
1827                     .text:	section	.text,new
1828  0000               _SPI_GetITStatus:
1830  0000 88            	push	a
1831  0001 89            	pushw	x
1832       00000002      OFST:	set	2
1835                     ; 368   ITStatus pendingbitstatus = RESET;
1837                     ; 369   uint8_t itpos = 0;
1839                     ; 370   uint8_t itmask1 = 0;
1841                     ; 371   uint8_t itmask2 = 0;
1843                     ; 372   uint8_t enablestatus = 0;
1845                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1847  0002 a165          	cp	a,#101
1848  0004 2714          	jreq	L612
1849  0006 a155          	cp	a,#85
1850  0008 2710          	jreq	L612
1851  000a a145          	cp	a,#69
1852  000c 270c          	jreq	L612
1853  000e a134          	cp	a,#52
1854  0010 2708          	jreq	L612
1855  0012 a117          	cp	a,#23
1856  0014 2704          	jreq	L612
1857  0016 a106          	cp	a,#6
1858  0018 2603          	jrne	L412
1859  001a               L612:
1860  001a 4f            	clr	a
1861  001b 2010          	jra	L022
1862  001d               L412:
1863  001d ae0175        	ldw	x,#373
1864  0020 89            	pushw	x
1865  0021 ae0000        	ldw	x,#0
1866  0024 89            	pushw	x
1867  0025 ae0000        	ldw	x,#L102
1868  0028 cd0000        	call	_assert_failed
1870  002b 5b04          	addw	sp,#4
1871  002d               L022:
1872                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1874  002d 7b03          	ld	a,(OFST+1,sp)
1875  002f a40f          	and	a,#15
1876  0031 5f            	clrw	x
1877  0032 97            	ld	xl,a
1878  0033 a601          	ld	a,#1
1879  0035 5d            	tnzw	x
1880  0036 2704          	jreq	L222
1881  0038               L422:
1882  0038 48            	sll	a
1883  0039 5a            	decw	x
1884  003a 26fc          	jrne	L422
1885  003c               L222:
1886  003c 6b01          	ld	(OFST-1,sp),a
1887                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1889  003e 7b03          	ld	a,(OFST+1,sp)
1890  0040 4e            	swap	a
1891  0041 a40f          	and	a,#15
1892  0043 6b02          	ld	(OFST+0,sp),a
1893                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1895  0045 7b02          	ld	a,(OFST+0,sp)
1896  0047 5f            	clrw	x
1897  0048 97            	ld	xl,a
1898  0049 a601          	ld	a,#1
1899  004b 5d            	tnzw	x
1900  004c 2704          	jreq	L622
1901  004e               L032:
1902  004e 48            	sll	a
1903  004f 5a            	decw	x
1904  0050 26fc          	jrne	L032
1905  0052               L622:
1906  0052 6b02          	ld	(OFST+0,sp),a
1907                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1909  0054 c65203        	ld	a,20995
1910  0057 1402          	and	a,(OFST+0,sp)
1911  0059 6b02          	ld	(OFST+0,sp),a
1912                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1914  005b c65202        	ld	a,20994
1915  005e 1501          	bcp	a,(OFST-1,sp)
1916  0060 270a          	jreq	L156
1918  0062 0d02          	tnz	(OFST+0,sp)
1919  0064 2706          	jreq	L156
1920                     ; 387     pendingbitstatus = SET;
1922  0066 a601          	ld	a,#1
1923  0068 6b02          	ld	(OFST+0,sp),a
1925  006a 2002          	jra	L356
1926  006c               L156:
1927                     ; 392     pendingbitstatus = RESET;
1929  006c 0f02          	clr	(OFST+0,sp)
1930  006e               L356:
1931                     ; 395   return  pendingbitstatus;
1933  006e 7b02          	ld	a,(OFST+0,sp)
1936  0070 5b03          	addw	sp,#3
1937  0072 81            	ret
1981                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1981                     ; 413 {
1982                     .text:	section	.text,new
1983  0000               _SPI_ClearITPendingBit:
1985  0000 88            	push	a
1986  0001 88            	push	a
1987       00000001      OFST:	set	1
1990                     ; 414   uint8_t itpos = 0;
1992                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1994  0002 a145          	cp	a,#69
1995  0004 2704          	jreq	L632
1996  0006 a134          	cp	a,#52
1997  0008 2603          	jrne	L432
1998  000a               L632:
1999  000a 4f            	clr	a
2000  000b 2010          	jra	L042
2001  000d               L432:
2002  000d ae019f        	ldw	x,#415
2003  0010 89            	pushw	x
2004  0011 ae0000        	ldw	x,#0
2005  0014 89            	pushw	x
2006  0015 ae0000        	ldw	x,#L102
2007  0018 cd0000        	call	_assert_failed
2009  001b 5b04          	addw	sp,#4
2010  001d               L042:
2011                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2013  001d 7b02          	ld	a,(OFST+1,sp)
2014  001f a4f0          	and	a,#240
2015  0021 4e            	swap	a
2016  0022 a40f          	and	a,#15
2017  0024 5f            	clrw	x
2018  0025 97            	ld	xl,a
2019  0026 a601          	ld	a,#1
2020  0028 5d            	tnzw	x
2021  0029 2704          	jreq	L242
2022  002b               L442:
2023  002b 48            	sll	a
2024  002c 5a            	decw	x
2025  002d 26fc          	jrne	L442
2026  002f               L242:
2027  002f 6b01          	ld	(OFST+0,sp),a
2028                     ; 422   SPI->SR = (uint8_t)(~itpos);
2030  0031 7b01          	ld	a,(OFST+0,sp)
2031  0033 43            	cpl	a
2032  0034 c75203        	ld	20995,a
2033                     ; 424 }
2036  0037 85            	popw	x
2037  0038 81            	ret
2050                     	xdef	_SPI_ClearITPendingBit
2051                     	xdef	_SPI_GetITStatus
2052                     	xdef	_SPI_ClearFlag
2053                     	xdef	_SPI_GetFlagStatus
2054                     	xdef	_SPI_BiDirectionalLineConfig
2055                     	xdef	_SPI_GetCRCPolynomial
2056                     	xdef	_SPI_ResetCRC
2057                     	xdef	_SPI_GetCRC
2058                     	xdef	_SPI_CalculateCRCCmd
2059                     	xdef	_SPI_TransmitCRC
2060                     	xdef	_SPI_NSSInternalSoftwareCmd
2061                     	xdef	_SPI_ReceiveData
2062                     	xdef	_SPI_SendData
2063                     	xdef	_SPI_ITConfig
2064                     	xdef	_SPI_Cmd
2065                     	xdef	_SPI_Init
2066                     	xdef	_SPI_DeInit
2067                     	xref	_assert_failed
2068                     .const:	section	.text
2069  0000               L102:
2070  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2071  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2072  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
2073  0036 5f7370692e63  	dc.b	"_spi.c",0
2093                     	end
