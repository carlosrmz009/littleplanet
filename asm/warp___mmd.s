; WARP__.MMD
; disassembled from the disc; code only, data comes from data/WARP__.MMD at build time
	.file "WARP__.MMD", 7242
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	move.l #loc_ff2170,($fd08).w
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2010:
	move.l #$0,(a0)+
	dbf d7,loc_ff2010
	lea dat_ff25f4(pc),a0
	bsr.w sub_ff3a26
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff2648(pc),a0
	bsr.w sub_ff3742
	lea dat_ff2c48(pc),a1
	move.l #$60000003,d0
	move.w #$27,d1
	move.w #$1b,d2
	bsr.w sub_ff36fa
	lea dat_ff2c48(pc),a1
	move.l #$6e000003,d0
	move.w #$27,d1
	move.w #$3,d2
	bsr.w sub_ff36fa
	lea dat_ff2608(pc),a0
	lea ($f900).w,a1
	moveq #$f,d7
loc_ff207e:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff207e
	move.w #$5a,($fa42).w
loc_ff208a:
	tst.w ($fa42).w
	bne.s loc_ff208a
	move.w #$f0,($fa42).w
	move.b #$1,(dat_ff224c).l
	bsr.w sub_ff3aa0
	move.b #$d8,($a01c0a).l
	bsr.w sub_ff3abc
	bsr.w sub_ff3664
	bsr.w sub_ff3b02
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	bsr.w sub_ff3686
loc_ff20cc:
	bsr.w sub_ff20ee
	bsr.w sub_ff2250
	bsr.w sub_ff3b02
	btst.b #$7,($a1201f).l
	bne.s loc_ff20e8
	tst.w ($fa42).w
	bne.s loc_ff20cc
loc_ff20e8:
	bsr.w sub_ff3606
	rts

sub_ff20ee:
	lea dat_ff2134(pc),a1
	addq.w #$1,(a1)
	btst.b #$0,$1(a1)
	bne.s loc_ff2132
	move.w $2(a1),d0
	addq.w #$1,$2(a1)
	cmpi.w #$e,$2(a1)
	bcs.s loc_ff2112
	move.w #$0,$2(a1)
loc_ff2112:
	add.w d0,d0
	lea dat_ff2138(pc,d0.w),a1
	lea ($f922).w,a2
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	move.l (a1)+,(a2)+
	bset.b #$1,($ff0f00).l
loc_ff2132:
	rts
dat_ff2134:
	dc.b $ff,$ff,$00,$00
dat_ff2138:
	.incbin 568, 56
loc_ff2170:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	bclr.b #$0,($ff0f00).l
	beq.w loc_ff2236
	bsr.w sub_ff3aa0
	move.w ($c00004).l,d0
	bclr.b #$0,(dat_ff224c).l
	beq.s loc_ff21ae
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
loc_ff21ae:
	bclr.b #$1,($ff0f00).l
	beq.s loc_ff21e6
	lea ($c00004).l,a6
	move.l #$93409400,(a6)
	move.l #$958096fc,(a6)
	move.w #$977f,(a6)
	move.w #$c000,(a6)
	move.w #$80,-(a7)
	move.w (a7)+,(a6)
	move.l #$c0000000,(a6)
	move.w ($f900).w,($c00000).l
loc_ff21e6:
	move.l #$40020010,($c00004).l
	move.w (dat_ff224a).l,($c00000).l
	subq.w #$4,(dat_ff224a).l
	lea ($c00004).l,a6
	move.l #$93409401,(a6)
	move.l #$950096f0,(a6)
	move.w #$977f,(a6)
	move.w #$7000,(a6)
	move.w #$83,-(a7)
	move.w (a7)+,(a6)
	move.l #$70000003,(a6)
	move.w ($e000).w,($c00000).l
	jsr sub_ff3aca(pc)
	bsr.w sub_ff3abc
loc_ff2236:
	tst.w ($fa42).w
	beq.s loc_ff2240
	subq.w #$1,($fa42).w
loc_ff2240:
	addq.w #$1,($fa44).w
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_ff224a:
	dc.b $00,$00
dat_ff224c:
	dc.b $00,$00
dat_ff224e:
	dc.b $00,$00

sub_ff2250:
	move.w ($fa44).w,d0
	andi.w #$3,d0
	bne.s loc_ff227c
	move.w (dat_ff224e).l,d0
	addq.w #$1,(dat_ff224e).l
	andi.w #$3,(dat_ff224e).l
	mulu.w #$40,d0
	lea ($e300).w,a0
	move.w #$1,$0(a0,d0.w)
loc_ff227c:
	move.w ($fa44).w,d0
	andi.w #$3,d0
	bne.s loc_ff228e
	bsr.w sub_ff23b2
	move.w #$2,(a1)
loc_ff228e:
	move.b #$0,($fa00).w
	move.l #$ffe000,($faa0).w
	lea ($e400).w,a0
	moveq #$2,d7
loc_ff22a2:
	move.w d7,-(a7)
	bsr.s sub_ff22f0
	move.w (a7)+,d7
	adda.w #$40,a0
	dbf d7,loc_ff22a2
	lea ($e300).w,a0
	bsr.w sub_ff23ec
	lea ($e340).w,a0
	bsr.w sub_ff23fa
	lea ($e380).w,a0
	bsr.w sub_ff23fa
	lea ($e3c0).w,a0
	bsr.w sub_ff23fa
	lea ($e400).w,a0
	moveq #$18,d7
loc_ff22d6:
	move.w d7,-(a7)
	bsr.s sub_ff22f0
	move.w (a7)+,d7
	adda.w #$40,a0
	dbf d7,loc_ff22d6
	movea.l ($faa0).w,a0
	move.l #$0,(a0)
loc_ff22ee:
	rts

sub_ff22f0:
	move.w (a0),d0
	beq.s loc_ff22ee
	jsr (sub_ff24f6).l
	btst.b #$0,$2(a0)
	beq.s sub_ff2310
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d2
loc_ff2308:
	move.l d1,(a1)+
	dbf d2,loc_ff2308
	rts

sub_ff2310:
	movea.l $6(a0),a2
	moveq #$0,d0
	move.b $a(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a2,d0.w),a2
	move.b (a2)+,d1
	move.b (a2)+,d2
	btst.b #$1,$2(a0)
	bne.s loc_ff2348
	subq.b #$1,$c(a0)
	bpl.s loc_ff2348
	move.b d2,$c(a0)
	addq.b #$1,$b(a0)
	cmp.b $b(a0),d1
	bhi.s loc_ff2348
	move.b #$0,$b(a0)
loc_ff2348:
	btst.b #$2,$2(a0)
	bne.s loc_ff22ee
	move.w $10(a0),d4
	move.w $14(a0),d3
	moveq #$0,d0
	move.b $b(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a2,d0.w),a3
	moveq #$0,d7
	move.b (a3)+,d7
	bmi.s loc_ff22ee
	movea.l ($faa0).w,a4
	move.w $4(a0),d5
loc_ff2374:
	cmpi.b #$50,($fa00).w
	bcc.s loc_ff23ac
	move.b (a3)+,d0
	ext.w d0
	add.w d3,d0
	move.w d0,(a4)+
	move.b (a3)+,(a4)+
	addq.b #$1,($fa00).w
	move.b ($fa00).w,(a4)+
	move.b (a3)+,d0
	lsl.w #$8,d0
	move.b (a3)+,d0
	add.w d5,d0
	move.w d0,(a4)+
	move.b (a3)+,d0
	ext.w d0
	add.w d4,d0
	andi.w #$1ff,d0
	bne.s loc_ff23a6
	addq.w #$1,d0
loc_ff23a6:
	move.w d0,(a4)+
	dbf d7,loc_ff2374
loc_ff23ac:
	move.l a4,($faa0).w
	rts

sub_ff23b2:
	lea ($e400).w,a1
	moveq #$1b,d7
loc_ff23b8:
	tst.w (a1)
	beq.s loc_ff23c4
	adda.w #$40,a1
	dbf d7,loc_ff23b8
loc_ff23c4:
	rts

sub_ff23c6:
	move.b d0,$a(a0)
	moveq #$0,d0
	move.b d0,$b(a0)
	movea.l $6(a0),a6
	move.b $a(a0),d0
	add.w d0,d0
	add.w d0,d0
	movea.l $0(a6,d0.w),a6
	move.b (a6)+,d0
	move.b (a6),$c(a0)
	move.b (a6)+,$d(a0)
	rts

sub_ff23ec:
	tst.w $0(a0)
	beq.s loc_ff23f8
	bsr.s sub_ff240e
	bsr.w sub_ff2310
loc_ff23f8:
	rts

sub_ff23fa:
	tst.w $0(a0)
	beq.s loc_ff240c
	bsr.s sub_ff240e
	move.l ($e30a).w,$a(a0)
	bsr.w sub_ff2310
loc_ff240c:
	rts

sub_ff240e:
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_ff241e(pc,d0.w),d0
	jmp dat_ff241e(pc,d0.w)
dat_ff241e:
	dc.b $00,$0a,$00,$2e,$00,$46,$00,$52
	dc.b $00,$62
	move.w #$8000,$4(a0)
	move.l #$ff2482,$6(a0)
	move.w #$120,$10(a0)
	move.w #$1a0,$14(a0)
	moveq #$0,d0
	jsr sub_ff23c6(pc)
	addq.b #$1,$3(a0)
	subq.w #$8,$14(a0)
	cmpi.w #$f8,$14(a0)
	bne.s loc_ff2462
	addq.b #$1,$3(a0)
	move.b #$78,$e(a0)
loc_ff2462:
	rts
	subq.b #$1,$e(a0)
	bne.s loc_ff246e
	addq.b #$1,$3(a0)
loc_ff246e:
	rts
	subq.w #$8,$14(a0)
	cmpi.w #$60,$14(a0)
	bne.s loc_ff2480
	addq.b #$1,$3(a0)
loc_ff2480:
	rts
	.incbin 1410, 116

sub_ff24f6:
	moveq #$0,d0
	move.b $3(a0),d0
	add.w d0,d0
	move.w dat_ff2506(pc,d0.w),d0
	jmp dat_ff2506(pc,d0.w)
dat_ff2506:
	dc.b $00,$04,$00,$52
	move.w #$0,$4(a0)
	move.l #$ff2576,$6(a0)
	moveq #$0,d0
	jsr sub_ff23c6(pc)
	addq.b #$1,$3(a0)
	bsr.w sub_ff3a00
	move.w d0,d1
	andi.l #$3ffff,d0
	move.l d0,$1c(a0)
	andi.w #$1f,d1
	move.w ($e310).w,$10(a0)
	subi.w #$10,$10(a0)
	add.w d1,$10(a0)
	move.w ($e314).w,$14(a0)
	subi.w #$18,$14(a0)
	move.w #$2d,$e(a0)
	move.l $18(a0),d0
	add.l d0,$10(a0)
	move.l $1c(a0),d0
	add.l d0,$14(a0)
	subq.w #$1,$e(a0)
	bne.s loc_ff2574
	bset.b #$0,$2(a0)
loc_ff2574:
	rts
	.incbin 1654, 126
dat_ff25f4:
	.incbin 1780, 20
dat_ff2608:
	.incbin 1800, 64
dat_ff2648:
	.incbin 1864, 1536
dat_ff2c48:
	.incbin 3400, 2494

sub_ff3606:
	move.b #$1,($fa01).w
	moveq #$7,d6
	moveq #$1,d1
loc_ff3610:
	bsr.s sub_ff362c
	dbf d6,loc_ff3610
	moveq #$7,d6
	moveq #$5,d1
loc_ff361a:
	bsr.s sub_ff362c
	dbf d6,loc_ff361a
	moveq #$7,d6
	moveq #$9,d1
loc_ff3624:
	bsr.s sub_ff362c
	dbf d6,loc_ff3624
	rts

sub_ff362c:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3632:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	addq.w #$2,d2
	cmpi.w #$e,d2
	bls.s loc_ff364c
	moveq #$e,d2
loc_ff364c:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3632
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3b02

sub_ff3664:
	lea ($f900).w,a1
	lea ($f980).w,a2
	move.l #$eee0eee,d1
	moveq #$1f,d7
loc_ff3674:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff3674
	bset.b #$1,($ff0f00).l
	rts

sub_ff3686:
	moveq #$7,d6
	moveq #$e,d0
	moveq #$1,d1
loc_ff368c:
	bsr.w sub_ff36be
	subq.w #$2,d0
	dbf d6,loc_ff368c
	moveq #$7,d6
	moveq #$e,d0
	moveq #$5,d1
loc_ff369c:
	bsr.w sub_ff36be
	subq.w #$2,d0
	dbf d6,loc_ff369c
	moveq #$7,d6
	moveq #$e,d0
	moveq #$9,d1
loc_ff36ac:
	bsr.w sub_ff36be
	subq.w #$2,d0
	dbf d6,loc_ff36ac
	move.b #$0,($fa01).w
	rts

sub_ff36be:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff36c8:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bcc.s loc_ff36e2
	move.w d0,d2
loc_ff36e2:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff36c8
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3b02

sub_ff36fa:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff370c:
	move.l d0,(a2)
	move.w d1,d3
loc_ff3710:
	move.w (a1)+,(a3)
	dbf d3,loc_ff3710
	add.l d4,d0
	dbf d2,loc_ff370c
	rts
	.incbin 6174, 36

sub_ff3742:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3804).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff375e
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $38,$1a
loc_ff375e:
	lea ($d000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff376c
	adda.w #$a,a3
loc_ff376c:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff3830(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff378c
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff378c:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff37d8
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff37b4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff37b4:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff37c2:
	lsr.w #$4,d0
loc_ff37c4:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff37d2
	jmp (a3)
loc_ff37ce:
	moveq #$0,d4
	moveq #$8,d3
loc_ff37d2:
	dbf d0,loc_ff37c4
	bra.s sub_ff378c
loc_ff37d8:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff37e6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff37e6:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff37c2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff37c2
dat_ff3804:
	dc.b $28,$84,$53,$4d,$38,$0d,$66,$c2
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s loc_ff37ce
	rts
	.incbin 6426, 22

sub_ff3830:
	move.b (a0)+,d0
loc_ff3832:
	cmpi.b #$ff,d0
	bne.s loc_ff383a
	rts
loc_ff383a:
	move.w d0,d7
loc_ff383c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff3832
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
	bne.s loc_ff386a
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff383c
loc_ff386a:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff3876:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff3876
	bra.s loc_ff383c
	.incbin 6530, 382

sub_ff3a00:
	move.l ($faa4).w,d1
	bne.s loc_ff3a0c
	move.l #$2a6d365a,d1
loc_ff3a0c:
	move.l d1,d0
	asl.l #$2,d1
	add.l d0,d1
	asl.l #$3,d1
	add.l d0,d1
	move.w d1,d0
	swap d1
	add.w d1,d0
	move.w d0,d1
	swap d1
	move.l d1,($faa4).w
	rts

sub_ff3a26:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff3a2c:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff3a2c
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3aa0
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3a72:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3a72
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff3abc
	move.w #$8134,($ff0f16).l
	rts

sub_ff3aa0:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3ab0:
	btst.b #$0,($a11100).l
	bne.s loc_ff3ab0
	rts

sub_ff3abc:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts

sub_ff3aca:
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
	move.b d0,d1
	move.b (a5),d2
	eor.b d2,d0
	move.b d1,(a5)+
	and.b d1,d0
	move.b d0,(a5)+
	rts

sub_ff3b02:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff3b0e:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff3b0e
	rts
	.incbin 7194, 48
