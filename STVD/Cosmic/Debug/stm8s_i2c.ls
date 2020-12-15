   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  49                     ; 67 void I2C_DeInit(void)
  49                     ; 68 {
  51                     .text:	section	.text,new
  52  0000               _I2C_DeInit:
  56                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  58  0000 725f5210      	clr	21008
  59                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  61  0004 725f5211      	clr	21009
  62                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  64  0008 725f5212      	clr	21010
  65                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  67  000c 725f5213      	clr	21011
  68                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  70  0010 725f5214      	clr	21012
  71                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  73  0014 725f521a      	clr	21018
  74                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  76  0018 725f521b      	clr	21019
  77                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  79  001c 725f521c      	clr	21020
  80                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  82  0020 3502521d      	mov	21021,#2
  83                     ; 78 }
  86  0024 81            	ret	
 266                     .const:	section	.text
 267  0000               L65:
 268  0000 00061a81      	dc.l	400001
 269  0004               L46:
 270  0004 000186a1      	dc.l	100001
 271  0008               L66:
 272  0008 000f4240      	dc.l	1000000
 273                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 273                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 273                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 273                     ; 99 {
 274                     .text:	section	.text,new
 275  0000               _I2C_Init:
 277  0000 5209          	subw	sp,#9
 278       00000009      OFST:	set	9
 281                     ; 100   uint16_t result = 0x0004;
 283                     ; 101   uint16_t tmpval = 0;
 285                     ; 102   uint8_t tmpccrh = 0;
 287  0002 0f07          	clr	(OFST-2,sp)
 288                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 290  0004 7b13          	ld	a,(OFST+10,sp)
 291  0006 270e          	jreq	L41
 292  0008 a101          	cp	a,#1
 293  000a 270a          	jreq	L41
 294  000c a102          	cp	a,#2
 295  000e 2706          	jreq	L41
 296  0010 ae0069        	ldw	x,#105
 297  0013 cd015b        	call	LC001
 298  0016               L41:
 299                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 301  0016 7b14          	ld	a,(OFST+11,sp)
 302  0018 270a          	jreq	L42
 303  001a a180          	cp	a,#128
 304  001c 2706          	jreq	L42
 305  001e ae006a        	ldw	x,#106
 306  0021 cd015b        	call	LC001
 307  0024               L42:
 308                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 310  0024 1e10          	ldw	x,(OFST+7,sp)
 311  0026 a30400        	cpw	x,#1024
 312  0029 2506          	jrult	L23
 313  002b ae006b        	ldw	x,#107
 314  002e cd015b        	call	LC001
 315  0031               L23:
 316                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 318  0031 7b12          	ld	a,(OFST+9,sp)
 319  0033 270a          	jreq	L24
 320  0035 a140          	cp	a,#64
 321  0037 2706          	jreq	L24
 322  0039 ae006c        	ldw	x,#108
 323  003c cd015b        	call	LC001
 324  003f               L24:
 325                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 327  003f 7b15          	ld	a,(OFST+12,sp)
 328  0041 2704          	jreq	L64
 329  0043 a111          	cp	a,#17
 330  0045 2506          	jrult	L05
 331  0047               L64:
 332  0047 ae006d        	ldw	x,#109
 333  004a cd015b        	call	LC001
 334  004d               L05:
 335                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 337  004d 96            	ldw	x,sp
 338  004e 1c000c        	addw	x,#OFST+3
 339  0051 cd0000        	call	c_lzmp
 341  0054 270f          	jreq	L45
 342  0056 96            	ldw	x,sp
 343  0057 1c000c        	addw	x,#OFST+3
 344  005a cd0000        	call	c_ltor
 346  005d ae0000        	ldw	x,#L65
 347  0060 cd0000        	call	c_lcmp
 349  0063 2506          	jrult	L06
 350  0065               L45:
 351  0065 ae006e        	ldw	x,#110
 352  0068 cd015b        	call	LC001
 353  006b               L06:
 354                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 356  006b c65212        	ld	a,21010
 357  006e a4c0          	and	a,#192
 358  0070 c75212        	ld	21010,a
 359                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 361  0073 c65212        	ld	a,21010
 362  0076 1a15          	or	a,(OFST+12,sp)
 363  0078 c75212        	ld	21010,a
 364                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 366  007b 72115210      	bres	21008,#0
 367                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 369  007f c6521c        	ld	a,21020
 370  0082 a430          	and	a,#48
 371  0084 c7521c        	ld	21020,a
 372                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 374  0087 725f521b      	clr	21019
 375                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 377  008b 96            	ldw	x,sp
 378  008c 1c000c        	addw	x,#OFST+3
 379  008f cd0000        	call	c_ltor
 381  0092 ae0004        	ldw	x,#L46
 382  0095 cd0000        	call	c_lcmp
 384  0098 2560          	jrult	L331
 385                     ; 131     tmpccrh = I2C_CCRH_FS;
 387  009a a680          	ld	a,#128
 388  009c 6b07          	ld	(OFST-2,sp),a
 389                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 391  009e 96            	ldw	x,sp
 392  009f 0d12          	tnz	(OFST+9,sp)
 393  00a1 261d          	jrne	L531
 394                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 396  00a3 1c000c        	addw	x,#OFST+3
 397  00a6 cd0000        	call	c_ltor
 399  00a9 a603          	ld	a,#3
 400  00ab cd0000        	call	c_smul
 402  00ae 96            	ldw	x,sp
 403  00af 5c            	incw	x
 404  00b0 cd0000        	call	c_rtol
 406  00b3 7b15          	ld	a,(OFST+12,sp)
 407  00b5 cd0167        	call	LC002
 409  00b8 96            	ldw	x,sp
 410  00b9 cd0175        	call	LC003
 411  00bc 1f08          	ldw	(OFST-1,sp),x
 413  00be 2021          	jra	L731
 414  00c0               L531:
 415                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 417  00c0 1c000c        	addw	x,#OFST+3
 418  00c3 cd0000        	call	c_ltor
 420  00c6 a619          	ld	a,#25
 421  00c8 cd0000        	call	c_smul
 423  00cb 96            	ldw	x,sp
 424  00cc 5c            	incw	x
 425  00cd cd0000        	call	c_rtol
 427  00d0 7b15          	ld	a,(OFST+12,sp)
 428  00d2 cd0167        	call	LC002
 430  00d5 96            	ldw	x,sp
 431  00d6 cd0175        	call	LC003
 432  00d9 1f08          	ldw	(OFST-1,sp),x
 433                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 435  00db 7b07          	ld	a,(OFST-2,sp)
 436  00dd aa40          	or	a,#64
 437  00df 6b07          	ld	(OFST-2,sp),a
 438  00e1               L731:
 439                     ; 147     if (result < (uint16_t)0x01)
 441  00e1 1e08          	ldw	x,(OFST-1,sp)
 442  00e3 2603          	jrne	L141
 443                     ; 150       result = (uint16_t)0x0001;
 445  00e5 5c            	incw	x
 446  00e6 1f08          	ldw	(OFST-1,sp),x
 447  00e8               L141:
 448                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 450  00e8 7b15          	ld	a,(OFST+12,sp)
 451  00ea 97            	ld	xl,a
 452  00eb a603          	ld	a,#3
 453  00ed 42            	mul	x,a
 454  00ee a60a          	ld	a,#10
 455  00f0 cd0000        	call	c_sdivx
 457  00f3 5c            	incw	x
 458  00f4 1f05          	ldw	(OFST-4,sp),x
 459                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 461  00f6 7b06          	ld	a,(OFST-3,sp)
 463  00f8 2028          	jra	L341
 464  00fa               L331:
 465                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 467  00fa 96            	ldw	x,sp
 468  00fb 1c000c        	addw	x,#OFST+3
 469  00fe cd0000        	call	c_ltor
 471  0101 3803          	sll	c_lreg+3
 472  0103 3902          	rlc	c_lreg+2
 473  0105 3901          	rlc	c_lreg+1
 474  0107 96            	ldw	x,sp
 475  0108 3900          	rlc	c_lreg
 476  010a 5c            	incw	x
 477  010b cd0000        	call	c_rtol
 479  010e 7b15          	ld	a,(OFST+12,sp)
 480  0110 ad55          	call	LC002
 482  0112 96            	ldw	x,sp
 483  0113 ad60          	call	LC003
 484                     ; 167     if (result < (uint16_t)0x0004)
 486  0115 a30004        	cpw	x,#4
 487  0118 2403          	jruge	L541
 488                     ; 170       result = (uint16_t)0x0004;
 490  011a ae0004        	ldw	x,#4
 491  011d               L541:
 492  011d 1f08          	ldw	(OFST-1,sp),x
 493                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 495  011f 7b15          	ld	a,(OFST+12,sp)
 496  0121 4c            	inc	a
 497  0122               L341:
 498  0122 c7521d        	ld	21021,a
 499                     ; 181   I2C->CCRL = (uint8_t)result;
 501  0125 7b09          	ld	a,(OFST+0,sp)
 502  0127 c7521b        	ld	21019,a
 503                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 505  012a 7b08          	ld	a,(OFST-1,sp)
 506  012c a40f          	and	a,#15
 507  012e 1a07          	or	a,(OFST-2,sp)
 508  0130 c7521c        	ld	21020,a
 509                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 511  0133 72105210      	bset	21008,#0
 512                     ; 188   I2C_AcknowledgeConfig(Ack);
 514  0137 7b13          	ld	a,(OFST+10,sp)
 515  0139 cd0000        	call	_I2C_AcknowledgeConfig
 517                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 519  013c 7b11          	ld	a,(OFST+8,sp)
 520  013e c75213        	ld	21011,a
 521                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 521                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 523  0141 7b10          	ld	a,(OFST+7,sp)
 524  0143 a403          	and	a,#3
 525  0145 97            	ld	xl,a
 526  0146 4f            	clr	a
 527  0147 02            	rlwa	x,a
 528  0148 4f            	clr	a
 529  0149 01            	rrwa	x,a
 530  014a 48            	sll	a
 531  014b 59            	rlcw	x
 532  014c 9f            	ld	a,xl
 533  014d 6b04          	ld	(OFST-5,sp),a
 534  014f 7b14          	ld	a,(OFST+11,sp)
 535  0151 aa40          	or	a,#64
 536  0153 1a04          	or	a,(OFST-5,sp)
 537  0155 c75214        	ld	21012,a
 538                     ; 194 }
 541  0158 5b09          	addw	sp,#9
 542  015a 81            	ret	
 543  015b               LC001:
 544  015b 89            	pushw	x
 545  015c 5f            	clrw	x
 546  015d 89            	pushw	x
 547  015e ae000c        	ldw	x,#L131
 548  0161 cd0000        	call	_assert_failed
 550  0164 5b04          	addw	sp,#4
 551  0166 81            	ret	
 552  0167               LC002:
 553  0167 b703          	ld	c_lreg+3,a
 554  0169 3f02          	clr	c_lreg+2
 555  016b 3f01          	clr	c_lreg+1
 556  016d 3f00          	clr	c_lreg
 557  016f ae0008        	ldw	x,#L66
 558  0172 cc0000        	jp	c_lmul
 559  0175               LC003:
 560  0175 5c            	incw	x
 561  0176 cd0000        	call	c_ludv
 563  0179 be02          	ldw	x,c_lreg+2
 564  017b 81            	ret	
 620                     ; 202 void I2C_Cmd(FunctionalState NewState)
 620                     ; 203 {
 621                     .text:	section	.text,new
 622  0000               _I2C_Cmd:
 624  0000 88            	push	a
 625       00000000      OFST:	set	0
 628                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 630  0001 4d            	tnz	a
 631  0002 2711          	jreq	L001
 632  0004 4a            	dec	a
 633  0005 270e          	jreq	L001
 634  0007 ae00cd        	ldw	x,#205
 635  000a 89            	pushw	x
 636  000b 5f            	clrw	x
 637  000c 89            	pushw	x
 638  000d ae000c        	ldw	x,#L131
 639  0010 cd0000        	call	_assert_failed
 641  0013 5b04          	addw	sp,#4
 642  0015               L001:
 643                     ; 207   if (NewState != DISABLE)
 645  0015 7b01          	ld	a,(OFST+1,sp)
 646  0017 2706          	jreq	L571
 647                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 649  0019 72105210      	bset	21008,#0
 651  001d 2004          	jra	L771
 652  001f               L571:
 653                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 655  001f 72115210      	bres	21008,#0
 656  0023               L771:
 657                     ; 217 }
 660  0023 84            	pop	a
 661  0024 81            	ret	
 697                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 697                     ; 226 {
 698                     .text:	section	.text,new
 699  0000               _I2C_GeneralCallCmd:
 701  0000 88            	push	a
 702       00000000      OFST:	set	0
 705                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 707  0001 4d            	tnz	a
 708  0002 2711          	jreq	L211
 709  0004 4a            	dec	a
 710  0005 270e          	jreq	L211
 711  0007 ae00e4        	ldw	x,#228
 712  000a 89            	pushw	x
 713  000b 5f            	clrw	x
 714  000c 89            	pushw	x
 715  000d ae000c        	ldw	x,#L131
 716  0010 cd0000        	call	_assert_failed
 718  0013 5b04          	addw	sp,#4
 719  0015               L211:
 720                     ; 230   if (NewState != DISABLE)
 722  0015 7b01          	ld	a,(OFST+1,sp)
 723  0017 2706          	jreq	L712
 724                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 726  0019 721c5210      	bset	21008,#6
 728  001d 2004          	jra	L122
 729  001f               L712:
 730                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 732  001f 721d5210      	bres	21008,#6
 733  0023               L122:
 734                     ; 240 }
 737  0023 84            	pop	a
 738  0024 81            	ret	
 774                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 774                     ; 251 {
 775                     .text:	section	.text,new
 776  0000               _I2C_GenerateSTART:
 778  0000 88            	push	a
 779       00000000      OFST:	set	0
 782                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 784  0001 4d            	tnz	a
 785  0002 2711          	jreq	L421
 786  0004 4a            	dec	a
 787  0005 270e          	jreq	L421
 788  0007 ae00fd        	ldw	x,#253
 789  000a 89            	pushw	x
 790  000b 5f            	clrw	x
 791  000c 89            	pushw	x
 792  000d ae000c        	ldw	x,#L131
 793  0010 cd0000        	call	_assert_failed
 795  0013 5b04          	addw	sp,#4
 796  0015               L421:
 797                     ; 255   if (NewState != DISABLE)
 799  0015 7b01          	ld	a,(OFST+1,sp)
 800  0017 2706          	jreq	L142
 801                     ; 258     I2C->CR2 |= I2C_CR2_START;
 803  0019 72105211      	bset	21009,#0
 805  001d 2004          	jra	L342
 806  001f               L142:
 807                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 809  001f 72115211      	bres	21009,#0
 810  0023               L342:
 811                     ; 265 }
 814  0023 84            	pop	a
 815  0024 81            	ret	
 851                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 851                     ; 274 {
 852                     .text:	section	.text,new
 853  0000               _I2C_GenerateSTOP:
 855  0000 88            	push	a
 856       00000000      OFST:	set	0
 859                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 861  0001 4d            	tnz	a
 862  0002 2711          	jreq	L631
 863  0004 4a            	dec	a
 864  0005 270e          	jreq	L631
 865  0007 ae0114        	ldw	x,#276
 866  000a 89            	pushw	x
 867  000b 5f            	clrw	x
 868  000c 89            	pushw	x
 869  000d ae000c        	ldw	x,#L131
 870  0010 cd0000        	call	_assert_failed
 872  0013 5b04          	addw	sp,#4
 873  0015               L631:
 874                     ; 278   if (NewState != DISABLE)
 876  0015 7b01          	ld	a,(OFST+1,sp)
 877  0017 2706          	jreq	L362
 878                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 880  0019 72125211      	bset	21009,#1
 882  001d 2004          	jra	L562
 883  001f               L362:
 884                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 886  001f 72135211      	bres	21009,#1
 887  0023               L562:
 888                     ; 288 }
 891  0023 84            	pop	a
 892  0024 81            	ret	
 929                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
 929                     ; 297 {
 930                     .text:	section	.text,new
 931  0000               _I2C_SoftwareResetCmd:
 933  0000 88            	push	a
 934       00000000      OFST:	set	0
 937                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 939  0001 4d            	tnz	a
 940  0002 2711          	jreq	L051
 941  0004 4a            	dec	a
 942  0005 270e          	jreq	L051
 943  0007 ae012b        	ldw	x,#299
 944  000a 89            	pushw	x
 945  000b 5f            	clrw	x
 946  000c 89            	pushw	x
 947  000d ae000c        	ldw	x,#L131
 948  0010 cd0000        	call	_assert_failed
 950  0013 5b04          	addw	sp,#4
 951  0015               L051:
 952                     ; 301   if (NewState != DISABLE)
 954  0015 7b01          	ld	a,(OFST+1,sp)
 955  0017 2706          	jreq	L503
 956                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
 958  0019 721e5211      	bset	21009,#7
 960  001d 2004          	jra	L703
 961  001f               L503:
 962                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 964  001f 721f5211      	bres	21009,#7
 965  0023               L703:
 966                     ; 311 }
 969  0023 84            	pop	a
 970  0024 81            	ret	
1007                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1007                     ; 321 {
1008                     .text:	section	.text,new
1009  0000               _I2C_StretchClockCmd:
1011  0000 88            	push	a
1012       00000000      OFST:	set	0
1015                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1017  0001 4d            	tnz	a
1018  0002 2711          	jreq	L261
1019  0004 4a            	dec	a
1020  0005 270e          	jreq	L261
1021  0007 ae0143        	ldw	x,#323
1022  000a 89            	pushw	x
1023  000b 5f            	clrw	x
1024  000c 89            	pushw	x
1025  000d ae000c        	ldw	x,#L131
1026  0010 cd0000        	call	_assert_failed
1028  0013 5b04          	addw	sp,#4
1029  0015               L261:
1030                     ; 325   if (NewState != DISABLE)
1032  0015 7b01          	ld	a,(OFST+1,sp)
1033  0017 2706          	jreq	L723
1034                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1036  0019 721f5210      	bres	21008,#7
1038  001d 2004          	jra	L133
1039  001f               L723:
1040                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1042  001f 721e5210      	bset	21008,#7
1043  0023               L133:
1044                     ; 336 }
1047  0023 84            	pop	a
1048  0024 81            	ret	
1085                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1085                     ; 346 {
1086                     .text:	section	.text,new
1087  0000               _I2C_AcknowledgeConfig:
1089  0000 88            	push	a
1090       00000000      OFST:	set	0
1093                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1095  0001 4d            	tnz	a
1096  0002 2716          	jreq	L471
1097  0004 a101          	cp	a,#1
1098  0006 2712          	jreq	L471
1099  0008 a102          	cp	a,#2
1100  000a 270e          	jreq	L471
1101  000c ae015c        	ldw	x,#348
1102  000f 89            	pushw	x
1103  0010 5f            	clrw	x
1104  0011 89            	pushw	x
1105  0012 ae000c        	ldw	x,#L131
1106  0015 cd0000        	call	_assert_failed
1108  0018 5b04          	addw	sp,#4
1109  001a               L471:
1110                     ; 350   if (Ack == I2C_ACK_NONE)
1112  001a 7b01          	ld	a,(OFST+1,sp)
1113  001c 2606          	jrne	L153
1114                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1116  001e 72155211      	bres	21009,#2
1118  0022 2011          	jra	L353
1119  0024               L153:
1120                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1122  0024 72145211      	bset	21009,#2
1123                     ; 360     if (Ack == I2C_ACK_CURR)
1125  0028 4a            	dec	a
1126  0029 2606          	jrne	L553
1127                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1129  002b 72175211      	bres	21009,#3
1131  002f 2004          	jra	L353
1132  0031               L553:
1133                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1135  0031 72165211      	bset	21009,#3
1136  0035               L353:
1137                     ; 371 }
1140  0035 84            	pop	a
1141  0036 81            	ret	
1214                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1214                     ; 382 {
1215                     .text:	section	.text,new
1216  0000               _I2C_ITConfig:
1218  0000 89            	pushw	x
1219       00000000      OFST:	set	0
1222                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1224  0001 9e            	ld	a,xh
1225  0002 4a            	dec	a
1226  0003 2723          	jreq	L602
1227  0005 9e            	ld	a,xh
1228  0006 a102          	cp	a,#2
1229  0008 271e          	jreq	L602
1230  000a 9e            	ld	a,xh
1231  000b a104          	cp	a,#4
1232  000d 2719          	jreq	L602
1233  000f 9e            	ld	a,xh
1234  0010 a103          	cp	a,#3
1235  0012 2714          	jreq	L602
1236  0014 9e            	ld	a,xh
1237  0015 a105          	cp	a,#5
1238  0017 270f          	jreq	L602
1239  0019 9e            	ld	a,xh
1240  001a a106          	cp	a,#6
1241  001c 270a          	jreq	L602
1242  001e 9e            	ld	a,xh
1243  001f a107          	cp	a,#7
1244  0021 2705          	jreq	L602
1245  0023 ae0180        	ldw	x,#384
1246  0026 ad22          	call	LC004
1247  0028               L602:
1248                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1250  0028 7b02          	ld	a,(OFST+2,sp)
1251  002a 2708          	jreq	L612
1252  002c 4a            	dec	a
1253  002d 2705          	jreq	L612
1254  002f ae0181        	ldw	x,#385
1255  0032 ad16          	call	LC004
1256  0034               L612:
1257                     ; 387   if (NewState != DISABLE)
1259  0034 7b02          	ld	a,(OFST+2,sp)
1260  0036 2707          	jreq	L514
1261                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1263  0038 c6521a        	ld	a,21018
1264  003b 1a01          	or	a,(OFST+1,sp)
1266  003d 2006          	jra	L714
1267  003f               L514:
1268                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1270  003f 7b01          	ld	a,(OFST+1,sp)
1271  0041 43            	cpl	a
1272  0042 c4521a        	and	a,21018
1273  0045               L714:
1274  0045 c7521a        	ld	21018,a
1275                     ; 397 }
1278  0048 85            	popw	x
1279  0049 81            	ret	
1280  004a               LC004:
1281  004a 89            	pushw	x
1282  004b 5f            	clrw	x
1283  004c 89            	pushw	x
1284  004d ae000c        	ldw	x,#L131
1285  0050 cd0000        	call	_assert_failed
1287  0053 5b04          	addw	sp,#4
1288  0055 81            	ret	
1325                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1325                     ; 406 {
1326                     .text:	section	.text,new
1327  0000               _I2C_FastModeDutyCycleConfig:
1329  0000 88            	push	a
1330       00000000      OFST:	set	0
1333                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1335  0001 4d            	tnz	a
1336  0002 2712          	jreq	L032
1337  0004 a140          	cp	a,#64
1338  0006 270e          	jreq	L032
1339  0008 ae0198        	ldw	x,#408
1340  000b 89            	pushw	x
1341  000c 5f            	clrw	x
1342  000d 89            	pushw	x
1343  000e ae000c        	ldw	x,#L131
1344  0011 cd0000        	call	_assert_failed
1346  0014 5b04          	addw	sp,#4
1347  0016               L032:
1348                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1350  0016 7b01          	ld	a,(OFST+1,sp)
1351  0018 a140          	cp	a,#64
1352  001a 2606          	jrne	L734
1353                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1355  001c 721c521c      	bset	21020,#6
1357  0020 2004          	jra	L144
1358  0022               L734:
1359                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1361  0022 721d521c      	bres	21020,#6
1362  0026               L144:
1363                     ; 420 }
1366  0026 84            	pop	a
1367  0027 81            	ret	
1390                     ; 427 uint8_t I2C_ReceiveData(void)
1390                     ; 428 {
1391                     .text:	section	.text,new
1392  0000               _I2C_ReceiveData:
1396                     ; 430   return ((uint8_t)I2C->DR);
1398  0000 c65216        	ld	a,21014
1401  0003 81            	ret	
1467                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1467                     ; 441 {
1468                     .text:	section	.text,new
1469  0000               _I2C_Send7bitAddress:
1471  0000 89            	pushw	x
1472       00000000      OFST:	set	0
1475                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1477  0001 9e            	ld	a,xh
1478  0002 a501          	bcp	a,#1
1479  0004 2705          	jreq	L242
1480  0006 ae01bb        	ldw	x,#443
1481  0009 ad19          	call	LC005
1482  000b               L242:
1483                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1485  000b 7b02          	ld	a,(OFST+2,sp)
1486  000d 2708          	jreq	L252
1487  000f 4a            	dec	a
1488  0010 2705          	jreq	L252
1489  0012 ae01bc        	ldw	x,#444
1490  0015 ad0d          	call	LC005
1491  0017               L252:
1492                     ; 447   Address &= (uint8_t)0xFE;
1494  0017 7b01          	ld	a,(OFST+1,sp)
1495  0019 a4fe          	and	a,#254
1496  001b 6b01          	ld	(OFST+1,sp),a
1497                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1499  001d 1a02          	or	a,(OFST+2,sp)
1500  001f c75216        	ld	21014,a
1501                     ; 451 }
1504  0022 85            	popw	x
1505  0023 81            	ret	
1506  0024               LC005:
1507  0024 89            	pushw	x
1508  0025 5f            	clrw	x
1509  0026 89            	pushw	x
1510  0027 ae000c        	ldw	x,#L131
1511  002a cd0000        	call	_assert_failed
1513  002d 5b04          	addw	sp,#4
1514  002f 81            	ret	
1548                     ; 458 void I2C_SendData(uint8_t Data)
1548                     ; 459 {
1549                     .text:	section	.text,new
1550  0000               _I2C_SendData:
1554                     ; 461   I2C->DR = Data;
1556  0000 c75216        	ld	21014,a
1557                     ; 462 }
1560  0003 81            	ret	
1785                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1785                     ; 579 {
1786                     .text:	section	.text,new
1787  0000               _I2C_CheckEvent:
1789  0000 89            	pushw	x
1790  0001 5206          	subw	sp,#6
1791       00000006      OFST:	set	6
1794                     ; 580   __IO uint16_t lastevent = 0x00;
1796  0003 5f            	clrw	x
1797  0004 1f04          	ldw	(OFST-2,sp),x
1798                     ; 581   uint8_t flag1 = 0x00 ;
1800                     ; 582   uint8_t flag2 = 0x00;
1802                     ; 583   ErrorStatus status = ERROR;
1804                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1806  0006 1e07          	ldw	x,(OFST+1,sp)
1807  0008 a30682        	cpw	x,#1666
1808  000b 275b          	jreq	L662
1809  000d a30202        	cpw	x,#514
1810  0010 2756          	jreq	L662
1811  0012 a31200        	cpw	x,#4608
1812  0015 2751          	jreq	L662
1813  0017 a30240        	cpw	x,#576
1814  001a 274c          	jreq	L662
1815  001c a30350        	cpw	x,#848
1816  001f 2747          	jreq	L662
1817  0021 a30684        	cpw	x,#1668
1818  0024 2742          	jreq	L662
1819  0026 a30794        	cpw	x,#1940
1820  0029 273d          	jreq	L662
1821  002b a30004        	cpw	x,#4
1822  002e 2738          	jreq	L662
1823  0030 a30010        	cpw	x,#16
1824  0033 2733          	jreq	L662
1825  0035 a30301        	cpw	x,#769
1826  0038 272e          	jreq	L662
1827  003a a30782        	cpw	x,#1922
1828  003d 2729          	jreq	L662
1829  003f a30302        	cpw	x,#770
1830  0042 2724          	jreq	L662
1831  0044 a30340        	cpw	x,#832
1832  0047 271f          	jreq	L662
1833  0049 a30784        	cpw	x,#1924
1834  004c 271a          	jreq	L662
1835  004e a30780        	cpw	x,#1920
1836  0051 2715          	jreq	L662
1837  0053 a30308        	cpw	x,#776
1838  0056 2710          	jreq	L662
1839  0058 ae024a        	ldw	x,#586
1840  005b 89            	pushw	x
1841  005c 5f            	clrw	x
1842  005d 89            	pushw	x
1843  005e ae000c        	ldw	x,#L131
1844  0061 cd0000        	call	_assert_failed
1846  0064 5b04          	addw	sp,#4
1847  0066 1e07          	ldw	x,(OFST+1,sp)
1848  0068               L662:
1849                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1851  0068 a30004        	cpw	x,#4
1852  006b 2609          	jrne	L336
1853                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1855  006d c65218        	ld	a,21016
1856  0070 a404          	and	a,#4
1857  0072 5f            	clrw	x
1858  0073 97            	ld	xl,a
1860  0074 201a          	jra	L536
1861  0076               L336:
1862                     ; 594     flag1 = I2C->SR1;
1864  0076 c65217        	ld	a,21015
1865  0079 6b03          	ld	(OFST-3,sp),a
1866                     ; 595     flag2 = I2C->SR3;
1868  007b c65219        	ld	a,21017
1869  007e 6b06          	ld	(OFST+0,sp),a
1870                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1872  0080 5f            	clrw	x
1873  0081 7b03          	ld	a,(OFST-3,sp)
1874  0083 97            	ld	xl,a
1875  0084 1f01          	ldw	(OFST-5,sp),x
1876  0086 5f            	clrw	x
1877  0087 7b06          	ld	a,(OFST+0,sp)
1878  0089 97            	ld	xl,a
1879  008a 7b02          	ld	a,(OFST-4,sp)
1880  008c 01            	rrwa	x,a
1881  008d 1a01          	or	a,(OFST-5,sp)
1882  008f 01            	rrwa	x,a
1883  0090               L536:
1884  0090 1f04          	ldw	(OFST-2,sp),x
1885                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1887  0092 1e04          	ldw	x,(OFST-2,sp)
1888  0094 01            	rrwa	x,a
1889  0095 1408          	and	a,(OFST+2,sp)
1890  0097 01            	rrwa	x,a
1891  0098 1407          	and	a,(OFST+1,sp)
1892  009a 01            	rrwa	x,a
1893  009b 1307          	cpw	x,(OFST+1,sp)
1894  009d 2604          	jrne	L736
1895                     ; 602     status = SUCCESS;
1897  009f a601          	ld	a,#1
1899  00a1 2001          	jra	L146
1900  00a3               L736:
1901                     ; 607     status = ERROR;
1903  00a3 4f            	clr	a
1904  00a4               L146:
1905                     ; 611   return status;
1909  00a4 5b08          	addw	sp,#8
1910  00a6 81            	ret	
1963                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
1963                     ; 629 {
1964                     .text:	section	.text,new
1965  0000               _I2C_GetLastEvent:
1967  0000 5206          	subw	sp,#6
1968       00000006      OFST:	set	6
1971                     ; 630   __IO uint16_t lastevent = 0;
1973  0002 5f            	clrw	x
1974  0003 1f05          	ldw	(OFST-1,sp),x
1975                     ; 631   uint16_t flag1 = 0;
1977                     ; 632   uint16_t flag2 = 0;
1979                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1981  0005 7205521805    	btjf	21016,#2,L176
1982                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1984  000a ae0004        	ldw	x,#4
1986  000d 2013          	jra	L376
1987  000f               L176:
1988                     ; 641     flag1 = I2C->SR1;
1990  000f c65217        	ld	a,21015
1991  0012 97            	ld	xl,a
1992  0013 1f01          	ldw	(OFST-5,sp),x
1993                     ; 642     flag2 = I2C->SR3;
1995  0015 5f            	clrw	x
1996  0016 c65219        	ld	a,21017
1997  0019 97            	ld	xl,a
1998  001a 1f03          	ldw	(OFST-3,sp),x
1999                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2001  001c 7b02          	ld	a,(OFST-4,sp)
2002  001e 01            	rrwa	x,a
2003  001f 1a01          	or	a,(OFST-5,sp)
2004  0021 01            	rrwa	x,a
2005  0022               L376:
2006  0022 1f05          	ldw	(OFST-1,sp),x
2007                     ; 648   return (I2C_Event_TypeDef)lastevent;
2009  0024 1e05          	ldw	x,(OFST-1,sp)
2012  0026 5b06          	addw	sp,#6
2013  0028 81            	ret	
2229                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2229                     ; 680 {
2230                     .text:	section	.text,new
2231  0000               _I2C_GetFlagStatus:
2233  0000 89            	pushw	x
2234  0001 89            	pushw	x
2235       00000002      OFST:	set	2
2238                     ; 681   uint8_t tempreg = 0;
2240  0002 0f02          	clr	(OFST+0,sp)
2241                     ; 682   uint8_t regindex = 0;
2243                     ; 683   FlagStatus bitstatus = RESET;
2245                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2247  0004 a30180        	cpw	x,#384
2248  0007 2759          	jreq	L203
2249  0009 a30140        	cpw	x,#320
2250  000c 2754          	jreq	L203
2251  000e a30110        	cpw	x,#272
2252  0011 274f          	jreq	L203
2253  0013 a30108        	cpw	x,#264
2254  0016 274a          	jreq	L203
2255  0018 a30104        	cpw	x,#260
2256  001b 2745          	jreq	L203
2257  001d a30102        	cpw	x,#258
2258  0020 2740          	jreq	L203
2259  0022 a30101        	cpw	x,#257
2260  0025 273b          	jreq	L203
2261  0027 a30220        	cpw	x,#544
2262  002a 2736          	jreq	L203
2263  002c a30208        	cpw	x,#520
2264  002f 2731          	jreq	L203
2265  0031 a30204        	cpw	x,#516
2266  0034 272c          	jreq	L203
2267  0036 a30202        	cpw	x,#514
2268  0039 2727          	jreq	L203
2269  003b a30201        	cpw	x,#513
2270  003e 2722          	jreq	L203
2271  0040 a30310        	cpw	x,#784
2272  0043 271d          	jreq	L203
2273  0045 a30304        	cpw	x,#772
2274  0048 2718          	jreq	L203
2275  004a a30302        	cpw	x,#770
2276  004d 2713          	jreq	L203
2277  004f a30301        	cpw	x,#769
2278  0052 270e          	jreq	L203
2279  0054 ae02ae        	ldw	x,#686
2280  0057 89            	pushw	x
2281  0058 5f            	clrw	x
2282  0059 89            	pushw	x
2283  005a ae000c        	ldw	x,#L131
2284  005d cd0000        	call	_assert_failed
2286  0060 5b04          	addw	sp,#4
2287  0062               L203:
2288                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2290  0062 7b03          	ld	a,(OFST+1,sp)
2291  0064 6b01          	ld	(OFST-1,sp),a
2292                     ; 691   switch (regindex)
2295                     ; 708     default:
2295                     ; 709       break;
2296  0066 4a            	dec	a
2297  0067 2708          	jreq	L576
2298  0069 4a            	dec	a
2299  006a 270a          	jreq	L776
2300  006c 4a            	dec	a
2301  006d 270c          	jreq	L107
2302  006f 200f          	jra	L5101
2303  0071               L576:
2304                     ; 694     case 0x01:
2304                     ; 695       tempreg = (uint8_t)I2C->SR1;
2306  0071 c65217        	ld	a,21015
2307                     ; 696       break;
2309  0074 2008          	jp	LC006
2310  0076               L776:
2311                     ; 699     case 0x02:
2311                     ; 700       tempreg = (uint8_t)I2C->SR2;
2313  0076 c65218        	ld	a,21016
2314                     ; 701       break;
2316  0079 2003          	jp	LC006
2317  007b               L107:
2318                     ; 704     case 0x03:
2318                     ; 705       tempreg = (uint8_t)I2C->SR3;
2320  007b c65219        	ld	a,21017
2321  007e               LC006:
2322  007e 6b02          	ld	(OFST+0,sp),a
2323                     ; 706       break;
2325                     ; 708     default:
2325                     ; 709       break;
2327  0080               L5101:
2328                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2330  0080 7b04          	ld	a,(OFST+2,sp)
2331  0082 1502          	bcp	a,(OFST+0,sp)
2332  0084 2704          	jreq	L7101
2333                     ; 716     bitstatus = SET;
2335  0086 a601          	ld	a,#1
2337  0088 2001          	jra	L1201
2338  008a               L7101:
2339                     ; 721     bitstatus = RESET;
2341  008a 4f            	clr	a
2342  008b               L1201:
2343                     ; 724   return bitstatus;
2347  008b 5b04          	addw	sp,#4
2348  008d 81            	ret	
2393                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2393                     ; 760 {
2394                     .text:	section	.text,new
2395  0000               _I2C_ClearFlag:
2397  0000 89            	pushw	x
2398  0001 89            	pushw	x
2399       00000002      OFST:	set	2
2402                     ; 761   uint16_t flagpos = 0;
2404                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2406  0002 01            	rrwa	x,a
2407  0003 9f            	ld	a,xl
2408  0004 a4fd          	and	a,#253
2409  0006 97            	ld	xl,a
2410  0007 4f            	clr	a
2411  0008 02            	rlwa	x,a
2412  0009 5d            	tnzw	x
2413  000a 2604          	jrne	L013
2414  000c 1e03          	ldw	x,(OFST+1,sp)
2415  000e 260e          	jrne	L213
2416  0010               L013:
2417  0010 ae02fb        	ldw	x,#763
2418  0013 89            	pushw	x
2419  0014 5f            	clrw	x
2420  0015 89            	pushw	x
2421  0016 ae000c        	ldw	x,#L131
2422  0019 cd0000        	call	_assert_failed
2424  001c 5b04          	addw	sp,#4
2425  001e               L213:
2426                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2428  001e 7b04          	ld	a,(OFST+2,sp)
2429  0020 5f            	clrw	x
2430  0021 02            	rlwa	x,a
2431  0022 1f01          	ldw	(OFST-1,sp),x
2432                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2434  0024 7b02          	ld	a,(OFST+0,sp)
2435  0026 43            	cpl	a
2436  0027 c75218        	ld	21016,a
2437                     ; 769 }
2440  002a 5b04          	addw	sp,#4
2441  002c 81            	ret	
2608                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2608                     ; 792 {
2609                     .text:	section	.text,new
2610  0000               _I2C_GetITStatus:
2612  0000 89            	pushw	x
2613  0001 5204          	subw	sp,#4
2614       00000004      OFST:	set	4
2617                     ; 793   ITStatus bitstatus = RESET;
2619                     ; 794   __IO uint8_t enablestatus = 0;
2621  0003 0f03          	clr	(OFST-1,sp)
2622                     ; 795   uint16_t tempregister = 0;
2624                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2626  0005 a31680        	cpw	x,#5760
2627  0008 2745          	jreq	L423
2628  000a a31640        	cpw	x,#5696
2629  000d 2740          	jreq	L423
2630  000f a31210        	cpw	x,#4624
2631  0012 273b          	jreq	L423
2632  0014 a31208        	cpw	x,#4616
2633  0017 2736          	jreq	L423
2634  0019 a31204        	cpw	x,#4612
2635  001c 2731          	jreq	L423
2636  001e a31202        	cpw	x,#4610
2637  0021 272c          	jreq	L423
2638  0023 a31201        	cpw	x,#4609
2639  0026 2727          	jreq	L423
2640  0028 a32220        	cpw	x,#8736
2641  002b 2722          	jreq	L423
2642  002d a32108        	cpw	x,#8456
2643  0030 271d          	jreq	L423
2644  0032 a32104        	cpw	x,#8452
2645  0035 2718          	jreq	L423
2646  0037 a32102        	cpw	x,#8450
2647  003a 2713          	jreq	L423
2648  003c a32101        	cpw	x,#8449
2649  003f 270e          	jreq	L423
2650  0041 ae031e        	ldw	x,#798
2651  0044 89            	pushw	x
2652  0045 5f            	clrw	x
2653  0046 89            	pushw	x
2654  0047 ae000c        	ldw	x,#L131
2655  004a cd0000        	call	_assert_failed
2657  004d 5b04          	addw	sp,#4
2658  004f               L423:
2659                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2661  004f 7b05          	ld	a,(OFST+1,sp)
2662  0051 a407          	and	a,#7
2663  0053 97            	ld	xl,a
2664  0054 4f            	clr	a
2665  0055 02            	rlwa	x,a
2666  0056 4f            	clr	a
2667  0057 01            	rrwa	x,a
2668  0058 9f            	ld	a,xl
2669  0059 5f            	clrw	x
2670  005a 97            	ld	xl,a
2671  005b 1f01          	ldw	(OFST-3,sp),x
2672                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2674  005d c6521a        	ld	a,21018
2675  0060 1402          	and	a,(OFST-2,sp)
2676  0062 6b03          	ld	(OFST-1,sp),a
2677                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2679  0064 7b05          	ld	a,(OFST+1,sp)
2680  0066 a430          	and	a,#48
2681  0068 97            	ld	xl,a
2682  0069 4f            	clr	a
2683  006a 02            	rlwa	x,a
2684  006b a30100        	cpw	x,#256
2685  006e 260d          	jrne	L3311
2686                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2688  0070 c65217        	ld	a,21015
2689  0073 1506          	bcp	a,(OFST+2,sp)
2690  0075 2715          	jreq	L3411
2692  0077 0d03          	tnz	(OFST-1,sp)
2693  0079 2711          	jreq	L3411
2694                     ; 811       bitstatus = SET;
2696  007b 200b          	jp	LC008
2697                     ; 816       bitstatus = RESET;
2698  007d               L3311:
2699                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2701  007d c65218        	ld	a,21016
2702  0080 1506          	bcp	a,(OFST+2,sp)
2703  0082 2708          	jreq	L3411
2705  0084 0d03          	tnz	(OFST-1,sp)
2706  0086 2704          	jreq	L3411
2707                     ; 825       bitstatus = SET;
2709  0088               LC008:
2711  0088 a601          	ld	a,#1
2713  008a 2001          	jra	L1411
2714  008c               L3411:
2715                     ; 830       bitstatus = RESET;
2718  008c 4f            	clr	a
2719  008d               L1411:
2720                     ; 834   return  bitstatus;
2724  008d 5b06          	addw	sp,#6
2725  008f 81            	ret	
2771                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2771                     ; 872 {
2772                     .text:	section	.text,new
2773  0000               _I2C_ClearITPendingBit:
2775  0000 89            	pushw	x
2776  0001 89            	pushw	x
2777       00000002      OFST:	set	2
2780                     ; 873   uint16_t flagpos = 0;
2782                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2784  0002 a32220        	cpw	x,#8736
2785  0005 2722          	jreq	L633
2786  0007 a32108        	cpw	x,#8456
2787  000a 271d          	jreq	L633
2788  000c a32104        	cpw	x,#8452
2789  000f 2718          	jreq	L633
2790  0011 a32102        	cpw	x,#8450
2791  0014 2713          	jreq	L633
2792  0016 a32101        	cpw	x,#8449
2793  0019 270e          	jreq	L633
2794  001b ae036c        	ldw	x,#876
2795  001e 89            	pushw	x
2796  001f 5f            	clrw	x
2797  0020 89            	pushw	x
2798  0021 ae000c        	ldw	x,#L131
2799  0024 cd0000        	call	_assert_failed
2801  0027 5b04          	addw	sp,#4
2802  0029               L633:
2803                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2805  0029 7b04          	ld	a,(OFST+2,sp)
2806  002b 5f            	clrw	x
2807  002c 02            	rlwa	x,a
2808  002d 1f01          	ldw	(OFST-1,sp),x
2809                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2811  002f 7b02          	ld	a,(OFST+0,sp)
2812  0031 43            	cpl	a
2813  0032 c75218        	ld	21016,a
2814                     ; 883 }
2817  0035 5b04          	addw	sp,#4
2818  0037 81            	ret	
2831                     	xdef	_I2C_ClearITPendingBit
2832                     	xdef	_I2C_GetITStatus
2833                     	xdef	_I2C_ClearFlag
2834                     	xdef	_I2C_GetFlagStatus
2835                     	xdef	_I2C_GetLastEvent
2836                     	xdef	_I2C_CheckEvent
2837                     	xdef	_I2C_SendData
2838                     	xdef	_I2C_Send7bitAddress
2839                     	xdef	_I2C_ReceiveData
2840                     	xdef	_I2C_ITConfig
2841                     	xdef	_I2C_FastModeDutyCycleConfig
2842                     	xdef	_I2C_AcknowledgeConfig
2843                     	xdef	_I2C_StretchClockCmd
2844                     	xdef	_I2C_SoftwareResetCmd
2845                     	xdef	_I2C_GenerateSTOP
2846                     	xdef	_I2C_GenerateSTART
2847                     	xdef	_I2C_GeneralCallCmd
2848                     	xdef	_I2C_Cmd
2849                     	xdef	_I2C_Init
2850                     	xdef	_I2C_DeInit
2851                     	xref	_assert_failed
2852                     	switch	.const
2853  000c               L131:
2854  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2855  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2856  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2857  0042 5f6932632e63  	dc.b	"_i2c.c",0
2858                     	xref.b	c_lreg
2859                     	xref.b	c_x
2879                     	xref	c_sdivx
2880                     	xref	c_ludv
2881                     	xref	c_rtol
2882                     	xref	c_smul
2883                     	xref	c_lmul
2884                     	xref	c_lcmp
2885                     	xref	c_ltor
2886                     	xref	c_lzmp
2887                     	end
