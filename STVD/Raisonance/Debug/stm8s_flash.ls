   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  78                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  78                     ; 88 {
  80                     .text:	section	.text,new
  81  0000               _FLASH_Unlock:
  83  0000 88            	push	a
  84       00000000      OFST:	set	0
  87                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  89  0001 a1fd          	cp	a,#253
  90  0003 2704          	jreq	L01
  91  0005 a1f7          	cp	a,#247
  92  0007 2603          	jrne	L6
  93  0009               L01:
  94  0009 4f            	clr	a
  95  000a 2010          	jra	L21
  96  000c               L6:
  97  000c ae005a        	ldw	x,#90
  98  000f 89            	pushw	x
  99  0010 ae0000        	ldw	x,#0
 100  0013 89            	pushw	x
 101  0014 ae0010        	ldw	x,#L73
 102  0017 cd0000        	call	_assert_failed
 104  001a 5b04          	addw	sp,#4
 105  001c               L21:
 106                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 108  001c 7b01          	ld	a,(OFST+1,sp)
 109  001e a1fd          	cp	a,#253
 110  0020 260a          	jrne	L14
 111                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 113  0022 35565062      	mov	20578,#86
 114                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 116  0026 35ae5062      	mov	20578,#174
 118  002a 2008          	jra	L34
 119  002c               L14:
 120                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 122  002c 35ae5064      	mov	20580,#174
 123                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 125  0030 35565064      	mov	20580,#86
 126  0034               L34:
 127                     ; 104 }
 130  0034 84            	pop	a
 131  0035 81            	ret
 167                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 167                     ; 113 {
 168                     .text:	section	.text,new
 169  0000               _FLASH_Lock:
 171  0000 88            	push	a
 172       00000000      OFST:	set	0
 175                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 177  0001 a1fd          	cp	a,#253
 178  0003 2704          	jreq	L02
 179  0005 a1f7          	cp	a,#247
 180  0007 2603          	jrne	L61
 181  0009               L02:
 182  0009 4f            	clr	a
 183  000a 2010          	jra	L22
 184  000c               L61:
 185  000c ae0073        	ldw	x,#115
 186  000f 89            	pushw	x
 187  0010 ae0000        	ldw	x,#0
 188  0013 89            	pushw	x
 189  0014 ae0010        	ldw	x,#L73
 190  0017 cd0000        	call	_assert_failed
 192  001a 5b04          	addw	sp,#4
 193  001c               L22:
 194                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 196  001c c6505f        	ld	a,20575
 197  001f 1401          	and	a,(OFST+1,sp)
 198  0021 c7505f        	ld	20575,a
 199                     ; 119 }
 202  0024 84            	pop	a
 203  0025 81            	ret
 226                     ; 126 void FLASH_DeInit(void)
 226                     ; 127 {
 227                     .text:	section	.text,new
 228  0000               _FLASH_DeInit:
 232                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 234  0000 725f505a      	clr	20570
 235                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 237  0004 725f505b      	clr	20571
 238                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 240  0008 35ff505c      	mov	20572,#255
 241                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 243  000c 7217505f      	bres	20575,#3
 244                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 246  0010 7213505f      	bres	20575,#1
 247                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 249  0014 c6505f        	ld	a,20575
 250                     ; 134 }
 253  0017 81            	ret
 309                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 309                     ; 143 {
 310                     .text:	section	.text,new
 311  0000               _FLASH_ITConfig:
 313  0000 88            	push	a
 314       00000000      OFST:	set	0
 317                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 319  0001 4d            	tnz	a
 320  0002 2704          	jreq	L23
 321  0004 a101          	cp	a,#1
 322  0006 2603          	jrne	L03
 323  0008               L23:
 324  0008 4f            	clr	a
 325  0009 2010          	jra	L43
 326  000b               L03:
 327  000b ae0091        	ldw	x,#145
 328  000e 89            	pushw	x
 329  000f ae0000        	ldw	x,#0
 330  0012 89            	pushw	x
 331  0013 ae0010        	ldw	x,#L73
 332  0016 cd0000        	call	_assert_failed
 334  0019 5b04          	addw	sp,#4
 335  001b               L43:
 336                     ; 147   if(NewState != DISABLE)
 338  001b 0d01          	tnz	(OFST+1,sp)
 339  001d 2706          	jreq	L121
 340                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 342  001f 7212505a      	bset	20570,#1
 344  0023 2004          	jra	L321
 345  0025               L121:
 346                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 348  0025 7213505a      	bres	20570,#1
 349  0029               L321:
 350                     ; 155 }
 353  0029 84            	pop	a
 354  002a 81            	ret
 387                     .const:	section	.text
 388  0000               L64:
 389  0000 00008000      	dc.l	32768
 390  0004               L05:
 391  0004 0000a000      	dc.l	40960
 392  0008               L25:
 393  0008 00004000      	dc.l	16384
 394  000c               L45:
 395  000c 00004280      	dc.l	17024
 396                     ; 164 void FLASH_EraseByte(uint32_t Address)
 396                     ; 165 {
 397                     .text:	section	.text,new
 398  0000               _FLASH_EraseByte:
 400       00000000      OFST:	set	0
 403                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 405  0000 96            	ldw	x,sp
 406  0001 1c0003        	addw	x,#OFST+3
 407  0004 cd0000        	call	c_ltor
 409  0007 ae0000        	ldw	x,#L64
 410  000a cd0000        	call	c_lcmp
 412  000d 250f          	jrult	L44
 413  000f 96            	ldw	x,sp
 414  0010 1c0003        	addw	x,#OFST+3
 415  0013 cd0000        	call	c_ltor
 417  0016 ae0004        	ldw	x,#L05
 418  0019 cd0000        	call	c_lcmp
 420  001c 251e          	jrult	L24
 421  001e               L44:
 422  001e 96            	ldw	x,sp
 423  001f 1c0003        	addw	x,#OFST+3
 424  0022 cd0000        	call	c_ltor
 426  0025 ae0008        	ldw	x,#L25
 427  0028 cd0000        	call	c_lcmp
 429  002b 2512          	jrult	L04
 430  002d 96            	ldw	x,sp
 431  002e 1c0003        	addw	x,#OFST+3
 432  0031 cd0000        	call	c_ltor
 434  0034 ae000c        	ldw	x,#L45
 435  0037 cd0000        	call	c_lcmp
 437  003a 2403          	jruge	L04
 438  003c               L24:
 439  003c 4f            	clr	a
 440  003d 2010          	jra	L65
 441  003f               L04:
 442  003f ae00a7        	ldw	x,#167
 443  0042 89            	pushw	x
 444  0043 ae0000        	ldw	x,#0
 445  0046 89            	pushw	x
 446  0047 ae0010        	ldw	x,#L73
 447  004a cd0000        	call	_assert_failed
 449  004d 5b04          	addw	sp,#4
 450  004f               L65:
 451                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 453  004f 1e05          	ldw	x,(OFST+5,sp)
 454  0051 7f            	clr	(x)
 455                     ; 171 }
 458  0052 81            	ret
 498                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 498                     ; 182 {
 499                     .text:	section	.text,new
 500  0000               _FLASH_ProgramByte:
 502       00000000      OFST:	set	0
 505                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 507  0000 96            	ldw	x,sp
 508  0001 1c0003        	addw	x,#OFST+3
 509  0004 cd0000        	call	c_ltor
 511  0007 ae0000        	ldw	x,#L64
 512  000a cd0000        	call	c_lcmp
 514  000d 250f          	jrult	L66
 515  000f 96            	ldw	x,sp
 516  0010 1c0003        	addw	x,#OFST+3
 517  0013 cd0000        	call	c_ltor
 519  0016 ae0004        	ldw	x,#L05
 520  0019 cd0000        	call	c_lcmp
 522  001c 251e          	jrult	L46
 523  001e               L66:
 524  001e 96            	ldw	x,sp
 525  001f 1c0003        	addw	x,#OFST+3
 526  0022 cd0000        	call	c_ltor
 528  0025 ae0008        	ldw	x,#L25
 529  0028 cd0000        	call	c_lcmp
 531  002b 2512          	jrult	L26
 532  002d 96            	ldw	x,sp
 533  002e 1c0003        	addw	x,#OFST+3
 534  0031 cd0000        	call	c_ltor
 536  0034 ae000c        	ldw	x,#L45
 537  0037 cd0000        	call	c_lcmp
 539  003a 2403          	jruge	L26
 540  003c               L46:
 541  003c 4f            	clr	a
 542  003d 2010          	jra	L07
 543  003f               L26:
 544  003f ae00b8        	ldw	x,#184
 545  0042 89            	pushw	x
 546  0043 ae0000        	ldw	x,#0
 547  0046 89            	pushw	x
 548  0047 ae0010        	ldw	x,#L73
 549  004a cd0000        	call	_assert_failed
 551  004d 5b04          	addw	sp,#4
 552  004f               L07:
 553                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 555  004f 7b07          	ld	a,(OFST+7,sp)
 556  0051 1e05          	ldw	x,(OFST+5,sp)
 557  0053 f7            	ld	(x),a
 558                     ; 186 }
 561  0054 81            	ret
 594                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 594                     ; 196 {
 595                     .text:	section	.text,new
 596  0000               _FLASH_ReadByte:
 598       00000000      OFST:	set	0
 601                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 603  0000 96            	ldw	x,sp
 604  0001 1c0003        	addw	x,#OFST+3
 605  0004 cd0000        	call	c_ltor
 607  0007 ae0000        	ldw	x,#L64
 608  000a cd0000        	call	c_lcmp
 610  000d 250f          	jrult	L001
 611  000f 96            	ldw	x,sp
 612  0010 1c0003        	addw	x,#OFST+3
 613  0013 cd0000        	call	c_ltor
 615  0016 ae0004        	ldw	x,#L05
 616  0019 cd0000        	call	c_lcmp
 618  001c 251e          	jrult	L67
 619  001e               L001:
 620  001e 96            	ldw	x,sp
 621  001f 1c0003        	addw	x,#OFST+3
 622  0022 cd0000        	call	c_ltor
 624  0025 ae0008        	ldw	x,#L25
 625  0028 cd0000        	call	c_lcmp
 627  002b 2512          	jrult	L47
 628  002d 96            	ldw	x,sp
 629  002e 1c0003        	addw	x,#OFST+3
 630  0031 cd0000        	call	c_ltor
 632  0034 ae000c        	ldw	x,#L45
 633  0037 cd0000        	call	c_lcmp
 635  003a 2403          	jruge	L47
 636  003c               L67:
 637  003c 4f            	clr	a
 638  003d 2010          	jra	L201
 639  003f               L47:
 640  003f ae00c6        	ldw	x,#198
 641  0042 89            	pushw	x
 642  0043 ae0000        	ldw	x,#0
 643  0046 89            	pushw	x
 644  0047 ae0010        	ldw	x,#L73
 645  004a cd0000        	call	_assert_failed
 647  004d 5b04          	addw	sp,#4
 648  004f               L201:
 649                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 651  004f 1e05          	ldw	x,(OFST+5,sp)
 652  0051 f6            	ld	a,(x)
 655  0052 81            	ret
 695                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 695                     ; 213 {
 696                     .text:	section	.text,new
 697  0000               _FLASH_ProgramWord:
 699       00000000      OFST:	set	0
 702                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 704  0000 96            	ldw	x,sp
 705  0001 1c0003        	addw	x,#OFST+3
 706  0004 cd0000        	call	c_ltor
 708  0007 ae0000        	ldw	x,#L64
 709  000a cd0000        	call	c_lcmp
 711  000d 250f          	jrult	L211
 712  000f 96            	ldw	x,sp
 713  0010 1c0003        	addw	x,#OFST+3
 714  0013 cd0000        	call	c_ltor
 716  0016 ae0004        	ldw	x,#L05
 717  0019 cd0000        	call	c_lcmp
 719  001c 251e          	jrult	L011
 720  001e               L211:
 721  001e 96            	ldw	x,sp
 722  001f 1c0003        	addw	x,#OFST+3
 723  0022 cd0000        	call	c_ltor
 725  0025 ae0008        	ldw	x,#L25
 726  0028 cd0000        	call	c_lcmp
 728  002b 2512          	jrult	L601
 729  002d 96            	ldw	x,sp
 730  002e 1c0003        	addw	x,#OFST+3
 731  0031 cd0000        	call	c_ltor
 733  0034 ae000c        	ldw	x,#L45
 734  0037 cd0000        	call	c_lcmp
 736  003a 2403          	jruge	L601
 737  003c               L011:
 738  003c 4f            	clr	a
 739  003d 2010          	jra	L411
 740  003f               L601:
 741  003f ae00d7        	ldw	x,#215
 742  0042 89            	pushw	x
 743  0043 ae0000        	ldw	x,#0
 744  0046 89            	pushw	x
 745  0047 ae0010        	ldw	x,#L73
 746  004a cd0000        	call	_assert_failed
 748  004d 5b04          	addw	sp,#4
 749  004f               L411:
 750                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 752  004f 721c505b      	bset	20571,#6
 753                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 755  0053 721d505c      	bres	20572,#6
 756                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 758  0057 7b07          	ld	a,(OFST+7,sp)
 759  0059 1e05          	ldw	x,(OFST+5,sp)
 760  005b f7            	ld	(x),a
 761                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 763  005c 7b08          	ld	a,(OFST+8,sp)
 764  005e 1e05          	ldw	x,(OFST+5,sp)
 765  0060 e701          	ld	(1,x),a
 766                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 768  0062 7b09          	ld	a,(OFST+9,sp)
 769  0064 1e05          	ldw	x,(OFST+5,sp)
 770  0066 e702          	ld	(2,x),a
 771                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 773  0068 7b0a          	ld	a,(OFST+10,sp)
 774  006a 1e05          	ldw	x,(OFST+5,sp)
 775  006c e703          	ld	(3,x),a
 776                     ; 229 }
 779  006e 81            	ret
 821                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 821                     ; 238 {
 822                     .text:	section	.text,new
 823  0000               _FLASH_ProgramOptionByte:
 825  0000 89            	pushw	x
 826       00000000      OFST:	set	0
 829                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 831  0001 a34800        	cpw	x,#18432
 832  0004 2508          	jrult	L021
 833  0006 a34880        	cpw	x,#18560
 834  0009 2403          	jruge	L021
 835  000b 4f            	clr	a
 836  000c 2010          	jra	L221
 837  000e               L021:
 838  000e ae00f0        	ldw	x,#240
 839  0011 89            	pushw	x
 840  0012 ae0000        	ldw	x,#0
 841  0015 89            	pushw	x
 842  0016 ae0010        	ldw	x,#L73
 843  0019 cd0000        	call	_assert_failed
 845  001c 5b04          	addw	sp,#4
 846  001e               L221:
 847                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 849  001e 721e505b      	bset	20571,#7
 850                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 852  0022 721f505c      	bres	20572,#7
 853                     ; 247   if(Address == 0x4800)
 855  0026 1e01          	ldw	x,(OFST+1,sp)
 856  0028 a34800        	cpw	x,#18432
 857  002b 2607          	jrne	L722
 858                     ; 250     *((NEAR uint8_t*)Address) = Data;
 860  002d 7b05          	ld	a,(OFST+5,sp)
 861  002f 1e01          	ldw	x,(OFST+1,sp)
 862  0031 f7            	ld	(x),a
 864  0032 200c          	jra	L132
 865  0034               L722:
 866                     ; 255     *((NEAR uint8_t*)Address) = Data;
 868  0034 7b05          	ld	a,(OFST+5,sp)
 869  0036 1e01          	ldw	x,(OFST+1,sp)
 870  0038 f7            	ld	(x),a
 871                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 873  0039 7b05          	ld	a,(OFST+5,sp)
 874  003b 43            	cpl	a
 875  003c 1e01          	ldw	x,(OFST+1,sp)
 876  003e e701          	ld	(1,x),a
 877  0040               L132:
 878                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 880  0040 a6fd          	ld	a,#253
 881  0042 cd0000        	call	_FLASH_WaitForLastOperation
 883                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 885  0045 721f505b      	bres	20571,#7
 886                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 888  0049 721e505c      	bset	20572,#7
 889                     ; 263 }
 892  004d 85            	popw	x
 893  004e 81            	ret
 928                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 928                     ; 271 {
 929                     .text:	section	.text,new
 930  0000               _FLASH_EraseOptionByte:
 932  0000 89            	pushw	x
 933       00000000      OFST:	set	0
 936                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 938  0001 a34800        	cpw	x,#18432
 939  0004 2508          	jrult	L621
 940  0006 a34880        	cpw	x,#18560
 941  0009 2403          	jruge	L621
 942  000b 4f            	clr	a
 943  000c 2010          	jra	L031
 944  000e               L621:
 945  000e ae0111        	ldw	x,#273
 946  0011 89            	pushw	x
 947  0012 ae0000        	ldw	x,#0
 948  0015 89            	pushw	x
 949  0016 ae0010        	ldw	x,#L73
 950  0019 cd0000        	call	_assert_failed
 952  001c 5b04          	addw	sp,#4
 953  001e               L031:
 954                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 956  001e 721e505b      	bset	20571,#7
 957                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 959  0022 721f505c      	bres	20572,#7
 960                     ; 280   if(Address == 0x4800)
 962  0026 1e01          	ldw	x,(OFST+1,sp)
 963  0028 a34800        	cpw	x,#18432
 964  002b 2605          	jrne	L742
 965                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 967  002d 1e01          	ldw	x,(OFST+1,sp)
 968  002f 7f            	clr	(x)
 970  0030 2009          	jra	L152
 971  0032               L742:
 972                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 974  0032 1e01          	ldw	x,(OFST+1,sp)
 975  0034 7f            	clr	(x)
 976                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 978  0035 1e01          	ldw	x,(OFST+1,sp)
 979  0037 a6ff          	ld	a,#255
 980  0039 e701          	ld	(1,x),a
 981  003b               L152:
 982                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 984  003b a6fd          	ld	a,#253
 985  003d cd0000        	call	_FLASH_WaitForLastOperation
 987                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 989  0040 721f505b      	bres	20571,#7
 990                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 992  0044 721e505c      	bset	20572,#7
 993                     ; 296 }
 996  0048 85            	popw	x
 997  0049 81            	ret
1053                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1053                     ; 304 {
1054                     .text:	section	.text,new
1055  0000               _FLASH_ReadOptionByte:
1057  0000 89            	pushw	x
1058  0001 5204          	subw	sp,#4
1059       00000004      OFST:	set	4
1062                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1064                     ; 306   uint16_t res_value = 0;
1066                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1068  0003 a34800        	cpw	x,#18432
1069  0006 2508          	jrult	L431
1070  0008 a34880        	cpw	x,#18560
1071  000b 2403          	jruge	L431
1072  000d 4f            	clr	a
1073  000e 2010          	jra	L631
1074  0010               L431:
1075  0010 ae0135        	ldw	x,#309
1076  0013 89            	pushw	x
1077  0014 ae0000        	ldw	x,#0
1078  0017 89            	pushw	x
1079  0018 ae0010        	ldw	x,#L73
1080  001b cd0000        	call	_assert_failed
1082  001e 5b04          	addw	sp,#4
1083  0020               L631:
1084                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1086  0020 1e05          	ldw	x,(OFST+1,sp)
1087  0022 f6            	ld	a,(x)
1088  0023 6b02          	ld	(OFST-2,sp),a
1089                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1091  0025 1e05          	ldw	x,(OFST+1,sp)
1092  0027 e601          	ld	a,(1,x)
1093  0029 6b01          	ld	(OFST-3,sp),a
1094                     ; 315   if(Address == 0x4800)	 
1096  002b 1e05          	ldw	x,(OFST+1,sp)
1097  002d a34800        	cpw	x,#18432
1098  0030 2608          	jrne	L572
1099                     ; 317     res_value =	 value_optbyte;
1101  0032 7b02          	ld	a,(OFST-2,sp)
1102  0034 5f            	clrw	x
1103  0035 97            	ld	xl,a
1104  0036 1f03          	ldw	(OFST-1,sp),x
1106  0038 2023          	jra	L772
1107  003a               L572:
1108                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1110  003a 7b01          	ld	a,(OFST-3,sp)
1111  003c 43            	cpl	a
1112  003d 1102          	cp	a,(OFST-2,sp)
1113  003f 2617          	jrne	L103
1114                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1116  0041 7b02          	ld	a,(OFST-2,sp)
1117  0043 5f            	clrw	x
1118  0044 97            	ld	xl,a
1119  0045 4f            	clr	a
1120  0046 02            	rlwa	x,a
1121  0047 1f03          	ldw	(OFST-1,sp),x
1122                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1124  0049 7b01          	ld	a,(OFST-3,sp)
1125  004b 5f            	clrw	x
1126  004c 97            	ld	xl,a
1127  004d 01            	rrwa	x,a
1128  004e 1a04          	or	a,(OFST+0,sp)
1129  0050 01            	rrwa	x,a
1130  0051 1a03          	or	a,(OFST-1,sp)
1131  0053 01            	rrwa	x,a
1132  0054 1f03          	ldw	(OFST-1,sp),x
1134  0056 2005          	jra	L772
1135  0058               L103:
1136                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1138  0058 ae5555        	ldw	x,#21845
1139  005b 1f03          	ldw	(OFST-1,sp),x
1140  005d               L772:
1141                     ; 331   return(res_value);
1143  005d 1e03          	ldw	x,(OFST-1,sp)
1146  005f 5b06          	addw	sp,#6
1147  0061 81            	ret
1222                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1222                     ; 341 {
1223                     .text:	section	.text,new
1224  0000               _FLASH_SetLowPowerMode:
1226  0000 88            	push	a
1227       00000000      OFST:	set	0
1230                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1232  0001 a104          	cp	a,#4
1233  0003 270b          	jreq	L441
1234  0005 a108          	cp	a,#8
1235  0007 2707          	jreq	L441
1236  0009 4d            	tnz	a
1237  000a 2704          	jreq	L441
1238  000c a10c          	cp	a,#12
1239  000e 2603          	jrne	L241
1240  0010               L441:
1241  0010 4f            	clr	a
1242  0011 2010          	jra	L641
1243  0013               L241:
1244  0013 ae0157        	ldw	x,#343
1245  0016 89            	pushw	x
1246  0017 ae0000        	ldw	x,#0
1247  001a 89            	pushw	x
1248  001b ae0010        	ldw	x,#L73
1249  001e cd0000        	call	_assert_failed
1251  0021 5b04          	addw	sp,#4
1252  0023               L641:
1253                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1255  0023 c6505a        	ld	a,20570
1256  0026 a4f3          	and	a,#243
1257  0028 c7505a        	ld	20570,a
1258                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1260  002b c6505a        	ld	a,20570
1261  002e 1a01          	or	a,(OFST+1,sp)
1262  0030 c7505a        	ld	20570,a
1263                     ; 350 }
1266  0033 84            	pop	a
1267  0034 81            	ret
1326                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1326                     ; 359 {
1327                     .text:	section	.text,new
1328  0000               _FLASH_SetProgrammingTime:
1330  0000 88            	push	a
1331       00000000      OFST:	set	0
1334                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1336  0001 4d            	tnz	a
1337  0002 2704          	jreq	L451
1338  0004 a101          	cp	a,#1
1339  0006 2603          	jrne	L251
1340  0008               L451:
1341  0008 4f            	clr	a
1342  0009 2010          	jra	L651
1343  000b               L251:
1344  000b ae0169        	ldw	x,#361
1345  000e 89            	pushw	x
1346  000f ae0000        	ldw	x,#0
1347  0012 89            	pushw	x
1348  0013 ae0010        	ldw	x,#L73
1349  0016 cd0000        	call	_assert_failed
1351  0019 5b04          	addw	sp,#4
1352  001b               L651:
1353                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1355  001b 7211505a      	bres	20570,#0
1356                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1358  001f c6505a        	ld	a,20570
1359  0022 1a01          	or	a,(OFST+1,sp)
1360  0024 c7505a        	ld	20570,a
1361                     ; 365 }
1364  0027 84            	pop	a
1365  0028 81            	ret
1390                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1390                     ; 373 {
1391                     .text:	section	.text,new
1392  0000               _FLASH_GetLowPowerMode:
1396                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1398  0000 c6505a        	ld	a,20570
1399  0003 a40c          	and	a,#12
1402  0005 81            	ret
1427                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1427                     ; 383 {
1428                     .text:	section	.text,new
1429  0000               _FLASH_GetProgrammingTime:
1433                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1435  0000 c6505a        	ld	a,20570
1436  0003 a401          	and	a,#1
1439  0005 81            	ret
1471                     ; 392 uint32_t FLASH_GetBootSize(void)
1471                     ; 393 {
1472                     .text:	section	.text,new
1473  0000               _FLASH_GetBootSize:
1475  0000 5204          	subw	sp,#4
1476       00000004      OFST:	set	4
1479                     ; 394   uint32_t temp = 0;
1481                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1483  0002 c6505d        	ld	a,20573
1484  0005 5f            	clrw	x
1485  0006 97            	ld	xl,a
1486  0007 90ae0200      	ldw	y,#512
1487  000b cd0000        	call	c_umul
1489  000e 96            	ldw	x,sp
1490  000f 1c0001        	addw	x,#OFST-3
1491  0012 cd0000        	call	c_rtol
1493                     ; 400   if(FLASH->FPR == 0xFF)
1495  0015 c6505d        	ld	a,20573
1496  0018 a1ff          	cp	a,#255
1497  001a 2611          	jrne	L124
1498                     ; 402     temp += 512;
1500  001c ae0200        	ldw	x,#512
1501  001f bf02          	ldw	c_lreg+2,x
1502  0021 ae0000        	ldw	x,#0
1503  0024 bf00          	ldw	c_lreg,x
1504  0026 96            	ldw	x,sp
1505  0027 1c0001        	addw	x,#OFST-3
1506  002a cd0000        	call	c_lgadd
1508  002d               L124:
1509                     ; 406   return(temp);
1511  002d 96            	ldw	x,sp
1512  002e 1c0001        	addw	x,#OFST-3
1513  0031 cd0000        	call	c_ltor
1517  0034 5b04          	addw	sp,#4
1518  0036 81            	ret
1621                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1621                     ; 418 {
1622                     .text:	section	.text,new
1623  0000               _FLASH_GetFlagStatus:
1625  0000 88            	push	a
1626  0001 88            	push	a
1627       00000001      OFST:	set	1
1630                     ; 419   FlagStatus status = RESET;
1632                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1634  0002 a108          	cp	a,#8
1635  0004 270c          	jreq	L271
1636  0006 a104          	cp	a,#4
1637  0008 2708          	jreq	L271
1638  000a a102          	cp	a,#2
1639  000c 2704          	jreq	L271
1640  000e a101          	cp	a,#1
1641  0010 2603          	jrne	L071
1642  0012               L271:
1643  0012 4f            	clr	a
1644  0013 2010          	jra	L471
1645  0015               L071:
1646  0015 ae01a5        	ldw	x,#421
1647  0018 89            	pushw	x
1648  0019 ae0000        	ldw	x,#0
1649  001c 89            	pushw	x
1650  001d ae0010        	ldw	x,#L73
1651  0020 cd0000        	call	_assert_failed
1653  0023 5b04          	addw	sp,#4
1654  0025               L471:
1655                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1657  0025 c6505f        	ld	a,20575
1658  0028 1502          	bcp	a,(OFST+1,sp)
1659  002a 2706          	jreq	L174
1660                     ; 426     status = SET; /* FLASH_FLAG is set */
1662  002c a601          	ld	a,#1
1663  002e 6b01          	ld	(OFST+0,sp),a
1665  0030 2002          	jra	L374
1666  0032               L174:
1667                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1669  0032 0f01          	clr	(OFST+0,sp)
1670  0034               L374:
1671                     ; 434   return status;
1673  0034 7b01          	ld	a,(OFST+0,sp)
1676  0036 85            	popw	x
1677  0037 81            	ret
1758                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1758                     ; 550 {
1759                     .text:	section	.text,new
1760  0000               _FLASH_WaitForLastOperation:
1762  0000 5203          	subw	sp,#3
1763       00000003      OFST:	set	3
1766                     ; 551   uint8_t flagstatus = 0x00;
1768  0002 0f03          	clr	(OFST+0,sp)
1769                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1771  0004 aeffff        	ldw	x,#65535
1772  0007 1f01          	ldw	(OFST-2,sp),x
1773                     ; 576   UNUSED(FLASH_MemType);
1776  0009 200e          	jra	L335
1777  000b               L135:
1778                     ; 579     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1780  000b c6505f        	ld	a,20575
1781  000e a405          	and	a,#5
1782  0010 6b03          	ld	(OFST+0,sp),a
1783                     ; 580     timeout--;
1785  0012 1e01          	ldw	x,(OFST-2,sp)
1786  0014 1d0001        	subw	x,#1
1787  0017 1f01          	ldw	(OFST-2,sp),x
1788  0019               L335:
1789                     ; 577   while((flagstatus == 0x00) && (timeout != 0x00))
1791  0019 0d03          	tnz	(OFST+0,sp)
1792  001b 2604          	jrne	L735
1794  001d 1e01          	ldw	x,(OFST-2,sp)
1795  001f 26ea          	jrne	L135
1796  0021               L735:
1797                     ; 584   if(timeout == 0x00 )
1799  0021 1e01          	ldw	x,(OFST-2,sp)
1800  0023 2604          	jrne	L145
1801                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1803  0025 a602          	ld	a,#2
1804  0027 6b03          	ld	(OFST+0,sp),a
1805  0029               L145:
1806                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1808  0029 7b03          	ld	a,(OFST+0,sp)
1811  002b 5b03          	addw	sp,#3
1812  002d 81            	ret
1872                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1872                     ; 600 {
1873                     .text:	section	.text,new
1874  0000               _FLASH_EraseBlock:
1876  0000 89            	pushw	x
1877  0001 5206          	subw	sp,#6
1878       00000006      OFST:	set	6
1881                     ; 601   uint32_t startaddress = 0;
1883                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1885  0003 7b0b          	ld	a,(OFST+5,sp)
1886  0005 a1fd          	cp	a,#253
1887  0007 2706          	jreq	L402
1888  0009 7b0b          	ld	a,(OFST+5,sp)
1889  000b a1f7          	cp	a,#247
1890  000d 2603          	jrne	L202
1891  000f               L402:
1892  000f 4f            	clr	a
1893  0010 2010          	jra	L602
1894  0012               L202:
1895  0012 ae0263        	ldw	x,#611
1896  0015 89            	pushw	x
1897  0016 ae0000        	ldw	x,#0
1898  0019 89            	pushw	x
1899  001a ae0010        	ldw	x,#L73
1900  001d cd0000        	call	_assert_failed
1902  0020 5b04          	addw	sp,#4
1903  0022               L602:
1904                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1906  0022 7b0b          	ld	a,(OFST+5,sp)
1907  0024 a1fd          	cp	a,#253
1908  0026 2626          	jrne	L175
1909                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1911  0028 1e07          	ldw	x,(OFST+1,sp)
1912  002a a30080        	cpw	x,#128
1913  002d 2403          	jruge	L012
1914  002f 4f            	clr	a
1915  0030 2010          	jra	L212
1916  0032               L012:
1917  0032 ae0266        	ldw	x,#614
1918  0035 89            	pushw	x
1919  0036 ae0000        	ldw	x,#0
1920  0039 89            	pushw	x
1921  003a ae0010        	ldw	x,#L73
1922  003d cd0000        	call	_assert_failed
1924  0040 5b04          	addw	sp,#4
1925  0042               L212:
1926                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1928  0042 ae8000        	ldw	x,#32768
1929  0045 1f05          	ldw	(OFST-1,sp),x
1930  0047 ae0000        	ldw	x,#0
1931  004a 1f03          	ldw	(OFST-3,sp),x
1933  004c 2024          	jra	L375
1934  004e               L175:
1935                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1937  004e 1e07          	ldw	x,(OFST+1,sp)
1938  0050 a3000a        	cpw	x,#10
1939  0053 2403          	jruge	L412
1940  0055 4f            	clr	a
1941  0056 2010          	jra	L612
1942  0058               L412:
1943  0058 ae026b        	ldw	x,#619
1944  005b 89            	pushw	x
1945  005c ae0000        	ldw	x,#0
1946  005f 89            	pushw	x
1947  0060 ae0010        	ldw	x,#L73
1948  0063 cd0000        	call	_assert_failed
1950  0066 5b04          	addw	sp,#4
1951  0068               L612:
1952                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1954  0068 ae4000        	ldw	x,#16384
1955  006b 1f05          	ldw	(OFST-1,sp),x
1956  006d ae0000        	ldw	x,#0
1957  0070 1f03          	ldw	(OFST-3,sp),x
1958  0072               L375:
1959                     ; 628     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1961  0072 1e07          	ldw	x,(OFST+1,sp)
1962  0074 a640          	ld	a,#64
1963  0076 cd0000        	call	c_cmulx
1965  0079 96            	ldw	x,sp
1966  007a 1c0003        	addw	x,#OFST-3
1967  007d cd0000        	call	c_ladd
1969  0080 be02          	ldw	x,c_lreg+2
1970  0082 1f01          	ldw	(OFST-5,sp),x
1971                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
1973  0084 721a505b      	bset	20571,#5
1974                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1976  0088 721b505c      	bres	20572,#5
1977                     ; 637     *pwFlash = (uint32_t)0;
1979  008c 1e01          	ldw	x,(OFST-5,sp)
1980  008e a600          	ld	a,#0
1981  0090 e703          	ld	(3,x),a
1982  0092 a600          	ld	a,#0
1983  0094 e702          	ld	(2,x),a
1984  0096 a600          	ld	a,#0
1985  0098 e701          	ld	(1,x),a
1986  009a a600          	ld	a,#0
1987  009c f7            	ld	(x),a
1988                     ; 645 }
1991  009d 5b08          	addw	sp,#8
1992  009f 81            	ret
2091                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2091                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2091                     ; 658 {
2092                     .text:	section	.text,new
2093  0000               _FLASH_ProgramBlock:
2095  0000 89            	pushw	x
2096  0001 5206          	subw	sp,#6
2097       00000006      OFST:	set	6
2100                     ; 659   uint16_t Count = 0;
2102                     ; 660   uint32_t startaddress = 0;
2104                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2106  0003 7b0b          	ld	a,(OFST+5,sp)
2107  0005 a1fd          	cp	a,#253
2108  0007 2706          	jreq	L422
2109  0009 7b0b          	ld	a,(OFST+5,sp)
2110  000b a1f7          	cp	a,#247
2111  000d 2603          	jrne	L222
2112  000f               L422:
2113  000f 4f            	clr	a
2114  0010 2010          	jra	L622
2115  0012               L222:
2116  0012 ae0297        	ldw	x,#663
2117  0015 89            	pushw	x
2118  0016 ae0000        	ldw	x,#0
2119  0019 89            	pushw	x
2120  001a ae0010        	ldw	x,#L73
2121  001d cd0000        	call	_assert_failed
2123  0020 5b04          	addw	sp,#4
2124  0022               L622:
2125                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2127  0022 0d0c          	tnz	(OFST+6,sp)
2128  0024 2706          	jreq	L232
2129  0026 7b0c          	ld	a,(OFST+6,sp)
2130  0028 a110          	cp	a,#16
2131  002a 2603          	jrne	L032
2132  002c               L232:
2133  002c 4f            	clr	a
2134  002d 2010          	jra	L432
2135  002f               L032:
2136  002f ae0298        	ldw	x,#664
2137  0032 89            	pushw	x
2138  0033 ae0000        	ldw	x,#0
2139  0036 89            	pushw	x
2140  0037 ae0010        	ldw	x,#L73
2141  003a cd0000        	call	_assert_failed
2143  003d 5b04          	addw	sp,#4
2144  003f               L432:
2145                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2147  003f 7b0b          	ld	a,(OFST+5,sp)
2148  0041 a1fd          	cp	a,#253
2149  0043 2626          	jrne	L146
2150                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2152  0045 1e07          	ldw	x,(OFST+1,sp)
2153  0047 a30080        	cpw	x,#128
2154  004a 2403          	jruge	L632
2155  004c 4f            	clr	a
2156  004d 2010          	jra	L042
2157  004f               L632:
2158  004f ae029b        	ldw	x,#667
2159  0052 89            	pushw	x
2160  0053 ae0000        	ldw	x,#0
2161  0056 89            	pushw	x
2162  0057 ae0010        	ldw	x,#L73
2163  005a cd0000        	call	_assert_failed
2165  005d 5b04          	addw	sp,#4
2166  005f               L042:
2167                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2169  005f ae8000        	ldw	x,#32768
2170  0062 1f03          	ldw	(OFST-3,sp),x
2171  0064 ae0000        	ldw	x,#0
2172  0067 1f01          	ldw	(OFST-5,sp),x
2174  0069 2024          	jra	L346
2175  006b               L146:
2176                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2178  006b 1e07          	ldw	x,(OFST+1,sp)
2179  006d a3000a        	cpw	x,#10
2180  0070 2403          	jruge	L242
2181  0072 4f            	clr	a
2182  0073 2010          	jra	L442
2183  0075               L242:
2184  0075 ae02a0        	ldw	x,#672
2185  0078 89            	pushw	x
2186  0079 ae0000        	ldw	x,#0
2187  007c 89            	pushw	x
2188  007d ae0010        	ldw	x,#L73
2189  0080 cd0000        	call	_assert_failed
2191  0083 5b04          	addw	sp,#4
2192  0085               L442:
2193                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2195  0085 ae4000        	ldw	x,#16384
2196  0088 1f03          	ldw	(OFST-3,sp),x
2197  008a ae0000        	ldw	x,#0
2198  008d 1f01          	ldw	(OFST-5,sp),x
2199  008f               L346:
2200                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2202  008f 1e07          	ldw	x,(OFST+1,sp)
2203  0091 a640          	ld	a,#64
2204  0093 cd0000        	call	c_cmulx
2206  0096 96            	ldw	x,sp
2207  0097 1c0001        	addw	x,#OFST-5
2208  009a cd0000        	call	c_lgadd
2210                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2212  009d 0d0c          	tnz	(OFST+6,sp)
2213  009f 260a          	jrne	L546
2214                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
2216  00a1 7210505b      	bset	20571,#0
2217                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2219  00a5 7211505c      	bres	20572,#0
2221  00a9 2008          	jra	L746
2222  00ab               L546:
2223                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
2225  00ab 7218505b      	bset	20571,#4
2226                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2228  00af 7219505c      	bres	20572,#4
2229  00b3               L746:
2230                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2232  00b3 5f            	clrw	x
2233  00b4 1f05          	ldw	(OFST-1,sp),x
2234  00b6               L156:
2235                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2237  00b6 1e0d          	ldw	x,(OFST+7,sp)
2238  00b8 72fb05        	addw	x,(OFST-1,sp)
2239  00bb f6            	ld	a,(x)
2240  00bc 1e03          	ldw	x,(OFST-3,sp)
2241  00be 72fb05        	addw	x,(OFST-1,sp)
2242  00c1 f7            	ld	(x),a
2243                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2245  00c2 1e05          	ldw	x,(OFST-1,sp)
2246  00c4 1c0001        	addw	x,#1
2247  00c7 1f05          	ldw	(OFST-1,sp),x
2250  00c9 1e05          	ldw	x,(OFST-1,sp)
2251  00cb a30040        	cpw	x,#64
2252  00ce 25e6          	jrult	L156
2253                     ; 698 }
2256  00d0 5b08          	addw	sp,#8
2257  00d2 81            	ret
2270                     	xdef	_FLASH_WaitForLastOperation
2271                     	xdef	_FLASH_ProgramBlock
2272                     	xdef	_FLASH_EraseBlock
2273                     	xdef	_FLASH_GetFlagStatus
2274                     	xdef	_FLASH_GetBootSize
2275                     	xdef	_FLASH_GetProgrammingTime
2276                     	xdef	_FLASH_GetLowPowerMode
2277                     	xdef	_FLASH_SetProgrammingTime
2278                     	xdef	_FLASH_SetLowPowerMode
2279                     	xdef	_FLASH_EraseOptionByte
2280                     	xdef	_FLASH_ProgramOptionByte
2281                     	xdef	_FLASH_ReadOptionByte
2282                     	xdef	_FLASH_ProgramWord
2283                     	xdef	_FLASH_ReadByte
2284                     	xdef	_FLASH_ProgramByte
2285                     	xdef	_FLASH_EraseByte
2286                     	xdef	_FLASH_ITConfig
2287                     	xdef	_FLASH_DeInit
2288                     	xdef	_FLASH_Lock
2289                     	xdef	_FLASH_Unlock
2290                     	xref	_assert_failed
2291                     	switch	.const
2292  0010               L73:
2293  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2294  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2295  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2296  0046 5f666c617368  	dc.b	"_flash.c",0
2297                     	xref.b	c_lreg
2298                     	xref.b	c_x
2299                     	xref.b	c_y
2319                     	xref	c_ladd
2320                     	xref	c_cmulx
2321                     	xref	c_lgadd
2322                     	xref	c_rtol
2323                     	xref	c_umul
2324                     	xref	c_lcmp
2325                     	xref	c_ltor
2326                     	end
