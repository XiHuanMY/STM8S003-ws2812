   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 67 void I2C_DeInit(void)
  45                     ; 68 {
  47                     .text:	section	.text,new
  48  0000               _I2C_DeInit:
  52                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  54  0000 725f5210      	clr	21008
  55                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  57  0004 725f5211      	clr	21009
  58                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  60  0008 725f5212      	clr	21010
  61                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  63  000c 725f5213      	clr	21011
  64                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  66  0010 725f5214      	clr	21012
  67                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  69  0014 725f521a      	clr	21018
  70                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  72  0018 725f521b      	clr	21019
  73                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  75  001c 725f521c      	clr	21020
  76                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  78  0020 3502521d      	mov	21021,#2
  79                     ; 78 }
  82  0024 81            	ret
 250                     .const:	section	.text
 251  0000               L44:
 252  0000 00061a81      	dc.l	400001
 253  0004               L05:
 254  0004 000186a1      	dc.l	100001
 255  0008               L25:
 256  0008 000f4240      	dc.l	1000000
 257                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 257                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 257                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 257                     ; 99 {
 258                     .text:	section	.text,new
 259  0000               _I2C_Init:
 261  0000 5209          	subw	sp,#9
 262       00000009      OFST:	set	9
 265                     ; 100   uint16_t result = 0x0004;
 267                     ; 101   uint16_t tmpval = 0;
 269                     ; 102   uint8_t tmpccrh = 0;
 271  0002 0f07          	clr	(OFST-2,sp)
 272                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 274  0004 0d13          	tnz	(OFST+10,sp)
 275  0006 270c          	jreq	L21
 276  0008 7b13          	ld	a,(OFST+10,sp)
 277  000a a101          	cp	a,#1
 278  000c 2706          	jreq	L21
 279  000e 7b13          	ld	a,(OFST+10,sp)
 280  0010 a102          	cp	a,#2
 281  0012 2603          	jrne	L01
 282  0014               L21:
 283  0014 4f            	clr	a
 284  0015 2010          	jra	L41
 285  0017               L01:
 286  0017 ae0069        	ldw	x,#105
 287  001a 89            	pushw	x
 288  001b ae0000        	ldw	x,#0
 289  001e 89            	pushw	x
 290  001f ae000c        	ldw	x,#L511
 291  0022 cd0000        	call	_assert_failed
 293  0025 5b04          	addw	sp,#4
 294  0027               L41:
 295                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 297  0027 0d14          	tnz	(OFST+11,sp)
 298  0029 2706          	jreq	L02
 299  002b 7b14          	ld	a,(OFST+11,sp)
 300  002d a180          	cp	a,#128
 301  002f 2603          	jrne	L61
 302  0031               L02:
 303  0031 4f            	clr	a
 304  0032 2010          	jra	L22
 305  0034               L61:
 306  0034 ae006a        	ldw	x,#106
 307  0037 89            	pushw	x
 308  0038 ae0000        	ldw	x,#0
 309  003b 89            	pushw	x
 310  003c ae000c        	ldw	x,#L511
 311  003f cd0000        	call	_assert_failed
 313  0042 5b04          	addw	sp,#4
 314  0044               L22:
 315                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 317  0044 1e10          	ldw	x,(OFST+7,sp)
 318  0046 a30400        	cpw	x,#1024
 319  0049 2403          	jruge	L42
 320  004b 4f            	clr	a
 321  004c 2010          	jra	L62
 322  004e               L42:
 323  004e ae006b        	ldw	x,#107
 324  0051 89            	pushw	x
 325  0052 ae0000        	ldw	x,#0
 326  0055 89            	pushw	x
 327  0056 ae000c        	ldw	x,#L511
 328  0059 cd0000        	call	_assert_failed
 330  005c 5b04          	addw	sp,#4
 331  005e               L62:
 332                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 334  005e 0d12          	tnz	(OFST+9,sp)
 335  0060 2706          	jreq	L23
 336  0062 7b12          	ld	a,(OFST+9,sp)
 337  0064 a140          	cp	a,#64
 338  0066 2603          	jrne	L03
 339  0068               L23:
 340  0068 4f            	clr	a
 341  0069 2010          	jra	L43
 342  006b               L03:
 343  006b ae006c        	ldw	x,#108
 344  006e 89            	pushw	x
 345  006f ae0000        	ldw	x,#0
 346  0072 89            	pushw	x
 347  0073 ae000c        	ldw	x,#L511
 348  0076 cd0000        	call	_assert_failed
 350  0079 5b04          	addw	sp,#4
 351  007b               L43:
 352                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 354  007b 0d15          	tnz	(OFST+12,sp)
 355  007d 2709          	jreq	L63
 356  007f 7b15          	ld	a,(OFST+12,sp)
 357  0081 a111          	cp	a,#17
 358  0083 2403          	jruge	L63
 359  0085 4f            	clr	a
 360  0086 2010          	jra	L04
 361  0088               L63:
 362  0088 ae006d        	ldw	x,#109
 363  008b 89            	pushw	x
 364  008c ae0000        	ldw	x,#0
 365  008f 89            	pushw	x
 366  0090 ae000c        	ldw	x,#L511
 367  0093 cd0000        	call	_assert_failed
 369  0096 5b04          	addw	sp,#4
 370  0098               L04:
 371                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 373  0098 96            	ldw	x,sp
 374  0099 1c000c        	addw	x,#OFST+3
 375  009c cd0000        	call	c_lzmp
 377  009f 2712          	jreq	L24
 378  00a1 96            	ldw	x,sp
 379  00a2 1c000c        	addw	x,#OFST+3
 380  00a5 cd0000        	call	c_ltor
 382  00a8 ae0000        	ldw	x,#L44
 383  00ab cd0000        	call	c_lcmp
 385  00ae 2403          	jruge	L24
 386  00b0 4f            	clr	a
 387  00b1 2010          	jra	L64
 388  00b3               L24:
 389  00b3 ae006e        	ldw	x,#110
 390  00b6 89            	pushw	x
 391  00b7 ae0000        	ldw	x,#0
 392  00ba 89            	pushw	x
 393  00bb ae000c        	ldw	x,#L511
 394  00be cd0000        	call	_assert_failed
 396  00c1 5b04          	addw	sp,#4
 397  00c3               L64:
 398                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 400  00c3 c65212        	ld	a,21010
 401  00c6 a4c0          	and	a,#192
 402  00c8 c75212        	ld	21010,a
 403                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 405  00cb c65212        	ld	a,21010
 406  00ce 1a15          	or	a,(OFST+12,sp)
 407  00d0 c75212        	ld	21010,a
 408                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 410  00d3 72115210      	bres	21008,#0
 411                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 413  00d7 c6521c        	ld	a,21020
 414  00da a430          	and	a,#48
 415  00dc c7521c        	ld	21020,a
 416                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 418  00df 725f521b      	clr	21019
 419                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 421  00e3 96            	ldw	x,sp
 422  00e4 1c000c        	addw	x,#OFST+3
 423  00e7 cd0000        	call	c_ltor
 425  00ea ae0004        	ldw	x,#L05
 426  00ed cd0000        	call	c_lcmp
 428  00f0 2403          	jruge	L45
 429  00f2 cc017f        	jp	L711
 430  00f5               L45:
 431                     ; 131     tmpccrh = I2C_CCRH_FS;
 433  00f5 a680          	ld	a,#128
 434  00f7 6b07          	ld	(OFST-2,sp),a
 435                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 437  00f9 0d12          	tnz	(OFST+9,sp)
 438  00fb 2630          	jrne	L121
 439                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 441  00fd 96            	ldw	x,sp
 442  00fe 1c000c        	addw	x,#OFST+3
 443  0101 cd0000        	call	c_ltor
 445  0104 a603          	ld	a,#3
 446  0106 cd0000        	call	c_smul
 448  0109 96            	ldw	x,sp
 449  010a 1c0001        	addw	x,#OFST-8
 450  010d cd0000        	call	c_rtol
 452  0110 7b15          	ld	a,(OFST+12,sp)
 453  0112 b703          	ld	c_lreg+3,a
 454  0114 3f02          	clr	c_lreg+2
 455  0116 3f01          	clr	c_lreg+1
 456  0118 3f00          	clr	c_lreg
 457  011a ae0008        	ldw	x,#L25
 458  011d cd0000        	call	c_lmul
 460  0120 96            	ldw	x,sp
 461  0121 1c0001        	addw	x,#OFST-8
 462  0124 cd0000        	call	c_ludv
 464  0127 be02          	ldw	x,c_lreg+2
 465  0129 1f08          	ldw	(OFST-1,sp),x
 467  012b 2034          	jra	L321
 468  012d               L121:
 469                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 471  012d 96            	ldw	x,sp
 472  012e 1c000c        	addw	x,#OFST+3
 473  0131 cd0000        	call	c_ltor
 475  0134 a619          	ld	a,#25
 476  0136 cd0000        	call	c_smul
 478  0139 96            	ldw	x,sp
 479  013a 1c0001        	addw	x,#OFST-8
 480  013d cd0000        	call	c_rtol
 482  0140 7b15          	ld	a,(OFST+12,sp)
 483  0142 b703          	ld	c_lreg+3,a
 484  0144 3f02          	clr	c_lreg+2
 485  0146 3f01          	clr	c_lreg+1
 486  0148 3f00          	clr	c_lreg
 487  014a ae0008        	ldw	x,#L25
 488  014d cd0000        	call	c_lmul
 490  0150 96            	ldw	x,sp
 491  0151 1c0001        	addw	x,#OFST-8
 492  0154 cd0000        	call	c_ludv
 494  0157 be02          	ldw	x,c_lreg+2
 495  0159 1f08          	ldw	(OFST-1,sp),x
 496                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 498  015b 7b07          	ld	a,(OFST-2,sp)
 499  015d aa40          	or	a,#64
 500  015f 6b07          	ld	(OFST-2,sp),a
 501  0161               L321:
 502                     ; 147     if (result < (uint16_t)0x01)
 504  0161 1e08          	ldw	x,(OFST-1,sp)
 505  0163 2605          	jrne	L521
 506                     ; 150       result = (uint16_t)0x0001;
 508  0165 ae0001        	ldw	x,#1
 509  0168 1f08          	ldw	(OFST-1,sp),x
 510  016a               L521:
 511                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 513  016a 7b15          	ld	a,(OFST+12,sp)
 514  016c 97            	ld	xl,a
 515  016d a603          	ld	a,#3
 516  016f 42            	mul	x,a
 517  0170 a60a          	ld	a,#10
 518  0172 cd0000        	call	c_sdivx
 520  0175 5c            	incw	x
 521  0176 1f05          	ldw	(OFST-4,sp),x
 522                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 524  0178 7b06          	ld	a,(OFST-3,sp)
 525  017a c7521d        	ld	21021,a
 527  017d 2043          	jra	L721
 528  017f               L711:
 529                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 531  017f 96            	ldw	x,sp
 532  0180 1c000c        	addw	x,#OFST+3
 533  0183 cd0000        	call	c_ltor
 535  0186 3803          	sll	c_lreg+3
 536  0188 3902          	rlc	c_lreg+2
 537  018a 3901          	rlc	c_lreg+1
 538  018c 3900          	rlc	c_lreg
 539  018e 96            	ldw	x,sp
 540  018f 1c0001        	addw	x,#OFST-8
 541  0192 cd0000        	call	c_rtol
 543  0195 7b15          	ld	a,(OFST+12,sp)
 544  0197 b703          	ld	c_lreg+3,a
 545  0199 3f02          	clr	c_lreg+2
 546  019b 3f01          	clr	c_lreg+1
 547  019d 3f00          	clr	c_lreg
 548  019f ae0008        	ldw	x,#L25
 549  01a2 cd0000        	call	c_lmul
 551  01a5 96            	ldw	x,sp
 552  01a6 1c0001        	addw	x,#OFST-8
 553  01a9 cd0000        	call	c_ludv
 555  01ac be02          	ldw	x,c_lreg+2
 556  01ae 1f08          	ldw	(OFST-1,sp),x
 557                     ; 167     if (result < (uint16_t)0x0004)
 559  01b0 1e08          	ldw	x,(OFST-1,sp)
 560  01b2 a30004        	cpw	x,#4
 561  01b5 2405          	jruge	L131
 562                     ; 170       result = (uint16_t)0x0004;
 564  01b7 ae0004        	ldw	x,#4
 565  01ba 1f08          	ldw	(OFST-1,sp),x
 566  01bc               L131:
 567                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 569  01bc 7b15          	ld	a,(OFST+12,sp)
 570  01be 4c            	inc	a
 571  01bf c7521d        	ld	21021,a
 572  01c2               L721:
 573                     ; 181   I2C->CCRL = (uint8_t)result;
 575  01c2 7b09          	ld	a,(OFST+0,sp)
 576  01c4 c7521b        	ld	21019,a
 577                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 579  01c7 7b08          	ld	a,(OFST-1,sp)
 580  01c9 a40f          	and	a,#15
 581  01cb 1a07          	or	a,(OFST-2,sp)
 582  01cd c7521c        	ld	21020,a
 583                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 585  01d0 72105210      	bset	21008,#0
 586                     ; 188   I2C_AcknowledgeConfig(Ack);
 588  01d4 7b13          	ld	a,(OFST+10,sp)
 589  01d6 cd0000        	call	_I2C_AcknowledgeConfig
 591                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 593  01d9 7b11          	ld	a,(OFST+8,sp)
 594  01db c75213        	ld	21011,a
 595                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 595                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 597  01de 7b10          	ld	a,(OFST+7,sp)
 598  01e0 97            	ld	xl,a
 599  01e1 7b11          	ld	a,(OFST+8,sp)
 600  01e3 9f            	ld	a,xl
 601  01e4 a403          	and	a,#3
 602  01e6 97            	ld	xl,a
 603  01e7 4f            	clr	a
 604  01e8 02            	rlwa	x,a
 605  01e9 4f            	clr	a
 606  01ea 01            	rrwa	x,a
 607  01eb 48            	sll	a
 608  01ec 59            	rlcw	x
 609  01ed 9f            	ld	a,xl
 610  01ee 6b04          	ld	(OFST-5,sp),a
 611  01f0 7b14          	ld	a,(OFST+11,sp)
 612  01f2 aa40          	or	a,#64
 613  01f4 1a04          	or	a,(OFST-5,sp)
 614  01f6 c75214        	ld	21012,a
 615                     ; 194 }
 618  01f9 5b09          	addw	sp,#9
 619  01fb 81            	ret
 675                     ; 202 void I2C_Cmd(FunctionalState NewState)
 675                     ; 203 {
 676                     .text:	section	.text,new
 677  0000               _I2C_Cmd:
 679  0000 88            	push	a
 680       00000000      OFST:	set	0
 683                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 685  0001 4d            	tnz	a
 686  0002 2704          	jreq	L26
 687  0004 a101          	cp	a,#1
 688  0006 2603          	jrne	L06
 689  0008               L26:
 690  0008 4f            	clr	a
 691  0009 2010          	jra	L46
 692  000b               L06:
 693  000b ae00cd        	ldw	x,#205
 694  000e 89            	pushw	x
 695  000f ae0000        	ldw	x,#0
 696  0012 89            	pushw	x
 697  0013 ae000c        	ldw	x,#L511
 698  0016 cd0000        	call	_assert_failed
 700  0019 5b04          	addw	sp,#4
 701  001b               L46:
 702                     ; 207   if (NewState != DISABLE)
 704  001b 0d01          	tnz	(OFST+1,sp)
 705  001d 2706          	jreq	L161
 706                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 708  001f 72105210      	bset	21008,#0
 710  0023 2004          	jra	L361
 711  0025               L161:
 712                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 714  0025 72115210      	bres	21008,#0
 715  0029               L361:
 716                     ; 217 }
 719  0029 84            	pop	a
 720  002a 81            	ret
 756                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 756                     ; 226 {
 757                     .text:	section	.text,new
 758  0000               _I2C_GeneralCallCmd:
 760  0000 88            	push	a
 761       00000000      OFST:	set	0
 764                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 766  0001 4d            	tnz	a
 767  0002 2704          	jreq	L27
 768  0004 a101          	cp	a,#1
 769  0006 2603          	jrne	L07
 770  0008               L27:
 771  0008 4f            	clr	a
 772  0009 2010          	jra	L47
 773  000b               L07:
 774  000b ae00e4        	ldw	x,#228
 775  000e 89            	pushw	x
 776  000f ae0000        	ldw	x,#0
 777  0012 89            	pushw	x
 778  0013 ae000c        	ldw	x,#L511
 779  0016 cd0000        	call	_assert_failed
 781  0019 5b04          	addw	sp,#4
 782  001b               L47:
 783                     ; 230   if (NewState != DISABLE)
 785  001b 0d01          	tnz	(OFST+1,sp)
 786  001d 2706          	jreq	L302
 787                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 789  001f 721c5210      	bset	21008,#6
 791  0023 2004          	jra	L502
 792  0025               L302:
 793                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 795  0025 721d5210      	bres	21008,#6
 796  0029               L502:
 797                     ; 240 }
 800  0029 84            	pop	a
 801  002a 81            	ret
 837                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 837                     ; 251 {
 838                     .text:	section	.text,new
 839  0000               _I2C_GenerateSTART:
 841  0000 88            	push	a
 842       00000000      OFST:	set	0
 845                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 847  0001 4d            	tnz	a
 848  0002 2704          	jreq	L201
 849  0004 a101          	cp	a,#1
 850  0006 2603          	jrne	L001
 851  0008               L201:
 852  0008 4f            	clr	a
 853  0009 2010          	jra	L401
 854  000b               L001:
 855  000b ae00fd        	ldw	x,#253
 856  000e 89            	pushw	x
 857  000f ae0000        	ldw	x,#0
 858  0012 89            	pushw	x
 859  0013 ae000c        	ldw	x,#L511
 860  0016 cd0000        	call	_assert_failed
 862  0019 5b04          	addw	sp,#4
 863  001b               L401:
 864                     ; 255   if (NewState != DISABLE)
 866  001b 0d01          	tnz	(OFST+1,sp)
 867  001d 2706          	jreq	L522
 868                     ; 258     I2C->CR2 |= I2C_CR2_START;
 870  001f 72105211      	bset	21009,#0
 872  0023 2004          	jra	L722
 873  0025               L522:
 874                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 876  0025 72115211      	bres	21009,#0
 877  0029               L722:
 878                     ; 265 }
 881  0029 84            	pop	a
 882  002a 81            	ret
 918                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 918                     ; 274 {
 919                     .text:	section	.text,new
 920  0000               _I2C_GenerateSTOP:
 922  0000 88            	push	a
 923       00000000      OFST:	set	0
 926                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 928  0001 4d            	tnz	a
 929  0002 2704          	jreq	L211
 930  0004 a101          	cp	a,#1
 931  0006 2603          	jrne	L011
 932  0008               L211:
 933  0008 4f            	clr	a
 934  0009 2010          	jra	L411
 935  000b               L011:
 936  000b ae0114        	ldw	x,#276
 937  000e 89            	pushw	x
 938  000f ae0000        	ldw	x,#0
 939  0012 89            	pushw	x
 940  0013 ae000c        	ldw	x,#L511
 941  0016 cd0000        	call	_assert_failed
 943  0019 5b04          	addw	sp,#4
 944  001b               L411:
 945                     ; 278   if (NewState != DISABLE)
 947  001b 0d01          	tnz	(OFST+1,sp)
 948  001d 2706          	jreq	L742
 949                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 951  001f 72125211      	bset	21009,#1
 953  0023 2004          	jra	L152
 954  0025               L742:
 955                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 957  0025 72135211      	bres	21009,#1
 958  0029               L152:
 959                     ; 288 }
 962  0029 84            	pop	a
 963  002a 81            	ret
1000                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1000                     ; 297 {
1001                     .text:	section	.text,new
1002  0000               _I2C_SoftwareResetCmd:
1004  0000 88            	push	a
1005       00000000      OFST:	set	0
1008                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1010  0001 4d            	tnz	a
1011  0002 2704          	jreq	L221
1012  0004 a101          	cp	a,#1
1013  0006 2603          	jrne	L021
1014  0008               L221:
1015  0008 4f            	clr	a
1016  0009 2010          	jra	L421
1017  000b               L021:
1018  000b ae012b        	ldw	x,#299
1019  000e 89            	pushw	x
1020  000f ae0000        	ldw	x,#0
1021  0012 89            	pushw	x
1022  0013 ae000c        	ldw	x,#L511
1023  0016 cd0000        	call	_assert_failed
1025  0019 5b04          	addw	sp,#4
1026  001b               L421:
1027                     ; 301   if (NewState != DISABLE)
1029  001b 0d01          	tnz	(OFST+1,sp)
1030  001d 2706          	jreq	L172
1031                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1033  001f 721e5211      	bset	21009,#7
1035  0023 2004          	jra	L372
1036  0025               L172:
1037                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1039  0025 721f5211      	bres	21009,#7
1040  0029               L372:
1041                     ; 311 }
1044  0029 84            	pop	a
1045  002a 81            	ret
1082                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1082                     ; 321 {
1083                     .text:	section	.text,new
1084  0000               _I2C_StretchClockCmd:
1086  0000 88            	push	a
1087       00000000      OFST:	set	0
1090                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1092  0001 4d            	tnz	a
1093  0002 2704          	jreq	L231
1094  0004 a101          	cp	a,#1
1095  0006 2603          	jrne	L031
1096  0008               L231:
1097  0008 4f            	clr	a
1098  0009 2010          	jra	L431
1099  000b               L031:
1100  000b ae0143        	ldw	x,#323
1101  000e 89            	pushw	x
1102  000f ae0000        	ldw	x,#0
1103  0012 89            	pushw	x
1104  0013 ae000c        	ldw	x,#L511
1105  0016 cd0000        	call	_assert_failed
1107  0019 5b04          	addw	sp,#4
1108  001b               L431:
1109                     ; 325   if (NewState != DISABLE)
1111  001b 0d01          	tnz	(OFST+1,sp)
1112  001d 2706          	jreq	L313
1113                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1115  001f 721f5210      	bres	21008,#7
1117  0023 2004          	jra	L513
1118  0025               L313:
1119                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1121  0025 721e5210      	bset	21008,#7
1122  0029               L513:
1123                     ; 336 }
1126  0029 84            	pop	a
1127  002a 81            	ret
1164                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1164                     ; 346 {
1165                     .text:	section	.text,new
1166  0000               _I2C_AcknowledgeConfig:
1168  0000 88            	push	a
1169       00000000      OFST:	set	0
1172                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1174  0001 4d            	tnz	a
1175  0002 2708          	jreq	L241
1176  0004 a101          	cp	a,#1
1177  0006 2704          	jreq	L241
1178  0008 a102          	cp	a,#2
1179  000a 2603          	jrne	L041
1180  000c               L241:
1181  000c 4f            	clr	a
1182  000d 2010          	jra	L441
1183  000f               L041:
1184  000f ae015c        	ldw	x,#348
1185  0012 89            	pushw	x
1186  0013 ae0000        	ldw	x,#0
1187  0016 89            	pushw	x
1188  0017 ae000c        	ldw	x,#L511
1189  001a cd0000        	call	_assert_failed
1191  001d 5b04          	addw	sp,#4
1192  001f               L441:
1193                     ; 350   if (Ack == I2C_ACK_NONE)
1195  001f 0d01          	tnz	(OFST+1,sp)
1196  0021 2606          	jrne	L533
1197                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1199  0023 72155211      	bres	21009,#2
1201  0027 2014          	jra	L733
1202  0029               L533:
1203                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1205  0029 72145211      	bset	21009,#2
1206                     ; 360     if (Ack == I2C_ACK_CURR)
1208  002d 7b01          	ld	a,(OFST+1,sp)
1209  002f a101          	cp	a,#1
1210  0031 2606          	jrne	L143
1211                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1213  0033 72175211      	bres	21009,#3
1215  0037 2004          	jra	L733
1216  0039               L143:
1217                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1219  0039 72165211      	bset	21009,#3
1220  003d               L733:
1221                     ; 371 }
1224  003d 84            	pop	a
1225  003e 81            	ret
1298                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1298                     ; 382 {
1299                     .text:	section	.text,new
1300  0000               _I2C_ITConfig:
1302  0000 89            	pushw	x
1303       00000000      OFST:	set	0
1306                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1308  0001 9e            	ld	a,xh
1309  0002 a101          	cp	a,#1
1310  0004 271e          	jreq	L251
1311  0006 9e            	ld	a,xh
1312  0007 a102          	cp	a,#2
1313  0009 2719          	jreq	L251
1314  000b 9e            	ld	a,xh
1315  000c a104          	cp	a,#4
1316  000e 2714          	jreq	L251
1317  0010 9e            	ld	a,xh
1318  0011 a103          	cp	a,#3
1319  0013 270f          	jreq	L251
1320  0015 9e            	ld	a,xh
1321  0016 a105          	cp	a,#5
1322  0018 270a          	jreq	L251
1323  001a 9e            	ld	a,xh
1324  001b a106          	cp	a,#6
1325  001d 2705          	jreq	L251
1326  001f 9e            	ld	a,xh
1327  0020 a107          	cp	a,#7
1328  0022 2603          	jrne	L051
1329  0024               L251:
1330  0024 4f            	clr	a
1331  0025 2010          	jra	L451
1332  0027               L051:
1333  0027 ae0180        	ldw	x,#384
1334  002a 89            	pushw	x
1335  002b ae0000        	ldw	x,#0
1336  002e 89            	pushw	x
1337  002f ae000c        	ldw	x,#L511
1338  0032 cd0000        	call	_assert_failed
1340  0035 5b04          	addw	sp,#4
1341  0037               L451:
1342                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1344  0037 0d02          	tnz	(OFST+2,sp)
1345  0039 2706          	jreq	L061
1346  003b 7b02          	ld	a,(OFST+2,sp)
1347  003d a101          	cp	a,#1
1348  003f 2603          	jrne	L651
1349  0041               L061:
1350  0041 4f            	clr	a
1351  0042 2010          	jra	L261
1352  0044               L651:
1353  0044 ae0181        	ldw	x,#385
1354  0047 89            	pushw	x
1355  0048 ae0000        	ldw	x,#0
1356  004b 89            	pushw	x
1357  004c ae000c        	ldw	x,#L511
1358  004f cd0000        	call	_assert_failed
1360  0052 5b04          	addw	sp,#4
1361  0054               L261:
1362                     ; 387   if (NewState != DISABLE)
1364  0054 0d02          	tnz	(OFST+2,sp)
1365  0056 270a          	jreq	L104
1366                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1368  0058 c6521a        	ld	a,21018
1369  005b 1a01          	or	a,(OFST+1,sp)
1370  005d c7521a        	ld	21018,a
1372  0060 2009          	jra	L304
1373  0062               L104:
1374                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1376  0062 7b01          	ld	a,(OFST+1,sp)
1377  0064 43            	cpl	a
1378  0065 c4521a        	and	a,21018
1379  0068 c7521a        	ld	21018,a
1380  006b               L304:
1381                     ; 397 }
1384  006b 85            	popw	x
1385  006c 81            	ret
1422                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1422                     ; 406 {
1423                     .text:	section	.text,new
1424  0000               _I2C_FastModeDutyCycleConfig:
1426  0000 88            	push	a
1427       00000000      OFST:	set	0
1430                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1432  0001 4d            	tnz	a
1433  0002 2704          	jreq	L071
1434  0004 a140          	cp	a,#64
1435  0006 2603          	jrne	L661
1436  0008               L071:
1437  0008 4f            	clr	a
1438  0009 2010          	jra	L271
1439  000b               L661:
1440  000b ae0198        	ldw	x,#408
1441  000e 89            	pushw	x
1442  000f ae0000        	ldw	x,#0
1443  0012 89            	pushw	x
1444  0013 ae000c        	ldw	x,#L511
1445  0016 cd0000        	call	_assert_failed
1447  0019 5b04          	addw	sp,#4
1448  001b               L271:
1449                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1451  001b 7b01          	ld	a,(OFST+1,sp)
1452  001d a140          	cp	a,#64
1453  001f 2606          	jrne	L324
1454                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1456  0021 721c521c      	bset	21020,#6
1458  0025 2004          	jra	L524
1459  0027               L324:
1460                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1462  0027 721d521c      	bres	21020,#6
1463  002b               L524:
1464                     ; 420 }
1467  002b 84            	pop	a
1468  002c 81            	ret
1491                     ; 427 uint8_t I2C_ReceiveData(void)
1491                     ; 428 {
1492                     .text:	section	.text,new
1493  0000               _I2C_ReceiveData:
1497                     ; 430   return ((uint8_t)I2C->DR);
1499  0000 c65216        	ld	a,21014
1502  0003 81            	ret
1566                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1566                     ; 441 {
1567                     .text:	section	.text,new
1568  0000               _I2C_Send7bitAddress:
1570  0000 89            	pushw	x
1571       00000000      OFST:	set	0
1574                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1576  0001 9e            	ld	a,xh
1577  0002 a501          	bcp	a,#1
1578  0004 2603          	jrne	L002
1579  0006 4f            	clr	a
1580  0007 2010          	jra	L202
1581  0009               L002:
1582  0009 ae01bb        	ldw	x,#443
1583  000c 89            	pushw	x
1584  000d ae0000        	ldw	x,#0
1585  0010 89            	pushw	x
1586  0011 ae000c        	ldw	x,#L511
1587  0014 cd0000        	call	_assert_failed
1589  0017 5b04          	addw	sp,#4
1590  0019               L202:
1591                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1593  0019 0d02          	tnz	(OFST+2,sp)
1594  001b 2706          	jreq	L602
1595  001d 7b02          	ld	a,(OFST+2,sp)
1596  001f a101          	cp	a,#1
1597  0021 2603          	jrne	L402
1598  0023               L602:
1599  0023 4f            	clr	a
1600  0024 2010          	jra	L012
1601  0026               L402:
1602  0026 ae01bc        	ldw	x,#444
1603  0029 89            	pushw	x
1604  002a ae0000        	ldw	x,#0
1605  002d 89            	pushw	x
1606  002e ae000c        	ldw	x,#L511
1607  0031 cd0000        	call	_assert_failed
1609  0034 5b04          	addw	sp,#4
1610  0036               L012:
1611                     ; 447   Address &= (uint8_t)0xFE;
1613  0036 7b01          	ld	a,(OFST+1,sp)
1614  0038 a4fe          	and	a,#254
1615  003a 6b01          	ld	(OFST+1,sp),a
1616                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1618  003c 7b01          	ld	a,(OFST+1,sp)
1619  003e 1a02          	or	a,(OFST+2,sp)
1620  0040 c75216        	ld	21014,a
1621                     ; 451 }
1624  0043 85            	popw	x
1625  0044 81            	ret
1657                     ; 458 void I2C_SendData(uint8_t Data)
1657                     ; 459 {
1658                     .text:	section	.text,new
1659  0000               _I2C_SendData:
1663                     ; 461   I2C->DR = Data;
1665  0000 c75216        	ld	21014,a
1666                     ; 462 }
1669  0003 81            	ret
1890                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1890                     ; 579 {
1891                     .text:	section	.text,new
1892  0000               _I2C_CheckEvent:
1894  0000 89            	pushw	x
1895  0001 5206          	subw	sp,#6
1896       00000006      OFST:	set	6
1899                     ; 580   __IO uint16_t lastevent = 0x00;
1901  0003 5f            	clrw	x
1902  0004 1f04          	ldw	(OFST-2,sp),x
1903                     ; 581   uint8_t flag1 = 0x00 ;
1905                     ; 582   uint8_t flag2 = 0x00;
1907                     ; 583   ErrorStatus status = ERROR;
1909                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1911  0006 1e07          	ldw	x,(OFST+1,sp)
1912  0008 a30682        	cpw	x,#1666
1913  000b 2769          	jreq	L022
1914  000d 1e07          	ldw	x,(OFST+1,sp)
1915  000f a30202        	cpw	x,#514
1916  0012 2762          	jreq	L022
1917  0014 1e07          	ldw	x,(OFST+1,sp)
1918  0016 a31200        	cpw	x,#4608
1919  0019 275b          	jreq	L022
1920  001b 1e07          	ldw	x,(OFST+1,sp)
1921  001d a30240        	cpw	x,#576
1922  0020 2754          	jreq	L022
1923  0022 1e07          	ldw	x,(OFST+1,sp)
1924  0024 a30350        	cpw	x,#848
1925  0027 274d          	jreq	L022
1926  0029 1e07          	ldw	x,(OFST+1,sp)
1927  002b a30684        	cpw	x,#1668
1928  002e 2746          	jreq	L022
1929  0030 1e07          	ldw	x,(OFST+1,sp)
1930  0032 a30794        	cpw	x,#1940
1931  0035 273f          	jreq	L022
1932  0037 1e07          	ldw	x,(OFST+1,sp)
1933  0039 a30004        	cpw	x,#4
1934  003c 2738          	jreq	L022
1935  003e 1e07          	ldw	x,(OFST+1,sp)
1936  0040 a30010        	cpw	x,#16
1937  0043 2731          	jreq	L022
1938  0045 1e07          	ldw	x,(OFST+1,sp)
1939  0047 a30301        	cpw	x,#769
1940  004a 272a          	jreq	L022
1941  004c 1e07          	ldw	x,(OFST+1,sp)
1942  004e a30782        	cpw	x,#1922
1943  0051 2723          	jreq	L022
1944  0053 1e07          	ldw	x,(OFST+1,sp)
1945  0055 a30302        	cpw	x,#770
1946  0058 271c          	jreq	L022
1947  005a 1e07          	ldw	x,(OFST+1,sp)
1948  005c a30340        	cpw	x,#832
1949  005f 2715          	jreq	L022
1950  0061 1e07          	ldw	x,(OFST+1,sp)
1951  0063 a30784        	cpw	x,#1924
1952  0066 270e          	jreq	L022
1953  0068 1e07          	ldw	x,(OFST+1,sp)
1954  006a a30780        	cpw	x,#1920
1955  006d 2707          	jreq	L022
1956  006f 1e07          	ldw	x,(OFST+1,sp)
1957  0071 a30308        	cpw	x,#776
1958  0074 2603          	jrne	L612
1959  0076               L022:
1960  0076 4f            	clr	a
1961  0077 2010          	jra	L222
1962  0079               L612:
1963  0079 ae024a        	ldw	x,#586
1964  007c 89            	pushw	x
1965  007d ae0000        	ldw	x,#0
1966  0080 89            	pushw	x
1967  0081 ae000c        	ldw	x,#L511
1968  0084 cd0000        	call	_assert_failed
1970  0087 5b04          	addw	sp,#4
1971  0089               L222:
1972                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1974  0089 1e07          	ldw	x,(OFST+1,sp)
1975  008b a30004        	cpw	x,#4
1976  008e 260b          	jrne	L706
1977                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1979  0090 c65218        	ld	a,21016
1980  0093 a404          	and	a,#4
1981  0095 5f            	clrw	x
1982  0096 97            	ld	xl,a
1983  0097 1f04          	ldw	(OFST-2,sp),x
1985  0099 201f          	jra	L116
1986  009b               L706:
1987                     ; 594     flag1 = I2C->SR1;
1989  009b c65217        	ld	a,21015
1990  009e 6b03          	ld	(OFST-3,sp),a
1991                     ; 595     flag2 = I2C->SR3;
1993  00a0 c65219        	ld	a,21017
1994  00a3 6b06          	ld	(OFST+0,sp),a
1995                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1997  00a5 7b03          	ld	a,(OFST-3,sp)
1998  00a7 5f            	clrw	x
1999  00a8 97            	ld	xl,a
2000  00a9 1f01          	ldw	(OFST-5,sp),x
2001  00ab 7b06          	ld	a,(OFST+0,sp)
2002  00ad 5f            	clrw	x
2003  00ae 97            	ld	xl,a
2004  00af 4f            	clr	a
2005  00b0 02            	rlwa	x,a
2006  00b1 01            	rrwa	x,a
2007  00b2 1a02          	or	a,(OFST-4,sp)
2008  00b4 01            	rrwa	x,a
2009  00b5 1a01          	or	a,(OFST-5,sp)
2010  00b7 01            	rrwa	x,a
2011  00b8 1f04          	ldw	(OFST-2,sp),x
2012  00ba               L116:
2013                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2015  00ba 1e04          	ldw	x,(OFST-2,sp)
2016  00bc 01            	rrwa	x,a
2017  00bd 1408          	and	a,(OFST+2,sp)
2018  00bf 01            	rrwa	x,a
2019  00c0 1407          	and	a,(OFST+1,sp)
2020  00c2 01            	rrwa	x,a
2021  00c3 1307          	cpw	x,(OFST+1,sp)
2022  00c5 2606          	jrne	L316
2023                     ; 602     status = SUCCESS;
2025  00c7 a601          	ld	a,#1
2026  00c9 6b06          	ld	(OFST+0,sp),a
2028  00cb 2002          	jra	L516
2029  00cd               L316:
2030                     ; 607     status = ERROR;
2032  00cd 0f06          	clr	(OFST+0,sp)
2033  00cf               L516:
2034                     ; 611   return status;
2036  00cf 7b06          	ld	a,(OFST+0,sp)
2039  00d1 5b08          	addw	sp,#8
2040  00d3 81            	ret
2089                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2089                     ; 629 {
2090                     .text:	section	.text,new
2091  0000               _I2C_GetLastEvent:
2093  0000 5206          	subw	sp,#6
2094       00000006      OFST:	set	6
2097                     ; 630   __IO uint16_t lastevent = 0;
2099  0002 5f            	clrw	x
2100  0003 1f05          	ldw	(OFST-1,sp),x
2101                     ; 631   uint16_t flag1 = 0;
2103                     ; 632   uint16_t flag2 = 0;
2105                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2107  0005 c65218        	ld	a,21016
2108  0008 a504          	bcp	a,#4
2109  000a 2707          	jreq	L146
2110                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2112  000c ae0004        	ldw	x,#4
2113  000f 1f05          	ldw	(OFST-1,sp),x
2115  0011 201b          	jra	L346
2116  0013               L146:
2117                     ; 641     flag1 = I2C->SR1;
2119  0013 c65217        	ld	a,21015
2120  0016 5f            	clrw	x
2121  0017 97            	ld	xl,a
2122  0018 1f01          	ldw	(OFST-5,sp),x
2123                     ; 642     flag2 = I2C->SR3;
2125  001a c65219        	ld	a,21017
2126  001d 5f            	clrw	x
2127  001e 97            	ld	xl,a
2128  001f 1f03          	ldw	(OFST-3,sp),x
2129                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2131  0021 1e03          	ldw	x,(OFST-3,sp)
2132  0023 4f            	clr	a
2133  0024 02            	rlwa	x,a
2134  0025 01            	rrwa	x,a
2135  0026 1a02          	or	a,(OFST-4,sp)
2136  0028 01            	rrwa	x,a
2137  0029 1a01          	or	a,(OFST-5,sp)
2138  002b 01            	rrwa	x,a
2139  002c 1f05          	ldw	(OFST-1,sp),x
2140  002e               L346:
2141                     ; 648   return (I2C_Event_TypeDef)lastevent;
2143  002e 1e05          	ldw	x,(OFST-1,sp)
2146  0030 5b06          	addw	sp,#6
2147  0032 81            	ret
2359                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2359                     ; 680 {
2360                     .text:	section	.text,new
2361  0000               _I2C_GetFlagStatus:
2363  0000 89            	pushw	x
2364  0001 89            	pushw	x
2365       00000002      OFST:	set	2
2368                     ; 681   uint8_t tempreg = 0;
2370  0002 0f02          	clr	(OFST+0,sp)
2371                     ; 682   uint8_t regindex = 0;
2373                     ; 683   FlagStatus bitstatus = RESET;
2375                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2377  0004 a30180        	cpw	x,#384
2378  0007 274b          	jreq	L232
2379  0009 a30140        	cpw	x,#320
2380  000c 2746          	jreq	L232
2381  000e a30110        	cpw	x,#272
2382  0011 2741          	jreq	L232
2383  0013 a30108        	cpw	x,#264
2384  0016 273c          	jreq	L232
2385  0018 a30104        	cpw	x,#260
2386  001b 2737          	jreq	L232
2387  001d a30102        	cpw	x,#258
2388  0020 2732          	jreq	L232
2389  0022 a30101        	cpw	x,#257
2390  0025 272d          	jreq	L232
2391  0027 a30220        	cpw	x,#544
2392  002a 2728          	jreq	L232
2393  002c a30208        	cpw	x,#520
2394  002f 2723          	jreq	L232
2395  0031 a30204        	cpw	x,#516
2396  0034 271e          	jreq	L232
2397  0036 a30202        	cpw	x,#514
2398  0039 2719          	jreq	L232
2399  003b a30201        	cpw	x,#513
2400  003e 2714          	jreq	L232
2401  0040 a30310        	cpw	x,#784
2402  0043 270f          	jreq	L232
2403  0045 a30304        	cpw	x,#772
2404  0048 270a          	jreq	L232
2405  004a a30302        	cpw	x,#770
2406  004d 2705          	jreq	L232
2407  004f a30301        	cpw	x,#769
2408  0052 2603          	jrne	L032
2409  0054               L232:
2410  0054 4f            	clr	a
2411  0055 2010          	jra	L432
2412  0057               L032:
2413  0057 ae02ae        	ldw	x,#686
2414  005a 89            	pushw	x
2415  005b ae0000        	ldw	x,#0
2416  005e 89            	pushw	x
2417  005f ae000c        	ldw	x,#L511
2418  0062 cd0000        	call	_assert_failed
2420  0065 5b04          	addw	sp,#4
2421  0067               L432:
2422                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2424  0067 7b03          	ld	a,(OFST+1,sp)
2425  0069 6b01          	ld	(OFST-1,sp),a
2426                     ; 691   switch (regindex)
2428  006b 7b01          	ld	a,(OFST-1,sp)
2430                     ; 708     default:
2430                     ; 709       break;
2431  006d 4a            	dec	a
2432  006e 2708          	jreq	L546
2433  0070 4a            	dec	a
2434  0071 270c          	jreq	L746
2435  0073 4a            	dec	a
2436  0074 2710          	jreq	L156
2437  0076 2013          	jra	L167
2438  0078               L546:
2439                     ; 694     case 0x01:
2439                     ; 695       tempreg = (uint8_t)I2C->SR1;
2441  0078 c65217        	ld	a,21015
2442  007b 6b02          	ld	(OFST+0,sp),a
2443                     ; 696       break;
2445  007d 200c          	jra	L167
2446  007f               L746:
2447                     ; 699     case 0x02:
2447                     ; 700       tempreg = (uint8_t)I2C->SR2;
2449  007f c65218        	ld	a,21016
2450  0082 6b02          	ld	(OFST+0,sp),a
2451                     ; 701       break;
2453  0084 2005          	jra	L167
2454  0086               L156:
2455                     ; 704     case 0x03:
2455                     ; 705       tempreg = (uint8_t)I2C->SR3;
2457  0086 c65219        	ld	a,21017
2458  0089 6b02          	ld	(OFST+0,sp),a
2459                     ; 706       break;
2461  008b               L356:
2462                     ; 708     default:
2462                     ; 709       break;
2464  008b               L167:
2465                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2467  008b 7b04          	ld	a,(OFST+2,sp)
2468  008d 1502          	bcp	a,(OFST+0,sp)
2469  008f 2706          	jreq	L367
2470                     ; 716     bitstatus = SET;
2472  0091 a601          	ld	a,#1
2473  0093 6b02          	ld	(OFST+0,sp),a
2475  0095 2002          	jra	L567
2476  0097               L367:
2477                     ; 721     bitstatus = RESET;
2479  0097 0f02          	clr	(OFST+0,sp)
2480  0099               L567:
2481                     ; 724   return bitstatus;
2483  0099 7b02          	ld	a,(OFST+0,sp)
2486  009b 5b04          	addw	sp,#4
2487  009d 81            	ret
2530                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2530                     ; 760 {
2531                     .text:	section	.text,new
2532  0000               _I2C_ClearFlag:
2534  0000 89            	pushw	x
2535  0001 89            	pushw	x
2536       00000002      OFST:	set	2
2539                     ; 761   uint16_t flagpos = 0;
2541                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2543  0002 01            	rrwa	x,a
2544  0003 9f            	ld	a,xl
2545  0004 a4fd          	and	a,#253
2546  0006 97            	ld	xl,a
2547  0007 4f            	clr	a
2548  0008 02            	rlwa	x,a
2549  0009 5d            	tnzw	x
2550  000a 2607          	jrne	L042
2551  000c 1e03          	ldw	x,(OFST+1,sp)
2552  000e 2703          	jreq	L042
2553  0010 4f            	clr	a
2554  0011 2010          	jra	L242
2555  0013               L042:
2556  0013 ae02fb        	ldw	x,#763
2557  0016 89            	pushw	x
2558  0017 ae0000        	ldw	x,#0
2559  001a 89            	pushw	x
2560  001b ae000c        	ldw	x,#L511
2561  001e cd0000        	call	_assert_failed
2563  0021 5b04          	addw	sp,#4
2564  0023               L242:
2565                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2567  0023 7b03          	ld	a,(OFST+1,sp)
2568  0025 97            	ld	xl,a
2569  0026 7b04          	ld	a,(OFST+2,sp)
2570  0028 a4ff          	and	a,#255
2571  002a 5f            	clrw	x
2572  002b 02            	rlwa	x,a
2573  002c 1f01          	ldw	(OFST-1,sp),x
2574  002e 01            	rrwa	x,a
2575                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2577  002f 7b02          	ld	a,(OFST+0,sp)
2578  0031 43            	cpl	a
2579  0032 c75218        	ld	21016,a
2580                     ; 769 }
2583  0035 5b04          	addw	sp,#4
2584  0037 81            	ret
2749                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2749                     ; 792 {
2750                     .text:	section	.text,new
2751  0000               _I2C_GetITStatus:
2753  0000 89            	pushw	x
2754  0001 5204          	subw	sp,#4
2755       00000004      OFST:	set	4
2758                     ; 793   ITStatus bitstatus = RESET;
2760                     ; 794   __IO uint8_t enablestatus = 0;
2762  0003 0f03          	clr	(OFST-1,sp)
2763                     ; 795   uint16_t tempregister = 0;
2765                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2767  0005 a31680        	cpw	x,#5760
2768  0008 2737          	jreq	L052
2769  000a a31640        	cpw	x,#5696
2770  000d 2732          	jreq	L052
2771  000f a31210        	cpw	x,#4624
2772  0012 272d          	jreq	L052
2773  0014 a31208        	cpw	x,#4616
2774  0017 2728          	jreq	L052
2775  0019 a31204        	cpw	x,#4612
2776  001c 2723          	jreq	L052
2777  001e a31202        	cpw	x,#4610
2778  0021 271e          	jreq	L052
2779  0023 a31201        	cpw	x,#4609
2780  0026 2719          	jreq	L052
2781  0028 a32220        	cpw	x,#8736
2782  002b 2714          	jreq	L052
2783  002d a32108        	cpw	x,#8456
2784  0030 270f          	jreq	L052
2785  0032 a32104        	cpw	x,#8452
2786  0035 270a          	jreq	L052
2787  0037 a32102        	cpw	x,#8450
2788  003a 2705          	jreq	L052
2789  003c a32101        	cpw	x,#8449
2790  003f 2603          	jrne	L642
2791  0041               L052:
2792  0041 4f            	clr	a
2793  0042 2010          	jra	L252
2794  0044               L642:
2795  0044 ae031e        	ldw	x,#798
2796  0047 89            	pushw	x
2797  0048 ae0000        	ldw	x,#0
2798  004b 89            	pushw	x
2799  004c ae000c        	ldw	x,#L511
2800  004f cd0000        	call	_assert_failed
2802  0052 5b04          	addw	sp,#4
2803  0054               L252:
2804                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2806  0054 7b05          	ld	a,(OFST+1,sp)
2807  0056 97            	ld	xl,a
2808  0057 7b06          	ld	a,(OFST+2,sp)
2809  0059 9f            	ld	a,xl
2810  005a a407          	and	a,#7
2811  005c 97            	ld	xl,a
2812  005d 4f            	clr	a
2813  005e 02            	rlwa	x,a
2814  005f 4f            	clr	a
2815  0060 01            	rrwa	x,a
2816  0061 9f            	ld	a,xl
2817  0062 5f            	clrw	x
2818  0063 97            	ld	xl,a
2819  0064 1f01          	ldw	(OFST-3,sp),x
2820                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2822  0066 c6521a        	ld	a,21018
2823  0069 1402          	and	a,(OFST-2,sp)
2824  006b 6b03          	ld	(OFST-1,sp),a
2825                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2827  006d 7b05          	ld	a,(OFST+1,sp)
2828  006f 97            	ld	xl,a
2829  0070 7b06          	ld	a,(OFST+2,sp)
2830  0072 9f            	ld	a,xl
2831  0073 a430          	and	a,#48
2832  0075 97            	ld	xl,a
2833  0076 4f            	clr	a
2834  0077 02            	rlwa	x,a
2835  0078 a30100        	cpw	x,#256
2836  007b 2615          	jrne	L3701
2837                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2839  007d c65217        	ld	a,21015
2840  0080 1506          	bcp	a,(OFST+2,sp)
2841  0082 270a          	jreq	L5701
2843  0084 0d03          	tnz	(OFST-1,sp)
2844  0086 2706          	jreq	L5701
2845                     ; 811       bitstatus = SET;
2847  0088 a601          	ld	a,#1
2848  008a 6b04          	ld	(OFST+0,sp),a
2850  008c 2017          	jra	L1011
2851  008e               L5701:
2852                     ; 816       bitstatus = RESET;
2854  008e 0f04          	clr	(OFST+0,sp)
2855  0090 2013          	jra	L1011
2856  0092               L3701:
2857                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2859  0092 c65218        	ld	a,21016
2860  0095 1506          	bcp	a,(OFST+2,sp)
2861  0097 270a          	jreq	L3011
2863  0099 0d03          	tnz	(OFST-1,sp)
2864  009b 2706          	jreq	L3011
2865                     ; 825       bitstatus = SET;
2867  009d a601          	ld	a,#1
2868  009f 6b04          	ld	(OFST+0,sp),a
2870  00a1 2002          	jra	L1011
2871  00a3               L3011:
2872                     ; 830       bitstatus = RESET;
2874  00a3 0f04          	clr	(OFST+0,sp)
2875  00a5               L1011:
2876                     ; 834   return  bitstatus;
2878  00a5 7b04          	ld	a,(OFST+0,sp)
2881  00a7 5b06          	addw	sp,#6
2882  00a9 81            	ret
2926                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2926                     ; 872 {
2927                     .text:	section	.text,new
2928  0000               _I2C_ClearITPendingBit:
2930  0000 89            	pushw	x
2931  0001 89            	pushw	x
2932       00000002      OFST:	set	2
2935                     ; 873   uint16_t flagpos = 0;
2937                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2939  0002 a32220        	cpw	x,#8736
2940  0005 2714          	jreq	L062
2941  0007 a32108        	cpw	x,#8456
2942  000a 270f          	jreq	L062
2943  000c a32104        	cpw	x,#8452
2944  000f 270a          	jreq	L062
2945  0011 a32102        	cpw	x,#8450
2946  0014 2705          	jreq	L062
2947  0016 a32101        	cpw	x,#8449
2948  0019 2603          	jrne	L652
2949  001b               L062:
2950  001b 4f            	clr	a
2951  001c 2010          	jra	L262
2952  001e               L652:
2953  001e ae036c        	ldw	x,#876
2954  0021 89            	pushw	x
2955  0022 ae0000        	ldw	x,#0
2956  0025 89            	pushw	x
2957  0026 ae000c        	ldw	x,#L511
2958  0029 cd0000        	call	_assert_failed
2960  002c 5b04          	addw	sp,#4
2961  002e               L262:
2962                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2964  002e 7b03          	ld	a,(OFST+1,sp)
2965  0030 97            	ld	xl,a
2966  0031 7b04          	ld	a,(OFST+2,sp)
2967  0033 a4ff          	and	a,#255
2968  0035 5f            	clrw	x
2969  0036 02            	rlwa	x,a
2970  0037 1f01          	ldw	(OFST-1,sp),x
2971  0039 01            	rrwa	x,a
2972                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2974  003a 7b02          	ld	a,(OFST+0,sp)
2975  003c 43            	cpl	a
2976  003d c75218        	ld	21016,a
2977                     ; 883 }
2980  0040 5b04          	addw	sp,#4
2981  0042 81            	ret
2994                     	xdef	_I2C_ClearITPendingBit
2995                     	xdef	_I2C_GetITStatus
2996                     	xdef	_I2C_ClearFlag
2997                     	xdef	_I2C_GetFlagStatus
2998                     	xdef	_I2C_GetLastEvent
2999                     	xdef	_I2C_CheckEvent
3000                     	xdef	_I2C_SendData
3001                     	xdef	_I2C_Send7bitAddress
3002                     	xdef	_I2C_ReceiveData
3003                     	xdef	_I2C_ITConfig
3004                     	xdef	_I2C_FastModeDutyCycleConfig
3005                     	xdef	_I2C_AcknowledgeConfig
3006                     	xdef	_I2C_StretchClockCmd
3007                     	xdef	_I2C_SoftwareResetCmd
3008                     	xdef	_I2C_GenerateSTOP
3009                     	xdef	_I2C_GenerateSTART
3010                     	xdef	_I2C_GeneralCallCmd
3011                     	xdef	_I2C_Cmd
3012                     	xdef	_I2C_Init
3013                     	xdef	_I2C_DeInit
3014                     	xref	_assert_failed
3015                     	switch	.const
3016  000c               L511:
3017  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3018  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3019  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3020  0042 5f6932632e63  	dc.b	"_i2c.c",0
3021                     	xref.b	c_lreg
3022                     	xref.b	c_x
3042                     	xref	c_sdivx
3043                     	xref	c_ludv
3044                     	xref	c_rtol
3045                     	xref	c_smul
3046                     	xref	c_lmul
3047                     	xref	c_lcmp
3048                     	xref	c_ltor
3049                     	xref	c_lzmp
3050                     	end
