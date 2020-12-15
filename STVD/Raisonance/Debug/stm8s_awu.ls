   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  17                     .const:	section	.text
  18  0000               _APR_Array:
  19  0000 00            	dc.b	0
  20  0001 1e            	dc.b	30
  21  0002 1e            	dc.b	30
  22  0003 1e            	dc.b	30
  23  0004 1e            	dc.b	30
  24  0005 1e            	dc.b	30
  25  0006 1e            	dc.b	30
  26  0007 1e            	dc.b	30
  27  0008 1e            	dc.b	30
  28  0009 1e            	dc.b	30
  29  000a 1e            	dc.b	30
  30  000b 1e            	dc.b	30
  31  000c 1e            	dc.b	30
  32  000d 3d            	dc.b	61
  33  000e 17            	dc.b	23
  34  000f 17            	dc.b	23
  35  0010 3e            	dc.b	62
  36  0011               _TBR_Array:
  37  0011 00            	dc.b	0
  38  0012 01            	dc.b	1
  39  0013 02            	dc.b	2
  40  0014 03            	dc.b	3
  41  0015 04            	dc.b	4
  42  0016 05            	dc.b	5
  43  0017 06            	dc.b	6
  44  0018 07            	dc.b	7
  45  0019 08            	dc.b	8
  46  001a 09            	dc.b	9
  47  001b 0a            	dc.b	10
  48  001c 0b            	dc.b	11
  49  001d 0c            	dc.b	12
  50  001e 0c            	dc.b	12
  51  001f 0e            	dc.b	14
  52  0020 0f            	dc.b	15
  53  0021 0f            	dc.b	15
  82                     ; 73 void AWU_DeInit(void)
  82                     ; 74 {
  84                     .text:	section	.text,new
  85  0000               _AWU_DeInit:
  89                     ; 75   AWU->CSR = AWU_CSR_RESET_VALUE;
  91  0000 725f50f0      	clr	20720
  92                     ; 76   AWU->APR = AWU_APR_RESET_VALUE;
  94  0004 353f50f1      	mov	20721,#63
  95                     ; 77   AWU->TBR = AWU_TBR_RESET_VALUE;
  97  0008 725f50f2      	clr	20722
  98                     ; 78 }
 101  000c 81            	ret
 264                     ; 88 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 264                     ; 89 {
 265                     .text:	section	.text,new
 266  0000               _AWU_Init:
 268  0000 88            	push	a
 269       00000000      OFST:	set	0
 272                     ; 91   assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 274  0001 4d            	tnz	a
 275  0002 2740          	jreq	L21
 276  0004 a101          	cp	a,#1
 277  0006 273c          	jreq	L21
 278  0008 a102          	cp	a,#2
 279  000a 2738          	jreq	L21
 280  000c a103          	cp	a,#3
 281  000e 2734          	jreq	L21
 282  0010 a104          	cp	a,#4
 283  0012 2730          	jreq	L21
 284  0014 a105          	cp	a,#5
 285  0016 272c          	jreq	L21
 286  0018 a106          	cp	a,#6
 287  001a 2728          	jreq	L21
 288  001c a107          	cp	a,#7
 289  001e 2724          	jreq	L21
 290  0020 a108          	cp	a,#8
 291  0022 2720          	jreq	L21
 292  0024 a109          	cp	a,#9
 293  0026 271c          	jreq	L21
 294  0028 a10a          	cp	a,#10
 295  002a 2718          	jreq	L21
 296  002c a10b          	cp	a,#11
 297  002e 2714          	jreq	L21
 298  0030 a10c          	cp	a,#12
 299  0032 2710          	jreq	L21
 300  0034 a10d          	cp	a,#13
 301  0036 270c          	jreq	L21
 302  0038 a10e          	cp	a,#14
 303  003a 2708          	jreq	L21
 304  003c a10f          	cp	a,#15
 305  003e 2704          	jreq	L21
 306  0040 a110          	cp	a,#16
 307  0042 2603          	jrne	L01
 308  0044               L21:
 309  0044 4f            	clr	a
 310  0045 2010          	jra	L41
 311  0047               L01:
 312  0047 ae005b        	ldw	x,#91
 313  004a 89            	pushw	x
 314  004b ae0000        	ldw	x,#0
 315  004e 89            	pushw	x
 316  004f ae002e        	ldw	x,#L501
 317  0052 cd0000        	call	_assert_failed
 319  0055 5b04          	addw	sp,#4
 320  0057               L41:
 321                     ; 94   AWU->CSR |= AWU_CSR_AWUEN;
 323  0057 721850f0      	bset	20720,#4
 324                     ; 97   AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 326  005b c650f2        	ld	a,20722
 327  005e a4f0          	and	a,#240
 328  0060 c750f2        	ld	20722,a
 329                     ; 98   AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 331  0063 7b01          	ld	a,(OFST+1,sp)
 332  0065 5f            	clrw	x
 333  0066 97            	ld	xl,a
 334  0067 c650f2        	ld	a,20722
 335  006a da0011        	or	a,(_TBR_Array,x)
 336  006d c750f2        	ld	20722,a
 337                     ; 101   AWU->APR &= (uint8_t)(~AWU_APR_APR);
 339  0070 c650f1        	ld	a,20721
 340  0073 a4c0          	and	a,#192
 341  0075 c750f1        	ld	20721,a
 342                     ; 102   AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 344  0078 7b01          	ld	a,(OFST+1,sp)
 345  007a 5f            	clrw	x
 346  007b 97            	ld	xl,a
 347  007c c650f1        	ld	a,20721
 348  007f da0000        	or	a,(_APR_Array,x)
 349  0082 c750f1        	ld	20721,a
 350                     ; 103 }
 353  0085 84            	pop	a
 354  0086 81            	ret
 409                     ; 112 void AWU_Cmd(FunctionalState NewState)
 409                     ; 113 {
 410                     .text:	section	.text,new
 411  0000               _AWU_Cmd:
 415                     ; 114   if (NewState != DISABLE)
 417  0000 4d            	tnz	a
 418  0001 2706          	jreq	L531
 419                     ; 117     AWU->CSR |= AWU_CSR_AWUEN;
 421  0003 721850f0      	bset	20720,#4
 423  0007 2004          	jra	L731
 424  0009               L531:
 425                     ; 122     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 427  0009 721950f0      	bres	20720,#4
 428  000d               L731:
 429                     ; 124 }
 432  000d 81            	ret
 480                     	switch	.const
 481  0022               L42:
 482  0022 0001adb0      	dc.l	110000
 483  0026               L62:
 484  0026 000249f1      	dc.l	150001
 485  002a               L23:
 486  002a 000003e8      	dc.l	1000
 487                     ; 139 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 487                     ; 140 {
 488                     .text:	section	.text,new
 489  0000               _AWU_LSICalibrationConfig:
 491  0000 5206          	subw	sp,#6
 492       00000006      OFST:	set	6
 495                     ; 141   uint16_t lsifreqkhz = 0x0;
 497                     ; 142   uint16_t A = 0x0;
 499                     ; 145   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 501  0002 96            	ldw	x,sp
 502  0003 1c0009        	addw	x,#OFST+3
 503  0006 cd0000        	call	c_ltor
 505  0009 ae0022        	ldw	x,#L42
 506  000c cd0000        	call	c_lcmp
 508  000f 2512          	jrult	L22
 509  0011 96            	ldw	x,sp
 510  0012 1c0009        	addw	x,#OFST+3
 511  0015 cd0000        	call	c_ltor
 513  0018 ae0026        	ldw	x,#L62
 514  001b cd0000        	call	c_lcmp
 516  001e 2403          	jruge	L22
 517  0020 4f            	clr	a
 518  0021 2010          	jra	L03
 519  0023               L22:
 520  0023 ae0091        	ldw	x,#145
 521  0026 89            	pushw	x
 522  0027 ae0000        	ldw	x,#0
 523  002a 89            	pushw	x
 524  002b ae002e        	ldw	x,#L501
 525  002e cd0000        	call	_assert_failed
 527  0031 5b04          	addw	sp,#4
 528  0033               L03:
 529                     ; 147   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 531  0033 96            	ldw	x,sp
 532  0034 1c0009        	addw	x,#OFST+3
 533  0037 cd0000        	call	c_ltor
 535  003a ae002a        	ldw	x,#L23
 536  003d cd0000        	call	c_ludv
 538  0040 be02          	ldw	x,c_lreg+2
 539  0042 1f03          	ldw	(OFST-3,sp),x
 540                     ; 151   A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 542  0044 1e03          	ldw	x,(OFST-3,sp)
 543  0046 54            	srlw	x
 544  0047 54            	srlw	x
 545  0048 1f05          	ldw	(OFST-1,sp),x
 546                     ; 153   if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 548  004a 1e05          	ldw	x,(OFST-1,sp)
 549  004c 58            	sllw	x
 550  004d 58            	sllw	x
 551  004e 1f01          	ldw	(OFST-5,sp),x
 552  0050 1e03          	ldw	x,(OFST-3,sp)
 553  0052 72f001        	subw	x,(OFST-5,sp)
 554  0055 1605          	ldw	y,(OFST-1,sp)
 555  0057 9058          	sllw	y
 556  0059 905c          	incw	y
 557  005b cd0000        	call	c_imul
 559  005e 1605          	ldw	y,(OFST-1,sp)
 560  0060 9058          	sllw	y
 561  0062 9058          	sllw	y
 562  0064 bf00          	ldw	c_x,x
 563  0066 90b300        	cpw	y,c_x
 564  0069 2509          	jrult	L161
 565                     ; 155     AWU->APR = (uint8_t)(A - 2U);
 567  006b 7b06          	ld	a,(OFST+0,sp)
 568  006d a002          	sub	a,#2
 569  006f c750f1        	ld	20721,a
 571  0072 2006          	jra	L361
 572  0074               L161:
 573                     ; 159     AWU->APR = (uint8_t)(A - 1U);
 575  0074 7b06          	ld	a,(OFST+0,sp)
 576  0076 4a            	dec	a
 577  0077 c750f1        	ld	20721,a
 578  007a               L361:
 579                     ; 161 }
 582  007a 5b06          	addw	sp,#6
 583  007c 81            	ret
 606                     ; 168 void AWU_IdleModeEnable(void)
 606                     ; 169 {
 607                     .text:	section	.text,new
 608  0000               _AWU_IdleModeEnable:
 612                     ; 171   AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 614  0000 721950f0      	bres	20720,#4
 615                     ; 174   AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 617  0004 35f050f2      	mov	20722,#240
 618                     ; 175 }
 621  0008 81            	ret
 665                     ; 183 FlagStatus AWU_GetFlagStatus(void)
 665                     ; 184 {
 666                     .text:	section	.text,new
 667  0000               _AWU_GetFlagStatus:
 671                     ; 185   return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 673  0000 c650f0        	ld	a,20720
 674  0003 a520          	bcp	a,#32
 675  0005 2603          	jrne	L04
 676  0007 4f            	clr	a
 677  0008 2002          	jra	L24
 678  000a               L04:
 679  000a a601          	ld	a,#1
 680  000c               L24:
 683  000c 81            	ret
 718                     	xdef	_TBR_Array
 719                     	xdef	_APR_Array
 720                     	xdef	_AWU_GetFlagStatus
 721                     	xdef	_AWU_IdleModeEnable
 722                     	xdef	_AWU_LSICalibrationConfig
 723                     	xdef	_AWU_Cmd
 724                     	xdef	_AWU_Init
 725                     	xdef	_AWU_DeInit
 726                     	xref	_assert_failed
 727                     	switch	.const
 728  002e               L501:
 729  002e 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 730  0040 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 731  0052 685f64726976  	dc.b	"h_driver\src\stm8s"
 732  0064 5f6177752e63  	dc.b	"_awu.c",0
 733                     	xref.b	c_lreg
 734                     	xref.b	c_x
 754                     	xref	c_imul
 755                     	xref	c_ludv
 756                     	xref	c_lcmp
 757                     	xref	c_ltor
 758                     	end
