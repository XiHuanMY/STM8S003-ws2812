   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  62                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  62                     ; 54 {
  64                     .text:	section	.text,new
  65  0000               _WWDG_Init:
  67  0000 89            	pushw	x
  68       00000000      OFST:	set	0
  71                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  73  0001 9f            	ld	a,xl
  74  0002 a180          	cp	a,#128
  75  0004 2403          	jruge	L6
  76  0006 4f            	clr	a
  77  0007 2010          	jra	L01
  78  0009               L6:
  79  0009 ae0038        	ldw	x,#56
  80  000c 89            	pushw	x
  81  000d ae0000        	ldw	x,#0
  82  0010 89            	pushw	x
  83  0011 ae0000        	ldw	x,#L72
  84  0014 cd0000        	call	_assert_failed
  86  0017 5b04          	addw	sp,#4
  87  0019               L01:
  88                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  90  0019 357f50d2      	mov	20690,#127
  91                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  93  001d 7b01          	ld	a,(OFST+1,sp)
  94  001f aac0          	or	a,#192
  95  0021 c750d1        	ld	20689,a
  96                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  98  0024 7b02          	ld	a,(OFST+2,sp)
  99  0026 aa40          	or	a,#64
 100  0028 a47f          	and	a,#127
 101  002a c750d2        	ld	20690,a
 102                     ; 61 }
 105  002d 85            	popw	x
 106  002e 81            	ret
 139                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 139                     ; 70 {
 140                     .text:	section	.text,new
 141  0000               _WWDG_SetCounter:
 143  0000 88            	push	a
 144       00000000      OFST:	set	0
 147                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 149  0001 a180          	cp	a,#128
 150  0003 2403          	jruge	L41
 151  0005 4f            	clr	a
 152  0006 2010          	jra	L61
 153  0008               L41:
 154  0008 ae0048        	ldw	x,#72
 155  000b 89            	pushw	x
 156  000c ae0000        	ldw	x,#0
 157  000f 89            	pushw	x
 158  0010 ae0000        	ldw	x,#L72
 159  0013 cd0000        	call	_assert_failed
 161  0016 5b04          	addw	sp,#4
 162  0018               L61:
 163                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 165  0018 7b01          	ld	a,(OFST+1,sp)
 166  001a a47f          	and	a,#127
 167  001c c750d1        	ld	20689,a
 168                     ; 77 }
 171  001f 84            	pop	a
 172  0020 81            	ret
 195                     ; 86 uint8_t WWDG_GetCounter(void)
 195                     ; 87 {
 196                     .text:	section	.text,new
 197  0000               _WWDG_GetCounter:
 201                     ; 88   return(WWDG->CR);
 203  0000 c650d1        	ld	a,20689
 206  0003 81            	ret
 229                     ; 96 void WWDG_SWReset(void)
 229                     ; 97 {
 230                     .text:	section	.text,new
 231  0000               _WWDG_SWReset:
 235                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 237  0000 358050d1      	mov	20689,#128
 238                     ; 99 }
 241  0004 81            	ret
 275                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 275                     ; 109 {
 276                     .text:	section	.text,new
 277  0000               _WWDG_SetWindowValue:
 279  0000 88            	push	a
 280       00000000      OFST:	set	0
 283                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 285  0001 a180          	cp	a,#128
 286  0003 2403          	jruge	L62
 287  0005 4f            	clr	a
 288  0006 2010          	jra	L03
 289  0008               L62:
 290  0008 ae006f        	ldw	x,#111
 291  000b 89            	pushw	x
 292  000c ae0000        	ldw	x,#0
 293  000f 89            	pushw	x
 294  0010 ae0000        	ldw	x,#L72
 295  0013 cd0000        	call	_assert_failed
 297  0016 5b04          	addw	sp,#4
 298  0018               L03:
 299                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 301  0018 7b01          	ld	a,(OFST+1,sp)
 302  001a aa40          	or	a,#64
 303  001c a47f          	and	a,#127
 304  001e c750d2        	ld	20690,a
 305                     ; 114 }
 308  0021 84            	pop	a
 309  0022 81            	ret
 322                     	xdef	_WWDG_SetWindowValue
 323                     	xdef	_WWDG_SWReset
 324                     	xdef	_WWDG_GetCounter
 325                     	xdef	_WWDG_SetCounter
 326                     	xdef	_WWDG_Init
 327                     	xref	_assert_failed
 328                     .const:	section	.text
 329  0000               L72:
 330  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 331  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 332  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 333  0036 5f777764672e  	dc.b	"_wwdg.c",0
 353                     	end
