; ENDING.MMD
; disassembled from the disc; code only, data comes from data/ENDING.MMD at build time
	.file "ENDING.MMD", 44036
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	jmp (loc_ff2020).l
	.incbin 262, 26
loc_ff2020:
	clr.w ($fa40).w
	bclr.b #$1,($a1200e).l
	move.l #$ff282e,($fffd08).l
	move.b #$0,($a1200e).l
	bsr.w sub_ff25cc
	bsr.w sub_ff25f2
	lea ($c00000).l,a5
	lea $4(a5),a4
	move.l #$64000003,($c00004).l
	move.l #$2000200,(a5)
	lea ($8000).w,a0
	move.w #$fff,d7
loc_ff2068:
	clr.l (a0)+
	dbf d7,loc_ff2068
	bsr.w sub_ff25be
	bsr.w sub_ff2582
	bsr.w sub_ff27ee
	move.w #$0,($a12012).l
	bset.b #$1,($a1200e).l
	clr.w ($c088).w
	clr.w ($c094).w
	bset.b #$6,($fa47).w
	move.w ($fa46).w,($c00004).l
loc_ff20a0:
	btst.b #$7,($a1200f).l
	bne.s loc_ff20a0
	btst.b #$7,($a1200f).l
	bne.s loc_ff20a0
	btst.b #$7,($a1200f).l
	bne.s loc_ff20a0
	bclr.b #$1,($a1200e).l
	bclr.b #$4,($a1200e).l
	bsr.w sub_ff2784
	clr.w ($fa40).w
	move.w #$4,($c086).w
loc_ff20dc:
	moveq #$0,d0
	move.w ($c086).w,d0
	lea dat_ff2194(pc),a1
	adda.w $0(a1,d0.w),a1
	jsr (a1)
	bsr.w sub_ff2186
	btst.b #$1,($a1200f).l
	beq.s loc_ff20dc
	btst.b #$1,($a1200f).l
	beq.s loc_ff20dc
	btst.b #$1,($a1200f).l
	beq.s loc_ff20dc
	move.l #$c0000000,($c00004).l
	moveq #$0,d0
	moveq #$f,d7
loc_ff211c:
	move.w d0,(a5)
	dbf d7,loc_ff211c
	bsr.s sub_ff214e
	clr.b ($a1200e).l
	lea (dat_ffb200).l,a1
	movea.l a1,a2
	moveq #$0,d0
	moveq #$3f,d7
loc_ff2136:
	move.l d0,(a1)+
	dbf d7,loc_ff2136
	move.w #$46a,$56(a2)
	move.w #$ee,$5e(a2)
	jmp (loc_ffc100).l

sub_ff214e:
	clr.w ($fa40).w
	move.w #$3c,d1
loc_ff2156:
	bsr.w sub_ff2186
	dbf d1,loc_ff2156
	bset.b #$4,($a1200e).l
loc_ff2166:
	btst.b #$1,($a1200f).l
	bne.s loc_ff2166
	btst.b #$1,($a1200f).l
	bne.s loc_ff2166
	btst.b #$1,($a1200f).l
	bne.s loc_ff2166
	rts

sub_ff2186:
	move.b #$1,($fa00).w
loc_ff218c:
	tst.b ($fa00).w
	bne.s loc_ff218c
	rts
dat_ff2194:
	.incbin 660, 1006

sub_ff2582:
	moveq #$10,d4
	move.l #$46080003,d0
	move.w #$1f,d1
	move.w #$d,d2
	bsr.s sub_ff25a6
	move.w #$1d0,d4
	move.l #$46880003,d0
	move.w #$1f,d1
	move.w #$d,d2

sub_ff25a6:
	move.l d0,(a4)
	move.l d1,d3
loc_ff25aa:
	move.w d4,(a5)
	addq.w #$1,d4
	dbf d3,loc_ff25aa
	addi.l #$1000000,d0
	dbf d2,sub_ff25a6
	rts

sub_ff25be:
	moveq #$1f,d7
	lea ($c000).w,a1
loc_ff25c4:
	clr.l (a1)+
	dbf d7,loc_ff25c4
	rts

sub_ff25cc:
	btst.b #$2,($a12003).l
	beq.s sub_ff25cc
	rts
	.incbin 1752, 26

sub_ff25f2:
	lea dat_ff2720(pc),a1
	jsr ($2b0).w
	move.w #$100,($a11100).l
loc_ff2602:
	btst.b #$0,($a11100).l
	bne.s loc_ff2602
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff262e:
	btst.b #$1,$1(a6)
	bne.s loc_ff262e
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$fff,d7
loc_ff2656:
	move.w #$e7e1,($c00000).l
	dbf d7,loc_ff2656
	move.l #$c0000000,($c00004).l
	lea dat_ff26a0(pc),a0
	moveq #$1f,d7
loc_ff2672:
	move.l (a0)+,($c00000).l
	dbf d7,loc_ff2672
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	move.w #$0,($a11100).l
	move.w #$8134,($fa46).w
	rts
dat_ff26a0:
	.incbin 1952, 128
dat_ff2720:
	.incbin 2080, 100

sub_ff2784:
	btst.b #$1,($a1200f).l
	bne.s loc_ff27ec
	btst.b #$0,($a1200f).l
	beq.s sub_ff2784
	btst.b #$0,($a1200f).l
	beq.s sub_ff2784
	btst.b #$0,($a1200f).l
	beq.s sub_ff2784
	btst.b #$2,($a1200e).l
	bne.s sub_ff2784
	bclr.b #$1,($a12003).l
	bset.b #$0,($a1200e).l
loc_ff27c6:
	btst.b #$1,($a12003).l
	bne.s loc_ff27c6
	btst.b #$1,($a12003).l
	bne.s loc_ff27c6
	btst.b #$1,($a12003).l
	bne.s loc_ff27c6
	bclr.b #$0,($a1200e).l
loc_ff27ec:
	rts

sub_ff27ee:
	lea ($c00000).l,a6
	move.l #$40000000,($c00004).l
	moveq #$0,d0
	moveq #$7,d7
loc_ff2802:
	move.l d0,(a6)
	dbf d7,loc_ff2802
	move.l #$60000002,d0
	move.w #$27,d1
	move.w #$1b,d2
loc_ff2816:
	move.l d0,(a4)
	move.l d1,d3
loc_ff281a:
	move.w #$0,(a5)
	dbf d3,loc_ff281a
	addi.l #$1000000,d0
	dbf d2,loc_ff2816
	rts
	.incbin 2350, 35282
dat_ffb200:
	.incbin 37632, 3840
loc_ffc100:
	move.l #$ffc1aa,($fd08).w
	bsr.w sub_ffc2b6
	lea dat_ffc222(pc),a0
	bsr.w sub_ffc4a8
	move.l #$64000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$40000000,($c00004).l
	lea dat_ffc89a(pc),a0
	bsr.w sub_ffc522
	lea dat_ffca8c(pc),a1
	move.l #$45940003,d0
	moveq #$13,d1
	moveq #$2,d2
	bsr.w sub_ffc186
	lea dat_ffc236(pc),a0
	lea ($b200).w,a1
	moveq #$1f,d7
loc_ffc156:
	move.l (a0)+,(a1)+
	dbf d7,loc_ffc156
	bset.b #$1,($ff0f00).l
	bsr.w sub_ffc31c
	bsr.w sub_ffc842
	bsr.w sub_ffc33a
loc_ffc170:
	bsr.w sub_ffc842
	btst.b #$7,($a1201e).l
	beq.w loc_ffc170
	bsr.w sub_ffc2b6
	rts

sub_ffc186:
	lea ($c00004).l,a2
	lea ($c00000).l,a3
	move.l #$800000,d4
loc_ffc198:
	move.l d0,(a2)
	move.w d1,d3
loc_ffc19c:
	move.w (a1)+,(a3)
	dbf d3,loc_ffc19c
	add.l d4,d0
	dbf d2,loc_ffc198
	rts
	.incbin 41642, 120
dat_ffc222:
	.incbin 41762, 20
dat_ffc236:
	.incbin 41782, 128

sub_ffc2b6:
	move.b #$1,($b300).w
	moveq #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ffc2c2:
	bsr.s sub_ffc2e8
	addq.w #$2,d0
	dbf d6,loc_ffc2c2
	moveq #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ffc2d0:
	bsr.s sub_ffc2e8
	addq.w #$2,d0
	dbf d6,loc_ffc2d0
	moveq #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ffc2de:
	bsr.s sub_ffc2e8
	addq.w #$2,d0
	dbf d6,loc_ffc2de
	rts

sub_ffc2e8:
	lea ($b200).w,a1
	moveq #$3f,d7
loc_ffc2ee:
	move.w (a1),d2
	rol.w #$1,d2
	ror.w d1,d2
	move.w d2,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	sub.w d0,d2
	bcc.s loc_ffc304
	moveq #$0,d2
loc_ffc304:
	or.w d3,d2
	ror.w #$1,d2
	rol.w d1,d2
	move.w d2,(a1)+
	dbf d7,loc_ffc2ee
	bset.b #$1,($ff0f00).l
	bra.w sub_ffc842

sub_ffc31c:
	lea ($b200).w,a1
	lea ($b280).w,a2
	moveq #$0,d1
	moveq #$1f,d7
loc_ffc328:
	move.l (a1),(a2)+
	move.l d1,(a1)+
	dbf d7,loc_ffc328
	bset.b #$1,($ff0f00).l
	rts

sub_ffc33a:
	move.w #$7,d6
	moveq #$0,d0
	moveq #$9,d1
loc_ffc342:
	bsr.w sub_ffc378
	addq.w #$2,d0
	dbf d6,loc_ffc342
	move.w #$7,d6
	moveq #$0,d0
	moveq #$5,d1
loc_ffc354:
	bsr.w sub_ffc378
	addq.w #$2,d0
	dbf d6,loc_ffc354
	move.w #$7,d6
	moveq #$0,d0
	moveq #$1,d1
loc_ffc366:
	bsr.w sub_ffc378
	addq.w #$2,d0
	dbf d6,loc_ffc366
	move.b #$0,($b300).w
	rts

sub_ffc378:
	lea ($b200).w,a1
	lea ($b280).w,a2
	moveq #$3f,d7
loc_ffc382:
	move.w (a2)+,d2
	move.w (a1),d3
	rol.w #$1,d2
	rol.w #$1,d3
	ror.w d1,d2
	ror.w d1,d3
	andi.w #$e,d2
	andi.w #$eee0,d3
	cmp.w d0,d2
	bls.s loc_ffc39c
	move.w d0,d2
loc_ffc39c:
	or.w d3,d2
	rol.w d1,d2
	ror.w #$1,d2
	move.w d2,(a1)+
	dbf d7,loc_ffc382
	bset.b #$1,($ff0f00).l
	bra.w sub_ffc842
	.incbin 42164, 244

sub_ffc4a8:
	move.w #$8000,d0
	moveq #$12,d7
loc_ffc4ae:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ffc4ae
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ffc7e0
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ffc4f4:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ffc4f4
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ffc7fc
	move.w #$8134,($ff0f16).l
	rts

sub_ffc522:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ffc5e4).l,a3
	lea ($c00000).l,a4
	bra.s loc_ffc53e
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $c5,$fa
loc_ffc53e:
	lea ($b000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ffc54c
	adda.w #$a,a3
loc_ffc54c:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ffc610(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ffc56c
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ffc56c:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ffc5b8
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ffc594
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ffc594:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ffc5a2:
	lsr.w #$4,d0
loc_ffc5a4:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ffc5b2
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ffc5b2:
	dbf d0,loc_ffc5a4
	bra.s sub_ffc56c
loc_ffc5b8:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ffc5c6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ffc5c6:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ffc5a2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ffc5a2
dat_ffc5e4:
	.incbin 42724, 44

sub_ffc610:
	move.b (a0)+,d0
loc_ffc612:
	cmpi.b #$ff,d0
	bne.s loc_ffc61a
	rts
loc_ffc61a:
	move.w d0,d7
loc_ffc61c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ffc612
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
	bne.s loc_ffc64a
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ffc61c
loc_ffc64a:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ffc656:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ffc656
	bra.s loc_ffc61c
	.incbin 42850, 382

sub_ffc7e0:
	move.w sr,($b346).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ffc7f0:
	btst.b #$0,($a11100).l
	bne.s loc_ffc7f0
	rts

sub_ffc7fc:
	move.w #$0,($a11100).l
	move.w ($b346).w,sr
	rts
	.incbin 43274, 56

sub_ffc842:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ffc84e:
	btst.b #$0,($ff0f00).l
	bne.s loc_ffc84e
	rts
	.incbin 43354, 64
dat_ffc89a:
	.incbin 43418, 498
dat_ffca8c:
	.incbin 43916, 120
