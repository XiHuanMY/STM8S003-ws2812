   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  17                     	switch	.data
  18  0000               _CCR1_Val:
  19  0000 03e8          	dc.w	1000
  20  0002               _CCR2_Val:
  21  0002 00fa          	dc.w	250
  22  0004               _CCR3_Val:
  23  0004 007d          	dc.w	125
  24  0006               _color:
  25  0006 00000000      	dc.l	0
  64                     ; 84 void set_color_3(u32 color)
  64                     ; 85 {
  66                     .text:	section	.text,new
  67  0000               _set_color_3:
  69       00000000      OFST:	set	0
  72                     ; 86 	Ws2812b_Write(color);
  74  0000 1e05          	ldw	x,(OFST+5,sp)
  75  0002 89            	pushw	x
  76  0003 1e05          	ldw	x,(OFST+5,sp)
  77  0005 89            	pushw	x
  78  0006 cd0000        	call	_Ws2812b_Write
  80  0009 5b04          	addw	sp,#4
  81                     ; 87   Ws2812b_Write(color);
  83  000b 1e05          	ldw	x,(OFST+5,sp)
  84  000d 89            	pushw	x
  85  000e 1e05          	ldw	x,(OFST+5,sp)
  86  0010 89            	pushw	x
  87  0011 cd0000        	call	_Ws2812b_Write
  89  0014 5b04          	addw	sp,#4
  90                     ; 88 	Ws2812b_Write(color);
  92  0016 1e05          	ldw	x,(OFST+5,sp)
  93  0018 89            	pushw	x
  94  0019 1e05          	ldw	x,(OFST+5,sp)
  95  001b 89            	pushw	x
  96  001c cd0000        	call	_Ws2812b_Write
  98  001f 5b04          	addw	sp,#4
  99                     ; 89 }
 102  0021 81            	ret
 143                     .const:	section	.text
 144  0000               L01:
 145  0000 000000ff      	dc.l	255
 146                     ; 90 void main(void)
 146                     ; 91 {
 147                     .text:	section	.text,new
 148  0000               _main:
 150  0000 89            	pushw	x
 151       00000002      OFST:	set	2
 154                     ; 92 	int num = 4;
 156  0001 ae0004        	ldw	x,#4
 157  0004 1f01          	ldw	(OFST-1,sp),x
 158                     ; 93 	 Clk_Init(); //系统时钟初始化函数
 160  0006 cd0000        	call	_Clk_Init
 162                     ; 95   TIM2_Config();  
 164  0009 cd0000        	call	L3_TIM2_Config
 166                     ; 96   Dely1ms();
 168  000c cd0000        	call	_Dely1ms
 170                     ; 97 	GPIO_Init(GPIOC, (GPIO_Pin_TypeDef) GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
 172  000f 4be0          	push	#224
 173  0011 4b10          	push	#16
 174  0013 ae500a        	ldw	x,#20490
 175  0016 cd0000        	call	_GPIO_Init
 177  0019 85            	popw	x
 178                     ; 98 	RGB_PIN_L();
 180  001a 4b10          	push	#16
 181  001c ae500a        	ldw	x,#20490
 182  001f cd0000        	call	_GPIO_WriteLow
 184  0022 84            	pop	a
 185  0023               L15:
 186                     ; 102 		color = 0x00000;
 188  0023 ae0000        	ldw	x,#0
 189  0026 cf0008        	ldw	_color+2,x
 190  0029 ae0000        	ldw	x,#0
 191  002c cf0006        	ldw	_color,x
 192                     ; 104 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 194  002f ae0000        	ldw	x,#0
 195  0032 cf0002        	ldw	_RGB_i+2,x
 196  0035 ae0000        	ldw	x,#0
 197  0038 cf0000        	ldw	_RGB_i,x
 198  003b               L55:
 199                     ; 105 			color = color + 0x10000;;set_color_3(color);
 201  003b ae0000        	ldw	x,#0
 202  003e bf02          	ldw	c_lreg+2,x
 203  0040 ae0001        	ldw	x,#1
 204  0043 bf00          	ldw	c_lreg,x
 205  0045 ae0006        	ldw	x,#_color
 206  0048 cd0000        	call	c_lgadd
 211  004b ce0008        	ldw	x,_color+2
 212  004e 89            	pushw	x
 213  004f ce0006        	ldw	x,_color
 214  0052 89            	pushw	x
 215  0053 cd0000        	call	_set_color_3
 217  0056 5b04          	addw	sp,#4
 218                     ; 106 			DelyMs(10);
 220  0058 ae000a        	ldw	x,#10
 221  005b 89            	pushw	x
 222  005c ae0000        	ldw	x,#0
 223  005f 89            	pushw	x
 224  0060 cd0000        	call	_DelyMs
 226  0063 5b04          	addw	sp,#4
 227                     ; 104 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 229  0065 ae0000        	ldw	x,#_RGB_i
 230  0068 a601          	ld	a,#1
 231  006a cd0000        	call	c_lgadc
 235  006d ae0000        	ldw	x,#_RGB_i
 236  0070 cd0000        	call	c_ltor
 238  0073 ae0000        	ldw	x,#L01
 239  0076 cd0000        	call	c_lcmp
 241  0079 25c0          	jrult	L55
 242                     ; 109 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 244  007b ae0000        	ldw	x,#0
 245  007e cf0002        	ldw	_RGB_i+2,x
 246  0081 ae0000        	ldw	x,#0
 247  0084 cf0000        	ldw	_RGB_i,x
 248  0087               L36:
 249                     ; 110 			color = color + 0x100;set_color_3(color);
 251  0087 ae0100        	ldw	x,#256
 252  008a bf02          	ldw	c_lreg+2,x
 253  008c ae0000        	ldw	x,#0
 254  008f bf00          	ldw	c_lreg,x
 255  0091 ae0006        	ldw	x,#_color
 256  0094 cd0000        	call	c_lgadd
 260  0097 ce0008        	ldw	x,_color+2
 261  009a 89            	pushw	x
 262  009b ce0006        	ldw	x,_color
 263  009e 89            	pushw	x
 264  009f cd0000        	call	_set_color_3
 266  00a2 5b04          	addw	sp,#4
 267                     ; 111 			DelyMs(10);
 269  00a4 ae000a        	ldw	x,#10
 270  00a7 89            	pushw	x
 271  00a8 ae0000        	ldw	x,#0
 272  00ab 89            	pushw	x
 273  00ac cd0000        	call	_DelyMs
 275  00af 5b04          	addw	sp,#4
 276                     ; 109 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 278  00b1 ae0000        	ldw	x,#_RGB_i
 279  00b4 a601          	ld	a,#1
 280  00b6 cd0000        	call	c_lgadc
 284  00b9 ae0000        	ldw	x,#_RGB_i
 285  00bc cd0000        	call	c_ltor
 287  00bf ae0000        	ldw	x,#L01
 288  00c2 cd0000        	call	c_lcmp
 290  00c5 25c0          	jrult	L36
 291                     ; 114 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 293  00c7 ae0000        	ldw	x,#0
 294  00ca cf0002        	ldw	_RGB_i+2,x
 295  00cd ae0000        	ldw	x,#0
 296  00d0 cf0000        	ldw	_RGB_i,x
 297  00d3               L17:
 298                     ; 115 			color = color - 0x10000;set_color_3(color);
 300  00d3 ae0000        	ldw	x,#0
 301  00d6 bf02          	ldw	c_lreg+2,x
 302  00d8 ae0001        	ldw	x,#1
 303  00db bf00          	ldw	c_lreg,x
 304  00dd ae0006        	ldw	x,#_color
 305  00e0 cd0000        	call	c_lgsub
 309  00e3 ce0008        	ldw	x,_color+2
 310  00e6 89            	pushw	x
 311  00e7 ce0006        	ldw	x,_color
 312  00ea 89            	pushw	x
 313  00eb cd0000        	call	_set_color_3
 315  00ee 5b04          	addw	sp,#4
 316                     ; 116 			DelyMs(10);
 318  00f0 ae000a        	ldw	x,#10
 319  00f3 89            	pushw	x
 320  00f4 ae0000        	ldw	x,#0
 321  00f7 89            	pushw	x
 322  00f8 cd0000        	call	_DelyMs
 324  00fb 5b04          	addw	sp,#4
 325                     ; 114 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 327  00fd ae0000        	ldw	x,#_RGB_i
 328  0100 a601          	ld	a,#1
 329  0102 cd0000        	call	c_lgadc
 333  0105 ae0000        	ldw	x,#_RGB_i
 334  0108 cd0000        	call	c_ltor
 336  010b ae0000        	ldw	x,#L01
 337  010e cd0000        	call	c_lcmp
 339  0111 25c0          	jrult	L17
 340                     ; 119 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 342  0113 ae0000        	ldw	x,#0
 343  0116 cf0002        	ldw	_RGB_i+2,x
 344  0119 ae0000        	ldw	x,#0
 345  011c cf0000        	ldw	_RGB_i,x
 346  011f               L77:
 347                     ; 120 			color++;set_color_3(color);
 349  011f ae0006        	ldw	x,#_color
 350  0122 a601          	ld	a,#1
 351  0124 cd0000        	call	c_lgadc
 355  0127 ce0008        	ldw	x,_color+2
 356  012a 89            	pushw	x
 357  012b ce0006        	ldw	x,_color
 358  012e 89            	pushw	x
 359  012f cd0000        	call	_set_color_3
 361  0132 5b04          	addw	sp,#4
 362                     ; 121 			DelyMs(10);
 364  0134 ae000a        	ldw	x,#10
 365  0137 89            	pushw	x
 366  0138 ae0000        	ldw	x,#0
 367  013b 89            	pushw	x
 368  013c cd0000        	call	_DelyMs
 370  013f 5b04          	addw	sp,#4
 371                     ; 119 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 373  0141 ae0000        	ldw	x,#_RGB_i
 374  0144 a601          	ld	a,#1
 375  0146 cd0000        	call	c_lgadc
 379  0149 ae0000        	ldw	x,#_RGB_i
 380  014c cd0000        	call	c_ltor
 382  014f ae0000        	ldw	x,#L01
 383  0152 cd0000        	call	c_lcmp
 385  0155 25c8          	jrult	L77
 386                     ; 124 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 388  0157 ae0000        	ldw	x,#0
 389  015a cf0002        	ldw	_RGB_i+2,x
 390  015d ae0000        	ldw	x,#0
 391  0160 cf0000        	ldw	_RGB_i,x
 392  0163               L501:
 393                     ; 125 			color = color - 0x100;set_color_3(color);
 395  0163 ae0100        	ldw	x,#256
 396  0166 bf02          	ldw	c_lreg+2,x
 397  0168 ae0000        	ldw	x,#0
 398  016b bf00          	ldw	c_lreg,x
 399  016d ae0006        	ldw	x,#_color
 400  0170 cd0000        	call	c_lgsub
 404  0173 ce0008        	ldw	x,_color+2
 405  0176 89            	pushw	x
 406  0177 ce0006        	ldw	x,_color
 407  017a 89            	pushw	x
 408  017b cd0000        	call	_set_color_3
 410  017e 5b04          	addw	sp,#4
 411                     ; 126 			DelyMs(10);
 413  0180 ae000a        	ldw	x,#10
 414  0183 89            	pushw	x
 415  0184 ae0000        	ldw	x,#0
 416  0187 89            	pushw	x
 417  0188 cd0000        	call	_DelyMs
 419  018b 5b04          	addw	sp,#4
 420                     ; 124 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 422  018d ae0000        	ldw	x,#_RGB_i
 423  0190 a601          	ld	a,#1
 424  0192 cd0000        	call	c_lgadc
 428  0195 ae0000        	ldw	x,#_RGB_i
 429  0198 cd0000        	call	c_ltor
 431  019b ae0000        	ldw	x,#L01
 432  019e cd0000        	call	c_lcmp
 434  01a1 25c0          	jrult	L501
 435                     ; 129 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 437  01a3 ae0000        	ldw	x,#0
 438  01a6 cf0002        	ldw	_RGB_i+2,x
 439  01a9 ae0000        	ldw	x,#0
 440  01ac cf0000        	ldw	_RGB_i,x
 441  01af               L311:
 442                     ; 130 			color = color + 0x10000;set_color_3(color);
 444  01af ae0000        	ldw	x,#0
 445  01b2 bf02          	ldw	c_lreg+2,x
 446  01b4 ae0001        	ldw	x,#1
 447  01b7 bf00          	ldw	c_lreg,x
 448  01b9 ae0006        	ldw	x,#_color
 449  01bc cd0000        	call	c_lgadd
 453  01bf ce0008        	ldw	x,_color+2
 454  01c2 89            	pushw	x
 455  01c3 ce0006        	ldw	x,_color
 456  01c6 89            	pushw	x
 457  01c7 cd0000        	call	_set_color_3
 459  01ca 5b04          	addw	sp,#4
 460                     ; 131 			DelyMs(10);
 462  01cc ae000a        	ldw	x,#10
 463  01cf 89            	pushw	x
 464  01d0 ae0000        	ldw	x,#0
 465  01d3 89            	pushw	x
 466  01d4 cd0000        	call	_DelyMs
 468  01d7 5b04          	addw	sp,#4
 469                     ; 129 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 471  01d9 ae0000        	ldw	x,#_RGB_i
 472  01dc a601          	ld	a,#1
 473  01de cd0000        	call	c_lgadc
 477  01e1 ae0000        	ldw	x,#_RGB_i
 478  01e4 cd0000        	call	c_ltor
 480  01e7 ae0000        	ldw	x,#L01
 481  01ea cd0000        	call	c_lcmp
 483  01ed 25c0          	jrult	L311
 484                     ; 134 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 486  01ef ae0000        	ldw	x,#0
 487  01f2 cf0002        	ldw	_RGB_i+2,x
 488  01f5 ae0000        	ldw	x,#0
 489  01f8 cf0000        	ldw	_RGB_i,x
 490  01fb               L121:
 491                     ; 135 			color--;set_color_3(color);
 493  01fb ae0006        	ldw	x,#_color
 494  01fe a601          	ld	a,#1
 495  0200 cd0000        	call	c_lgsbc
 499  0203 ce0008        	ldw	x,_color+2
 500  0206 89            	pushw	x
 501  0207 ce0006        	ldw	x,_color
 502  020a 89            	pushw	x
 503  020b cd0000        	call	_set_color_3
 505  020e 5b04          	addw	sp,#4
 506                     ; 136 			DelyMs(10);
 508  0210 ae000a        	ldw	x,#10
 509  0213 89            	pushw	x
 510  0214 ae0000        	ldw	x,#0
 511  0217 89            	pushw	x
 512  0218 cd0000        	call	_DelyMs
 514  021b 5b04          	addw	sp,#4
 515                     ; 134 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 517  021d ae0000        	ldw	x,#_RGB_i
 518  0220 a601          	ld	a,#1
 519  0222 cd0000        	call	c_lgadc
 523  0225 ae0000        	ldw	x,#_RGB_i
 524  0228 cd0000        	call	c_ltor
 526  022b ae0000        	ldw	x,#L01
 527  022e cd0000        	call	c_lcmp
 529  0231 25c8          	jrult	L121
 530                     ; 139 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 532  0233 ae0000        	ldw	x,#0
 533  0236 cf0002        	ldw	_RGB_i+2,x
 534  0239 ae0000        	ldw	x,#0
 535  023c cf0000        	ldw	_RGB_i,x
 536  023f               L721:
 537                     ; 140 			color = color - 0x10000;set_color_3(color);
 539  023f ae0000        	ldw	x,#0
 540  0242 bf02          	ldw	c_lreg+2,x
 541  0244 ae0001        	ldw	x,#1
 542  0247 bf00          	ldw	c_lreg,x
 543  0249 ae0006        	ldw	x,#_color
 544  024c cd0000        	call	c_lgsub
 548  024f ce0008        	ldw	x,_color+2
 549  0252 89            	pushw	x
 550  0253 ce0006        	ldw	x,_color
 551  0256 89            	pushw	x
 552  0257 cd0000        	call	_set_color_3
 554  025a 5b04          	addw	sp,#4
 555                     ; 141 			DelyMs(10);
 557  025c ae000a        	ldw	x,#10
 558  025f 89            	pushw	x
 559  0260 ae0000        	ldw	x,#0
 560  0263 89            	pushw	x
 561  0264 cd0000        	call	_DelyMs
 563  0267 5b04          	addw	sp,#4
 564                     ; 139 		for(RGB_i = 0;RGB_i<0xff;RGB_i++){
 566  0269 ae0000        	ldw	x,#_RGB_i
 567  026c a601          	ld	a,#1
 568  026e cd0000        	call	c_lgadc
 572  0271 ae0000        	ldw	x,#_RGB_i
 573  0274 cd0000        	call	c_ltor
 575  0277 ae0000        	ldw	x,#L01
 576  027a cd0000        	call	c_lcmp
 578  027d 25c0          	jrult	L721
 580  027f ac230023      	jpf	L15
 607                     ; 146 void Clk_Init(void)                
 607                     ; 147 {
 608                     .text:	section	.text,new
 609  0000               _Clk_Init:
 613                     ; 148   CLK_DeInit();//复位时钟寄存器
 615  0000 cd0000        	call	_CLK_DeInit
 617                     ; 149   CLK_HSICmd(ENABLE);//使能内部高速时钟
 619  0003 a601          	ld	a,#1
 620  0005 cd0000        	call	_CLK_HSICmd
 622                     ; 150   CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);//配置内部高速时钟(时钟分频器:4分频),系统时钟4MHz
 624  0008 4f            	clr	a
 625  0009 cd0000        	call	_CLK_HSIPrescalerConfig
 627                     ; 151   CLK_ClockSecuritySystemEnable();//开启时钟安全系统
 629  000c cd0000        	call	_CLK_ClockSecuritySystemEnable
 631                     ; 152 }
 634  000f 81            	ret
 662                     ; 159 static void TIM2_Config(void)
 662                     ; 160 {
 663                     .text:	section	.text,new
 664  0000               L3_TIM2_Config:
 668                     ; 162   TIM2_TimeBaseInit(TIM2_PRESCALER_1, 999);
 670  0000 ae03e7        	ldw	x,#999
 671  0003 89            	pushw	x
 672  0004 4f            	clr	a
 673  0005 cd0000        	call	_TIM2_TimeBaseInit
 675  0008 85            	popw	x
 676                     ; 165   TIM2_OC1Init(TIM2_OCMODE_PWM1, TIM2_OUTPUTSTATE_ENABLE,800, TIM2_OCPOLARITY_HIGH); //占空比50%
 678  0009 4b00          	push	#0
 679  000b ae0320        	ldw	x,#800
 680  000e 89            	pushw	x
 681  000f ae0011        	ldw	x,#17
 682  0012 a660          	ld	a,#96
 683  0014 95            	ld	xh,a
 684  0015 cd0000        	call	_TIM2_OC1Init
 686  0018 5b03          	addw	sp,#3
 687                     ; 166   TIM2_OC1PreloadConfig(ENABLE);
 689  001a a601          	ld	a,#1
 690  001c cd0000        	call	_TIM2_OC1PreloadConfig
 692                     ; 168   TIM2_ARRPreloadConfig(ENABLE);
 694  001f a601          	ld	a,#1
 695  0021 cd0000        	call	_TIM2_ARRPreloadConfig
 697                     ; 171   TIM2_Cmd(ENABLE);
 699  0024 a601          	ld	a,#1
 700  0026 cd0000        	call	_TIM2_Cmd
 702                     ; 172 }
 705  0029 81            	ret
 734                     ; 173 void Dely1ms(void)
 734                     ; 174 {
 735                     .text:	section	.text,new
 736  0000               _Dely1ms:
 740                     ; 175 	TIM4_DeInit();
 742  0000 cd0000        	call	_TIM4_DeInit
 744                     ; 176 	TIM4_TimeBaseInit(TIM4_PRESCALER_64, 248);
 746  0003 ae00f8        	ldw	x,#248
 747  0006 a606          	ld	a,#6
 748  0008 95            	ld	xh,a
 749  0009 cd0000        	call	_TIM4_TimeBaseInit
 751                     ; 178 	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
 753  000c a601          	ld	a,#1
 754  000e cd0000        	call	_TIM4_ClearFlag
 756                     ; 180 	TIM4_ITConfig(TIM4_IT_UPDATE, DISABLE);
 758  0011 5f            	clrw	x
 759  0012 a601          	ld	a,#1
 760  0014 95            	ld	xh,a
 761  0015 cd0000        	call	_TIM4_ITConfig
 763                     ; 183 	TIM4_Cmd(ENABLE);
 765  0018 a601          	ld	a,#1
 766  001a cd0000        	call	_TIM4_Cmd
 769  001d               L761:
 770                     ; 185 	while( SET != TIM4_GetFlagStatus(TIM4_FLAG_UPDATE));
 772  001d a601          	ld	a,#1
 773  001f cd0000        	call	_TIM4_GetFlagStatus
 775  0022 a101          	cp	a,#1
 776  0024 26f7          	jrne	L761
 777                     ; 186 }
 780  0026 81            	ret
 813                     ; 188 void DelyMs(uint32_t ms)
 813                     ; 189 {
 814                     .text:	section	.text,new
 815  0000               _DelyMs:
 817       00000000      OFST:	set	0
 820  0000 2003          	jra	L112
 821  0002               L702:
 822                     ; 190 	while(ms--) Dely1ms();
 824  0002 cd0000        	call	_Dely1ms
 826  0005               L112:
 829  0005 96            	ldw	x,sp
 830  0006 1c0003        	addw	x,#OFST+3
 831  0009 cd0000        	call	c_ltor
 833  000c 96            	ldw	x,sp
 834  000d 1c0003        	addw	x,#OFST+3
 835  0010 a601          	ld	a,#1
 836  0012 cd0000        	call	c_lgsbc
 838  0015 cd0000        	call	c_lrzmp
 840  0018 26e8          	jrne	L702
 841                     ; 191 }
 844  001a 81            	ret
 879                     ; 201 void assert_failed(uint8_t* file, uint32_t line)
 879                     ; 202 { 
 880                     .text:	section	.text,new
 881  0000               _assert_failed:
 885  0000               L332:
 886  0000 20fe          	jra	L332
 936                     	xdef	_main
 937                     	switch	.bss
 938  0000               _RGB_i:
 939  0000 00000000      	ds.b	4
 940                     	xdef	_RGB_i
 941                     	xdef	_color
 942                     	xdef	_DelyMs
 943                     	xdef	_Dely1ms
 944                     	xdef	_set_color_3
 945                     	xdef	_Clk_Init
 946                     	xdef	_CCR3_Val
 947                     	xdef	_CCR2_Val
 948                     	xdef	_CCR1_Val
 949                     	xref	_Ws2812b_Write
 950                     	xdef	_assert_failed
 951                     	xref	_TIM4_ClearFlag
 952                     	xref	_TIM4_GetFlagStatus
 953                     	xref	_TIM4_ITConfig
 954                     	xref	_TIM4_Cmd
 955                     	xref	_TIM4_TimeBaseInit
 956                     	xref	_TIM4_DeInit
 957                     	xref	_TIM2_OC1PreloadConfig
 958                     	xref	_TIM2_ARRPreloadConfig
 959                     	xref	_TIM2_Cmd
 960                     	xref	_TIM2_OC1Init
 961                     	xref	_TIM2_TimeBaseInit
 962                     	xref	_GPIO_WriteLow
 963                     	xref	_GPIO_Init
 964                     	xref	_CLK_ClockSecuritySystemEnable
 965                     	xref	_CLK_HSIPrescalerConfig
 966                     	xref	_CLK_HSICmd
 967                     	xref	_CLK_DeInit
 968                     	xref.b	c_lreg
 988                     	xref	c_lrzmp
 989                     	xref	c_lgsbc
 990                     	xref	c_lgsub
 991                     	xref	c_lcmp
 992                     	xref	c_ltor
 993                     	xref	c_lgadc
 994                     	xref	c_lgadd
 995                     	end
