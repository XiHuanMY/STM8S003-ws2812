   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  81                     ; 48 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  81                     ; 49 {
  83                     .text:	section	.text,new
  84  0000               _IWDG_WriteAccessCmd:
  86  0000 88            	push	a
  87       00000000      OFST:	set	0
  90                     ; 51   assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  92  0001 a155          	cp	a,#85
  93  0003 2703          	jreq	L01
  94  0005 4d            	tnz	a
  95  0006 2603          	jrne	L6
  96  0008               L01:
  97  0008 4f            	clr	a
  98  0009 2010          	jra	L21
  99  000b               L6:
 100  000b ae0033        	ldw	x,#51
 101  000e 89            	pushw	x
 102  000f ae0000        	ldw	x,#0
 103  0012 89            	pushw	x
 104  0013 ae0000        	ldw	x,#L73
 105  0016 cd0000        	call	_assert_failed
 107  0019 5b04          	addw	sp,#4
 108  001b               L21:
 109                     ; 53   IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
 111  001b 7b01          	ld	a,(OFST+1,sp)
 112  001d c750e0        	ld	20704,a
 113                     ; 54 }
 116  0020 84            	pop	a
 117  0021 81            	ret
 208                     ; 63 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 208                     ; 64 {
 209                     .text:	section	.text,new
 210  0000               _IWDG_SetPrescaler:
 212  0000 88            	push	a
 213       00000000      OFST:	set	0
 216                     ; 66   assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 218  0001 4d            	tnz	a
 219  0002 2718          	jreq	L02
 220  0004 a101          	cp	a,#1
 221  0006 2714          	jreq	L02
 222  0008 a102          	cp	a,#2
 223  000a 2710          	jreq	L02
 224  000c a103          	cp	a,#3
 225  000e 270c          	jreq	L02
 226  0010 a104          	cp	a,#4
 227  0012 2708          	jreq	L02
 228  0014 a105          	cp	a,#5
 229  0016 2704          	jreq	L02
 230  0018 a106          	cp	a,#6
 231  001a 2603          	jrne	L61
 232  001c               L02:
 233  001c 4f            	clr	a
 234  001d 2010          	jra	L22
 235  001f               L61:
 236  001f ae0042        	ldw	x,#66
 237  0022 89            	pushw	x
 238  0023 ae0000        	ldw	x,#0
 239  0026 89            	pushw	x
 240  0027 ae0000        	ldw	x,#L73
 241  002a cd0000        	call	_assert_failed
 243  002d 5b04          	addw	sp,#4
 244  002f               L22:
 245                     ; 68   IWDG->PR = (uint8_t)IWDG_Prescaler;
 247  002f 7b01          	ld	a,(OFST+1,sp)
 248  0031 c750e1        	ld	20705,a
 249                     ; 69 }
 252  0034 84            	pop	a
 253  0035 81            	ret
 285                     ; 78 void IWDG_SetReload(uint8_t IWDG_Reload)
 285                     ; 79 {
 286                     .text:	section	.text,new
 287  0000               _IWDG_SetReload:
 291                     ; 80   IWDG->RLR = IWDG_Reload;
 293  0000 c750e2        	ld	20706,a
 294                     ; 81 }
 297  0003 81            	ret
 320                     ; 89 void IWDG_ReloadCounter(void)
 320                     ; 90 {
 321                     .text:	section	.text,new
 322  0000               _IWDG_ReloadCounter:
 326                     ; 91   IWDG->KR = IWDG_KEY_REFRESH;
 328  0000 35aa50e0      	mov	20704,#170
 329                     ; 92 }
 332  0004 81            	ret
 355                     ; 99 void IWDG_Enable(void)
 355                     ; 100 {
 356                     .text:	section	.text,new
 357  0000               _IWDG_Enable:
 361                     ; 101   IWDG->KR = IWDG_KEY_ENABLE;
 363  0000 35cc50e0      	mov	20704,#204
 364                     ; 102 }
 367  0004 81            	ret
 380                     	xdef	_IWDG_Enable
 381                     	xdef	_IWDG_ReloadCounter
 382                     	xdef	_IWDG_SetReload
 383                     	xdef	_IWDG_SetPrescaler
 384                     	xdef	_IWDG_WriteAccessCmd
 385                     	xref	_assert_failed
 386                     .const:	section	.text
 387  0000               L73:
 388  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 389  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 390  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 391  0036 5f697764672e  	dc.b	"_iwdg.c",0
 411                     	end
