   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 50 void SPI_DeInit(void)
  49                     ; 51 {
  51                     .text:	section	.text,new
  52  0000               _SPI_DeInit:
  56                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  58  0000 725f5200      	clr	20992
  59                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  61  0004 725f5201      	clr	20993
  62                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  64  0008 725f5202      	clr	20994
  65                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  67  000c 35025203      	mov	20995,#2
  68                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  70  0010 35075205      	mov	20997,#7
  71                     ; 57 }
  74  0014 81            	ret	
 391                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 391                     ; 79 {
 392                     .text:	section	.text,new
 393  0000               _SPI_Init:
 395  0000 89            	pushw	x
 396  0001 88            	push	a
 397       00000001      OFST:	set	1
 400                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 402  0002 9e            	ld	a,xh
 403  0003 4d            	tnz	a
 404  0004 270b          	jreq	L41
 405  0006 9e            	ld	a,xh
 406  0007 a180          	cp	a,#128
 407  0009 2706          	jreq	L41
 408  000b ae0051        	ldw	x,#81
 409  000e cd00c2        	call	LC001
 410  0011               L41:
 411                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 413  0011 7b03          	ld	a,(OFST+2,sp)
 414  0013 2722          	jreq	L42
 415  0015 a108          	cp	a,#8
 416  0017 271e          	jreq	L42
 417  0019 a110          	cp	a,#16
 418  001b 271a          	jreq	L42
 419  001d a118          	cp	a,#24
 420  001f 2716          	jreq	L42
 421  0021 a120          	cp	a,#32
 422  0023 2712          	jreq	L42
 423  0025 a128          	cp	a,#40
 424  0027 270e          	jreq	L42
 425  0029 a130          	cp	a,#48
 426  002b 270a          	jreq	L42
 427  002d a138          	cp	a,#56
 428  002f 2706          	jreq	L42
 429  0031 ae0052        	ldw	x,#82
 430  0034 cd00c2        	call	LC001
 431  0037               L42:
 432                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 434  0037 7b06          	ld	a,(OFST+5,sp)
 435  0039 a104          	cp	a,#4
 436  003b 2709          	jreq	L43
 437  003d 7b06          	ld	a,(OFST+5,sp)
 438  003f 2705          	jreq	L43
 439  0041 ae0053        	ldw	x,#83
 440  0044 ad7c          	call	LC001
 441  0046               L43:
 442                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 444  0046 7b07          	ld	a,(OFST+6,sp)
 445  0048 2709          	jreq	L44
 446  004a a102          	cp	a,#2
 447  004c 2705          	jreq	L44
 448  004e ae0054        	ldw	x,#84
 449  0051 ad6f          	call	LC001
 450  0053               L44:
 451                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 453  0053 7b08          	ld	a,(OFST+7,sp)
 454  0055 2708          	jreq	L45
 455  0057 4a            	dec	a
 456  0058 2705          	jreq	L45
 457  005a ae0055        	ldw	x,#85
 458  005d ad63          	call	LC001
 459  005f               L45:
 460                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 462  005f 7b09          	ld	a,(OFST+8,sp)
 463  0061 2711          	jreq	L46
 464  0063 a104          	cp	a,#4
 465  0065 270d          	jreq	L46
 466  0067 a180          	cp	a,#128
 467  0069 2709          	jreq	L46
 468  006b a1c0          	cp	a,#192
 469  006d 2705          	jreq	L46
 470  006f ae0056        	ldw	x,#86
 471  0072 ad4e          	call	LC001
 472  0074               L46:
 473                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 475  0074 7b0a          	ld	a,(OFST+9,sp)
 476  0076 a102          	cp	a,#2
 477  0078 2709          	jreq	L47
 478  007a 7b0a          	ld	a,(OFST+9,sp)
 479  007c 2705          	jreq	L47
 480  007e ae0057        	ldw	x,#87
 481  0081 ad3f          	call	LC001
 482  0083               L47:
 483                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 485  0083 7b0b          	ld	a,(OFST+10,sp)
 486  0085 2605          	jrne	L201
 487  0087 ae0058        	ldw	x,#88
 488  008a ad36          	call	LC001
 489  008c               L201:
 490                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 490                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 492  008c 7b07          	ld	a,(OFST+6,sp)
 493  008e 1a08          	or	a,(OFST+7,sp)
 494  0090 6b01          	ld	(OFST+0,sp),a
 495  0092 7b02          	ld	a,(OFST+1,sp)
 496  0094 1a03          	or	a,(OFST+2,sp)
 497  0096 1a01          	or	a,(OFST+0,sp)
 498  0098 c75200        	ld	20992,a
 499                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 501  009b 7b09          	ld	a,(OFST+8,sp)
 502  009d 1a0a          	or	a,(OFST+9,sp)
 503  009f c75201        	ld	20993,a
 504                     ; 97   if (Mode == SPI_MODE_MASTER)
 506  00a2 7b06          	ld	a,(OFST+5,sp)
 507  00a4 a104          	cp	a,#4
 508  00a6 2606          	jrne	L502
 509                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 511  00a8 72105201      	bset	20993,#0
 513  00ac 2004          	jra	L702
 514  00ae               L502:
 515                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 517  00ae 72115201      	bres	20993,#0
 518  00b2               L702:
 519                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 521  00b2 c65200        	ld	a,20992
 522  00b5 1a06          	or	a,(OFST+5,sp)
 523  00b7 c75200        	ld	20992,a
 524                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 526  00ba 7b0b          	ld	a,(OFST+10,sp)
 527  00bc c75205        	ld	20997,a
 528                     ; 111 }
 531  00bf 5b03          	addw	sp,#3
 532  00c1 81            	ret	
 533  00c2               LC001:
 534  00c2 89            	pushw	x
 535  00c3 5f            	clrw	x
 536  00c4 89            	pushw	x
 537  00c5 ae0000        	ldw	x,#L302
 538  00c8 cd0000        	call	_assert_failed
 540  00cb 5b04          	addw	sp,#4
 541  00cd 81            	ret	
 597                     ; 119 void SPI_Cmd(FunctionalState NewState)
 597                     ; 120 {
 598                     .text:	section	.text,new
 599  0000               _SPI_Cmd:
 601  0000 88            	push	a
 602       00000000      OFST:	set	0
 605                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 607  0001 4d            	tnz	a
 608  0002 2711          	jreq	L411
 609  0004 4a            	dec	a
 610  0005 270e          	jreq	L411
 611  0007 ae007a        	ldw	x,#122
 612  000a 89            	pushw	x
 613  000b 5f            	clrw	x
 614  000c 89            	pushw	x
 615  000d ae0000        	ldw	x,#L302
 616  0010 cd0000        	call	_assert_failed
 618  0013 5b04          	addw	sp,#4
 619  0015               L411:
 620                     ; 124   if (NewState != DISABLE)
 622  0015 7b01          	ld	a,(OFST+1,sp)
 623  0017 2706          	jreq	L732
 624                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 626  0019 721c5200      	bset	20992,#6
 628  001d 2004          	jra	L142
 629  001f               L732:
 630                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 632  001f 721d5200      	bres	20992,#6
 633  0023               L142:
 634                     ; 132 }
 637  0023 84            	pop	a
 638  0024 81            	ret	
 748                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 748                     ; 142 {
 749                     .text:	section	.text,new
 750  0000               _SPI_ITConfig:
 752  0000 89            	pushw	x
 753  0001 88            	push	a
 754       00000001      OFST:	set	1
 757                     ; 143   uint8_t itpos = 0;
 759                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 761  0002 9e            	ld	a,xh
 762  0003 a117          	cp	a,#23
 763  0005 2714          	jreq	L621
 764  0007 9e            	ld	a,xh
 765  0008 a106          	cp	a,#6
 766  000a 270f          	jreq	L621
 767  000c 9e            	ld	a,xh
 768  000d a105          	cp	a,#5
 769  000f 270a          	jreq	L621
 770  0011 9e            	ld	a,xh
 771  0012 a134          	cp	a,#52
 772  0014 2705          	jreq	L621
 773  0016 ae0091        	ldw	x,#145
 774  0019 ad32          	call	LC002
 775  001b               L621:
 776                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 778  001b 7b03          	ld	a,(OFST+2,sp)
 779  001d 2708          	jreq	L631
 780  001f 4a            	dec	a
 781  0020 2705          	jreq	L631
 782  0022 ae0092        	ldw	x,#146
 783  0025 ad26          	call	LC002
 784  0027               L631:
 785                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 787  0027 7b02          	ld	a,(OFST+1,sp)
 788  0029 a40f          	and	a,#15
 789  002b 5f            	clrw	x
 790  002c 97            	ld	xl,a
 791  002d a601          	ld	a,#1
 792  002f 5d            	tnzw	x
 793  0030 2704          	jreq	L241
 794  0032               L441:
 795  0032 48            	sll	a
 796  0033 5a            	decw	x
 797  0034 26fc          	jrne	L441
 798  0036               L241:
 799  0036 6b01          	ld	(OFST+0,sp),a
 800                     ; 151   if (NewState != DISABLE)
 802  0038 0d03          	tnz	(OFST+2,sp)
 803  003a 2707          	jreq	L313
 804                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 806  003c c65202        	ld	a,20994
 807  003f 1a01          	or	a,(OFST+0,sp)
 809  0041 2004          	jra	L513
 810  0043               L313:
 811                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 813  0043 43            	cpl	a
 814  0044 c45202        	and	a,20994
 815  0047               L513:
 816  0047 c75202        	ld	20994,a
 817                     ; 159 }
 820  004a 5b03          	addw	sp,#3
 821  004c 81            	ret	
 822  004d               LC002:
 823  004d 89            	pushw	x
 824  004e 5f            	clrw	x
 825  004f 89            	pushw	x
 826  0050 ae0000        	ldw	x,#L302
 827  0053 cd0000        	call	_assert_failed
 829  0056 5b04          	addw	sp,#4
 830  0058 81            	ret	
 864                     ; 166 void SPI_SendData(uint8_t Data)
 864                     ; 167 {
 865                     .text:	section	.text,new
 866  0000               _SPI_SendData:
 870                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 872  0000 c75204        	ld	20996,a
 873                     ; 169 }
 876  0003 81            	ret	
 899                     ; 176 uint8_t SPI_ReceiveData(void)
 899                     ; 177 {
 900                     .text:	section	.text,new
 901  0000               _SPI_ReceiveData:
 905                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 907  0000 c65204        	ld	a,20996
 910  0003 81            	ret	
 947                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 947                     ; 188 {
 948                     .text:	section	.text,new
 949  0000               _SPI_NSSInternalSoftwareCmd:
 951  0000 88            	push	a
 952       00000000      OFST:	set	0
 955                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 957  0001 4d            	tnz	a
 958  0002 2711          	jreq	L061
 959  0004 4a            	dec	a
 960  0005 270e          	jreq	L061
 961  0007 ae00be        	ldw	x,#190
 962  000a 89            	pushw	x
 963  000b 5f            	clrw	x
 964  000c 89            	pushw	x
 965  000d ae0000        	ldw	x,#L302
 966  0010 cd0000        	call	_assert_failed
 968  0013 5b04          	addw	sp,#4
 969  0015               L061:
 970                     ; 192   if (NewState != DISABLE)
 972  0015 7b01          	ld	a,(OFST+1,sp)
 973  0017 2706          	jreq	L363
 974                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 976  0019 72105201      	bset	20993,#0
 978  001d 2004          	jra	L563
 979  001f               L363:
 980                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 982  001f 72115201      	bres	20993,#0
 983  0023               L563:
 984                     ; 200 }
 987  0023 84            	pop	a
 988  0024 81            	ret	
1011                     ; 207 void SPI_TransmitCRC(void)
1011                     ; 208 {
1012                     .text:	section	.text,new
1013  0000               _SPI_TransmitCRC:
1017                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1019  0000 72185201      	bset	20993,#4
1020                     ; 210 }
1023  0004 81            	ret	
1060                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1060                     ; 219 {
1061                     .text:	section	.text,new
1062  0000               _SPI_CalculateCRCCmd:
1064  0000 88            	push	a
1065       00000000      OFST:	set	0
1068                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1070  0001 4d            	tnz	a
1071  0002 2711          	jreq	L471
1072  0004 4a            	dec	a
1073  0005 270e          	jreq	L471
1074  0007 ae00dd        	ldw	x,#221
1075  000a 89            	pushw	x
1076  000b 5f            	clrw	x
1077  000c 89            	pushw	x
1078  000d ae0000        	ldw	x,#L302
1079  0010 cd0000        	call	_assert_failed
1081  0013 5b04          	addw	sp,#4
1082  0015               L471:
1083                     ; 223   if (NewState != DISABLE)
1085  0015 7b01          	ld	a,(OFST+1,sp)
1086  0017 2706          	jreq	L514
1087                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1089  0019 721a5201      	bset	20993,#5
1091  001d 2004          	jra	L714
1092  001f               L514:
1093                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1095  001f 721b5201      	bres	20993,#5
1096  0023               L714:
1097                     ; 231 }
1100  0023 84            	pop	a
1101  0024 81            	ret	
1166                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1166                     ; 239 {
1167                     .text:	section	.text,new
1168  0000               _SPI_GetCRC:
1170  0000 88            	push	a
1171  0001 88            	push	a
1172       00000001      OFST:	set	1
1175                     ; 240   uint8_t crcreg = 0;
1177                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1179  0002 a101          	cp	a,#1
1180  0004 2711          	jreq	L602
1181  0006 4d            	tnz	a
1182  0007 270e          	jreq	L602
1183  0009 ae00f3        	ldw	x,#243
1184  000c 89            	pushw	x
1185  000d 5f            	clrw	x
1186  000e 89            	pushw	x
1187  000f ae0000        	ldw	x,#L302
1188  0012 cd0000        	call	_assert_failed
1190  0015 5b04          	addw	sp,#4
1191  0017               L602:
1192                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1194  0017 7b02          	ld	a,(OFST+1,sp)
1195  0019 2705          	jreq	L354
1196                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1198  001b c65207        	ld	a,20999
1200  001e 2003          	jra	L554
1201  0020               L354:
1202                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1204  0020 c65206        	ld	a,20998
1205  0023               L554:
1206                     ; 255   return crcreg;
1210  0023 85            	popw	x
1211  0024 81            	ret	
1236                     ; 263 void SPI_ResetCRC(void)
1236                     ; 264 {
1237                     .text:	section	.text,new
1238  0000               _SPI_ResetCRC:
1242                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1244  0000 a601          	ld	a,#1
1245  0002 cd0000        	call	_SPI_CalculateCRCCmd
1247                     ; 270   SPI_Cmd(ENABLE);
1249  0005 a601          	ld	a,#1
1251                     ; 271 }
1254  0007 cc0000        	jp	_SPI_Cmd
1278                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1278                     ; 279 {
1279                     .text:	section	.text,new
1280  0000               _SPI_GetCRCPolynomial:
1284                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1286  0000 c65205        	ld	a,20997
1289  0003 81            	ret	
1346                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1346                     ; 289 {
1347                     .text:	section	.text,new
1348  0000               _SPI_BiDirectionalLineConfig:
1350  0000 88            	push	a
1351       00000000      OFST:	set	0
1354                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1356  0001 4d            	tnz	a
1357  0002 2711          	jreq	L032
1358  0004 4a            	dec	a
1359  0005 270e          	jreq	L032
1360  0007 ae0123        	ldw	x,#291
1361  000a 89            	pushw	x
1362  000b 5f            	clrw	x
1363  000c 89            	pushw	x
1364  000d ae0000        	ldw	x,#L302
1365  0010 cd0000        	call	_assert_failed
1367  0013 5b04          	addw	sp,#4
1368  0015               L032:
1369                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1371  0015 7b01          	ld	a,(OFST+1,sp)
1372  0017 2706          	jreq	L525
1373                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1375  0019 721c5201      	bset	20993,#6
1377  001d 2004          	jra	L725
1378  001f               L525:
1379                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1381  001f 721d5201      	bres	20993,#6
1382  0023               L725:
1383                     ; 301 }
1386  0023 84            	pop	a
1387  0024 81            	ret	
1509                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1509                     ; 312 {
1510                     .text:	section	.text,new
1511  0000               _SPI_GetFlagStatus:
1513  0000 88            	push	a
1514  0001 88            	push	a
1515       00000001      OFST:	set	1
1518                     ; 313   FlagStatus status = RESET;
1520                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1522  0002 a140          	cp	a,#64
1523  0004 2726          	jreq	L242
1524  0006 a120          	cp	a,#32
1525  0008 2722          	jreq	L242
1526  000a a110          	cp	a,#16
1527  000c 271e          	jreq	L242
1528  000e a108          	cp	a,#8
1529  0010 271a          	jreq	L242
1530  0012 a102          	cp	a,#2
1531  0014 2716          	jreq	L242
1532  0016 a101          	cp	a,#1
1533  0018 2712          	jreq	L242
1534  001a a180          	cp	a,#128
1535  001c 270e          	jreq	L242
1536  001e ae013b        	ldw	x,#315
1537  0021 89            	pushw	x
1538  0022 5f            	clrw	x
1539  0023 89            	pushw	x
1540  0024 ae0000        	ldw	x,#L302
1541  0027 cd0000        	call	_assert_failed
1543  002a 5b04          	addw	sp,#4
1544  002c               L242:
1545                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1547  002c c65203        	ld	a,20995
1548  002f 1502          	bcp	a,(OFST+1,sp)
1549  0031 2704          	jreq	L506
1550                     ; 320     status = SET; /* SPI_FLAG is set */
1552  0033 a601          	ld	a,#1
1554  0035 2001          	jra	L706
1555  0037               L506:
1556                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1558  0037 4f            	clr	a
1559  0038               L706:
1560                     ; 328   return status;
1564  0038 85            	popw	x
1565  0039 81            	ret	
1601                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1601                     ; 347 {
1602                     .text:	section	.text,new
1603  0000               _SPI_ClearFlag:
1605  0000 88            	push	a
1606       00000000      OFST:	set	0
1609                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1611  0001 a110          	cp	a,#16
1612  0003 2712          	jreq	L452
1613  0005 a108          	cp	a,#8
1614  0007 270e          	jreq	L452
1615  0009 ae015c        	ldw	x,#348
1616  000c 89            	pushw	x
1617  000d 5f            	clrw	x
1618  000e 89            	pushw	x
1619  000f ae0000        	ldw	x,#L302
1620  0012 cd0000        	call	_assert_failed
1622  0015 5b04          	addw	sp,#4
1623  0017               L452:
1624                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1626  0017 7b01          	ld	a,(OFST+1,sp)
1627  0019 43            	cpl	a
1628  001a c75203        	ld	20995,a
1629                     ; 351 }
1632  001d 84            	pop	a
1633  001e 81            	ret	
1716                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1716                     ; 367 {
1717                     .text:	section	.text,new
1718  0000               _SPI_GetITStatus:
1720  0000 88            	push	a
1721  0001 89            	pushw	x
1722       00000002      OFST:	set	2
1725                     ; 368   ITStatus pendingbitstatus = RESET;
1727                     ; 369   uint8_t itpos = 0;
1729                     ; 370   uint8_t itmask1 = 0;
1731                     ; 371   uint8_t itmask2 = 0;
1733                     ; 372   uint8_t enablestatus = 0;
1735                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1737  0002 a165          	cp	a,#101
1738  0004 2722          	jreq	L662
1739  0006 a155          	cp	a,#85
1740  0008 271e          	jreq	L662
1741  000a a145          	cp	a,#69
1742  000c 271a          	jreq	L662
1743  000e a134          	cp	a,#52
1744  0010 2716          	jreq	L662
1745  0012 a117          	cp	a,#23
1746  0014 2712          	jreq	L662
1747  0016 a106          	cp	a,#6
1748  0018 270e          	jreq	L662
1749  001a ae0175        	ldw	x,#373
1750  001d 89            	pushw	x
1751  001e 5f            	clrw	x
1752  001f 89            	pushw	x
1753  0020 ae0000        	ldw	x,#L302
1754  0023 cd0000        	call	_assert_failed
1756  0026 5b04          	addw	sp,#4
1757  0028               L662:
1758                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1760  0028 7b03          	ld	a,(OFST+1,sp)
1761  002a a40f          	and	a,#15
1762  002c 5f            	clrw	x
1763  002d 97            	ld	xl,a
1764  002e a601          	ld	a,#1
1765  0030 5d            	tnzw	x
1766  0031 2704          	jreq	L272
1767  0033               L472:
1768  0033 48            	sll	a
1769  0034 5a            	decw	x
1770  0035 26fc          	jrne	L472
1771  0037               L272:
1772  0037 6b01          	ld	(OFST-1,sp),a
1773                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1775  0039 7b03          	ld	a,(OFST+1,sp)
1776  003b 4e            	swap	a
1777  003c a40f          	and	a,#15
1778  003e 6b02          	ld	(OFST+0,sp),a
1779                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1781  0040 5f            	clrw	x
1782  0041 97            	ld	xl,a
1783  0042 a601          	ld	a,#1
1784  0044 5d            	tnzw	x
1785  0045 2704          	jreq	L672
1786  0047               L003:
1787  0047 48            	sll	a
1788  0048 5a            	decw	x
1789  0049 26fc          	jrne	L003
1790  004b               L672:
1791                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1793  004b c45203        	and	a,20995
1794  004e 6b02          	ld	(OFST+0,sp),a
1795                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1797  0050 c65202        	ld	a,20994
1798  0053 1501          	bcp	a,(OFST-1,sp)
1799  0055 2708          	jreq	L176
1801  0057 7b02          	ld	a,(OFST+0,sp)
1802  0059 2704          	jreq	L176
1803                     ; 387     pendingbitstatus = SET;
1805  005b a601          	ld	a,#1
1807  005d 2001          	jra	L376
1808  005f               L176:
1809                     ; 392     pendingbitstatus = RESET;
1811  005f 4f            	clr	a
1812  0060               L376:
1813                     ; 395   return  pendingbitstatus;
1817  0060 5b03          	addw	sp,#3
1818  0062 81            	ret	
1864                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1864                     ; 413 {
1865                     .text:	section	.text,new
1866  0000               _SPI_ClearITPendingBit:
1868  0000 88            	push	a
1869  0001 88            	push	a
1870       00000001      OFST:	set	1
1873                     ; 414   uint8_t itpos = 0;
1875                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1877  0002 a145          	cp	a,#69
1878  0004 2712          	jreq	L013
1879  0006 a134          	cp	a,#52
1880  0008 270e          	jreq	L013
1881  000a ae019f        	ldw	x,#415
1882  000d 89            	pushw	x
1883  000e 5f            	clrw	x
1884  000f 89            	pushw	x
1885  0010 ae0000        	ldw	x,#L302
1886  0013 cd0000        	call	_assert_failed
1888  0016 5b04          	addw	sp,#4
1889  0018               L013:
1890                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1892  0018 7b02          	ld	a,(OFST+1,sp)
1893  001a 4e            	swap	a
1894  001b a40f          	and	a,#15
1895  001d 5f            	clrw	x
1896  001e 97            	ld	xl,a
1897  001f a601          	ld	a,#1
1898  0021 5d            	tnzw	x
1899  0022 2704          	jreq	L413
1900  0024               L613:
1901  0024 48            	sll	a
1902  0025 5a            	decw	x
1903  0026 26fc          	jrne	L613
1904  0028               L413:
1905                     ; 422   SPI->SR = (uint8_t)(~itpos);
1907  0028 43            	cpl	a
1908  0029 c75203        	ld	20995,a
1909                     ; 424 }
1912  002c 85            	popw	x
1913  002d 81            	ret	
1926                     	xdef	_SPI_ClearITPendingBit
1927                     	xdef	_SPI_GetITStatus
1928                     	xdef	_SPI_ClearFlag
1929                     	xdef	_SPI_GetFlagStatus
1930                     	xdef	_SPI_BiDirectionalLineConfig
1931                     	xdef	_SPI_GetCRCPolynomial
1932                     	xdef	_SPI_ResetCRC
1933                     	xdef	_SPI_GetCRC
1934                     	xdef	_SPI_CalculateCRCCmd
1935                     	xdef	_SPI_TransmitCRC
1936                     	xdef	_SPI_NSSInternalSoftwareCmd
1937                     	xdef	_SPI_ReceiveData
1938                     	xdef	_SPI_SendData
1939                     	xdef	_SPI_ITConfig
1940                     	xdef	_SPI_Cmd
1941                     	xdef	_SPI_Init
1942                     	xdef	_SPI_DeInit
1943                     	xref	_assert_failed
1944                     .const:	section	.text
1945  0000               L302:
1946  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1947  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1948  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1949  0036 5f7370692e63  	dc.b	"_spi.c",0
1969                     	end
