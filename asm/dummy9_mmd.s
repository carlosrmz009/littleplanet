; DUMMY9.MMD
; disassembled from the disc; code only, data comes from data/DUMMY9.MMD at build time
	.file "DUMMY9.MMD", 16640
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$24,$44,$fd,$08
	dc.b $61,$00,$04,$b2
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2014:
	move.l #$0,(a0)+
	dbf d7,loc_ff2014
	lea dat_ff24da(pc),a0
	bsr.w sub_ff3734
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff262e(pc),a0
	bsr.w sub_ff37ae
	lea dat_ff2c02(pc),a1
	move.l #$60000003,d0
	moveq #$27,d1
	moveq #$1b,d2
	bsr.w sub_ff34c2
	bsr.w sub_ff2310
	lea dat_ff24ee(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff206c:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff206c
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff3570
	bsr.w sub_ff3ace
	bsr.w sub_ff358e
loc_ff2086:
	addq.w #$1,(dat_ff2292).l
	addq.w #$1,(dat_ff2294).l
	addq.w #$1,(dat_ff2296).l
	addq.w #$1,(dat_ff2298).l
	lea dat_ff229a(pc),a1
	moveq #$0,d6
	moveq #$2,d7
	move.w (dat_ff2292).l,d0
	andi.w #$7,d0
	bne.s loc_ff20ce
	btst.b #$2,($a1201e).l
	beq.s loc_ff20c0
	bsr.w sub_ff36fc
loc_ff20c0:
	btst.b #$3,($a1201e).l
	beq.s loc_ff20ce
	bsr.w sub_ff370a
loc_ff20ce:
	bsr.w sub_ff22e8
	bsr.w sub_ff238e
	bsr.w sub_ff23a8
	bsr.w sub_ff23c2
	move.w (dat_ff229a).l,d0
	add.w d0,d0
	move.w dat_ff2154(pc,d0.w),d0
	jsr dat_ff2154(pc,d0.w)
	bsr.w sub_ff3ace
	btst.b #$7,($a1201e).l
	beq.w loc_ff2086
	move.w #$74,d0
	bsr.w sub_ff22a2
	bsr.w sub_ff3ace
	move.w #$83,d0
	bsr.w sub_ff22a2
	bsr.w sub_ff3ace
	cmpi.w #$7,(dat_ff229c).l
	bne.s loc_ff214c
	cmpi.w #$7,(dat_ff229e).l
	bne.s loc_ff214c
	cmpi.w #$7,(dat_ff22a0).l
	bne.s loc_ff214c
	bsr.w sub_ff3a6c
	move.b #$c8,($a01c0a).l
	bsr.w sub_ff3a88
	bsr.w sub_ff3608
	moveq #$1,d0
	rts
loc_ff214c:
	bsr.w sub_ff350a
	moveq #$0,d0
	rts
dat_ff2154:
	.incbin 596, 318
dat_ff2292:
	dc.b $00,$00
dat_ff2294:
	dc.b $00,$02
dat_ff2296:
	dc.b $00,$04
dat_ff2298:
	dc.b $00,$06
dat_ff229a:
	dc.b $00,$00
dat_ff229c:
	dc.b $00,$00
dat_ff229e:
	dc.b $00,$00
dat_ff22a0:
	dc.b $00,$00

sub_ff22a2:
	move.w d0,($a12010).l
loc_ff22a8:
	tst.w ($a12020).l
	beq.s loc_ff22a8
	move.w #$0,($a12010).l
loc_ff22b8:
	tst.w ($a12020).l
	bne.s loc_ff22b8
	rts
	.incbin 962, 38

sub_ff22e8:
	bsr.w sub_ff2322
	bsr.w sub_ff2346
	bsr.w sub_ff236a
	cmpi.w #$0,(dat_ff229a).l
	beq.w loc_ff2334
	cmpi.w #$1,(dat_ff229a).l
	beq.w loc_ff2358
	bra.w loc_ff237c

sub_ff2310:
	lea dat_ff256e(pc),a1
	move.l #$439e0003,d0
	moveq #$9,d1
	moveq #$1,d2
	bra.w sub_ff34c2

sub_ff2322:
	lea dat_ff2596(pc),a1
	move.l #$458a0003,d0
	moveq #$5,d1
	moveq #$1,d2
	bra.w sub_ff34c2
loc_ff2334:
	lea dat_ff25ae(pc),a1
	move.l #$458a0003,d0
	moveq #$5,d1
	moveq #$1,d2
	bra.w sub_ff34c2

sub_ff2346:
	lea dat_ff25c6(pc),a1
	move.l #$459e0003,d0
	moveq #$6,d1
	moveq #$1,d2
	bra.w sub_ff34c2
loc_ff2358:
	lea dat_ff25e2(pc),a1
	move.l #$459e0003,d0
	moveq #$6,d1
	moveq #$1,d2
	bra.w sub_ff34c2

sub_ff236a:
	lea dat_ff25fe(pc),a1
	move.l #$45b40003,d0
	moveq #$5,d1
	moveq #$1,d2
	bra.w sub_ff34c2
loc_ff237c:
	lea dat_ff2616(pc),a1
	move.l #$45b40003,d0
	moveq #$5,d1
	moveq #$1,d2
	bra.w sub_ff34c2

sub_ff238e:
	lea dat_ff2418(pc),a1
	move.l #$45960003,d4
	move.l #$46160003,d5
	move.w (dat_ff229c).l,d0
	moveq #$1,d1
	bra.s loc_ff23da

sub_ff23a8:
	lea dat_ff2418(pc),a1
	move.l #$45ac0003,d4
	move.l #$462c0003,d5
	move.w (dat_ff229e).l,d0
	moveq #$1,d1
	bra.s loc_ff23da

sub_ff23c2:
	lea dat_ff2418(pc),a1
	move.l #$45c00003,d4
	move.l #$46400003,d5
	move.w (dat_ff22a0).l,d0
	moveq #$1,d1
loc_ff23da:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
loc_ff23e6:
	move.l d4,(a2)
	moveq #$0,d2
	move.w (a1)+,d3
loc_ff23ec:
	sub.w d3,d0
	bcs.s loc_ff23f4
	addq.w #$1,d2
	bra.s loc_ff23ec
loc_ff23f4:
	add.w d3,d0
	add.w d2,d2
	move.w dat_ff241c(pc,d2.w),(a3)
	move.l d5,(a2)
	move.w dat_ff2430(pc,d2.w),(a3)
	addi.l #$20000,d4
	addi.l #$20000,d5
	dbf d1,loc_ff23e6
	rts
	dc.b $03,$e8,$00,$64
dat_ff2418:
	dc.b $00,$0a,$00,$01
dat_ff241c:
	.incbin 1308, 20
dat_ff2430:
	.incbin 1328, 170
dat_ff24da:
	.incbin 1498, 20
dat_ff24ee:
	.incbin 1518, 128
dat_ff256e:
	.incbin 1646, 40
dat_ff2596:
	.incbin 1686, 24
dat_ff25ae:
	.incbin 1710, 24
dat_ff25c6:
	.incbin 1734, 28
dat_ff25e2:
	.incbin 1762, 28
dat_ff25fe:
	.incbin 1790, 24
dat_ff2616:
	.incbin 1814, 24
dat_ff262e:
	.incbin 1838, 1492
dat_ff2c02:
	.incbin 3330, 2240

sub_ff34c2:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff34d4:
	move.l d0,(a2)
	move.w d1,d3
loc_ff34d8:
	move.w (a1)+,(a3)
	dbf d3,loc_ff34d8
	add.l d4,d0
	dbf d2,loc_ff34d4
	rts
	.incbin 5606, 36

sub_ff350a:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff3516:
	bsr.s sub_ff353c
	addq.w #$2,d0
	dbf d6,loc_ff3516
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff3524:
	bsr.s sub_ff353c
	addq.w #$2,d0
	dbf d6,loc_ff3524
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3532:
	bsr.s sub_ff353c
	addq.w #$2,d0
	dbf d6,loc_ff3532
	rts

sub_ff353c:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3542:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff3558
	moveq #$0,d2
loc_ff3558:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3542
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3ace

sub_ff3570:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$0,d1
	moveq #$1f,d7
loc_ff357c:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff357c
	bset.b #$1,($ff0f00).l
	rts

sub_ff358e:
	move.w #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3596:
	bsr.w sub_ff35cc
	addq.w #$2,d0
	dbf d6,loc_ff3596
	move.w #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff35a8:
	bsr.w sub_ff35cc
	addq.w #$2,d0
	dbf d6,loc_ff35a8
	move.w #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff35ba:
	bsr.w sub_ff35cc
	addq.w #$2,d0
	dbf d6,loc_ff35ba
	move.b #$0,($fa00).w
	rts

sub_ff35cc:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff35d6:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bls.s loc_ff35f0
	move.w d0,d2
loc_ff35f0:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff35d6
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3ace

sub_ff3608:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$1,d1
loc_ff3612:
	bsr.s sub_ff362e
	dbf d6,loc_ff3612
	moveq #$7,d6
	moveq #$5,d1
loc_ff361c:
	bsr.s sub_ff362e
	dbf d6,loc_ff361c
	moveq #$7,d6
	moveq #$9,d1
loc_ff3626:
	bsr.s sub_ff362e
	dbf d6,loc_ff3626
	rts

sub_ff362e:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3634:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	addq.w #$2,d2
	cmpi.w #$e,d2
	bls.s loc_ff364e
	moveq #$e,d2
loc_ff364e:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3634
	bset.b #$1,($ff0f00).l
	bra.w sub_ff3ace
	.incbin 5990, 150

sub_ff36fc:
	move.w (a1),d0
	subq.w #$1,d0
	cmp.w d6,d0
	bge.s loc_ff3706
	move.w d7,d0
loc_ff3706:
	move.w d0,(a1)
	rts

sub_ff370a:
	move.w (a1),d0
	addq.w #$1,d0
	cmp.w d7,d0
	bls.s loc_ff3714
	move.w d6,d0
loc_ff3714:
	move.w d0,(a1)
	rts
	.incbin 6168, 28

sub_ff3734:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff373a:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff373a
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3a6c
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3780:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3780
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff3a88
	move.w #$8134,($ff0f16).l
	rts

sub_ff37ae:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3870).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff37ca
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $38,$86
loc_ff37ca:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff37d8
	adda.w #$a,a3
loc_ff37d8:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff389c(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff37f8
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff37f8:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff3844
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3820
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3820:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff382e:
	lsr.w #$4,d0
loc_ff3830:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff383e
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff383e:
	dbf d0,loc_ff3830
	bra.s sub_ff37f8
loc_ff3844:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3852
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3852:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff382e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff382e
dat_ff3870:
	.incbin 6512, 44

sub_ff389c:
	move.b (a0)+,d0
loc_ff389e:
	cmpi.b #$ff,d0
	bne.s loc_ff38a6
	rts
loc_ff38a6:
	move.w d0,d7
loc_ff38a8:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff389e
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
	bne.s loc_ff38d6
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff38a8
loc_ff38d6:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff38e2:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff38e2
	bra.s loc_ff38a8
	.incbin 6638, 382

sub_ff3a6c:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3a7c:
	btst.b #$0,($a11100).l
	bne.s loc_ff3a7c
	rts

sub_ff3a88:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts
	.incbin 7062, 56

sub_ff3ace:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff3ada:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff3ada
	rts
	.incbin 7142, 9498
