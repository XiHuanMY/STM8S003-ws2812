   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
 115                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 115                     ; 54 {
 117                     .text:	section	.text,new
 118  0000               _GPIO_DeInit:
 122                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 124  0000 7f            	clr	(x)
 125                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 127  0001 6f02          	clr	(2,x)
 128                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 130  0003 6f03          	clr	(3,x)
 131                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 133  0005 6f04          	clr	(4,x)
 134                     ; 59 }
 137  0007 81            	ret	
 378                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 378                     ; 72 {
 379                     .text:	section	.text,new
 380  0000               _GPIO_Init:
 382  0000 89            	pushw	x
 383       00000000      OFST:	set	0
 386                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 388  0001 7b06          	ld	a,(OFST+6,sp)
 389  0003 2731          	jreq	L41
 390  0005 a140          	cp	a,#64
 391  0007 272d          	jreq	L41
 392  0009 a120          	cp	a,#32
 393  000b 2729          	jreq	L41
 394  000d a160          	cp	a,#96
 395  000f 2725          	jreq	L41
 396  0011 a1a0          	cp	a,#160
 397  0013 2721          	jreq	L41
 398  0015 a1e0          	cp	a,#224
 399  0017 271d          	jreq	L41
 400  0019 a180          	cp	a,#128
 401  001b 2719          	jreq	L41
 402  001d a1c0          	cp	a,#192
 403  001f 2715          	jreq	L41
 404  0021 a1b0          	cp	a,#176
 405  0023 2711          	jreq	L41
 406  0025 a1f0          	cp	a,#240
 407  0027 270d          	jreq	L41
 408  0029 a190          	cp	a,#144
 409  002b 2709          	jreq	L41
 410  002d a1d0          	cp	a,#208
 411  002f 2705          	jreq	L41
 412  0031 ae004d        	ldw	x,#77
 413  0034 ad5d          	call	LC001
 414  0036               L41:
 415                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 417  0036 7b05          	ld	a,(OFST+5,sp)
 418  0038 2607          	jrne	L22
 419  003a ae004e        	ldw	x,#78
 420  003d ad54          	call	LC001
 421  003f 7b05          	ld	a,(OFST+5,sp)
 422  0041               L22:
 423                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 425  0041 1e01          	ldw	x,(OFST+1,sp)
 426  0043 43            	cpl	a
 427  0044 e404          	and	a,(4,x)
 428  0046 e704          	ld	(4,x),a
 429                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 431  0048 7b06          	ld	a,(OFST+6,sp)
 432  004a 2a14          	jrpl	L102
 433                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 435  004c a510          	bcp	a,#16
 436  004e 2705          	jreq	L302
 437                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 439  0050 f6            	ld	a,(x)
 440  0051 1a05          	or	a,(OFST+5,sp)
 442  0053 2004          	jra	L502
 443  0055               L302:
 444                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 446  0055 7b05          	ld	a,(OFST+5,sp)
 447  0057 43            	cpl	a
 448  0058 f4            	and	a,(x)
 449  0059               L502:
 450  0059 f7            	ld	(x),a
 451                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 453  005a e602          	ld	a,(2,x)
 454  005c 1a05          	or	a,(OFST+5,sp)
 456  005e 2005          	jra	L702
 457  0060               L102:
 458                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 460  0060 7b05          	ld	a,(OFST+5,sp)
 461  0062 43            	cpl	a
 462  0063 e402          	and	a,(2,x)
 463  0065               L702:
 464  0065 e702          	ld	(2,x),a
 465                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 467  0067 7b06          	ld	a,(OFST+6,sp)
 468  0069 a540          	bcp	a,#64
 469  006b 2706          	jreq	L112
 470                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 472  006d e603          	ld	a,(3,x)
 473  006f 1a05          	or	a,(OFST+5,sp)
 475  0071 2005          	jra	L312
 476  0073               L112:
 477                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 479  0073 7b05          	ld	a,(OFST+5,sp)
 480  0075 43            	cpl	a
 481  0076 e403          	and	a,(3,x)
 482  0078               L312:
 483  0078 e703          	ld	(3,x),a
 484                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 486  007a 7b06          	ld	a,(OFST+6,sp)
 487  007c a520          	bcp	a,#32
 488  007e 2708          	jreq	L512
 489                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 491  0080 1e01          	ldw	x,(OFST+1,sp)
 492  0082 e604          	ld	a,(4,x)
 493  0084 1a05          	or	a,(OFST+5,sp)
 495  0086 2007          	jra	L712
 496  0088               L512:
 497                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 499  0088 1e01          	ldw	x,(OFST+1,sp)
 500  008a 7b05          	ld	a,(OFST+5,sp)
 501  008c 43            	cpl	a
 502  008d e404          	and	a,(4,x)
 503  008f               L712:
 504  008f e704          	ld	(4,x),a
 505                     ; 131 }
 508  0091 85            	popw	x
 509  0092 81            	ret	
 510  0093               LC001:
 511  0093 89            	pushw	x
 512  0094 5f            	clrw	x
 513  0095 89            	pushw	x
 514  0096 ae0000        	ldw	x,#L771
 515  0099 cd0000        	call	_assert_failed
 517  009c 5b04          	addw	sp,#4
 518  009e 81            	ret	
 564                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 564                     ; 142 {
 565                     .text:	section	.text,new
 566  0000               _GPIO_Write:
 568  0000 89            	pushw	x
 569       00000000      OFST:	set	0
 572                     ; 143   GPIOx->ODR = PortVal;
 574  0001 1e01          	ldw	x,(OFST+1,sp)
 575  0003 7b05          	ld	a,(OFST+5,sp)
 576  0005 f7            	ld	(x),a
 577                     ; 144 }
 580  0006 85            	popw	x
 581  0007 81            	ret	
 628                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 628                     ; 155 {
 629                     .text:	section	.text,new
 630  0000               _GPIO_WriteHigh:
 632  0000 89            	pushw	x
 633       00000000      OFST:	set	0
 636                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 638  0001 f6            	ld	a,(x)
 639  0002 1a05          	or	a,(OFST+5,sp)
 640  0004 f7            	ld	(x),a
 641                     ; 157 }
 644  0005 85            	popw	x
 645  0006 81            	ret	
 692                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 692                     ; 168 {
 693                     .text:	section	.text,new
 694  0000               _GPIO_WriteLow:
 696  0000 89            	pushw	x
 697       00000000      OFST:	set	0
 700                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 702  0001 7b05          	ld	a,(OFST+5,sp)
 703  0003 43            	cpl	a
 704  0004 f4            	and	a,(x)
 705  0005 f7            	ld	(x),a
 706                     ; 170 }
 709  0006 85            	popw	x
 710  0007 81            	ret	
 757                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 757                     ; 181 {
 758                     .text:	section	.text,new
 759  0000               _GPIO_WriteReverse:
 761  0000 89            	pushw	x
 762       00000000      OFST:	set	0
 765                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 767  0001 f6            	ld	a,(x)
 768  0002 1805          	xor	a,(OFST+5,sp)
 769  0004 f7            	ld	(x),a
 770                     ; 183 }
 773  0005 85            	popw	x
 774  0006 81            	ret	
 812                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 812                     ; 192 {
 813                     .text:	section	.text,new
 814  0000               _GPIO_ReadOutputData:
 818                     ; 193   return ((uint8_t)GPIOx->ODR);
 820  0000 f6            	ld	a,(x)
 823  0001 81            	ret	
 860                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 860                     ; 203 {
 861                     .text:	section	.text,new
 862  0000               _GPIO_ReadInputData:
 866                     ; 204   return ((uint8_t)GPIOx->IDR);
 868  0000 e601          	ld	a,(1,x)
 871  0002 81            	ret	
 939                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 939                     ; 214 {
 940                     .text:	section	.text,new
 941  0000               _GPIO_ReadInputPin:
 943  0000 89            	pushw	x
 944       00000000      OFST:	set	0
 947                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 949  0001 e601          	ld	a,(1,x)
 950  0003 1405          	and	a,(OFST+5,sp)
 953  0005 85            	popw	x
 954  0006 81            	ret	
1033                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1033                     ; 226 {
1034                     .text:	section	.text,new
1035  0000               _GPIO_ExternalPullUpConfig:
1037  0000 89            	pushw	x
1038       00000000      OFST:	set	0
1041                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1043  0001 7b05          	ld	a,(OFST+5,sp)
1044  0003 2605          	jrne	L05
1045  0005 ae00e4        	ldw	x,#228
1046  0008 ad23          	call	LC002
1047  000a               L05:
1048                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1050  000a 7b06          	ld	a,(OFST+6,sp)
1051  000c 2708          	jreq	L06
1052  000e 4a            	dec	a
1053  000f 2705          	jreq	L06
1054  0011 ae00e5        	ldw	x,#229
1055  0014 ad17          	call	LC002
1056  0016               L06:
1057                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1059  0016 7b06          	ld	a,(OFST+6,sp)
1060  0018 2708          	jreq	L574
1061                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1063  001a 1e01          	ldw	x,(OFST+1,sp)
1064  001c e603          	ld	a,(3,x)
1065  001e 1a05          	or	a,(OFST+5,sp)
1067  0020 2007          	jra	L774
1068  0022               L574:
1069                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1071  0022 1e01          	ldw	x,(OFST+1,sp)
1072  0024 7b05          	ld	a,(OFST+5,sp)
1073  0026 43            	cpl	a
1074  0027 e403          	and	a,(3,x)
1075  0029               L774:
1076  0029 e703          	ld	(3,x),a
1077                     ; 238 }
1080  002b 85            	popw	x
1081  002c 81            	ret	
1082  002d               LC002:
1083  002d 89            	pushw	x
1084  002e 5f            	clrw	x
1085  002f 89            	pushw	x
1086  0030 ae0000        	ldw	x,#L771
1087  0033 cd0000        	call	_assert_failed
1089  0036 5b04          	addw	sp,#4
1090  0038 81            	ret	
1103                     	xdef	_GPIO_ExternalPullUpConfig
1104                     	xdef	_GPIO_ReadInputPin
1105                     	xdef	_GPIO_ReadOutputData
1106                     	xdef	_GPIO_ReadInputData
1107                     	xdef	_GPIO_WriteReverse
1108                     	xdef	_GPIO_WriteLow
1109                     	xdef	_GPIO_WriteHigh
1110                     	xdef	_GPIO_Write
1111                     	xdef	_GPIO_Init
1112                     	xdef	_GPIO_DeInit
1113                     	xref	_assert_failed
1114                     .const:	section	.text
1115  0000               L771:
1116  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1117  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1118  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1119  0036 5f6770696f2e  	dc.b	"_gpio.c",0
1139                     	end
