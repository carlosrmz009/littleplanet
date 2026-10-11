; SPMM__.MMD
; disassembled from the disc; code only, data comes from data/SPMM__.MMD at build time
	.file "SPMM__.MMD", 27904
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	move.l #loc_ff2a3e,($fd08).w
	move.l #$ffffffff,($fb00).w
	bsr.w sub_ff3c96
	bsr.w sub_ff3c56
	bsr.w sub_ff3ca2
	lea ($b000).w,a0
	move.w #$12bf,d7
loc_ff2024:
	move.l #$0,(a0)+
	dbf d7,loc_ff2024
	bsr.w sub_ff4574
	lea dat_ff2614(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff203c:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff203c
	move.l #$44800002,($c00004).l
	lea dat_ff6076(pc),a0
	bsr.w sub_ff4b66
	move.l #$48000002,($c00004).l
	lea dat_ff701a(pc),a0
	bsr.w sub_ff4b66
	move.l #$62c00002,($c00004).l
	lea dat_ff6924(pc),a0
	bsr.w sub_ff4b66
	move.l #$70400002,($c00004).l
	lea dat_ff6cc6(pc),a0
	bsr.w sub_ff4b66
	move.l #$5b800003,($c00004).l
	lea dat_ff6f8c(pc),a0
	bsr.w sub_ff4b66
	move.l #$71e00003,($c00004).l
	lea dat_ff6232(pc),a0
	bsr.w sub_ff4b66
	move.l #$75c00003,($c00004).l
	lea dat_ff6430(pc),a0
	bsr.w sub_ff4b66
	move.l #$7ba00003,($c00004).l
	lea dat_ff670c(pc),a0
	bsr.w sub_ff4b66
	bsr.w sub_ff46f8
	bsr.w sub_ff27a2
	lea ($eb00).w,a1
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	lea ($ec00).w,a1
	move.l #$1000100,d1
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	bsr.w sub_ff3c20
	bsr.w sub_ff3c76
	bsr.w sub_ff3cae
	bsr.w sub_ff43e2
	bsr.w sub_ff3c56
	lea dat_ff7e0c(pc),a0
	cmpi.b #$5,($ff0f1c).l
	bne.s loc_ff211e
	lea dat_ff7e9c(pc),a0
loc_ff211e:
	lea ($f000).w,a1
	bsr.w sub_ff44ce
	move.l #$fff000,($fabc).w
	bsr.w sub_ff3e30
	bsr.w sub_ff3fee
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff3e52
	move.b #$1,($fa02).w
	move.b #$80,($fa00).w
	move.l #$0,($fb00).w
loc_ff2160:
	bsr.w sub_ff2506
	bne.w loc_ff2226
	bsr.w sub_ff3c20
	bsr.w sub_ff2d28
	move.w #$0,($fa40).w
	bsr.w sub_ff3fee
	bsr.w sub_ff42e2
	bsr.w sub_ff42fc
	bsr.w sub_ff2714
	bsr.w sub_ff2e5c
	move.w #$1,($fa40).w
	bsr.w sub_ff3fee
	bsr.w sub_ff4248
	bsr.w sub_ff2ee4
	move.w #$4,($fa40).w
	bsr.w sub_ff3fee
	bsr.w sub_ff3c76
	bsr.w sub_ff3cae
	btst.b #$0,($a1200f).l
	bne.w loc_ff2226
	bsr.w sub_ff43e2
	bsr.w sub_ff3c56
	bsr.w sub_ff2506
	bne.w loc_ff2226
	bsr.w sub_ff3c20
	bsr.w sub_ff2d28
	move.w #$2,($fa40).w
	bsr.w sub_ff3fee
	bsr.w sub_ff42e2
	bsr.w sub_ff42fc
	bsr.w sub_ff2714
	bsr.w sub_ff2e5c
	move.w #$3,($fa40).w
	bsr.w sub_ff3fee
	bsr.w sub_ff4248
	bsr.w sub_ff2ee4
	move.w #$4,($fa40).w
	bsr.w sub_ff3fee
	bsr.w sub_ff3c76
	bsr.w sub_ff3cae
	btst.b #$0,($a1200f).l
	bne.s loc_ff2226
	bsr.w sub_ff43e2
	bsr.w sub_ff3c56
	bra.w loc_ff2160
loc_ff2226:
	move.b ($a1202b).l,($ff0f25).l
	move.b ($a1201b).l,($fa04).w
	move.b #$0,($fa00).w
	move.b #$1,(dat_ff24a5).l
	move.b ($a1201b).l,d0
	andi.b #$3,d0
	beq.w loc_ff22d8
	btst.b #$1,($a1201b).l
	beq.s loc_ff2280
	move.l ($a12026).l,($ff0f10).l
	move.b #$1,($ff1508).l
	tst.b ($a1202b).l
	beq.s loc_ff2280
	move.b #$0,($ff1508).l
loc_ff2280:
	bset.b #$0,($a1200e).l
loc_ff2288:
	btst.b #$0,($a1200f).l
	bne.s loc_ff2288
	moveq #$0,d0
	move.b d0,($a1200e).l
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	bsr.w sub_ff4634
	move.b #$c8,($a01c0a).l
	bsr.w sub_ff464c
	btst.b #$2,($fa04).w
	beq.s loc_ff22d4
	tst.b ($ff0f25).l
	beq.w sub_ff3dd2
loc_ff22d4:
	bra.w loc_ff3cd4
loc_ff22d8:
	move.w ($a12024).l,d0
	mulu.w #$14,d0
	move.l d0,(dat_ff24a0).l
	move.l ($a12026).l,d0
	mulu.w #$14,d0
	move.l d0,(dat_ff249c).l
	bsr.w sub_ff3c56
	move.b #$0,($fa02).w
	move.b #$0,($ff156e).l
	move.w #$6,($fa40).w
	bsr.w sub_ff3dd2
	move.b ($a12023).l,($ff0f21).l
	move.b ($a1202a).l,($ff0f20).l
	bset.b #$0,($a1200e).l
loc_ff2330:
	btst.b #$0,($a1200f).l
	bne.s loc_ff2330
	moveq #$0,d0
	move.b d0,($a1200e).l
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	bclr.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff3c56
	lea ($b000).w,a0
	move.w #$12bf,d7
loc_ff2378:
	move.l #$0,(a0)+
	dbf d7,loc_ff2378
	move.w #$5,($fa40).w
	bsr.w sub_ff456e
	move.l #$40000010,($c00004).l
	move.l #$100000,($c00000).l
	move.l #$50000003,($c00004).l
	move.l #$0,($c00000).l
	lea dat_ff2694(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff23be:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff23be
	move.l #$40000000,($c00004).l
	lea dat_ff51f0(pc),a0
	bsr.w sub_ff4b66
	bsr.w sub_ff256e
	bsr.w sub_ff3e30
	bsr.w sub_ff3fee
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff3e52
	move.w #$1e0,($fa42).w
	move.w #$0,($fa48).w
loc_ff2404:
	tst.l (dat_ff24a0).l
	beq.s loc_ff241c
	bsr.w sub_ff24a6
	subi.l #$14,(dat_ff24a0).l
	bra.s loc_ff2432
loc_ff241c:
	tst.l (dat_ff249c).l
	beq.s loc_ff2432
	subi.l #$14,(dat_ff249c).l
	bsr.w sub_ff24a6
loc_ff2432:
	bsr.w sub_ff3fee
	tst.b (dat_ff24a4).l
	bne.s loc_ff2464
	move.l (dat_ff249c).l,d0
	add.l (dat_ff24a0).l,d0
	bne.s loc_ff2464
	move.b #$1,(dat_ff24a4).l
	bsr.w sub_ff4634
	move.b #$9a,($a01c0a).l
	bsr.w sub_ff464c
loc_ff2464:
	btst.b #$7,($a1201f).l
	bne.s loc_ff2476
	tst.w ($fa42).w
	bne.w loc_ff2404
loc_ff2476:
	move.l (dat_ff24a0).l,d0
	add.l (dat_ff249c).l,d0
	bsr.w sub_ff24b0
	bsr.w sub_ff4634
	move.b #$c8,($a01c0a).l
	bsr.w sub_ff464c
	bsr.w sub_ff3dd2
	rts
dat_ff249c:
	dc.b $00,$00,$00,$00
dat_ff24a0:
	dc.b $00,$00,$00,$00
dat_ff24a4:
	dc.b $00
dat_ff24a5:
	dc.b $00

sub_ff24a6:
	move.b #$bd,d0
	bsr.w sub_ff4036
	moveq #$14,d0

sub_ff24b0:
	move.l ($ff1518).l,d1
	add.l d1,d0
loc_ff24b8:
	cmp.l ($ff1578).l,d0
	bcs.s loc_ff24e8
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.w #$1,($fa48).w
	cmpi.b #$fa,($ff1508).l
	bcs.s loc_ff24b8
	move.b #$f9,($ff1508).l
	bra.s loc_ff24b8
loc_ff24e8:
	move.l d0,($ff1518).l
	cmpi.l #$f4240,($ff1518).l
	bcs.s loc_ff2504
	move.l #$f423f,($ff1518).l
loc_ff2504:
	rts

sub_ff2506:
	move.w ($fa40).w,d0
	move.w ($a1201e).l,d1
loc_ff2510:
	btst.b #$0,($fa00).w
	beq.s loc_ff2536
	btst.b #$5,($a1200f).l
	bne.s loc_ff2552
	bset.b #$5,($a1200e).l
	move.w #$7,($fa40).w
	bsr.w sub_ff3fee
	bra.s loc_ff2510
loc_ff2536:
	bclr.b #$5,($a1200e).l
	bclr.b #$0,($fa00).w
	move.w d1,($a1201e).l
	move.w d0,($fa40).w
	moveq #$0,d0
	rts
loc_ff2552:
	bclr.b #$5,($a1200e).l
	bclr.b #$0,($fa00).w
	move.w d1,($a1201e).l
	move.w d0,($fa40).w
	moveq #$1,d0
	rts

sub_ff256e:
	moveq #$3d,d5
	tst.l (dat_ff249c).l
	beq.s loc_ff2586
	moveq #$3f,d5
	cmpi.b #$7f,($ff0f20).l
	beq.s loc_ff2586
	moveq #$3e,d5
loc_ff2586:
	bsr.w sub_ff474a
	btst.b #$0,($ff0f20).l
	beq.s loc_ff259a
	moveq #$29,d5
	bsr.w sub_ff474a
loc_ff259a:
	btst.b #$1,($ff0f20).l
	beq.s loc_ff25aa
	moveq #$2a,d5
	bsr.w sub_ff474a
loc_ff25aa:
	btst.b #$2,($ff0f20).l
	beq.s loc_ff25ba
	moveq #$2b,d5
	bsr.w sub_ff474a
loc_ff25ba:
	btst.b #$3,($ff0f20).l
	beq.s loc_ff25ca
	moveq #$2c,d5
	bsr.w sub_ff474a
loc_ff25ca:
	btst.b #$4,($ff0f20).l
	beq.s loc_ff25da
	moveq #$2d,d5
	bsr.w sub_ff474a
loc_ff25da:
	btst.b #$5,($ff0f20).l
	beq.s loc_ff25ea
	moveq #$2e,d5
	bsr.w sub_ff474a
loc_ff25ea:
	btst.b #$6,($ff0f20).l
	beq.s loc_ff25fa
	moveq #$2f,d5
	bsr.w sub_ff474a
loc_ff25fa:
	move.l #$33323130,d5
	jsr (sub_ff474a).l
	move.l #$363534,d5
	jsr (sub_ff474a).l
	rts
dat_ff2614:
	.incbin 1812, 128
dat_ff2694:
	.incbin 1940, 128

sub_ff2714:
	tst.b ($a1202b).l
	bne.s loc_ff274e
	tst.b (dat_ff2750).l
	beq.s loc_ff274e
	subq.b #$1,(dat_ff2750).l
	bne.s loc_ff274e
	moveq #$0,d0
	move.b ($a12023).l,d0
	mulu.w #$a,d0
	lea dat_ff2752(pc,d0.w),a1
	lea ($f962).w,a2
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	bset.b #$1,($ff0f00).l
loc_ff274e:
	rts
dat_ff2750:
	dc.b $14,$00
dat_ff2752:
	.incbin 2130, 80

sub_ff27a2:
	moveq #$0,d0
	move.b ($a12023).l,d0
	add.w d0,d0
	move.w dat_ff27b4(pc,d0.w),d0
	jmp dat_ff27b4(pc,d0.w)
dat_ff27b4:
	.incbin 2228, 16
	move.w #$8b03,($c00004).l
	move.l #$60200001,($c00004).l
	lea ($ff8c40).l,a0
	bsr.w sub_ff4b66
	move.l #$17161514,d5
	jsr (sub_ff474a).l
	moveq #$43,d5
	jsr (sub_ff474a).l
	bsr.w sub_ff29e2
	lea ($e700).w,a1
	moveq #$0,d1
	moveq #$0,d2
	bsr.w sub_ff29fe
	lea ($ff8c00).l,a0
	bra.w loc_ff29d4
	.incbin 2318, 454
loc_ff29d4:
	lea ($f920).w,a1
	moveq #$f,d7
loc_ff29da:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff29da
	rts

sub_ff29e2:
	moveq #$12,d5
	jsr (sub_ff474a).l
	btst.b #$1,($a1201b).l
	beq.s loc_ff29fc
	moveq #$13,d5
	jsr (sub_ff474a).l
loc_ff29fc:
	rts

sub_ff29fe:
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	move.l d2,d1
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	bsr.w sub_ff43a0
	rts
	.incbin 2850, 28
loc_ff2a3e:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	bclr.b #$0,($ff0f00).l
	beq.w loc_ff2bfa
	lea ($c00004).l,a1
	lea ($c00000).l,a2
	move.w (a1),d0
	jsr sub_ff4634(pc)
	bclr.b #$1,($ff0f00).l
	beq.s loc_ff2aa0
	lea ($c00004).l,a6
	move.l #$93409400,(a6)
	move.l #$958096fc,(a6)
	move.w #$977f,(a6)
	move.w #$c000,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$c0000000,(a6)
	move.w ($f900).w,($c00000).l
loc_ff2aa0:
	move.w ($fa40).w,d0
	add.w d0,d0
	move.w dat_ff2aae(pc,d0.w),d0
	jmp dat_ff2aae(pc,d0.w)
dat_ff2aae:
	.incbin 2990, 16
	bsr.w sub_ff2c8e
	bsr.w sub_ff32b0
	lea ($c00004).l,a6
	move.l #$93009410,(a6)
	move.l #$950096d8,(a6)
	move.w #$977f,(a6)
	move.w #$4020,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$40200000,(a6)
	move.w ($b000).w,($c00000).l
	jsr sub_ff465a(pc)
	bra.w loc_ff2be2
	bsr.w sub_ff3296
	lea ($c00004).l,a6
	move.l #$93009408,(a6)
	move.l #$950096e8,(a6)
	move.w #$977f,(a6)
	move.w #$6020,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$60200000,(a6)
	move.w ($d000).w,($c00000).l
	bsr.w sub_ff2c14
	bsr.w sub_ff34a6
	bra.w loc_ff2be2
	bsr.w sub_ff2c72
	bsr.w sub_ff32b0
	lea ($c00004).l,a6
	move.l #$93009410,(a6)
	move.l #$950096d8,(a6)
	move.w #$977f,(a6)
	move.w #$7020,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$70200000,(a6)
	move.w ($b000).w,($c00000).l
	jsr sub_ff465a(pc)
	bra.w loc_ff2be2
	bsr.w sub_ff3296
	lea ($c00004).l,a6
	move.l #$93009408,(a6)
	move.l #$950096e8,(a6)
	move.w #$977f,(a6)
	move.w #$5020,(a6)
	move.w #$81,-(a7)
	move.w (a7)+,(a6)
	move.l #$50200001,(a6)
	move.w ($d000).w,($c00000).l
	bsr.w sub_ff2c14
	bsr.w sub_ff34a6
	bra.w loc_ff2be2
	bsr.w sub_ff3296
	bra.w loc_ff2be2
	.incbin 3262, 36
loc_ff2be2:
	bsr.w sub_ff464c
	tst.w ($fa42).w
	beq.s loc_ff2bf0
	subq.w #$1,($fa42).w
loc_ff2bf0:
	addq.w #$1,($fa44).w
	movem.l (a7)+,d0-d7/a0-a6
	rte
loc_ff2bfa:
	cmpi.l #$ffffffff,($fb00).w
	beq.s loc_ff2c0e
	addq.l #$1,($fb00).w
	move.b ($fa41).w,($fb00).w
loc_ff2c0e:
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_ff2c14:
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096f0,(a6)
	move.w #$977f,(a6)
	move.w #$5400,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$54000003,(a6)
	move.w ($e000).w,($c00000).l
	lea ($c00004).l,a6
	move.l #$93809401,(a6)
	move.l #$958096f1,(a6)
	move.w #$977f,(a6)
	move.w #$7c00,(a6)
	move.w #$82,-(a7)
	move.w (a7)+,(a6)
	move.l #$7c000002,(a6)
	move.w ($e300).w,($c00000).l
	rts

sub_ff2c72:
	bsr.w sub_ff3cb6
	beq.s loc_ff2cb8
	move.w #$8f20,($c00004).l
	move.l #$52000003,($c00004).l
	moveq #$0,d0
	bra.s loc_ff2caa

sub_ff2c8e:
	bsr.w sub_ff3cb6
	beq.s loc_ff2cf0
	move.w #$8f20,($c00004).l
	move.l #$52000003,($c00004).l
	move.w #$100,d0
loc_ff2caa:
	bsr.w sub_ff348c
	move.w #$8f02,($c00004).l
	rts
loc_ff2cb8:
	lea ($c00004).l,a6
	move.w #$8f04,(a6)
	move.l #$93609400,(a6)
	move.l #$958096f5,(a6)
	move.w #$977f,(a6)
	move.w #$5200,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$52000003,(a6)
	move.w ($eb00).w,($c00000).l
	move.w #$8f02,(a6)
	rts
loc_ff2cf0:
	lea ($c00004).l,a6
	move.w #$8f04,(a6)
	move.l #$93609400,(a6)
	move.l #$950096f6,(a6)
	move.w #$977f,(a6)
	move.w #$5200,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$52000003,(a6)
	move.w ($ec00).w,($c00000).l
	move.w #$8f02,(a6)
	rts

sub_ff2d28:
	btst.b #$0,($a1200f).l
	bne.s loc_ff2d5e
	tst.b (dat_ff24a5).l
	bne.s loc_ff2d5e
	cmpi.b #$0,($a12023).l
	beq.w loc_ff2d60
	cmpi.b #$4,($a12023).l
	beq.w loc_ff2dbe
	cmpi.b #$5,($a12023).l
	beq.w loc_ff2e2a
loc_ff2d5e:
	rts
loc_ff2d60:
	move.l #$80000,d0
	bsr.w sub_ff327c
	add.l d0,($faa8).w
	asr.l #$1,d0
	add.l d0,($faa4).w
	lea dat_ff2f70(pc),a0
	lea dat_ff2f6c(pc),a1
	tst.b (a0)
	bne.s loc_ff2d92
	addq.w #$1,(a1)
	cmpi.w #$200,(a1)
	bcs.s loc_ff2d9e
	move.w #$1ff,(a1)
	move.b #$1,(a0)
	bra.s loc_ff2d9e
loc_ff2d92:
	subq.w #$1,(a1)
	bpl.s loc_ff2d9e
	move.w #$0,(a1)
	move.b #$0,(a0)
loc_ff2d9e:
	lea ($e700).w,a0
	lea ($e900).w,a1
	move.l #$10000,d0
	move.l #$400,d1
	moveq #$0,d3
	moveq #$0,d4
	move.w #$17,d7
	bra.w loc_ff31ae
loc_ff2dbe:
	move.l #$40000,d0
	bsr.w sub_ff327c
	add.l d0,($faa4).w
	lea dat_ff2f70(pc),a0
	lea dat_ff2f6e(pc),a1
	move.b #$0,(a0)
	btst.b #$2,($e285).w
	beq.s loc_ff2df0
	move.b #$1,(a0)
	addq.w #$1,(a1)
	andi.w #$f,(a1)
	bne.s loc_ff2df0
	move.b #$2,(a0)
loc_ff2df0:
	btst.b #$3,($e285).w
	beq.s loc_ff2e08
	move.b #$ff,(a0)
	subq.w #$1,(a1)
	andi.w #$f,(a1)
	bne.s loc_ff2e08
	move.b #$2,(a0)
loc_ff2e08:
	lea ($e700).w,a0
	lea ($e900).w,a1
	lea dat_ff2f72(pc),a2
	moveq #$0,d0
	move.w #$10,d7
loc_ff2e1a:
	move.l d0,(a0)+
	move.l d0,(a1)+
	dbf d7,loc_ff2e1a
	move.w #$6,d7
	bra.w loc_ff31ea
loc_ff2e2a:
	move.l #$40000,d0
	bsr.w sub_ff327c
	add.l d0,($faa4).w
	lea ($e700).w,a0
	lea dat_ff312e(pc),a2
	moveq #$0,d0
	move.w (dat_ff2f6e).l,d2
	addq.w #$1,d2
	andi.w #$7f,d2
	move.w d2,(dat_ff2f6e).l
	move.w #$17,d7
	bra.w loc_ff3246

sub_ff2e5c:
	btst.b #$0,($a1200f).l
	bne.s loc_ff2e8e
	tst.b (dat_ff24a5).l
	bne.s loc_ff2e8e
	cmpi.b #$0,($a12023).l
	beq.s loc_ff2e90
	cmpi.b #$4,($a12023).l
	beq.s loc_ff2eb2
	cmpi.b #$5,($a12023).l
	beq.w loc_ff2eca
loc_ff2e8e:
	rts
loc_ff2e90:
	lea ($e760).w,a0
	lea ($e960).w,a1
	move.l #$a000,d0
	move.l #$400,d1
	move.w ($faa8).w,d3
	moveq #$0,d4
	move.w #$47,d7
	bra.w loc_ff31ae
loc_ff2eb2:
	lea ($e760).w,a0
	lea ($e960).w,a1
	lea dat_ff2f8e(pc),a2
	move.w ($faa4).w,d0
	move.w #$37,d7
	bra.w loc_ff31ea
loc_ff2eca:
	lea ($e760).w,a0
	lea dat_ff312e(pc),a2
	move.w ($faa4).w,d0
	move.w (dat_ff2f6e).l,d2
	move.w #$37,d7
	bra.w loc_ff3246

sub_ff2ee4:
	btst.b #$0,($a1200f).l
	bne.s loc_ff2f16
	tst.b (dat_ff24a5).l
	bne.s loc_ff2f16
	cmpi.b #$0,($a12023).l
	beq.s loc_ff2f18
	cmpi.b #$4,($a12023).l
	beq.s loc_ff2f3a
	cmpi.b #$5,($a12023).l
	beq.w loc_ff2f52
loc_ff2f16:
	rts
loc_ff2f18:
	lea ($e880).w,a0
	lea ($ea80).w,a1
	move.l #$ffff8000,d0
	move.l #$400,d1
	move.w ($faa4).w,d3
	moveq #$0,d4
	move.w #$1f,d7
	bra.w loc_ff31ae
loc_ff2f3a:
	lea ($e840).w,a0
	lea ($ea40).w,a1
	lea dat_ff306e(pc),a2
	move.w ($faa4).w,d0
	move.w #$2f,d7
	bra.w loc_ff31ea
loc_ff2f52:
	lea ($e840).w,a0
	lea dat_ff312e(pc),a2
	move.w ($faa4).w,d0
	move.w (dat_ff2f6e).l,d2
	move.w #$2f,d7
	bra.w loc_ff3246
dat_ff2f6c:
	dc.b $01,$00
dat_ff2f6e:
	dc.b $00,$00
dat_ff2f70:
	dc.b $00,$00
dat_ff2f72:
	.incbin 4210, 28
dat_ff2f8e:
	.incbin 4238, 224
dat_ff306e:
	.incbin 4462, 192
dat_ff312e:
	.incbin 4654, 128
loc_ff31ae:
	tst.b (dat_ff2f70).l
	bne.s loc_ff31d0
loc_ff31b6:
	move.w d3,(a0)+
	move.w d4,(a1)+
	move.w (a0),d2
	swap d2
	move.w (a1),d2
	add.l d0,d2
	move.w d2,(a1)+
	swap d2
	move.w d2,(a0)+
	sub.l d1,d0
	dbf d7,loc_ff31b6
	rts
loc_ff31d0:
	move.w d3,(a0)+
	move.w d4,(a1)+
	move.w (a0),d2
	swap d2
	move.w (a1),d2
	sub.l d0,d2
	move.w d2,(a1)+
	swap d2
	move.w d2,(a0)+
	sub.l d1,d0
	dbf d7,loc_ff31d0
	rts
loc_ff31ea:
	cmpi.b #$2,(dat_ff2f70).l
	beq.w loc_ff3234
	tst.b (dat_ff2f70).l
	beq.w loc_ff3244
	bmi.w loc_ff321c
loc_ff3204:
	move.w d0,(a0)+
	move.w d0,(a1)+
	move.w (a0),d2
	swap d2
	move.w (a1),d2
	add.l (a2)+,d2
	move.w d2,(a1)+
	swap d2
	move.w d2,(a0)+
	dbf d7,loc_ff3204
	rts
loc_ff321c:
	move.w d0,(a0)+
	move.w d0,(a1)+
	move.w (a0),d2
	swap d2
	move.w (a1),d2
	sub.l (a2)+,d2
	move.w d2,(a1)+
	swap d2
	move.w d2,(a0)+
	dbf d7,loc_ff321c
	rts
loc_ff3234:
	move.w d0,(a0)+
	move.w d0,(a1)+
	move.w #$ff80,(a0)+
	move.w #$0,(a1)+
	dbf d7,loc_ff3234
loc_ff3244:
	rts
loc_ff3246:
	move.w d0,(a0)+
	move.b $0(a2,d2.w),d1
	ext.w d1
	move.w d1,(a0)+
	addq.w #$1,d2
	andi.w #$7f,d2
	dbf d7,loc_ff3246
	move.w d2,(dat_ff2f6e).l
	rts
	.incbin 4962, 26

sub_ff327c:
	btst.b #$2,($e285).w
	bne.s loc_ff3294
	neg.l d0
	neg.l d1
	btst.b #$3,($e285).w
	bne.s loc_ff3294
	moveq #$0,d0
	moveq #$0,d1
loc_ff3294:
	rts

sub_ff3296:
	btst.b #$0,($a1200f).l
	bne.s loc_ff32ae
	tst.b (dat_ff24a5).l
	bne.s loc_ff32ae
	bsr.w sub_ff3cb6
	bne.s sub_ff32b0
loc_ff32ae:
	rts

sub_ff32b0:
	tst.b (dat_ff24a5).l
	bne.s loc_ff32d4
	btst.b #$0,($a1200f).l
	bne.s loc_ff32d4
	moveq #$0,d0
	move.b ($a12023).l,d0
	add.w d0,d0
	move.w dat_ff32d6(pc,d0.w),d0
	jmp dat_ff32d6(pc,d0.w)
loc_ff32d4:
	rts
dat_ff32d6:
	.incbin 5078, 16
	lea ($c00004).l,a6
	move.l #$93009401,(a6)
	move.l #$958096f3,(a6)
	move.w #$977f,(a6)
	move.w #$5000,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$50000003,(a6)
	move.w ($e700).w,($c00000).l
	rts
	.incbin 5142, 374

sub_ff348c:
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	move.w d0,(a2)
	rts

sub_ff34a6:
	lea ($f900).w,a6
	moveq #$0,d0
	move.b ($a12023).l,d0
	add.w d0,d0
	move.w dat_ff34bc(pc,d0.w),d0
	jmp dat_ff34bc(pc,d0.w)
dat_ff34bc:
	.incbin 5564, 16
	lea dat_ff38f6(pc),a1
	moveq #$8,d5
	moveq #$0,d6
	move.w #$3e8,d7
	bsr.w sub_ff423a
	andi.w #$fff0,d0
	lea dat_ff3506(pc,d0.w),a5
	lea ($f940).w,a6
	moveq #$f,d0
loc_ff34ea:
	moveq #$0,d1
	move.b (a5)+,d1
	cmpi.w #$10,d1
	bcs.s loc_ff34f6
	lsl.w #$4,d1
loc_ff34f6:
	move.w d1,(a6)+
	dbf d0,loc_ff34ea
	bset.b #$1,($ff0f00).l
	rts
dat_ff3506:
	.incbin 5638, 1008
dat_ff38f6:
	.incbin 6646, 810

sub_ff3c20:
	btst.b #$0,($a1200f).l
	bne.s loc_ff3c54
	btst.b #$5,($a1200f).l
	bne.s loc_ff3c54
	bset.b #$0,($a12012).l
loc_ff3c3c:
	tst.b ($a12022).l
	beq.s loc_ff3c3c
	bclr.b #$0,($a12012).l
loc_ff3c4c:
	tst.b ($a12022).l
	bne.s loc_ff3c4c
loc_ff3c54:
	rts

sub_ff3c56:
	btst.b #$0,($a1200f).l
	bne.s loc_ff3c74
	btst.b #$5,($a1200f).l
	bne.s loc_ff3c74
	bset.b #$1,($a12003).l
	beq.s sub_ff3c56
loc_ff3c74:
	rts

sub_ff3c76:
	btst.b #$0,($a1200f).l
	bne.s loc_ff3c94
	btst.b #$5,($a1200f).l
	bne.s loc_ff3c94
	btst.b #$0,($a12003).l
	beq.s sub_ff3c76
loc_ff3c94:
	rts

sub_ff3c96:
	btst.b #$7,($a1200f).l
	beq.s sub_ff3c96
	rts

sub_ff3ca2:
	btst.b #$7,($a1200f).l
	bne.s sub_ff3ca2
	rts

sub_ff3cae:
	moveq #$1f,d0
loc_ff3cb0:
	dbf d0,loc_ff3cb0
	rts

sub_ff3cb6:
	cmpi.b #$0,($a12023).l
	beq.s loc_ff3cd2
	cmpi.b #$4,($a12023).l
	beq.s loc_ff3cd2
	cmpi.b #$5,($a12023).l
loc_ff3cd2:
	rts
loc_ff3cd4:
	move.b #$1,($fa03).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff3ce0:
	bsr.s sub_ff3d06
	addq.w #$2,d0
	dbf d6,loc_ff3ce0
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff3cee:
	bsr.s sub_ff3d06
	addq.w #$2,d0
	dbf d6,loc_ff3cee
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3cfc:
	bsr.s sub_ff3d06
	addq.w #$2,d0
	dbf d6,loc_ff3cfc
	rts

sub_ff3d06:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3d0c:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff3d22
	moveq #$0,d2
loc_ff3d22:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3d0c
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3fee
	.incbin 7738, 152

sub_ff3dd2:
	move.b #$1,($fa03).w
	moveq #$7,d6
	moveq #$1,d1
loc_ff3ddc:
	bsr.s sub_ff3df8
	dbf d6,loc_ff3ddc
	moveq #$7,d6
	moveq #$5,d1
loc_ff3de6:
	bsr.s sub_ff3df8
	dbf d6,loc_ff3de6
	moveq #$7,d6
	moveq #$9,d1
loc_ff3df0:
	bsr.s sub_ff3df8
	dbf d6,loc_ff3df0
	rts

sub_ff3df8:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3dfe:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	addq.w #$2,d2
	cmpi.w #$e,d2
	bls.s loc_ff3e18
	moveq #$e,d2
loc_ff3e18:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3dfe
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3fee

sub_ff3e30:
	lea ($f900).w,a1
	lea ($f980).w,a2
	move.l #$eee0eee,d1
	moveq #$1f,d7
loc_ff3e40:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff3e40
	bset.b #$1,($ff0f00).l
	rts

sub_ff3e52:
	moveq #$7,d6
	moveq #$e,d0
	moveq #$1,d1
loc_ff3e58:
	bsr.w sub_ff3e8a
	subq.w #$2,d0
	dbf d6,loc_ff3e58
	moveq #$7,d6
	moveq #$e,d0
	moveq #$5,d1
loc_ff3e68:
	bsr.w sub_ff3e8a
	subq.w #$2,d0
	dbf d6,loc_ff3e68
	moveq #$7,d6
	moveq #$e,d0
	moveq #$9,d1
loc_ff3e78:
	bsr.w sub_ff3e8a
	subq.w #$2,d0
	dbf d6,loc_ff3e78
	move.b #$0,($fa03).w
	rts

sub_ff3e8a:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff3e94:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bcc.s loc_ff3eae
	move.w d0,d2
loc_ff3eae:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3e94
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3fee
	.incbin 8134, 296

sub_ff3fee:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff3ffa:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff3ffa
	rts
	.incbin 8454, 48

sub_ff4036:
	bsr.w sub_ff4634
	tst.b ($a01c0a).l
	bne.s loc_ff404a
	move.b d0,($a01c0a).l
	bra.s loc_ff4068
loc_ff404a:
	tst.b ($a01c0b).l
	bne.s loc_ff405a
	move.b d0,($a01c0b).l
	bra.s loc_ff4068
loc_ff405a:
	tst.b ($a01c0c).l
	bne.s loc_ff4068
	move.b d0,($a01c0c).l
loc_ff4068:
	bsr.w sub_ff464c
	rts
loc_ff406e:
	bsr.w sub_ff4634
	move.b ($21c280).l,($a01c0a).l
	move.b ($21c281).l,($a01c0b).l
	move.b ($21c282).l,($a01c0c).l
	bsr.w sub_ff464c
	rts
	.incbin 8598, 420

sub_ff423a:
	move.w (a1),d0
	add.w d5,d0
	cmp.w d7,d0
	bls.s loc_ff4244
	move.w d6,d0
loc_ff4244:
	move.w d0,(a1)
	rts

sub_ff4248:
	btst.b #$1,($a1201b).l
	bne.s loc_ff426e
	lea dat_ff4364(pc),a1
	move.l #$40a00003,d4
	move.l #$41200003,d5
	move.l ($a12026).l,d0
	moveq #$2,d1
	bra.w sub_ff4316
loc_ff426e:
	lea dat_ff4368(pc),a1
	move.l #$409a0003,d4
	move.l #$411a0003,d5
	move.l ($a12026).l,d0
	swap d0
	andi.l #$ff,d0
	moveq #$1,d1
	bsr.w sub_ff4316
	lea dat_ff4368(pc),a1
	move.l #$40a00003,d4
	move.l #$41200003,d5
	move.l ($a12026).l,d0
	lsr.w #$8,d0
	andi.l #$ff,d0
	moveq #$1,d1
	bsr.w sub_ff4316
	lea dat_ff4368(pc),a1
	move.l #$40a60003,d4
	move.l #$41260003,d5
	move.l ($a12026).l,d0
	andi.l #$ff,d0
	mulu.w #$64,d0
	divu.w #$3c,d0
	ext.l d0
	moveq #$1,d1
	bra.w sub_ff4316

sub_ff42e2:
	lea dat_ff4364(pc),a1
	move.l #$40b60003,d4
	move.l #$41360003,d5
	move.w ($a12024).l,d0
	moveq #$2,d1
	bra.s sub_ff4316

sub_ff42fc:
	lea dat_ff4368(pc),a1
	move.l #$408a0003,d4
	move.l #$410a0003,d5
	moveq #$0,d0
	move.b ($a1202b).l,d0
	moveq #$1,d1

sub_ff4316:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
loc_ff4322:
	move.l d4,(a2)
	moveq #$0,d2
	move.l (a1)+,d3
loc_ff4328:
	sub.l d3,d0
	bcs.s loc_ff4330
	addq.w #$1,d2
	bra.s loc_ff4328
loc_ff4330:
	add.l d3,d0
	add.w d2,d2
	move.w dat_ff4370(pc,d2.w),(a3)
	move.l d5,(a2)
	move.w dat_ff4388(pc,d2.w),(a3)
	addi.l #$20000,d4
	addi.l #$20000,d5
	dbf d1,loc_ff4322
	rts
	.incbin 9296, 20
dat_ff4364:
	dc.b $00,$00,$00,$64
dat_ff4368:
	dc.b $00,$00,$00,$0a,$00,$00,$00,$01
dat_ff4370:
	.incbin 9328, 24
dat_ff4388:
	.incbin 9352, 24

sub_ff43a0:
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	move.l d1,(a1)+
	rts

sub_ff43e2:
	lea ($21d000).l,a1
	lea ($b000).w,a2
	move.w #$5,d7
loc_ff43f0:
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	dbf d7,loc_ff43f0
	lea ($21c000).l,a1
	lea ($e000).w,a2
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	move.b ($21c284).l,($e284).w
	move.b #$0,($21c284).l
	move.b ($21c285).l,($e285).w
	move.b #$0,($21c285).l
	lea ($21c300).l,a1
	lea ($e300).w,a2
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bsr.s sub_ff4462
	bra.w loc_ff406e

sub_ff4462:
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	rts
	.incbin 9636, 42

sub_ff44ce:
	subq.l #$2,a7
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff44da:
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_ff44ec
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff44ec:
	move.w d6,ccr
	bcc.s loc_ff44f4
	move.b (a0)+,(a1)+
	bra.s loc_ff44da
loc_ff44f4:
	moveq #$0,d3
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_ff4508
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff4508:
	move.w d6,ccr
	bcs.s loc_ff4538
	lsr.w #$1,d5
	dbf d4,loc_ff451c
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff451c:
	roxl.w #$1,d3
	lsr.w #$1,d5
	dbf d4,loc_ff452e
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_ff452e:
	roxl.w #$1,d3
	addq.w #$1,d3
	moveq #$ffffffff,d2
	move.b (a0)+,d2
	bra.s loc_ff454e
loc_ff4538:
	move.b (a0)+,d0
	move.b (a0)+,d1
	moveq #$ffffffff,d2
	move.b d1,d2
	lsl.w #$5,d2
	move.b d0,d2
	andi.w #$7,d1
	beq.s loc_ff455a
	move.b d1,d3
	addq.w #$1,d3
loc_ff454e:
	move.b $0(a1,d2.w),d0
	move.b d0,(a1)+
	dbf d3,loc_ff454e
	bra.s loc_ff44da
loc_ff455a:
	move.b (a0)+,d1
	beq.s loc_ff456a
	cmpi.b #$1,d1
	beq.w loc_ff44da
	move.b d1,d3
	bra.s loc_ff454e
loc_ff456a:
	addq.l #$2,a7
	rts

sub_ff456e:
	lea dat_ff4620(pc),a0
	bra.s loc_ff4578

sub_ff4574:
	lea dat_ff460c(pc),a0
loc_ff4578:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff457e:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff457e
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff4634
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff45d0:
	btst.b #$1,$1(a6)
	bne.s loc_ff45d0
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff464c
	move.w #$8134,($ff0f16).l
	rts
dat_ff460c:
	.incbin 9996, 20
dat_ff4620:
	.incbin 10016, 20

sub_ff4634:
	move.w sr,($fa46).w
	move.w #$100,($a11100).l
loc_ff4640:
	btst.b #$0,($a11100).l
	bne.s loc_ff4640
	rts

sub_ff464c:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts

sub_ff465a:
	lea ($a1201e).l,a5
	lea ($a10003).l,a6
	move.b #$0,(a6)
	tst.w (a5)
	move.b (a6),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a6)
	tst.w (a5)
	move.b (a6),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	btst.b #$0,($a1201b).l
	beq.s loc_ff469a
	btst.b #$2,($a1201b).l
	bne.s loc_ff469a
	bsr.s sub_ff46d8
loc_ff469a:
	move.b d0,d1
	move.b (a5),d2
	eor.b d2,d0
	move.b d1,(a5)+
	and.b d1,d0
	move.b d0,(a5)+
	bpl.s loc_ff46b6
	btst.b #$7,($fa00).w
	beq.s loc_ff46b6
	eori.b #$1,($fa00).w
loc_ff46b6:
	rts
	.incbin 10168, 32

sub_ff46d8:
	btst.l #$7,d0
	bne.s loc_ff46f0
	tst.b ($fa02).w
	beq.s loc_ff46ee
	movea.l ($fabc).w,a6
	move.b (a6)+,d0
	move.l a6,($fabc).w
loc_ff46ee:
	rts
loc_ff46f0:
	move.b #$0,($fa02).w
	rts

sub_ff46f8:
	move.w #$2001,d6
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$48000003,d0
	moveq #$1f,d1
	moveq #$b,d2
	bsr.s sub_ff4722
	move.w #$2181,d6
	move.l #$48400003,d0
	moveq #$1f,d1
	moveq #$b,d2

sub_ff4722:
	move.l #$800000,d4
loc_ff4728:
	move.l d0,(a2)
	move.w d1,d3
	move.w d6,d5
loc_ff472e:
	tst.w d3
	bne.s loc_ff4736
	addi.w #$8000,d5
loc_ff4736:
	move.w d5,(a3)
	addi.w #$c,d5
	dbf d3,loc_ff472e
	add.l d4,d0
	addq.w #$1,d6
	dbf d2,loc_ff4728
	rts

sub_ff474a:
	moveq #$3,d7
loc_ff474c:
	moveq #$0,d6
	move.b d5,d6
	beq.s loc_ff4786
	mulu.w #$c,d6
	movea.l loc_ff4782(pc,d6.w),a0
	move.l loc_ff4786(pc,d6.w),d0
	move.w loc_ff478c(pc,d6.w),d2
	move.w $ff478a(pc,d6.w),d1
	tst.w (a0)+
	bne.s loc_ff476e
	movea.l a0,a1
	bra.s loc_ff4782
loc_ff476e:
	movem.l d0-d7,-(a7)
	lea ($e700).w,a1
	bsr.w sub_ff44ce
	movem.l (a7)+,d0-d7
	lea ($e700).w,a1
loc_ff4782:
	jsr sub_ff4b42(pc)
loc_ff4786:
	ror.l #$8,d5
	dbf d7,loc_ff474c
loc_ff478c:
	rts
	.incbin 10382, 948

sub_ff4b42:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff4b54:
	move.l d0,(a2)
	move.w d1,d3
loc_ff4b58:
	move.w (a1)+,(a3)
	dbf d3,loc_ff4b58
	add.l d4,d0
	dbf d2,loc_ff4b54
	rts

sub_ff4b66:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_ff4c28).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff4b82
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $4c,$3e
loc_ff4b82:
	lea ($f700).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff4b90
	adda.w #$a,a3
loc_ff4b90:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff4c54(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff4bb0
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff4bb0:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff4bfc
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff4bd8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff4bd8:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff4be6:
	lsr.w #$4,d0
loc_ff4be8:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff4bf6
	jmp (a3)
loc_ff4bf2:
	moveq #$0,d4
	moveq #$8,d3
loc_ff4bf6:
	dbf d0,loc_ff4be8
	bra.s sub_ff4bb0
loc_ff4bfc:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff4c0a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff4c0a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff4be6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff4be6
loc_ff4c28:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff4bf2
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff4bf2
	rts
	.incbin 11582, 22

sub_ff4c54:
	move.b (a0)+,d0
loc_ff4c56:
	cmpi.b #$ff,d0
	bne.s loc_ff4c5e
	rts
loc_ff4c5e:
	move.w d0,d7
loc_ff4c60:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff4c56
	move.b d0,d1
	andi.w #$f,d7
	andi.w #$70,d1
	or.w d1,d7
	andi.w #$f,d0
	move.b d0,d1
	lsl.w #$8,d1
	or.w d1,d7
	moveq #$8,d1
	sub.w d0,d1
	bne.s loc_ff4c8e
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff4c60
loc_ff4c8e:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff4c9a:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff4c9a
	bra.s loc_ff4c60
	.incbin 11686, 1354
dat_ff51f0:
	.incbin 13040, 3718
dat_ff6076:
	.incbin 16758, 444
dat_ff6232:
	.incbin 17202, 510
dat_ff6430:
	.incbin 17712, 732
dat_ff670c:
	.incbin 18444, 536
dat_ff6924:
	.incbin 18980, 930
dat_ff6cc6:
	.incbin 19910, 710
dat_ff6f8c:
	.incbin 20620, 142
dat_ff701a:
	.incbin 20762, 3570
dat_ff7e0c:
	.incbin 24332, 144
dat_ff7e9c:
	.incbin 24476, 3428
