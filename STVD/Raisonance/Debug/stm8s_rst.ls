   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 120                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 120                     ; 55 {
 122                     .text:	section	.text,new
 123  0000               _RST_GetFlagStatus:
 125  0000 88            	push	a
 126       00000000      OFST:	set	0
 129                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 131  0001 a110          	cp	a,#16
 132  0003 2710          	jreq	L01
 133  0005 a108          	cp	a,#8
 134  0007 270c          	jreq	L01
 135  0009 a104          	cp	a,#4
 136  000b 2708          	jreq	L01
 137  000d a102          	cp	a,#2
 138  000f 2704          	jreq	L01
 139  0011 a101          	cp	a,#1
 140  0013 2603          	jrne	L6
 141  0015               L01:
 142  0015 4f            	clr	a
 143  0016 2010          	jra	L21
 144  0018               L6:
 145  0018 ae0039        	ldw	x,#57
 146  001b 89            	pushw	x
 147  001c ae0000        	ldw	x,#0
 148  001f 89            	pushw	x
 149  0020 ae0000        	ldw	x,#L55
 150  0023 cd0000        	call	_assert_failed
 152  0026 5b04          	addw	sp,#4
 153  0028               L21:
 154                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 156  0028 c650b3        	ld	a,20659
 157  002b 1501          	bcp	a,(OFST+1,sp)
 158  002d 2603          	jrne	L41
 159  002f 4f            	clr	a
 160  0030 2002          	jra	L61
 161  0032               L41:
 162  0032 a601          	ld	a,#1
 163  0034               L61:
 166  0034 5b01          	addw	sp,#1
 167  0036 81            	ret
 203                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 203                     ; 70 {
 204                     .text:	section	.text,new
 205  0000               _RST_ClearFlag:
 207  0000 88            	push	a
 208       00000000      OFST:	set	0
 211                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 213  0001 a110          	cp	a,#16
 214  0003 2710          	jreq	L42
 215  0005 a108          	cp	a,#8
 216  0007 270c          	jreq	L42
 217  0009 a104          	cp	a,#4
 218  000b 2708          	jreq	L42
 219  000d a102          	cp	a,#2
 220  000f 2704          	jreq	L42
 221  0011 a101          	cp	a,#1
 222  0013 2603          	jrne	L22
 223  0015               L42:
 224  0015 4f            	clr	a
 225  0016 2010          	jra	L62
 226  0018               L22:
 227  0018 ae0048        	ldw	x,#72
 228  001b 89            	pushw	x
 229  001c ae0000        	ldw	x,#0
 230  001f 89            	pushw	x
 231  0020 ae0000        	ldw	x,#L55
 232  0023 cd0000        	call	_assert_failed
 234  0026 5b04          	addw	sp,#4
 235  0028               L62:
 236                     ; 74   RST->SR = (uint8_t)RST_Flag;
 238  0028 7b01          	ld	a,(OFST+1,sp)
 239  002a c750b3        	ld	20659,a
 240                     ; 75 }
 243  002d 84            	pop	a
 244  002e 81            	ret
 257                     	xdef	_RST_ClearFlag
 258                     	xdef	_RST_GetFlagStatus
 259                     	xref	_assert_failed
 260                     .const:	section	.text
 261  0000               L55:
 262  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 263  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 264  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 265  0036 5f7273742e63  	dc.b	"_rst.c",0
 285                     	end
