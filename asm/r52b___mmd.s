; R52B__.MMD
; disassembled from the disc; code only, data comes from data/R52B__.MMD at build time
	.file "R52B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$76
	jmp (loc_201ba6).l
	dc.b $4e,$71,$4e,$71,$60,$fa
loc_20011e:
	btst.b #$6,($a1000d).l
	beq.s loc_200136
	cmpi.l #$696e6974,($ff158a).l
	beq.w loc_200166
loc_200136:
	lea ($ff1000).l,a6
	moveq #$0,d7
	move.w #$ff,d6
	move.w #$7f,d6
loc_200146:
	move.l d7,(a6)+
	dbf d6,loc_200146
	move.b ($a10001).l,d0
	andi.b #$c0,d0
	move.b d0,($ff1586).l
	move.l #$696e6974,($ff158a).l
loc_200166:
	bsr.w sub_2021b2
	bsr.w sub_20215a
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201416

sub_200184:
	lea ($f7b7).w,a4
	lea ($f7b0).w,a5
	bsr.s sub_2001a2
	btst.b #$0,($ff156c).l
	beq.s loc_20019a
	rts
loc_20019a:
	lea (dat_20020e).l,a1
	bra.s loc_2001b2

sub_2001a2:
	lea dat_2001f8(pc),a1
	tst.b ($ff158f).l
	beq.s loc_2001b2
	lea dat_200232(pc),a1
loc_2001b2:
	subq.b #$1,(a4)
	bpl.s loc_2001ee
	move.b $3(a1),(a4)
	moveq #$0,d0
	move.b (a5),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_2001c8
	moveq #$0,d0
loc_2001c8:
	move.b d0,(a5)
	moveq #$0,d1
	move.b $2(a1),d1
	mulu.w d1,d0
	add.w d0,d0
	lea ($fb00).w,a2
	moveq #$0,d2
	move.b $0(a1),d2
	add.w d2,d2
	adda.w d2,a2
	lea $4(a1,d0.w),a1
	subq.b #$1,d1
loc_2001e8:
	move.w (a1)+,(a2)+
	dbf d1,loc_2001e8
loc_2001ee:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2001f8:
	.incbin 504, 22
dat_20020e:
	.incbin 526, 36
dat_200232:
	.incbin 562, 22

sub_200248:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20025a:
	move.w d1,(a0)+
	dbf d0,loc_20025a
	move.w #$15,d4
loc_200264:
	move.b #$12,($f62a).w
	bsr.w sub_20075a
	bsr.s sub_20027a
	bsr.w sub_202578
	dbf d4,loc_200264
	rts

sub_20027a:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200290:
	bsr.s sub_2002be
	dbf d0,loc_200290
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002bc
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002b6:
	bsr.s sub_2002be
	dbf d0,loc_2002b6
loc_2002bc:
	rts

sub_2002be:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002e6
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002d4
	move.w d1,(a0)+
	rts
loc_2002d4:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002e2
	move.w d1,(a0)+
	rts
loc_2002e2:
	addq.w #$2,(a0)+
	rts
loc_2002e6:
	addq.w #$2,a0
	rts

sub_2002ea:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002f4:
	move.b #$12,($f62a).w
	bsr.w sub_20075a
	bsr.s sub_20030a
	bsr.w sub_202578
	dbf d4,loc_2002f4
	rts

sub_20030a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20031a:
	bsr.s sub_200338
	dbf d0,loc_20031a
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200330:
	bsr.s sub_200338
	dbf d0,loc_200330
	rts

sub_200338:
	move.w (a0),d2
	beq.s loc_200364
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200348
	subq.w #$2,(a0)+
	rts
loc_200348:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200356
	subi.w #$20,(a0)+
	rts
loc_200356:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200364
	subi.w #$200,(a0)+
	rts
loc_200364:
	addq.w #$2,a0
	rts

sub_200368:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200382:
	move.w d1,(a0)+
	dbf d0,loc_200382
	move.w #$15,d4
loc_20038c:
	move.b #$12,($f62a).w
	bsr.w sub_20075a
	bsr.s sub_2003a2
	bsr.w sub_202578
	dbf d4,loc_20038c
	rts

sub_2003a2:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003b8:
	bsr.s sub_2003e6
	dbf d0,loc_2003b8
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003e4
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003de:
	bsr.s sub_2003e6
	dbf d0,loc_2003de
loc_2003e4:
	rts

sub_2003e6:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200412
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003fe
	cmp.w d2,d1
	bcs.s loc_2003fe
	move.w d1,(a0)+
	rts
loc_2003fe:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_20040e
	cmp.w d2,d1
	bcs.s loc_20040e
	move.w d1,(a0)+
	rts
loc_20040e:
	subq.w #$2,(a0)+
	rts
loc_200412:
	addq.w #$2,a0
	rts

sub_200416:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200420:
	move.b #$12,($f62a).w
	bsr.w sub_20075a
	bsr.s sub_200436
	bsr.w sub_202578
	dbf d4,loc_200420
	rts

sub_200436:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200446:
	bsr.s sub_200464
	dbf d0,loc_200446
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20045c:
	bsr.s sub_200464
	dbf d0,loc_20045c
	rts

sub_200464:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004a0
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20047c
	addq.w #$2,(a0)+
	rts
loc_20047c:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20048e
	addi.w #$20,(a0)+
	rts
loc_20048e:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004a0
	addi.w #$200,(a0)+
	rts
loc_2004a0:
	addq.w #$2,a0
	rts

sub_2004a4:
	lea (dat_200510).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2004b8:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004b8
	rts

sub_2004c0:
	lea (dat_200510).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004d0:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004d0
	rts
	dc.b $43,$f9,$00,$20,$05,$10
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_2004ec:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004ec
	rts
	dc.b $43,$f9,$00,$20,$05,$10
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_200508:
	move.l (a2)+,(a3)+
	dbf d7,loc_200508
	rts
dat_200510:
	.incbin 1296, 586

sub_20075a:
	move.w #$2300,sr
loc_20075e:
	tst.b ($f62a).w
	bne.s loc_20075e
	rts

sub_200766:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20077e(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20077e(pc,d0.w),d0
	rts
dat_20077e:
	.incbin 1918, 640

sub_2009fe:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a5a
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a18
	neg.w d3
loc_200a18:
	tst.w d4
	bpl.w loc_200a20
	neg.w d4
loc_200a20:
	cmp.w d3,d4
	bcc.w loc_200a32
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a64(pc,d4.w),d0
	bra.s loc_200a3c
loc_200a32:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a64(pc,d3.w),d0
loc_200a3c:
	tst.w d1
	bpl.w loc_200a48
	neg.w d0
	addi.w #$80,d0
loc_200a48:
	tst.w d2
	bpl.w loc_200a54
	neg.w d0
	addi.w #$100,d0
loc_200a54:
	movem.l (a7)+,d3-d4
	rts
loc_200a5a:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a64:
	.incbin 2660, 258

sub_200b66:
	btst.b #$3,$22(a0)
	beq.s loc_200b7a
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b7a:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b9c
	move.b $26(a0),d0
	bpl.s loc_200b96
	subq.b #$1,d0
loc_200b96:
	addi.b #$20,d0
	bra.s loc_200ba8
loc_200b9c:
	move.b $26(a0),d0
	bpl.s loc_200ba4
	addq.b #$1,d0
loc_200ba4:
	addi.b #$1f,d0
loc_200ba8:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e32
	cmpi.b #$80,d0
	beq.w loc_200d90
	cmpi.b #$c0,d0
	beq.w loc_200cf4
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_2010bc
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	neg.w d0
	add.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_2010bc
	move.w (a7)+,d0
	bsr.w sub_200cc8
	tst.w d1
	beq.s loc_200c36
	bpl.s loc_200c38
	cmpi.w #$fff2,d1
	blt.s loc_200c5e
	add.w d1,$c(a0)
loc_200c36:
	rts
loc_200c38:
	cmpi.w #$e,d1
	bgt.s loc_200c44
loc_200c3e:
	add.w d1,$c(a0)
	rts
loc_200c44:
	tst.b $38(a0)
	bne.s loc_200c3e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c5e:
	rts
	.incbin 3168, 34
loc_200c82:
	rts
	.incbin 3204, 68

sub_200cc8:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cd6
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cd6:
	btst.l #$0,d2
	bne.s loc_200ce2
	move.b d2,$26(a0)
	rts
loc_200ce2:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cf4:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	neg.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_20122c
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	bsr.w sub_20122c
	move.w (a7)+,d0
	bsr.w sub_200cc8
	tst.w d1
	beq.s loc_200d68
	bpl.s loc_200d6a
	cmpi.w #$fff2,d1
	blt.w loc_200c82
	add.w d1,$8(a0)
loc_200d68:
	rts
loc_200d6a:
	cmpi.w #$e,d1
	bgt.s loc_200d76
loc_200d70:
	add.w d1,$8(a0)
	rts
loc_200d76:
	tst.b $38(a0)
	bne.s loc_200d70
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d90:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$d,d5
	bsr.w sub_2010bc
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$d,d5
	bsr.w sub_2010bc
	move.w (a7)+,d0
	bsr.w sub_200cc8
	tst.w d1
	beq.s loc_200e0a
	bpl.s loc_200e0c
	cmpi.w #$fff2,d1
	blt.w loc_200c5e
	sub.w d1,$c(a0)
loc_200e0a:
	rts
loc_200e0c:
	cmpi.w #$e,d1
	bgt.s loc_200e18
loc_200e12:
	sub.w d1,$c(a0)
	rts
loc_200e18:
	tst.b $38(a0)
	bne.s loc_200e12
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e32:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$d,d5
	bsr.w sub_20122c
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$d,d5
	bsr.w sub_20122c
	move.w (a7)+,d0
	bsr.w sub_200cc8
	tst.w d1
	beq.s loc_200eac
	bpl.s loc_200eae
	cmpi.w #$fff2,d1
	blt.w loc_200c82
	sub.w d1,$8(a0)
loc_200eac:
	rts
loc_200eae:
	cmpi.w #$e,d1
	bgt.s loc_200eba
loc_200eb4:
	sub.w d1,$8(a0)
	rts
loc_200eba:
	tst.b $38(a0)
	bne.s loc_200eb4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ed4:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200eea
	andi.w #$380,d0
loc_200eea:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f4a
	bmi.s loc_200f4e
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f1a
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f20
loc_200f1a:
	andi.w #$7fff,$2(a0)
loc_200f20:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f30
	bclr.b #$6,$1(a0)
loc_200f30:
	subq.b #$1,d1
	ext.w d1
	ror.w #$7,d1
	move.w d2,d0
	add.w d0,d0
	andi.w #$1e0,d0
	add.w d0,d1
	move.w d3,d0
	lsr.w #$3,d0
	andi.w #$1e,d0
	add.w d0,d1
loc_200f4a:
	movea.l d1,a1
	rts
loc_200f4e:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fb6
	btst.b #$6,$1(a0)
	bne.s loc_200f7c
	cmpi.b #$14,d1
	bne.w loc_2010a0
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010a0
loc_200f7c:
	cmpi.b #$15,d1
	bne.s loc_200f8a
	move.w #$60,d1
	bra.w loc_2010a0
loc_200f8a:
	cmpi.b #$1e,d1
	bne.s loc_200f98
	move.w #$61,d1
	bra.w loc_2010a0
loc_200f98:
	cmpi.b #$1f,d1
	bne.s loc_200fa6
	move.w #$62,d1
	bra.w loc_2010a0
loc_200fa6:
	cmpi.b #$32,d1
	bne.w loc_2010a0
	move.w #$63,d1
	bra.w loc_2010a0
loc_200fb6:
	cmpi.b #$5,($ff1506).l
	bne.w loc_20101c
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201006
	cmpi.b #$6,d1
	beq.s loc_201006
	tst.b ($ff1956).l
	beq.w loc_2010a0
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201016
	cmpi.b #$3c,d1
	beq.s loc_201016
	cmpi.b #$37,d1
	beq.s loc_201016
	cmpi.b #$2f,d1
	beq.s loc_201016
	cmpi.b #$16,d1
	beq.s loc_201016
	bra.w loc_2010a0
loc_201006:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010a0
loc_201016:
	addq.b #$1,d1
	bra.w loc_2010a0
loc_20101c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20108c
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010a0
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010a0
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201050
	move.w #$6a,d1
	bra.s loc_2010a0
loc_201050:
	cmpi.b #$48,d1
	bne.s loc_20105c
	move.w #$6b,d1
	bra.s loc_2010a0
loc_20105c:
	cmpi.b #$4a,d1
	bne.s loc_201068
	move.w #$6c,d1
	bra.s loc_2010a0
loc_201068:
	cmpi.b #$10,d1
	bne.s loc_201074
	move.w #$6d,d1
	bra.s loc_2010a0
loc_201074:
	cmpi.b #$63,d1
	bne.s loc_201080
	move.w #$6e,d1
	bra.s loc_2010a0
loc_201080:
	cmpi.b #$43,d1
	bne.s loc_2010a0
	move.w #$6f,d1
	bra.s loc_2010a0
loc_20108c:
	btst.b #$6,$1(a0)
	beq.s loc_2010a0
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010a0
	move.w #$51,d1
loc_2010a0:
	subq.b #$1,d1
	ror.w #$7,d1
	move.w d2,d0
	add.w d0,d0
	andi.w #$1e0,d0
	add.w d0,d1
	move.w d3,d0
	lsr.w #$3,d0
	andi.w #$1e,d0
	add.w d0,d1
	movea.l d1,a1
	rts

sub_2010bc:
	bsr.w sub_200ed4
	cmpi.l #$210000,d1
	beq.s loc_2010d6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010d6
	btst.l d5,d4
	bne.s loc_2010e4
loc_2010d6:
	add.w a3,d2
	bsr.w sub_20117c
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010e4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010d6
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20110a
	not.w d1
	neg.b (a4)
loc_20110a:
	btst.l #$c,d4
	beq.s loc_20111a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20111a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201136
	neg.w d0
loc_201136:
	tst.w d0
	beq.s loc_2010d6
	bmi.s loc_201152
	cmpi.b #$10,d0
	beq.s loc_20116e
loc_201142:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201152:
	cmpa.w #$10,a3
	bne.s loc_201162
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201142
loc_201162:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010d6
loc_20116e:
	sub.w a3,d2
	bsr.w sub_20117c
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_20117c:
	bsr.w sub_200ed4
	cmpi.l #$210000,d1
	beq.s loc_201196
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201196
	btst.l d5,d4
	bne.s loc_2011a4
loc_201196:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011a4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201196
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011ca
	not.w d1
	neg.b (a4)
loc_2011ca:
	btst.l #$c,d4
	beq.s loc_2011da
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011da:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011f6
	neg.w d0
loc_2011f6:
	tst.w d0
	beq.s loc_201196
	bmi.s loc_20120c
loc_2011fc:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20120c:
	cmpa.w #$10,a3
	bne.s loc_20121c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011fc
loc_20121c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201196
	not.w d1
	rts

sub_20122c:
	bsr.w sub_200ed4
	cmpi.l #$210000,d1
	beq.s loc_201246
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201246
	btst.l d5,d4
	bne.s loc_201254
loc_201246:
	add.w a3,d3
	bsr.w sub_2012dc
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201254:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201246
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201282
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201282:
	btst.l #$b,d4
	beq.s loc_20128a
	neg.b (a4)
loc_20128a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012a6
	neg.w d0
loc_2012a6:
	tst.w d0
	beq.s loc_201246
	bmi.s loc_2012c2
	cmpi.b #$10,d0
	beq.s loc_2012ce
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012c2:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201246
loc_2012ce:
	sub.w a3,d3
	bsr.w sub_2012dc
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012dc:
	bsr.w sub_200ed4
	cmpi.l #$210000,d1
	beq.s loc_2012f6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012f6
	btst.l d5,d4
	bne.s loc_201304
loc_2012f6:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201304:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012f6
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201332
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201332:
	btst.l #$b,d4
	beq.s loc_20133a
	neg.b (a4)
loc_20133a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201356
	neg.w d0
loc_201356:
	tst.w d0
	beq.s loc_2012f6
	bmi.s loc_20136c
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20136c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012f6
	not.w d1
	rts

sub_20137c:
	rts
	.incbin 4990, 152
loc_201416:
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201430
	tst.b ($ff0f01).l
	bne.s loc_201430
	move.b #$1,($ff156a).l
loc_201430:
	clr.b ($f62a).w
	clr.b ($ff158f).l
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_20149e
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2079bc
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_20149e
	move.b #$1,($ff1508).l
loc_20149e:
	bset.b #$7,($f600).w
	bsr.w sub_20256a
	tst.b ($ff156e).l
	bne.s loc_2014c4
	btst.b #$7,($ff152e).l
	beq.s loc_2014fa
	bset.b #$0,($ff151d).l
	beq.s loc_2014d0
loc_2014c4:
	bsr.w sub_200416
	bclr.b #$0,($ff151d).l
loc_2014d0:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20156a
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014f8
	bclr.b #$7,($ff152e).l
loc_2014f8:
	rts
loc_2014fa:
	bset.b #$0,($ff151d).l
	beq.s loc_201508
	bsr.w sub_2002ea
loc_201508:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201524
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20154c
loc_201524:
	tst.b ($ff1508).l
	bne.s loc_20156a
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20154c:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201554:
	move.l #$0,(a1)+
	dbf d6,loc_201554
	move.b #$c,($f62a).w
	bsr.w sub_20075a
	rts
loc_20156a:
	cmpi.w #$800,($f78e).w
	bne.s loc_201582
	move.w #$0,($f78e).w
	move.b #$0,($ff151d).l
	rts
loc_201582:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201598
	btst.b #$7,($ff152e).l
	beq.s loc_20159e
loc_201598:
	move.l #$eee0eee,d0
loc_20159e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015a6:
	move.l d0,(a1)+
	dbf d6,loc_2015a6
loc_2015ac:
	move.b #$c,($f62a).w
	bsr.w sub_20075a
	bsr.w sub_202578
	bne.s loc_2015ac
	tst.l ($f680).w
	bne.s loc_2015ac
	bsr.w sub_201a60
	moveq #$0,d0
	lea (dat_20f7b0).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015d8
	bsr.w sub_20267e
loc_2015d8:
	moveq #$1,d0
	bsr.w sub_20267e
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015f4:
	move.l d0,(a1)+
	dbf d1,loc_2015f4
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201606:
	move.l d0,(a1)+
	dbf d1,loc_201606
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201616:
	move.l d0,(a1)+
	dbf d1,loc_201616
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201626:
	move.l d0,(a1)+
	dbf d1,loc_201626
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201636:
	move.l d0,(a1)+
	dbf d1,loc_201636
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202254
	lea ($c00004).l,a6
	move.w #$8b03,(a6)
	move.w #$8230,(a6)
	move.w #$8407,(a6)
	move.w #$857c,(a6)
	move.w #$9001,(a6)
	move.w #$8004,(a6)
	move.w #$8720,(a6)
	move.w #$8adf,($f624).w
	move.w ($f624).w,(a6)
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_2004c0
	moveq #$3,d0
	bsr.w sub_2004a4
	bsr.w sub_202976
	bsr.w sub_202ad6
	bset.b #$2,($f754).w
	bsr.w sub_2035c0
	bsr.w sub_2034aa
	jsr (sub_20137c).l
	bsr.w sub_20199a
loc_2016b6:
	move.b #$c,($f62a).w
	bsr.w sub_20075a
	bsr.w sub_202578
	bne.s loc_2016b6
	tst.l ($f680).w
	bne.s loc_2016b6
	bsr.w sub_201926
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ac0
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20171a
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20171a:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20175c
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20175c:
	move.b d0,($ff150c).l
	move.b d0,($ff151e).l
	move.b d0,($ff151f).l
	move.b d0,($ff1520).l
	move.b d0,($ff1521).l
	move.w d0,($ff1906).l
	move.w d0,($ff1502).l
	move.w d0,($ff1504).l
	move.b d0,($ff1522).l
	move.b #$1,($ff1511).l
	move.b #$1,($ff150f).l
	move.b #$1,($ff1510).l
	move.b #$1,($ff150e).l
	move.b #$80,($ff150f).l
	move.b #$80,($ff1511).l
	move.w #$0,($f790).w
	move.w #$202f,($f626).w
	jsr (sub_20f7aa).l
	jsr (sub_2028ce).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017f2
loc_2017ec:
	bsr.w sub_200368
	bra.s loc_201800
loc_2017f2:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017ec
	bsr.w sub_200248
loc_201800:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20180e:
	move.b #$8,($f62a).w
	bsr.w sub_20075a
	tst.b ($f7cc).w
	bne.s loc_20182c
	btst.b #$7,($f605).w
	beq.s loc_20182c
	eori.b #$1,($f63a).w
loc_20182c:
	btst.b #$0,($f63a).w
	beq.w loc_2018ac
	bsr.w sub_201b24
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201890
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20180e
	subq.b #$1,($ff1508).l
	bpl.s loc_20185e
	clr.b ($ff1508).l
loc_20185e:
	move.w #$e,d0
	jsr (sub_205c7e).l
	bsr.w sub_2079bc
	clr.b ($ff1522).l
	jsr (sub_2022da).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022f6).l
	move.w #$1,($ff1502).l
	bra.s loc_20189e
loc_201890:
	andi.b #$70,d0
	beq.w loc_20180e
	clr.b ($ff1508).l
loc_20189e:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	bra.w loc_20191c
loc_2018ac:
	bsr.w sub_201b6a
	addq.w #$1,($ff1504).l
	jsr (sub_2079d2).l
	jsr (sub_2039d4).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20191c
	tst.w ($ff1502).l
	bne.w loc_20191c
	tst.w ($ff1906).l
	bne.s loc_2018f4
	cmpi.b #$6,($d024).w
	bcs.s loc_2018f4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018f8
loc_2018f4:
	bsr.w sub_202ad6
loc_2018f8:
	jsr (sub_203b7e).l
	tst.w ($ff190e).l
	bne.s loc_20190a
	bsr.w sub_200184
loc_20190a:
	jsr (sub_20c222).l
	bsr.w sub_202578
	bsr.w sub_2019cc
	bra.w loc_20180e
loc_20191c:
	clr.b ($ff156c).l
	bra.w loc_201416

sub_201926:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20193e
	move.w #$78,$30(a1)
loc_20193e:
	rts
	.incbin 6464, 90

sub_20199a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019ac(pc,d0.w),($f796).w
	rts
dat_2019ac:
	.incbin 6572, 32

sub_2019cc:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019ea
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019ea:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a08
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a08:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a30
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a30
	move.b #$0,($ff1915).l
loc_201a30:
	tst.b ($ff1916).l
	beq.s loc_201a5e
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a5e:
	rts

sub_201a60:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a82
	cmpi.b #$2,d0
	bne.s loc_201a82
	add.b ($ff156a).l,d0
loc_201a82:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a9a(pc,d1.w),d0
	jmp (sub_205c7e).l
dat_201a9a:
	.incbin 6810, 38

sub_201ac0:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_232f3c).l,a1
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	rts

sub_201b24:
	move.w #$ab,d0
	jsr (sub_202342).l
	bset.b #$7,($f63a).w
	bne.s loc_201b68
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b4e
loc_201b44:
	move.w #$d5,d0
	jmp (sub_205c7e).l
loc_201b4e:
	tst.b ($ff151f).l
	bne.s loc_201b44
	tst.b ($ff1520).l
	bne.s loc_201b44
	move.w #$90,d0
	jmp (sub_205c7e).l
loc_201b68:
	rts

sub_201b6a:
	bclr.b #$7,($f63a).w
	beq.s loc_201ba4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b8a
loc_201b80:
	move.w #$d6,d0
	jmp (sub_205c7e).l
loc_201b8a:
	tst.b ($ff151f).l
	bne.s loc_201b80
	tst.b ($ff1520).l
	bne.s loc_201b80
	move.w #$91,d0
	jmp (sub_205c7e).l
loc_201ba4:
	rts
loc_201ba6:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c32
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201be2
	move.w #$700,d0
loc_201bde:
	dbf d0,loc_201bde
loc_201be2:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c18(pc,d0.w),d0
	jsr dat_201c18(pc,d0.w)
loc_201bf8:
	jsr (sub_202366).l
	tst.b ($f63a).w
	bne.s loc_201c0c
	bsr.w sub_20211a
	bsr.w sub_202108
loc_201c0c:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c18:
	.incbin 7192, 26
loc_201c32:
	tst.b ($ff1957).l
	beq.w loc_201bf8
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bf8
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c60
	move.w #$700,d0
loc_201c5c:
	dbf d0,loc_201c5c
loc_201c60:
	move.w #$1,($f6fc).w
	jsr (sub_2022da).l
	tst.b ($f64e).w
	bne.s loc_201c98
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cbc
loc_201c98:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cbc:
	move.w ($f624).w,(a5)
	jsr (sub_2022f6).l
	bra.w loc_201bf8
	.incbin 7370, 60
	jsr (sub_2022da).l
	bsr.w sub_202176
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($d000).w,a0
	bsr.w sub_205ba0
	tst.b ($f767).w
	beq.s loc_201db4
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201db4:
	tst.w ($ff190e).l
	bne.s loc_201dc2
	jsr (sub_20f7aa).l
loc_201dc2:
	jsr (sub_2022f6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030a0
	jsr (sub_2028ce).l
	bsr.w sub_2025ea
	jmp (loc_20aa1c).l
	dc.b $4e,$75
	jsr (sub_2022da).l
	bsr.w sub_202176
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($d000).w,a0
	bsr.w sub_205ba0
	tst.b ($f767).w
	beq.s loc_201ea8
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201ea8:
	jsr (sub_2022f6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030a0
	bra.w loc_2025ce
	.incbin 7890, 16
	bsr.w sub_201fce
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f04
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f04:
	move.w ($f624).w,(a5)
	bra.w loc_2025ce
	dc.b $4e,$b9,$00,$20,$22,$da,$61,$00
	dc.b $02,$62
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_2022f6).l
	lea ($d000).w,a0
	bsr.w sub_205ba0
	tst.b ($f767).w
	beq.s loc_201fc0
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201fc0:
	tst.w ($f614).w
	beq.w loc_201fcc
	subq.w #$1,($f614).w
loc_201fcc:
	rts

sub_201fce:
	jsr (sub_2022da).l
	bsr.w sub_202176
	tst.b ($f64e).w
	bne.s loc_202004
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202028
loc_202004:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202028:
	lea ($c00004).l,a5
	move.l #$94019340,(a5)
	move.l #$96fc9500,(a5)
	move.w #$977f,(a5)
	move.w #$7800,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jmp (sub_2022f6).l
	.incbin 8310, 146

sub_202108:
	tst.b ($d02a).w
	bne.s loc_202118
	tst.w ($f786).w
	beq.s loc_202118
	addq.w #$1,($f786).w
loc_202118:
	rts

sub_20211a:
	tst.w ($f780).w
	beq.s loc_202124
	addq.w #$1,($f780).w
loc_202124:
	tst.w ($f782).w
	beq.s loc_20212e
	addq.w #$1,($f782).w
loc_20212e:
	rts
	.incbin 8496, 42

sub_20215a:
	bsr.w sub_2022da
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022f6

sub_202176:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202184
	addq.w #$2,a1

sub_202184:
	move.b #$0,(a1)
	nop
	nop
	move.b (a1),d0
	lsl.b #$2,d0
	andi.b #$c0,d0
	move.b #$40,(a1)
	nop
	nop
	move.b (a1),d1
	andi.b #$3f,d1
	or.b d1,d0
	not.b d0
	move.b (a0),d1
	eor.b d0,d1
	move.b d0,(a0)+
	and.b d0,d1
	move.b d1,(a0)+
	rts

sub_2021b2:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20222e).l,a2
	moveq #$12,d7
loc_2021c6:
	move.w (a2)+,(a0)
	dbf d7,loc_2021c6
	move.w (dat_202230).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021ec:
	move.w d0,(a1)
	dbf d7,loc_2021ec
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20221e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20221e
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20222e:
	dc.b $80,$04
dat_202230:
	.incbin 8752, 36

sub_202254:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202276:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202276
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022a4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022a4
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022c2:
	move.l d0,(a1)+
	dbf d1,loc_2022c2
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022d2:
	move.l d0,(a1)+
	dbf d1,loc_2022d2
	rts

sub_2022da:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022ea:
	btst.b #$0,($a11100).l
	bne.s loc_2022ea
	rts

sub_2022f6:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8964, 62

sub_202342:
	tst.b ($f00a).w
	bne.s loc_20234e
	move.b d0,($f00a).w
	rts
loc_20234e:
	tst.b ($f00b).w
	bne.s loc_20235a
	move.b d0,($f00b).w
	rts
loc_20235a:
	tst.b ($f00c).w
	bne.s loc_202364
	move.b d0,($f00c).w
loc_202364:
	rts

sub_202366:
	jsr (sub_2022da).l
	tst.b ($f00a).w
	beq.s loc_202380
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202380:
	tst.b ($f00b).w
	beq.s loc_202394
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202394:
	tst.b ($f00c).w
	beq.s loc_2023a8
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023a8:
	bra.w sub_2022f6
	.incbin 9132, 32

sub_2023cc:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20248e).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023e8

sub_2023de:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024a4).l,a3
loc_2023e8:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023f6
	adda.w #$a,a3
loc_2023f6:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024ba
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202416
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202416:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202462
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20243e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20243e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20244c:
	lsr.w #$4,d0
loc_20244e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20245c
	jmp (a3)

sub_202458:
	moveq #$0,d4
	moveq #$8,d3
loc_20245c:
	dbf d0,loc_20244e
	bra.s sub_202416
loc_202462:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202470
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202470:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20244c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20244c
loc_20248e:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202458
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202458
	rts
dat_2024a4:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202458
	rts

sub_2024ba:
	move.b (a0)+,d0
loc_2024bc:
	cmpi.b #$ff,d0
	bne.s loc_2024c4
	rts
loc_2024c4:
	move.w d0,d7
loc_2024c6:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024bc
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
	bne.s loc_2024f4
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024c6
loc_2024f4:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202500:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202500
	bra.s loc_2024c6

sub_20250c:
	movem.l a1-a2,-(a7)
	lea (dat_20f7c0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202524:
	tst.l (a2)
	beq.s loc_20252c
	addq.w #$6,a2
	bra.s loc_202524
loc_20252c:
	move.w (a1)+,d0
	bmi.s loc_202538
loc_202530:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202530
loc_202538:
	movem.l (a7)+,a1-a2
	rts
loc_20253e:
	movem.l a1-a2,-(a7)
	lea (dat_20f7c0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_20256a
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202564
loc_20255c:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20255c
loc_202564:
	movem.l (a7)+,a1-a2
	rts

sub_20256a:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202570:
	clr.l (a2)+
	dbf d0,loc_202570
	rts

sub_202578:
	tst.l ($f680).w
	beq.s loc_2025cc
	tst.w ($f6f8).w
	bne.s loc_2025cc
	movea.l ($f680).w,a0
	lea (loc_20248e).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20259a
	adda.w #$a,a3
loc_20259a:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024ba
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	moveq #$10,d6
	moveq #$0,d0
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d0,($f6e8).w
	move.l d0,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025cc:
	rts
loc_2025ce:
	tst.w ($f6f8).w
	beq.w loc_20266c
loc_2025d6:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202608

sub_2025ea:
	tst.w ($f6f8).w
	beq.s loc_20266c
	tst.b ($f744).w
	bne.s loc_2025d6
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202608:
	lea ($c00004).l,a4
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,(a4)
	subq.w #$4,a4
	movea.l ($f680).w,a0
	movea.l ($f6e0).w,a3
	move.l ($f6e4).w,d0
	move.l ($f6e8).w,d1
	move.l ($f6ec).w,d2
	move.l ($f6f0).w,d5
	move.l ($f6f4).w,d6
	lea ($aa00).w,a1
loc_20263c:
	movea.w #$8,a5
	bsr.w sub_202458
	subq.w #$1,($f6f8).w
	beq.s loc_20266e
	subq.w #$1,($f6fa).w
	bne.s loc_20263c
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20266c:
	rts
loc_20266e:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202674:
	move.l $6(a0),(a0)+
	dbf d0,loc_202674
	rts

sub_20267e:
	lea (dat_20f7c0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202690:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023cc
	dbf d1,loc_202690
	rts
	.incbin 9904, 542

sub_2028ce:
	move.l a6,-(a7)
	lea ($d000).w,a6
	moveq #$0,d0
	moveq #$0,d1
	moveq #$0,d2
	move.b ($ff1507).l,d1
	move.w d1,d3
	add.w d1,d1
	add.w d3,d1
	add.w d1,d1
	add.w d1,d0
loc_2028ea:
	move.w dat_20294e(pc,d0.w),d1
	bmi.s loc_2028fc
	cmp.w $8(a6),d1
	bcc.s loc_2028fc
	addq.w #$2,d0
	addq.b #$1,d2
	bra.s loc_2028ea
loc_2028fc:
	cmp.b ($ff156c).l,d2
	bne.s loc_202908
loc_202904:
	movea.l (a7)+,a6
	rts
loc_202908:
	move.b d2,($ff156c).l
	clr.l ($f680).w
	clr.w ($f6f8).w
	moveq #$0,d1
	move.b dat_202960(pc,d2.w),d1
	moveq #$0,d0
	move.b d1,d0
	lsr.b #$2,d0
	move.w d0,d2
	addi.b #$e,d0
	bsr.w sub_20250c
	move.w d2,d0
	addq.b #$4,d0
	move.w d0,d2
	jsr (sub_2004c0).l
	move.w d2,d0
	jsr (sub_2004a4).l
	lea ($a040).w,a3
	bsr.w sub_20363a
	bsr.w sub_2034c4
	bra.s loc_202904
dat_20294e:
	.incbin 10574, 18
dat_202960:
	.incbin 10592, 22

sub_202976:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2029d2).l,a0
	move.w (a0)+,d0
	move.w d0,($f730).w
	move.l (a0)+,d0
	move.l d0,($f728).w
	move.l d0,($f720).w
	move.l (a0)+,d0
	move.l d0,($f72c).w
	move.l d0,($f724).w
	move.w ($f728).w,d0
	addi.w #$240,d0
	move.w d0,($f732).w
	move.w #$1010,($f74a).w
	move.w (a0)+,d0
	move.w d0,($f73e).w
	move.w #$a0,($f7a0).w
	bra.w loc_2029fe
dat_2029d2:
	dc.b $00,$04,$00,$00,$2a,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_2029de:
	.incbin 10718, 32
loc_2029fe:
	tst.b ($ff1522).l
	beq.s loc_202a1e
	jsr (sub_206aac).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a1c
	moveq #$0,d0
loc_202a1c:
	bra.s loc_202a5a
loc_202a1e:
	lea (dat_202a96).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202a40
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_2029de).l,a1
	adda.w d0,a1
	bra.s loc_202a4a
loc_202a40:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202a4a:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202a5a:
	subi.w #$a0,d1
	bcc.s loc_202a62
	moveq #$0,d1
loc_202a62:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202a6c
	move.w d2,d1
loc_202a6c:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202a78
	moveq #$0,d0
loc_202a78:
	cmp.w ($f72e).w,d0
	blt.s loc_202a82
	move.w ($f72e).w,d0
loc_202a82:
	move.w d0,($f704).w
	bsr.w sub_202a9e
	lea (dat_202a9a).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a96:
	dc.b $00,$40,$01,$6c
dat_202a9a:
	dc.b $7f,$7f,$15,$19

sub_202a9e:
	swap d0
	lsr.l #$3,d0
	move.l d0,d2
	lsr.l #$1,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.l d1,d2
	lsr.l #$1,d2
	add.l d1,d2
	move.w d2,($f708).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f718).w
	rts

sub_202ad6:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202ae2
	rts
loc_202ae2:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202d16
	bsr.w sub_202db6
	bsr.w sub_203668
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_203040
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_20300c
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asl.l #$1,d4
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202fd8
	move.l ($f704).w,d0
	lsr.l #$3,d0
	move.l d0,d2
	lsr.l #$1,d2
	add.l d2,d0
	swap d0
	bsr.w sub_202fa8
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a1
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	btst.b #$0,($ff156c).l
	beq.w loc_202bae
	bsr.w sub_202c64
	bsr.w sub_202cac
	move.w ($f708).w,d0
	neg.w d0
	moveq #$11,d6
loc_202ba4:
	move.w d0,(a1)+
	dbf d6,loc_202ba4
	bra.w loc_202bb6
loc_202bae:
	bsr.w sub_202bd4
	bsr.w sub_202c1c
loc_202bb6:
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202cf2

sub_202bd4:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$8,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$3,d6
	adda.w #$28,a1
loc_202bf8:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202c18(pc,d6.w),d5
loc_202c02:
	move.w d0,-(a1)
	dbf d5,loc_202c02
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202bf8
	adda.w #$28,a1
	rts
dat_202c18:
	dc.b $07,$03,$01,$05

sub_202c1c:
	move.w ($f710).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f710).w,d3
	moveq #$b,d6
loc_202c3c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202c58(pc,d6.w),d5
loc_202c46:
	move.w d0,(a1)+
	dbf d5,loc_202c46
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c3c
	rts
dat_202c58:
	dc.b $01,$01,$01,$01,$01,$01,$01,$02
	dc.b $01,$00,$00,$06

sub_202c64:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$8,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$3,d6
	adda.w #$1a,a1
loc_202c88:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202ca8(pc,d6.w),d5
loc_202c92:
	move.w d0,-(a1)
	dbf d5,loc_202c92
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c88
	adda.w #$1a,a1
	rts
dat_202ca8:
	dc.b $03,$01,$01,$04

sub_202cac:
	move.w ($f710).w,d0
	move.w ($f708).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$e,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f710).w,d3
	moveq #$9,d6
loc_202ccc:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202ce8(pc,d6.w),d5
loc_202cd6:
	move.w d0,(a1)+
	dbf d5,loc_202cd6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ccc
	rts
dat_202ce8:
	dc.b $00,$02,$00,$02,$00,$02,$01,$01
	dc.b $01,$02
loc_202cf2:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202d00(pc,d2.w)
loc_202cfe:
	move.w (a2)+,d0
loc_202d00:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202cfe
	rts

sub_202d16:
	move.w ($f700).w,d4
	bsr.s sub_202d4a
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d48
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d42
	bset.b #$2,($f754).w
	rts
loc_202d42:
	bset.b #$3,($f754).w
loc_202d48:
	rts

sub_202d4a:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d5c
	bcs.s loc_202d8c
	bra.s loc_202d62
loc_202d5c:
	clr.w ($f73a).w
	rts
loc_202d62:
	cmpi.w #$10,d0
	blt.s loc_202d6c
	move.w #$10,d0
loc_202d6c:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d7a
	move.w ($f72a).w,d0
loc_202d7a:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d8c:
	cmpi.w #$fff0,d0
	bge.s loc_202d96
	move.w #$fff0,d0
loc_202d96:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d7a
	move.w ($f728).w,d0
	bra.s loc_202d7a
	.incbin 11686, 16

sub_202db6:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202dca
	subq.w #$5,d0
loc_202dca:
	btst.b #$1,$22(a6)
	beq.s loc_202dea
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e36
	subi.w #$40,d0
	bcc.s loc_202e36
	tst.b ($f75c).w
	bne.s loc_202e48
	bra.s loc_202df6
loc_202dea:
	sub.w ($f73e).w,d0
	bne.s loc_202dfc
	tst.b ($f75c).w
	bne.s loc_202e48
loc_202df6:
	clr.w ($f73c).w
	rts
loc_202dfc:
	cmpi.w #$60,($f73e).w
	bne.s loc_202e24
	move.w $14(a6),d1
	bpl.s loc_202e0c
	neg.w d1
loc_202e0c:
	cmpi.w #$800,d1
	bcc.s loc_202e36
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e96
	cmpi.w #$fffa,d0
	blt.s loc_202e60
	bra.s loc_202e4e
loc_202e24:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e96
	cmpi.w #$fffe,d0
	blt.s loc_202e60
	bra.s loc_202e4e
loc_202e36:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e96
	cmpi.w #$fff0,d0
	blt.s loc_202e60
	bra.s loc_202e4e
loc_202e48:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e4e:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ea0
	bra.w loc_202e6c
loc_202e60:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e6c:
	cmp.w ($f72c).w,d1
	bgt.s loc_202ec4
	cmpi.w #$ff00,d1
	bgt.s loc_202e90
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202ec4
loc_202e90:
	move.w ($f72c).w,d1
	bra.s loc_202ec4
loc_202e96:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ea0:
	cmp.w ($f72e).w,d1
	blt.s loc_202ec4
	subi.w #$800,d1
	bcs.s loc_202ec0
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202ec4
loc_202ec0:
	move.w ($f72e).w,d1
loc_202ec4:
	move.w ($f704).w,d4
	swap d1
	move.l d1,d3
	sub.l ($f704).w,d3
	ror.l #$8,d3
	move.w d3,($f73c).w
	move.l d1,($f704).w
	move.w ($f704).w,d0
	andi.w #$10,d0
	move.b ($f74b).w,d1
	eor.b d1,d0
	bne.s loc_202f06
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202f00
	bset.b #$0,($f754).w
	rts
loc_202f00:
	bset.b #$1,($f754).w
loc_202f06:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f3c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f36
	bset.b #$2,($f756).w
	bra.s loc_202f3c
loc_202f36:
	bset.b #$3,($f756).w
loc_202f3c:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f70
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f6a
	bset.b #$0,($f756).w
	rts
loc_202f6a:
	bset.b #$1,($f756).w
loc_202f70:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fa6
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202fa0
	bset.b #$4,($f756).w
	rts
loc_202fa0:
	bset.b #$5,($f756).w
loc_202fa6:
	rts

sub_202fa8:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fd6
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202fd0
	bset.b #$0,($f756).w
	rts
loc_202fd0:
	bset.b #$1,($f756).w
loc_202fd6:
	rts

sub_202fd8:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_20300a
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_203004
	bset.b d6,($f756).w
	bra.s loc_20300a
loc_203004:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_20300a:
	rts

sub_20300c:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_20303e
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_203038
	bset.b d6,($f758).w
	bra.s loc_20303e
loc_203038:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_20303e:
	rts

sub_203040:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203072
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20306c
	bset.b d6,($f75a).w
	bra.s loc_203072
loc_20306c:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203072:
	rts
	.incbin 12404, 44

sub_2030a0:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20315e
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203244
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203246
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20315c
	bclr.b #$0,(a2)
	beq.s loc_203112
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203472
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203248
loc_203112:
	bclr.b #$1,(a2)
	beq.s loc_20312c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203472
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203248
loc_20312c:
	bclr.b #$2,(a2)
	beq.s loc_203142
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203472
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20329e
loc_203142:
	bclr.b #$3,(a2)
	beq.s loc_20315c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203472
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20329e
loc_20315c:
	rts

sub_20315e:
	lea (dat_203536).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20317a
	bclr.b #$1,(a2)
	beq.s loc_2031c4
	move.w #$e0,d4
loc_20317a:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031f4(pc,d0.w),a3
	beq.s loc_2031ac
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203472
	movem.l (a7)+,d4-d5
	bsr.w sub_203248
	movea.l (a7)+,a0
	bra.s loc_2031c4
loc_2031ac:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203474
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203274
	movea.l (a7)+,a0
loc_2031c4:
	tst.b (a2)
	bne.s loc_2031ca
	rts
loc_2031ca:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031de
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031de:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203204
dat_2031f4:
	.incbin 12788, 16
loc_203204:
	moveq #$f,d6
	move.l #$800000,d7
loc_20320c:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203238
	btst.b d0,(a2)
	beq.s loc_203238
	add.w d0,d0
	movea.l dat_2031f4(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20334a
	movem.l (a7)+,d4-d5
	bsr.w sub_203472
	bsr.w sub_2032cc
	movem.l (a7)+,d4-d5/a0
loc_203238:
	addi.w #$10,d4
	dbf d6,loc_20320c
	clr.b (a2)
	rts

sub_203244:
	rts

sub_203246:
	rts

sub_203248:
	moveq #$15,d6

sub_20324a:
	move.l #$800000,d7
	move.l d0,d1
loc_203252:
	movem.l d4-d5,-(a7)
	bsr.w sub_20334a
	move.l d1,d0
	bsr.w sub_2032cc
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203252
	rts

sub_203274:
	move.l #$800000,d7
	move.l d0,d1
loc_20327c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20334c
	move.l d1,d0
	bsr.w sub_2032cc
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20327c
	rts

sub_20329e:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2032a8:
	movem.l d4-d5,-(a7)
	bsr.w sub_20334a
	move.l d1,d0
	bsr.w sub_2032cc
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2032a8
	rts

sub_2032cc:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203308
	btst.b #$3,(a0)
	bne.s loc_2032e8
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032e8:
	move.l d0,(a5)
	move.l (a1)+,d4
	eori.l #$8000800,d4
	swap d4
	move.l d4,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,d4
	eori.l #$8000800,d4
	swap d4
	move.l d4,(a6)
	rts
loc_203308:
	btst.b #$3,(a0)
	bne.s loc_20332a
	move.l d0,(a5)
	move.l (a1)+,d5
	move.l (a1)+,d4
	eori.l #$10001000,d4
	move.l d4,(a6)
	add.l d7,d0
	move.l d0,(a5)
	eori.l #$10001000,d5
	move.l d5,(a6)
	rts
loc_20332a:
	move.l d0,(a5)
	move.l (a1)+,d5
	move.l (a1)+,d4
	eori.l #$18001800,d4
	swap d4
	move.l d4,(a6)
	add.l d7,d0
	move.l d0,(a5)
	eori.l #$18001800,d5
	swap d5
	move.l d5,(a6)
	rts

sub_20334a:
	add.w (a3),d5

sub_20334c:
	add.w $4(a3),d4
	lea ($ff2000).l,a1
	move.w d4,d3
	lsr.w #$1,d3
	andi.w #$380,d3
	lsr.w #$3,d5
	move.w d5,d0
	lsr.w #$5,d0
	andi.w #$7f,d0
	add.w d3,d0
	move.l #$210000,d3
	move.b $0(a4,d0.w),d3
	beq.s loc_20339a
	subq.b #$1,d3
	andi.w #$7f,d3
	ror.w #$7,d3
	add.w d4,d4
	andi.w #$1e0,d4
	andi.w #$1e,d5
	add.w d4,d3
	add.w d5,d3
	movea.l d3,a0
	move.w (a0),d3
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	moveq #$1,d0
loc_20339a:
	rts
	.incbin 13212, 214

sub_203472:
	add.w (a3),d5

sub_203474:
	add.w $4(a3),d4
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13454, 28

sub_2034aa:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034e0

sub_2034c4:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203508

sub_2034e0:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034e4:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203472
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20324a
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034e4
	rts
loc_203508:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20350c:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203536).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203588
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20350c
	rts
dat_203536:
	.incbin 13622, 66
dat_203578:
	.incbin 13688, 16

sub_203588:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203578(pc,d0.w),a3
	beq.s loc_2035aa
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203472
	movem.l (a7)+,d4-d5
	bsr.w sub_203248
	bra.s loc_2035be
loc_2035aa:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203474
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203274
loc_2035be:
	rts

sub_2035c0:
	moveq #$0,d0
	lea (dat_20f7b0).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023de
	movea.l (a2)+,a0
	bsr.w sub_20361a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004a4
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203604
	jmp (loc_20c1ea).l
loc_203604:
	btst.b #$1,($ff151c).l
	beq.s loc_203618
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203618
	bsr.w sub_20250c
loc_203618:
	rts

sub_20361a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203624:
	move.l d0,(a3)+
	dbf d1,loc_203624
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20363a
	lea ($a040).w,a3
	moveq #$2,d1

sub_20363a:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237954).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203654:
	move.w d1,d0
	movea.l a3,a0
loc_203658:
	move.b (a1)+,(a0)+
	dbf d0,loc_203658
	lea $80(a3),a3
	dbf d2,loc_203654
	rts

sub_203668:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036e2(pc,d0.w),d0
	jsr dat_2036e2(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20368e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20368e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036bc
	bcc.s loc_2036be
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036b2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036b2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036bc:
	rts
loc_2036be:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036d6
	btst.b #$1,($d022).w
	beq.s loc_2036d6
	add.w d1,d1
	add.w d1,d1
loc_2036d6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036e2:
	.incbin 14050, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203832(pc,d0.w),d0
	jmp dat_203832(pc,d0.w)
dat_203832:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$310,($f726).w
	rts
	.incbin 14400, 404

sub_2039d4:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039dc:
	move.b (a0),d0
	beq.s loc_2039f2
	add.w d0,d0
	add.w d0,d0
	lea (dat_203df6).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039f2:
	lea $40(a0),a0
	dbf d7,loc_2039dc
	rts

sub_2039fc:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a3a
	bpl.s loc_203a2c
	btst.b #$1,$2c(a0)
	beq.s loc_203a2c
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a3a
loc_203a2c:
	btst.b #$2,$2c(a0)
	bne.s loc_203a3a
	addi.w #$38,$12(a0)
loc_203a3a:
	tst.w $12(a0)
	bmi.s loc_203a4e
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a4e
	move.w #$1000,$12(a0)
loc_203a4e:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a5e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a9a
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a9a
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a98
	neg.w d1
loc_203a98:
	add.w d1,d0
loc_203a9a:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203ab4:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b24
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b40
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b40
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203afe
	cmpi.w #$800,d3
	bcs.s loc_203b10
	subi.w #$800,d3
	bra.s loc_203b10
loc_203afe:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b10
	cmpi.w #$100,d3
	bcc.s loc_203b10
	addi.w #$800,d3
loc_203b10:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b40
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b40
loc_203b24:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b40
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b40:
	rts
	.incbin 15170, 16

sub_203b52:
	cmpi.w #$7e,(a2)
	bcc.s loc_203b5e
	addq.w #$2,(a2)
	adda.w (a2),a2
	move.w a1,(a2)
loc_203b5e:
	rts

sub_203b60:
	movea.l a0,a1

sub_203b62:
	moveq #$0,d1
	moveq #$f,d0
loc_203b66:
	move.l d1,(a1)+
	dbf d0,loc_203b66
	rts
dat_203b6e:
	.incbin 15214, 16

sub_203b7e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b8a:
	tst.w (a4)
	beq.w loc_203c4a
	moveq #$2,d6
loc_203b92:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c42
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bf8
	movea.l dat_203b6e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bdc
	cmpi.w #$800,d2
	bcs.s loc_203bee
	subi.w #$800,d2
	bra.s loc_203bee
loc_203bdc:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bee
	cmpi.w #$100,d2
	bcc.s loc_203bee
	addi.w #$800,d2
loc_203bee:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c1a
loc_203bf8:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c1a
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203c42
	cmpi.w #$180,d2
	bcc.s loc_203c42
loc_203c1a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c38
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c3c
loc_203c38:
	bsr.w sub_203c6c
loc_203c3c:
	bset.b #$7,$1(a0)
loc_203c42:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b92
loc_203c4a:
	lea $80(a4),a4
	dbf d7,loc_203b8a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c64
	move.l #$0,(a2)
	rts
loc_203c64:
	move.b #$0,-$5(a2)
	rts

sub_203c6c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203cb2
	btst.l #$1,d4
	bne.w loc_203d00
loc_203c7e:
	cmpi.b #$50,d5
	beq.s loc_203cb0
	move.b (a1)+,d0
	ext.w d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_203caa
	addq.w #$1,d0
loc_203caa:
	move.w d0,(a2)+
	dbf d1,loc_203c7e
loc_203cb0:
	rts
loc_203cb2:
	btst.l #$1,d4
	bne.w loc_203d46
loc_203cba:
	cmpi.b #$50,d5
	beq.s loc_203cfe
	move.b (a1)+,d0
	ext.w d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,d4
	move.b d4,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	eori.w #$800,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	neg.w d0
	add.b d4,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_203cf8
	addq.w #$1,d0
loc_203cf8:
	move.w d0,(a2)+
	dbf d1,loc_203cba
loc_203cfe:
	rts
loc_203d00:
	cmpi.b #$50,d5
	beq.s loc_203d44
	move.b (a1)+,d0
	move.b (a1),d4
	ext.w d0
	neg.w d0
	lsl.b #$3,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	eori.w #$1000,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_203d3e
	addq.w #$1,d0
loc_203d3e:
	move.w d0,(a2)+
	dbf d1,loc_203d00
loc_203d44:
	rts
loc_203d46:
	cmpi.b #$50,d5
	beq.s loc_203d98
	move.b (a1)+,d0
	move.b (a1),d4
	ext.w d0
	neg.w d0
	lsl.b #$3,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d2,d0
	move.w d0,(a2)+
	move.b (a1)+,d4
	move.b d4,(a2)+
	addq.b #$1,d5
	move.b d5,(a2)+
	move.b (a1)+,d0
	lsl.w #$8,d0
	move.b (a1)+,d0
	add.w a3,d0
	eori.w #$1800,d0
	move.w d0,(a2)+
	move.b (a1)+,d0
	ext.w d0
	neg.w d0
	add.b d4,d4
	andi.w #$18,d4
	addq.w #$8,d4
	sub.w d4,d0
	add.w d3,d0
	andi.w #$1ff,d0
	bne.s loc_203d92
	addq.w #$1,d0
loc_203d92:
	move.w d0,(a2)+
	dbf d1,loc_203d46
loc_203d98:
	rts
	.incbin 15770, 92
dat_203df6:
	.incbin 15862, 246

sub_203eec:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203efe
	move.w #$0,(a1)
	rts
loc_203efe:
	tst.w (a1)
	bne.s loc_203f08
	move.b #$1,$1(a1)
loc_203f08:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f52
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f44
	neg.w $10(a0)
loc_203f44:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c7e
loc_203f52:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f70
	cmpa.w #$d040,a0
	beq.s loc_203f70
	tst.b ($ff1906).l
	beq.s loc_203f70
	jmp (loc_2073e2).l
loc_203f70:
	move.b $2a(a0),d0
	beq.s loc_203f9a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f8c
	cmpi.b #$2d,d0
	bcs.s loc_203f96
	move.b #$2d,d0
	bra.s loc_203f96
loc_203f8c:
	cmpi.b #$1e,d0
	bcs.s loc_203f96
	move.b #$1e,d0
loc_203f96:
	move.b d0,$2a(a0)
loc_203f9a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203fa8(pc,d0.w),d1
	jmp dat_203fa8(pc,d1.w)
dat_203fa8:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203fb2:
	tst.b ($d300).w
	bne.s loc_203ff0
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203ff0:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204018
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204018:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_20404c:
	tst.b ($ff1506).l
	bne.s loc_2040b2
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040b2
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2040b6
	cmpi.b #$2f,d1
	bne.s loc_2040b4
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040b2
	tst.b $2c(a0)
	beq.s loc_2040b2
	jsr (sub_207bce).l
	bne.s loc_2040b2
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040aa
	moveq #$0,d0
loc_2040aa:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040b2:
	rts
loc_2040b4:
	rts

sub_2040b6:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	andi.b #$7f,d1
	rts

sub_2040dc:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_2040e8
	neg.w d0
loc_2040e8:
	btst.b #$1,$2c(a0)
	beq.s loc_2040f8
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204120
loc_2040f8:
	cmpi.w #$600,d0
	bcs.s loc_204120
	tst.w $14(a0)
	bpl.s loc_204112
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20412e
	move.w #$e0,d1
	bra.s loc_20412e
loc_204112:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20412e
	move.w #$60,d1
	bra.s loc_20412e
loc_204120:
	cmpi.w #$a0,d1
	beq.s loc_20412e
	bcc.s loc_20412c
	addq.w #$2,d1
	bra.s loc_20412e
loc_20412c:
	subq.w #$2,d1
loc_20412e:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_2040dc
	bsr.w sub_20404c
	tst.w ($ff1588).l
	beq.s loc_204154
	btst.b #$4,($f605).w
	beq.s loc_204154
	move.b #$1,($ff1906).l
	rts
loc_204154:
	tst.b ($f7cc).w
	bne.s loc_204160
	move.w ($f604).w,($f602).w
loc_204160:
	btst.b #$0,$2c(a0)
	beq.s loc_204184
	cmpi.b #$6,($ff1506).l
	bne.s loc_20417e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_20419c
loc_20417e:
	bsr.w sub_204466
	bra.s loc_20419c
loc_204184:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2041e2(pc,d0.w),d1
	jsr dat_2041e2(pc,d1.w)
	jsr (sub_206736).l
loc_20419c:
	bsr.s sub_2041f0
	bsr.w sub_2042b0
	bsr.w sub_2042ca
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2041c4
	tst.b $1c(a0)
	bne.s loc_2041c4
	move.b $1d(a0),$1c(a0)
loc_2041c4:
	bsr.w sub_20566e
	tst.b $2c(a0)
	bmi.s loc_2041dc
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2041dc
	jsr (sub_206f7c).l
loc_2041dc:
	bsr.w sub_205524
	rts
dat_2041e2:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2041f0:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204214
	move.w $30(a0),d0
	beq.s loc_204206
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204214
loc_204206:
	btst.b #$6,$2c(a0)
	bne.s loc_204214
	jsr (sub_203ab4).l
loc_204214:
	tst.b ($ff151f).l
	beq.s loc_204258
	tst.w $32(a0)
	beq.s loc_204258
	subq.w #$1,$32(a0)
	bne.s loc_204258
	tst.b ($ff1520).l
	bne.s loc_204250
	tst.b ($ff1958).l
	bne.s loc_204250
	tst.b ($ff152e).l
	bne.s loc_20424a
	move.w #$e,d0
	jsr (sub_205c7e).l
loc_20424a:
	jsr (sub_201a60).l
loc_204250:
	move.b #$0,($ff151f).l
loc_204258:
	tst.b ($ff1520).l
	beq.s loc_2042ae
	tst.w $34(a0)
	beq.s loc_2042ae
	subq.w #$1,$34(a0)
	bne.s loc_2042ae
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042a6
	tst.b ($ff1958).l
	bne.s loc_2042a6
	tst.b ($ff152e).l
	bne.s loc_2042a0
	move.w #$e,d0
	jsr (sub_205c7e).l
loc_2042a0:
	jsr (sub_201a60).l
loc_2042a6:
	move.b #$0,($ff1520).l
loc_2042ae:
	rts

sub_2042b0:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2042ca:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2042d6
loc_2042d4:
	rts
loc_2042d6:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2042e8
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2042d4
loc_2042e8:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20432c
	bset.b #$6,$22(a0)
	bne.s loc_2042d4
	bsr.w sub_205f82
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2042d4
	bra.s loc_204364
loc_20432c:
	tst.w $12(a0)
	beq.s loc_204334
	bpl.s loc_2042d4
loc_204334:
	bclr.b #$6,$22(a0)
	beq.s loc_2042d4
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2042d4
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204364
	move.w #$f000,$12(a0)
loc_204364:
	jsr (sub_207bce).l
	bne.s loc_204378
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204378:
	rts

sub_20437a:
	move.b ($ff1522).l,($ff1546).l
	move.w $8(a0),($ff1548).l
	move.w $c(a0),($ff154a).l
	move.w $14(a0),($ff1564).l
	move.w $10(a0),($ff1566).l
	move.w $12(a0),($ff1568).l
	move.b $22(a0),($ff154c).l
	bclr.b #$3,($ff154c).l
	bclr.b #$6,($ff154c).l
	move.b ($f64d).w,($ff1562).l
	move.w ($f72e).w,($ff154e).l
	move.w ($f700).w,($ff1550).l
	move.w ($f704).w,($ff1552).l
	move.w ($f708).w,($ff1554).l
	move.w ($f70c).w,($ff1556).l
	move.w ($f710).w,($ff1558).l
	move.w ($f714).w,($ff155a).l
	move.w ($f718).w,($ff155c).l
	move.w ($f71c).w,($ff155e).l
	move.w ($f648).w,($ff1560).l
	move.b ($f64d).w,($ff1562).l
	move.b ($f64e).w,($ff1563).l
	move.w ($ff1512).l,($ff1528).l
	move.b ($ff150d).l,($ff1545).l
	move.l ($ff1514).l,d0
	cmpi.l #$50000,d0
	bcs.s loc_204454
	move.l #$50000,d0
loc_204454:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204466:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20448c
	tst.b ($ff152e).l
	beq.s loc_204482
	cmpi.b #$2,($ff152e).l
	bne.s loc_20448c
loc_204482:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20453c
loc_20448c:
	tst.b $2a(a0)
	bne.w loc_20454a
	tst.b ($f784).w
	beq.w loc_20454a
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044aa
	neg.w d0
loc_2044aa:
	tst.w ($f786).w
	bne.s loc_2044b6
	move.w #$1,($f786).w
loc_2044b6:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2044cc
	move.b #$1,($ff1502).l
	bra.w loc_205c7a
loc_2044cc:
	cmpi.w #$d2,d1
	bcs.s loc_204520
	cmpi.b #$2,($ff1522).l
	beq.s loc_20451e
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2044f6
	move.w #$82,d0
	jsr (sub_205c7e).l
	moveq #$0,d0
loc_2044f6:
	add.b ($f784).w,d0
	bpl.s loc_204500
	moveq #$0,d0
	bra.s loc_204508
loc_204500:
	cmpi.b #$3,d0
	bcs.s loc_204508
	moveq #$2,d0
loc_204508:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20437a
	move.b #$2,($ff1522).l
loc_20451e:
	rts
loc_204520:
	cmpi.w #$5a,d1
	bcc.s loc_204538
	cmp.w d2,d0
	bcc.w loc_203fb2
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204538:
	cmp.w d2,d0
	bcc.s loc_20454a
loc_20453c:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20454a:
	rts
	bsr.w sub_203eec
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20457c
	tst.b ($ff195b).l
	beq.s loc_20456a
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045a6
	bra.s loc_204572
loc_20456a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045a6
loc_204572:
	bsr.w sub_204e0e
	jmp (sub_2039fc).l
loc_20457c:
	bsr.w sub_204654
	bsr.w sub_204466
	bsr.w sub_204ef8
	bsr.w sub_205024
	bsr.w sub_2046c8
	bsr.w sub_204e7a
	bsr.w sub_204e0e
	jsr (sub_203a5e).l
	bsr.w sub_200b66
	bsr.w sub_2050a2
loc_2045a6:
	rts
	tst.b ($f7c7).w
	bne.s loc_2045c2
	cmpi.b #$15,$1c(a0)
	beq.s loc_2045c2
	tst.w $12(a0)
	bmi.s loc_2045c2
	move.b #$0,$1c(a0)
loc_2045c2:
	bsr.w sub_204654
	bsr.w sub_204466
	bsr.w sub_204fe2
	bsr.w sub_204d2e
	bsr.w sub_204e0e
	jsr (sub_2039fc).l
	btst.b #$6,$22(a0)
	beq.s loc_2045ea
	subi.w #$28,$12(a0)
loc_2045ea:
	bsr.w sub_2050ec
	bsr.w sub_205110
	rts
	bsr.w sub_204654
	bsr.w sub_204466
	bsr.w sub_204ef8
	bsr.w sub_205060
	bsr.w sub_204b68
	bsr.w sub_204e0e
	tst.b $2a(a0)
	bne.s loc_204618
	jsr (sub_203a5e).l
loc_204618:
	bsr.w sub_200b66
	bsr.w sub_2050a2
	rts
	bsr.w sub_204654
	bsr.w sub_204466
	bsr.w sub_204fe2
	bsr.w sub_204d2e
	bsr.w sub_204e0e
	jsr (sub_2039fc).l
	btst.b #$6,$22(a0)
	beq.s loc_20464a
	subi.w #$28,$12(a0)
loc_20464a:
	bsr.w sub_2050ec
	bsr.w sub_205110
	rts

sub_204654:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2046c0
	tst.w ($ff1506).l
	bne.s loc_2046c0
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2046c2).l,a2
loc_204688:
	move.b (a2)+,d0
	bmi.s loc_204698
	cmp.b d0,d1
	bne.s loc_204688
	bset.b #$1,$2c(a0)
	rts
loc_204698:
	bclr.b #$1,$2c(a0)
	beq.s loc_2046c0
	tst.w $12(a0)
	bpl.s loc_2046c0
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2046c0
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046c0
	neg.w $10(a0)
loc_2046c0:
	rts
dat_2046c2:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2046c8:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2049f2
	tst.w $3e(a0)
	bne.w loc_2049a2
	btst.b #$2,($f602).w
	beq.s loc_2046f0
	bsr.w sub_204a82
loc_2046f0:
	btst.b #$3,($f602).w
	beq.s loc_2046fc
	bsr.w sub_204af8
loc_2046fc:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049a2
	tst.w $14(a0)
	beq.s loc_20471c
	tst.b $2a(a0)
	beq.w loc_2049a2
	bra.s loc_204728
loc_20471c:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204728:
	btst.b #$3,$22(a0)
	beq.s loc_20477a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2047d2
	cmpi.b #$1e,$0(a1)
	bne.s loc_20475a
	move.b #$0,$1c(a0)
	bra.w loc_2049a2
loc_20475a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2047b6
	cmp.w d2,d1
	bge.s loc_2047a4
	bra.s loc_2047d2
loc_20477a:
	jsr (sub_206ce0).l
	cmpi.w #$c,d1
	blt.s loc_2047d2
	move.w #$ab,d0
	jsr (sub_202342).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047ae
loc_2047a4:
	btst.b #$0,$22(a0)
	bne.s loc_2047be
	bra.s loc_2047c8
loc_2047ae:
	cmpi.b #$3,$37(a0)
	bne.s loc_2047d2
loc_2047b6:
	btst.b #$0,$22(a0)
	bne.s loc_2047c8
loc_2047be:
	move.b #$32,$1c(a0)
	bra.w loc_2049a2
loc_2047c8:
	move.b #$6,$1c(a0)
	bra.w loc_2049a2
loc_2047d2:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2047e6
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2047e6:
	btst.b #$7,($f788).w
	bne.w loc_2048ea
	btst.b #$6,($f788).w
	bne.w loc_20490a
	btst.b #$1,($f602).w
	bne.w loc_20490a
	andi.b #$f,($f788).w
	beq.s loc_20481e
	btst.b #$0,($f603).w
	beq.s loc_204832
	bset.b #$7,($f788).w
	bra.w loc_2049c6
loc_20481e:
	btst.b #$0,($f603).w
	beq.w loc_204832
	move.b #$1,($f788).w
	bra.w loc_2049c6
loc_204832:
	btst.b #$0,($f602).w
	beq.s loc_2048ae
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204890
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204862
	asr.w #$1,d2
	sub.w d2,d1
loc_204862:
	btst.b #$0,$22(a0)
	beq.s loc_20486e
	neg.w d0
	neg.w d1
loc_20486e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204884
	cmp.w d0,d1
	ble.s loc_20488a
	bra.s loc_204888
loc_204884:
	cmp.w d1,d0
	ble.s loc_20488a
loc_204888:
	move.w d1,d0
loc_20488a:
	move.w d0,$14(a0)
	rts
loc_204890:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048aa
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202342).l
loc_2048aa:
	bra.w loc_2049c6
loc_2048ae:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2048ce
	move.w #$ab,d0
	jsr (sub_202342).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20490a
loc_2048ce:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202342).l
	bra.w loc_2049a2
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2048ea:
	btst.b #$0,($f602).w
	beq.s loc_20490a
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2049c6
	addq.w #$2,($f73e).w
	bra.w loc_2049c6
loc_20490a:
	btst.b #$6,($f788).w
	bne.w loc_204986
	andi.b #$f,($f788).w
	beq.s loc_20492e
	btst.b #$1,($f603).w
	beq.s loc_204940
	bset.b #$6,($f788).w
	bra.w loc_2049c6
loc_20492e:
	btst.b #$1,($f603).w
	beq.s loc_204940
	move.b #$1,($f788).w
	bra.w loc_2049c6
loc_204940:
	btst.b #$1,($f602).w
	beq.s loc_2049a2
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204984
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204984
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204976
	neg.w $14(a0)
loc_204976:
	move.w #$9c,d0
	jsr (sub_202342).l
	bsr.w sub_204ea2
loc_204984:
	bra.s loc_2049c6
loc_204986:
	btst.b #$1,($f602).w
	beq.s loc_2049a2
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2049c6
	subq.w #$2,($f73e).w
	bra.s loc_2049c6
loc_2049a2:
	cmpi.w #$60,($f73e).w
	bne.s loc_2049bc
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2049c6
	move.b #$0,($f788).w
	bra.s loc_2049c6
loc_2049bc:
	bcc.s loc_2049c2
	addq.w #$4,($f73e).w
loc_2049c2:
	subq.w #$2,($f73e).w
loc_2049c6:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2049f2
	move.w $14(a0),d0
	beq.s loc_2049f2
	bmi.s loc_2049e6
	sub.w d5,d0
	bcc.s loc_2049e0
	move.w #$0,d0
loc_2049e0:
	move.w d0,$14(a0)
	bra.s loc_2049f2
loc_2049e6:
	add.w d5,d0
	bcc.s loc_2049ee
	move.w #$0,d0
loc_2049ee:
	move.w d0,$14(a0)
loc_2049f2:
	move.b $26(a0),d0
	jsr (sub_200766).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a10:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a80
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a80
	bmi.s loc_204a28
	neg.w d1
loc_204a28:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206ba0
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a80
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a7c
	cmpi.b #$40,d0
	beq.s loc_204a6a
	cmpi.b #$80,d0
	beq.s loc_204a64
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a64:
	sub.w d1,$12(a0)
	rts
loc_204a6a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a7c:
	add.w d1,$12(a0)
loc_204a80:
	rts

sub_204a82:
	tst.b $2a(a0)
	bne.s loc_204af6
	move.w $14(a0),d0
	beq.s loc_204a90
	bpl.s loc_204ac0
loc_204a90:
	bset.b #$0,$22(a0)
	bne.s loc_204aa4
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204aa4:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204ab4
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204ab4
	move.w d1,d0
loc_204ab4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ac0:
	sub.w d4,d0
	bcc.s loc_204ac8
	move.w #$ff80,d0
loc_204ac8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204af6
	cmpi.w #$400,d0
	blt.s loc_204af6
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202342).l
loc_204af6:
	rts

sub_204af8:
	tst.b $2a(a0)
	bne.s loc_204b66
	move.w $14(a0),d0
	bmi.s loc_204b30
	bclr.b #$0,$22(a0)
	beq.s loc_204b18
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b18:
	cmp.w d6,d0
	bge.s loc_204b24
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b24
	move.w d6,d0
loc_204b24:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b30:
	add.w d4,d0
	bcc.s loc_204b38
	move.w #$80,d0
loc_204b38:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b66
	cmpi.w #$fc00,d0
	bgt.s loc_204b66
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202342).l
loc_204b66:
	rts

sub_204b68:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204cb2
	tst.w $3e(a0)
	bne.s loc_204ba0
	btst.b #$2,($f602).w
	beq.s loc_204b94
	bsr.w sub_204ce8
loc_204b94:
	btst.b #$3,($f602).w
	beq.s loc_204ba0
	bsr.w sub_204d0c
loc_204ba0:
	tst.b $2a(a0)
	beq.w loc_204c4a
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204bc0
	asr.w #$1,d2
	sub.w d2,d1
loc_204bc0:
	btst.b #$0,$22(a0)
	beq.s loc_204bcc
	neg.w d0
	neg.w d1
loc_204bcc:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204be2
	cmp.w d0,d1
	ble.s loc_204be8
	bra.s loc_204be6
loc_204be2:
	cmp.w d1,d0
	ble.s loc_204be8
loc_204be6:
	move.w d1,d0
loc_204be8:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c1c
	rts
loc_204bf6:
	move.w #$ab,d0
	jsr (sub_202342).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204c7c
loc_204c1c:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204bf6
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202342).l
	btst.b #$0,$22(a0)
	bne.s loc_204c42
	bsr.w sub_204d0c
	bra.s loc_204c4a
loc_204c42:
	bsr.w sub_204ce8
	bra.s loc_204c4a
	dc.b $4e,$75
loc_204c4a:
	move.w $14(a0),d0
	beq.s loc_204c6c
	bmi.s loc_204c60
	sub.w d5,d0
	bcc.s loc_204c5a
	move.w #$0,d0
loc_204c5a:
	move.w d0,$14(a0)
	bra.s loc_204c6c
loc_204c60:
	add.w d5,d0
	bcc.s loc_204c68
	move.w #$0,d0
loc_204c68:
	move.w d0,$14(a0)
loc_204c6c:
	tst.w $14(a0)
	bne.s loc_204cb2
	move.w #$ab,d0
	jsr (sub_202342).l
loc_204c7c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c9c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204cac
loc_204c9c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204cac:
	move.b #$5,$1c(a0)
loc_204cb2:
	move.b $26(a0),d0
	jsr (sub_200766).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204cd6
	move.w #$1000,d1
loc_204cd6:
	cmpi.w #$f000,d1
	bge.s loc_204ce0
	move.w #$f000,d1
loc_204ce0:
	move.w d1,$10(a0)
	bra.w loc_204a10

sub_204ce8:
	move.w $14(a0),d0
	beq.s loc_204cf0
	bpl.s loc_204cfe
loc_204cf0:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204cfe:
	sub.w d4,d0
	bcc.s loc_204d06
	move.w #$ff80,d0
loc_204d06:
	move.w d0,$14(a0)
	rts

sub_204d0c:
	move.w $14(a0),d0
	bmi.s loc_204d20
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d20:
	add.w d4,d0
	bcc.s loc_204d28
	move.w #$80,d0
loc_204d28:
	move.w d0,$14(a0)
	rts

sub_204d2e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d68
	tst.w ($ff1506).l
	bne.s loc_204d68
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d60
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d60
	rts
loc_204d60:
	btst.b #$1,$2c(a0)
	bne.s loc_204d98
loc_204d68:
	btst.b #$2,($f602).w
	beq.s loc_204d82
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204d82
	move.w d1,d0
loc_204d82:
	btst.b #$3,($f602).w
	beq.s loc_204d98
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d98
	move.w d6,d0
loc_204d98:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204dae
	bcc.s loc_204daa
	addq.w #$4,($f73e).w
loc_204daa:
	subq.w #$2,($f73e).w
loc_204dae:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204ddc
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204ddc
	bmi.s loc_204dd0
	sub.w d1,d0
	bcc.s loc_204dca
	move.w #$0,d0
loc_204dca:
	move.w d0,$10(a0)
	rts
loc_204dd0:
	sub.w d1,d0
	bcs.s loc_204dd8
	move.w #$0,d0
loc_204dd8:
	move.w d0,$10(a0)
loc_204ddc:
	rts
	.incbin 19934, 48

sub_204e0e:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e62
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e3c
	addi.w #$38,d0
loc_204e3c:
	cmp.w d1,d0
	bls.s loc_204e62
loc_204e40:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e50
	rts
loc_204e50:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_20720e
	move.b #$6,$24(a0)
	rts
loc_204e62:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e40

sub_204e7a:
	tst.b ($f7ca).w
	bne.s loc_204ea0
	move.w $14(a0),d0
	bpl.s loc_204e88
	neg.w d0
loc_204e88:
	cmpi.w #$80,d0
	bcs.s loc_204ea0
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ea0
	btst.b #$1,($f602).w
	bne.s sub_204ea2
loc_204ea0:
	rts

sub_204ea2:
	btst.b #$2,$22(a0)
	beq.s loc_204eac
	bra.s loc_204edc
loc_204eac:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ecc
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204edc
loc_204ecc:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204edc:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204ef6
	cmpi.w #$200,$14(a0)
	bcc.s loc_204ef6
	move.w #$200,$14(a0)
loc_204ef6:
	rts

sub_204ef8:
	tst.b $2a(a0)
	beq.s loc_204f00
	rts
loc_204f00:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f12
	tst.w $14(a0)
	beq.w loc_204fd8
loc_204f12:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204fd8
	btst.b #$3,$22(a0)
	beq.s loc_204f2e
	jsr (sub_205c04).l
	beq.s loc_204f5e
loc_204f2e:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206c0a
	cmpi.w #$6,d1
	blt.w loc_204fd8
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f54
	move.w #$380,d2
loc_204f54:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f5e:
	jsr (sub_200766).l
	muls.w d2,d1
	asr.l #$8,d1
	add.w d1,$10(a0)
	muls.w d2,d0
	asr.l #$8,d0
	add.w d0,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	addq.l #$4,a7
	move.b #$1,$3c(a0)
	clr.b $38(a0)
	clr.b ($f788).w
	move.w #$92,d0
	jsr (sub_202342).l
	btst.b #$2,$22(a0)
	bne.s loc_204fda
	tst.b ($ff195b).l
	beq.s loc_204fbc
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204fcc
loc_204fbc:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204fcc:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204fd8:
	rts
loc_204fda:
	bset.b #$4,$22(a0)
	rts

sub_204fe2:
	tst.b $3c(a0)
	beq.s loc_205014
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204ff8
	move.w #$fe00,d1
loc_204ff8:
	cmp.w $12(a0),d1
	ble.s loc_205012
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205012
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205012:
	rts
loc_205014:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205022
	move.w #$f040,$12(a0)
loc_205022:
	rts

sub_205024:
	tst.b $2a(a0)
	bne.s loc_20505e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20505e
	move.b $26(a0),d0
	jsr (sub_200766).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20505e
	bmi.s loc_20505a
	tst.w d0
	beq.s loc_205058
	add.w d0,$14(a0)
loc_205058:
	rts
loc_20505a:
	add.w d0,$14(a0)
loc_20505e:
	rts

sub_205060:
	tst.b $2a(a0)
	bne.s loc_2050a0
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050a0
	move.b $26(a0),d0
	jsr (sub_200766).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205096
	tst.w d0
	bpl.s loc_205090
	asr.l #$2,d0
loc_205090:
	add.w d0,$14(a0)
	rts
loc_205096:
	tst.w d0
	bmi.s loc_20509c
	asr.l #$2,d0
loc_20509c:
	add.w d0,$14(a0)
loc_2050a0:
	rts

sub_2050a2:
	nop
	tst.b $38(a0)
	bne.s loc_2050e4
	tst.w $3e(a0)
	bne.s loc_2050e6
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2050e4
	move.w $14(a0),d0
	bpl.s loc_2050c6
	neg.w d0
loc_2050c6:
	cmpi.w #$280,d0
	bcc.s loc_2050e4
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2050e4:
	rts
loc_2050e6:
	subq.w #$1,$3e(a0)
	rts

sub_2050ec:
	btst.b #$1,$2c(a0)
	bne.s loc_20510e
	move.b $26(a0),d0
	beq.s loc_20510e
	bpl.s loc_205104
	addq.b #$2,d0
	bcc.s loc_205102
	moveq #$0,d0
loc_205102:
	bra.s loc_20510a
loc_205104:
	subq.b #$2,d0
	bcc.s loc_20510a
	moveq #$0,d0
loc_20510a:
	move.b d0,$26(a0)
loc_20510e:
	rts

sub_205110:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009fe).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2051f4
	cmpi.b #$80,d0
	beq.w loc_205256
	cmpi.b #$c0,d0
	beq.w loc_2052b2
	bsr.w sub_206f20
	tst.w d1
	bpl.s loc_205162
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205162:
	bsr.w sub_206d82
	tst.w d1
	bpl.s loc_205174
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205174:
	bsr.w sub_206c32
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2051f2
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205192
	cmp.b d2,d0
	blt.s loc_2051f2
loc_205192:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205314
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2051d0
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2051c2
	asr.w $12(a0)
	bra.s loc_2051e4
loc_2051c2:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2051d0:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2051e4
	move.w #$fc0,$12(a0)
loc_2051e4:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2051f2
	neg.w $14(a0)
loc_2051f2:
	rts
loc_2051f4:
	bsr.w sub_206f20
	tst.w d1
	bpl.s loc_20520e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20520e:
	bsr.w sub_206dda
	tst.w d1
	bpl.s loc_205228
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205226
	move.w #$0,$12(a0)
loc_205226:
	rts
loc_205228:
	tst.w $12(a0)
	bmi.s loc_205254
	bsr.w sub_206c32
	tst.w d1
	bpl.s loc_205254
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205314
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205254:
	rts
loc_205256:
	bsr.w sub_206f20
	tst.w d1
	bpl.s loc_205268
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205268:
	bsr.w sub_206d82
	tst.w d1
	bpl.s loc_20527a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20527a:
	bsr.w sub_206dda
	tst.w d1
	bpl.s loc_2052b0
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20529a
	move.w #$0,$12(a0)
	rts
loc_20529a:
	move.b d3,$26(a0)
	bsr.w sub_205386
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052b0
	neg.w $14(a0)
loc_2052b0:
	rts
loc_2052b2:
	bsr.w sub_206d82
	tst.w d1
	bpl.s loc_2052cc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2052cc:
	bsr.w sub_206dda
	tst.w d1
	bpl.s loc_2052e6
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2052e4
	move.w #$0,$12(a0)
loc_2052e4:
	rts
loc_2052e6:
	tst.w $12(a0)
	bmi.s loc_205312
	bsr.w sub_206c32
	tst.w d1
	bpl.s loc_205312
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205314
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205312:
	rts

sub_205314:
	btst.b #$4,$22(a0)
	beq.s loc_20531e
	nop
loc_20531e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205378
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205358
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205368
loc_205358:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205368:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202342).l
loc_205378:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205386:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203a5e).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2053c0
	subi.w #$20,$12(a0)
loc_2053c0:
	jsr (sub_206736).l
	bsr.w sub_2053dc
	bsr.w sub_204e0e
	bsr.w sub_2042b0
	bsr.w sub_20566e
	jmp (sub_203ab4).l

sub_2053dc:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_20720e
	bsr.w sub_205110
	btst.b #$1,$22(a0)
	bne.s loc_205416
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205416:
	rts
	bsr.w sub_205430
	jsr (sub_2039fc).l
	bsr.w sub_2042b0
	bsr.w sub_20566e
	jmp (sub_203ab4).l

sub_205430:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_20549e
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205464
	clr.b ($ff1508).l
loc_205464:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20547e
	tst.b ($ff0f01).l
	beq.s loc_20547e
	move.b #$0,($ff1508).l
	bra.s loc_205498
loc_20547e:
	jsr (sub_207bce).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_20549e
loc_205498:
	move.w #$3c,$3a(a0)
loc_20549e:
	rts
	tst.w $3a(a0)
	beq.w loc_205522
	subq.w #$1,$3a(a0)
	bne.w loc_205522
	move.w #$1,($ff1502).l
	jsr (sub_2022da).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022f6).l
	bsr.w sub_2079bc
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2054f0
	cmpi.b #$1,($ff152e).l
	bne.s loc_2054f0
	bclr.b #$1,($ff151c).l
loc_2054f0:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20551e
	cmpi.b #$1,($ff152e).l
	bne.s loc_205518
	tst.b ($ff158e).l
	beq.s loc_20551e
	move.b #$1,($ff1522).l
	bra.s loc_20551e
loc_205518:
	clr.b ($ff1522).l
loc_20551e:
	bra.w sub_205c7e
loc_205522:
	rts

sub_205524:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20554c
	cmpi.b #$5,($ff1506).l
	beq.s loc_20554c
	cmpi.b #$2,($ff1506).l
	beq.s loc_20554c
	tst.b ($ff1506).l
	bne.w loc_20560e
loc_20554c:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20558a
	tst.b ($ff1506).l
	bne.w loc_205610
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205610
	bra.s loc_205592
loc_20558a:
	cmp.b ($f7af).w,d1
	beq.w loc_205610
loc_205592:
	cmp.b ($f7ac).w,d1
	beq.s loc_2055c2
	cmp.b ($f7ad).w,d1
	beq.s loc_2055a6
	bclr.b #$6,$1(a0)
	rts
loc_2055a6:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205628
	btst.b #$1,$22(a0)
	beq.s loc_2055c2
	bclr.b #$6,$1(a0)
	rts
loc_2055c2:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2055d4
	bclr.b #$6,$1(a0)
	rts
loc_2055d4:
	cmpi.b #$e0,d2
	bcs.s loc_2055e2
	bset.b #$6,$1(a0)
	rts
loc_2055e2:
	btst.b #$6,$1(a0)
	bne.s loc_2055fe
	move.b $26(a0),d1
	beq.s loc_20560e
	cmpi.b #$80,d1
	bhi.s loc_20560e
	bset.b #$6,$1(a0)
	rts
loc_2055fe:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20560e
	bclr.b #$6,$1(a0)
loc_20560e:
	rts
loc_205610:
	btst.b #$2,$22(a0)
	bne.s loc_205622
	move.w #$9c,d0
	jsr (sub_202342).l
loc_205622:
	jmp (sub_204ea2).l
loc_205628:
	tst.w $12(a0)
	bmi.s loc_20566c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205660
	cmpi.w #$38,d1
	bcs.s loc_205658
	cmpi.w #$80,d1
	bcs.s loc_20566c
loc_205650:
	bclr.b #$6,$1(a0)
	rts
loc_205658:
	bset.b #$6,$1(a0)
	rts
loc_205660:
	cmpi.w #$38,d1
	bcs.s loc_205650
	cmpi.w #$80,d1
	bcc.s loc_205658
loc_20566c:
	rts

sub_20566e:
	lea (dat_20595e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205690
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205690:
	bsr.w sub_205900
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205708
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2056d6
	move.b d0,$1e(a0)

sub_2056ba:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2056ce
	bpl.s loc_2056ce
	cmpi.b #$fd,d0
	bge.s loc_2056d8
loc_2056ce:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2056d6:
	rts
loc_2056d8:
	addq.b #$1,d0
	bne.s loc_2056e8
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2056ce
loc_2056e8:
	addq.b #$1,d0
	bne.s loc_2056fc
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2056ce
loc_2056fc:
	addq.b #$1,d0
	bne.s loc_205706
	move.b $2(a1,d1.w),$1c(a0)
loc_205706:
	rts
loc_205708:
	subq.b #$1,$1e(a0)
	bpl.s loc_2056d6
	addq.b #$1,d0
	bne.w loc_2057c2
	tst.b ($ff195b).l
	bne.w loc_20588a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205730
	not.b d0
loc_205730:
	btst.b #$1,$2c(a0)
	bne.s loc_20573e
	addi.b #$10,d0
	bra.s loc_205740
loc_20573e:
	addq.b #$8,d0
loc_205740:
	bpl.s loc_205744
	moveq #$3,d1
loc_205744:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205836
	move.w $14(a0),d2
	bpl.s loc_205762
	neg.w d2
loc_205762:
	btst.b #$1,$2c(a0)
	beq.s loc_20577a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b60).l,a1
	bra.s loc_2057a4
loc_20577a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b3a).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057a4
	lea (dat_2059de).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057a4
	lea (dat_2059d6).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057a4:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057b2
	moveq #$0,d2
loc_2057b2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2056ba
	add.b d3,$1a(a0)
	rts
loc_2057c2:
	addq.b #$1,d0
	bne.s loc_205832
	move.w $14(a0),d2
	bpl.s loc_2057ce
	neg.w d2
loc_2057ce:
	lea (dat_205abc).l,a1
	tst.b ($ff195b).l
	bne.s loc_20580c
	lea (dat_2059ee).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205800
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20580c
	lea (dat_205b68).l,a1
	bra.s loc_20580c
loc_205800:
	cmpi.w #$600,d2
	bcc.s loc_20580c
	lea (dat_2059e6).l,a1
loc_20580c:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205816
	moveq #$0,d2
loc_205816:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056ba
loc_205832:
	addq.b #$1,d0
	bne.s loc_205876
loc_205836:
	move.w $14(a0),d2
	bmi.s loc_20583e
	neg.w d2
loc_20583e:
	addi.w #$800,d2
	bpl.s loc_205846
	moveq #$0,d2
loc_205846:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205ace).l,a1
	tst.b ($ff195b).l
	bne.s loc_205860
	lea (dat_2059f6).l,a1
loc_205860:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056ba
loc_205876:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20588a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20589c
	not.b d0
loc_20589c:
	addi.b #$10,d0
	bpl.s loc_2058a4
	moveq #$0,d1
loc_2058a4:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2058d2
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2057c2
loc_2058d2:
	move.w $14(a0),d2
	bpl.s loc_2058da
	neg.w d2
loc_2058da:
	lea (dat_205ab6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058ec
	lea (dat_205ab0).l,a1
loc_2058ec:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058f6
	moveq #$0,d2
loc_2058f6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2056ba

sub_205900:
	tst.b ($ff195b).l
	beq.s loc_20590c
	move.b dat_20590e(pc,d0.w),d0
loc_20590c:
	rts
dat_20590e:
	.incbin 22798, 80
dat_20595e:
	.incbin 22878, 120
dat_2059d6:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2059de:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2059e6:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2059ee:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2059f6:
	.incbin 23030, 186
dat_205ab0:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205ab6:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205abc:
	.incbin 23228, 18
dat_205ace:
	.incbin 23246, 108
dat_205b3a:
	.incbin 23354, 38
dat_205b60:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b68:
	.incbin 23400, 56

sub_205ba0:
	tst.b (a0)
	beq.w loc_205c02
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c02
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c02
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205bd4:
	moveq #$0,d2
	move.b (a2)+,d2
	move.w d2,d0
	lsr.b #$4,d0
	lsl.w #$8,d2
	move.b (a2)+,d2
	andi.w #$fff,d2
	lsl.l #$5,d2
	lea (dat_220000).l,a1
	adda.l d2,a1
loc_205bee:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205bee
	dbf d1,loc_205bd4
loc_205c02:
	rts

sub_205c04:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c78
	move.w #$98,d0
	jsr (sub_202342).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2009fe).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205c66
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c66:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c78:
	rts
loc_205c7a:
	move.w #$e,d0

sub_205c7e:
	cmpi.w #$67,d0
	bne.s loc_205c8c
	move.b #$1,($ff1958).l
loc_205c8c:
	move.w d0,($a12010).l
loc_205c92:
	move.w ($a12020).l,d0
	beq.s loc_205c92
	cmp.w ($a12020).l,d0
	bne.s loc_205c92
	move.w #$0,($a12010).l
loc_205caa:
	move.w ($a12020).l,d0
	bne.s loc_205caa
	move.w ($a12020).l,d0
	bne.s loc_205caa
	rts
	dc.b $00,$00

sub_205cbe:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205cda
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205cda:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d1a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d1c
loc_205cf6:
	move.b d0,d1
	andi.b #$1f,d0
	move.b d0,$1a(a0)
	move.b $22(a0),d0
	rol.b #$3,d1
	eor.b d0,d1
	andi.b #$3,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	addq.b #$1,$1b(a0)
loc_205d1a:
	rts
loc_205d1c:
	addq.b #$1,d0
	bne.s loc_205d2c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205cf6
loc_205d2c:
	addq.b #$1,d0
	bne.s loc_205d40
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205cf6
loc_205d40:
	addq.b #$1,d0
	bne.s loc_205d4a
	move.b $2(a1,d1.w),$1c(a0)
loc_205d4a:
	addq.b #$1,d0
	bne.s loc_205d52
	addq.b #$2,$24(a0)
loc_205d52:
	addq.b #$1,d0
	bne.s loc_205d60
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d60:
	addq.b #$1,d0
	bne.s loc_205d68
	addq.b #$2,$25(a0)
loc_205d68:
	rts
	.incbin 23914, 536

sub_205f82:
	rts
	.incbin 24452, 116

sub_205ff8:
	tst.b $25(a0)
	bne.s loc_206028
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207bce).l
	bne.s loc_206028
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206028:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206038(pc,d0.w),d0
	jmp dat_206038(pc,d0.w)
dat_206038:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206060
	andi.b #$7f,$2(a0)
loc_206060:
	move.l #$23bd52,$4(a0)
	bsr.s sub_205ff8
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_20608e
	move.w #$100,$1c(a0)
loc_20608e:
	lea (dat_23bd3e).l,a1
	bsr.w sub_205cbe
	jmp (sub_203ab4).l
	tst.b $25(a0)
	beq.s loc_2060aa
	jmp (sub_203b60).l
loc_2060aa:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2060cc(pc,d0.w),d0
	jsr dat_2060cc(pc,d0.w)
	jmp (sub_203ab4).l
dat_2060cc:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_2060fa
	andi.b #$7f,$2(a0)
loc_2060fa:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_206120
	bsr.w sub_20618c
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206182
loc_206120:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_20617e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206168
	bsr.w sub_20618c
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2061b2
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206168:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206182
loc_20617e:
	addq.w #$2,$c(a0)
loc_206182:
	lea (dat_2336bc).l,a1
	bra.w sub_205cbe

sub_20618c:
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d0
	lea ($ff1200).l,a1
	lea $2(a1,d0.w),a1
	rts

sub_2061b2:
	andi.w #$3f,d0
	add.w d0,d0
	add.w d0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	lsl.w #$8,d1
	add.w d1,d0
	lea ($ff1600).l,a1
	rts
	move.w #$26d7,$2(a0)
	move.b #$2,$1c(a0)
	bra.s loc_206182
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206182
	.incbin 25070, 460
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2063c8(pc,d0.w),d1
	jmp dat_2063c8(pc,d1.w)
dat_2063c8:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23bb66,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_20640a
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_20640a
	addq.b #$2,$24(a0)
loc_20640a:
	rts
	.incbin 25612, 120
	tst.b ($ff1521).l
	bne.s loc_206492
	jmp (sub_203b60).l
loc_206492:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2064b0
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2064b0
	andi.b #$7f,$2(a0)
loc_2064b0:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_2064c2
	subq.b #$4,d1
loc_2064c2:
	lsl.b #$3,d1
	move.b d1,d2
	add.b d1,d1
	add.b d2,d1
	addq.b #$4,d1
	sub.b d1,d0
	move.b $30(a0),d1
	sub.b d1,d0
	addq.b #$4,d1
	cmpi.b #$18,d1
	bcs.s loc_2064de
	moveq #$0,d1
loc_2064de:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23ba3e).l,a1
	jsr (sub_205cbe).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_206516
	rts
loc_206516:
	cmp.b $24(a0),d0
	beq.s loc_20652c
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_20652c:
	jmp (sub_203ab4).l
loc_206532:
	bclr.b #$7,($ff156b).l
	beq.s loc_206580
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206582(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206556:
	move.l (a1)+,(a2)+
	dbf d0,loc_206556
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206580:
	rts
dat_206582:
	.incbin 25986, 436

sub_206736:
	bsr.s sub_20673a
loc_206738:
	rts

sub_20673a:
	tst.b ($f7a7).w
	bne.s loc_206738
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200ed4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_20679a
	bne.w loc_20698a
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200ed4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_20679a
	bne.w loc_20698a
	rts

sub_20679a:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2067b2
loc_2067ac:
	add.b ($ff156a).l,d1
loc_2067b2:
	add.w d1,d1
	move.w dat_2067d6(pc,d1.w),d1
	lea dat_2067d6(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2067c2:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2067d2
	addq.w #$2,d1
	dbf d6,loc_2067c2
	moveq #$0,d0
	rts
loc_2067d2:
	moveq #$1,d0
	rts
dat_2067d6:
	.incbin 26582, 436
loc_20698a:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_2069aa
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_2069aa
	move.l #$20000,d0
loc_2069aa:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_2069ba
	neg.l d0
	neg.b d1
loc_2069ba:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_206ba0).l
	tst.w d1
	bpl.s loc_2069d8
	tst.b ($ff158f).l
	beq.s loc_2069d4
	neg.w d1
loc_2069d4:
	add.w d1,$8(a0)
loc_2069d8:
	rts
loc_2069da:
	move.w ($ff1548).l,$8(a6)
	move.w ($ff154a).l,$c(a6)
	move.b ($ff154c).l,$22(a6)
	move.w ($ff1564).l,$14(a6)
	move.w ($ff1566).l,$10(a6)
	move.w ($ff1568).l,$12(a6)
	move.w ($ff1528).l,($ff1512).l
	move.b ($ff1545).l,($ff150d).l
	move.l ($ff1570).l,($ff1514).l
	move.b ($ff1562).l,($f64d).w
	move.w ($ff154e).l,($f72e).w
	move.w ($ff154e).l,($f726).w
	move.w ($ff1550).l,($f700).w
	move.w ($ff1552).l,($f704).w
	move.w ($ff1554).l,($f708).w
	move.w ($ff1556).l,($f70c).w
	move.w ($ff1558).l,($f710).w
	move.w ($ff155a).l,($f714).w
	move.w ($ff155c).l,($f718).w
	move.w ($ff155e).l,($f71c).w
	cmpi.b #$6,($ff1506).l
	bne.s loc_206a94
	move.b ($ff1593).l,($ff195b).l
loc_206a94:
	tst.b ($ff1522).l
	bpl.s loc_206aaa
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206aaa:
	rts

sub_206aac:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2069da
	move.b ($ff1523).l,($ff1522).l
	move.w ($ff1524).l,$8(a6)
	move.w ($ff1526).l,$c(a6)
	clr.w ($ff1512).l
	clr.b ($ff150d).l
	move.l ($ff152a).l,($ff1514).l
	move.b #$3b,($ff1517).l
	subq.b #$1,($ff1516).l
	move.b ($ff1543).l,($f64d).w
	move.w ($ff1530).l,($f72e).w
	move.w ($ff1530).l,($f726).w
	move.w ($ff1532).l,($f700).w
	move.w ($ff1534).l,($f704).w
	move.w ($ff1536).l,($f708).w
	move.w ($ff1538).l,($f70c).w
	move.w ($ff153a).l,($f710).w
	move.w ($ff153c).l,($f714).w
	move.w ($ff153e).l,($f718).w
	move.w ($ff1540).l,($f71c).w
	cmpi.b #$6,($ff1506).l
	bne.s loc_206b66
	move.b ($ff1591).l,($ff195b).l
loc_206b66:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206b88
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206b88:
	tst.b ($ff1522).l
	bpl.s loc_206b9e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b9e:
	rts

sub_206ba0:
	move.l $8(a0),d3
	move.l $c(a0),d2
	move.w $10(a0),d1
	ext.l d1
	asl.l #$8,d1
	add.l d1,d3
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	add.l d1,d2
	swap d2
	swap d3
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b d0,d1
	addi.b #$20,d0
	bpl.s loc_206bdc
	move.b d1,d0
	bpl.s loc_206bd6
	subq.b #$1,d0
loc_206bd6:
	addi.b #$20,d0
	bra.s loc_206be6
loc_206bdc:
	move.b d1,d0
	bpl.s loc_206be2
	addq.b #$1,d0
loc_206be2:
	addi.b #$1f,d0
loc_206be6:
	andi.b #$c0,d0
	beq.w loc_206cb6
	cmpi.b #$80,d0
	beq.w loc_206e52
	andi.b #$38,d1
	bne.s loc_206bfe
	addq.w #$8,d2
loc_206bfe:
	cmpi.b #$40,d0
	beq.w loc_206f28
	bra.w loc_206d8a

sub_206c0a:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206eb0
	cmpi.b #$80,d0
	beq.w sub_206dda
	cmpi.b #$c0,d0
	beq.w loc_206d1a

sub_206c32:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_2010bc).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_2010bc).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206c96:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206ca4
	move.b ($f768).w,d3
	exg d0,d1
loc_206ca4:
	btst.l #$0,d3
	beq.s loc_206cac
	move.b d2,d3
loc_206cac:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206cb6:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010bc).l
	move.b #$0,d2
loc_206cd2:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206cde
	move.b d2,d3
loc_206cde:
	rts

sub_206ce0:
	move.w $8(a0),d3
	move.w $c(a0),d2
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$d,d5
	jsr (sub_2010bc).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206d18
	move.b #$0,d3
loc_206d18:
	rts
loc_206d1a:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f76a).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206c96

sub_206d82:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d8a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.b #$c0,d2
	bra.w loc_206cd2
	dc.b $d6,$68,$00,$08,$34,$28,$00,$0c
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dd8
	move.b #$c0,d3
loc_206dd8:
	rts

sub_206dda:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010bc).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010bc).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206c96

sub_206e4a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e52:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010bc).l
	move.b #$80,d2
	bra.w loc_206cd2

sub_206e76:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010bc).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206eae
	move.b #$80,d3
loc_206eae:
	rts
loc_206eb0:
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.w d1,-(a7)
	move.w $c(a0),d2
	move.w $8(a0),d3
	moveq #$0,d0
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d3
	eori.w #$f,d3
	lea ($f76a).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206c96

sub_206f20:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f28:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20122c).l
	move.b #$40,d2
	bra.w loc_206cd2
	.incbin 28492, 48

sub_206f7c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206fa0
	addi.w #$c,d3
	moveq #$a,d5
loc_206fa0:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206fae:
	tst.b $1(a1)
	bpl.s loc_206fba
	move.b $20(a1),d0
	bne.s loc_206fc6
loc_206fba:
	lea $40(a1),a1
	dbf d6,loc_206fae
	moveq #$0,d0
	rts
loc_206fc6:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207364).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206fee
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206ff4
	bra.w loc_206fba
loc_206fee:
	cmp.w d4,d0
	bhi.w loc_206fba
loc_206ff4:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_20700c
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207012
	bra.w loc_206fba
loc_20700c:
	cmp.w d5,d0
	bhi.w loc_206fba
loc_207012:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207086
	cmpi.b #$c0,d1
	beq.w loc_207266
	tst.b d1
	bmi.w sub_207150
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20704a
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207048
	addq.b #$2,$24(a1)
loc_207048:
	rts
loc_20704a:
	tst.w $12(a0)
	bpl.s loc_207074
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207084
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207084
	addq.b #$4,$25(a1)
	rts
loc_207074:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207084
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207084:
	rts

sub_207086:
	tst.b ($ff1521).l
	bne.s loc_2070a0
	tst.b ($ff151f).l
	bne.s loc_2070a0
	cmpi.b #$2,$1c(a0)
	bne.w sub_207150
loc_2070a0:
	tst.b $21(a1)
	beq.s loc_2070ca
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2070c8
	bset.b #$7,$22(a1)
loc_2070c8:
	rts
loc_2070ca:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2070e2
	moveq #$6,d0
loc_2070e2:
	move.w d0,$3e(a1)
	move.w dat_207142(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2070fc
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2070fc:
	bsr.w sub_20a9d4
	move.w #$96,d0
	jsr (sub_202342).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207132
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20713a
	neg.w $12(a0)
	rts
loc_207132:
	addi.w #$100,$12(a0)
	rts
loc_20713a:
	subi.w #$100,$12(a0)
	rts
dat_207142:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207150:
	tst.b ($ff1521).l
	bne.s loc_207160
	tst.b ($ff151f).l
	beq.s loc_207164
loc_207160:
	moveq #$ffffffff,d0
	rts
loc_207164:
	nop
	tst.w $30(a0)
	bne.s loc_207160
	movea.l a1,a2

sub_20716e:
	tst.b ($ff151e).l
	bne.s loc_20719a
	tst.w ($ff1512).l
	beq.w loc_207204
	jsr (sub_207bce).l
	bne.s loc_20719a
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20719a:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2071b0
	move.b #$0,($ff156f).l
loc_2071b0:
	move.b #$4,$24(a0)
	bsr.w sub_205314
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2071e0
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2071e0:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2071ee
	neg.w $10(a0)
loc_2071ee:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207204:
	tst.w ($ff1588).l
	bne.w loc_20719a

sub_20720e:
	tst.w ($ff1906).l
	bne.s loc_207262
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205314
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202342).l
loc_207262:
	moveq #$ffffffff,d0
	rts
loc_207266:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207306
	cmpi.b #$23,d1
	beq.w loc_207306
	cmpi.b #$2e,d1
	beq.w loc_20734e
	cmpi.b #$37,d1
	beq.w loc_207306
	cmpi.b #$38,d1
	beq.w loc_20735c
	cmpi.b #$3a,d1
	beq.w loc_20734e
	cmpi.b #$3b,d1
	beq.w loc_20734e
	cmpi.b #$3c,d1
	beq.w loc_20734e
	tst.b ($f7aa).w
	beq.w loc_207304
	cmpi.b #$1,($f7aa).w
	beq.s loc_2072ce
	cmpi.b #$4,($f7aa).w
	beq.s loc_2072f0
	cmpi.b #$5,($f7aa).w
	beq.s loc_2072fe
loc_2072ce:
	cmpi.b #$3c,d1
	blt.s loc_207304
	cmpi.b #$3f,d1
	bgt.s loc_207304
	bsr.w sub_207086
	tst.b $20(a1)
	bne.s loc_2072e8
	addq.b #$3,$21(a1)
loc_2072e8:
	clr.b $20(a1)
	bra.w loc_207306
loc_2072f0:
	cmpi.b #$3f,d1
	beq.s loc_207312
	cmpi.b #$3e,d1
	beq.s loc_20730c
	bra.s loc_207304
loc_2072fe:
	cmpi.b #$3d,d1
	beq.s loc_20730c
loc_207304:
	rts
loc_207306:
	addq.b #$1,$21(a1)
	rts
loc_20730c:
	bsr.w sub_207150
	bra.s loc_207306
loc_207312:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20734c
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20734c
	neg.w $10(a0)
loc_20734c:
	rts
loc_20734e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20735a
	addq.b #$1,$21(a1)
loc_20735a:
	rts
loc_20735c:
	addq.b #$1,$21(a1)
	bra.w sub_207150
dat_207364:
	.incbin 29540, 126
loc_2073e2:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2073f8
	move.l #$4000,(dat_207572).l
	bra.s loc_207418
loc_2073f8:
	addi.l #$2000,(dat_207572).l
	cmpi.l #$80000,(dat_207572).l
	bls.s loc_207418
	move.l #$80000,(dat_207572).l
loc_207418:
	move.l (dat_207572).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20742a
	sub.l d0,$c(a0)
loc_20742a:
	btst.b #$1,($f604).w
	beq.s loc_207436
	add.l d0,$c(a0)
loc_207436:
	btst.b #$2,($f604).w
	beq.s loc_207442
	sub.l d0,$8(a0)
loc_207442:
	btst.b #$3,($f604).w
	beq.s loc_20744e
	add.l d0,$8(a0)
loc_20744e:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ed4).l
	move.w (a1),($ff194e).l
	lea (dat_207576).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207490
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20748a
	move.b #$0,d1
loc_20748a:
	move.b d1,($ff1904).l
loc_207490:
	btst.b #$7,($f605).w
	beq.s loc_2074b0
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2074aa
	add.b (a2),d1
loc_2074aa:
	move.b d1,($ff1904).l
loc_2074b0:
	moveq #$0,d1
	move.b ($ff1904).l,d1
	mulu.w #$c,d1
	move.l $4(a2,d1.w),$4(a0)
	move.w $8(a2,d1.w),$2(a0)
	move.b $3(a2,d1.w),$18(a0)
	move.b $d(a2,d1.w),$1a(a0)
	move.b $c(a2,d1.w),($ff1954).l
	move.b $b(a2,d1.w),d0
	ori.b #$4,d0
	move.b d0,$1(a0)
	move.b #$0,$1c(a0)
	btst.b #$5,($f605).w
	beq.s loc_20753c
	bsr.w sub_207bce
	bne.s loc_20753c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	mulu.w #$c,d1
	move.b $2(a2,d1.w),$0(a1)
	move.b $a(a2,d1.w),$28(a1)
	move.b $c(a2,d1.w),$29(a1)
	move.b $d(a2,d1.w),$1a(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),d0
	andi.b #$3,d0
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20753c:
	btst.b #$4,($f605).w
	beq.s loc_20756c
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20756c:
	jmp (sub_203ab4).l
dat_207572:
	dc.b $00,$00,$40,$00
dat_207576:
	.incbin 30070, 814
loc_2078a4:
	ori.b #$0,d0
	move.l d1,-(a0)
	.incbin 30890, 274

sub_2079bc:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2079ca:
	clr.l (a2)+
	dbf d0,loc_2079ca
	rts

sub_2079d2:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2079e0(pc,d0.w),d0
	jmp dat_2079e0(pc,d0.w)
dat_2079e0:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207c80).l,a0
	movea.l a0,a1
	adda.w (a0),a0
	move.l a0,($f770).w
	move.l a0,($f774).w
	adda.w $2(a1),a1
	move.l a1,($f778).w
	move.l a1,($f77c).w
	lea ($ff1200).l,a2
	move.w #$101,(a2)
	moveq #$0,d2
	move.w ($f700).w,d6
	subi.w #$80,d6
	bcc.s loc_207a1e
	moveq #$0,d6
loc_207a1e:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207a26:
	cmp.w (a0),d6
	bls.s loc_207a38
	tst.b $4(a0)
	bpl.s loc_207a34
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a34:
	addq.w #$8,a0
	bra.s loc_207a26
loc_207a38:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207a58
loc_207a46:
	cmp.w (a0),d6
	bls.s loc_207a58
	tst.b $4(a0)
	bpl.s loc_207a54
	addq.b #$1,$1(a2)
loc_207a54:
	addq.w #$8,a0
	bra.s loc_207a46
loc_207a58:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207b42
	bge.s loc_207ae8
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207ac4
loc_207a92:
	cmp.w -$8(a0),d6
	bge.s loc_207ac4
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207aa8
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207aa8:
	bsr.w sub_207b66
	bne.s loc_207ab2
	subq.w #$8,a0
	bra.s loc_207a92
loc_207ab2:
	tst.b $4(a0)
	bpl.s loc_207ac2
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207ac2:
	addq.w #$8,a0
loc_207ac4:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207ad0:
	cmp.w -$8(a0),d6
	bgt.s loc_207ae2
	tst.b -$4(a0)
	bpl.s loc_207ade
	subq.b #$1,(a2)
loc_207ade:
	subq.w #$8,a0
	bra.s loc_207ad0
loc_207ae2:
	move.l a0,($f770).w
	rts
loc_207ae8:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207afc:
	cmp.w (a0),d6
	bls.s loc_207b1e
	tst.b $4(a0)
	bpl.s loc_207b0a
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207b0a:
	bsr.w sub_207b66
	beq.s loc_207afc
	tst.b $4(a0)
	bpl.s loc_207b1e
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207b1e:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207b3e
loc_207b2c:
	cmp.w (a0),d6
	bls.s loc_207b3e
	tst.b $4(a0)
	bpl.s loc_207b3a
	addq.b #$1,$1(a2)
loc_207b3a:
	addq.w #$8,a0
	bra.s loc_207b2c
loc_207b3e:
	move.l a0,($f774).w
loc_207b42:
	rts

sub_207b44:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.w d2,d3
	add.w d3,d3
	add.w d2,d3
	add.w d0,d3
	move.b $6(a0),d1
	rol.b #$3,d1
	andi.b #$7,d1
	btst.l d0,d1
	rts

sub_207b66:
	bsr.s sub_207b44
	beq.s loc_207b78
	tst.b $4(a0)
	bpl.s loc_207b7e
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207b7e
loc_207b78:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207b7e:
	bsr.w sub_207bce
	bne.s loc_207bcc
	move.w (a0)+,$8(a1)
	move.w (a0)+,d0
	move.w d0,d1
	andi.w #$fff,d0
	move.w d0,$c(a1)
	rol.w #$2,d1
	andi.b #$3,d1
	move.b d1,$1(a1)
	move.b d1,$22(a1)
	move.b (a0)+,d0
	bpl.s loc_207bae
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207bae:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207bc0
	nop
	nop
	nop
	nop
loc_207bc0:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207bcc:
	rts

sub_207bce:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207bd6:
	tst.b (a1)
	beq.s loc_207be2
	lea $40(a1),a1
	dbf d0,loc_207bd6
loc_207be2:
	rts

sub_207be4:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207c02
loc_207bf6:
	tst.b (a1)
	beq.s loc_207c02
	lea $40(a1),a1
	dbf d0,loc_207bf6
loc_207c02:
	rts

sub_207c04:
	move.w $8(a0),d0
loc_207c08:
	tst.b $1(a0)
	bmi.s loc_207c72
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207c72
loc_207c26:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207c68
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207c60
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207c58
	moveq #$0,d1
	bra.s loc_207c60
loc_207c58:
	cmpi.w #$3,d1
	bcs.s loc_207c60
	moveq #$2,d1
loc_207c60:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207c68:
	jsr (sub_203b60).l
	moveq #$1,d0
	rts
loc_207c72:
	btst.b #$7,($ff152e).l
	bne.s loc_207c26
	moveq #$0,d0
	rts
dat_207c80:
	.incbin 31872, 3146
	btst.b #$7,($ff152e).l
	beq.s loc_208914
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208914
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208904
	moveq #$0,d1
	bra.s loc_20890c
loc_208904:
	cmpi.w #$3,d1
	bcs.s loc_20890c
	moveq #$2,d1
loc_20890c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208914:
	tst.b $28(a0)
	bpl.s loc_208936
	beq.s loc_208936
	tst.b ($ff158f).l
	bne.s loc_20892e
	btst.b #$0,$28(a0)
	beq.s loc_208936
	bra.s loc_208960
loc_20892e:
	btst.b #$0,$28(a0)
	beq.s loc_208960
loc_208936:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208966
	cmpi.b #$6,$24(a6)
	bcc.s loc_208966
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208968(pc,d0.w),d1
	jsr dat_208968(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208966
loc_208960:
	jmp (sub_207c04).l
loc_208966:
	rts
dat_208968:
	dc.b $00,$08,$00,$40,$00,$d0,$00,$e4
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208b54(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$10,d0
	cmpi.w #$20,d0
	bcc.s loc_208a36
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$10,d1
	cmpi.w #$20,d1
	bcc.w loc_208a36
	tst.b $2c(a6)
	bne.w loc_208a36
	cmpi.b #$4,$24(a6)
	bne.s loc_2089e8
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_2089e8:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	move.b #$2,$1c(a6)
	move.w #$a00,$14(a6)
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_202342).l
loc_208a36:
	rts
	.incbin 35384, 284
dat_208b54:
	.incbin 35668, 826

sub_208e8e:
	btst.b #$3,$22(a0)
	beq.s loc_208efe
	btst.b #$3,$22(a1)
	beq.s loc_208efe
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208efe
	tst.b $2a(a1)
	beq.s loc_208ec0
	move.w #$ab,d0
	jsr (sub_202342).l
loc_208ec0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208eec
	cmpi.b #$17,$1c(a1)
	beq.s loc_208eec
	bclr.b #$0,$2c(a1)
loc_208eec:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208efe
	bclr.b #$1,$22(a1)
loc_208efe:
	rts

sub_208f00:
	cmpi.b #$4,$24(a1)
	bne.s loc_208f12
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208f12:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208f72
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f34
	bclr.b #$3,$22(a0)
	bra.w sub_208e8e
loc_208f34:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208f72
	tst.b ($ff195b).l
	beq.s loc_208f5c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208f6c
loc_208f5c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208f6c:
	move.b #$0,$1c(a1)
loc_208f72:
	bset.b #$3,$22(a1)
	beq.s loc_208f94
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208fcc
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208f94:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208fc0
	cmpi.b #$2,$24(a0)
	beq.s loc_208fc6
loc_208fc0:
	move.w $10(a1),$14(a1)
loc_208fc6:
	bclr.b #$1,$22(a1)
loc_208fcc:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208fd6:
	move.b #$1,$25(a0)

sub_208fdc:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209290
	btst.b #$6,$2c(a1)
	bne.w loc_209290
	cmpi.b #$6,$24(a1)
	bcc.w loc_209290
	tst.b $0(a1)
	beq.w loc_209290
	tst.b $1(a0)
	bpl.w loc_209290
	tst.b ($ff1906).l
	bne.w loc_209290
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209290
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209290
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20904a
	btst.b #$3,$22(a0)
	bne.s loc_20905c
	bra.w loc_209290
loc_20904a:
	cmpi.b #$1,$25(a0)
	bne.s loc_20905c
	tst.w $12(a1)
	beq.s loc_20905c
	bmi.w loc_209290
loc_20905c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209290
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209290
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209092
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209092:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2090a0
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2090a0:
	cmp.w d4,d5
	bcs.w loc_209134
	cmpi.b #$1,$25(a0)
	beq.w loc_209290
	cmpi.b #$a,$0(a0)
	bne.s loc_2090c2
	btst.b #$1,$22(a1)
	bne.w loc_209290
loc_2090c2:
	cmpi.b #$4,d5
	bls.w loc_209290
	bsr.w sub_2092e0
	move.l d0,-(a7)
	bsr.w sub_208e8e
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2090ec
	tst.w $10(a1)
	beq.s loc_20911c
	bpl.s loc_2090f4
	bra.s loc_20911c
loc_2090ec:
	tst.w $10(a1)
	beq.s loc_20911c
	bpl.s loc_20911c
loc_2090f4:
	bsr.w sub_2092a0
	btst.b #$1,$22(a1)
	bne.s loc_209112
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209112:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20911c:
	bsr.w sub_209356
	bsr.w sub_2092a0
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209134:
	cmpi.b #$19,$0(a0)
	bne.s loc_209146
	btst.b #$2,$22(a1)
	bne.w loc_209290
loc_209146:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20915c
	bmi.w loc_20922c
loc_20915c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20916e
	tst.w $12(a1)
	beq.s loc_20916e
	bmi.w loc_209290
loc_20916e:
	move.w $c(a0),$c(a1)
	sub.w d1,$c(a1)
	moveq #$0,d1
	move.w $10(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $8(a1),d0
	add.l d1,d0
	move.l d0,$8(a1)
	move.b #$c0,d0
	tst.w $10(a0)
	beq.s loc_2091ba
	bpl.s loc_20919a
	neg.b d0
loc_20919a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ba0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091ba
	tst.w $10(a0)
	bpl.s loc_2091b6
	neg.w d1
loc_2091b6:
	add.w d1,$8(a1)
loc_2091ba:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209224
	tst.w $12(a0)
	bmi.s loc_2091f8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c32).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091f8
	add.w d1,$c(a1)
	bra.w loc_209290
loc_2091f8:
	tst.w $12(a0)
	bpl.s loc_209224
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e4a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209224
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20720e).l
	movem.l (a7)+,a0-a1
	bra.s loc_209290
loc_209224:
	bsr.w sub_208f00
	moveq #$1,d0
	rts
loc_20922c:
	cmpi.b #$1,$25(a0)
	beq.s loc_209290
	cmpi.b #$9,$0(a0)
	beq.s loc_209290
	cmpi.b #$a,$0(a0)
	bne.s loc_209256
	cmpi.b #$2,$25(a0)
	beq.s loc_209276
	btst.b #$1,$1(a0)
	bne.s loc_209276
	bra.s loc_209290
loc_209256:
	btst.b #$1,$22(a1)
	bne.s loc_209276
	tst.w $12(a0)
	beq.s loc_209276
	bmi.s loc_209276
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20720e).l
	movem.l (a7)+,a0-a1
loc_209276:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209356
	bsr.w sub_208e8e
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209290:
	bsr.w sub_209356
	bsr.w sub_208e8e
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2092a0:
	tst.w $10(a0)
	beq.s loc_2092de
	cmpi.b #$a,$0(a0)
	beq.s loc_2092de
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2092ba
	neg.b d0
loc_2092ba:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ba0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2092de
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20720e).l
	movem.l (a7)+,a0-a1
loc_2092de:
	rts

sub_2092e0:
	cmpi.b #$a,$0(a0)
	bne.s loc_2092f0
	move.b #$0,$20(a1)
	rts
loc_2092f0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209344
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209354
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209312
	tst.w $10(a2)
	beq.s loc_209354
loc_209312:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209324
	cmp.w $8(a2),d1
	bcs.s loc_209354
	bra.s loc_20932a
loc_209324:
	cmp.w $8(a2),d1
	bcc.s loc_209354
loc_20932a:
	cmpi.b #$15,$0(a0)
	beq.s loc_209354
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20720e).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209344:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209354:
	rts

sub_209356:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209370
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209370
	move.b #$0,$20(a1)
loc_209370:
	rts
	.incbin 37746, 374
loc_2094e8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094f6(pc,d0.w),d0
	jmp dat_2094f6(pc,d0.w)
dat_2094f6:
	.incbin 38134, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2094e8
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20954c
	tst.b $1(a0)
	bpl.s loc_209554
loc_20954c:
	move.w dat_2095a6(pc,d0.w),d1
	jsr dat_2095a6(pc,d1.w)
loc_209554:
	bsr.w sub_203ab4
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209586
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209586:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b60
	rts
dat_2095a6:
	.incbin 38310, 26
	addq.b #$2,$24(a0)
	move.l #$209928,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209616
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20992e,$4(a0)
	bra.s loc_209658
loc_209616:
	btst.l #$3,d0
	beq.s loc_209644
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209978,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c26a).l
	move.l (a7)+,d0
	bra.s loc_209658
loc_209644:
	btst.b #$1,$1(a0)
	beq.s loc_209658
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209658:
	btst.l #$1,d0
	beq.s loc_209664
	bset.b #$5,$2(a0)
loc_209664:
	andi.w #$2,d0
	move.w dat_209670(pc,d0.w),$30(a0)
	rts
dat_209670:
	dc.b $f0,$00,$f6,$00

sub_209674:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208fdc).l
	tst.b $1(a0)
	bpl.s loc_209690
	lea ($d000).w,a1
	bsr.s sub_209674
	bne.s loc_209692
loc_209690:
	rts
loc_209692:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202342).l
	lea (dat_20991a).l,a1
	bra.w sub_205cbe
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2096e6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208fdc).l
	tst.b $1(a0)
	bpl.s loc_209708
	lea ($d000).w,a1
	bsr.s sub_2096e6
	btst.b #$5,$22(a0)
	bne.s loc_20970a
loc_209708:
	rts
loc_20970a:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209738
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209738:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209752
	move.b #$0,$1c(a1)
loc_209752:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202342).l
	.incbin 38764, 134
	tst.b $1(a0)
	bpl.s loc_20980a
	lea ($d000).w,a1
	bsr.w sub_209674
	bne.s loc_20980c
	btst.b #$5,$22(a0)
	bne.s loc_20980c
loc_20980a:
	rts
loc_20980c:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_200766).l
	move.w $30(a0),d2
	neg.w d2
	mulu.w d2,d0
	mulu.w d2,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a1)
	move.w d1,$10(a1)
	addq.w #$8,$c(a1)
	btst.b #$1,$1(a0)
	beq.s loc_20984a
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_20984a:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_20986c
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_20986c:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_202342).l
	lea (dat_20991a).l,a1
	bra.w sub_205cbe
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 39088, 106
dat_20991a:
	.incbin 39194, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a14(pc,d0.w),d1
	jmp dat_209a14(pc,d1.w)
dat_209a14:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209a1e:
	.incbin 39454, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a76
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a6e
	moveq #$0,d1
	bra.s loc_209a76
loc_209a6e:
	cmpi.w #$3,d1
	bcs.s loc_209a76
	moveq #$2,d1
loc_209a76:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209a92
	moveq #$6,d1
loc_209a92:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209a1e).l,a1
	move.b $0(a1,d0.w),d5
	ext.w d5
	move.b $1(a1,d0.w),d6
	ext.w d6
	movea.l a0,a1
	move.w $8(a0),d2
	move.w $c(a0),d3
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ae2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ada
	moveq #$0,d0
	bra.s loc_209ae2
loc_209ada:
	cmpi.w #$3,d0
	bcs.s loc_209ae2
	moveq #$2,d0
loc_209ae2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209bb0
	dbf d0,loc_209ae2
	bclr.b #$7,(a2)
	bra.s loc_209b38
loc_209af4:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209b20
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b18
	moveq #$0,d0
	bra.s loc_209b20
loc_209b18:
	cmpi.w #$3,d0
	bcs.s loc_209b20
	moveq #$2,d0
loc_209b20:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209bb0
	dbf d0,loc_209b20
	bclr.b #$7,(a2)
	bsr.w sub_207be4
	bne.w loc_209bbc
loc_209b38:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209e82,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b8e
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209b8e
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209b8e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209bb0:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209af4
loc_209bbc:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209be2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209bda
	moveq #$0,d0
	bra.s loc_209be2
loc_209bda:
	cmpi.w #$3,d0
	bcs.s loc_209be2
	moveq #$2,d0
loc_209be2:
	lea $1(a2),a3
loc_209be6:
	btst.b #$0,-(a3)
	bne.w sub_203b60
	dbf d0,loc_209be6
	tst.b $1(a0)
	bmi.s loc_209c16
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209c90
loc_209c16:
	tst.w ($ff190e).l
	bne.s loc_209c26
	move.b ($ff1913).l,$1a(a0)
loc_209c26:
	bra.w sub_203ab4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c94
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209c76
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209c6e
	moveq #$0,d1
	bra.s loc_209c76
loc_209c6e:
	cmpi.w #$3,d1
	bcs.s loc_209c76
	moveq #$2,d1
loc_209c76:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209e7a).l,a1
	bsr.w sub_205cbe
	bra.w sub_203ab4
loc_209c90:
	bra.w sub_203b60

sub_209c94:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209ce4
	bset.b #$1,($ff150d).l
	beq.s loc_209cce
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209ce4
	bset.b #$2,($ff150d).l
	bne.s loc_209ce4
loc_209cce:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c7e).l
loc_209ce4:
	jmp (sub_202342).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209cf8(pc,d0.w),d1
	jmp dat_209cf8(pc,d1.w)
dat_209cf8:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209d14
	move.w d0,d5
loc_209d14:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209d24
loc_209d1c:
	bsr.w sub_207bce
	bne.w loc_209dda
loc_209d24:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209e82,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d82
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209d82
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209d82:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209dca
	move.w d4,d0
	jsr (sub_200766).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209dca
	subi.w #$80,d4
	bcc.s loc_209dca
	move.w #$288,d4
loc_209dca:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209d1c
loc_209dda:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202342).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203a5e
	addi.w #$18,$12(a0)
	bmi.s loc_209e3a
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209e3a
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_209e3a
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209e3a:
	tst.b ($ff1916).l
	beq.s loc_209e76
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209e76
	bra.w sub_203ab4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c94
	lea (dat_209e7a).l,a1
	bsr.w sub_205cbe
	bra.w sub_203ab4
loc_209e76:
	bra.w sub_203b60
dat_209e7a:
	.incbin 40570, 402
loc_20a00c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a03a(pc,d0.w),d0
	jsr dat_20a03a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a038
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a032
	btst.b #$0,($ff1505).l
	bne.s loc_20a038
loc_20a032:
	jmp (sub_203ab4).l
loc_20a038:
	rts
dat_20a03a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a614,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a06e
	move.b #$13,$1a(a0)
loc_20a06e:
	rts
loc_20a070:
	tst.b ($ff0f01).l
	beq.s loc_20a07e
	jmp (sub_203b60).l
loc_20a07e:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a00c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a0a2(pc,d0.w),d0
	jsr dat_20a0a2(pc,d0.w)
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20a0a2:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a614,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a0f0
	tst.b $29(a0)
	bne.s loc_20a0f0
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a0f0:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a1bc
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a118
	addq.b #$2,$1a(a0)
loc_20a118:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a12c
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a12c:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a192
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a15e
	tst.b $29(a0)
	beq.s loc_20a156
	tst.b ($ff1956).l
	beq.s loc_20a192
	bra.s loc_20a15e
loc_20a156:
	tst.b ($ff1956).l
	bne.s loc_20a192
loc_20a15e:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a1bc
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a18c
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a18c:
	jsr (sub_205c7e).l
loc_20a192:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a1a4
	lea (dat_20a58c).l,a1
	bra.w sub_205cbe
loc_20a1a4:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a1ba
	addq.b #$2,$1a(a0)
loc_20a1ba:
	rts

sub_20a1bc:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a1f4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a1ec
	moveq #$0,d1
	bra.s loc_20a1f4
loc_20a1ec:
	cmpi.w #$3,d1
	bcs.s loc_20a1f4
	moveq #$2,d1
loc_20a1f4:
	add.w d1,d0
	rts

sub_20a1f8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a21a
	tst.b ($ff1956).l
	beq.s loc_20a212
	tst.b $29(a0)
	bne.s loc_20a21a
	rts
loc_20a212:
	tst.b $29(a0)
	beq.s loc_20a21a
	rts
loc_20a21a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208fdc).l
	tst.b $28(a0)
	bne.s loc_20a23c
	tst.b ($ff0f01).l
	beq.s loc_20a23c
	jmp (sub_207c04).l
loc_20a23c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a070
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a254(pc,d0.w),d1
	jmp dat_20a254(pc,d1.w)
dat_20a254:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a614,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a29e
	tst.b $29(a0)
	bne.s loc_20a29e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a29e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a1bc
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a2ca
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a2ca:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a324
	move.b $25(a0),d0
	beq.s loc_20a304
	bsr.w sub_2039fc
	jsr (sub_206ce0).l
	tst.w d1
	bpl.w loc_20a312
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a312
loc_20a304:
	tst.b $1(a0)
	bpl.s loc_20a312
	lea ($d000).w,a1
	bsr.w sub_20a1f8
loc_20a312:
	tst.w ($ff190e).l
	bne.s loc_20a324
	lea (dat_20a58c).l,a1
	bsr.w sub_205cbe
loc_20a324:
	bsr.w sub_203ab4
	jmp (sub_207c04).l
	.incbin 41774, 606
dat_20a58c:
	.incbin 42380, 586
loc_20a7d6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a7ea(pc,d0.w),d0
	jsr dat_20a7ea(pc,d0.w)
	jmp (sub_203ab4).l
dat_20a7ea:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a82a,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a824
	jmp (sub_203b60).l
loc_20a824:
	subq.w #$2,$c(a0)
	rts
	.incbin 43050, 82
	tst.b $28(a0)
	bmi.w loc_20a7d6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a892(pc,d0.w),d0
	jmp dat_20a892(pc,d0.w)
dat_20a892:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a92c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a8c2
	move.b #$3,$1a(a0)
	bra.s loc_20a8e2
loc_20a8c2:
	tst.w ($ff1588).l
	beq.s loc_20a8d0
	move.b #$2,$1a(a0)
loc_20a8d0:
	tst.b $28(a0)
	beq.s loc_20a8e2
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a8e2:
	tst.b $28(a0)
	bne.s loc_20a926
	tst.b $29(a0)
	beq.s loc_20a912
	tst.w ($ff1512).l
	beq.s loc_20a8fe
	bclr.b #$5,$2(a0)
	bra.s loc_20a926
loc_20a8fe:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a926
	eori.b #$20,$2(a0)
	bra.s loc_20a926
loc_20a912:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a926
	move.b #$2,$1a(a0)
loc_20a926:
	jmp (sub_203ab4).l
	.incbin 43308, 168

sub_20a9d4:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a9f0
	move.l d1,(a3)
loc_20a9f0:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20aa1a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c7e).l
loc_20aa1a:
	rts
loc_20aa1c:
	tst.w ($ff1588).l
	beq.s loc_20aa72
	bsr.w sub_20ac6e
	move.l #$73600002,d0
	moveq #$0,d1
	move.b ($ff1200).l,d1
	move.w ($d00c).w,d2
	lsr.w #$1,d2
	andi.w #$380,d2
	move.b ($d008).w,d1
	andi.w #$7f,d1
	add.w d1,d2
	lea ($a000).w,a1
	moveq #$0,d1
	move.b $0(a1,d2.w),d1
	andi.w #$7f,d1
	move.w ($ff194e).l,d1
	andi.w #$7ff,d1
	lea (dat_20adce).l,a2
	moveq #$2,d6
	bsr.w sub_20ae26
	bra.w loc_20aacc
loc_20aa72:
	tst.b ($ff1511).l
	beq.s loc_20aa96
	bpl.s loc_20aa80
	bsr.w sub_20ac18
loc_20aa80:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ad08
loc_20aa96:
	tst.b ($ff150f).l
	beq.s loc_20aacc
	bpl.s loc_20aaa4
	bsr.w sub_20ac04
loc_20aaa4:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20aac8
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20aac8:
	bsr.w sub_20acfe
loc_20aacc:
	tst.w ($ff1588).l
	bne.w loc_20ab78
	tst.b ($ff1510).l
	beq.w loc_20ab78
	tst.w ($f63a).w
	bne.w loc_20ab78
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20abd6
	tst.b ($f7cc).w
	bne.s loc_20ab22
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ab22
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ab22
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ab22
	move.b #$9,(a1)
loc_20ab22:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ae14
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ae1e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ab74
	move.w #$63,d1
loc_20ab74:
	bsr.w sub_20ae1e
loc_20ab78:
	tst.b ($ff150e).l
	beq.s loc_20ab8a
	clr.b ($ff150e).l
	bsr.w sub_20adf4
loc_20ab8a:
	tst.b ($f7d6).w
	beq.s loc_20abd4
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20abaa
	move.l #$6d400001,d0
loc_20abaa:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ac8c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20abca
	move.l #$6e800001,d0
loc_20abca:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ac8c
loc_20abd4:
	rts
loc_20abd6:
	btst.b #$7,($ff152e).l
	bne.s loc_20ac02
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20720e
	move.b #$1,($ff150c).l
loc_20ac02:
	rts

sub_20ac04:
	move.l #$73600002,($c00004).l
	lea dat_20ac6a(pc),a2
	move.w #$2,d2
	bra.s loc_20ac34

sub_20ac18:
	lea ($c00000).l,a6
	bsr.w sub_20adf4
	move.l #$70600002,($c00004).l
	lea dat_20ac62(pc),a2
	move.w #$6,d2
loc_20ac34:
	lea (dat_2330bc).l,a1
loc_20ac3a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ac56
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ac4a:
	move.l (a3)+,(a6)
	dbf d1,loc_20ac4a
loc_20ac50:
	dbf d2,loc_20ac3a
	rts
loc_20ac56:
	move.l #$0,(a6)
	dbf d1,loc_20ac56
	bra.s loc_20ac50
dat_20ac62:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ac6a:
	dc.b $ff,$ff,$00,$00

sub_20ac6e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20adea
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20adea

sub_20ac8c:
	lea (dat_20adc6).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac9c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aca0:
	sub.l d3,d1
	bcs.s loc_20aca8
	addq.w #$1,d2
	bra.s loc_20aca0
loc_20aca8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20acb2
	move.w #$1,d4
loc_20acb2:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20acbe
	tst.w d6
	bne.s loc_20acf0
loc_20acbe:
	lsl.w #$6,d2
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
loc_20ace4:
	addi.l #$400000,d0
	dbf d6,loc_20ac9c
	rts
loc_20acf0:
	moveq #$f,d5
loc_20acf2:
	move.l #$0,(a6)
	dbf d5,loc_20acf2
	bra.s loc_20ace4

sub_20acfe:
	lea (dat_20adce).l,a2
	moveq #$2,d6
	bra.s loc_20ad10

sub_20ad08:
	lea (dat_20adc2).l,a2
	moveq #$5,d6
loc_20ad10:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ad18:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad1c:
	sub.l d3,d1
	bcs.s loc_20ad24
	addq.w #$1,d2
	bra.s loc_20ad1c
loc_20ad24:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ad2e
	move.w #$1,d4
loc_20ad2e:
	tst.w d4
	beq.s loc_20ad5c
	lsl.w #$6,d2
	move.l d0,$4(a6)
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
loc_20ad5c:
	addi.l #$400000,d0
	dbf d6,loc_20ad18
	rts
	.incbin 44392, 90
dat_20adc2:
	dc.b $00,$01,$86,$a0
dat_20adc6:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20adce:
	dc.b $00,$00,$00,$64
dat_20add2:
	dc.b $00,$00,$00,$0a
dat_20add6:
	dc.b $00,$00,$00,$01
dat_20adda:
	.incbin 44506, 16

sub_20adea:
	moveq #$3,d6
	lea (dat_20adda).l,a2
	bra.s sub_20ae26

sub_20adf4:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ae0a
	moveq #$9,d1
loc_20ae0a:
	lea (dat_20add6).l,a2
	moveq #$0,d6
	bra.s sub_20ae26

sub_20ae14:
	lea (dat_20add6).l,a2
	moveq #$0,d6
	bra.s sub_20ae26

sub_20ae1e:
	lea (dat_20add2).l,a2
	moveq #$1,d6

sub_20ae26:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ae2e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae32:
	sub.l d3,d1
	bcs.s loc_20ae3a
	addq.w #$1,d2
	bra.s loc_20ae32
loc_20ae3a:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae44
	move.w #$1,d4
loc_20ae44:
	lsl.w #$6,d2
	move.l d0,$4(a6)
	lea $0(a1,d2.w),a3
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	move.l (a3)+,(a6)
	addi.l #$400000,d0
	dbf d6,loc_20ae2e
	rts
	.incbin 44666, 1044
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$23bff2,$4(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$20,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20b30a
	move.w $c(a6),d0
	sub.w $c(a0),d0
	addi.w #$80,d0
	bmi.s loc_20b306
	cmpi.w #$100,d0
	bcc.s loc_20b306
	move.w $8(a6),d0
	cmp.w $8(a0),d0
	bcs.s loc_20b306
	addq.b #$2,$24(a0)
	move.w ($f700).w,($f728).w
	move.w ($f700).w,($f720).w
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
	moveq #$12,d0
	jmp (sub_20250c).l
loc_20b306:
	rts
	dc.b $4e,$75

sub_20b30a:
	moveq #$0,d0
	move.w ($ff1506).l,d0
	lsl.b #$7,d0
	lsr.w #$4,d0
	move.b ($ff152e).l,d1
	cmpi.b #$2,d1
	bne.s loc_20b328
	add.b ($ff156a).l,d1
loc_20b328:
	add.b d1,d1
	add.b d1,d0
	move.w dat_20b344(pc,d0.w),$2(a0)
	cmpi.b #$3,($ff1506).l
	beq.s loc_20b342
	ori.w #$8000,$2(a0)
loc_20b342:
	rts
dat_20b344:
	.incbin 45892, 1684
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b9e6(pc,d0.w),d0
	jmp dat_20b9e6(pc,d0.w)
dat_20b9e6:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c0e4,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c0a4).l,a2
loc_20ba34:
	jsr (sub_207bce).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c0e4,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20ba86
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20ba86:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20ba34
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20baae
	bge.s loc_20baa4
	neg.w d0
loc_20baa4:
	add.w d0,$a(a0)
	jmp (sub_203ab4).l
loc_20baae:
	addq.b #$4,$24(a0)
	jmp (sub_203ab4).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bad2
	bge.s loc_20bac8
	neg.w d0
loc_20bac8:
	add.w d0,$8(a0)
	jmp (sub_203ab4).l
loc_20bad2:
	addq.b #$4,$24(a0)
	jmp (sub_203ab4).l
	tst.b $1e(a0)
	beq.s loc_20baec
	subq.b #$1,$1e(a0)
	jmp (sub_203ab4).l
loc_20baec:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bb06
	bge.s loc_20bafc
	neg.w d0
loc_20bafc:
	add.w d0,$a(a0)
	jmp (sub_203ab4).l
loc_20bb06:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20250c).l
	tst.b $1e(a0)
	beq.s loc_20bb28
	subq.b #$1,$1e(a0)
	jmp (sub_203ab4).l
loc_20bb28:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bb42
	bge.s loc_20bb38
	neg.w d0
loc_20bb38:
	add.w d0,$8(a0)
	jmp (sub_203ab4).l
loc_20bb42:
	jmp (sub_203b60).l
	tst.l ($f680).w
	bne.s loc_20bb5c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b60).l
loc_20bb5c:
	rts
	.incbin 47966, 1350
dat_20c0a4:
	.incbin 49316, 326
loc_20c1ea:
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	beq.s loc_20c1fe
	moveq #$2,d0
	jmp (sub_20250c).l
loc_20c1fe:
	lea dat_20c25e(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c20a:
	cmp.w (a1)+,d0
	bcs.s loc_20c212
	addq.b #$2,d1
	bra.s loc_20c20a
loc_20c212:
	move.b d1,($ff1574).l
	move.w dat_20c266(pc,d1.w),d0
	jmp (sub_20250c).l

sub_20c222:
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	beq.s loc_20c230
	rts
loc_20c230:
	lea dat_20c25e(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c23c:
	cmp.w (a1)+,d0
	bcs.s loc_20c244
	addq.b #$2,d1
	bra.s loc_20c23c
loc_20c244:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c24e
	rts
loc_20c24e:
	move.b d1,($ff1574).l
	move.w dat_20c262(pc,d1.w),d0
	jmp (loc_20253e).l
dat_20c25e:
	dc.b $04,$00,$ff,$ff
dat_20c262:
	dc.b $00,$05,$00,$06
dat_20c266:
	dc.b $00,$02,$00,$04

sub_20c26a:
	move.w #$4f2,$2(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c286(pc,d0.w),d0
	jsr dat_20c286(pc,d0.w)
	jmp (sub_203ab4).l
dat_20c286:
	dc.b $00,$06,$00,$f6,$00,$dc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4300,$2(a0)
	move.l #$20c776,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$40,$19(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	lea $2a(a0),a2
	moveq #$7,d1
loc_20c2ce:
	jsr (sub_207bce).l
	bne.w loc_20c34c
	move.w a1,d0
	subi.w #$d800,d0
	lsr.w #$6,d0
	andi.b #$7f,d0
	move.b d0,(a2)+
	move.b #$2f,$0(a1)
	move.b #$4,$24(a1)
	move.w $8(a0),$36(a1)
	move.w $c(a0),$32(a1)
	move.w $c(a0),$c(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.w #$4300,$2(a1)
	move.l #$20c776,$4(a1)
	move.b #$8,$16(a1)
	move.b #$8,$19(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3f(a1)
	moveq #$0,d2
	move.b d1,d2
	move.b d2,$3c(a1)
	add.w d2,d2
	lea dat_20c352(pc,d2.w),a3
	move.w (a3)+,d2
	add.w $8(a0),d2
	move.w d2,$8(a1)
loc_20c34c:
	dbf d1,loc_20c2ce
	rts
dat_20c352:
	.incbin 50002, 16
	movea.w $34(a0),a1
	cmpi.b #$2f,$0(a1)
	bne.s loc_20c376
	tst.b $3f(a1)
	bne.s loc_20c376
	rts
loc_20c376:
	jmp (sub_203b60).l
	clr.b $3d(a0)
	bsr.w sub_20c6dc
	beq.s loc_20c38a
	bsr.w sub_20c3c4
loc_20c38a:
	tst.b $3d(a0)
	beq.w loc_20c3b0
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	beq.s loc_20c3a0
	addq.b #$4,$3a(a0)
loc_20c3a0:
	bsr.w sub_20c424
	tst.b $3d(a0)
	beq.s loc_20c3ae
	bsr.w sub_20c3f8
loc_20c3ae:
	bra.s loc_20c3be
loc_20c3b0:
	tst.b $3a(a0)
	beq.s loc_20c3be
	subq.b #$4,$3a(a0)
	bsr.w sub_20c424
loc_20c3be:
	jmp (sub_207c04).l

sub_20c3c4:
	lea ($d000).w,a1
	moveq #$8,d1
	lsl.w #$3,d1
	move.w d1,d2
	addq.w #$8,d1
	add.w d2,d2
	btst.b #$1,$22(a1)
	bne.s loc_20c3ea
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20c3ea
	cmp.w d2,d0
	bcs.s loc_20c3f0
loc_20c3ea:
	clr.b $3d(a0)
	rts
loc_20c3f0:
	lsr.w #$4,d0
	move.b d0,$3d(a0)
	rts

sub_20c3f8:
	lea ($d000).w,a1
	moveq #$0,d0
	move.b $3d(a0),d0
	move.b $2a(a0,d0.w),d0
	lsl.w #$6,d0
	addi.l #$ffd800,d0
	movea.l d0,a2
	move.w $c(a2),d0
	subq.w #$8,d0
	moveq #$0,d1
	move.b $16(a1),d1
	sub.w d1,d0
	move.w d0,$c(a1)
	rts

sub_20c424:
	moveq #$0,d3
	move.b $3d(a0),d3
	move.b $3a(a0),d0
	jsr (sub_200766).l
	move.w d0,d4
	lea (dat_20c5dc).l,a4
	moveq #$8,d0
	lsl.w #$4,d0
	move.w d3,d2
	add.w d0,d3
	moveq #$0,d5
	lea (dat_20c4cc).l,a5
	move.b $0(a5,d3.w),d5
	andi.w #$f,d3
	lsl.w #$4,d3
	lea $0(a4,d3.w),a3
	lea $2a(a0),a2
loc_20c45e:
	moveq #$0,d0
	move.b (a2)+,d0
	lsl.w #$6,d0
	addi.l #$ffd800,d0
	movea.l d0,a1
	moveq #$0,d0
	move.b (a3)+,d0
	addq.w #$1,d0
	mulu.w d5,d0
	mulu.w d4,d0
	swap d0
	add.w $32(a1),d0
	move.w d0,$c(a1)
	dbf d2,loc_20c45e
	moveq #$0,d3
	move.b $3d(a0),d3
	moveq #$8,d0
	addq.b #$1,d3
	sub.b d0,d3
	neg.b d3
	bmi.s loc_20c4ca
	move.w d3,d2
	lsl.w #$4,d3
	lea $0(a4,d3.w),a3
	adda.w d2,a3
	subq.w #$1,d2
	bcs.s loc_20c4ca
loc_20c4a2:
	moveq #$0,d0
	move.b (a2)+,d0
	lsl.w #$6,d0
	addi.l #$ffd800,d0
	movea.l d0,a1
	moveq #$0,d0
	move.b -(a3),d0
	addq.w #$1,d0
	mulu.w d5,d0
	mulu.w d4,d0
	add.w d0,d0
	swap d0
	add.w $32(a1),d0
	move.w d0,$c(a1)
	dbf d2,loc_20c4a2
loc_20c4ca:
	rts
dat_20c4cc:
	.incbin 50380, 272
dat_20c5dc:
	.incbin 50652, 256

sub_20c6dc:
	lea ($d000).w,a1
	cmpi.b #$6,$24(a1)
	beq.w loc_20c756
	tst.b ($ff1906).l
	bne.s loc_20c756
	moveq #$8,d1
	lsl.w #$3,d1
	move.w d1,d2
	addq.w #$8,d1
	add.w d2,d2
	tst.w $12(a1)
	bmi.w loc_20c756
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20c756
	cmp.w d2,d0
	bcc.w loc_20c756
	move.w $c(a0),d0
	subq.w #$8,d0
	move.w $c(a1),d2
	move.b $16(a1),d1
	ext.w d1
	add.w d2,d1
	addq.w #$4,d1
	sub.w d1,d0
	bhi.w loc_20c756
	cmpi.w #$fff0,d0
	bcs.w loc_20c756
	cmpi.b #$6,$24(a1)
	bcc.w loc_20c756
	add.w d0,d2
	addq.w #$3,d2
	move.w d2,$c(a1)
	jsr (sub_208f00).l
	moveq #$ffffffff,d0
	rts
loc_20c756:
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20c772
	clr.b $38(a1)
	bclr.b #$3,$22(a1)
loc_20c772:
	moveq #$0,d0
	rts
	.incbin 51062, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c7cc(pc,d0.w),d0
	jsr dat_20c7cc(pc,d0.w)
	jsr (sub_203ab4).l
	move.w $36(a0),d0
	jmp (loc_207c08).l
dat_20c7cc:
	dc.b $00,$96,$01,$56
loc_20c7d0:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208fd6).l
dat_20c7e2:
	.incbin 51170, 50
dat_20c814:
	.incbin 51220, 52
dat_20c848:
	.incbin 51272, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20c884
	move.w #$4378,d0
loc_20c884:
	move.w d0,$2(a0)
	move.l #$20cc28,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20c7e2).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20c814).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20c848).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20c91e
	cmpi.b #$1,d1
	bne.s loc_20c8ea
	clr.b d2
	bsr.w sub_20cb94
	bra.s loc_20c91e
loc_20c8ea:
	cmpi.b #$2,d1
	bne.s loc_20c902
	move.b #$f0,d2
	bsr.w sub_20cb94
	move.b #$10,d2
	bsr.w sub_20cb94
	bra.s loc_20c91e
loc_20c902:
	cmpi.b #$3,d1
	bne.s loc_20c91e
	move.b #$e0,d2
	bsr.w sub_20cb94
	clr.b d2
	bsr.w sub_20cb94
	move.b #$20,d2
	bsr.w sub_20cb94
loc_20c91e:
	bra.w loc_20c922
loc_20c922:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20c940(pc,d0.w),d0
	jsr dat_20c940(pc,d0.w)
	bsr.w sub_20cb50
	bsr.w sub_20cbc4
	bra.w loc_20c7d0
dat_20c940:
	.incbin 51520, 50
	bset.b #$7,$3f(a0)
	rts
	.incbin 51578, 50
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20cb10
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20c9c6
	neg.w d0
loc_20c9c6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts
	.incbin 51664, 24
	tst.b $3d(a0)
	bne.s loc_20ca0a
	bset.b #$7,$3f(a0)
	btst.b #$3,$22(a0)
	bne.s loc_20c9fe
	rts
loc_20c9fe:
	move.b #$1e,$3b(a0)
	move.b #$1,$3d(a0)
loc_20ca0a:
	tst.b $3b(a0)
	beq.s loc_20ca1c
	subq.b #$1,$3b(a0)
	bne.s loc_20ca78
	bclr.b #$7,$3f(a0)
loc_20ca1c:
	move.b #$10,$16(a0)
	cmpi.w #$200,$12(a0)
	bcs.s loc_20ca3e
	move.b #$12,$16(a0)
	cmpi.w #$300,$12(a0)
	bcs.s loc_20ca3e
	move.b #$14,$16(a0)
loc_20ca3e:
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20ca4e
	addi.w #$20,$12(a0)
loc_20ca4e:
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20ca78
	lea ($d000).w,a1
	jsr (sub_208e8e).l
	jmp (sub_203b60).l
loc_20ca78:
	rts
	move.b $3d(a0),d0
	andi.w #$ff,d0
	move.w dat_20ca8a(pc,d0.w),d0
	jmp dat_20ca8a(pc,d0.w)
dat_20ca8a:
	dc.b $00,$06,$00,$20,$00,$84
	bset.b #$7,$3f(a0)
	btst.b #$3,$22(a0)
	bne.s loc_20caa0
	rts
loc_20caa0:
	addq.b #$2,$3d(a0)
	move.b #$1e,$3b(a0)
	tst.b $3b(a0)
	beq.s loc_20cac2
	subq.b #$1,$3b(a0)
	bne.s loc_20cb0e
	bclr.b #$7,$3f(a0)
	move.b #$e,$16(a0)
loc_20cac2:
	move.w $12(a0),d0
	subq.w #$8,d0
	cmpi.w #$fd00,d0
	bcc.s loc_20cad2
	move.w #$fd00,d0
loc_20cad2:
	move.w d0,$12(a0)
	jsr (sub_203a5e).l
	move.l $c(a0),-(a7)
	subi.w #$30,$c(a0)
	jsr (sub_206e76).l
	move.l (a7)+,$c(a0)
	tst.w d1
	bpl.s loc_20cb0e
	move.b #$10,$16(a0)
	clr.w $12(a0)
	move.w $c(a0),$32(a0)
	bset.b #$7,$3f(a0)
	addq.b #$2,$3d(a0)
loc_20cb0e:
	rts

sub_20cb10:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20cb36
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20cb4e
	move.b #$ff,$3c(a0)
	bra.s loc_20cb4e
loc_20cb36:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20cb4e
	clr.b $3c(a0)
loc_20cb4e:
	rts

sub_20cb50:
	btst.b #$7,$3f(a0)
	beq.s loc_20cb92
	btst.b #$3,$22(a0)
	bne.s loc_20cb6c
	tst.b $3e(a0)
	beq.s loc_20cb92
	subq.b #$8,$3e(a0)
	bra.s loc_20cb78
loc_20cb6c:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20cb92
	addq.b #$8,$3e(a0)
loc_20cb78:
	move.b $3e(a0),d0
	jsr (sub_200766).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20cb92:
	rts

sub_20cb94:
	jsr (sub_207bce).l
	bne.s loc_20cbc2
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20cbc2:
	rts

sub_20cbc4:
	btst.b #$0,$3f(a0)
	beq.s loc_20cc26
	btst.b #$3,$22(a0)
	beq.s loc_20cc26
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20cc26
	btst.b #$3,$22(a1)
	beq.s loc_20cc26
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20cc26
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20cc18
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20cc18
	move.l #$20000,d0
loc_20cc18:
	tst.b ($ff158f).l
	beq.s loc_20cc22
	neg.l d0
loc_20cc22:
	add.l d0,$8(a1)
loc_20cc26:
	rts
	.incbin 52264, 188
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ccfe(pc,d0.w),d0
	jsr dat_20ccfe(pc,d0.w)
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20ccfe:
	dc.b $00,$08,$00,$4a,$00,$b4,$00,$f2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$4797,$2(a0)
	move.l #$20ce2a,$4(a0)
	btst.b #$0,($ff158f).l
	beq.s loc_20cd40
	move.b #$2,$1a(a0)
loc_20cd40:
	move.b ($ff158f).l,$3c(a0)
	tst.b ($ff1906).l
	bne.s loc_20cd96
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20cd60
	neg.w d0
loc_20cd60:
	cmpi.w #$10,d0
	bcc.s loc_20cd96
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20cd72
	neg.w d0
loc_20cd72:
	cmpi.w #$8,d0
	bcc.s loc_20cd96
	bchg.b #$0,($ff158f).l
	addq.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20cd94
	move.w #$bf,d0
	jsr (sub_202342).l
loc_20cd94:
	rts
loc_20cd96:
	move.b ($ff158f).l,d0
	cmp.b $3c(a0),d0
	beq.s loc_20cdac
	move.b #$ff,$3d(a0)
	addq.b #$2,$24(a0)
loc_20cdac:
	move.b d0,$3c(a0)
	rts
	addq.b #$1,$3a(a0)
	cmpi.b #$7,$3a(a0)
	bne.s loc_20cdc6
	move.b #$1,$1a(a0)
	bra.s loc_20cdee
loc_20cdc6:
	cmpi.b #$e,$3a(a0)
	bne.s loc_20cdee
	clr.b $3a(a0)
	clr.b $1a(a0)
	btst.b #$0,($ff158f).l
	beq.s loc_20cde6
	move.b #$2,$1a(a0)
loc_20cde6:
	addq.b #$2,$24(a0)
	clr.b $3d(a0)
loc_20cdee:
	rts
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20ce00
	neg.w d0
loc_20ce00:
	cmpi.b #$20,d0
	bcc.s loc_20ce1a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20ce12
	neg.w d0
loc_20ce12:
	cmpi.b #$10,d0
	bcc.s loc_20ce1a
	rts
loc_20ce1a:
	move.b #$2,$24(a0)
	move.b ($ff158f).l,$3c(a0)
	rts
	.incbin 52778, 42
	tst.b $28(a0)
	bmi.w loc_20cffa
	jsr (sub_20ead4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce80(pc,d0.w),d0
	jsr dat_20ce80(pc,d0.w)
	jsr (sub_203ab4).l
	move.w $2a(a0),d0
	jmp (loc_207c08).l
dat_20ce80:
	dc.b $00,$06,$00,$54,$00,$70
	move.w $8(a0),$2a(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2390,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$f,$16(a0)
	move.b #$2f,$20(a0)
	move.l #$ffffc000,$2c(a0)
	addq.b #$2,$24(a0)
	lea dat_20d03a(pc),a1
	tst.b $28(a0)
	beq.s loc_20ced0
	lea dat_20d0aa(pc),a1
loc_20ced0:
	move.l a1,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_20ceee
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20ceee:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20cf04
	neg.w d0
loc_20cf04:
	cmpi.w #$50,d0
	bge.w loc_20cfc4
	jsr (sub_206ce0).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.w loc_20cfc4
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.w loc_20cfba
	lea ($d000).w,a6
	bsr.w sub_20cfd6
	bcc.w loc_20cf9e
	move.b #$1,$1c(a0)
	tst.w $3e(a0)
	bne.w loc_20cfba
	jsr (sub_207bce).l
	bne.s loc_20cfba
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $29(a0),$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$ffec,$c(a1)
	move.w $2(a0),$2(a1)
	move.l #$20d0ca,$4(a1)
	move.b #$b0,$20(a1)
	move.w a0,$3e(a1)
	move.w a1,$3e(a0)
	tst.b $1(a0)
	bpl.s loc_20cf9c
	move.w #$b7,d0
	jsr (sub_202342).l
loc_20cf9c:
	bra.s loc_20cfba
loc_20cf9e:
	move.b #$0,$1c(a0)
	tst.w $3e(a0)
	beq.s loc_20cfba
	movea.w $3e(a0),a1
	jsr (sub_203b62).l
	move.w #$0,$3e(a0)
loc_20cfba:
	lea dat_20d02e(pc),a1
	jmp (sub_205cbe).l
loc_20cfc4:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20cfd6:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20cff8
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20cff8:
	rts
loc_20cffa:
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20d028
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.s loc_20d028
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	addi.w #$ffec,$c(a0)
	jmp (sub_203ab4).l
loc_20d028:
	jmp (sub_203b60).l
dat_20d02e:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $1d,$02,$03,$ff
dat_20d03a:
	.incbin 53306, 112
dat_20d0aa:
	.incbin 53418, 36
	tst.b $29(a0)
	beq.s loc_20d0dc
	bpl.w loc_20d3cc
	bra.w loc_20d3cc
loc_20d0dc:
	jsr (sub_20ead4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d10a(pc,d0.w),d0
	jsr dat_20d10a(pc,d0.w)
	lea dat_20d402(pc),a1
	jsr (sub_205cbe).l
	jsr (sub_203ab4).l
	move.w $2a(a0),d0
	jmp (loc_207c08).l
dat_20d10a:
	.incbin 53514, 22
	addq.b #$2,$24(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.b #$31,$20(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20d408(pc),a1
	move.l #$ffff0000,d0
	move.w #$3,d1
	tst.b $28(a0)
	beq.s loc_20d16a
	lea dat_20d440(pc),a1
	move.l #$ffff8000,d0
	move.w #$7,d1
loc_20d16a:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	move.w d1,$32(a0)
	movea.w a0,a1
	bra.s loc_20d196

sub_20d17a:
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $18(a0),$18(a1)
	move.w a0,$2a(a1)
loc_20d196:
	ori.b #$4,$1(a1)
	move.w #$23b6,$2(a1)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_20d1f4
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	jsr (sub_207be4).l
	bne.w loc_20d3c6
	move.w a1,$30(a0)
	move.b #$1,$29(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$10,$16(a1)
	move.l #$20d478,$4(a1)
	move.b $28(a0),$1a(a1)
	bsr.s sub_20d17a
	subq.b #$1,$18(a1)
loc_20d1f4:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20d20a
	neg.w d0
loc_20d20a:
	cmpi.w #$50,d0
	bge.s loc_20d260
	jsr (sub_206ce0).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20d260
	add.w d1,$c(a0)
	movea.w $30(a0),a1
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w $32(a0),d0
	add.w d0,$8(a1)
	addi.w #$fff0,$c(a1)
	lea ($d000).w,a1
	bsr.s sub_20d28e
	bcs.s loc_20d24c
	rts
loc_20d24c:
	addq.b #$2,$24(a0)
	tst.w d0
	smi d0
	tst.b $2c(a0)
	smi d1
	eor.b d1,d0
	bne.s loc_20d260
	rts
loc_20d260:
	move.l $2c(a0),d0
	sub.l d0,$8(a0)
	neg.l $2c(a0)
	neg.w $32(a0)
	movea.w $30(a0),a1
	bchg.b #$0,$1(a0)
	bchg.b #$0,$1(a1)
	bchg.b #$0,$22(a0)
	bchg.b #$0,$22(a1)
	rts

sub_20d28e:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffd8,d0
	subi.w #$50,d0
	bcc.s loc_20d2b2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20d2b2:
	rts
	.incbin 53940, 274
loc_20d3c6:
	jmp (sub_203b60).l
loc_20d3cc:
	movea.w $2a(a0),a1
	cmpi.b #$21,$0(a1)
	bne.s loc_20d3c6
	tst.b $29(a0)
	bmi.s loc_20d3e4
	jmp (sub_203ab4).l
loc_20d3e4:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	lea dat_20d488(pc),a1
	jsr (sub_205cbe).l
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20d402:
	dc.b $00,$02,$1d,$00,$01,$ff
dat_20d408:
	.incbin 54280, 56
dat_20d440:
	.incbin 54336, 72
dat_20d488:
	.incbin 54408, 22
	tst.b $29(a0)
	bne.s loc_20d4aa
	jsr (sub_20ead4).l
loc_20d4aa:
	tst.b $24(a0)
	beq.s loc_20d4ce
	movem.w $3a(a0),a1-a3
	cmpi.b #$22,$0(a1)
	bne.s loc_20d4fe
	cmpi.b #$22,$0(a2)
	bne.s loc_20d4fe
	cmpi.b #$22,$0(a3)
	bne.s loc_20d4fe
loc_20d4ce:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d4f4(pc,d0.w),d0
	jsr dat_20d4f4(pc,d0.w)
	jsr (sub_203ab4).l
	tst.b $29(a0)
	bne.s loc_20d4f2
	move.w $34(a0),d0
	jmp (loc_207c08).l
loc_20d4f2:
	rts
dat_20d4f4:
	dc.b $00,$10,$01,$1a,$01,$42,$01,$6a
	dc.b $01,$8c
loc_20d4fe:
	jmp (sub_203b60).l
	move.w #$3,$2a(a0)
	move.b #$1,$1a(a0)
	move.b #$c,$16(a0)
	move.b #$33,$20(a0)
	movea.w a0,a1
	bsr.w sub_20d5da
	tst.b $28(a0)
	bne.s loc_20d532
	move.w #$24,d0
	move.w #$6,d1
	bra.s loc_20d53a
loc_20d532:
	move.w #$24,d0
	move.w #$c,d1
loc_20d53a:
	move.w d0,$2c(a0)
	move.w d1,$30(a0)
	lea $3a(a0),a6
	move.w #$2,d6
	move.w $8(a0),d5
	tst.b $28(a0)
	bne.s loc_20d55c
	moveq #$2,d4
	moveq #$b,d3
	moveq #$ffffffb4,d2
	bra.s loc_20d562
loc_20d55c:
	moveq #$3,d4
	moveq #$7,d3
	moveq #$33,d2
loc_20d562:
	jsr (sub_207be4).l
	bne.s loc_20d4fe
	move.w a1,(a6)+
	move.w d6,$2a(a1)
	addi.w #$c,d5
	move.w d5,$8(a1)
	move.b d4,$1a(a1)
	move.b d3,$16(a1)
	move.b d2,$20(a1)
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.w $c(a0),$c(a1)
	move.w $2c(a0),$2c(a1)
	move.w $30(a0),$30(a1)
	move.b #$ff,$29(a1)
	bsr.s sub_20d5da
	dbf d6,loc_20d562
	movem.w $3a(a0),a1-a3
	move.w a0,$3a(a1)
	move.w a2,$3c(a1)
	move.w a3,$3e(a1)
	move.w a0,$3a(a2)
	move.w a1,$3c(a2)
	move.w a3,$3e(a2)
	move.w a0,$3a(a3)
	move.w a1,$3c(a3)
	move.w a2,$3e(a3)
	rts

sub_20d5da:
	move.b #$2,$24(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.w #$23fe,$2(a1)
	move.l #$20d6e8,$4(a1)
	move.w $8(a0),$34(a1)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_20d634
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	movea.w a0,a1
	tst.b $29(a0)
	beq.s loc_20d630
	movea.w $3a(a0),a1
loc_20d630:
	addq.w #$1,$36(a1)
loc_20d634:
	rts
	tst.b $29(a0)
	bne.s loc_20d65c
	cmpi.w #$4,$36(a0)
	bne.s loc_20d65c
	movem.w $3a(a0),a1-a3
	addq.b #$2,$24(a0)
	addq.b #$2,$24(a1)
	addq.b #$2,$24(a2)
	addq.b #$2,$24(a3)
	bra.s loc_20d65e
loc_20d65c:
	rts
loc_20d65e:
	addq.b #$2,$24(a0)
	eori.w #$3,$2a(a0)
	move.w $2c(a0),$2e(a0)
	move.w $30(a0),$32(a0)
	tst.b $29(a0)
	bne.s loc_20d680
	eori.b #$1,$1a(a0)
loc_20d680:
	move.w $2a(a0),d0
	sub.w d0,$32(a0)
	bne.s loc_20d6b8
	move.w $30(a0),$32(a0)
	bsr.s sub_20d6d4
	move.w $34(a0),d0
	sub.w $8(a0),d0
	bpl.s loc_20d69e
	neg.w d0
loc_20d69e:
	cmpi.w #$50,d0
	bge.s loc_20d6c4
	jsr (sub_206ce0).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20d6c4
	add.w d1,$c(a0)
loc_20d6b8:
	subq.w #$1,$2e(a0)
	bne.s loc_20d6c2
	subq.b #$2,$24(a0)
loc_20d6c2:
	rts
loc_20d6c4:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bsr.s sub_20d6d4
	bra.s loc_20d680

sub_20d6d4:
	btst.b #$0,$1(a0)
	bne.s loc_20d6e2
	subq.w #$1,$8(a0)
	bra.s loc_20d6e6
loc_20d6e2:
	addq.w #$1,$8(a0)
loc_20d6e6:
	rts
	.incbin 55016, 32
	tst.b $28(a0)
	bmi.w loc_20d916
	jsr (sub_20ead4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d730(pc,d0.w),d0
	jsr dat_20d730(pc,d0.w)
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20d730:
	dc.b $00,$0e,$00,$82,$00,$96,$00,$c4
	dc.b $00,$d4,$01,$52,$01,$5e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2414,$2(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.b #$35,$20(a0)
	lea dat_20d99c(pc),a1
	lea dat_20d990(pc),a2
	move.l #$fff80000,d0
	tst.b $28(a0)
	beq.s loc_20d78e
	lea dat_20da3c(pc),a1
	lea dat_20d996(pc),a2
	move.l #$fffb0000,d0
loc_20d78e:
	move.l a1,$4(a0)
	move.l a2,$2c(a0)
	move.l d0,$30(a0)
	tst.b $29(a0)
	beq.s loc_20d7ac
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d7ac:
	addq.b #$2,$24(a0)
	bra.s loc_20d7c6
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
	subq.w #$8,$c(a0)
	move.l $30(a0),$34(a0)
loc_20d7c6:
	addi.l #$4000,$34(a0)
	move.l $34(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_20d7f2
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	addq.w #$8,$c(a0)
loc_20d7f2:
	rts
	addq.b #$2,$24(a0)
	move.b #$36,$20(a0)
	move.w #$b4,$2a(a0)
	tst.b $28(a0)
	bne.s loc_20d826
	lea ($d000).w,a1
	bsr.s sub_20d83a
	tst.b d6
	beq.s loc_20d826
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$3c,$2a(a0)
	rts
loc_20d826:
	subq.w #$1,$2a(a0)
	bne.s loc_20d830
	subq.b #$6,$24(a0)
loc_20d830:
	movea.l $2c(a0),a1
	jmp (sub_205cbe).l

sub_20d83a:
	moveq #$0,d6
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20d880
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
	bcc.s loc_20d880
	tst.w d0
	smi d0
	btst.b #$0,$1(a0)
	seq d1
	eor.b d1,d0
	bne.s loc_20d880
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	moveq #$ffffffff,d6
loc_20d880:
	rts
	subq.w #$1,$2a(a0)
	bne.s loc_20d88c
	addq.b #$2,$24(a0)
loc_20d88c:
	rts
	jsr (sub_207bce).l
	bne.s loc_20d90e
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b #$1,$18(a1)
	move.w $2(a0),$2(a1)
	move.b #$c,$17(a1)
	move.b #$c,$19(a1)
	move.b #$8,$16(a1)
	move.b #$f7,$20(a1)
	move.l #$20dad2,$4(a1)
	move.w #$18,d0
	move.l #$30000,d1
	btst.b #$0,$1(a1)
	beq.s loc_20d8f6
	neg.w d0
	neg.l d1
loc_20d8f6:
	add.w d0,$8(a1)
	move.l d1,$34(a1)
	tst.b $1(a0)
	bpl.s loc_20d90e
	move.w #$a0,d0
	jsr (sub_202342).l
loc_20d90e:
	subi.b #$a,$24(a0)
	rts
loc_20d916:
	tst.w $2a(a0)
	bne.s loc_20d956
	tst.b $21(a0)
	beq.s loc_20d942
	clr.b $21(a0)
	lea ($d000).w,a1
	cmpi.b #$4,$24(a1)
	beq.s loc_20d942
	cmpi.b #$6,$24(a1)
	beq.s loc_20d942
	tst.w $30(a1)
	bne.s loc_20d942
	bra.s loc_20d94c
loc_20d942:
	move.l $34(a0),d0
	add.l d0,$8(a0)
	bra.s loc_20d97a
loc_20d94c:
	move.w a1,$2c(a0)
	move.w #$78,$2a(a0)
loc_20d956:
	subq.w #$1,$2a(a0)
	bne.s loc_20d962
	jmp (sub_203b60).l
loc_20d962:
	movea.w $2c(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	clr.w $10(a1)
	clr.w $14(a1)
loc_20d97a:
	lea dat_20dacc(pc),a1
	jsr (sub_205cbe).l
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20d990:
	dc.b $00,$02,$07,$01,$02,$ff
dat_20d996:
	dc.b $00,$02,$0f,$01,$02,$ff
dat_20d99c:
	.incbin 55708, 160
dat_20da3c:
	.incbin 55868, 144
dat_20dacc:
	.incbin 56012, 22
	tst.b $28(a0)
	bmi.w loc_20dc70
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20db04(pc,d0.w),d0
	jsr dat_20db04(pc,d0.w)
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20db04:
	dc.b $00,$06,$00,$3c,$00,$80
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$4332,$2(a0)
	move.l #$20dca8,$4(a0)
	tst.b $28(a0)
	beq.s loc_20db58
	lea ($d000).w,a1
	bsr.s sub_20db62
	bcc.s loc_20db58
	addq.b #$2,$24(a0)
	move.b #$f8,$20(a0)
loc_20db58:
	lea ($d000).w,a1
	jmp (sub_208fdc).l

sub_20db62:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subq.w #$8,d0
	subi.w #$58,d0
	bcc.s loc_20db82
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fff8,d0
	subi.w #$10,d0
loc_20db82:
	rts
	.incbin 56196, 236
loc_20dc70:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	jsr (sub_203ab4).l
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	bgt.s loc_20dca6
	jmp (sub_203b60).l
loc_20dca6:
	rts
	.incbin 56488, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dcfa(pc,d0.w),d0
	jsr dat_20dcfa(pc,d0.w)
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20dcfa:
	dc.b $00,$06,$00,$56,$00,$8e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.l #$20dddc,$4(a0)
	move.w #$342,d0
	tst.b ($ff152e).l
	beq.s loc_20dd48
	cmpi.b #$1,($ff152e).l
	beq.s loc_20dd4c
	tst.b ($ff156a).l
	bne.s loc_20dd4c
loc_20dd48:
	move.w #$4342,d0
loc_20dd4c:
	move.w d0,$2(a0)
	lea ($d000).w,a1
	bsr.s sub_20dd64
	bcc.s loc_20dd62
	addq.b #$2,$24(a0)
	move.b #$b9,$20(a0)
loc_20dd62:
	rts

sub_20dd64:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$18,d0
	subi.w #$68,d0
	bcc.s loc_20dd86
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fff8,d0
	subi.w #$10,d0
loc_20dd86:
	rts
	.incbin 56712, 98
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de4a(pc,d0.w),d0
	jsr dat_20de4a(pc,d0.w)
	jsr (sub_203ab4).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20de28
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20de28:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20de46
	rts
loc_20de46:
	bra.w loc_20dff8
dat_20de4a:
	dc.b $00,$10,$00,$60
dat_20de4e:
	dc.b $12,$0c,$00,$12,$0c,$83,$0a,$0e
	dc.b $82,$0a,$0e,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$44b,d0
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20dfd8,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20de4e(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20df14(pc)
	tst.b $1a(a0)
	beq.s loc_20debe
	lea ($d000).w,a1
	jmp (sub_208fdc).l
loc_20debe:
	lea ($d000).w,a1
	jsr (sub_208fdc).l
	beq.s loc_20df12
	btst.b #$3,$22(a0)
	beq.s loc_20df12
	tst.b ($ff1521).l
	bne.s loc_20df12
	tst.b ($ff151f).l
	bne.s loc_20df12
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20df10
	tst.w $30(a0)
	bne.s loc_20df10
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_20716e).l
loc_20df10:
	movea.l (a7)+,a0
loc_20df12:
	rts

sub_20df14:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20df2e
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20df30(pc,d0.w),d0
	jmp dat_20df30(pc,d0.w)
loc_20df2e:
	rts
dat_20df30:
	.incbin 57136, 200
loc_20dff8:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20e01c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20e01c:
	jmp (sub_203b60).l
	.incbin 57378, 2198
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8d2(pc,d0.w),d0
	jsr dat_20e8d2(pc,d0.w)
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
dat_20e8d2:
	dc.b $00,$06,$00,$3c,$00,$f6
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$30,$16(a0)
	move.b #$ee,$20(a0)
	move.w #$446b,$2(a0)
	move.l #$20e9fe,$4(a0)
	move.b $21(a0),d6
	beq.s loc_20e934
	clr.b $21(a0)
	lea ($d000).w,a1
	asr.w $10(a1)
	asr.w $14(a1)
	jsr (sub_208fdc).l
	beq.s loc_20e932
	jsr (sub_208e8e).l
loc_20e932:
	bra.s loc_20e93e
loc_20e934:
	lea ($d000).w,a1
	jmp (sub_208fdc).l
loc_20e93e:
	move.w #$b0,d0
	jsr (sub_202342).l
	addq.b #$2,$24(a0)
	clr.b $20(a0)
	lea dat_20ea74(pc),a6
	lea dat_20ea94(pc),a5
	lea dat_20ea6c(pc),a4
	moveq #$7,d6
	movea.w a0,a1
	bra.s loc_20e99a
loc_20e962:
	jsr (sub_207bce).l
	bne.s loc_20e9c8
	move.b $0(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
loc_20e99a:
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$c,$16(a1)
	move.w (a6)+,d0
	move.w (a6)+,d1
	add.w d0,$8(a1)
	add.w d1,$c(a1)
	move.l (a5)+,$2a(a1)
	move.l (a5)+,$2e(a1)
	move.b (a4)+,$1a(a1)
	dbf d6,loc_20e962
loc_20e9c8:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	ble.s loc_20e9f8
	jmp (sub_203ab4).l
loc_20e9f8:
	jmp (sub_203b60).l
	.incbin 59902, 110
dat_20ea6c:
	dc.b $02,$05,$03,$05,$04,$05,$07,$05
dat_20ea74:
	.incbin 60020, 32
dat_20ea94:
	.incbin 60052, 64

sub_20ead4:
	tst.b ($ff156a).l
	beq.s loc_20eb1a
	cmpi.b #$1,($ff152e).l
	bne.s loc_20eaec
	tst.b $28(a0)
	beq.s loc_20eb1a
loc_20eaec:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b60).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20eb18
	move.w #$9e,d0
	jsr (sub_202342).l
loc_20eb18:
	addq.l #$4,a7
loc_20eb1a:
	rts

sub_20eb1c:
	tst.b $28(a0)
	bmi.s loc_20eb4c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20eb3c
	tst.b ($ff156d).l
	bne.s loc_20eb4c
	addq.l #$4,a7
	jmp (sub_207c04).l
loc_20eb3c:
	tst.b ($ff156a).l
	bne.s loc_20eb4c
	addq.l #$4,a7
	jmp (sub_203b60).l
loc_20eb4c:
	rts
	jsr (sub_20eb1c).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ec70
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eb6e(pc,d0.w),d0
	jmp dat_20eb6e(pc,d0.w)
dat_20eb6e:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ede8,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20ed3e
	bsr.w sub_20ed4c
	tst.b $28(a0)
	bmi.s loc_20ebbc
	move.b #$4,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20ebbc:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20ec50
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20ebf4
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20ed3e
loc_20ebf4:
	move.b d0,$2e(a0)
	lea dat_20ed6a(pc),a1
	jsr (sub_205cbe).l
	jsr (sub_203ab4).l
	move.w $2a(a0),d0
	jmp (loc_207c08).l
	movea.w $3e(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.w loc_20ed38
	tst.b $3f(a1)
	bne.w loc_20ed38
	moveq #$3,d2
	moveq #$4,d3
	bsr.w sub_20ec50
	addq.b #$4,$2e(a0)
	move.b $2e(a0),d0
	andi.b #$7f,d0
	beq.w sub_20ed3e
	lea dat_20ed6a(pc),a1
	jsr (sub_205cbe).l
	jmp (sub_203ab4).l

sub_20ec50:
	move.b $2e(a0),d0
	jsr (sub_200766).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20ec70:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ec7e(pc,d0.w),d0
	jmp dat_20ec7e(pc,d0.w)
dat_20ec7e:
	dc.b $00,$06,$00,$4c,$00,$94
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20edfc,$4(a0)
	move.w $8(a0),$2a(a0)
	bsr.w sub_20ed4c
	tst.b $28(a0)
	bmi.s loc_20ecc0
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20ecc0:
	move.b #$4,$24(a0)
	bra.w sub_20ed3e
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206ce0).l
	tst.w d1
	bpl.s loc_20ed06
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20ed3e
loc_20ed06:
	jsr (sub_203ab4).l
	jmp (sub_207c04).l
	movea.w $3e(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.w loc_20ed38
	tst.b $3f(a1)
	bne.w loc_20ed38
	lea dat_20edac(pc),a1
	jsr (sub_205cbe).l
	jmp (sub_203ab4).l
loc_20ed38:
	jmp (sub_203b60).l

sub_20ed3e:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20ed4c:
	lea dat_20ee20(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20ed6a:
	.incbin 60778, 66
dat_20edac:
	.incbin 60844, 116
dat_20ee20:
	.incbin 60960, 22
	tst.b $28(a0)
	bne.w loc_20f044
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ee70(pc,d0.w),d0
	jsr dat_20ee70(pc,d0.w)
	jsr (sub_203ab4).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20ee6e
	jsr (sub_207c04).l
	tst.b (a0)
	bne.s loc_20ee6e
	move.w #$7,d0
	jmp (sub_20250c).l
loc_20ee6e:
	rts
dat_20ee70:
	dc.b $00,$10,$01,$22,$01,$3a,$01,$64
	dc.b $01,$c2
loc_20ee7a:
	jmp (sub_203b60).l
	tst.b ($ff156d).l
	bne.s loc_20ee7a
	move.w #$8,d0
	jsr (sub_20250c).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$fb,$20(a0)
	move.w #$3b6,$2(a0)
	move.l #$20f0f4,$4(a0)
	move.l #$20f138,$2c(a0)
	jsr (sub_207bce).l
	bne.w loc_20ee7a
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207bce).l
	bne.w loc_20ee7a
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207bce).l
	bne.w loc_20ee7a
	move.b #$2d,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207bce).l
	bne.w loc_20ee7a
	move.b #$2d,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$64,$8(a1)
	addq.w #$4,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20efa0
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20efa0:
	lea ($d000).w,a1
	jmp (sub_208fdc).l
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	st $3f(a0)
	move.w #$7,d0
	jsr (sub_20250c).l
	lea ($d000).w,a1
	jsr (sub_208fdc).l
	beq.s loc_20efd4
	jsr (sub_208e8e).l
loc_20efd4:
	movea.l $2c(a0),a6
	move.b (a6)+,d0
	bmi.s loc_20f026
	addq.b #$1,$2a(a0)
	cmp.b $2a(a0),d0
	bne.s loc_20f024
	move.b (a6)+,d5
	move.b (a6)+,d6
	move.l a6,$2c(a0)
	ext.w d5
	ext.w d6
	jsr (sub_207bce).l
	bne.s loc_20f024
	move.b #$18,$0(a1)
	move.b #$1,$25(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	add.w d5,$8(a1)
	add.w d6,$c(a1)
	move.w #$9e,d0
	jsr (sub_202342).l
loc_20f024:
	rts
loc_20f026:
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
	rts
	subq.w #$1,$2a(a0)
	bne.s loc_20f042
	st ($ff156d).l
	bra.w loc_20ee7a
loc_20f042:
	rts
loc_20f044:
	movea.w $3e(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.w loc_20ee7a
	tst.b $3f(a1)
	bne.w loc_20ee7a
	tst.b $24(a0)
	bne.s loc_20f0a0
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$3b6,$2(a0)
	move.l #$20f0f4,$4(a0)
	moveq #$8,d0
	moveq #$4,d1
	moveq #$0,d2
	tst.b $28(a0)
	bmi.s loc_20f090
	moveq #$14,d0
	moveq #$18,d1
	moveq #$1,d2
loc_20f090:
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
loc_20f0a0:
	lea dat_20f0b0(pc),a1
	jsr (sub_205cbe).l
	jmp (sub_203ab4).l
dat_20f0b0:
	.incbin 61616, 1786

sub_20f7aa:
	jmp (loc_206532).l
dat_20f7b0:
	.incbin 63408, 16
dat_20f7c0:
	.incbin 63424, 1388
	tst.b ($ff156a).l
	beq.s loc_20fd72
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fd44
	tst.b $28(a0)
	beq.s loc_20fd72
loc_20fd44:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b52).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd70
	move.w #$9e,d0
	jsr ($202598).l
loc_20fd70:
	addq.l #$4,a7
loc_20fd72:
	rts
	tst.b $28(a0)
	bmi.s loc_20fda4
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fd94
	tst.b ($ff156d).l
	bne.s loc_20fda4
	addq.l #$4,a7
	jmp (loc_2078a4).l
loc_20fd94:
	tst.b ($ff156a).l
	bne.s loc_20fda4
	addq.l #$4,a7
	jmp (sub_203b52).l
loc_20fda4:
	rts
	jmp (loc_2067ac).l
	.incbin 64940, 66132
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 7800
dat_235534:
	.incbin 218420, 256
dat_235634:
	.incbin 218676, 4096
dat_236634:
	.incbin 222772, 4896
dat_237954:
	.incbin 227668, 16618
dat_23ba3e:
	.incbin 244286, 768
dat_23bd3e:
	.incbin 245054, 17090
