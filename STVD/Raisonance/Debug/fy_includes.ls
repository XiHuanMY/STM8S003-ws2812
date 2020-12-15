   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  54                     ; 3 void Delay_us(u16 nus)
  54                     ; 4 {
  56                     .text:	section	.text,new
  57  0000               _Delay_us:
  59  0000 89            	pushw	x
  60       00000000      OFST:	set	0
  63                     ; 5     nus *=3.2; 
  65  0001 1e01          	ldw	x,(OFST+1,sp)
  66  0003 90ae0003      	ldw	y,#3
  67  0007 cd0000        	call	c_imul
  69  000a 1f01          	ldw	(OFST+1,sp),x
  71  000c               L72:
  72                     ; 6     while(--nus);
  74  000c 1e01          	ldw	x,(OFST+1,sp)
  75  000e 1d0001        	subw	x,#1
  76  0011 1f01          	ldw	(OFST+1,sp),x
  77  0013 26f7          	jrne	L72
  78                     ; 7 }
  81  0015 85            	popw	x
  82  0016 81            	ret
 115                     ; 9 void Delay_ms(u16 nms)
 115                     ; 10 {
 116                     .text:	section	.text,new
 117  0000               _Delay_ms:
 119  0000 89            	pushw	x
 120       00000000      OFST:	set	0
 123  0001 2006          	jra	L15
 124  0003               L74:
 125                     ; 12       Delay_us(1000);
 127  0003 ae03e8        	ldw	x,#1000
 128  0006 cd0000        	call	_Delay_us
 130  0009               L15:
 131                     ; 11     while(nms--)
 133  0009 1e01          	ldw	x,(OFST+1,sp)
 134  000b 1d0001        	subw	x,#1
 135  000e 1f01          	ldw	(OFST+1,sp),x
 136  0010 1c0001        	addw	x,#1
 137  0013 a30000        	cpw	x,#0
 138  0016 26eb          	jrne	L74
 139                     ; 13 }
 142  0018 85            	popw	x
 143  0019 81            	ret
 156                     	xdef	_Delay_ms
 157                     	xdef	_Delay_us
 158                     	xref.b	c_x
 177                     	xref	c_imul
 178                     	end
