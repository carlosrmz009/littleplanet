; DUMMY4.MMD
; disassembled from the disc; code only, data comes from data/DUMMY4.MMD at build time
	.file "DUMMY4.MMD", 16640
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	dc.b $21,$fc,$00,$ff,$25,$e8,$fd,$08
	lea ($8000).w,a0
	move.w #$1eff,d7
loc_ff2010:
	move.l #$0,(a0)+
	dbf d7,loc_ff2010
	lea dat_ff2698(pc),a0
	bsr.w sub_ff362a
	move.l #$74000002,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ff272c(pc),a0
	bsr.w sub_ff36a4
	lea dat_ff2d00(pc),a1
	move.l #$60000003,d0
	moveq #$1f,d1
	moveq #$1b,d2
	bsr.w sub_ff2674
	lea dat_ff2194(pc),a0
	move.w #$0,d0
	bsr.w sub_ff20e8
	lea dat_ff21a2(pc),a0
	move.w #$6000,d0
	bsr.w sub_ff20e8
	lea dat_ff26ac(pc),a0
	lea ($f900).w,a1
	moveq #$1f,d7
loc_ff207c:
	move.l (a0)+,(a1)+
	dbf d7,loc_ff207c
	bset.b #$1,($ff0f00).l
	bsr.w sub_ff3466
	bsr.w sub_ff39c4
	bsr.w sub_ff3484
loc_ff2096:
	btst.b #$1,($a1201e).l
	beq.s loc_ff20b8
	addq.w #$2,(dat_ff20e6).l
	cmpi.w #$200,(dat_ff20e6).l
	bcs.s loc_ff20b8
	move.w #$1ff,(dat_ff20e6).l
loc_ff20b8:
	btst.b #$0,($a1201e).l
	beq.s loc_ff20d2
	subq.w #$2,(dat_ff20e6).l
	bpl.s loc_ff20d2
	move.w #$0,(dat_ff20e6).l
loc_ff20d2:
	bsr.w sub_ff39c4
	btst.b #$7,($a1201e).l
	beq.s loc_ff2096
	bsr.w sub_ff3400
	rts
dat_ff20e6:
	dc.b $00,$00

sub_ff20e8:
	movem.l d0-d7/a0-a6,-(a7)
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.w (a0)+,d7
loc_ff20fa:
	movea.l (a0)+,a1
	move.l (a0)+,d3
	move.l (a0)+,d4
loc_ff2100:
	moveq #$0,d1
	move.b (a1)+,d1
	cmpi.b #$ff,d1
	beq.s loc_ff2130
	move.l d3,(a2)
	moveq #$0,d2
	move.b dat_ff213a(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	move.l d4,(a2)
	moveq #$0,d2
	move.b dat_ff2167(pc,d1.w),d2
	add.w d0,d2
	move.w d2,(a3)
	addi.l #$20000,d3
	addi.l #$20000,d4
	bra.s loc_ff2100
loc_ff2130:
	dbf d7,loc_ff20fa
	movem.l (a7)+,d0-d7/a0-a6
	rts
dat_ff213a:
	.incbin 570, 45
dat_ff2167:
	.incbin 615, 45
dat_ff2194:
	dc.b $00,$00,$00,$ff,$22,$f4,$40,$46
	dc.b $00,$03,$40,$86,$00,$03
dat_ff21a2:
	.incbin 674, 1234

sub_ff2674:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$400000,d4
loc_ff2686:
	move.l d0,(a2)
	move.w d1,d3
loc_ff268a:
	move.w (a1)+,(a3)
	dbf d3,loc_ff268a
	add.l d4,d0
	dbf d2,loc_ff2686
	rts
dat_ff2698:
	.incbin 1944, 20
dat_ff26ac:
	.incbin 1964, 128
dat_ff272c:
	.incbin 2092, 1492
dat_ff2d00:
	.incbin 3584, 1792

sub_ff3400:
	move.b #$1,($fa00).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff340c:
	bsr.s sub_ff3432
	addq.w #$2,d0
	dbf d6,loc_ff340c
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff341a:
	bsr.s sub_ff3432
	addq.w #$2,d0
	dbf d6,loc_ff341a
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff3428:
	bsr.s sub_ff3432
	addq.w #$2,d0
	dbf d6,loc_ff3428
	rts

sub_ff3432:
	lea ($f900).w,a1
	moveq #$3f,d7
loc_ff3438:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ff344e
	moveq #$0,d2
loc_ff344e:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff3438
	bset.b #$1,($ff0f00).l
	bra.w sub_ff39c4

sub_ff3466:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$0,d1
	moveq #$1f,d7
loc_ff3472:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ff3472
	bset.b #$1,($ff0f00).l
	rts

sub_ff3484:
	move.w #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ff348c:
	bsr.w sub_ff34c2
	addq.w #$2,d0
	dbf d6,loc_ff348c
	move.w #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ff349e:
	bsr.w sub_ff34c2
	addq.w #$2,d0
	dbf d6,loc_ff349e
	move.w #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ff34b0:
	bsr.w sub_ff34c2
	addq.w #$2,d0
	dbf d6,loc_ff34b0
	move.b #$0,($fa00).w
	rts

sub_ff34c2:
	lea ($f900).w,a1
	lea ($f980).w,a2
	moveq #$3f,d7
loc_ff34cc:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bls.s loc_ff34e6
	move.w d0,d2
loc_ff34e6:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ff34cc
	bset.b #$1,($ff0f00).l
	bra.w sub_ff39c4
	.incbin 5630, 300

sub_ff362a:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff3630:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff3630
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3962
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3676:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3676
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff397e
	move.w #$8134,($ff0f16).l
	rts

sub_ff36a4:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3766).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff36c0
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $37,$7c
loc_ff36c0:
	lea ($c000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff36ce
	adda.w #$a,a3
loc_ff36ce:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff3792(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff36ee
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff36ee:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff373a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3716
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3716:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff3724:
	lsr.w #$4,d0
loc_ff3726:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff3734
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff3734:
	dbf d0,loc_ff3726
	bra.s sub_ff36ee
loc_ff373a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3748
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3748:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff3724
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff3724
dat_ff3766:
	.incbin 6246, 44

sub_ff3792:
	move.b (a0)+,d0
loc_ff3794:
	cmpi.b #$ff,d0
	bne.s loc_ff379c
	rts
loc_ff379c:
	move.w d0,d7
loc_ff379e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff3794
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
	bne.s loc_ff37cc
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff379e
loc_ff37cc:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff37d8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff37d8
	bra.s loc_ff379e
	.incbin 6372, 382

sub_ff3962:
	move.w sr,($fa46).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3972:
	btst.b #$0,($a11100).l
	bne.s loc_ff3972
	rts

sub_ff397e:
	move.w #$0,($a11100).l
	move.w ($fa46).w,sr
	rts
	.incbin 6796, 56

sub_ff39c4:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff39d0:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff39d0
	rts
	.incbin 6876, 5668
	.incbin 12544, 4096
