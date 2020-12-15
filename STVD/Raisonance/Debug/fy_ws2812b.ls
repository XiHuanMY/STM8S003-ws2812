   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  47                     ; 45 void Ws2812b_Configuration(void)
  47                     ; 46 {
  49                     .text:	section	.text,new
  50  0000               _Ws2812b_Configuration:
  54                     ; 47     GPIO_Init(GPIOC, (GPIO_Pin_TypeDef)GPIO_PIN_4, GPIO_MODE_OUT_PP_HIGH_FAST);
  56  0000 4bf0          	push	#240
  57  0002 4b10          	push	#16
  58  0004 ae500a        	ldw	x,#20490
  59  0007 cd0000        	call	_GPIO_Init
  61  000a 85            	popw	x
  62                     ; 48     RGB_PIN_L();
  64  000b 7219500a      	bres	20490,#4
  65                     ; 49 }
  68  000f 81            	ret
 116                     ; 52 static void Ws2812b_WriteByte(u8 color)
 116                     ; 53 {
 117                     .text:	section	.text,new
 118  0000               L12_Ws2812b_WriteByte:
 120  0000 88            	push	a
 121       00000000      OFST:	set	0
 124                     ; 54 	if(color & 0x80){
 126  0001 a580          	bcp	a,#128
 127  0003 2716          	jreq	L73
 128                     ; 55         RGB_PIN_H();
 130  0005 7218500a      	bset	20490,#4
 131                     ; 56         delay12NOP();
 135  0009 9d            nop
 141  000a 9d            nop
 147  000b 9d            nop
 153  000c 9d            nop
 159  000d 9d            nop
 165  000e 9d            nop
 171  000f 9d            nop
 177  0010 9d            nop
 183  0011 9d            nop
 189  0012 9d            nop
 195  0013 9d            nop
 201  0014 9d            nop
 203                     ; 57         RGB_PIN_L();
 206  0015 7219500a      	bres	20490,#4
 208  0019 2015          	jra	L14
 209  001b               L73:
 210                     ; 60         RGB_PIN_H();
 212  001b 7218500a      	bset	20490,#4
 213                     ; 61         delay6NOP();
 217  001f 9d            nop
 223  0020 9d            nop
 229  0021 9d            nop
 235  0022 9d            nop
 241  0023 9d            nop
 247  0024 9d            nop
 249                     ; 62         RGB_PIN_L();
 252  0025 7219500a      	bres	20490,#4
 253                     ; 63         delay7NOP();
 256  0029 9d            nop
 262  002a 9d            nop
 268  002b 9d            nop
 274  002c 9d            nop
 280  002d 9d            nop
 286  002e 9d            nop
 292  002f 9d            nop
 294  0030               L14:
 295                     ; 65     if(color & 0x40){
 297  0030 7b01          	ld	a,(OFST+1,sp)
 298  0032 a540          	bcp	a,#64
 299  0034 2716          	jreq	L34
 300                     ; 66         RGB_PIN_H();
 302  0036 7218500a      	bset	20490,#4
 303                     ; 67         delay12NOP();
 307  003a 9d            nop
 313  003b 9d            nop
 319  003c 9d            nop
 325  003d 9d            nop
 331  003e 9d            nop
 337  003f 9d            nop
 343  0040 9d            nop
 349  0041 9d            nop
 355  0042 9d            nop
 361  0043 9d            nop
 367  0044 9d            nop
 373  0045 9d            nop
 375                     ; 68         RGB_PIN_L();
 378  0046 7219500a      	bres	20490,#4
 380  004a 2015          	jra	L54
 381  004c               L34:
 382                     ; 71         RGB_PIN_H();
 384  004c 7218500a      	bset	20490,#4
 385                     ; 72         delay6NOP();
 389  0050 9d            nop
 395  0051 9d            nop
 401  0052 9d            nop
 407  0053 9d            nop
 413  0054 9d            nop
 419  0055 9d            nop
 421                     ; 73         RGB_PIN_L();
 424  0056 7219500a      	bres	20490,#4
 425                     ; 74         delay7NOP();
 428  005a 9d            nop
 434  005b 9d            nop
 440  005c 9d            nop
 446  005d 9d            nop
 452  005e 9d            nop
 458  005f 9d            nop
 464  0060 9d            nop
 466  0061               L54:
 467                     ; 76 	if(color & 0x20){
 469  0061 7b01          	ld	a,(OFST+1,sp)
 470  0063 a520          	bcp	a,#32
 471  0065 2716          	jreq	L74
 472                     ; 77         RGB_PIN_H();
 474  0067 7218500a      	bset	20490,#4
 475                     ; 78         delay12NOP();
 479  006b 9d            nop
 485  006c 9d            nop
 491  006d 9d            nop
 497  006e 9d            nop
 503  006f 9d            nop
 509  0070 9d            nop
 515  0071 9d            nop
 521  0072 9d            nop
 527  0073 9d            nop
 533  0074 9d            nop
 539  0075 9d            nop
 545  0076 9d            nop
 547                     ; 79         RGB_PIN_L();
 550  0077 7219500a      	bres	20490,#4
 552  007b 2015          	jra	L15
 553  007d               L74:
 554                     ; 82         RGB_PIN_H();
 556  007d 7218500a      	bset	20490,#4
 557                     ; 83         delay6NOP();
 561  0081 9d            nop
 567  0082 9d            nop
 573  0083 9d            nop
 579  0084 9d            nop
 585  0085 9d            nop
 591  0086 9d            nop
 593                     ; 84         RGB_PIN_L();
 596  0087 7219500a      	bres	20490,#4
 597                     ; 85         delay7NOP();
 600  008b 9d            nop
 606  008c 9d            nop
 612  008d 9d            nop
 618  008e 9d            nop
 624  008f 9d            nop
 630  0090 9d            nop
 636  0091 9d            nop
 638  0092               L15:
 639                     ; 87 	if(color & 0x10){
 641  0092 7b01          	ld	a,(OFST+1,sp)
 642  0094 a510          	bcp	a,#16
 643  0096 2716          	jreq	L35
 644                     ; 88         RGB_PIN_H();
 646  0098 7218500a      	bset	20490,#4
 647                     ; 89         delay12NOP();
 651  009c 9d            nop
 657  009d 9d            nop
 663  009e 9d            nop
 669  009f 9d            nop
 675  00a0 9d            nop
 681  00a1 9d            nop
 687  00a2 9d            nop
 693  00a3 9d            nop
 699  00a4 9d            nop
 705  00a5 9d            nop
 711  00a6 9d            nop
 717  00a7 9d            nop
 719                     ; 90         RGB_PIN_L();
 722  00a8 7219500a      	bres	20490,#4
 724  00ac 2015          	jra	L55
 725  00ae               L35:
 726                     ; 93         RGB_PIN_H();
 728  00ae 7218500a      	bset	20490,#4
 729                     ; 94         delay6NOP();
 733  00b2 9d            nop
 739  00b3 9d            nop
 745  00b4 9d            nop
 751  00b5 9d            nop
 757  00b6 9d            nop
 763  00b7 9d            nop
 765                     ; 95         RGB_PIN_L();
 768  00b8 7219500a      	bres	20490,#4
 769                     ; 96         delay7NOP();
 772  00bc 9d            nop
 778  00bd 9d            nop
 784  00be 9d            nop
 790  00bf 9d            nop
 796  00c0 9d            nop
 802  00c1 9d            nop
 808  00c2 9d            nop
 810  00c3               L55:
 811                     ; 98 	if(color & 0x8) {
 813  00c3 7b01          	ld	a,(OFST+1,sp)
 814  00c5 a508          	bcp	a,#8
 815  00c7 2716          	jreq	L75
 816                     ; 99         RGB_PIN_H();
 818  00c9 7218500a      	bset	20490,#4
 819                     ; 100         delay12NOP();
 823  00cd 9d            nop
 829  00ce 9d            nop
 835  00cf 9d            nop
 841  00d0 9d            nop
 847  00d1 9d            nop
 853  00d2 9d            nop
 859  00d3 9d            nop
 865  00d4 9d            nop
 871  00d5 9d            nop
 877  00d6 9d            nop
 883  00d7 9d            nop
 889  00d8 9d            nop
 891                     ; 101         RGB_PIN_L();
 894  00d9 7219500a      	bres	20490,#4
 896  00dd 2015          	jra	L16
 897  00df               L75:
 898                     ; 104         RGB_PIN_H();
 900  00df 7218500a      	bset	20490,#4
 901                     ; 105         delay6NOP();
 905  00e3 9d            nop
 911  00e4 9d            nop
 917  00e5 9d            nop
 923  00e6 9d            nop
 929  00e7 9d            nop
 935  00e8 9d            nop
 937                     ; 106         RGB_PIN_L();
 940  00e9 7219500a      	bres	20490,#4
 941                     ; 107         delay7NOP();
 944  00ed 9d            nop
 950  00ee 9d            nop
 956  00ef 9d            nop
 962  00f0 9d            nop
 968  00f1 9d            nop
 974  00f2 9d            nop
 980  00f3 9d            nop
 982  00f4               L16:
 983                     ; 109 	if(color & 0x4) {
 985  00f4 7b01          	ld	a,(OFST+1,sp)
 986  00f6 a504          	bcp	a,#4
 987  00f8 2716          	jreq	L36
 988                     ; 110         RGB_PIN_H();
 990  00fa 7218500a      	bset	20490,#4
 991                     ; 111         delay12NOP();
 995  00fe 9d            nop
1001  00ff 9d            nop
1007  0100 9d            nop
1013  0101 9d            nop
1019  0102 9d            nop
1025  0103 9d            nop
1031  0104 9d            nop
1037  0105 9d            nop
1043  0106 9d            nop
1049  0107 9d            nop
1055  0108 9d            nop
1061  0109 9d            nop
1063                     ; 112         RGB_PIN_L();
1066  010a 7219500a      	bres	20490,#4
1068  010e 2015          	jra	L56
1069  0110               L36:
1070                     ; 115         RGB_PIN_H();
1072  0110 7218500a      	bset	20490,#4
1073                     ; 116         delay6NOP();
1077  0114 9d            nop
1083  0115 9d            nop
1089  0116 9d            nop
1095  0117 9d            nop
1101  0118 9d            nop
1107  0119 9d            nop
1109                     ; 117         RGB_PIN_L();
1112  011a 7219500a      	bres	20490,#4
1113                     ; 118         delay7NOP();
1116  011e 9d            nop
1122  011f 9d            nop
1128  0120 9d            nop
1134  0121 9d            nop
1140  0122 9d            nop
1146  0123 9d            nop
1152  0124 9d            nop
1154  0125               L56:
1155                     ; 120 	if(color & 0x2) {
1157  0125 7b01          	ld	a,(OFST+1,sp)
1158  0127 a502          	bcp	a,#2
1159  0129 2716          	jreq	L76
1160                     ; 121         RGB_PIN_H();
1162  012b 7218500a      	bset	20490,#4
1163                     ; 122         delay12NOP();
1167  012f 9d            nop
1173  0130 9d            nop
1179  0131 9d            nop
1185  0132 9d            nop
1191  0133 9d            nop
1197  0134 9d            nop
1203  0135 9d            nop
1209  0136 9d            nop
1215  0137 9d            nop
1221  0138 9d            nop
1227  0139 9d            nop
1233  013a 9d            nop
1235                     ; 123         RGB_PIN_L();
1238  013b 7219500a      	bres	20490,#4
1240  013f 2015          	jra	L17
1241  0141               L76:
1242                     ; 126         RGB_PIN_H();
1244  0141 7218500a      	bset	20490,#4
1245                     ; 127         delay6NOP();
1249  0145 9d            nop
1255  0146 9d            nop
1261  0147 9d            nop
1267  0148 9d            nop
1273  0149 9d            nop
1279  014a 9d            nop
1281                     ; 128         RGB_PIN_L();
1284  014b 7219500a      	bres	20490,#4
1285                     ; 129         delay7NOP();
1288  014f 9d            nop
1294  0150 9d            nop
1300  0151 9d            nop
1306  0152 9d            nop
1312  0153 9d            nop
1318  0154 9d            nop
1324  0155 9d            nop
1326  0156               L17:
1327                     ; 131 	if(color & 0x1) {
1329  0156 7b01          	ld	a,(OFST+1,sp)
1330  0158 a501          	bcp	a,#1
1331  015a 2716          	jreq	L37
1332                     ; 132         RGB_PIN_H();
1334  015c 7218500a      	bset	20490,#4
1335                     ; 133         delay12NOP();
1339  0160 9d            nop
1345  0161 9d            nop
1351  0162 9d            nop
1357  0163 9d            nop
1363  0164 9d            nop
1369  0165 9d            nop
1375  0166 9d            nop
1381  0167 9d            nop
1387  0168 9d            nop
1393  0169 9d            nop
1399  016a 9d            nop
1405  016b 9d            nop
1407                     ; 134         RGB_PIN_L();
1410  016c 7219500a      	bres	20490,#4
1412  0170 2015          	jra	L57
1413  0172               L37:
1414                     ; 137         RGB_PIN_H();
1416  0172 7218500a      	bset	20490,#4
1417                     ; 138         delay6NOP();
1421  0176 9d            nop
1427  0177 9d            nop
1433  0178 9d            nop
1439  0179 9d            nop
1445  017a 9d            nop
1451  017b 9d            nop
1453                     ; 139         RGB_PIN_L();
1456  017c 7219500a      	bres	20490,#4
1457                     ; 140         delay7NOP();
1460  0180 9d            nop
1466  0181 9d            nop
1472  0182 9d            nop
1478  0183 9d            nop
1484  0184 9d            nop
1490  0185 9d            nop
1496  0186 9d            nop
1498  0187               L57:
1499                     ; 142 }
1502  0187 84            	pop	a
1503  0188 81            	ret
1583                     ; 144 void Ws2812b_Write(u32 color)
1583                     ; 145 {   
1584                     .text:	section	.text,new
1585  0000               _Ws2812b_Write:
1587       00000000      OFST:	set	0
1590                     ; 147 	if(color & 0x8000){
1592  0000 7b05          	ld	a,(OFST+5,sp)
1593  0002 a580          	bcp	a,#128
1594  0004 2716          	jreq	L311
1595                     ; 148         RGB_PIN_H();
1597  0006 7218500a      	bset	20490,#4
1598                     ; 149         delay12NOP();
1602  000a 9d            nop
1608  000b 9d            nop
1614  000c 9d            nop
1620  000d 9d            nop
1626  000e 9d            nop
1632  000f 9d            nop
1638  0010 9d            nop
1644  0011 9d            nop
1650  0012 9d            nop
1656  0013 9d            nop
1662  0014 9d            nop
1668  0015 9d            nop
1670                     ; 150         RGB_PIN_L();
1673  0016 7219500a      	bres	20490,#4
1675  001a 2015          	jra	L511
1676  001c               L311:
1677                     ; 153         RGB_PIN_H();
1679  001c 7218500a      	bset	20490,#4
1680                     ; 154         delay6NOP();
1684  0020 9d            nop
1690  0021 9d            nop
1696  0022 9d            nop
1702  0023 9d            nop
1708  0024 9d            nop
1714  0025 9d            nop
1716                     ; 155         RGB_PIN_L();
1719  0026 7219500a      	bres	20490,#4
1720                     ; 156         delay7NOP();
1723  002a 9d            nop
1729  002b 9d            nop
1735  002c 9d            nop
1741  002d 9d            nop
1747  002e 9d            nop
1753  002f 9d            nop
1759  0030 9d            nop
1761  0031               L511:
1762                     ; 158     if(color & 0x4000){
1764  0031 7b05          	ld	a,(OFST+5,sp)
1765  0033 a540          	bcp	a,#64
1766  0035 2716          	jreq	L711
1767                     ; 159         RGB_PIN_H();
1769  0037 7218500a      	bset	20490,#4
1770                     ; 160         delay12NOP();
1774  003b 9d            nop
1780  003c 9d            nop
1786  003d 9d            nop
1792  003e 9d            nop
1798  003f 9d            nop
1804  0040 9d            nop
1810  0041 9d            nop
1816  0042 9d            nop
1822  0043 9d            nop
1828  0044 9d            nop
1834  0045 9d            nop
1840  0046 9d            nop
1842                     ; 161         RGB_PIN_L();
1845  0047 7219500a      	bres	20490,#4
1847  004b 2015          	jra	L121
1848  004d               L711:
1849                     ; 164         RGB_PIN_H();
1851  004d 7218500a      	bset	20490,#4
1852                     ; 165         delay6NOP();
1856  0051 9d            nop
1862  0052 9d            nop
1868  0053 9d            nop
1874  0054 9d            nop
1880  0055 9d            nop
1886  0056 9d            nop
1888                     ; 166         RGB_PIN_L();
1891  0057 7219500a      	bres	20490,#4
1892                     ; 167         delay7NOP();
1895  005b 9d            nop
1901  005c 9d            nop
1907  005d 9d            nop
1913  005e 9d            nop
1919  005f 9d            nop
1925  0060 9d            nop
1931  0061 9d            nop
1933  0062               L121:
1934                     ; 169 	if(color & 0x2000){
1936  0062 7b05          	ld	a,(OFST+5,sp)
1937  0064 a520          	bcp	a,#32
1938  0066 2716          	jreq	L321
1939                     ; 170         RGB_PIN_H();
1941  0068 7218500a      	bset	20490,#4
1942                     ; 171         delay12NOP();
1946  006c 9d            nop
1952  006d 9d            nop
1958  006e 9d            nop
1964  006f 9d            nop
1970  0070 9d            nop
1976  0071 9d            nop
1982  0072 9d            nop
1988  0073 9d            nop
1994  0074 9d            nop
2000  0075 9d            nop
2006  0076 9d            nop
2012  0077 9d            nop
2014                     ; 172         RGB_PIN_L();
2017  0078 7219500a      	bres	20490,#4
2019  007c 2015          	jra	L521
2020  007e               L321:
2021                     ; 175         RGB_PIN_H();
2023  007e 7218500a      	bset	20490,#4
2024                     ; 176         delay6NOP();
2028  0082 9d            nop
2034  0083 9d            nop
2040  0084 9d            nop
2046  0085 9d            nop
2052  0086 9d            nop
2058  0087 9d            nop
2060                     ; 177         RGB_PIN_L();
2063  0088 7219500a      	bres	20490,#4
2064                     ; 178         delay7NOP();
2067  008c 9d            nop
2073  008d 9d            nop
2079  008e 9d            nop
2085  008f 9d            nop
2091  0090 9d            nop
2097  0091 9d            nop
2103  0092 9d            nop
2105  0093               L521:
2106                     ; 180 	if(color & 0x1000){
2108  0093 7b05          	ld	a,(OFST+5,sp)
2109  0095 a510          	bcp	a,#16
2110  0097 2716          	jreq	L721
2111                     ; 181         RGB_PIN_H();
2113  0099 7218500a      	bset	20490,#4
2114                     ; 182         delay12NOP();
2118  009d 9d            nop
2124  009e 9d            nop
2130  009f 9d            nop
2136  00a0 9d            nop
2142  00a1 9d            nop
2148  00a2 9d            nop
2154  00a3 9d            nop
2160  00a4 9d            nop
2166  00a5 9d            nop
2172  00a6 9d            nop
2178  00a7 9d            nop
2184  00a8 9d            nop
2186                     ; 183         RGB_PIN_L();
2189  00a9 7219500a      	bres	20490,#4
2191  00ad 2015          	jra	L131
2192  00af               L721:
2193                     ; 186         RGB_PIN_H();
2195  00af 7218500a      	bset	20490,#4
2196                     ; 187         delay6NOP();
2200  00b3 9d            nop
2206  00b4 9d            nop
2212  00b5 9d            nop
2218  00b6 9d            nop
2224  00b7 9d            nop
2230  00b8 9d            nop
2232                     ; 188         RGB_PIN_L();
2235  00b9 7219500a      	bres	20490,#4
2236                     ; 189         delay7NOP();
2239  00bd 9d            nop
2245  00be 9d            nop
2251  00bf 9d            nop
2257  00c0 9d            nop
2263  00c1 9d            nop
2269  00c2 9d            nop
2275  00c3 9d            nop
2277  00c4               L131:
2278                     ; 191 	if(color & 0x800) {
2280  00c4 7b05          	ld	a,(OFST+5,sp)
2281  00c6 a508          	bcp	a,#8
2282  00c8 2716          	jreq	L331
2283                     ; 192         RGB_PIN_H();
2285  00ca 7218500a      	bset	20490,#4
2286                     ; 193         delay12NOP();
2290  00ce 9d            nop
2296  00cf 9d            nop
2302  00d0 9d            nop
2308  00d1 9d            nop
2314  00d2 9d            nop
2320  00d3 9d            nop
2326  00d4 9d            nop
2332  00d5 9d            nop
2338  00d6 9d            nop
2344  00d7 9d            nop
2350  00d8 9d            nop
2356  00d9 9d            nop
2358                     ; 194         RGB_PIN_L();
2361  00da 7219500a      	bres	20490,#4
2363  00de 2015          	jra	L531
2364  00e0               L331:
2365                     ; 197         RGB_PIN_H();
2367  00e0 7218500a      	bset	20490,#4
2368                     ; 198         delay6NOP();
2372  00e4 9d            nop
2378  00e5 9d            nop
2384  00e6 9d            nop
2390  00e7 9d            nop
2396  00e8 9d            nop
2402  00e9 9d            nop
2404                     ; 199         RGB_PIN_L();
2407  00ea 7219500a      	bres	20490,#4
2408                     ; 200         delay7NOP();
2411  00ee 9d            nop
2417  00ef 9d            nop
2423  00f0 9d            nop
2429  00f1 9d            nop
2435  00f2 9d            nop
2441  00f3 9d            nop
2447  00f4 9d            nop
2449  00f5               L531:
2450                     ; 202 	if(color & 0x400) {
2452  00f5 7b05          	ld	a,(OFST+5,sp)
2453  00f7 a504          	bcp	a,#4
2454  00f9 2716          	jreq	L731
2455                     ; 203         RGB_PIN_H();
2457  00fb 7218500a      	bset	20490,#4
2458                     ; 204         delay12NOP();
2462  00ff 9d            nop
2468  0100 9d            nop
2474  0101 9d            nop
2480  0102 9d            nop
2486  0103 9d            nop
2492  0104 9d            nop
2498  0105 9d            nop
2504  0106 9d            nop
2510  0107 9d            nop
2516  0108 9d            nop
2522  0109 9d            nop
2528  010a 9d            nop
2530                     ; 205         RGB_PIN_L();
2533  010b 7219500a      	bres	20490,#4
2535  010f 2015          	jra	L141
2536  0111               L731:
2537                     ; 208         RGB_PIN_H();
2539  0111 7218500a      	bset	20490,#4
2540                     ; 209         delay6NOP();
2544  0115 9d            nop
2550  0116 9d            nop
2556  0117 9d            nop
2562  0118 9d            nop
2568  0119 9d            nop
2574  011a 9d            nop
2576                     ; 210         RGB_PIN_L();
2579  011b 7219500a      	bres	20490,#4
2580                     ; 211         delay7NOP();
2583  011f 9d            nop
2589  0120 9d            nop
2595  0121 9d            nop
2601  0122 9d            nop
2607  0123 9d            nop
2613  0124 9d            nop
2619  0125 9d            nop
2621  0126               L141:
2622                     ; 213 	if(color & 0x200) {
2624  0126 7b05          	ld	a,(OFST+5,sp)
2625  0128 a502          	bcp	a,#2
2626  012a 2716          	jreq	L341
2627                     ; 214         RGB_PIN_H();
2629  012c 7218500a      	bset	20490,#4
2630                     ; 215         delay12NOP();
2634  0130 9d            nop
2640  0131 9d            nop
2646  0132 9d            nop
2652  0133 9d            nop
2658  0134 9d            nop
2664  0135 9d            nop
2670  0136 9d            nop
2676  0137 9d            nop
2682  0138 9d            nop
2688  0139 9d            nop
2694  013a 9d            nop
2700  013b 9d            nop
2702                     ; 216         RGB_PIN_L();
2705  013c 7219500a      	bres	20490,#4
2707  0140 2015          	jra	L541
2708  0142               L341:
2709                     ; 219         RGB_PIN_H();
2711  0142 7218500a      	bset	20490,#4
2712                     ; 220         delay6NOP();
2716  0146 9d            nop
2722  0147 9d            nop
2728  0148 9d            nop
2734  0149 9d            nop
2740  014a 9d            nop
2746  014b 9d            nop
2748                     ; 221         RGB_PIN_L();
2751  014c 7219500a      	bres	20490,#4
2752                     ; 222         delay7NOP();
2755  0150 9d            nop
2761  0151 9d            nop
2767  0152 9d            nop
2773  0153 9d            nop
2779  0154 9d            nop
2785  0155 9d            nop
2791  0156 9d            nop
2793  0157               L541:
2794                     ; 224 	if(color & 0x100) {
2796  0157 7b05          	ld	a,(OFST+5,sp)
2797  0159 a501          	bcp	a,#1
2798  015b 2716          	jreq	L741
2799                     ; 225         RGB_PIN_H();
2801  015d 7218500a      	bset	20490,#4
2802                     ; 226         delay12NOP();
2806  0161 9d            nop
2812  0162 9d            nop
2818  0163 9d            nop
2824  0164 9d            nop
2830  0165 9d            nop
2836  0166 9d            nop
2842  0167 9d            nop
2848  0168 9d            nop
2854  0169 9d            nop
2860  016a 9d            nop
2866  016b 9d            nop
2872  016c 9d            nop
2874                     ; 227         RGB_PIN_L();
2877  016d 7219500a      	bres	20490,#4
2879  0171 2015          	jra	L151
2880  0173               L741:
2881                     ; 230         RGB_PIN_H();
2883  0173 7218500a      	bset	20490,#4
2884                     ; 231         delay6NOP();
2888  0177 9d            nop
2894  0178 9d            nop
2900  0179 9d            nop
2906  017a 9d            nop
2912  017b 9d            nop
2918  017c 9d            nop
2920                     ; 232         RGB_PIN_L();
2923  017d 7219500a      	bres	20490,#4
2924                     ; 233         delay7NOP();
2927  0181 9d            nop
2933  0182 9d            nop
2939  0183 9d            nop
2945  0184 9d            nop
2951  0185 9d            nop
2957  0186 9d            nop
2963  0187 9d            nop
2965  0188               L151:
2966                     ; 236 	if(color & 0x800000){
2968  0188 7b04          	ld	a,(OFST+4,sp)
2969  018a a580          	bcp	a,#128
2970  018c 2716          	jreq	L351
2971                     ; 237         RGB_PIN_H();
2973  018e 7218500a      	bset	20490,#4
2974                     ; 238         delay12NOP();
2978  0192 9d            nop
2984  0193 9d            nop
2990  0194 9d            nop
2996  0195 9d            nop
3002  0196 9d            nop
3008  0197 9d            nop
3014  0198 9d            nop
3020  0199 9d            nop
3026  019a 9d            nop
3032  019b 9d            nop
3038  019c 9d            nop
3044  019d 9d            nop
3046                     ; 239         RGB_PIN_L();
3049  019e 7219500a      	bres	20490,#4
3051  01a2 2015          	jra	L551
3052  01a4               L351:
3053                     ; 242         RGB_PIN_H();
3055  01a4 7218500a      	bset	20490,#4
3056                     ; 243         delay6NOP();
3060  01a8 9d            nop
3066  01a9 9d            nop
3072  01aa 9d            nop
3078  01ab 9d            nop
3084  01ac 9d            nop
3090  01ad 9d            nop
3092                     ; 244         RGB_PIN_L();
3095  01ae 7219500a      	bres	20490,#4
3096                     ; 245         delay7NOP();
3099  01b2 9d            nop
3105  01b3 9d            nop
3111  01b4 9d            nop
3117  01b5 9d            nop
3123  01b6 9d            nop
3129  01b7 9d            nop
3135  01b8 9d            nop
3137  01b9               L551:
3138                     ; 247     if(color & 0x400000){
3140  01b9 7b04          	ld	a,(OFST+4,sp)
3141  01bb a540          	bcp	a,#64
3142  01bd 2716          	jreq	L751
3143                     ; 248         RGB_PIN_H();
3145  01bf 7218500a      	bset	20490,#4
3146                     ; 249         delay12NOP();
3150  01c3 9d            nop
3156  01c4 9d            nop
3162  01c5 9d            nop
3168  01c6 9d            nop
3174  01c7 9d            nop
3180  01c8 9d            nop
3186  01c9 9d            nop
3192  01ca 9d            nop
3198  01cb 9d            nop
3204  01cc 9d            nop
3210  01cd 9d            nop
3216  01ce 9d            nop
3218                     ; 250         RGB_PIN_L();
3221  01cf 7219500a      	bres	20490,#4
3223  01d3 2015          	jra	L161
3224  01d5               L751:
3225                     ; 253         RGB_PIN_H();
3227  01d5 7218500a      	bset	20490,#4
3228                     ; 254         delay6NOP();
3232  01d9 9d            nop
3238  01da 9d            nop
3244  01db 9d            nop
3250  01dc 9d            nop
3256  01dd 9d            nop
3262  01de 9d            nop
3264                     ; 255         RGB_PIN_L();
3267  01df 7219500a      	bres	20490,#4
3268                     ; 256         delay7NOP();
3271  01e3 9d            nop
3277  01e4 9d            nop
3283  01e5 9d            nop
3289  01e6 9d            nop
3295  01e7 9d            nop
3301  01e8 9d            nop
3307  01e9 9d            nop
3309  01ea               L161:
3310                     ; 258 	if(color & 0x200000){
3312  01ea 7b04          	ld	a,(OFST+4,sp)
3313  01ec a520          	bcp	a,#32
3314  01ee 2716          	jreq	L361
3315                     ; 259         RGB_PIN_H();
3317  01f0 7218500a      	bset	20490,#4
3318                     ; 260         delay12NOP();
3322  01f4 9d            nop
3328  01f5 9d            nop
3334  01f6 9d            nop
3340  01f7 9d            nop
3346  01f8 9d            nop
3352  01f9 9d            nop
3358  01fa 9d            nop
3364  01fb 9d            nop
3370  01fc 9d            nop
3376  01fd 9d            nop
3382  01fe 9d            nop
3388  01ff 9d            nop
3390                     ; 261         RGB_PIN_L();
3393  0200 7219500a      	bres	20490,#4
3395  0204 2015          	jra	L561
3396  0206               L361:
3397                     ; 264         RGB_PIN_H();
3399  0206 7218500a      	bset	20490,#4
3400                     ; 265         delay6NOP();
3404  020a 9d            nop
3410  020b 9d            nop
3416  020c 9d            nop
3422  020d 9d            nop
3428  020e 9d            nop
3434  020f 9d            nop
3436                     ; 266         RGB_PIN_L();
3439  0210 7219500a      	bres	20490,#4
3440                     ; 267         delay7NOP();
3443  0214 9d            nop
3449  0215 9d            nop
3455  0216 9d            nop
3461  0217 9d            nop
3467  0218 9d            nop
3473  0219 9d            nop
3479  021a 9d            nop
3481  021b               L561:
3482                     ; 269 	if(color & 0x100000){
3484  021b 7b04          	ld	a,(OFST+4,sp)
3485  021d a510          	bcp	a,#16
3486  021f 2716          	jreq	L761
3487                     ; 270         RGB_PIN_H();
3489  0221 7218500a      	bset	20490,#4
3490                     ; 271         delay12NOP();
3494  0225 9d            nop
3500  0226 9d            nop
3506  0227 9d            nop
3512  0228 9d            nop
3518  0229 9d            nop
3524  022a 9d            nop
3530  022b 9d            nop
3536  022c 9d            nop
3542  022d 9d            nop
3548  022e 9d            nop
3554  022f 9d            nop
3560  0230 9d            nop
3562                     ; 272         RGB_PIN_L();
3565  0231 7219500a      	bres	20490,#4
3567  0235 2015          	jra	L171
3568  0237               L761:
3569                     ; 275         RGB_PIN_H();
3571  0237 7218500a      	bset	20490,#4
3572                     ; 276         delay6NOP();
3576  023b 9d            nop
3582  023c 9d            nop
3588  023d 9d            nop
3594  023e 9d            nop
3600  023f 9d            nop
3606  0240 9d            nop
3608                     ; 277         RGB_PIN_L();
3611  0241 7219500a      	bres	20490,#4
3612                     ; 278         delay7NOP();
3615  0245 9d            nop
3621  0246 9d            nop
3627  0247 9d            nop
3633  0248 9d            nop
3639  0249 9d            nop
3645  024a 9d            nop
3651  024b 9d            nop
3653  024c               L171:
3654                     ; 280 	if(color & 0x80000) {
3656  024c 7b04          	ld	a,(OFST+4,sp)
3657  024e a508          	bcp	a,#8
3658  0250 2716          	jreq	L371
3659                     ; 281         RGB_PIN_H();
3661  0252 7218500a      	bset	20490,#4
3662                     ; 282         delay12NOP();
3666  0256 9d            nop
3672  0257 9d            nop
3678  0258 9d            nop
3684  0259 9d            nop
3690  025a 9d            nop
3696  025b 9d            nop
3702  025c 9d            nop
3708  025d 9d            nop
3714  025e 9d            nop
3720  025f 9d            nop
3726  0260 9d            nop
3732  0261 9d            nop
3734                     ; 283         RGB_PIN_L();
3737  0262 7219500a      	bres	20490,#4
3739  0266 2015          	jra	L571
3740  0268               L371:
3741                     ; 286         RGB_PIN_H();
3743  0268 7218500a      	bset	20490,#4
3744                     ; 287         delay6NOP();
3748  026c 9d            nop
3754  026d 9d            nop
3760  026e 9d            nop
3766  026f 9d            nop
3772  0270 9d            nop
3778  0271 9d            nop
3780                     ; 288         RGB_PIN_L();
3783  0272 7219500a      	bres	20490,#4
3784                     ; 289         delay7NOP();
3787  0276 9d            nop
3793  0277 9d            nop
3799  0278 9d            nop
3805  0279 9d            nop
3811  027a 9d            nop
3817  027b 9d            nop
3823  027c 9d            nop
3825  027d               L571:
3826                     ; 291 	if(color & 0x40000) {
3828  027d 7b04          	ld	a,(OFST+4,sp)
3829  027f a504          	bcp	a,#4
3830  0281 2716          	jreq	L771
3831                     ; 292         RGB_PIN_H();
3833  0283 7218500a      	bset	20490,#4
3834                     ; 293         delay12NOP();
3838  0287 9d            nop
3844  0288 9d            nop
3850  0289 9d            nop
3856  028a 9d            nop
3862  028b 9d            nop
3868  028c 9d            nop
3874  028d 9d            nop
3880  028e 9d            nop
3886  028f 9d            nop
3892  0290 9d            nop
3898  0291 9d            nop
3904  0292 9d            nop
3906                     ; 294         RGB_PIN_L();
3909  0293 7219500a      	bres	20490,#4
3911  0297 2015          	jra	L102
3912  0299               L771:
3913                     ; 297         RGB_PIN_H();
3915  0299 7218500a      	bset	20490,#4
3916                     ; 298         delay6NOP();
3920  029d 9d            nop
3926  029e 9d            nop
3932  029f 9d            nop
3938  02a0 9d            nop
3944  02a1 9d            nop
3950  02a2 9d            nop
3952                     ; 299         RGB_PIN_L();
3955  02a3 7219500a      	bres	20490,#4
3956                     ; 300         delay7NOP();
3959  02a7 9d            nop
3965  02a8 9d            nop
3971  02a9 9d            nop
3977  02aa 9d            nop
3983  02ab 9d            nop
3989  02ac 9d            nop
3995  02ad 9d            nop
3997  02ae               L102:
3998                     ; 302 	if(color & 0x20000) {
4000  02ae 7b04          	ld	a,(OFST+4,sp)
4001  02b0 a502          	bcp	a,#2
4002  02b2 2716          	jreq	L302
4003                     ; 303         RGB_PIN_H();
4005  02b4 7218500a      	bset	20490,#4
4006                     ; 304         delay12NOP();
4010  02b8 9d            nop
4016  02b9 9d            nop
4022  02ba 9d            nop
4028  02bb 9d            nop
4034  02bc 9d            nop
4040  02bd 9d            nop
4046  02be 9d            nop
4052  02bf 9d            nop
4058  02c0 9d            nop
4064  02c1 9d            nop
4070  02c2 9d            nop
4076  02c3 9d            nop
4078                     ; 305         RGB_PIN_L();
4081  02c4 7219500a      	bres	20490,#4
4083  02c8 2015          	jra	L502
4084  02ca               L302:
4085                     ; 308         RGB_PIN_H();
4087  02ca 7218500a      	bset	20490,#4
4088                     ; 309         delay6NOP();
4092  02ce 9d            nop
4098  02cf 9d            nop
4104  02d0 9d            nop
4110  02d1 9d            nop
4116  02d2 9d            nop
4122  02d3 9d            nop
4124                     ; 310         RGB_PIN_L();
4127  02d4 7219500a      	bres	20490,#4
4128                     ; 311         delay7NOP();
4131  02d8 9d            nop
4137  02d9 9d            nop
4143  02da 9d            nop
4149  02db 9d            nop
4155  02dc 9d            nop
4161  02dd 9d            nop
4167  02de 9d            nop
4169  02df               L502:
4170                     ; 313 	if(color & 0x10000) {
4172  02df 7b04          	ld	a,(OFST+4,sp)
4173  02e1 a501          	bcp	a,#1
4174  02e3 2716          	jreq	L702
4175                     ; 314         RGB_PIN_H();
4177  02e5 7218500a      	bset	20490,#4
4178                     ; 315         delay12NOP();
4182  02e9 9d            nop
4188  02ea 9d            nop
4194  02eb 9d            nop
4200  02ec 9d            nop
4206  02ed 9d            nop
4212  02ee 9d            nop
4218  02ef 9d            nop
4224  02f0 9d            nop
4230  02f1 9d            nop
4236  02f2 9d            nop
4242  02f3 9d            nop
4248  02f4 9d            nop
4250                     ; 316         RGB_PIN_L();
4253  02f5 7219500a      	bres	20490,#4
4255  02f9 2015          	jra	L112
4256  02fb               L702:
4257                     ; 319         RGB_PIN_H();
4259  02fb 7218500a      	bset	20490,#4
4260                     ; 320         delay6NOP();
4264  02ff 9d            nop
4270  0300 9d            nop
4276  0301 9d            nop
4282  0302 9d            nop
4288  0303 9d            nop
4294  0304 9d            nop
4296                     ; 321         RGB_PIN_L();
4299  0305 7219500a      	bres	20490,#4
4300                     ; 322         delay7NOP();
4303  0309 9d            nop
4309  030a 9d            nop
4315  030b 9d            nop
4321  030c 9d            nop
4327  030d 9d            nop
4333  030e 9d            nop
4339  030f 9d            nop
4341  0310               L112:
4342                     ; 325 	if(color & 0x80){
4344  0310 7b06          	ld	a,(OFST+6,sp)
4345  0312 a580          	bcp	a,#128
4346  0314 2716          	jreq	L312
4347                     ; 326         RGB_PIN_H();
4349  0316 7218500a      	bset	20490,#4
4350                     ; 327         delay12NOP();
4354  031a 9d            nop
4360  031b 9d            nop
4366  031c 9d            nop
4372  031d 9d            nop
4378  031e 9d            nop
4384  031f 9d            nop
4390  0320 9d            nop
4396  0321 9d            nop
4402  0322 9d            nop
4408  0323 9d            nop
4414  0324 9d            nop
4420  0325 9d            nop
4422                     ; 328         RGB_PIN_L();
4425  0326 7219500a      	bres	20490,#4
4427  032a 2015          	jra	L512
4428  032c               L312:
4429                     ; 331         RGB_PIN_H();
4431  032c 7218500a      	bset	20490,#4
4432                     ; 332         delay6NOP();
4436  0330 9d            nop
4442  0331 9d            nop
4448  0332 9d            nop
4454  0333 9d            nop
4460  0334 9d            nop
4466  0335 9d            nop
4468                     ; 333         RGB_PIN_L();
4471  0336 7219500a      	bres	20490,#4
4472                     ; 334         delay7NOP();
4475  033a 9d            nop
4481  033b 9d            nop
4487  033c 9d            nop
4493  033d 9d            nop
4499  033e 9d            nop
4505  033f 9d            nop
4511  0340 9d            nop
4513  0341               L512:
4514                     ; 336     if(color & 0x40){
4516  0341 7b06          	ld	a,(OFST+6,sp)
4517  0343 a540          	bcp	a,#64
4518  0345 2716          	jreq	L712
4519                     ; 337         RGB_PIN_H();
4521  0347 7218500a      	bset	20490,#4
4522                     ; 338         delay12NOP();
4526  034b 9d            nop
4532  034c 9d            nop
4538  034d 9d            nop
4544  034e 9d            nop
4550  034f 9d            nop
4556  0350 9d            nop
4562  0351 9d            nop
4568  0352 9d            nop
4574  0353 9d            nop
4580  0354 9d            nop
4586  0355 9d            nop
4592  0356 9d            nop
4594                     ; 339         RGB_PIN_L();
4597  0357 7219500a      	bres	20490,#4
4599  035b 2015          	jra	L122
4600  035d               L712:
4601                     ; 342         RGB_PIN_H();
4603  035d 7218500a      	bset	20490,#4
4604                     ; 343         delay6NOP();
4608  0361 9d            nop
4614  0362 9d            nop
4620  0363 9d            nop
4626  0364 9d            nop
4632  0365 9d            nop
4638  0366 9d            nop
4640                     ; 344         RGB_PIN_L();
4643  0367 7219500a      	bres	20490,#4
4644                     ; 345         delay7NOP();
4647  036b 9d            nop
4653  036c 9d            nop
4659  036d 9d            nop
4665  036e 9d            nop
4671  036f 9d            nop
4677  0370 9d            nop
4683  0371 9d            nop
4685  0372               L122:
4686                     ; 347 	if(color & 0x20){
4688  0372 7b06          	ld	a,(OFST+6,sp)
4689  0374 a520          	bcp	a,#32
4690  0376 2716          	jreq	L322
4691                     ; 348         RGB_PIN_H();
4693  0378 7218500a      	bset	20490,#4
4694                     ; 349         delay12NOP();
4698  037c 9d            nop
4704  037d 9d            nop
4710  037e 9d            nop
4716  037f 9d            nop
4722  0380 9d            nop
4728  0381 9d            nop
4734  0382 9d            nop
4740  0383 9d            nop
4746  0384 9d            nop
4752  0385 9d            nop
4758  0386 9d            nop
4764  0387 9d            nop
4766                     ; 350         RGB_PIN_L();
4769  0388 7219500a      	bres	20490,#4
4771  038c 2015          	jra	L522
4772  038e               L322:
4773                     ; 353         RGB_PIN_H();
4775  038e 7218500a      	bset	20490,#4
4776                     ; 354         delay6NOP();
4780  0392 9d            nop
4786  0393 9d            nop
4792  0394 9d            nop
4798  0395 9d            nop
4804  0396 9d            nop
4810  0397 9d            nop
4812                     ; 355         RGB_PIN_L();
4815  0398 7219500a      	bres	20490,#4
4816                     ; 356         delay7NOP();
4819  039c 9d            nop
4825  039d 9d            nop
4831  039e 9d            nop
4837  039f 9d            nop
4843  03a0 9d            nop
4849  03a1 9d            nop
4855  03a2 9d            nop
4857  03a3               L522:
4858                     ; 358 	if(color & 0x10){
4860  03a3 7b06          	ld	a,(OFST+6,sp)
4861  03a5 a510          	bcp	a,#16
4862  03a7 2716          	jreq	L722
4863                     ; 359         RGB_PIN_H();
4865  03a9 7218500a      	bset	20490,#4
4866                     ; 360         delay12NOP();
4870  03ad 9d            nop
4876  03ae 9d            nop
4882  03af 9d            nop
4888  03b0 9d            nop
4894  03b1 9d            nop
4900  03b2 9d            nop
4906  03b3 9d            nop
4912  03b4 9d            nop
4918  03b5 9d            nop
4924  03b6 9d            nop
4930  03b7 9d            nop
4936  03b8 9d            nop
4938                     ; 361         RGB_PIN_L();
4941  03b9 7219500a      	bres	20490,#4
4943  03bd 2015          	jra	L132
4944  03bf               L722:
4945                     ; 364         RGB_PIN_H();
4947  03bf 7218500a      	bset	20490,#4
4948                     ; 365         delay6NOP();
4952  03c3 9d            nop
4958  03c4 9d            nop
4964  03c5 9d            nop
4970  03c6 9d            nop
4976  03c7 9d            nop
4982  03c8 9d            nop
4984                     ; 366         RGB_PIN_L();
4987  03c9 7219500a      	bres	20490,#4
4988                     ; 367         delay7NOP();
4991  03cd 9d            nop
4997  03ce 9d            nop
5003  03cf 9d            nop
5009  03d0 9d            nop
5015  03d1 9d            nop
5021  03d2 9d            nop
5027  03d3 9d            nop
5029  03d4               L132:
5030                     ; 369 	if(color & 0x8) {
5032  03d4 7b06          	ld	a,(OFST+6,sp)
5033  03d6 a508          	bcp	a,#8
5034  03d8 2716          	jreq	L332
5035                     ; 370         RGB_PIN_H();
5037  03da 7218500a      	bset	20490,#4
5038                     ; 371         delay12NOP();
5042  03de 9d            nop
5048  03df 9d            nop
5054  03e0 9d            nop
5060  03e1 9d            nop
5066  03e2 9d            nop
5072  03e3 9d            nop
5078  03e4 9d            nop
5084  03e5 9d            nop
5090  03e6 9d            nop
5096  03e7 9d            nop
5102  03e8 9d            nop
5108  03e9 9d            nop
5110                     ; 372         RGB_PIN_L();
5113  03ea 7219500a      	bres	20490,#4
5115  03ee 2015          	jra	L532
5116  03f0               L332:
5117                     ; 375         RGB_PIN_H();
5119  03f0 7218500a      	bset	20490,#4
5120                     ; 376         delay6NOP();
5124  03f4 9d            nop
5130  03f5 9d            nop
5136  03f6 9d            nop
5142  03f7 9d            nop
5148  03f8 9d            nop
5154  03f9 9d            nop
5156                     ; 377         RGB_PIN_L();
5159  03fa 7219500a      	bres	20490,#4
5160                     ; 378         delay7NOP();
5163  03fe 9d            nop
5169  03ff 9d            nop
5175  0400 9d            nop
5181  0401 9d            nop
5187  0402 9d            nop
5193  0403 9d            nop
5199  0404 9d            nop
5201  0405               L532:
5202                     ; 380 	if(color & 0x4) {
5204  0405 7b06          	ld	a,(OFST+6,sp)
5205  0407 a504          	bcp	a,#4
5206  0409 2716          	jreq	L732
5207                     ; 381         RGB_PIN_H();
5209  040b 7218500a      	bset	20490,#4
5210                     ; 382         delay12NOP();
5214  040f 9d            nop
5220  0410 9d            nop
5226  0411 9d            nop
5232  0412 9d            nop
5238  0413 9d            nop
5244  0414 9d            nop
5250  0415 9d            nop
5256  0416 9d            nop
5262  0417 9d            nop
5268  0418 9d            nop
5274  0419 9d            nop
5280  041a 9d            nop
5282                     ; 383         RGB_PIN_L();
5285  041b 7219500a      	bres	20490,#4
5287  041f 2015          	jra	L142
5288  0421               L732:
5289                     ; 386         RGB_PIN_H();
5291  0421 7218500a      	bset	20490,#4
5292                     ; 387         delay6NOP();
5296  0425 9d            nop
5302  0426 9d            nop
5308  0427 9d            nop
5314  0428 9d            nop
5320  0429 9d            nop
5326  042a 9d            nop
5328                     ; 388         RGB_PIN_L();
5331  042b 7219500a      	bres	20490,#4
5332                     ; 389         delay7NOP();
5335  042f 9d            nop
5341  0430 9d            nop
5347  0431 9d            nop
5353  0432 9d            nop
5359  0433 9d            nop
5365  0434 9d            nop
5371  0435 9d            nop
5373  0436               L142:
5374                     ; 391 	if(color & 0x2) {
5376  0436 7b06          	ld	a,(OFST+6,sp)
5377  0438 a502          	bcp	a,#2
5378  043a 2716          	jreq	L342
5379                     ; 392         RGB_PIN_H();
5381  043c 7218500a      	bset	20490,#4
5382                     ; 393         delay12NOP();
5386  0440 9d            nop
5392  0441 9d            nop
5398  0442 9d            nop
5404  0443 9d            nop
5410  0444 9d            nop
5416  0445 9d            nop
5422  0446 9d            nop
5428  0447 9d            nop
5434  0448 9d            nop
5440  0449 9d            nop
5446  044a 9d            nop
5452  044b 9d            nop
5454                     ; 394         RGB_PIN_L();
5457  044c 7219500a      	bres	20490,#4
5459  0450 2015          	jra	L542
5460  0452               L342:
5461                     ; 397         RGB_PIN_H();
5463  0452 7218500a      	bset	20490,#4
5464                     ; 398         delay6NOP();
5468  0456 9d            nop
5474  0457 9d            nop
5480  0458 9d            nop
5486  0459 9d            nop
5492  045a 9d            nop
5498  045b 9d            nop
5500                     ; 399         RGB_PIN_L();
5503  045c 7219500a      	bres	20490,#4
5504                     ; 400         delay7NOP();
5507  0460 9d            nop
5513  0461 9d            nop
5519  0462 9d            nop
5525  0463 9d            nop
5531  0464 9d            nop
5537  0465 9d            nop
5543  0466 9d            nop
5545  0467               L542:
5546                     ; 402 	if(color & 0x1) {
5548  0467 7b06          	ld	a,(OFST+6,sp)
5549  0469 a501          	bcp	a,#1
5550  046b 2716          	jreq	L742
5551                     ; 403         RGB_PIN_H();
5553  046d 7218500a      	bset	20490,#4
5554                     ; 404         delay12NOP();
5558  0471 9d            nop
5564  0472 9d            nop
5570  0473 9d            nop
5576  0474 9d            nop
5582  0475 9d            nop
5588  0476 9d            nop
5594  0477 9d            nop
5600  0478 9d            nop
5606  0479 9d            nop
5612  047a 9d            nop
5618  047b 9d            nop
5624  047c 9d            nop
5626                     ; 405         RGB_PIN_L();
5629  047d 7219500a      	bres	20490,#4
5631  0481 2010          	jra	L152
5632  0483               L742:
5633                     ; 408         RGB_PIN_H();
5635  0483 7218500a      	bset	20490,#4
5636                     ; 409         delay6NOP();
5640  0487 9d            nop
5646  0488 9d            nop
5652  0489 9d            nop
5658  048a 9d            nop
5664  048b 9d            nop
5670  048c 9d            nop
5672                     ; 410         RGB_PIN_L();
5675  048d 7219500a      	bres	20490,#4
5676                     ; 411         delay2NOP();
5679  0491 9d            nop
5685  0492 9d            nop
5687  0493               L152:
5688                     ; 416 }
5691  0493 81            	ret
5733                     ; 423 void RGB_Refresh(u32 color,u8 num){
5734                     .text:	section	.text,new
5735  0000               _RGB_Refresh:
5737       00000000      OFST:	set	0
5740                     ; 424 	disableInterrupts();//关闭所有中断避免打扰
5743  0000 9b            sim
5747  0001 200b          	jra	L372
5748  0003               L172:
5749                     ; 426 		Ws2812b_Write(color);
5751  0003 1e05          	ldw	x,(OFST+5,sp)
5752  0005 89            	pushw	x
5753  0006 1e05          	ldw	x,(OFST+5,sp)
5754  0008 89            	pushw	x
5755  0009 cd0000        	call	_Ws2812b_Write
5757  000c 5b04          	addw	sp,#4
5758  000e               L372:
5759                     ; 425 	while(num--){
5761  000e 7b07          	ld	a,(OFST+7,sp)
5762  0010 0a07          	dec	(OFST+7,sp)
5763  0012 4d            	tnz	a
5764  0013 26ee          	jrne	L172
5765                     ; 428 	enableInterrupts();
5768  0015 9a            rim
5770                     ; 429 }
5774  0016 81            	ret
5829                     ; 435 void RGB_Cycle(u32 color,u8 num,u16 speed)
5829                     ; 436 {
5830                     .text:	section	.text,new
5831  0000               _RGB_Cycle:
5833  0000 88            	push	a
5834       00000001      OFST:	set	1
5837                     ; 438 	for(i=1;i<=num;i++){		//设置颜色		
5839  0001 a601          	ld	a,#1
5840  0003 6b01          	ld	(OFST+0,sp),a
5842  0005 2015          	jra	L523
5843  0007               L123:
5844                     ; 439 		RGB_Refresh(color,i);
5846  0007 7b01          	ld	a,(OFST+0,sp)
5847  0009 88            	push	a
5848  000a 1e07          	ldw	x,(OFST+6,sp)
5849  000c 89            	pushw	x
5850  000d 1e07          	ldw	x,(OFST+6,sp)
5851  000f 89            	pushw	x
5852  0010 cd0000        	call	_RGB_Refresh
5854  0013 5b05          	addw	sp,#5
5855                     ; 440 		Delay_ms(speed);
5857  0015 1e09          	ldw	x,(OFST+8,sp)
5858  0017 cd0000        	call	_Delay_ms
5860                     ; 438 	for(i=1;i<=num;i++){		//设置颜色		
5862  001a 0c01          	inc	(OFST+0,sp)
5863  001c               L523:
5866  001c 7b01          	ld	a,(OFST+0,sp)
5867  001e 1108          	cp	a,(OFST+7,sp)
5868  0020 23e5          	jrule	L123
5869                     ; 442 	for(i=1;i<=num;i++){		//灭
5871  0022 a601          	ld	a,#1
5872  0024 6b01          	ld	(OFST+0,sp),a
5874  0026 2017          	jra	L533
5875  0028               L133:
5876                     ; 443 		RGB_Refresh(0,i);
5878  0028 7b01          	ld	a,(OFST+0,sp)
5879  002a 88            	push	a
5880  002b ae0000        	ldw	x,#0
5881  002e 89            	pushw	x
5882  002f ae0000        	ldw	x,#0
5883  0032 89            	pushw	x
5884  0033 cd0000        	call	_RGB_Refresh
5886  0036 5b05          	addw	sp,#5
5887                     ; 444 		Delay_ms(speed);
5889  0038 1e09          	ldw	x,(OFST+8,sp)
5890  003a cd0000        	call	_Delay_ms
5892                     ; 442 	for(i=1;i<=num;i++){		//灭
5894  003d 0c01          	inc	(OFST+0,sp)
5895  003f               L533:
5898  003f 7b01          	ld	a,(OFST+0,sp)
5899  0041 1108          	cp	a,(OFST+7,sp)
5900  0043 23e3          	jrule	L133
5901                     ; 446 }
5904  0045 84            	pop	a
5905  0046 81            	ret
5967                     .const:	section	.text
5968  0000               L22:
5969  0000 00010000      	dc.l	65536
5970                     ; 452 void RGB_Wave(u32 color,u8 num,u16 speed)
5970                     ; 453 {
5971                     .text:	section	.text,new
5972  0000               _RGB_Wave:
5974  0000 5209          	subw	sp,#9
5975       00000009      OFST:	set	9
5978                     ; 454 	u32 color_step=0;
5980  0002 ae0000        	ldw	x,#0
5981  0005 1f04          	ldw	(OFST-5,sp),x
5982  0007 ae0000        	ldw	x,#0
5983  000a 1f02          	ldw	(OFST-7,sp),x
5984                     ; 455 	u32 color_temp = color;
5986  000c 1e0e          	ldw	x,(OFST+5,sp)
5987  000e 1f08          	ldw	(OFST-1,sp),x
5988  0010 1e0c          	ldw	x,(OFST+3,sp)
5989  0012 1f06          	ldw	(OFST-3,sp),x
5990                     ; 456 	color_step |= (BYTE_2(color)?0x010000:0x000000);
5992  0014 7b0d          	ld	a,(OFST+4,sp)
5993  0016 a5ff          	bcp	a,#255
5994  0018 2708          	jreq	L02
5995  001a ae0000        	ldw	x,#L22
5996  001d cd0000        	call	c_ltor
5998  0020 2004          	jra	L42
5999  0022               L02:
6000  0022 5f            	clrw	x
6001  0023 cd0000        	call	c_itolx
6003  0026               L42:
6004  0026 96            	ldw	x,sp
6005  0027 1c0002        	addw	x,#OFST-7
6006  002a cd0000        	call	c_lgor
6008                     ; 457 	color_step |= (BYTE_1(color)?0x000100:0x000000);
6010  002d 7b0e          	ld	a,(OFST+5,sp)
6011  002f a5ff          	bcp	a,#255
6012  0031 2705          	jreq	L62
6013  0033 ae0100        	ldw	x,#256
6014  0036 2001          	jra	L03
6015  0038               L62:
6016  0038 5f            	clrw	x
6017  0039               L03:
6018  0039 cd0000        	call	c_itolx
6020  003c 96            	ldw	x,sp
6021  003d 1c0002        	addw	x,#OFST-7
6022  0040 cd0000        	call	c_lgor
6024                     ; 458 	color_step |= (BYTE_0(color)?0x000001:0x000000);
6026  0043 7b0f          	ld	a,(OFST+6,sp)
6027  0045 a5ff          	bcp	a,#255
6028  0047 2705          	jreq	L23
6029  0049 ae0001        	ldw	x,#1
6030  004c 2001          	jra	L43
6031  004e               L23:
6032  004e 5f            	clrw	x
6033  004f               L43:
6034  004f cd0000        	call	c_itolx
6036  0052 96            	ldw	x,sp
6037  0053 1c0002        	addw	x,#OFST-7
6038  0056 cd0000        	call	c_lgor
6041  0059 200e          	jra	L763
6042  005b               L563:
6043                     ; 465                           color_temp-=color_step;
6045  005b 96            	ldw	x,sp
6046  005c 1c0002        	addw	x,#OFST-7
6047  005f cd0000        	call	c_ltor
6049  0062 96            	ldw	x,sp
6050  0063 1c0006        	addw	x,#OFST-3
6051  0066 cd0000        	call	c_lgsub
6053  0069               L763:
6054                     ; 460 	while(//先把颜色的亮度见到最小
6054                     ; 461           BYTE_2(color_temp)>=BYTE_2(color_step) &&
6054                     ; 462               BYTE_1(color_temp)>=BYTE_1(color_step) &&
6054                     ; 463                   BYTE_0(color_temp)>=BYTE_0(color_step)
6054                     ; 464                       ){
6056  0069 7b03          	ld	a,(OFST-6,sp)
6057  006b a4ff          	and	a,#255
6058  006d 6b01          	ld	(OFST-8,sp),a
6059  006f 7b07          	ld	a,(OFST-2,sp)
6060  0071 a4ff          	and	a,#255
6061  0073 1101          	cp	a,(OFST-8,sp)
6062  0075 253f          	jrult	L104
6064  0077 7b04          	ld	a,(OFST-5,sp)
6065  0079 a4ff          	and	a,#255
6066  007b 6b01          	ld	(OFST-8,sp),a
6067  007d 7b08          	ld	a,(OFST-1,sp)
6068  007f a4ff          	and	a,#255
6069  0081 1101          	cp	a,(OFST-8,sp)
6070  0083 2531          	jrult	L104
6072  0085 7b05          	ld	a,(OFST-4,sp)
6073  0087 a4ff          	and	a,#255
6074  0089 6b01          	ld	(OFST-8,sp),a
6075  008b 7b09          	ld	a,(OFST+0,sp)
6076  008d a4ff          	and	a,#255
6077  008f 1101          	cp	a,(OFST-8,sp)
6078  0091 24c8          	jruge	L563
6079  0093 2021          	jra	L104
6080  0095               L773:
6081                     ; 473                           color_temp+=color_step;
6083  0095 96            	ldw	x,sp
6084  0096 1c0002        	addw	x,#OFST-7
6085  0099 cd0000        	call	c_ltor
6087  009c 96            	ldw	x,sp
6088  009d 1c0006        	addw	x,#OFST-3
6089  00a0 cd0000        	call	c_lgadd
6091                     ; 474                           RGB_Refresh(color_temp,num);
6093  00a3 7b10          	ld	a,(OFST+7,sp)
6094  00a5 88            	push	a
6095  00a6 1e09          	ldw	x,(OFST+0,sp)
6096  00a8 89            	pushw	x
6097  00a9 1e09          	ldw	x,(OFST+0,sp)
6098  00ab 89            	pushw	x
6099  00ac cd0000        	call	_RGB_Refresh
6101  00af 5b05          	addw	sp,#5
6102                     ; 475                           Delay_ms(speed);
6104  00b1 1e11          	ldw	x,(OFST+8,sp)
6105  00b3 cd0000        	call	_Delay_ms
6107  00b6               L104:
6108                     ; 468 	while(		//缓慢变亮	
6108                     ; 469           BYTE_2(color_temp)<0xff &&
6108                     ; 470               BYTE_1(color_temp)<0xff &&
6108                     ; 471                   BYTE_0(color_temp)<0xff
6108                     ; 472                       )	{
6110  00b6 7b07          	ld	a,(OFST-2,sp)
6111  00b8 a4ff          	and	a,#255
6112  00ba a1ff          	cp	a,#255
6113  00bc 2433          	jruge	L314
6115  00be 7b08          	ld	a,(OFST-1,sp)
6116  00c0 a4ff          	and	a,#255
6117  00c2 a1ff          	cp	a,#255
6118  00c4 242b          	jruge	L314
6120  00c6 7b09          	ld	a,(OFST+0,sp)
6121  00c8 a4ff          	and	a,#255
6122  00ca a1ff          	cp	a,#255
6123  00cc 25c7          	jrult	L773
6124  00ce 2021          	jra	L314
6125  00d0               L114:
6126                     ; 482                           color_temp-=color_step;
6128  00d0 96            	ldw	x,sp
6129  00d1 1c0002        	addw	x,#OFST-7
6130  00d4 cd0000        	call	c_ltor
6132  00d7 96            	ldw	x,sp
6133  00d8 1c0006        	addw	x,#OFST-3
6134  00db cd0000        	call	c_lgsub
6136                     ; 483                           RGB_Refresh(color_temp,num);
6138  00de 7b10          	ld	a,(OFST+7,sp)
6139  00e0 88            	push	a
6140  00e1 1e09          	ldw	x,(OFST+0,sp)
6141  00e3 89            	pushw	x
6142  00e4 1e09          	ldw	x,(OFST+0,sp)
6143  00e6 89            	pushw	x
6144  00e7 cd0000        	call	_RGB_Refresh
6146  00ea 5b05          	addw	sp,#5
6147                     ; 484                           Delay_ms(speed);
6149  00ec 1e11          	ldw	x,(OFST+8,sp)
6150  00ee cd0000        	call	_Delay_ms
6152  00f1               L314:
6153                     ; 477 	while(//缓慢变暗
6153                     ; 478           BYTE_2(color_temp)>=BYTE_2(color_step) &&
6153                     ; 479               BYTE_1(color_temp)>=BYTE_1(color_step) &&
6153                     ; 480                   BYTE_0(color_temp)>=BYTE_0(color_step)
6153                     ; 481                       ){
6155  00f1 7b03          	ld	a,(OFST-6,sp)
6156  00f3 a4ff          	and	a,#255
6157  00f5 6b01          	ld	(OFST-8,sp),a
6158  00f7 7b07          	ld	a,(OFST-2,sp)
6159  00f9 a4ff          	and	a,#255
6160  00fb 1101          	cp	a,(OFST-8,sp)
6161  00fd 251c          	jrult	L714
6163  00ff 7b04          	ld	a,(OFST-5,sp)
6164  0101 a4ff          	and	a,#255
6165  0103 6b01          	ld	(OFST-8,sp),a
6166  0105 7b08          	ld	a,(OFST-1,sp)
6167  0107 a4ff          	and	a,#255
6168  0109 1101          	cp	a,(OFST-8,sp)
6169  010b 250e          	jrult	L714
6171  010d 7b05          	ld	a,(OFST-4,sp)
6172  010f a4ff          	and	a,#255
6173  0111 6b01          	ld	(OFST-8,sp),a
6174  0113 7b09          	ld	a,(OFST+0,sp)
6175  0115 a4ff          	and	a,#255
6176  0117 1101          	cp	a,(OFST-8,sp)
6177  0119 24b5          	jruge	L114
6178  011b               L714:
6179                     ; 486 	RGB_Refresh(0,num);
6181  011b 7b10          	ld	a,(OFST+7,sp)
6182  011d 88            	push	a
6183  011e ae0000        	ldw	x,#0
6184  0121 89            	pushw	x
6185  0122 ae0000        	ldw	x,#0
6186  0125 89            	pushw	x
6187  0126 cd0000        	call	_RGB_Refresh
6189  0129 5b05          	addw	sp,#5
6190                     ; 487 }
6193  012b 5b09          	addw	sp,#9
6194  012d 81            	ret
6249                     ; 493 void RGB_Flash(u32 color,u8 num,u16 speed,u8 cnt)
6249                     ; 494 {
6250                     .text:	section	.text,new
6251  0000               _RGB_Flash:
6253       00000000      OFST:	set	0
6256  0000 2028          	jra	L744
6257  0002               L544:
6258                     ; 496 		RGB_Refresh(color,num);
6260  0002 7b07          	ld	a,(OFST+7,sp)
6261  0004 88            	push	a
6262  0005 1e06          	ldw	x,(OFST+6,sp)
6263  0007 89            	pushw	x
6264  0008 1e06          	ldw	x,(OFST+6,sp)
6265  000a 89            	pushw	x
6266  000b cd0000        	call	_RGB_Refresh
6268  000e 5b05          	addw	sp,#5
6269                     ; 497 		Delay_ms(speed);
6271  0010 1e08          	ldw	x,(OFST+8,sp)
6272  0012 cd0000        	call	_Delay_ms
6274                     ; 498 		RGB_Refresh(0,num);
6276  0015 7b07          	ld	a,(OFST+7,sp)
6277  0017 88            	push	a
6278  0018 ae0000        	ldw	x,#0
6279  001b 89            	pushw	x
6280  001c ae0000        	ldw	x,#0
6281  001f 89            	pushw	x
6282  0020 cd0000        	call	_RGB_Refresh
6284  0023 5b05          	addw	sp,#5
6285                     ; 499 		Delay_ms(speed);
6287  0025 1e08          	ldw	x,(OFST+8,sp)
6288  0027 cd0000        	call	_Delay_ms
6290  002a               L744:
6291                     ; 495 	while(cnt--){
6293  002a 7b0a          	ld	a,(OFST+10,sp)
6294  002c 0a0a          	dec	(OFST+10,sp)
6295  002e 4d            	tnz	a
6296  002f 26d1          	jrne	L544
6297                     ; 501 }
6300  0031 81            	ret
6313                     	xdef	_RGB_Flash
6314                     	xdef	_RGB_Wave
6315                     	xdef	_RGB_Cycle
6316                     	xdef	_RGB_Refresh
6317                     	xdef	_Ws2812b_Write
6318                     	xdef	_Ws2812b_Configuration
6319                     	xref	_Delay_ms
6320                     	xref	_GPIO_Init
6339                     	xref	c_lgadd
6340                     	xref	c_lgsub
6341                     	xref	c_lgor
6342                     	xref	c_itolx
6343                     	xref	c_ltor
6344                     	end
