; SPEEND.MMD
; disassembled from the disc; code only, data comes from data/SPEEND.MMD at build time
	.file "SPEEND.MMD", 16640
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$23,$08,$fd,$08
	dc.b $61,$00,$03,$76
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2014:
	move.l #$0,(a0)+
	dbf d7,loc_ff2014
	lea dat_ff239e(pc),a0
	bsr.w sub_ff3538
	move.l #$74000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff2432(pc),a0
	bsr.w sub_ff35b2
	lea dat_ff2a06(pc),a1
	move.l #$60000003,d0
	moveq #$27,d1
	moveq #$1b,d2
	bsr.w sub_ff32c6
	lea dat_ff218a(pc),a0
	move.w #$0,d0
	bsr.w sub_ff20de
	lea dat_ff2198(pc),a0
	move.w #$2000,d0
	bsr.w sub_ff20de
	lea dat_ff21e2(pc),a0
	move.w #$6000,d0
	bsr.w sub_ff20de
	lea dat_ff23b2(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff208c:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff208c
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff346a
	bsr.w sub_ff38d2
	bsr.w sub_ff348c
loc_ff20a6:
	bsr.w sub_ff38d2
	btst.b #$7,($a1201e).l
	beq.w loc_ff20a6
	bsr.w sub_ff330e
	moveq #$1,d0
	rts
	.incbin 446, 32

sub_ff20de:
	movem.l d0-d7/a0-a6,-(a7)
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.w (a0)+,d7
loc_ff20f0:
	movea.l (a0)+,a1
	move.l (a0)+,d3
	move.l (a0)+,d4
loc_ff20f6:
	moveq #$0,d1
	move.b (a1)+,d1
	cmpi.b #$ff,d1
	beq.s loc_ff2126
	move.l d3,(a2)
	moveq #$0,d2
	move.b dat_ff2130(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	move.l d4,(a2)
	moveq #$0,d2
	move.b dat_ff215d(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	addi.l #$20000,d3
	addi.l #$20000,d4
	bra.s loc_ff20f6
loc_ff2126:
	dbf d7,loc_ff20f0
	movem.l (a7)+,d0-d7/a0-a6
	rts
dat_ff2130:
	.incbin 560, 45
dat_ff215d:
	.incbin 605, 45
dat_ff218a:
	dc.b $00,$00,$00,$ff,$22,$44,$40,$9a
	dc.b $00,$03,$41,$1a,$00,$03
dat_ff2198:
	.incbin 664, 74
dat_ff21e2:
	.incbin 738, 444
dat_ff239e:
	.incbin 1182, 20
dat_ff23b2:
	.incbin 1202, 128
dat_ff2432:
	.incbin 1330, 1492
dat_ff2a06:
	.incbin 2822, 2240

sub_ff32c6:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ff32d8:
	move.l d0,(a2)
	move.w d1,d3
loc_ff32dc:
	move.w (a1)+,(a3)
	dbf d3,loc_ff32dc
	add.l d4,d0
	dbf d2,loc_ff32d8
	rts
	.incbin 5098, 36

sub_ff330e:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff331a:
	bsr.s sub_ff3340
	addq.w #$2,d0
	dbf d6,loc_ff331a
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff3328:
	bsr.s sub_ff3340
	addq.w #$2,d0
	dbf d6,loc_ff3328
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3336:
	bsr.s sub_ff3340
	addq.w #$2,d0
	dbf d6,loc_ff3336
	rts

sub_ff3340:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3346:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff335c
	moveq #$0,d2
loc_ff335c:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3346
	bset.b #$1,($ff0f00).l
	bra.w sub_ff38d2
	.incbin 5236, 246

sub_ff346a:
	lea ($f900).w,a1
	lea ($f980).w,a2
	move.l #$eee0eee,d1
	moveq #$1f,d7
loc_ff347a:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff347a
	bset.b #$1,($ff0f00).l
	rts

sub_ff348c:
	moveq #$7,d6
	moveq #$e,d0
	moveq #$1,d1
loc_ff3492:
	bsr.w sub_ff34c4
	subq.w #$2,d0
	dbf d6,loc_ff3492
	moveq #$7,d6
	moveq #$e,d0
	moveq #$5,d1
loc_ff34a2:
	bsr.w sub_ff34c4
	subq.w #$2,d0
	dbf d6,loc_ff34a2
	moveq #$7,d6
	moveq #$e,d0
	moveq #$9,d1
loc_ff34b2:
	bsr.w sub_ff34c4
	subq.w #$2,d0
	dbf d6,loc_ff34b2
	move.b #$0,($fa00).w
	rts

sub_ff34c4:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff34ce:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bcc.s loc_ff34e8
	move.w d0,d2
loc_ff34e8:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff34ce
	bset.b #$1,($ff0f00).l
	bra.w sub_ff38d2
	.incbin 5632, 56

sub_ff3538:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff353e:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff353e
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3870
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3584:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3584
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff388c
	move.w #$8134,($ff0f16).l
	rts

sub_ff35b2:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3674).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff35ce
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $36,$8a
loc_ff35ce:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff35dc
	adda.w #$a,a3
loc_ff35dc:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff36a0(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff35fc
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff35fc:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff3648
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3624
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3624:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff3632:
	lsr.w #$4,d0
loc_ff3634:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff3642
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff3642:
	dbf d0,loc_ff3634
	bra.s sub_ff35fc
loc_ff3648:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3656
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3656:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff3632
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff3632
dat_ff3674:
	.incbin 6004, 44

sub_ff36a0:
	move.b (a0)+,d0
loc_ff36a2:
	cmpi.b #$ff,d0
	bne.s loc_ff36aa
	rts
loc_ff36aa:
	move.w d0,d7
loc_ff36ac:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff36a2
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
	bne.s loc_ff36da
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff36ac
loc_ff36da:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff36e6:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff36e6
	bra.s loc_ff36ac
	.incbin 6130, 382

sub_ff3870:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3880:
	btst.b #$0,($a11100).l
	bne.s loc_ff3880
	rts

sub_ff388c:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts
	.incbin 6554, 56

sub_ff38d2:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff38de:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff38de
	rts
	.incbin 6634, 5910
	.incbin 12544, 4096
