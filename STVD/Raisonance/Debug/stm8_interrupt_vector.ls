   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  47                     ; 12 @far @interrupt void NonHandledInterrupt (void)
  47                     ; 13 {
  48                     .text:	section	.text,new
  49  0000               f_NonHandledInterrupt:
  53                     ; 17 	return;
  56  0000 80            	iret
  58                     .const:	section	.text
  59  0000               __vectab:
  60  0000 82            	dc.b	130
  62  0001 00            	dc.b	page(__stext)
  63  0002 0000          	dc.w	__stext
  64  0004 82            	dc.b	130
  66  0005 00            	dc.b	page(f_NonHandledInterrupt)
  67  0006 0000          	dc.w	f_NonHandledInterrupt
  68  0008 82            	dc.b	130
  70  0009 00            	dc.b	page(f_NonHandledInterrupt)
  71  000a 0000          	dc.w	f_NonHandledInterrupt
  72  000c 82            	dc.b	130
  74  000d 00            	dc.b	page(f_NonHandledInterrupt)
  75  000e 0000          	dc.w	f_NonHandledInterrupt
  76  0010 82            	dc.b	130
  78  0011 00            	dc.b	page(f_NonHandledInterrupt)
  79  0012 0000          	dc.w	f_NonHandledInterrupt
  80  0014 82            	dc.b	130
  82  0015 00            	dc.b	page(f_NonHandledInterrupt)
  83  0016 0000          	dc.w	f_NonHandledInterrupt
  84  0018 82            	dc.b	130
  86  0019 00            	dc.b	page(f_NonHandledInterrupt)
  87  001a 0000          	dc.w	f_NonHandledInterrupt
  88  001c 82            	dc.b	130
  90  001d 00            	dc.b	page(f_NonHandledInterrupt)
  91  001e 0000          	dc.w	f_NonHandledInterrupt
  92  0020 82            	dc.b	130
  94  0021 00            	dc.b	page(f_NonHandledInterrupt)
  95  0022 0000          	dc.w	f_NonHandledInterrupt
  96  0024 82            	dc.b	130
  98  0025 00            	dc.b	page(f_NonHandledInterrupt)
  99  0026 0000          	dc.w	f_NonHandledInterrupt
 100  0028 82            	dc.b	130
 102  0029 00            	dc.b	page(f_NonHandledInterrupt)
 103  002a 0000          	dc.w	f_NonHandledInterrupt
 104  002c 82            	dc.b	130
 106  002d 00            	dc.b	page(f_NonHandledInterrupt)
 107  002e 0000          	dc.w	f_NonHandledInterrupt
 108  0030 82            	dc.b	130
 110  0031 00            	dc.b	page(f_NonHandledInterrupt)
 111  0032 0000          	dc.w	f_NonHandledInterrupt
 112  0034 82            	dc.b	130
 114  0035 00            	dc.b	page(f_NonHandledInterrupt)
 115  0036 0000          	dc.w	f_NonHandledInterrupt
 116  0038 82            	dc.b	130
 118  0039 00            	dc.b	page(f_NonHandledInterrupt)
 119  003a 0000          	dc.w	f_NonHandledInterrupt
 120  003c 82            	dc.b	130
 122  003d 00            	dc.b	page(f_NonHandledInterrupt)
 123  003e 0000          	dc.w	f_NonHandledInterrupt
 124  0040 82            	dc.b	130
 126  0041 00            	dc.b	page(f_NonHandledInterrupt)
 127  0042 0000          	dc.w	f_NonHandledInterrupt
 128  0044 82            	dc.b	130
 130  0045 00            	dc.b	page(f_NonHandledInterrupt)
 131  0046 0000          	dc.w	f_NonHandledInterrupt
 132  0048 82            	dc.b	130
 134  0049 00            	dc.b	page(f_NonHandledInterrupt)
 135  004a 0000          	dc.w	f_NonHandledInterrupt
 136  004c 82            	dc.b	130
 138  004d 00            	dc.b	page(f_NonHandledInterrupt)
 139  004e 0000          	dc.w	f_NonHandledInterrupt
 140  0050 82            	dc.b	130
 142  0051 00            	dc.b	page(f_NonHandledInterrupt)
 143  0052 0000          	dc.w	f_NonHandledInterrupt
 144  0054 82            	dc.b	130
 146  0055 00            	dc.b	page(f_NonHandledInterrupt)
 147  0056 0000          	dc.w	f_NonHandledInterrupt
 148  0058 82            	dc.b	130
 150  0059 00            	dc.b	page(f_NonHandledInterrupt)
 151  005a 0000          	dc.w	f_NonHandledInterrupt
 152  005c 82            	dc.b	130
 154  005d 00            	dc.b	page(f_NonHandledInterrupt)
 155  005e 0000          	dc.w	f_NonHandledInterrupt
 156  0060 82            	dc.b	130
 158  0061 00            	dc.b	page(f_NonHandledInterrupt)
 159  0062 0000          	dc.w	f_NonHandledInterrupt
 160  0064 82            	dc.b	130
 162  0065 00            	dc.b	page(f_NonHandledInterrupt)
 163  0066 0000          	dc.w	f_NonHandledInterrupt
 164  0068 82            	dc.b	130
 166  0069 00            	dc.b	page(f_NonHandledInterrupt)
 167  006a 0000          	dc.w	f_NonHandledInterrupt
 168  006c 82            	dc.b	130
 170  006d 00            	dc.b	page(f_NonHandledInterrupt)
 171  006e 0000          	dc.w	f_NonHandledInterrupt
 172  0070 82            	dc.b	130
 174  0071 00            	dc.b	page(f_NonHandledInterrupt)
 175  0072 0000          	dc.w	f_NonHandledInterrupt
 176  0074 82            	dc.b	130
 178  0075 00            	dc.b	page(f_NonHandledInterrupt)
 179  0076 0000          	dc.w	f_NonHandledInterrupt
 180  0078 82            	dc.b	130
 182  0079 00            	dc.b	page(f_NonHandledInterrupt)
 183  007a 0000          	dc.w	f_NonHandledInterrupt
 184  007c 82            	dc.b	130
 186  007d 00            	dc.b	page(f_NonHandledInterrupt)
 187  007e 0000          	dc.w	f_NonHandledInterrupt
 238                     	xdef	__vectab
 239                     	xref	__stext
 240                     	xdef	f_NonHandledInterrupt
 259                     	end
