; BRAMINIT.MMD
; disassembled from the disc; code only, data comes from data/BRAMINIT.MMD at build time
	.file "BRAMINIT.MMD", 10250
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	move.l #loc_ff218c,($fd08).w
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	bsr.w sub_ff223e
	bsr.w sub_ff221e
	bsr.w sub_ff224a
	lea ($a000).w,a0
	move.w #$16ff,d7
loc_ff2036:
	move.l #$0,(a0)+
	dbf d7,loc_ff2036
	move.w #$0,($cd02).w
	bsr.w sub_ff377a
	cmpi.w #$ffff,d0
	beq.w loc_ff20b8
	cmpi.w #$fffe,d0
	beq.w loc_ff20c2
	bsr.w sub_ff3714
	bsr.w sub_ff3960
	bne.s loc_ff207c
	bsr.w sub_ff3972
	bne.w loc_ff20ae
	move.b #$0,($ff0f1f).l
	bsr.w sub_ff36cc
	bra.w loc_ff20a6
loc_ff207c:
	bsr.w sub_ff36d0
	bsr.w sub_ff3996
	beq.s loc_ff209a
	move.b #$1,($ff0f1f).l
	bsr.w sub_ff36c8
	bsr.w sub_ff39c4
	bra.w loc_ff20cc
loc_ff209a:
	move.b #$0,($ff0f1f).l
	bsr.w sub_ff36c8
loc_ff20a6:
	bsr.w sub_ff2152
	moveq #$0,d0
	rts
loc_ff20ae:
	moveq #$0,d0
	bsr.w sub_ff20ee
	bra.w loc_ff20ea
loc_ff20b8:
	moveq #$1,d0
	bsr.w sub_ff20ee
	bra.w loc_ff20ea
loc_ff20c2:
	moveq #$2,d0
	bsr.w sub_ff20ee
	bra.w loc_ff20ea
loc_ff20cc:
	moveq #$3,d0
	bsr.w sub_ff20ee
loc_ff20d2:
	move.b ($a1201f).l,d0
	andi.b #$f0,($a1201f).l
	beq.s loc_ff20d2
	bsr.w sub_ff2152
	moveq #$1,d0
	rts
loc_ff20ea:
	bra.w loc_ff20ea

sub_ff20ee:
	move.l d0,-(a7)
	bsr.w sub_ff2256
	bclr.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	move.l #$7c000002,($c00004).l
	lea ($c00000).l,a6
	moveq #$0,d0
	move.l d0,(a6)
	move.l d0,(a6)
	move.l #$102,d0
	jsr (sub_ff39fa).l
	move.l (a7)+,d0
	add.w d0,d0
	move.l d0,-(a7)
	jsr (sub_ff3b7a).l
	move.l (a7)+,d0
	addq.w #$1,d0
	jsr (sub_ff3b7a).l
	bset.b #$6,($ff0f17).l
	move.w ($ff0f16).l,($c00004).l
	rts

sub_ff2152:
	nop
	bset.b #$7,($a1200e).l
loc_ff215c:
	bsr.w sub_ff221e
	btst.b #$7,($a1200f).l
	beq.s loc_ff215c
	moveq #$0,d0
	move.l d0,($a12010).l
	move.l d0,($a12014).l
	move.l d0,($a12018).l
	move.l d0,($a1201c).l
	move.b d0,($a1200e).l
	rts
loc_ff218c:
	movem.l d0-d7/a0-a6,-(a7)
	move.b #$1,($a12000).l
	tst.b ($cd00).w
	beq.w loc_ff21e8
	move.b #$0,($cd00).w
	lea ($c00004).l,a1
	lea ($c00000).l,a2
	move.w (a1),d0
	jsr sub_ff23dc(pc)
	move.w ($cd02).w,d0
	add.w d0,d0
	move.w dat_ff21c6(pc,d0.w),d0
	jmp dat_ff21c6(pc,d0.w)
dat_ff21c6:
	.incbin 710, 34
loc_ff21e8:
	addq.l #$1,($cd0a).w
	move.b ($cd03).w,($cd0a).w
	jsr sub_ff2402(pc)
	movem.l (a7)+,d0-d7/a0-a6
	rte
	.incbin 764, 34

sub_ff221e:
	bset.b #$1,($a12003).l
	btst.b #$1,($a12003).l
	beq.s sub_ff221e
	rts

sub_ff2232:
	btst.b #$0,($a12003).l
	beq.s sub_ff2232
	rts

sub_ff223e:
	btst.b #$7,($a1200f).l
	beq.s sub_ff223e
	rts

sub_ff224a:
	btst.b #$7,($a1200f).l
	bne.s sub_ff224a
	rts

sub_ff2256:
	lea dat_ff23c8(pc),a0
	move.w #$8000,d0
	moveq #$12,d7
loc_ff2260:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff2260
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff23dc
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff22b2:
	btst.b #$1,$1(a6)
	bne.s loc_ff22b2
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$7ff,d7
loc_ff22da:
	move.w #$0,($c00000).l
	dbf d7,loc_ff22da
	move.l #$60000003,($c00004).l
	move.w #$7ff,d7
loc_ff22f4:
	move.w #$0,($c00000).l
	dbf d7,loc_ff22f4
	move.l #$c0000000,($c00004).l
	lea dat_ff2348(pc),a0
	moveq #$1f,d7
loc_ff2310:
	move.l (a0)+,($c00000).l
	dbf d7,loc_ff2310
	move.l #$40000010,($c00004).l
	moveq #$13,d0
loc_ff2326:
	move.w #$0,($c00000).l
	move.w #$0,($c00000).l
	dbf d0,loc_ff2326
	bsr.w sub_ff23f4
	move.w #$8134,($ff0f16).l
	rts
dat_ff2348:
	.incbin 1096, 128
dat_ff23c8:
	.incbin 1224, 20

sub_ff23dc:
	move.w sr,($cd08).w
	move.w #$100,($a11100).l
loc_ff23e8:
	btst.b #$0,($a11100).l
	bne.s loc_ff23e8
	rts

sub_ff23f4:
	move.w #$0,($a11100).l
	move.w ($cd08).w,sr
	rts

sub_ff2402:
	lea ($a1201e).l,a0
	lea ($a10003).l,a1
	move.b #$0,(a1)
	tst.w (a0)
	move.b (a1),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a1)
	tst.w (a0)
	move.b (a1),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	move.b d0,d1
	move.b (a0),d2
	eor.b d2,d0
	move.b d1,(a0)+
	and.b d1,d0
	move.b d0,(a0)+
	rts
	.incbin 1338, 462

sub_ff2608:
	moveq #$0,d0
	move.b ($200020).l,d0
	beq.s loc_ff2652
	subq.w #$1,d0
	cmpi.w #$9,d0
	bcc.s loc_ff2638
	add.w d0,d0
	lea (dat_ff2654).l,a0
	move.w $0(a0,d0.w),d0
	moveq #$0,d1
	jsr $0(a0,d0.w)
	bcs.s loc_ff2638
	move.b #$0,($200021).l
	bra.s loc_ff2640
loc_ff2638:
	move.b #$ff,($200021).l
loc_ff2640:
	move.w d0,($200022).l
	move.w d1,($200024).l
	clr.b ($200020).l
loc_ff2652:
	rts
dat_ff2654:
	.incbin 1876, 3460
dat_ff33d8:
	.incbin 5336, 676
dat_ff367c:
	.incbin 6012, 46

sub_ff36aa:
	tst.b ($200026).l
	rts
	.incbin 6066, 22

sub_ff36c8:
	bra.w loc_ff39b0

sub_ff36cc:
	bra.w loc_ff3984

sub_ff36d0:
	jsr (sub_ff2232).l
	lea (dat_ff33d8).l,a0
	lea ($200040).l,a1
	move.w #$a8,d0
loc_ff36e6:
	move.l (a0)+,(a1)+
	dbf d0,loc_ff36e6
	lea (dat_ff367c).l,a0
	lea ($2002e4).l,a1
	move.w #$6,d0
loc_ff36fc:
	move.l (a0)+,(a1)+
	dbf d0,loc_ff36fc
	move.b #$0,($200029).l
	move.w #$b,($20002a).l
	rts

sub_ff3714:
	move.b #$0,($200029).l
	move.w #$b,($20002a).l
	lea (dat_ff372c).l,a0
	bra.s loc_ff3738
dat_ff372c:
	dc.b $53,$4f,$4e,$49,$43,$43,$44,$5f
	dc.b $5f,$5f,$5f,$00
loc_ff3738:
	movem.l a0-a1,-(a7)
	movea.l #$200030,a1
	move.l (a0)+,(a1)+
	move.l (a0)+,(a1)+
	move.w (a0)+,(a1)+
	move.b (a0)+,(a1)+
	movem.l (a7)+,a0-a1
	rts

sub_ff3750:
	bsr.w sub_ff36aa
	bne.s loc_ff376e
	move.b ($ff0f1f).l,($200028).l
	jsr (sub_ff221e).l
	jsr (sub_ff2232).l
	bra.s loc_ff3772
loc_ff376e:
	bsr.w sub_ff2608
loc_ff3772:
	tst.b ($200021).l
	rts

sub_ff377a:
	jsr (sub_ff2232).l
	bsr.w sub_ff3804
	bne.w loc_ff37aa
	move.b #$1,($200026).l
	move.b #$1,($200020).l
	bsr.s sub_ff3750
	tst.b ($200021).l
	beq.s loc_ff37b4
	tst.w ($200024).l
	bne.s loc_ff37fe
loc_ff37aa:
	move.b #$0,($200027).l
	bra.s loc_ff37c0
loc_ff37b4:
	bsr.w sub_ff394e
	move.b #$1,($200027).l
loc_ff37c0:
	move.b #$0,($200026).l
	move.b #$1,($200020).l
	bsr.w sub_ff3750
	tst.b ($200021).l
	bne.s loc_ff37f8
	bsr.w sub_ff394e
	tst.b ($200027).l
	beq.s loc_ff37ee
	move.w #$0,d0
	rts
loc_ff37ee:
	move.w #$1,d0
	move.w #$0,d1
	rts
loc_ff37f8:
	move.w #$ffff,d0
	rts
loc_ff37fe:
	move.w #$fffe,d0
	rts

sub_ff3804:
	btst.b #$7,($400001).l
	beq.s loc_ff3834
	lea ($400010).l,a0
	lea (dat_ff3904).l,a1
	moveq #$2,d0
loc_ff381c:
	cmpm.l (a0)+,(a1)+
	bne.s loc_ff3834
	dbf d0,loc_ff381c
	movea.l #$fffffdae,a0
	jsr ($400020).l
	bra.w loc_ff38f8
loc_ff3834:
	btst.b #$7,($400001).l
	bne.w loc_ff3900
	move.b ($400001).l,d0
	andi.l #$7,d0
	move.l #$2000,d1
	lsl.l d0,d1
	lsl.l #$1,d1
	lea ($5fff80).l,a2
	adda.l d1,a2
	movea.l a2,a0
	adda.w #$60,a0
	lea (dat_ff3904).l,a1
	movep.l $1(a0),d1
	cmp.l (a1),d1
	bne.w loc_ff38be
	movep.l $9(a0),d1
	cmp.l $4(a1),d1
	bne.w loc_ff38be
	movep.l $11(a0),d1
	cmp.l $8(a1),d1
	bne.w loc_ff38be
	movea.l a2,a0
	adda.w #$40,a0
	lea (dat_ff3910).l,a1
	movep.l $1(a0),d1
	cmp.l (a1),d1
	bne.w loc_ff38be
	movep.l $9(a0),d1
	cmp.l $4(a1),d1
	bne.w loc_ff38be
	movep.l $11(a0),d1
	cmp.l $8(a1),d1
	bne.w loc_ff38be
	bra.w loc_ff38f8
loc_ff38be:
	bset.b #$0,($7fffff).l
	lea ($600001).l,a0
	move.b (a0),d0
	move.b #$5a,(a0)
	cmpi.b #$5a,(a0)
	bne.s loc_ff38ee
	move.b #$a5,(a0)
	cmpi.b #$a5,(a0)
	bne.s loc_ff38ee
	move.b d0,(a0)
	bclr.b #$0,($7fffff).l
	bra.s loc_ff38fc
loc_ff38ee:
	bclr.b #$0,($7fffff).l
	bra.s loc_ff3900
loc_ff38f8:
	moveq #$0,d0
	rts
loc_ff38fc:
	moveq #$0,d0
	rts
loc_ff3900:
	moveq #$ffffffff,d0
	rts
dat_ff3904:
	dc.b $52,$41,$4d,$5f,$43,$41,$52,$54
	dc.b $52,$49,$44,$47
dat_ff3910:
	.incbin 6672, 62

sub_ff394e:
	jsr (sub_ff2232).l
	move.b #$2,($200020).l
	bra.w sub_ff3750

sub_ff3960:
	jsr (sub_ff2232).l
	move.b #$3,($200020).l
	bra.w sub_ff3750

sub_ff3972:
	jsr (sub_ff2232).l
	move.b #$4,($200020).l
	bra.w sub_ff3750
loc_ff3984:
	jsr (sub_ff2232).l
	move.b #$a,($200020).l
	bra.w sub_ff3750

sub_ff3996:
	jsr (sub_ff2232).l
	move.b #$5,($200020).l
	bsr.w sub_ff3750
	bne.s loc_ff39ae
	bsr.w sub_ff39e8
loc_ff39ae:
	rts
loc_ff39b0:
	jsr (sub_ff2232).l
	move.b #$b,($200020).l
	bsr.w sub_ff3750
	rts

sub_ff39c4:
	jsr (sub_ff2232).l
	move.b #$6,($200020).l
	bra.w sub_ff3750
	.incbin 6870, 18

sub_ff39e8:
	jsr (sub_ff2232).l
	move.b #$9,($200020).l
	bra.w sub_ff3750

sub_ff39fa:
	lea ($c00004).l,a5
	moveq #$3,d2
loc_ff3a02:
	moveq #$0,d1
	move.b d0,d1
	beq.s loc_ff3a1a
	lsl.w #$3,d1
	lea dat_ff3a22(pc),a0
	move.l -$8(a0,d1.w),(a5)
	movea.l -$4(a0,d1.w),a0
	jsr sub_ff3a32(pc)
loc_ff3a1a:
	ror.l #$8,d0
	dbf d2,loc_ff3a02
	rts
dat_ff3a22:
	.incbin 6946, 16

sub_ff3a32:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_ff3afc).l,a3
	lea ($c00000).l,a4
	bra.s loc_ff3a4e
	dc.b $48,$e7,$ff,$dc,$47,$f9,$00,$ff
	dc.b $3b,$12
loc_ff3a4e:
	lea ($a000).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_ff3a5c
	adda.w #$a,a3
loc_ff3a5c:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	jsr sub_ff3b28(pc)
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_ff3a84
	nop
	nop
	nop
	nop
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_ff3a84:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_ff3ad0
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3aac
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3aac:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_ff3aba:
	lsr.w #$4,d0
loc_ff3abc:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_ff3aca
	jmp (a3)
	dc.b $78,$00,$76,$08
loc_ff3aca:
	dbf d0,loc_ff3abc
	bra.s sub_ff3a84
loc_ff3ad0:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3ade
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3ade:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_ff3aba
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_ff3aba
dat_ff3afc:
	.incbin 7164, 44

sub_ff3b28:
	move.b (a0)+,d0
loc_ff3b2a:
	cmpi.b #$ff,d0
	bne.s loc_ff3b32
	rts
loc_ff3b32:
	move.w d0,d7
loc_ff3b34:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_ff3b2a
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
	bne.s loc_ff3b62
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_ff3b34
loc_ff3b62:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_ff3b6e:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_ff3b6e
	bra.s loc_ff3b34

sub_ff3b7a:
	andi.l #$ffff,d0
	mulu.w #$e,d0
	lea (dat_ff3bc6).l,a1
	adda.w d0,a1
	movea.l (a1)+,a0
	move.w (a1)+,d0
	move.l a1,-(a7)
	lea ($a000).w,a1
	bsr.w sub_ff3c36
	movea.l (a7)+,a1
	move.w (a1)+,d3
	move.w (a1)+,d2
	move.l (a1),d0
	lea ($a000).w,a0
	movea.l #$c00000,a1
loc_ff3bac:
	move.l d0,($c00004).l
	move.w d3,d1
loc_ff3bb4:
	move.w (a0)+,(a1)
	dbf d1,loc_ff3bb4
	addi.l #$800000,d0
	dbf d2,loc_ff3bac
	rts
dat_ff3bc6:
	.incbin 7366, 112

sub_ff3c36:
	movem.l d0-d7/a1-a5,-(a7)
	movea.w d0,a3
	move.b (a0)+,d0
	ext.w d0
	movea.w d0,a5
	move.b (a0)+,d4
	lsl.b #$3,d4
	movea.w (a0)+,a2
	adda.w a3,a2
	movea.w (a0)+,a4
	adda.w a3,a4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	moveq #$10,d6
	moveq #$7,d0
	move.w d6,d7
	sub.w d0,d7
	move.w d5,d1
	lsr.w d7,d1
	andi.w #$7f,d1
	move.w d1,d2
	cmpi.w #$40,d1
	bcc.s loc_ff3c70
	moveq #$6,d0
	lsr.w #$1,d2
loc_ff3c70:
	bsr.w sub_ff3da4
	andi.w #$f,d2
	lsr.w #$4,d1
	add.w d1,d1
	jmp dat_ff3ccc(pc,d1.w)
	.incbin 7552, 76
dat_ff3ccc:
	.incbin 7628, 216

sub_ff3da4:
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_ff3db2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_ff3db2:
	rts
	.incbin 7860, 2390
