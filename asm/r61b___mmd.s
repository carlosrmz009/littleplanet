; R61B__.MMD
; disassembled from the disc; code only, data comes from data/R61B__.MMD at build time
	.file "R61B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$90
	jmp (loc_201c06).l
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
	bsr.w sub_20213c
	bsr.w sub_2020e4
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201480

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200204).l,a1
	lea (dat_20020c).l,a2
	bsr.w sub_2001c6
	lea (dat_200212).l,a1
	lea (dat_20021a).l,a2
	bsr.w sub_2001c6
	lea (dat_200220).l,a1
	lea (dat_200228).l,a2
	bsr.s sub_2001c6
	lea (dat_20022e).l,a1
	lea (dat_2002aa).l,a2

sub_2001c6:
	subq.b #$1,(a5)
	bpl.s loc_2001fa
	moveq #$0,d0
	move.b (a1)+,d0
	move.b (a1)+,d1
	add.w d0,d0
	lea ($fb00).w,a3
	lea $0(a3,d0.w),a3
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b d1,d0
	bcs.s loc_2001e6
	moveq #$0,d0
loc_2001e6:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001fa:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200204:
	dc.b $21,$03,$01,$00,$01,$01,$01,$02
dat_20020c:
	dc.b $0e,$0e,$06,$06,$00,$00
dat_200212:
	dc.b $22,$03,$01,$00,$01,$01,$01,$02
dat_20021a:
	dc.b $06,$06,$00,$00,$0e,$0e
dat_200220:
	dc.b $23,$03,$01,$00,$01,$01,$01,$02
dat_200228:
	dc.b $00,$00,$0e,$0e,$06,$06
dat_20022e:
	.incbin 558, 124
dat_2002aa:
	dc.b $00,$00,$08,$42,$00,$ee,$0e,$ee

sub_2002b2:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2002c4:
	move.w d1,(a0)+
	dbf d0,loc_2002c4
	move.w #$15,d4
loc_2002ce:
	move.b #$12,($f62a).w
	bsr.w sub_2007c4
	bsr.s sub_2002e4
	bsr.w sub_202502
	dbf d4,loc_2002ce
	rts

sub_2002e4:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002fa:
	bsr.s sub_200328
	dbf d0,loc_2002fa
	cmpi.b #$1,($ff1506).l
	bne.s loc_200326
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200320:
	bsr.s sub_200328
	dbf d0,loc_200320
loc_200326:
	rts

sub_200328:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200350
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20033e
	move.w d1,(a0)+
	rts
loc_20033e:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_20034c
	move.w d1,(a0)+
	rts
loc_20034c:
	addq.w #$2,(a0)+
	rts
loc_200350:
	addq.w #$2,a0
	rts

sub_200354:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20035e:
	move.b #$12,($f62a).w
	bsr.w sub_2007c4
	bsr.s sub_200374
	bsr.w sub_202502
	dbf d4,loc_20035e
	rts

sub_200374:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200384:
	bsr.s sub_2003a2
	dbf d0,loc_200384
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20039a:
	bsr.s sub_2003a2
	dbf d0,loc_20039a
	rts

sub_2003a2:
	move.w (a0),d2
	beq.s loc_2003ce
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003b2
	subq.w #$2,(a0)+
	rts
loc_2003b2:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_2003c0
	subi.w #$20,(a0)+
	rts
loc_2003c0:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_2003ce
	subi.w #$200,(a0)+
	rts
loc_2003ce:
	addq.w #$2,a0
	rts

sub_2003d2:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003ec:
	move.w d1,(a0)+
	dbf d0,loc_2003ec
	move.w #$15,d4
loc_2003f6:
	move.b #$12,($f62a).w
	bsr.w sub_2007c4
	bsr.s sub_20040c
	bsr.w sub_202502
	dbf d4,loc_2003f6
	rts

sub_20040c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200422:
	bsr.s sub_200450
	dbf d0,loc_200422
	cmpi.b #$1,($ff1506).l
	bne.s loc_20044e
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200448:
	bsr.s sub_200450
	dbf d0,loc_200448
loc_20044e:
	rts

sub_200450:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20047c
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200468
	cmp.w d2,d1
	bcs.s loc_200468
	move.w d1,(a0)+
	rts
loc_200468:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200478
	cmp.w d2,d1
	bcs.s loc_200478
	move.w d1,(a0)+
	rts
loc_200478:
	subq.w #$2,(a0)+
	rts
loc_20047c:
	addq.w #$2,a0
	rts

sub_200480:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20048a:
	move.b #$12,($f62a).w
	bsr.w sub_2007c4
	bsr.s sub_2004a0
	bsr.w sub_202502
	dbf d4,loc_20048a
	rts

sub_2004a0:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004b0:
	bsr.s sub_2004ce
	dbf d0,loc_2004b0
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004c6:
	bsr.s sub_2004ce
	dbf d0,loc_2004c6
	rts

sub_2004ce:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20050a
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_2004e6
	addq.w #$2,(a0)+
	rts
loc_2004e6:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004f8
	addi.w #$20,(a0)+
	rts
loc_2004f8:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20050a
	addi.w #$200,(a0)+
	rts
loc_20050a:
	addq.w #$2,a0
	rts

sub_20050e:
	lea (dat_20057a).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200522:
	move.l (a2)+,(a3)+
	dbf d7,loc_200522
	rts

sub_20052a:
	lea (dat_20057a).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20053a:
	move.l (a2)+,(a3)+
	dbf d7,loc_20053a
	rts
	.incbin 1346, 56
dat_20057a:
	.incbin 1402, 586

sub_2007c4:
	move.w #$2300,sr
loc_2007c8:
	tst.b ($f62a).w
	bne.s loc_2007c8
	rts

sub_2007d0:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007e8(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007e8(pc,d0.w),d0
	rts
dat_2007e8:
	.incbin 2024, 640

sub_200a68:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200ac4
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a82
	neg.w d3
loc_200a82:
	tst.w d4
	bpl.w loc_200a8a
	neg.w d4
loc_200a8a:
	cmp.w d3,d4
	bcc.w loc_200a9c
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200ace(pc,d4.w),d0
	bra.s loc_200aa6
loc_200a9c:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200ace(pc,d3.w),d0
loc_200aa6:
	tst.w d1
	bpl.w loc_200ab2
	neg.w d0
	addi.w #$80,d0
loc_200ab2:
	tst.w d2
	bpl.w loc_200abe
	neg.w d0
	addi.w #$100,d0
loc_200abe:
	movem.l (a7)+,d3-d4
	rts
loc_200ac4:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200ace:
	.incbin 2766, 258

sub_200bd0:
	btst.b #$3,$22(a0)
	beq.s loc_200be4
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200be4:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c06
	move.b $26(a0),d0
	bpl.s loc_200c00
	subq.b #$1,d0
loc_200c00:
	addi.b #$20,d0
	bra.s loc_200c12
loc_200c06:
	move.b $26(a0),d0
	bpl.s loc_200c0e
	addq.b #$1,d0
loc_200c0e:
	addi.b #$1f,d0
loc_200c12:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e9c
	cmpi.b #$80,d0
	beq.w loc_200dfa
	cmpi.b #$c0,d0
	beq.w loc_200d5e
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
	bsr.w sub_201126
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
	bsr.w sub_201126
	move.w (a7)+,d0
	bsr.w sub_200d32
	tst.w d1
	beq.s loc_200ca0
	bpl.s loc_200ca2
	cmpi.w #$fff2,d1
	blt.s loc_200cc8
	add.w d1,$c(a0)
loc_200ca0:
	rts
loc_200ca2:
	cmpi.w #$e,d1
	bgt.s loc_200cae
loc_200ca8:
	add.w d1,$c(a0)
	rts
loc_200cae:
	tst.b $38(a0)
	bne.s loc_200ca8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cc8:
	rts
	.incbin 3274, 34
loc_200cec:
	rts
	.incbin 3310, 68

sub_200d32:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d40
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d40:
	btst.l #$0,d2
	bne.s loc_200d4c
	move.b d2,$26(a0)
	rts
loc_200d4c:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d5e:
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
	bsr.w sub_201296
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
	bsr.w sub_201296
	move.w (a7)+,d0
	bsr.w sub_200d32
	tst.w d1
	beq.s loc_200dd2
	bpl.s loc_200dd4
	cmpi.w #$fff2,d1
	blt.w loc_200cec
	add.w d1,$8(a0)
loc_200dd2:
	rts
loc_200dd4:
	cmpi.w #$e,d1
	bgt.s loc_200de0
loc_200dda:
	add.w d1,$8(a0)
	rts
loc_200de0:
	tst.b $38(a0)
	bne.s loc_200dda
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dfa:
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
	bsr.w sub_201126
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
	bsr.w sub_201126
	move.w (a7)+,d0
	bsr.w sub_200d32
	tst.w d1
	beq.s loc_200e74
	bpl.s loc_200e76
	cmpi.w #$fff2,d1
	blt.w loc_200cc8
	sub.w d1,$c(a0)
loc_200e74:
	rts
loc_200e76:
	cmpi.w #$e,d1
	bgt.s loc_200e82
loc_200e7c:
	sub.w d1,$c(a0)
	rts
loc_200e82:
	tst.b $38(a0)
	bne.s loc_200e7c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e9c:
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
	bsr.w sub_201296
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
	bsr.w sub_201296
	move.w (a7)+,d0
	bsr.w sub_200d32
	tst.w d1
	beq.s loc_200f16
	bpl.s loc_200f18
	cmpi.w #$fff2,d1
	blt.w loc_200cec
	sub.w d1,$8(a0)
loc_200f16:
	rts
loc_200f18:
	cmpi.w #$e,d1
	bgt.s loc_200f24
loc_200f1e:
	sub.w d1,$8(a0)
	rts
loc_200f24:
	tst.b $38(a0)
	bne.s loc_200f1e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f3e:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f54
	andi.w #$380,d0
loc_200f54:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fb4
	bmi.s loc_200fb8
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f84
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f8a
loc_200f84:
	andi.w #$7fff,$2(a0)
loc_200f8a:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f9a
	bclr.b #$6,$1(a0)
loc_200f9a:
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
loc_200fb4:
	movea.l d1,a1
	rts
loc_200fb8:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201020
	btst.b #$6,$1(a0)
	bne.s loc_200fe6
	cmpi.b #$14,d1
	bne.w loc_20110a
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20110a
loc_200fe6:
	cmpi.b #$15,d1
	bne.s loc_200ff4
	move.w #$60,d1
	bra.w loc_20110a
loc_200ff4:
	cmpi.b #$1e,d1
	bne.s loc_201002
	move.w #$61,d1
	bra.w loc_20110a
loc_201002:
	cmpi.b #$1f,d1
	bne.s loc_201010
	move.w #$62,d1
	bra.w loc_20110a
loc_201010:
	cmpi.b #$32,d1
	bne.w loc_20110a
	move.w #$63,d1
	bra.w loc_20110a
loc_201020:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201086
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201070
	cmpi.b #$6,d1
	beq.s loc_201070
	tst.b ($ff1956).l
	beq.w loc_20110a
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201080
	cmpi.b #$3c,d1
	beq.s loc_201080
	cmpi.b #$37,d1
	beq.s loc_201080
	cmpi.b #$2f,d1
	beq.s loc_201080
	cmpi.b #$16,d1
	beq.s loc_201080
	bra.w loc_20110a
loc_201070:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20110a
loc_201080:
	addq.b #$1,d1
	bra.w loc_20110a
loc_201086:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010f6
	cmpi.b #$3,$0(a0)
	bcc.w loc_20110a
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20110a
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010ba
	move.w #$6a,d1
	bra.s loc_20110a
loc_2010ba:
	cmpi.b #$48,d1
	bne.s loc_2010c6
	move.w #$6b,d1
	bra.s loc_20110a
loc_2010c6:
	cmpi.b #$4a,d1
	bne.s loc_2010d2
	move.w #$6c,d1
	bra.s loc_20110a
loc_2010d2:
	cmpi.b #$10,d1
	bne.s loc_2010de
	move.w #$6d,d1
	bra.s loc_20110a
loc_2010de:
	cmpi.b #$63,d1
	bne.s loc_2010ea
	move.w #$6e,d1
	bra.s loc_20110a
loc_2010ea:
	cmpi.b #$43,d1
	bne.s loc_20110a
	move.w #$6f,d1
	bra.s loc_20110a
loc_2010f6:
	btst.b #$6,$1(a0)
	beq.s loc_20110a
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20110a
	move.w #$51,d1
loc_20110a:
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

sub_201126:
	bsr.w sub_200f3e
	cmpi.l #$210000,d1
	beq.s loc_201140
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201140
	btst.l d5,d4
	bne.s loc_20114e
loc_201140:
	add.w a3,d2
	bsr.w sub_2011e6
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20114e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201140
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201174
	not.w d1
	neg.b (a4)
loc_201174:
	btst.l #$c,d4
	beq.s loc_201184
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201184:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011a0
	neg.w d0
loc_2011a0:
	tst.w d0
	beq.s loc_201140
	bmi.s loc_2011bc
	cmpi.b #$10,d0
	beq.s loc_2011d8
loc_2011ac:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011bc:
	cmpa.w #$10,a3
	bne.s loc_2011cc
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011ac
loc_2011cc:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201140
loc_2011d8:
	sub.w a3,d2
	bsr.w sub_2011e6
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011e6:
	bsr.w sub_200f3e
	cmpi.l #$210000,d1
	beq.s loc_201200
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201200
	btst.l d5,d4
	bne.s loc_20120e
loc_201200:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20120e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201200
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201234
	not.w d1
	neg.b (a4)
loc_201234:
	btst.l #$c,d4
	beq.s loc_201244
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201244:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201260
	neg.w d0
loc_201260:
	tst.w d0
	beq.s loc_201200
	bmi.s loc_201276
loc_201266:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201276:
	cmpa.w #$10,a3
	bne.s loc_201286
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201266
loc_201286:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201200
	not.w d1
	rts

sub_201296:
	bsr.w sub_200f3e
	cmpi.l #$210000,d1
	beq.s loc_2012b0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012b0
	btst.l d5,d4
	bne.s loc_2012be
loc_2012b0:
	add.w a3,d3
	bsr.w sub_201346
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012be:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012b0
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012ec
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ec:
	btst.l #$b,d4
	beq.s loc_2012f4
	neg.b (a4)
loc_2012f4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201310
	neg.w d0
loc_201310:
	tst.w d0
	beq.s loc_2012b0
	bmi.s loc_20132c
	cmpi.b #$10,d0
	beq.s loc_201338
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20132c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012b0
loc_201338:
	sub.w a3,d3
	bsr.w sub_201346
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201346:
	bsr.w sub_200f3e
	cmpi.l #$210000,d1
	beq.s loc_201360
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201360
	btst.l d5,d4
	bne.s loc_20136e
loc_201360:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20136e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201360
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20139c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20139c:
	btst.l #$b,d4
	beq.s loc_2013a4
	neg.b (a4)
loc_2013a4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013c0
	neg.w d0
loc_2013c0:
	tst.w d0
	beq.s loc_201360
	bmi.s loc_2013d6
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013d6:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201360
	not.w d1
	rts

sub_2013e6:
	rts
	.incbin 5096, 152
loc_201480:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014a0
	tst.b ($ff0f01).l
	bne.s loc_2014a0
	move.b #$1,($ff156a).l
loc_2014a0:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201506
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20772c
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201506
	move.b #$1,($ff1508).l
loc_201506:
	bset.b #$7,($f600).w
	bsr.w sub_2024f4
	tst.b ($ff156e).l
	bne.s loc_20152c
	btst.b #$7,($ff152e).l
	beq.s loc_201562
	bset.b #$0,($ff151d).l
	beq.s loc_201538
loc_20152c:
	bsr.w sub_200480
	bclr.b #$0,($ff151d).l
loc_201538:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015d2
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201560
	bclr.b #$7,($ff152e).l
loc_201560:
	rts
loc_201562:
	bset.b #$0,($ff151d).l
	beq.s loc_201570
	bsr.w sub_200354
loc_201570:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20158c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015b4
loc_20158c:
	tst.b ($ff1508).l
	bne.s loc_2015d2
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015b4:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015bc:
	move.l #$0,(a1)+
	dbf d6,loc_2015bc
	move.b #$c,($f62a).w
	bsr.w sub_2007c4
	rts
loc_2015d2:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015f0
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015f0:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201606
	btst.b #$7,($ff152e).l
	beq.s loc_20160c
loc_201606:
	move.l #$eee0eee,d0
loc_20160c:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201614:
	move.l d0,(a1)+
	dbf d6,loc_201614
loc_20161a:
	move.b #$c,($f62a).w
	bsr.w sub_2007c4
	bsr.w sub_202502
	bne.s loc_20161a
	tst.l ($f680).w
	bsr.w sub_201ac0
	moveq #$0,d0
	lea (dat_20fe50).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201644
	bsr.w sub_202608
loc_201644:
	moveq #$1,d0
	bsr.w sub_202608
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201660:
	move.l d0,(a1)+
	dbf d1,loc_201660
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201672:
	move.l d0,(a1)+
	dbf d1,loc_201672
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201682:
	move.l d0,(a1)+
	dbf d1,loc_201682
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201694:
	move.l d0,(a1)+
	dbf d1,loc_201694
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2016a4:
	move.l d0,(a1)+
	dbf d1,loc_2016a4
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016b4:
	move.l d0,(a1)+
	dbf d1,loc_2016b4
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2021de
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
	bsr.w sub_20052a
	moveq #$3,d0
	bsr.w sub_20050e
	bsr.w sub_20286a
	bsr.w sub_2029be
	bset.b #$2,($f754).w
	bsr.w sub_203428
	bsr.w sub_20332e
	jsr (sub_2013e6).l
	bsr.w sub_2019fa
loc_201734:
	move.b #$c,($f62a).w
	bsr.w sub_2007c4
	bsr.w sub_202502
	bne.s loc_201734
	tst.l ($f680).w
	bne.s loc_201734
	bsr.w sub_201986
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b20
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201798
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201798:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017da
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017da:
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
	jsr (sub_20fcdc).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20186a
loc_201864:
	bsr.w sub_2003d2
	bra.s loc_201878
loc_20186a:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201864
	bsr.w sub_2002b2
loc_201878:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201886:
	move.b #$8,($f62a).w
	bsr.w sub_2007c4
	tst.b ($f7cc).w
	bne.s loc_2018a4
	btst.b #$7,($f605).w
	beq.s loc_2018a4
	eori.b #$1,($f63a).w
loc_2018a4:
	btst.b #$0,($f63a).w
	beq.w loc_201916
	bsr.w sub_201b84
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018f4
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201886
	subq.b #$1,($ff1508).l
	bpl.s loc_2018d6
	clr.b ($ff1508).l
loc_2018d6:
	move.w #$e,d0
	jsr (sub_205e58).l
	bsr.w sub_20772c
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201902
loc_2018f4:
	andi.b #$70,d0
	beq.w loc_201886
	clr.b ($ff1508).l
loc_201902:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201480
loc_201916:
	bsr.w sub_201bca
	addq.w #$1,($ff1504).l
	jsr (sub_207742).l
	jsr (sub_20382e).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201480
	tst.w ($ff1502).l
	bne.w loc_201480
	tst.w ($ff1906).l
	bne.s loc_20195e
	cmpi.b #$6,($d024).w
	bcs.s loc_20195e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201962
loc_20195e:
	bsr.w sub_2029be
loc_201962:
	jsr (sub_2039d8).l
	tst.w ($ff190e).l
	bne.s loc_201974
	bsr.w sub_200184
loc_201974:
	jsr (sub_20ca48).l
	bsr.w sub_202502
	bsr.w sub_201a2c
	bra.w loc_201886

sub_201986:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20199e
	move.w #$78,$30(a1)
loc_20199e:
	rts
	.incbin 6560, 90

sub_2019fa:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a0c(pc,d0.w),($f796).w
	rts
dat_201a0c:
	.incbin 6668, 32

sub_201a2c:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a4a
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a4a:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a68
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a68:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a90
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a90
	move.b #$0,($ff1915).l
loc_201a90:
	tst.b ($ff1916).l
	beq.s loc_201abe
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201abe:
	rts

sub_201ac0:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201ae2
	cmpi.b #$2,d0
	bne.s loc_201ae2
	add.b ($ff156a).l,d0
loc_201ae2:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201afa(pc,d1.w),d0
	jmp (sub_205e58).l
dat_201afa:
	.incbin 6906, 38

sub_201b20:
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

sub_201b84:
	move.w #$ab,d0
	jsr (sub_2022cc).l
	bset.b #$7,($f63a).w
	bne.s loc_201bc8
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bae
loc_201ba4:
	move.w #$d5,d0
	jmp (sub_205e58).l
loc_201bae:
	tst.b ($ff151f).l
	bne.s loc_201ba4
	tst.b ($ff1520).l
	bne.s loc_201ba4
	move.w #$90,d0
	jmp (sub_205e58).l
loc_201bc8:
	rts

sub_201bca:
	bclr.b #$7,($f63a).w
	beq.s loc_201c04
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bea
loc_201be0:
	move.w #$d6,d0
	jmp (sub_205e58).l
loc_201bea:
	tst.b ($ff151f).l
	bne.s loc_201be0
	tst.b ($ff1520).l
	bne.s loc_201be0
	move.w #$91,d0
	jmp (sub_205e58).l
loc_201c04:
	rts
loc_201c06:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c92
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c42
	move.w #$700,d0
loc_201c3e:
	dbf d0,loc_201c3e
loc_201c42:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c78(pc,d0.w),d0
	jsr dat_201c78(pc,d0.w)
loc_201c58:
	jsr (sub_2022f0).l
	tst.b ($f63a).w
	bne.s loc_201c6c
	bsr.w sub_2020a4
	bsr.w sub_202092
loc_201c6c:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c78:
	.incbin 7288, 26
loc_201c92:
	tst.b ($ff1957).l
	beq.w loc_201c58
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c58
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cc0
	move.w #$700,d0
loc_201cbc:
	dbf d0,loc_201cbc
loc_201cc0:
	move.w #$1,($f6fc).w
	jsr (sub_202264).l
	tst.b ($f64e).w
	bne.s loc_201cf8
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d1c
loc_201cf8:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d1c:
	move.w ($f624).w,(a5)
	jsr (sub_202280).l
	bra.w loc_201c58
	.incbin 7466, 60
	jsr (sub_202264).l
	bsr.w sub_202100
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
	bsr.w sub_205d84
	tst.b ($f767).w
	beq.s loc_201e14
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e14:
	jsr (sub_20fcdc).l
	jsr (sub_202280).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f24
	bsr.w sub_202574
	jmp (loc_20b278).l
	dc.b $4e,$75
	jsr (sub_202264).l
	bsr.w sub_202100
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
	jsr (sub_202280).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f24
	bra.w loc_202558
	.incbin 7916, 16
	bsr.w sub_201fe8
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f1e
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f1e:
	move.w ($f624).w,(a5)
	bra.w loc_202558
	.incbin 7974, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_202280).l
	lea ($d000).w,a0
	bsr.w sub_205d84
	tst.b ($f767).w
	beq.s loc_201fda
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201fda:
	tst.w ($f614).w
	beq.w loc_201fe6
	subq.w #$1,($f614).w
loc_201fe6:
	rts

sub_201fe8:
	jsr (sub_202264).l
	bsr.w sub_202100
	tst.b ($f64e).w
	bne.s loc_20201e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202042
loc_20201e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202042:
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
	jmp (sub_202280).l
	dc.b $4e,$73

sub_202092:
	tst.b ($d02a).w
	bne.s loc_2020a2
	tst.w ($f786).w
	beq.s loc_2020a2
	addq.w #$1,($f786).w
loc_2020a2:
	rts

sub_2020a4:
	tst.w ($f780).w
	beq.s loc_2020ae
	addq.w #$1,($f780).w
loc_2020ae:
	tst.w ($f782).w
	beq.s loc_2020b8
	addq.w #$1,($f782).w
loc_2020b8:
	rts
	.incbin 8378, 42

sub_2020e4:
	bsr.w sub_202264
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202280

sub_202100:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20210e
	addq.w #$2,a1

sub_20210e:
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

sub_20213c:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021b8).l,a2
	moveq #$12,d7
loc_202150:
	move.w (a2)+,(a0)
	dbf d7,loc_202150
	move.w (dat_2021ba).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202176:
	move.w d0,(a1)
	dbf d7,loc_202176
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021a8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021a8
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021b8:
	dc.b $80,$04
dat_2021ba:
	.incbin 8634, 36

sub_2021de:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202200:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202200
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20222e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20222e
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20224c:
	move.l d0,(a1)+
	dbf d1,loc_20224c
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20225c:
	move.l d0,(a1)+
	dbf d1,loc_20225c
	rts

sub_202264:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202274:
	btst.b #$0,($a11100).l
	bne.s loc_202274
	rts

sub_202280:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8846, 62

sub_2022cc:
	tst.b ($f00a).w
	bne.s loc_2022d8
	move.b d0,($f00a).w
	rts
loc_2022d8:
	tst.b ($f00b).w
	bne.s loc_2022e4
	move.b d0,($f00b).w
	rts
loc_2022e4:
	tst.b ($f00c).w
	bne.s loc_2022ee
	move.b d0,($f00c).w
loc_2022ee:
	rts

sub_2022f0:
	jsr (sub_202264).l
	tst.b ($f00a).w
	beq.s loc_20230a
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20230a:
	tst.b ($f00b).w
	beq.s loc_20231e
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20231e:
	tst.b ($f00c).w
	beq.s loc_202332
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202332:
	bra.w sub_202280
	.incbin 9014, 32

sub_202356:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202418).l,a3
	lea ($c00000).l,a4
	bra.s loc_202372

sub_202368:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20242e).l,a3
loc_202372:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202380
	adda.w #$a,a3
loc_202380:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202444
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2023a0
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2023a0:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2023ec
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023c8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023c8:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2023d6:
	lsr.w #$4,d0
loc_2023d8:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2023e6
	jmp (a3)

sub_2023e2:
	moveq #$0,d4
	moveq #$8,d3
loc_2023e6:
	dbf d0,loc_2023d8
	bra.s sub_2023a0
loc_2023ec:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2023fa
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023fa:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2023d6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2023d6
loc_202418:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023e2
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023e2
	rts
dat_20242e:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023e2
	rts

sub_202444:
	move.b (a0)+,d0
loc_202446:
	cmpi.b #$ff,d0
	bne.s loc_20244e
	rts
loc_20244e:
	move.w d0,d7
loc_202450:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202446
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
	bne.s loc_20247e
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202450
loc_20247e:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20248a:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20248a
	bra.s loc_202450

sub_202496:
	movem.l a1-a2,-(a7)
	lea (dat_20fe60).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024ae:
	tst.l (a2)
	beq.s loc_2024b6
	addq.w #$6,a2
	bra.s loc_2024ae
loc_2024b6:
	move.w (a1)+,d0
	bmi.s loc_2024c2
loc_2024ba:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024ba
loc_2024c2:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9416, 44

sub_2024f4:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2024fa:
	clr.l (a2)+
	dbf d0,loc_2024fa
	rts

sub_202502:
	tst.l ($f680).w
	beq.s loc_202556
	tst.w ($f6f8).w
	bne.s loc_202556
	movea.l ($f680).w,a0
	lea (loc_202418).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202524
	adda.w #$a,a3
loc_202524:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202444
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
loc_202556:
	rts
loc_202558:
	tst.w ($f6f8).w
	beq.w loc_2025f6
loc_202560:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202592

sub_202574:
	tst.w ($f6f8).w
	beq.s loc_2025f6
	tst.b ($f744).w
	bne.s loc_202560
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202592:
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
loc_2025c6:
	movea.w #$8,a5
	bsr.w sub_2023e2
	subq.w #$1,($f6f8).w
	beq.s loc_2025f8
	subq.w #$1,($f6fa).w
	bne.s loc_2025c6
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025f6:
	rts
loc_2025f8:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2025fe:
	move.l $6(a0),(a0)+
	dbf d0,loc_2025fe
	rts

sub_202608:
	lea (dat_20fe60).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20261a:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202356
	dbf d1,loc_20261a
	rts
	.incbin 9786, 560

sub_20286a:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028c6).l,a0
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
	bra.w loc_2028f2
dat_2028c6:
	dc.b $00,$04,$00,$00,$22,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_2028d2:
	.incbin 10450, 32
loc_2028f2:
	tst.b ($ff1522).l
	beq.s loc_202912
	jsr (sub_2069e2).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202910
	moveq #$0,d0
loc_202910:
	bra.s loc_20294e
loc_202912:
	lea (dat_20298a).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202934
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_2028d2).l,a1
	adda.w d0,a1
	bra.s loc_20293e
loc_202934:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_20293e:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_20294e:
	subi.w #$a0,d1
	bcc.s loc_202956
	moveq #$0,d1
loc_202956:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202960
	move.w d2,d1
loc_202960:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20296c
	moveq #$0,d0
loc_20296c:
	cmp.w ($f72e).w,d0
	blt.s loc_202976
	move.w ($f72e).w,d0
loc_202976:
	move.w d0,($f704).w
	bsr.w sub_202992
	lea (dat_20298e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20298a:
	dc.b $00,$a0,$04,$ac
dat_20298e:
	dc.b $7f,$7f,$7f,$7f

sub_202992:
	swap d0
	lsr.l #$2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.w d1,($f718).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_2029be:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029ca
	rts
loc_2029ca:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b9a
	bsr.w sub_202c3a
	bsr.w sub_2034c2
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202ec4
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e90
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e5c
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202e2c
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
	bsr.w sub_202b14
	move.w ($f708).w,d0
	neg.w d0
	moveq #$d,d6
loc_202a6e:
	move.w d0,(a1)+
	dbf d6,loc_202a6e
	move.w ($f718).w,d0
	neg.w d0
	moveq #$1,d6
loc_202a7c:
	move.w d0,(a1)+
	dbf d6,loc_202a7c
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a8a:
	move.w d0,(a1)+
	dbf d6,loc_202a8a
	move.w ($f718).w,d0
	neg.w d0
	moveq #$b,d6
loc_202a98:
	move.w d0,(a1)+
	dbf d6,loc_202a98
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202aa6:
	move.w d0,(a1)+
	dbf d6,loc_202aa6
	move.w ($f718).w,d0
	neg.w d0
	moveq #$b,d6
loc_202ab4:
	move.w d0,(a1)+
	dbf d6,loc_202ab4
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202ac2:
	move.w d0,(a1)+
	dbf d6,loc_202ac2
	move.w ($f718).w,d0
	neg.w d0
	moveq #$b,d6
loc_202ad0:
	move.w d0,(a1)+
	dbf d6,loc_202ad0
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202ade:
	move.w d0,(a1)+
	dbf d6,loc_202ade
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b58
dat_202b02:
	.incbin 11010, 18

sub_202b14:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$11,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$10,d6
	adda.w #$38,a1
loc_202b38:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b02(pc,d6.w),d5
loc_202b42:
	move.w d0,-(a1)
	dbf d5,loc_202b42
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b38
	adda.w #$38,a1
	rts
loc_202b58:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b66(pc,d2.w)
loc_202b64:
	move.w (a2)+,d0
loc_202b66:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b64
	rts
	dc.b $44,$40,$4e,$fb,$20,$04,$44,$40
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b64
	rts

sub_202b9a:
	move.w ($f700).w,d4
	bsr.s sub_202bce
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bcc
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bc6
	bset.b #$2,($f754).w
	rts
loc_202bc6:
	bset.b #$3,($f754).w
loc_202bcc:
	rts

sub_202bce:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202be0
	bcs.s loc_202c10
	bra.s loc_202be6
loc_202be0:
	clr.w ($f73a).w
	rts
loc_202be6:
	cmpi.w #$10,d0
	blt.s loc_202bf0
	move.w #$10,d0
loc_202bf0:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bfe
	move.w ($f72a).w,d0
loc_202bfe:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c10:
	cmpi.w #$fff0,d0
	bge.s loc_202c1a
	move.w #$fff0,d0
loc_202c1a:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bfe
	move.w ($f728).w,d0
	bra.s loc_202bfe
	.incbin 11306, 16

sub_202c3a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c4e
	subq.w #$5,d0
loc_202c4e:
	btst.b #$1,$22(a6)
	beq.s loc_202c6e
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cba
	subi.w #$40,d0
	bcc.s loc_202cba
	tst.b ($f75c).w
	bne.s loc_202ccc
	bra.s loc_202c7a
loc_202c6e:
	sub.w ($f73e).w,d0
	bne.s loc_202c80
	tst.b ($f75c).w
	bne.s loc_202ccc
loc_202c7a:
	clr.w ($f73c).w
	rts
loc_202c80:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ca8
	move.w $14(a6),d1
	bpl.s loc_202c90
	neg.w d1
loc_202c90:
	cmpi.w #$800,d1
	bcc.s loc_202cba
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d1a
	cmpi.w #$fffa,d0
	blt.s loc_202ce4
	bra.s loc_202cd2
loc_202ca8:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d1a
	cmpi.w #$fffe,d0
	blt.s loc_202ce4
	bra.s loc_202cd2
loc_202cba:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d1a
	cmpi.w #$fff0,d0
	blt.s loc_202ce4
	bra.s loc_202cd2
loc_202ccc:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cd2:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d24
	bra.w loc_202cf0
loc_202ce4:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cf0:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d48
	cmpi.w #$ff00,d1
	bgt.s loc_202d14
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d48
loc_202d14:
	move.w ($f72c).w,d1
	bra.s loc_202d48
loc_202d1a:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d24:
	cmp.w ($f72e).w,d1
	blt.s loc_202d48
	subi.w #$800,d1
	bcs.s loc_202d44
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d48
loc_202d44:
	move.w ($f72e).w,d1
loc_202d48:
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
	bne.s loc_202d8a
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d84
	bset.b #$0,($f754).w
	rts
loc_202d84:
	bset.b #$1,($f754).w
loc_202d8a:
	rts
	.incbin 11660, 64
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202df4
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dee
	bset.b #$0,($f756).w
	rts
loc_202dee:
	bset.b #$1,($f756).w
loc_202df4:
	rts
	.incbin 11766, 54

sub_202e2c:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e5a
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e54
	bset.b #$0,($f756).w
	rts
loc_202e54:
	bset.b #$1,($f756).w
loc_202e5a:
	rts

sub_202e5c:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e8e
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e88
	bset.b d6,($f756).w
	bra.s loc_202e8e
loc_202e88:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e8e:
	rts

sub_202e90:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ec2
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ebc
	bset.b d6,($f758).w
	bra.s loc_202ec2
loc_202ebc:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ec2:
	rts

sub_202ec4:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ef6
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202ef0
	bset.b d6,($f75a).w
	bra.s loc_202ef6
loc_202ef0:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ef6:
	rts
	.incbin 12024, 44

sub_202f24:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fe2
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030c8
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030ca
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fe0
	bclr.b #$0,(a2)
	beq.s loc_202f96
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030cc
loc_202f96:
	bclr.b #$1,(a2)
	beq.s loc_202fb0
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030cc
loc_202fb0:
	bclr.b #$2,(a2)
	beq.s loc_202fc6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203122
loc_202fc6:
	bclr.b #$3,(a2)
	beq.s loc_202fe0
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032f6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203122
loc_202fe0:
	rts

sub_202fe2:
	lea (dat_2033ae).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202ffe
	bclr.b #$1,(a2)
	beq.s loc_203048
	move.w #$e0,d4
loc_202ffe:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203078(pc,d0.w),a3
	beq.s loc_203030
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032f6
	movem.l (a7)+,d4-d5
	bsr.w sub_2030cc
	movea.l (a7)+,a0
	bra.s loc_203048
loc_203030:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032f8
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030f8
	movea.l (a7)+,a0
loc_203048:
	tst.b (a2)
	bne.s loc_20304e
	rts
loc_20304e:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203062
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203062:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203088
dat_203078:
	.incbin 12408, 16
loc_203088:
	moveq #$f,d6
	move.l #$800000,d7
loc_203090:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030bc
	btst.b d0,(a2)
	beq.s loc_2030bc
	add.w d0,d0
	movea.l dat_203078(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ce
	movem.l (a7)+,d4-d5
	bsr.w sub_2032f6
	bsr.w sub_203150
	movem.l (a7)+,d4-d5/a0
loc_2030bc:
	addi.w #$10,d4
	dbf d6,loc_203090
	clr.b (a2)
	rts

sub_2030c8:
	rts

sub_2030ca:
	rts

sub_2030cc:
	moveq #$15,d6

sub_2030ce:
	move.l #$800000,d7
	move.l d0,d1
loc_2030d6:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ce
	move.l d1,d0
	bsr.w sub_203150
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030d6
	rts

sub_2030f8:
	move.l #$800000,d7
	move.l d0,d1
loc_203100:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031d0
	move.l d1,d0
	bsr.w sub_203150
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203100
	rts

sub_203122:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20312c:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ce
	move.l d1,d0
	bsr.w sub_203150
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20312c
	rts

sub_203150:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20318c
	btst.b #$3,(a0)
	bne.s loc_20316c
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20316c:
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
loc_20318c:
	btst.b #$3,(a0)
	bne.s loc_2031ae
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
loc_2031ae:
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

sub_2031ce:
	add.w (a3),d5

sub_2031d0:
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
	beq.s loc_20321e
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
loc_20321e:
	rts
	.incbin 12832, 214

sub_2032f6:
	add.w (a3),d5

sub_2032f8:
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
	.incbin 13074, 28

sub_20332e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203358
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203380

sub_203358:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20335c:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032f6
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030ce
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20335c
	rts
loc_203380:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203384:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033ae).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033f0
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203384
	rts
dat_2033ae:
	.incbin 13230, 50
dat_2033e0:
	.incbin 13280, 16

sub_2033f0:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033e0(pc,d0.w),a3
	beq.s loc_203412
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032f6
	movem.l (a7)+,d4-d5
	bsr.w sub_2030cc
	bra.s loc_203426
loc_203412:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032f8
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030f8
loc_203426:
	rts

sub_203428:
	moveq #$0,d0
	lea (dat_20fe50).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202368
	movea.l (a2)+,a0
	bsr.w sub_203474
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20050e
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203472
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203472
	bsr.w sub_202496
loc_203472:
	rts

sub_203474:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20347e:
	move.l d0,(a3)+
	dbf d1,loc_20347e
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203494
	lea ($a040).w,a3
	moveq #$2,d1

sub_203494:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b16).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034ae:
	move.w d1,d0
	movea.l a3,a0
loc_2034b2:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034b2
	lea $80(a3),a3
	dbf d2,loc_2034ae
	rts

sub_2034c2:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20353c(pc,d0.w),d0
	jsr dat_20353c(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034e8
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034e8:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203516
	bcc.s loc_203518
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20350c
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20350c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203516:
	rts
loc_203518:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203530
	btst.b #$1,($d022).w
	beq.s loc_203530
	add.w d1,d1
	add.w d1,d1
loc_203530:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20353c:
	.incbin 13628, 166
	rts
	.incbin 13796, 56
	btst.b #$4,($f7a7).w
	bne.s loc_20362c
	move.w #$710,($f726).w
	rts
loc_20362c:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_2037e8
	bne.w loc_203678
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_20365c
	cmpi.w #$498,$c(a1)
	ble.s loc_203656
	move.w #$5d0,d0
	bra.s loc_203660
loc_203656:
	move.w #$3d0,d0
	bra.s loc_203660
loc_20365c:
	move.w #$1d0,d0
loc_203660:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_20366e
	neg.w d0
loc_20366e:
	cmpi.w #$2,d0
	bgt.s loc_203678
	move.w d1,($f72e).w
loc_203678:
	rts
	.incbin 13946, 366

sub_2037e8:
	cmp.w ($d008).w,d0
	ble.s loc_2037f2
	moveq #$0,d0
	rts
loc_2037f2:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_2037fe
	neg.w d1
loc_2037fe:
	cmpi.w #$4,d1
	bge.s loc_20380a
	move.w ($f726).w,($f72e).w
loc_20380a:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_20382a
	cmp.w ($f72a).w,d0
	ble.s loc_203822
	move.w ($f72a).w,d0
loc_203822:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_20382a:
	moveq #$1,d0
	rts

sub_20382e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203836:
	move.b (a0),d0
	beq.s loc_20384c
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c50).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20384c:
	lea $40(a0),a0
	dbf d7,loc_203836
	rts

sub_203856:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203894
	bpl.s loc_203886
	btst.b #$1,$2c(a0)
	beq.s loc_203886
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203894
loc_203886:
	btst.b #$2,$2c(a0)
	bne.s loc_203894
	addi.w #$38,$12(a0)
loc_203894:
	tst.w $12(a0)
	bmi.s loc_2038a8
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038a8
	move.w #$1000,$12(a0)
loc_2038a8:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038b8:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038f4
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038f4
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038f2
	neg.w d1
loc_2038f2:
	add.w d1,d0
loc_2038f4:
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

sub_20390e:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20397e
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20399a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_20399a
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203958
	cmpi.w #$800,d3
	bcs.s loc_20396a
	subi.w #$800,d3
	bra.s loc_20396a
loc_203958:
	cmpi.w #$700,($f704).w
	bcs.s loc_20396a
	cmpi.w #$100,d3
	bcc.s loc_20396a
	addi.w #$800,d3
loc_20396a:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20399a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_20399a
loc_20397e:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_20399a
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_20399a:
	rts
	.incbin 14748, 30

sub_2039ba:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039c0:
	move.l d1,(a1)+
	dbf d0,loc_2039c0
	rts
dat_2039c8:
	.incbin 14792, 16

sub_2039d8:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039e4:
	tst.w (a4)
	beq.w loc_203aa4
	moveq #$2,d6
loc_2039ec:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a9c
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a52
	movea.l dat_2039c8(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a36
	cmpi.w #$800,d2
	bcs.s loc_203a48
	subi.w #$800,d2
	bra.s loc_203a48
loc_203a36:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a48
	cmpi.w #$100,d2
	bcc.s loc_203a48
	addi.w #$800,d2
loc_203a48:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a74
loc_203a52:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a74
	.incbin 14940, 24
loc_203a74:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a92
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a96
loc_203a92:
	bsr.w sub_203ac6
loc_203a96:
	bset.b #$7,$1(a0)
loc_203a9c:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039ec
loc_203aa4:
	lea $80(a4),a4
	dbf d7,loc_2039e4
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203abe
	move.l #$0,(a2)
	rts
loc_203abe:
	move.b #$0,-$5(a2)
	rts

sub_203ac6:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b0c
	btst.l #$1,d4
	bne.w loc_203b5a
loc_203ad8:
	cmpi.b #$50,d5
	beq.s loc_203b0a
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
	bne.s loc_203b04
	addq.w #$1,d0
loc_203b04:
	move.w d0,(a2)+
	dbf d1,loc_203ad8
loc_203b0a:
	rts
loc_203b0c:
	btst.l #$1,d4
	bne.w loc_203ba0
loc_203b14:
	cmpi.b #$50,d5
	beq.s loc_203b58
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
	bne.s loc_203b52
	addq.w #$1,d0
loc_203b52:
	move.w d0,(a2)+
	dbf d1,loc_203b14
loc_203b58:
	rts
loc_203b5a:
	cmpi.b #$50,d5
	beq.s loc_203b9e
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
	bne.s loc_203b98
	addq.w #$1,d0
loc_203b98:
	move.w d0,(a2)+
	dbf d1,loc_203b5a
loc_203b9e:
	rts
loc_203ba0:
	cmpi.b #$50,d5
	beq.s loc_203bf2
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
	bne.s loc_203bec
	addq.w #$1,d0
loc_203bec:
	move.w d0,(a2)+
	dbf d1,loc_203ba0
loc_203bf2:
	rts
	.incbin 15348, 92
dat_203c50:
	.incbin 15440, 246

sub_203d46:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d58
	move.w #$0,(a1)
	rts
loc_203d58:
	tst.w (a1)
	bne.s loc_203d62
	move.b #$1,$1(a1)
loc_203d62:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203dac
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d9e
	neg.w $10(a0)
loc_203d9e:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205e58
loc_203dac:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203dca
	cmpa.w #$d040,a0
	beq.s loc_203dca
	tst.b ($ff1906).l
	beq.s loc_203dca
	jmp (loc_20730e).l
loc_203dca:
	move.b $2a(a0),d0
	beq.s loc_203df4
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203de6
	cmpi.b #$2d,d0
	bcs.s loc_203df0
	move.b #$2d,d0
	bra.s loc_203df0
loc_203de6:
	cmpi.b #$1e,d0
	bcs.s loc_203df0
	move.b #$1e,d0
loc_203df0:
	move.b d0,$2a(a0)
loc_203df4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e02(pc,d0.w),d1
	jmp dat_203e02(pc,d1.w)
dat_203e02:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203e0c:
	tst.b ($d300).w
	bne.s loc_203e4a
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e4a:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e72
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e72:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ea6:
	tst.b ($ff1506).l
	bne.s loc_203f0c
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203f0c
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f86
	cmpi.b #$2f,d1
	bne.s loc_203f0e
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f0c
	tst.b $2c(a0)
	beq.s loc_203f0c
	jsr (sub_20793e).l
	bne.s loc_203f0c
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f04
	moveq #$0,d0
loc_203f04:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f0c:
	rts
loc_203f0e:
	rts
	.incbin 16144, 118

sub_203f86:
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

sub_203fac:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20402a
	cmpi.b #$4,$24(a0)
	bcc.s loc_20402a
	btst.b #$3,$2c(a0)
	bne.s loc_20402a
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_20402a
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203ff6
	neg.w d0
loc_203ff6:
	move.w d0,$12(a0)
	move.b #$40,$2b(a0)
	move.w $8(a0),d0
	andi.w #$fff0,d0
	addq.w #$8,d0
	move.w d0,$8(a0)
	move.w d0,$3e(a0)
	move.b #$2,$1c(a0)
	bset.b #$2,$22(a0)
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
loc_20402a:
	rts

sub_20402c:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2040c8
	cmpi.b #$2,($ff1522).l
	beq.w loc_2040c8
	btst.b #$0,$2c(a0)
	bne.s loc_2040c8
	btst.b #$2,$2c(a0)
	bne.s loc_2040c8
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_2040c8
	move.w ($f786).w,d0
	beq.s loc_20408a
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_20408a
	clr.b ($f784).w
loc_20408a:
	bclr.b #$2,$22(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.w #$0,$14(a0)
	move.b #$2c,$1c(a0)
	bset.b #$2,$2c(a0)
	move.b #$7,$1f(a0)
	move.w $c(a0),d0
	subi.w #$18,d0
	andi.w #$fff0,d0
	addi.w #$18,d0
	move.w d0,$c(a0)
loc_2040c8:
	rts

sub_2040ca:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204128
	cmpi.b #$4,$24(a0)
	bcc.s loc_204128
	tst.b ($ff1521).l
	bne.s loc_204128
	tst.b ($ff151f).l
	bne.s loc_204128
	tst.w $30(a0)
	bne.s loc_204128
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_204128
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_20412a(pc,d0.w),d0
	lea dat_20412a(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_20411c:
	move.w (a3)+,d1
	bmi.s loc_204128
	cmp.w d1,d0
	bne.s loc_20411c
	bra.w loc_2070b0
loc_204128:
	rts
dat_20412a:
	.incbin 16682, 32

sub_20414a:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204204
	tst.b ($ff1521).l
	bne.w loc_204204
	tst.b ($ff151f).l
	bne.w loc_204204
	cmpi.w #$980,$8(a0)
	bcs.s loc_20417a
	cmpi.w #$a20,$8(a0)
	bcs.w loc_204204
loc_20417a:
	btst.b #$7,($f7a7).w
	bne.w loc_204204
	tst.w $30(a0)
	bne.s loc_204204
	cmpi.b #$2,($ff1507).l
	bne.s loc_2041ae
	cmpi.w #$a10,$8(a0)
	bcs.s loc_2041c6
	tst.b ($ff1958).l
	beq.s loc_204204
	tst.b ($ff156a).l
	bne.s loc_2041c0
	bra.s loc_2041c6
loc_2041ae:
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041c6
	tst.b ($ff156a).l
	beq.s loc_2041c6
loc_2041c0:
	tst.b ($f668).w
	beq.s loc_204204
loc_2041c6:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_204206).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041fa
	tst.b ($ff156a).l
	bne.s loc_2041fa
	lea (dat_20420c).l,a1
loc_2041fa:
	cmp.w (a1)+,d0
	beq.w loc_2070b0
	dbf d6,loc_2041fa
loc_204204:
	rts
dat_204206:
	dc.b $02,$43,$02,$44,$02,$45
dat_20420c:
	dc.b $02,$87,$02,$88,$02,$89

sub_204212:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2042e2
	tst.b ($f7a7).w
	bne.w loc_2042e2
	cmpi.b #$2,($ff152e).l
	bcc.s loc_204246
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_20423e
	addi.b #$1e,d0
loc_20423e:
	cmp.b ($f7b3).w,d0
	beq.w loc_2042e2
loc_204246:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_20429e
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_2042e2
loc_20429e:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_2042e2
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_2022cc).l
loc_2042e2:
	rts

sub_2042e4:
	rts
	.incbin 17126, 80
	bsr.s sub_2042e4
	bsr.w sub_203ea6
	tst.w ($ff1588).l
	beq.s loc_204356
	btst.b #$4,($f605).w
	beq.s loc_204356
	move.b #$1,($ff1906).l
	rts
loc_204356:
	tst.b ($f7cc).w
	bne.s loc_204362
	move.w ($f604).w,($f602).w
loc_204362:
	btst.b #$0,$2c(a0)
	beq.s loc_204370
	bsr.w sub_20458a
	bra.s loc_204396
loc_204370:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2043c6(pc,d0.w),d1
	jsr dat_2043c6(pc,d1.w)
	bsr.w sub_204212
	bsr.w sub_20414a
	bsr.w sub_2040ca
	bsr.w sub_20402c
	bsr.w sub_203fac
loc_204396:
	bsr.s sub_2043d4
	bsr.w sub_204494
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_20584e
	tst.b $2c(a0)
	bmi.s loc_2043c0
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2043c0
	jsr (sub_206eb2).l
loc_2043c0:
	bsr.w sub_205712
	rts
dat_2043c6:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_2043d4:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2043f8
	move.w $30(a0),d0
	beq.s loc_2043ea
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2043f8
loc_2043ea:
	btst.b #$6,$2c(a0)
	bne.s loc_2043f8
	jsr (sub_20390e).l
loc_2043f8:
	tst.b ($ff151f).l
	beq.s loc_20443c
	tst.w $32(a0)
	beq.s loc_20443c
	subq.w #$1,$32(a0)
	bne.s loc_20443c
	tst.b ($ff1520).l
	bne.s loc_204434
	tst.b ($ff1958).l
	bne.s loc_204434
	tst.b ($ff152e).l
	bne.s loc_20442e
	move.w #$e,d0
	jsr (sub_205e58).l
loc_20442e:
	jsr (sub_201ac0).l
loc_204434:
	move.b #$0,($ff151f).l
loc_20443c:
	tst.b ($ff1520).l
	beq.s loc_204492
	tst.w $34(a0)
	beq.s loc_204492
	subq.w #$1,$34(a0)
	bne.s loc_204492
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20448a
	tst.b ($ff1958).l
	bne.s loc_20448a
	tst.b ($ff152e).l
	bne.s loc_204484
	move.w #$e,d0
	jsr (sub_205e58).l
loc_204484:
	jsr (sub_201ac0).l
loc_20448a:
	move.b #$0,($ff1520).l
loc_204492:
	rts

sub_204494:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_2044b0:
	move.b ($ff1522).l,($ff1546).l
	move.w $8(a0),($ff1548).l
	move.w $c(a0),($ff154a).l
	move.w $14(a0),($ff1564).l
	move.w $10(a0),($ff1566).l
	move.w $12(a0),($ff1568).l
	move.b $22(a0),($ff154c).l
	bclr.b #$3,($ff154c).l
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
	bcs.s loc_204582
	move.l #$50000,d0
loc_204582:
	move.l d0,($ff1570).l
	rts

sub_20458a:
	tst.b $2a(a0)
	bne.w loc_204648
	tst.b ($f784).w
	beq.w loc_204648
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2045a8
	neg.w d0
loc_2045a8:
	tst.w ($f786).w
	bne.s loc_2045b4
	move.w #$1,($f786).w
loc_2045b4:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045ca
	move.b #$1,($ff1502).l
	bra.w loc_205e54
loc_2045ca:
	cmpi.w #$d2,d1
	bcs.s loc_20461e
	cmpi.b #$2,($ff1522).l
	beq.s loc_20461c
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2045f4
	move.w #$82,d0
	jsr (sub_205e58).l
	moveq #$0,d0
loc_2045f4:
	add.b ($f784).w,d0
	bpl.s loc_2045fe
	moveq #$0,d0
	bra.s loc_204606
loc_2045fe:
	cmpi.b #$3,d0
	bcs.s loc_204606
	moveq #$2,d0
loc_204606:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2044b0
	move.b #$2,($ff1522).l
loc_20461c:
	rts
loc_20461e:
	cmpi.w #$5a,d1
	bcc.s loc_204636
	cmp.w d2,d0
	bcc.w loc_203e0c
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204636:
	cmp.w d2,d0
	bcc.s loc_204648
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204648:
	rts
	tst.b ($f75f).w
	beq.s loc_20465c
	cmpi.b #$5,$1c(a0)
	bne.s loc_2046b6
	clr.b ($f75f).w
loc_20465c:
	bsr.w sub_203d46
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20468c
	tst.b ($ff195b).l
	beq.s loc_20467a
	cmpi.b #$79,$1a(a0)
	bne.s loc_2046b6
	bra.s loc_204682
loc_20467a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2046b6
loc_204682:
	bsr.w sub_20504a
	jmp (sub_203856).l
loc_20468c:
	bsr.w sub_2048c0
	bsr.w sub_20458a
	bsr.w sub_205128
	bsr.w sub_205242
	bsr.w sub_204936
	bsr.w sub_2050b6
	bsr.w sub_20504a
	jsr (sub_2038b8).l
	bsr.w sub_200bd0
	bsr.w sub_2052c0
loc_2046b6:
	rts
	tst.w $12(a0)
	bmi.s loc_2046cc
	cmpi.b #$2c,$1c(a0)
	beq.s loc_2046cc
	move.b #$0,$1c(a0)
loc_2046cc:
	btst.b #$2,$2c(a0)
	beq.s loc_2046da
	bsr.w sub_20482c
	bra.s loc_204706
loc_2046da:
	bsr.w sub_2048c0
	bsr.w sub_20458a
	bsr.w sub_20520e
	bsr.w sub_204f76
	bsr.w sub_20504a
	jsr (sub_203856).l
	btst.b #$6,$22(a0)
	beq.s loc_204702
	subi.w #$28,$12(a0)
loc_204702:
	bsr.w sub_205302
loc_204706:
	bsr.w sub_205326
	rts
	bsr.w sub_2048c0
	bsr.w sub_20458a
	bsr.w sub_205128
	bsr.w sub_20527e
	bsr.w sub_204dbe
	bsr.w sub_20504a
	tst.b $2a(a0)
	bne.s loc_204730
	jsr (sub_2038b8).l
loc_204730:
	bsr.w sub_200bd0
	bsr.w sub_2052c0
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_20474c
	bsr.w sub_204790
	bsr.w sub_20458a
	bra.s loc_20478a
loc_20474c:
	btst.b #$2,$2c(a0)
	beq.s loc_20475e
	bsr.w sub_20482c
	bsr.w sub_20458a
	bra.s loc_20478a
loc_20475e:
	bsr.w sub_2048c0
	bsr.w sub_20458a
	bsr.w sub_20520e
	bsr.w sub_204f76
	bsr.w sub_20504a
	jsr (sub_203856).l
	btst.b #$6,$22(a0)
	beq.s loc_204786
	subi.w #$28,$12(a0)
loc_204786:
	bsr.w sub_205302
loc_20478a:
	bsr.w sub_205326
	rts

sub_204790:
	btst.b #$4,$2c(a0)
	beq.s loc_2047c4
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_2047d4
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_2047b2
	neg.w $10(a0)
loc_2047b2:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_2047c4:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047d4
	bset.b #$4,$2c(a0)
loc_2047d4:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_2047ea
	andi.w #$7fff,$2(a0)
loc_2047ea:
	jsr (sub_2007d0).l
	muls.w #$17,d1
	asr.l #$8,d1
	move.w $3e(a0),$8(a0)
	add.w d1,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	move.w $3e(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_20482a
	neg.w $12(a0)
loc_20482a:
	rts

sub_20482c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f3e).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_204854
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20486e
loc_204854:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_20486e:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_204888
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_20489c
loc_204888:
	btst.b #$3,($f602).w
	beq.s loc_2048be
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_20489c:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_2048be
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_2048be
	move.b #$0,$1b(a0)
loc_2048be:
	rts

sub_2048c0:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20492c
	tst.w ($ff1506).l
	bne.s loc_20492c
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20492e).l,a2
loc_2048f4:
	move.b (a2)+,d0
	bmi.s loc_204904
	cmp.b d0,d1
	bne.s loc_2048f4
	bset.b #$1,$2c(a0)
	rts
loc_204904:
	bclr.b #$1,$2c(a0)
	beq.s loc_20492c
	tst.w $12(a0)
	bpl.s loc_20492c
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20492c
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20492c
	neg.w $10(a0)
loc_20492c:
	rts
dat_20492e:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_204936:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204c48
	tst.w $3e(a0)
	bne.w loc_204bf8
	btst.b #$2,($f602).w
	beq.s loc_20495e
	bsr.w sub_204cd8
loc_20495e:
	btst.b #$3,($f602).w
	beq.s loc_20496a
	bsr.w sub_204d4e
loc_20496a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204bf8
	tst.w $14(a0)
	beq.s loc_20498a
	tst.b $2a(a0)
	beq.w loc_204bf8
	bra.s loc_204996
loc_20498a:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204996:
	btst.b #$3,$22(a0)
	beq.s loc_2049e6
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_204a28
	cmpi.b #$1e,$0(a1)
	bne.s loc_2049c6
	move.b #$0,$1c(a0)
	bra.w loc_204bf8
loc_2049c6:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204a0c
	cmp.w d2,d1
	bge.s loc_2049fa
	bra.s loc_204a28
loc_2049e6:
	jsr (sub_206c16).l
	cmpi.w #$c,d1
	blt.s loc_204a28
	cmpi.b #$3,$36(a0)
	bne.s loc_204a04
loc_2049fa:
	btst.b #$0,$22(a0)
	bne.s loc_204a14
	bra.s loc_204a1e
loc_204a04:
	cmpi.b #$3,$37(a0)
	bne.s loc_204a28
loc_204a0c:
	btst.b #$0,$22(a0)
	bne.s loc_204a1e
loc_204a14:
	move.b #$32,$1c(a0)
	bra.w loc_204bf8
loc_204a1e:
	move.b #$6,$1c(a0)
	bra.w loc_204bf8
loc_204a28:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204a3c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204a3c:
	btst.b #$7,($f788).w
	bne.w loc_204b40
	btst.b #$6,($f788).w
	bne.w loc_204b60
	btst.b #$1,($f602).w
	bne.w loc_204b60
	andi.b #$f,($f788).w
	beq.s loc_204a74
	btst.b #$0,($f603).w
	beq.s loc_204a88
	bset.b #$7,($f788).w
	bra.w loc_204c1c
loc_204a74:
	btst.b #$0,($f603).w
	beq.w loc_204a88
	move.b #$1,($f788).w
	bra.w loc_204c1c
loc_204a88:
	btst.b #$0,($f602).w
	beq.s loc_204b04
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204ae6
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ab8
	asr.w #$1,d2
	sub.w d2,d1
loc_204ab8:
	btst.b #$0,$22(a0)
	beq.s loc_204ac4
	neg.w d0
	neg.w d1
loc_204ac4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204ada
	cmp.w d0,d1
	ble.s loc_204ae0
	bra.s loc_204ade
loc_204ada:
	cmp.w d1,d0
	ble.s loc_204ae0
loc_204ade:
	move.w d1,d0
loc_204ae0:
	move.w d0,$14(a0)
	rts
loc_204ae6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b00
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022cc).l
loc_204b00:
	bra.w loc_204c1c
loc_204b04:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204b24
	move.w #$ab,d0
	jsr (sub_2022cc).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b60
loc_204b24:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022cc).l
	bra.w loc_204bf8
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204b40:
	btst.b #$0,($f602).w
	beq.s loc_204b60
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204c1c
	addq.w #$2,($f73e).w
	bra.w loc_204c1c
loc_204b60:
	btst.b #$6,($f788).w
	bne.w loc_204bdc
	andi.b #$f,($f788).w
	beq.s loc_204b84
	btst.b #$1,($f603).w
	beq.s loc_204b96
	bset.b #$6,($f788).w
	bra.w loc_204c1c
loc_204b84:
	btst.b #$1,($f603).w
	beq.s loc_204b96
	move.b #$1,($f788).w
	bra.w loc_204c1c
loc_204b96:
	btst.b #$1,($f602).w
	beq.s loc_204bf8
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204bda
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204bda
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204bcc
	neg.w $14(a0)
loc_204bcc:
	move.w #$9c,d0
	jsr (sub_2022cc).l
	bsr.w sub_2050de
loc_204bda:
	bra.s loc_204c1c
loc_204bdc:
	btst.b #$1,($f602).w
	beq.s loc_204bf8
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204c1c
	subq.w #$2,($f73e).w
	bra.s loc_204c1c
loc_204bf8:
	cmpi.w #$60,($f73e).w
	bne.s loc_204c12
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204c1c
	move.b #$0,($f788).w
	bra.s loc_204c1c
loc_204c12:
	bcc.s loc_204c18
	addq.w #$4,($f73e).w
loc_204c18:
	subq.w #$2,($f73e).w
loc_204c1c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c48
	move.w $14(a0),d0
	beq.s loc_204c48
	bmi.s loc_204c3c
	sub.w d5,d0
	bcc.s loc_204c36
	move.w #$0,d0
loc_204c36:
	move.w d0,$14(a0)
	bra.s loc_204c48
loc_204c3c:
	add.w d5,d0
	bcc.s loc_204c44
	move.w #$0,d0
loc_204c44:
	move.w d0,$14(a0)
loc_204c48:
	move.b $26(a0),d0
	jsr (sub_2007d0).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204c66:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204cd6
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204cd6
	bmi.s loc_204c7e
	neg.w d1
loc_204c7e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206ad6
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204cd6
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204cd2
	cmpi.b #$40,d0
	beq.s loc_204cc0
	cmpi.b #$80,d0
	beq.s loc_204cba
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204cba:
	sub.w d1,$12(a0)
	rts
loc_204cc0:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204cd2:
	add.w d1,$12(a0)
loc_204cd6:
	rts

sub_204cd8:
	tst.b $2a(a0)
	bne.s loc_204d4c
	move.w $14(a0),d0
	beq.s loc_204ce6
	bpl.s loc_204d16
loc_204ce6:
	bset.b #$0,$22(a0)
	bne.s loc_204cfa
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cfa:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204d0a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204d0a
	move.w d1,d0
loc_204d0a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d16:
	sub.w d4,d0
	bcc.s loc_204d1e
	move.w #$ff80,d0
loc_204d1e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d4c
	cmpi.w #$400,d0
	blt.s loc_204d4c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022cc).l
loc_204d4c:
	rts

sub_204d4e:
	tst.b $2a(a0)
	bne.s loc_204dbc
	move.w $14(a0),d0
	bmi.s loc_204d86
	bclr.b #$0,$22(a0)
	beq.s loc_204d6e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d6e:
	cmp.w d6,d0
	bge.s loc_204d7a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d7a
	move.w d6,d0
loc_204d7a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d86:
	add.w d4,d0
	bcc.s loc_204d8e
	move.w #$80,d0
loc_204d8e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204dbc
	cmpi.w #$fc00,d0
	bgt.s loc_204dbc
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022cc).l
loc_204dbc:
	rts

sub_204dbe:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204efa
	tst.w $3e(a0)
	bne.s loc_204df6
	btst.b #$2,($f602).w
	beq.s loc_204dea
	bsr.w sub_204f30
loc_204dea:
	btst.b #$3,($f602).w
	beq.s loc_204df6
	bsr.w sub_204f54
loc_204df6:
	tst.b $2a(a0)
	beq.w loc_204ea0
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204e16
	asr.w #$1,d2
	sub.w d2,d1
loc_204e16:
	btst.b #$0,$22(a0)
	beq.s loc_204e22
	neg.w d0
	neg.w d1
loc_204e22:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204e38
	cmp.w d0,d1
	ble.s loc_204e3e
	bra.s loc_204e3c
loc_204e38:
	cmp.w d1,d0
	ble.s loc_204e3e
loc_204e3c:
	move.w d1,d0
loc_204e3e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204e72
	rts
loc_204e4c:
	move.w #$ab,d0
	jsr (sub_2022cc).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204ec8
loc_204e72:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204e4c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022cc).l
	btst.b #$0,$22(a0)
	bne.s loc_204e98
	bsr.w sub_204f54
	bra.s loc_204ea0
loc_204e98:
	bsr.w sub_204f30
	bra.s loc_204ea0
	dc.b $4e,$75
loc_204ea0:
	move.w $14(a0),d0
	beq.s loc_204ec2
	bmi.s loc_204eb6
	sub.w d5,d0
	bcc.s loc_204eb0
	move.w #$0,d0
loc_204eb0:
	move.w d0,$14(a0)
	bra.s loc_204ec2
loc_204eb6:
	add.w d5,d0
	bcc.s loc_204ebe
	move.w #$0,d0
loc_204ebe:
	move.w d0,$14(a0)
loc_204ec2:
	tst.w $14(a0)
	bne.s loc_204efa
loc_204ec8:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ee4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204ef4
loc_204ee4:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204ef4:
	move.b #$5,$1c(a0)
loc_204efa:
	move.b $26(a0),d0
	jsr (sub_2007d0).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204f1e
	move.w #$1000,d1
loc_204f1e:
	cmpi.w #$f000,d1
	bge.s loc_204f28
	move.w #$f000,d1
loc_204f28:
	move.w d1,$10(a0)
	bra.w loc_204c66

sub_204f30:
	move.w $14(a0),d0
	beq.s loc_204f38
	bpl.s loc_204f46
loc_204f38:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f46:
	sub.w d4,d0
	bcc.s loc_204f4e
	move.w #$ff80,d0
loc_204f4e:
	move.w d0,$14(a0)
	rts

sub_204f54:
	move.w $14(a0),d0
	bmi.s loc_204f68
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f68:
	add.w d4,d0
	bcc.s loc_204f70
	move.w #$80,d0
loc_204f70:
	move.w d0,$14(a0)
	rts

sub_204f76:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204fa4
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204f9c
	cmpi.w #$840,$8(a0)
	bcs.s loc_204fd4
loc_204f9c:
	btst.b #$1,$2c(a0)
	bne.s loc_204fd4
loc_204fa4:
	btst.b #$2,($f602).w
	beq.s loc_204fbe
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204fbe
	move.w d1,d0
loc_204fbe:
	btst.b #$3,($f602).w
	beq.s loc_204fd4
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204fd4
	move.w d6,d0
loc_204fd4:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204fea
	bcc.s loc_204fe6
	addq.w #$4,($f73e).w
loc_204fe6:
	subq.w #$2,($f73e).w
loc_204fea:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_205018
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_205018
	bmi.s loc_20500c
	sub.w d1,d0
	bcc.s loc_205006
	move.w #$0,d0
loc_205006:
	move.w d0,$10(a0)
	rts
loc_20500c:
	sub.w d1,d0
	bcs.s loc_205014
	move.w #$0,d0
loc_205014:
	move.w d0,$10(a0)
loc_205018:
	rts
	.incbin 20506, 48

sub_20504a:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_20509e
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_205078
	addi.w #$38,d0
loc_205078:
	cmp.w d1,d0
	bls.s loc_20509e
loc_20507c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_20508c
	rts
loc_20508c:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_20715a
	move.b #$6,$24(a0)
	rts
loc_20509e:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_20507c

sub_2050b6:
	tst.b ($f7ca).w
	bne.s loc_2050dc
	move.w $14(a0),d0
	bpl.s loc_2050c4
	neg.w d0
loc_2050c4:
	cmpi.w #$80,d0
	bcs.s loc_2050dc
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2050dc
	btst.b #$1,($f602).w
	bne.s sub_2050de
loc_2050dc:
	rts

sub_2050de:
	btst.b #$2,$22(a0)
	beq.s loc_2050e8
	rts
loc_2050e8:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205104
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205114
loc_205104:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205114:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_205126
	move.w #$200,$14(a0)
loc_205126:
	rts

sub_205128:
	tst.b $2a(a0)
	beq.s loc_205130
	rts
loc_205130:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205142
	tst.w $14(a0)
	beq.w loc_205204
loc_205142:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205204
	btst.b #$3,$22(a0)
	beq.s loc_20515e
	jsr (sub_205de8).l
	beq.s loc_20518e
loc_20515e:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206b40
	cmpi.w #$6,d1
	blt.w loc_205204
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_205184
	move.w #$380,d2
loc_205184:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_20518e:
	jsr (sub_2007d0).l
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
	jsr (sub_2022cc).l
	btst.b #$2,$22(a0)
	bne.s loc_205206
	tst.b ($ff195b).l
	beq.s loc_2051e8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2051f8
loc_2051e8:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2051f8:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205204:
	rts
loc_205206:
	bset.b #$4,$22(a0)
	rts

sub_20520e:
	tst.b $3c(a0)
	beq.s loc_205240
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205224
	move.w #$fe00,d1
loc_205224:
	cmp.w $12(a0),d1
	ble.s loc_20523e
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20523e
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20523e:
	rts
loc_205240:
	rts

sub_205242:
	tst.b $2a(a0)
	bne.s loc_20527c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20527c
	move.b $26(a0),d0
	jsr (sub_2007d0).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20527c
	bmi.s loc_205278
	tst.w d0
	beq.s loc_205276
	add.w d0,$14(a0)
loc_205276:
	rts
loc_205278:
	add.w d0,$14(a0)
loc_20527c:
	rts

sub_20527e:
	tst.b $2a(a0)
	bne.s loc_2052be
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2052be
	move.b $26(a0),d0
	jsr (sub_2007d0).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2052b4
	tst.w d0
	bpl.s loc_2052ae
	asr.l #$2,d0
loc_2052ae:
	add.w d0,$14(a0)
	rts
loc_2052b4:
	tst.w d0
	bmi.s loc_2052ba
	asr.l #$2,d0
loc_2052ba:
	add.w d0,$14(a0)
loc_2052be:
	rts

sub_2052c0:
	nop
	tst.b $38(a0)
	bne.s loc_2052fa
	tst.w $3e(a0)
	bne.s loc_2052fc
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2052fa
	move.w $14(a0),d0
	bpl.s loc_2052e4
	neg.w d0
loc_2052e4:
	cmpi.w #$280,d0
	bcc.s loc_2052fa
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2052fa:
	rts
loc_2052fc:
	subq.w #$1,$3e(a0)
	rts

sub_205302:
	btst.b #$1,$2c(a0)
	bne.s loc_205324
	move.b $26(a0),d0
	beq.s loc_205324
	bpl.s loc_20531a
	addq.b #$2,d0
	bcc.s loc_205318
	moveq #$0,d0
loc_205318:
	bra.s loc_205320
loc_20531a:
	subq.b #$2,d0
	bcc.s loc_205320
	moveq #$0,d0
loc_205320:
	move.b d0,$26(a0)
loc_205324:
	rts

sub_205326:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a68).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20540a
	cmpi.b #$80,d0
	beq.w loc_20546c
	cmpi.b #$c0,d0
	beq.w loc_2054c8
	bsr.w sub_206e56
	tst.w d1
	bpl.s loc_205378
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205378:
	bsr.w sub_206cb8
	tst.w d1
	bpl.s loc_20538a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20538a:
	bsr.w sub_206b68
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205408
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2053a8
	cmp.b d2,d0
	blt.s loc_205408
loc_2053a8:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20552a
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2053e6
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2053d8
	asr.w $12(a0)
	bra.s loc_2053fa
loc_2053d8:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2053e6:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2053fa
	move.w #$fc0,$12(a0)
loc_2053fa:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205408
	neg.w $14(a0)
loc_205408:
	rts
loc_20540a:
	bsr.w sub_206e56
	tst.w d1
	bpl.s loc_205424
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205424:
	bsr.w sub_206d10
	tst.w d1
	bpl.s loc_20543e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20543c
	move.w #$0,$12(a0)
loc_20543c:
	rts
loc_20543e:
	tst.w $12(a0)
	bmi.s loc_20546a
	bsr.w sub_206b68
	tst.w d1
	bpl.s loc_20546a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20552a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20546a:
	rts
loc_20546c:
	bsr.w sub_206e56
	tst.w d1
	bpl.s loc_20547e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20547e:
	bsr.w sub_206cb8
	tst.w d1
	bpl.s loc_205490
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205490:
	bsr.w sub_206d10
	tst.w d1
	bpl.s loc_2054c6
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2054b0
	move.w #$0,$12(a0)
	rts
loc_2054b0:
	move.b d3,$26(a0)
	bsr.w sub_20558e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2054c6
	neg.w $14(a0)
loc_2054c6:
	rts
loc_2054c8:
	bsr.w sub_206cb8
	tst.w d1
	bpl.s loc_2054e2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2054e2:
	bsr.w sub_206d10
	tst.w d1
	bpl.s loc_2054fc
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2054fa
	move.w #$0,$12(a0)
loc_2054fa:
	rts
loc_2054fc:
	tst.w $12(a0)
	bmi.s loc_205528
	bsr.w sub_206b68
	tst.w d1
	bpl.s loc_205528
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20552a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205528:
	rts

sub_20552a:
	btst.b #$4,$22(a0)
	beq.s loc_205534
	nop
loc_205534:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205580
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20556a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_20557a
loc_20556a:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20557a:
	move.b #$0,$1c(a0)
loc_205580:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20558e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21934, 316
	cmpi.b #$1,($ff152e).l
	bne.s loc_205706
	tst.b ($ff158e).l
	beq.s loc_20570c
	move.b #$1,($ff1522).l
	bra.s loc_20570c
loc_205706:
	clr.b ($ff1522).l
loc_20570c:
	bra.w sub_205e58
	dc.b $4e,$75

sub_205712:
	rts
	.incbin 22292, 314

sub_20584e:
	lea (dat_205b3e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205870
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205870:
	bsr.w sub_205ae0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2058e8
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2058b6
	move.b d0,$1e(a0)

sub_20589a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2058ae
	bpl.s loc_2058ae
	cmpi.b #$fd,d0
	bge.s loc_2058b8
loc_2058ae:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2058b6:
	rts
loc_2058b8:
	addq.b #$1,d0
	bne.s loc_2058c8
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2058ae
loc_2058c8:
	addq.b #$1,d0
	bne.s loc_2058dc
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2058ae
loc_2058dc:
	addq.b #$1,d0
	bne.s loc_2058e6
	move.b $2(a1,d1.w),$1c(a0)
loc_2058e6:
	rts
loc_2058e8:
	subq.b #$1,$1e(a0)
	bpl.s loc_2058b6
	addq.b #$1,d0
	bne.w loc_2059a2
	tst.b ($ff195b).l
	bne.w loc_205a6a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205910
	not.b d0
loc_205910:
	btst.b #$1,$2c(a0)
	bne.s loc_20591e
	addi.b #$10,d0
	bra.s loc_205920
loc_20591e:
	addq.b #$8,d0
loc_205920:
	bpl.s loc_205924
	moveq #$3,d1
loc_205924:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205a16
	move.w $14(a0),d2
	bpl.s loc_205942
	neg.w d2
loc_205942:
	btst.b #$1,$2c(a0)
	beq.s loc_20595a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205d40).l,a1
	bra.s loc_205984
loc_20595a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205d1a).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205984
	lea (dat_205bbe).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205984
	lea (dat_205bb6).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205984:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205992
	moveq #$0,d2
loc_205992:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20589a
	add.b d3,$1a(a0)
	rts
loc_2059a2:
	addq.b #$1,d0
	bne.s loc_205a12
	move.w $14(a0),d2
	bpl.s loc_2059ae
	neg.w d2
loc_2059ae:
	lea (dat_205c9c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2059ec
	lea (dat_205bce).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2059e0
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2059ec
	lea (dat_205d48).l,a1
	bra.s loc_2059ec
loc_2059e0:
	cmpi.w #$600,d2
	bcc.s loc_2059ec
	lea (dat_205bc6).l,a1
loc_2059ec:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2059f6
	moveq #$0,d2
loc_2059f6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20589a
loc_205a12:
	addq.b #$1,d0
	bne.s loc_205a56
loc_205a16:
	move.w $14(a0),d2
	bmi.s loc_205a1e
	neg.w d2
loc_205a1e:
	addi.w #$800,d2
	bpl.s loc_205a26
	moveq #$0,d2
loc_205a26:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205cae).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a40
	lea (dat_205bd6).l,a1
loc_205a40:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20589a
loc_205a56:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205a6a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205a7c
	not.b d0
loc_205a7c:
	addi.b #$10,d0
	bpl.s loc_205a84
	moveq #$0,d1
loc_205a84:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205ab2
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2059a2
loc_205ab2:
	move.w $14(a0),d2
	bpl.s loc_205aba
	neg.w d2
loc_205aba:
	lea (dat_205c96).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205acc
	lea (dat_205c90).l,a1
loc_205acc:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205ad6
	moveq #$0,d2
loc_205ad6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20589a

sub_205ae0:
	tst.b ($ff195b).l
	beq.s loc_205aec
	move.b dat_205aee(pc,d0.w),d0
loc_205aec:
	rts
dat_205aee:
	.incbin 23278, 80
dat_205b3e:
	.incbin 23358, 120
dat_205bb6:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205bbe:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205bc6:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205bce:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205bd6:
	.incbin 23510, 186
dat_205c90:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205c96:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205c9c:
	.incbin 23708, 18
dat_205cae:
	.incbin 23726, 108
dat_205d1a:
	.incbin 23834, 38
dat_205d40:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205d48:
	.incbin 23880, 60

sub_205d84:
	tst.b (a0)
	beq.w loc_205de6
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205de6
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205de6
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205db8:
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
loc_205dd2:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205dd2
	dbf d1,loc_205db8
loc_205de6:
	rts

sub_205de8:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205e52
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a68).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205e40
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205e40:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205e52:
	rts
loc_205e54:
	move.w #$e,d0

sub_205e58:
	cmpi.w #$67,d0
	bne.s loc_205e66
	move.b #$1,($ff1958).l
loc_205e66:
	move.w d0,($a12010).l
loc_205e6c:
	move.w ($a12020).l,d0
	beq.s loc_205e6c
	cmp.w ($a12020).l,d0
	bne.s loc_205e6c
	move.w #$0,($a12010).l
loc_205e84:
	move.w ($a12020).l,d0
	bne.s loc_205e84
	move.w ($a12020).l,d0
	bne.s loc_205e84
	rts
	dc.b $00,$00

sub_205e98:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205eb4
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205eb4:
	subq.b #$1,$1e(a0)
	bpl.s loc_205ef4
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ef6
loc_205ed0:
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
loc_205ef4:
	rts
loc_205ef6:
	addq.b #$1,d0
	bne.s loc_205f06
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205ed0
loc_205f06:
	addq.b #$1,d0
	bne.s loc_205f1a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205ed0
loc_205f1a:
	addq.b #$1,d0
	bne.s loc_205f24
	move.b $2(a1,d1.w),$1c(a0)
loc_205f24:
	addq.b #$1,d0
	bne.s loc_205f2c
	addq.b #$2,$24(a0)
loc_205f2c:
	addq.b #$1,d0
	bne.s loc_205f3a
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205f3a:
	addq.b #$1,d0
	bne.s loc_205f42
	addq.b #$2,$25(a0)
loc_205f42:
	rts
	.incbin 24388, 654

sub_2061d2:
	tst.b $25(a0)
	bne.s loc_206202
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_20793e).l
	bne.s loc_206202
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206202:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206212(pc,d0.w),d0
	jmp dat_206212(pc,d0.w)
dat_206212:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_20623a
	andi.b #$7f,$2(a0)
loc_20623a:
	move.l #$23a350,$4(a0)
	bsr.s sub_2061d2
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206268
	move.w #$100,$1c(a0)
loc_206268:
	lea (dat_23a33c).l,a1
	bsr.w sub_205e98
	jmp (sub_20390e).l
	tst.b $25(a0)
	beq.s loc_206284
	jmp (sub_2039ba).l
loc_206284:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2062a6(pc,d0.w),d0
	jsr dat_2062a6(pc,d0.w)
	jmp (sub_20390e).l
dat_2062a6:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_2062d4
	andi.b #$7f,$2(a0)
loc_2062d4:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_2062fa
	bsr.w sub_206366
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_20635c
loc_2062fa:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206c16).l
	tst.w d1
	bpl.s loc_206358
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206342
	bsr.w sub_206366
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_20638c
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206342:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_20635c
loc_206358:
	addq.w #$2,$c(a0)
loc_20635c:
	lea (dat_2336bc).l,a1
	bra.w sub_205e98

sub_206366:
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

sub_20638c:
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
	bra.s loc_20635c
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_20635c
	.incbin 25544, 460
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2065a2(pc,d0.w),d1
	jmp dat_2065a2(pc,d1.w)
dat_2065a2:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23a164,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_2065e4
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_2065e4
	addq.b #$2,$24(a0)
loc_2065e4:
	rts
	.incbin 26086, 120
	tst.b ($ff1521).l
	bne.s loc_20666c
	jmp (sub_2039ba).l
loc_20666c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20668a
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20668a
	andi.b #$7f,$2(a0)
loc_20668a:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_20669c
	subq.b #$4,d1
loc_20669c:
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
	bcs.s loc_2066b8
	moveq #$0,d1
loc_2066b8:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23a03c).l,a1
	jsr (sub_205e98).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2066f0
	rts
loc_2066f0:
	cmp.b $24(a0),d0
	beq.s loc_206706
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206706:
	jmp (sub_20390e).l

sub_20670c:
	bclr.b #$7,($ff156b).l
	beq.s loc_20675a
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20675c(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206730:
	move.l (a1)+,(a2)+
	dbf d0,loc_206730
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20675a:
	rts
dat_20675c:
	.incbin 26460, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206792(pc,d0.w),d0
	jsr dat_206792(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20678c
	jsr (sub_20390e).l
loc_20678c:
	jmp (loc_207974).l
dat_206792:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23a164,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206874
	cmpi.b #$6,$24(a1)
	bcc.w loc_206874
	bsr.w sub_2068d8
	beq.w loc_206874
	tst.b $28(a0)
	bne.s loc_206826
	move.w $10(a1),d0
	bpl.s loc_2067e6
	neg.w d0
loc_2067e6:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2067f8
	move.w #$d00,d1
loc_2067f8:
	cmp.w d1,d0
	bcc.s loc_2067fe
	move.w d1,d0
loc_2067fe:
	tst.w $10(a1)
	bpl.s loc_206806
	neg.w d0
loc_206806:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206856
	neg.w $14(a1)
	bra.s loc_206856
loc_206826:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206876
	move.w $12(a1),d0
	bpl.s loc_206836
	neg.w d0
loc_206836:
	cmpi.w #$d00,d0
	bcc.s loc_206840
	move.w #$d00,d0
loc_206840:
	tst.w $12(a1)
	bpl.s loc_206848
	neg.w d0
loc_206848:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206856:
	bset.b #$2,$22(a1)
	bne.s loc_206874
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206874:
	rts
loc_206876:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_2068c2
	cmpi.b #$2,$28(a0)
	bne.s loc_206892
	tst.w $12(a1)
	bpl.s loc_206856
	bra.s loc_206898
loc_206892:
	tst.w $12(a1)
	bmi.s loc_206856
loc_206898:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2068aa
	btst.l #$2,d1
	beq.s loc_206856
	neg.w d0
loc_2068aa:
	cmpi.b #$2,$28(a0)
	beq.s loc_2068b8
	bset.b #$1,$22(a1)
loc_2068b8:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206856
loc_2068c2:
	tst.w $10(a1)
	bmi.s loc_206856
	btst.l #$0,d1
	beq.w loc_206856
	move.w #$f600,d0
	bra.w loc_206848

sub_2068d8:
	tst.b ($ff1906).l
	bne.s loc_20690c
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20690c
	cmpi.w #$50,d0
	bcc.s loc_20690c
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20690c
	cmpi.w #$50,d0
	bcc.s loc_20690c
	moveq #$1,d0
	rts
loc_20690c:
	moveq #$0,d0
	rts
loc_206910:
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
	bne.s loc_2069ca
	move.b ($ff1593).l,($ff195b).l
loc_2069ca:
	tst.b ($ff1522).l
	bpl.s loc_2069e0
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2069e0:
	rts

sub_2069e2:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206910
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
	bne.s loc_206a9c
	move.b ($ff1591).l,($ff195b).l
loc_206a9c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206abe
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206abe:
	tst.b ($ff1522).l
	bpl.s loc_206ad4
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ad4:
	rts

sub_206ad6:
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
	bpl.s loc_206b12
	move.b d1,d0
	bpl.s loc_206b0c
	subq.b #$1,d0
loc_206b0c:
	addi.b #$20,d0
	bra.s loc_206b1c
loc_206b12:
	move.b d1,d0
	bpl.s loc_206b18
	addq.b #$1,d0
loc_206b18:
	addi.b #$1f,d0
loc_206b1c:
	andi.b #$c0,d0
	beq.w loc_206bec
	cmpi.b #$80,d0
	beq.w loc_206d88
	andi.b #$38,d1
	bne.s loc_206b34
	addq.w #$8,d2
loc_206b34:
	cmpi.b #$40,d0
	beq.w loc_206e5e
	bra.w loc_206cc0

sub_206b40:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206de6
	cmpi.b #$80,d0
	beq.w sub_206d10
	cmpi.b #$c0,d0
	beq.w loc_206c50

sub_206b68:
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
	jsr (sub_201126).l
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
	jsr (sub_201126).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206bcc:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206bda
	move.b ($f768).w,d3
	exg d0,d1
loc_206bda:
	btst.l #$0,d3
	beq.s loc_206be2
	move.b d2,d3
loc_206be2:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206bec:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201126).l
	move.b #$0,d2
loc_206c08:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c14
	move.b d2,d3
loc_206c14:
	rts

sub_206c16:
	move.w $8(a0),d3

sub_206c1a:
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
	jsr (sub_201126).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c4e
	move.b #$0,d3
loc_206c4e:
	rts
loc_206c50:
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
	jsr (sub_201296).l
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
	jsr (sub_201296).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206bcc

sub_206cb8:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cc0:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201296).l
	move.b #$c0,d2
	bra.w loc_206c08
loc_206ce0:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201296).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206d0e
	move.b #$c0,d3
loc_206d0e:
	rts

sub_206d10:
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
	jsr (sub_201126).l
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
	jsr (sub_201126).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206bcc

sub_206d80:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d88:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201126).l
	move.b #$80,d2
	bra.w loc_206c08

sub_206dac:
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
	jsr (sub_201126).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206de4
	move.b #$80,d3
loc_206de4:
	rts
loc_206de6:
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
	jsr (sub_201296).l
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
	jsr (sub_201296).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206bcc

sub_206e56:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e5e:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201296).l
	move.b #$40,d2
	bra.w loc_206c08
loc_206e82:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201296).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206eb0
	move.b #$40,d3
loc_206eb0:
	rts

sub_206eb2:
	btst.b #$6,$2c(a0)
	beq.s loc_206ebe
	moveq #$0,d0
	rts
loc_206ebe:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ee2
	addi.w #$c,d3
	moveq #$a,d5
loc_206ee2:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ef0:
	tst.b $1(a1)
	bpl.s loc_206efc
	move.b $20(a1),d0
	bne.s loc_206f08
loc_206efc:
	lea $40(a1),a1
	dbf d6,loc_206ef0
	moveq #$0,d0
	rts
loc_206f08:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207290).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206f30
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206f36
	bra.w loc_206efc
loc_206f30:
	cmp.w d4,d0
	bhi.w loc_206efc
loc_206f36:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206f4e
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206f54
	bra.w loc_206efc
loc_206f4e:
	cmp.w d5,d0
	bhi.w loc_206efc
loc_206f54:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206fc8
	cmpi.b #$c0,d1
	beq.w loc_2071b2
	tst.b d1
	bmi.w sub_207092
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206f8c
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206f8a
	addq.b #$2,$24(a1)
loc_206f8a:
	rts
loc_206f8c:
	tst.w $12(a0)
	bpl.s loc_206fb6
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206fc6
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206fc6
	addq.b #$4,$25(a1)
	rts
loc_206fb6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206fc6
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206fc6:
	rts

sub_206fc8:
	tst.b ($ff1521).l
	bne.s loc_206fe2
	tst.b ($ff151f).l
	bne.s loc_206fe2
	cmpi.b #$2,$1c(a0)
	bne.w sub_207092
loc_206fe2:
	tst.b $21(a1)
	beq.s loc_20700c
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_20700a
	bset.b #$7,$22(a1)
loc_20700a:
	rts
loc_20700c:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_207024
	moveq #$6,d0
loc_207024:
	move.w d0,$3e(a1)
	move.w dat_207084(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_20703e
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_20703e:
	bsr.w sub_20b230
	move.w #$96,d0
	jsr (sub_2022cc).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207074
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20707c
	neg.w $12(a0)
	rts
loc_207074:
	addi.w #$100,$12(a0)
	rts
loc_20707c:
	subi.w #$100,$12(a0)
	rts
dat_207084:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207092:
	tst.b ($ff1521).l
	bne.s loc_2070a2
	tst.b ($ff151f).l
	beq.s loc_2070a6
loc_2070a2:
	moveq #$ffffffff,d0
	rts
loc_2070a6:
	nop
	tst.w $30(a0)
	bne.s loc_2070a2
	movea.l a1,a2
loc_2070b0:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_2070ea
	tst.w ($ff1512).l
	beq.w loc_207150
	jsr (sub_20793e).l
	bne.s loc_2070ea
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2070ea:
	bclr.b #$0,($ff151e).l
	bne.s loc_2070fc
	move.b #$0,($ff156f).l
loc_2070fc:
	move.b #$4,$24(a0)
	bsr.w sub_20552a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20712c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20712c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_20713a
	neg.w $10(a0)
loc_20713a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207150:
	tst.w ($ff1588).l
	bne.w loc_2070ea

sub_20715a:
	tst.w ($ff1906).l
	bne.s loc_2071ae
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20552a
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022cc).l
loc_2071ae:
	moveq #$ffffffff,d0
	rts
loc_2071b2:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_20723a
	cmpi.b #$23,d1
	beq.w loc_20723a
	cmpi.b #$38,d1
	beq.w loc_207282
	cmpi.b #$3a,d1
	beq.w loc_207282
	cmpi.b #$3b,d1
	beq.w loc_207282
	tst.b ($f7aa).w
	beq.w loc_207238
	cmpi.b #$1,($f7aa).w
	beq.s loc_207202
	cmpi.b #$4,($f7aa).w
	beq.s loc_207224
	cmpi.b #$5,($f7aa).w
	beq.s loc_207232
loc_207202:
	cmpi.b #$3c,d1
	blt.s loc_207238
	cmpi.b #$3f,d1
	bgt.s loc_207238
	bsr.w sub_206fc8
	tst.b $20(a1)
	bne.s loc_20721c
	addq.b #$3,$21(a1)
loc_20721c:
	clr.b $20(a1)
	bra.w loc_20723a
loc_207224:
	cmpi.b #$3f,d1
	beq.s loc_207246
	cmpi.b #$3e,d1
	beq.s loc_207240
	bra.s loc_207238
loc_207232:
	cmpi.b #$3d,d1
	beq.s loc_207240
loc_207238:
	rts
loc_20723a:
	addq.b #$1,$21(a1)
	rts
loc_207240:
	bsr.w sub_207092
	bra.s loc_20723a
loc_207246:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207280
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207280
	neg.w $10(a0)
loc_207280:
	rts
loc_207282:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20728e
	addq.b #$1,$21(a1)
loc_20728e:
	rts
dat_207290:
	.incbin 29328, 126
loc_20730e:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207324
	move.l #$4000,(dat_20749e).l
	bra.s loc_207344
loc_207324:
	addi.l #$2000,(dat_20749e).l
	cmpi.l #$80000,(dat_20749e).l
	bls.s loc_207344
	move.l #$80000,(dat_20749e).l
loc_207344:
	move.l (dat_20749e).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207356
	sub.l d0,$c(a0)
loc_207356:
	btst.b #$1,($f604).w
	beq.s loc_207362
	add.l d0,$c(a0)
loc_207362:
	btst.b #$2,($f604).w
	beq.s loc_20736e
	sub.l d0,$8(a0)
loc_20736e:
	btst.b #$3,($f604).w
	beq.s loc_20737a
	add.l d0,$8(a0)
loc_20737a:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f3e).l
	move.w (a1),($ff194e).l
	lea (dat_2074a2).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2073bc
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2073b6
	move.b #$0,d1
loc_2073b6:
	move.b d1,($ff1904).l
loc_2073bc:
	btst.b #$7,($f605).w
	beq.s loc_2073dc
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2073d6
	add.b (a2),d1
loc_2073d6:
	move.b d1,($ff1904).l
loc_2073dc:
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
	beq.s loc_207468
	bsr.w sub_20793e
	bne.s loc_207468
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
loc_207468:
	btst.b #$4,($f605).w
	beq.s loc_207498
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207498:
	jmp (sub_20390e).l
dat_20749e:
	dc.b $00,$00,$40,$00
dat_2074a2:
	.incbin 29858, 650

sub_20772c:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20773a:
	clr.l (a2)+
	dbf d0,loc_20773a
	rts

sub_207742:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207750(pc,d0.w),d0
	jmp dat_207750(pc,d0.w)
dat_207750:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2079f0).l,a0
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
	bcc.s loc_20778e
	moveq #$0,d6
loc_20778e:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207796:
	cmp.w (a0),d6
	bls.s loc_2077a8
	tst.b $4(a0)
	bpl.s loc_2077a4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077a4:
	addq.w #$8,a0
	bra.s loc_207796
loc_2077a8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077c8
loc_2077b6:
	cmp.w (a0),d6
	bls.s loc_2077c8
	tst.b $4(a0)
	bpl.s loc_2077c4
	addq.b #$1,$1(a2)
loc_2077c4:
	addq.w #$8,a0
	bra.s loc_2077b6
loc_2077c8:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2078b2
	bge.s loc_207858
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207834
loc_207802:
	cmp.w -$8(a0),d6
	bge.s loc_207834
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207818
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207818:
	bsr.w sub_2078d6
	bne.s loc_207822
	subq.w #$8,a0
	bra.s loc_207802
loc_207822:
	tst.b $4(a0)
	bpl.s loc_207832
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207832:
	addq.w #$8,a0
loc_207834:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207840:
	cmp.w -$8(a0),d6
	bgt.s loc_207852
	tst.b -$4(a0)
	bpl.s loc_20784e
	subq.b #$1,(a2)
loc_20784e:
	subq.w #$8,a0
	bra.s loc_207840
loc_207852:
	move.l a0,($f770).w
	rts
loc_207858:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20786c:
	cmp.w (a0),d6
	bls.s loc_20788e
	tst.b $4(a0)
	bpl.s loc_20787a
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20787a:
	bsr.w sub_2078d6
	beq.s loc_20786c
	tst.b $4(a0)
	bpl.s loc_20788e
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20788e:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2078ae
loc_20789c:
	cmp.w (a0),d6
	bls.s loc_2078ae
	tst.b $4(a0)
	bpl.s loc_2078aa
	addq.b #$1,$1(a2)
loc_2078aa:
	addq.w #$8,a0
	bra.s loc_20789c
loc_2078ae:
	move.l a0,($f774).w
loc_2078b2:
	rts

sub_2078b4:
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

sub_2078d6:
	bsr.s sub_2078b4
	beq.s loc_2078e8
	tst.b $4(a0)
	bpl.s loc_2078ee
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078ee
loc_2078e8:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078ee:
	bsr.w sub_20793e
	bne.s loc_20793c
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
	bpl.s loc_20791e
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20791e:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207930
	nop
	nop
	nop
	nop
loc_207930:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20793c:
	rts

sub_20793e:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207946:
	tst.b (a1)
	beq.s loc_207952
	lea $40(a1),a1
	dbf d0,loc_207946
loc_207952:
	rts

sub_207954:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207972
loc_207966:
	tst.b (a1)
	beq.s loc_207972
	lea $40(a1),a1
	dbf d0,loc_207966
loc_207972:
	rts
loc_207974:
	move.w $8(a0),d0
loc_207978:
	tst.b $1(a0)
	bmi.s loc_2079e2
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2079e2
loc_207996:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2079d8
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2079d0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2079c8
	moveq #$0,d1
	bra.s loc_2079d0
loc_2079c8:
	cmpi.w #$3,d1
	bcs.s loc_2079d0
	moveq #$2,d1
loc_2079d0:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2079d8:
	jsr (sub_2039ba).l
	moveq #$1,d0
	rts
loc_2079e2:
	btst.b #$7,($ff152e).l
	bne.s loc_207996
	moveq #$0,d0
	rts
dat_2079f0:
	.incbin 31216, 3714
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208886(pc,d0.w),d0
	jsr dat_208886(pc,d0.w)
	jmp (loc_207974).l
dat_208886:
	dc.b $00,$08,$00,$18,$00,$46,$00,$5c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$32,$2b(a0)
	move.w ($d008).w,d0
	sub.w $8(a0),d0
	addi.w #$10,d0
	bcs.s loc_2088ca
	cmpi.w #$20,d0
	bcc.s loc_2088ca
	move.w ($d00c).w,d0
	sub.w $c(a0),d0
	addi.w #$20,d0
	bcs.s loc_2088ca
	cmpi.w #$40,d0
	bcc.s loc_2088ca
	addq.b #$2,$24(a0)
loc_2088ca:
	rts
	.incbin 35020, 172
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208992(pc,d0.w),d0
	jsr dat_208992(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_208992:
	dc.b $00,$0e,$00,$2c,$00,$7c,$00,$8c
	dc.b $00,$9c,$00,$e2,$01,$72
	ori.b #$4,$1(a0)
	move.w #$310,$2(a0)
	move.l #$208db2,$4(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $2a(a0)
	beq.s loc_208a0c
	subq.b #$1,$2a(a0)
	bne.s loc_208a0c
	jsr (sub_20793e).l
	bne.s loc_208a0c
	move.l a0,$2a(a1)
	move.b #$5,$0(a1)
	move.b #$3,$18(a1)
	ori.b #$4,$1(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$24,$c(a1)
	move.b #$4,$24(a1)
loc_208a0c:
	rts
	bsr.w sub_208cbe
	lea (dat_208d36).l,a1
	jmp (sub_205e98).l
	movea.l $2a(a0),a1
	move.b #$78,$2a(a1)
	jmp (sub_2039ba).l
	.incbin 35374, 560
loc_208c5e:
	movea.l a1,a2
	jsr (sub_20793e).l
	bne.s loc_208cbc
	bset.b #$0,$2c(a2)
	bset.b #$6,$2c(a2)
	move.l a2,$2a(a1)
	move.b #$5,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$208db2,$4(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$18,$16(a1)
	move.b #$8,$1a(a1)
	move.b #$8,$24(a1)
loc_208cbc:
	rts

sub_208cbe:
	cmpi.b #$1,$1c(a0)
	bne.s loc_208cd6
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208cd6
	bsr.s sub_208cd8
	bne.s loc_208c5e
loc_208cd6:
	rts

sub_208cd8:
	tst.b ($ff151f).l
	bne.s loc_208d32
	tst.b ($ff1521).l
	bne.s loc_208d32
	cmpi.b #$4,$24(a1)
	bcc.s loc_208d32
	tst.b $2c(a1)
	bne.s loc_208d32
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_208d32
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208d32
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_208d32
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208d32
	moveq #$1,d0
	rts
loc_208d32:
	moveq #$0,d0
	rts
dat_208d36:
	.incbin 36150, 2484

sub_2096ea:
	btst.b #$3,$22(a0)
	beq.s loc_20975a
	btst.b #$3,$22(a1)
	beq.s loc_20975a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20975a
	tst.b $2a(a1)
	beq.s loc_20971c
	move.w #$ab,d0
	jsr (sub_2022cc).l
loc_20971c:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_209748
	cmpi.b #$17,$1c(a1)
	beq.s loc_209748
	bclr.b #$0,$2c(a1)
loc_209748:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20975a
	bclr.b #$1,$22(a1)
loc_20975a:
	rts

sub_20975c:
	cmpi.b #$4,$24(a1)
	bne.s loc_20976e
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_20976e:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2097ce
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209790
	bclr.b #$3,$22(a0)
	bra.w sub_2096ea
loc_209790:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2097ce
	tst.b ($ff195b).l
	beq.s loc_2097b8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2097c8
loc_2097b8:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2097c8:
	move.b #$0,$1c(a1)
loc_2097ce:
	bset.b #$3,$22(a1)
	beq.s loc_2097f0
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_209828
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2097f0:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_20981c
	cmpi.b #$2,$24(a0)
	beq.s loc_209822
loc_20981c:
	move.w $10(a1),$14(a1)
loc_209822:
	bclr.b #$1,$22(a1)
loc_209828:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_209832:
	move.b #$1,$25(a0)

sub_209838:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209aec
	btst.b #$6,$2c(a1)
	bne.w loc_209aec
	cmpi.b #$6,$24(a1)
	bcc.w loc_209aec
	tst.b $0(a1)
	beq.w loc_209aec
	tst.b $1(a0)
	bpl.w loc_209aec
	tst.b ($ff1906).l
	bne.w loc_209aec
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209aec
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209aec
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2098a6
	btst.b #$3,$22(a0)
	bne.s loc_2098b8
	bra.w loc_209aec
loc_2098a6:
	cmpi.b #$1,$25(a0)
	bne.s loc_2098b8
	tst.w $12(a1)
	beq.s loc_2098b8
	bmi.w loc_209aec
loc_2098b8:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209aec
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209aec
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2098ee
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2098ee:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2098fc
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2098fc:
	cmp.w d4,d5
	bcs.w loc_209990
	cmpi.b #$1,$25(a0)
	beq.w loc_209aec
	cmpi.b #$a,$0(a0)
	bne.s loc_20991e
	btst.b #$1,$22(a1)
	bne.w loc_209aec
loc_20991e:
	cmpi.b #$4,d5
	bls.w loc_209aec
	bsr.w sub_209b3c
	move.l d0,-(a7)
	bsr.w sub_2096ea
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_209948
	tst.w $10(a1)
	beq.s loc_209978
	bpl.s loc_209950
	bra.s loc_209978
loc_209948:
	tst.w $10(a1)
	beq.s loc_209978
	bpl.s loc_209978
loc_209950:
	bsr.w sub_209afc
	btst.b #$1,$22(a1)
	bne.s loc_20996e
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_20996e:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_209978:
	bsr.w sub_209bb2
	bsr.w sub_209afc
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209990:
	cmpi.b #$19,$0(a0)
	bne.s loc_2099a2
	btst.b #$2,$22(a1)
	bne.w loc_209aec
loc_2099a2:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2099b8
	bmi.w loc_209a88
loc_2099b8:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2099ca
	tst.w $12(a1)
	beq.s loc_2099ca
	bmi.w loc_209aec
loc_2099ca:
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
	beq.s loc_209a16
	bpl.s loc_2099f6
	neg.b d0
loc_2099f6:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ad6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a16
	tst.w $10(a0)
	bpl.s loc_209a12
	neg.w d1
loc_209a12:
	add.w d1,$8(a1)
loc_209a16:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209a80
	tst.w $12(a0)
	bmi.s loc_209a54
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b68).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a54
	add.w d1,$c(a1)
	bra.w loc_209aec
loc_209a54:
	tst.w $12(a0)
	bpl.s loc_209a80
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d80).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a80
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20715a).l
	movem.l (a7)+,a0-a1
	bra.s loc_209aec
loc_209a80:
	bsr.w sub_20975c
	moveq #$1,d0
	rts
loc_209a88:
	cmpi.b #$1,$25(a0)
	beq.s loc_209aec
	cmpi.b #$9,$0(a0)
	beq.s loc_209aec
	cmpi.b #$a,$0(a0)
	bne.s loc_209ab2
	cmpi.b #$2,$25(a0)
	beq.s loc_209ad2
	btst.b #$1,$1(a0)
	bne.s loc_209ad2
	bra.s loc_209aec
loc_209ab2:
	btst.b #$1,$22(a1)
	bne.s loc_209ad2
	tst.w $12(a0)
	beq.s loc_209ad2
	bmi.s loc_209ad2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20715a).l
	movem.l (a7)+,a0-a1
loc_209ad2:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209bb2
	bsr.w sub_2096ea
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209aec:
	bsr.w sub_209bb2
	bsr.w sub_2096ea
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209afc:
	tst.w $10(a0)
	beq.s loc_209b3a
	cmpi.b #$a,$0(a0)
	beq.s loc_209b3a
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209b16
	neg.b d0
loc_209b16:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ad6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209b3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20715a).l
	movem.l (a7)+,a0-a1
loc_209b3a:
	rts

sub_209b3c:
	cmpi.b #$a,$0(a0)
	bne.s loc_209b4c
	move.b #$0,$20(a1)
	rts
loc_209b4c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209ba0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209bb0
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209b6e
	tst.w $10(a2)
	beq.s loc_209bb0
loc_209b6e:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209b80
	cmp.w $8(a2),d1
	bcs.s loc_209bb0
	bra.s loc_209b86
loc_209b80:
	cmp.w $8(a2),d1
	bcc.s loc_209bb0
loc_209b86:
	cmpi.b #$15,$0(a0)
	beq.s loc_209bb0
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20715a).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209ba0:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209bb0:
	rts

sub_209bb2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209bcc
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209bcc
	move.b #$0,$20(a1)
loc_209bcc:
	rts
	.incbin 39886, 374
loc_209d44:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d52(pc,d0.w),d0
	jmp dat_209d52(pc,d0.w)
dat_209d52:
	.incbin 40274, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209d44
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209da8
	tst.b $1(a0)
	bpl.s loc_209db0
loc_209da8:
	move.w dat_209e02(pc,d0.w),d1
	jsr dat_209e02(pc,d1.w)
loc_209db0:
	bsr.w sub_20390e
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209de2
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209de2:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039ba
	rts
dat_209e02:
	.incbin 40450, 26
	addq.b #$2,$24(a0)
	move.l #$20a184,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209e72
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20a18a,$4(a0)
	bra.s loc_209eb4
loc_209e72:
	btst.l #$3,d0
	beq.s loc_209ea0
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20a1d4,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ca48).l
	move.l (a7)+,d0
	bra.s loc_209eb4
loc_209ea0:
	btst.b #$1,$1(a0)
	beq.s loc_209eb4
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209eb4:
	btst.l #$1,d0
	beq.s loc_209ec0
	bset.b #$5,$2(a0)
loc_209ec0:
	andi.w #$2,d0
	move.w dat_209ecc(pc,d0.w),$30(a0)
	rts
dat_209ecc:
	.incbin 40652, 118

sub_209f42:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209838).l
	tst.b $1(a0)
	bpl.s loc_209f64
	lea ($d000).w,a1
	bsr.s sub_209f42
	btst.b #$5,$22(a0)
	bne.s loc_209f66
loc_209f64:
	rts
loc_209f66:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209f94
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209f94:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209fae
	move.b #$0,$1c(a1)
loc_209fae:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2022cc).l
	.incbin 40904, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a270(pc,d0.w),d1
	jmp dat_20a270(pc,d1.w)
dat_20a270:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20a27a:
	.incbin 41594, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a2d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a2ca
	moveq #$0,d1
	bra.s loc_20a2d2
loc_20a2ca:
	cmpi.w #$3,d1
	bcs.s loc_20a2d2
	moveq #$2,d1
loc_20a2d2:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20a2ee
	moveq #$6,d1
loc_20a2ee:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20a27a).l,a1
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
	beq.s loc_20a33e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a336
	moveq #$0,d0
	bra.s loc_20a33e
loc_20a336:
	cmpi.w #$3,d0
	bcs.s loc_20a33e
	moveq #$2,d0
loc_20a33e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a40c
	dbf d0,loc_20a33e
	bclr.b #$7,(a2)
	bra.s loc_20a394
loc_20a350:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a37c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a374
	moveq #$0,d0
	bra.s loc_20a37c
loc_20a374:
	cmpi.w #$3,d0
	bcs.s loc_20a37c
	moveq #$2,d0
loc_20a37c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a40c
	dbf d0,loc_20a37c
	bclr.b #$7,(a2)
	bsr.w sub_207954
	bne.w loc_20a418
loc_20a394:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a6de,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3ea
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a3ea
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a3ea:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a40c:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20a350
loc_20a418:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a43e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a436
	moveq #$0,d0
	bra.s loc_20a43e
loc_20a436:
	cmpi.w #$3,d0
	bcs.s loc_20a43e
	moveq #$2,d0
loc_20a43e:
	lea $1(a2),a3
loc_20a442:
	btst.b #$0,-(a3)
	bne.w sub_2039ba
	dbf d0,loc_20a442
	tst.b $1(a0)
	bmi.s loc_20a472
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a4ec
loc_20a472:
	tst.w ($ff190e).l
	bne.s loc_20a482
	move.b ($ff1913).l,$1a(a0)
loc_20a482:
	bra.w sub_20390e
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a4f0
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a4d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a4ca
	moveq #$0,d1
	bra.s loc_20a4d2
loc_20a4ca:
	cmpi.w #$3,d1
	bcs.s loc_20a4d2
	moveq #$2,d1
loc_20a4d2:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a6d6).l,a1
	bsr.w sub_205e98
	bra.w sub_20390e
loc_20a4ec:
	bra.w sub_2039ba

sub_20a4f0:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a540
	bset.b #$1,($ff150d).l
	beq.s loc_20a52a
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a540
	bset.b #$2,($ff150d).l
	bne.s loc_20a540
loc_20a52a:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e58).l
loc_20a540:
	jmp (sub_2022cc).l
	.incbin 42310, 400
dat_20a6d6:
	.incbin 42710, 402
loc_20a868:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a896(pc,d0.w),d0
	jsr dat_20a896(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a894
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a88e
	btst.b #$0,($ff1505).l
	bne.s loc_20a894
loc_20a88e:
	jmp (sub_20390e).l
loc_20a894:
	rts
dat_20a896:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20ae70,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a8ca
	move.b #$13,$1a(a0)
loc_20a8ca:
	rts
loc_20a8cc:
	tst.b ($ff0f01).l
	beq.s loc_20a8da
	jmp (sub_2039ba).l
loc_20a8da:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a868
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8fe(pc,d0.w),d0
	jsr dat_20a8fe(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20a8fe:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae70,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a94c
	tst.b $29(a0)
	bne.s loc_20a94c
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a94c:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20aa18
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a974
	addq.b #$2,$1a(a0)
loc_20a974:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a988
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a988:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a9ee
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a9ba
	tst.b $29(a0)
	beq.s loc_20a9b2
	tst.b ($ff1956).l
	beq.s loc_20a9ee
	bra.s loc_20a9ba
loc_20a9b2:
	tst.b ($ff1956).l
	bne.s loc_20a9ee
loc_20a9ba:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20aa18
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a9e8
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a9e8:
	jsr (sub_205e58).l
loc_20a9ee:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20aa00
	lea (dat_20ade8).l,a1
	bra.w sub_205e98
loc_20aa00:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20aa16
	addq.b #$2,$1a(a0)
loc_20aa16:
	rts

sub_20aa18:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20aa50
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20aa48
	moveq #$0,d1
	bra.s loc_20aa50
loc_20aa48:
	cmpi.w #$3,d1
	bcs.s loc_20aa50
	moveq #$2,d1
loc_20aa50:
	add.w d1,d0
	rts

sub_20aa54:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aa76
	tst.b ($ff1956).l
	beq.s loc_20aa6e
	tst.b $29(a0)
	bne.s loc_20aa76
	rts
loc_20aa6e:
	tst.b $29(a0)
	beq.s loc_20aa76
	rts
loc_20aa76:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209838).l
	tst.b $28(a0)
	bne.s loc_20aa98
	tst.b ($ff0f01).l
	beq.s loc_20aa98
	jmp (loc_207974).l
loc_20aa98:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a8cc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aab0(pc,d0.w),d1
	jmp dat_20aab0(pc,d1.w)
dat_20aab0:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae70,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aafa
	tst.b $29(a0)
	bne.s loc_20aafa
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20aafa:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20aa18
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20ab26
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20ab26:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20ab80
	move.b $25(a0),d0
	beq.s loc_20ab60
	bsr.w sub_203856
	jsr (sub_206c16).l
	tst.w d1
	bpl.w loc_20ab6e
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20ab6e
loc_20ab60:
	tst.b $1(a0)
	bpl.s loc_20ab6e
	lea ($d000).w,a1
	bsr.w sub_20aa54
loc_20ab6e:
	tst.w ($ff190e).l
	bne.s loc_20ab80
	lea (dat_20ade8).l,a1
	bsr.w sub_205e98
loc_20ab80:
	bsr.w sub_20390e
	jmp (loc_207974).l
	.incbin 43914, 606
dat_20ade8:
	.incbin 44520, 586
loc_20b032:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b046(pc,d0.w),d0
	jsr dat_20b046(pc,d0.w)
	jmp (sub_20390e).l
dat_20b046:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20b086,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20b080
	jmp (sub_2039ba).l
loc_20b080:
	subq.w #$2,$c(a0)
	rts
	.incbin 45190, 82
	tst.b $28(a0)
	bmi.w loc_20b032
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b0ee(pc,d0.w),d0
	jmp dat_20b0ee(pc,d0.w)
dat_20b0ee:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20b188,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20b11e
	move.b #$3,$1a(a0)
	bra.s loc_20b13e
loc_20b11e:
	tst.w ($ff1588).l
	beq.s loc_20b12c
	move.b #$2,$1a(a0)
loc_20b12c:
	tst.b $28(a0)
	beq.s loc_20b13e
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20b13e:
	tst.b $28(a0)
	bne.s loc_20b182
	tst.b $29(a0)
	beq.s loc_20b16e
	tst.w ($ff1512).l
	beq.s loc_20b15a
	bclr.b #$5,$2(a0)
	bra.s loc_20b182
loc_20b15a:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20b182
	eori.b #$20,$2(a0)
	bra.s loc_20b182
loc_20b16e:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20b182
	move.b #$2,$1a(a0)
loc_20b182:
	jmp (sub_20390e).l
	.incbin 45448, 168

sub_20b230:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20b24c
	move.l d1,(a3)
loc_20b24c:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20b276
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e58).l
loc_20b276:
	rts
loc_20b278:
	tst.w ($ff1588).l
	beq.s loc_20b2ce
	bsr.w sub_20b4ca
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
	lea (dat_20b62a).l,a2
	moveq #$2,d6
	bsr.w sub_20b682
	bra.w loc_20b328
loc_20b2ce:
	tst.b ($ff1511).l
	beq.s loc_20b2f2
	bpl.s loc_20b2dc
	bsr.w sub_20b474
loc_20b2dc:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b564
loc_20b2f2:
	tst.b ($ff150f).l
	beq.s loc_20b328
	bpl.s loc_20b300
	bsr.w sub_20b460
loc_20b300:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20b324
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20b324:
	bsr.w sub_20b55a
loc_20b328:
	tst.w ($ff1588).l
	bne.w loc_20b3d4
	tst.b ($ff1510).l
	beq.w loc_20b3d4
	tst.w ($f63a).w
	bne.w loc_20b3d4
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b432
	tst.b ($f7cc).w
	bne.s loc_20b37e
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b37e
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b37e
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20b37e
	move.b #$9,(a1)
loc_20b37e:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b670
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b67a
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b3d0
	move.w #$63,d1
loc_20b3d0:
	bsr.w sub_20b67a
loc_20b3d4:
	tst.b ($ff150e).l
	beq.s loc_20b3e6
	clr.b ($ff150e).l
	bsr.w sub_20b650
loc_20b3e6:
	tst.b ($f7d6).w
	beq.s loc_20b430
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b406
	move.l #$6d400001,d0
loc_20b406:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b4e8
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b426
	move.l #$6e800001,d0
loc_20b426:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b4e8
loc_20b430:
	rts
loc_20b432:
	btst.b #$7,($ff152e).l
	bne.s loc_20b45e
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20715a
	move.b #$1,($ff150c).l
loc_20b45e:
	rts

sub_20b460:
	move.l #$73600002,($c00004).l
	lea dat_20b4c6(pc),a2
	move.w #$2,d2
	bra.s loc_20b490

sub_20b474:
	lea ($c00000).l,a6
	bsr.w sub_20b650
	move.l #$70600002,($c00004).l
	lea dat_20b4be(pc),a2
	move.w #$6,d2
loc_20b490:
	lea (dat_2330bc).l,a1
loc_20b496:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b4b2
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b4a6:
	move.l (a3)+,(a6)
	dbf d1,loc_20b4a6
loc_20b4ac:
	dbf d2,loc_20b496
	rts
loc_20b4b2:
	move.l #$0,(a6)
	dbf d1,loc_20b4b2
	bra.s loc_20b4ac
dat_20b4be:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b4c6:
	dc.b $ff,$ff,$00,$00

sub_20b4ca:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b646
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b646

sub_20b4e8:
	lea (dat_20b622).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b4f8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b4fc:
	sub.l d3,d1
	bcs.s loc_20b504
	addq.w #$1,d2
	bra.s loc_20b4fc
loc_20b504:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b50e
	move.w #$1,d4
loc_20b50e:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b51a
	tst.w d6
	bne.s loc_20b54c
loc_20b51a:
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
loc_20b540:
	addi.l #$400000,d0
	dbf d6,loc_20b4f8
	rts
loc_20b54c:
	moveq #$f,d5
loc_20b54e:
	move.l #$0,(a6)
	dbf d5,loc_20b54e
	bra.s loc_20b540

sub_20b55a:
	lea (dat_20b62a).l,a2
	moveq #$2,d6
	bra.s loc_20b56c

sub_20b564:
	lea (dat_20b61e).l,a2
	moveq #$5,d6
loc_20b56c:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b574:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b578:
	sub.l d3,d1
	bcs.s loc_20b580
	addq.w #$1,d2
	bra.s loc_20b578
loc_20b580:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b58a
	move.w #$1,d4
loc_20b58a:
	tst.w d4
	beq.s loc_20b5b8
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
loc_20b5b8:
	addi.l #$400000,d0
	dbf d6,loc_20b574
	rts
	.incbin 46532, 90
dat_20b61e:
	dc.b $00,$01,$86,$a0
dat_20b622:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b62a:
	dc.b $00,$00,$00,$64
dat_20b62e:
	dc.b $00,$00,$00,$0a
dat_20b632:
	dc.b $00,$00,$00,$01
dat_20b636:
	.incbin 46646, 16

sub_20b646:
	moveq #$3,d6
	lea (dat_20b636).l,a2
	bra.s sub_20b682

sub_20b650:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b666
	moveq #$9,d1
loc_20b666:
	lea (dat_20b632).l,a2
	moveq #$0,d6
	bra.s sub_20b682

sub_20b670:
	lea (dat_20b632).l,a2
	moveq #$0,d6
	bra.s sub_20b682

sub_20b67a:
	lea (dat_20b62e).l,a2
	moveq #$1,d6

sub_20b682:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b68a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b68e:
	sub.l d3,d1
	bcs.s loc_20b696
	addq.w #$1,d2
	bra.s loc_20b68e
loc_20b696:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b6a0
	move.w #$1,d4
loc_20b6a0:
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
	dbf d6,loc_20b68a
	rts
	.incbin 46806, 2910
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c242(pc,d0.w),d0
	jmp dat_20c242(pc,d0.w)
dat_20c242:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c940,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c900).l,a2
loc_20c290:
	jsr (sub_20793e).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c940,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c2e2
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c2e2:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c290
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c30a
	bge.s loc_20c300
	neg.w d0
loc_20c300:
	add.w d0,$a(a0)
	jmp (sub_20390e).l
loc_20c30a:
	addq.b #$4,$24(a0)
	jmp (sub_20390e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c32e
	bge.s loc_20c324
	neg.w d0
loc_20c324:
	add.w d0,$8(a0)
	jmp (sub_20390e).l
loc_20c32e:
	addq.b #$4,$24(a0)
	jmp (sub_20390e).l
	tst.b $1e(a0)
	beq.s loc_20c348
	subq.b #$1,$1e(a0)
	jmp (sub_20390e).l
loc_20c348:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c362
	bge.s loc_20c358
	neg.w d0
loc_20c358:
	add.w d0,$a(a0)
	jmp (sub_20390e).l
loc_20c362:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202496).l
	tst.b $1e(a0)
	beq.s loc_20c384
	subq.b #$1,$1e(a0)
	jmp (sub_20390e).l
loc_20c384:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c39e
	bge.s loc_20c394
	neg.w d0
loc_20c394:
	add.w d0,$8(a0)
	jmp (sub_20390e).l
loc_20c39e:
	jmp (sub_2039ba).l
	tst.l ($f680).w
	bne.s loc_20c3b8
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039ba).l
loc_20c3b8:
	rts
	.incbin 50106, 1350
dat_20c900:
	.incbin 51456, 328

sub_20ca48:
	rts
	dc.b $4a,$28,$00,$28,$6b,$00,$01,$32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ca6c(pc,d0.w),d0
	jsr dat_20ca6c(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20ca6c:
	.incbin 51820, 356
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbea(pc,d0.w),d0
	jsr dat_20cbea(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20cbea:
	dc.b $00,$06,$00,$3a,$00,$bc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$6358,$2(a0)
	move.l #$20cea0,$4(a0)
	move.b #$10,$16(a0)
	move.b #$10,$19(a0)
	move.b $28(a0),$1a(a0)
	bsr.w sub_20cd12
	tst.b $28(a0)
	beq.s loc_20cc78
	bsr.w sub_20cd00
	tst.w $3a(a0)
	bne.s loc_20cc7a
	bsr.w sub_20cd56
	cmpi.b #$2,($ff152e).l
	bne.s loc_20cc4a
	tst.b ($ff156a).l
	bne.s loc_20cc78
loc_20cc4a:
	tst.b ($ff1507).l
	bne.s loc_20cc5c
	move.w ($f704).w,d0
	cmpi.w #$400,d0
	bcc.s loc_20cc78
loc_20cc5c:
	move.w #$168,d0
	move.b ($ff152e).l,d1
	beq.s loc_20cc74
	move.w #$1e0,d0
	subq.b #$1,d1
	beq.s loc_20cc74
	move.w #$f0,d0
loc_20cc74:
	move.w d0,$3a(a0)
loc_20cc78:
	rts
loc_20cc7a:
	subq.w #$1,$3a(a0)
	bne.s loc_20cc78
	addq.b #$2,$24(a0)
	move.w #$78,$3a(a0)
	move.w #$5a,$30(a0)
	clr.b $2e(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20cca6
	move.w #$b2,d0
	jsr (sub_2022cc).l
loc_20cca6:
	bsr.w sub_20cd00
	tst.w $30(a0)
	beq.s loc_20ccc4
	move.b $3c(a0),d0
	bsr.w sub_20ce7a
	subq.w #$1,$30(a0)
	beq.s loc_20ccc0
	rts
loc_20ccc0:
	bsr.w sub_20cd56
loc_20ccc4:
	move.b $3c(a0),d0
	addq.b #$1,d0
	move.b d0,($ff195a).l
	moveq #$0,d0
	move.b $3c(a0),d0
	bsr.w sub_20cd9e
	subq.w #$1,$3a(a0)
	bne.s loc_20ccfe
	subq.b #$2,$24(a0)
	clr.b ($ff195a).l
	addq.b #$1,$3c(a0)
	cmpi.b #$3,$3c(a0)
	bcs.s loc_20ccfe
	clr.b $3c(a0)
	clr.w $3e(a0)
loc_20ccfe:
	rts

sub_20cd00:
	lea ($d000).w,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	rts

sub_20cd12:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20cd1a:
	cmpi.b #$21,$0(a1)
	bne.s loc_20cd28
	tst.b $28(a1)
	bne.s loc_20cd54
loc_20cd28:
	lea $40(a1),a1
	dbf d0,loc_20cd1a
	jsr (sub_20793e).l
	bne.s loc_20cd54
	move.b #$21,$0(a1)
	move.b #$1,$28(a1)
	lea ($d000).w,a2
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
loc_20cd54:
	rts

sub_20cd56:
	lea ($fb40).w,a3
	move.w #$626,d0
	move.w #$646,d2
	move.b ($ff152e).l,d1
	beq.s loc_20cd8c
	lea ($fb7a).w,a3
	move.w #$222,d0
	move.w #$680,d2
	subq.b #$1,d1
	beq.s loc_20cd8c
	move.w #$402,d0
	move.w #$246,d2
	tst.b ($ff156a).l
	beq.s loc_20cd8c
	rts
loc_20cd8c:
	lea ($fb64).w,a2
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d2,(a3)+
	rts
dat_20cd9a:
	dc.b $00,$02,$04,$00

sub_20cd9e:
	move.b dat_20cd9a(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	lea (dat_20ce46).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20cdc8
	lea (dat_20ce2c).l,a1
	subq.b #$1,d1
	beq.s loc_20cdc8
	lea (dat_20ce60).l,a1
loc_20cdc8:
	moveq #$0,d1
	move.b $3e(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3e(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20cde6
	clr.b $3e(a0)
loc_20cde6:
	lea ($fb40).w,a2
	lea (dat_20ce56).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20ce0c
	lea ($fb7a).w,a2
	lea (dat_20ce3c).l,a1
	subq.b #$1,d1
	beq.s loc_20ce0c
	lea (dat_20ce70).l,a1
loc_20ce0c:
	moveq #$0,d1
	move.b $3f(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3f(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20ce2a
	clr.b $3f(a0)
loc_20ce2a:
	rts
dat_20ce2c:
	.incbin 52780, 16
dat_20ce3c:
	dc.b $0a,$60,$0a,$a0,$0a,$60,$0a,$a0
	dc.b $ff,$ff
dat_20ce46:
	.incbin 52806, 16
dat_20ce56:
	dc.b $08,$46,$08,$4a,$08,$46,$08,$4a
	dc.b $ff,$ff
dat_20ce60:
	.incbin 52832, 16
dat_20ce70:
	dc.b $02,$44,$02,$48,$02,$44,$02,$48
	dc.b $ff,$ff

sub_20ce7a:
	move.b dat_20ce9c(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	move.w #$80,d0
	tst.b $2e(a0)
	beq.s loc_20ce92
	moveq #$0,d0
loc_20ce92:
	move.w d0,(a2)
	eori.b #$1,$2e(a0)
	rts
dat_20ce9c:
	.incbin 52892, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ceda(pc,d0.w),d0
	jsr dat_20ceda(pc,d0.w)
	jsr (sub_20390e).l
	move.w $36(a0),d0
	jmp (loc_207978).l
dat_20ceda:
	dc.b $00,$16,$00,$4c
loc_20cede:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209832).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cfbe,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cf36(pc,d0.w),d0
	jmp dat_20cf36(pc,d0.w)
dat_20cf36:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cfa2
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cede
	bsr.w sub_20cfa2
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cede
	move.l $8(a0),-(a7)
	bsr.w sub_20cfa2
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cede
	move.l $8(a0),-(a7)
	bsr.w sub_20cfa2
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cede

sub_20cfa2:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007d0).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 53182, 18
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cfea(pc,d0.w),d0
	jsr dat_20cfea(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20cfea:
	dc.b $00,$0e,$00,$38,$00,$52,$00,$a8
loc_20cff2:
	jmp (loc_20d10e).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$43e8,$2(a0)
	move.l #$20d100,$4(a0)
	move.b #$10,$16(a0)
	move.b #$20,$19(a0)
	jsr sub_20d0d8(pc)
	bne.s loc_20d038
	move.w #$fa00,$12(a0)
	move.w #$10,$3e(a0)
	addq.b #$2,$24(a0)
loc_20d038:
	bra.w loc_20cff2
	jsr sub_20d0b6(pc)
	jsr (sub_206dac).l
	tst.w d1
	bpl.s loc_20d04e
	clr.w $12(a0)
loc_20d04e:
	jsr (sub_206c16).l
	tst.w d1
	bpl.s loc_20d08e
	jsr sub_20d0d8(pc)
	bne.s loc_20d07e
	move.w #$fa00,$12(a0)
	move.w #$10,$3e(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d08e
	move.w #$b4,d0
	jsr (sub_2022cc).l
	bra.s loc_20d08e
loc_20d07e:
	move.w #$fe80,$12(a0)
	move.w #$10,$3e(a0)
	addq.b #$2,$24(a0)
loc_20d08e:
	bra.w loc_20cff2
	.incbin 53394, 36

sub_20d0b6:
	move.w $12(a0),d0
	add.w $3e(a0),d0
	bmi.s loc_20d0ca
	cmpi.w #$600,d0
	bcs.s loc_20d0ca
	move.w #$600,d0
loc_20d0ca:
	move.w d0,$12(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts

sub_20d0d8:
	cmpi.b #$2,($ff152e).l
	bcc.s loc_20d0f8
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_20d0f2
	addi.b #$1e,d0
loc_20d0f2:
	cmp.b ($f7b3).w,d0
	beq.s loc_20d0fc
loc_20d0f8:
	moveq #$0,d0
	rts
loc_20d0fc:
	moveq #$ffffffff,d0
	rts
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e0
	dc.b $f0,$0f,$08,$00,$00,$00
loc_20d10e:
	lea ($d000).w,a1
	move.w $12(a1),d0
	bpl.s loc_20d122
	neg.w d0
	cmpi.w #$600,d0
	bgt.w loc_20d176
loc_20d122:
	tst.w $12(a0)
	beq.s loc_20d130
	move.b #$4,$2e(a0)
	bra.s loc_20d136
loc_20d130:
	move.b #$0,$2e(a0)
loc_20d136:
	move.b $2e(a0),d0
	add.b d0,$16(a0)
	lea ($d000).w,a1
	bsr.s sub_20d14e
	move.b $2e(a0),d0
	sub.b d0,$16(a0)
	rts

sub_20d14e:
	move.w $12(a1),$30(a0)
	btst.b #$3,$22(a1)
	beq.s loc_20d168
	btst.b #$1,$22(a1)
	bne.s loc_20d168
	clr.w $12(a1)
loc_20d168:
	jsr (sub_209838).l
	bne.s loc_20d178
	move.w $30(a0),$12(a1)
loc_20d176:
	rts
loc_20d178:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d1a2
	move.l $c(a0),$c(a1)
	move.b $16(a1),d0
	ext.w d0
	addi.w #$10,d0
	sub.w d0,$c(a1)
	tst.w $12(a0)
	bge.s loc_20d1a2
	move.w $12(a0),$12(a1)
	rts
loc_20d1a2:
	clr.w $12(a1)
	rts
	tst.b $24(a0)
	bne.s loc_20d1f0
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$39a,$2(a0)
	move.l #$20d268,$4(a0)
	move.b #$8,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d1f0:
	move.b $3f(a0),$3e(a0)
	lea ($d000).w,a1
	jsr (sub_209838).l
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d210
	bclr.b #$7,(a4)
	bra.s loc_20d218
loc_20d210:
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d218:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d244
	tst.b $1(a0)
	bpl.s loc_20d230
	move.w #$bf,d0
	jsr (sub_2022cc).l
loc_20d230:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	addq.w #$4,$c(a0)
	addq.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d244:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d25c
	subq.w #$8,$c(a1)
	subq.w #$4,$c(a0)
	subq.b #$1,$1a(a0)
	addq.b #$4,$16(a0)
loc_20d25c:
	jsr (sub_20390e).l
	jmp (loc_207974).l
	.incbin 53864, 28
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d29e(pc,d0.w),d0
	jsr dat_20d29e(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20d29e:
	dc.b $00,$1a,$00,$7e,$00,$ba,$01,$00

sub_20d2a6:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209838).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d3f4,$4(a0)
	move.w $c(a0),$32(a0)
	move.w #$3a0,$2(a0)
	move.b #$20,$16(a0)
	move.b #$8,$19(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20d30a
	move.w #$330,$2(a0)
	move.b #$20,$16(a0)
	move.b #$20,$19(a0)
	move.b #$1,$1a(a0)
loc_20d30a:
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$30(a0)
	move.b #$ff,$3c(a0)
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20d332
	clr.b $3c(a0)
loc_20d332:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	bsr.w sub_20d3b6
	bsr.w sub_20d2a6
	cmpi.b #$40,$3a(a0)
	bne.s loc_20d356
	addq.b #$2,$24(a0)
loc_20d356:
	rts
	lea ($d000).w,a1
	move.w $8(a0),d0
	sub.w $38(a0),d0
	bcc.s loc_20d380
	move.b $17(a1),d0
	ext.w d0
	add.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d39c
	neg.w d0
	cmp.b $19(a0),d0
	bcs.s loc_20d39c
	bra.s loc_20d398
loc_20d380:
	move.b $17(a1),d0
	neg.b d0
	ext.w d0
	add.w $8(a1),d0
	sub.w $8(a0),d0
	bcs.s loc_20d39c
	cmp.b $19(a0),d0
	bcs.s loc_20d39c
loc_20d398:
	addq.b #$2,$24(a0)
loc_20d39c:
	rts
	st $3c(a0)
	bsr.w sub_20d3b6
	tst.b $3a(a0)
	bne.s loc_20d3b2
	move.b #$2,$24(a0)
loc_20d3b2:
	bra.w sub_20d2a6

sub_20d3b6:
	bsr.w sub_20d3cc
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20d3cc:
	tst.b $3c(a0)
	beq.s loc_20d3de
	subq.b #$4,$3a(a0)
	bcc.s loc_20d3f2
	clr.b $3a(a0)
	bra.s loc_20d3f2
loc_20d3de:
	addq.b #$4,$3a(a0)
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	bcs.s loc_20d3f2
	move.b #$40,$3a(a0)
loc_20d3f2:
	rts
	.incbin 54260, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d434(pc,d0.w),d0
	jsr dat_20d434(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20d434:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d43e:
	tst.b $1a(a0)
	beq.s loc_20d446
	rts
loc_20d446:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209838).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d588,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d494
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d494:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d4a4
	neg.w d0
loc_20d4a4:
	cmpi.w #$40,d0
	bcc.s loc_20d4e4
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d4c0
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d4c0:
	sub.w d1,d0
	bcs.s loc_20d4e4
	cmpi.w #$40,d0
	bcc.s loc_20d4e4
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d4e4
	move.w #$a4,d0
	jsr (sub_2022cc).l
loc_20d4e4:
	bra.w loc_20d43e
	.incbin 54504, 204
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d5d2(pc,d0.w),d0
	jsr dat_20d5d2(pc,d0.w)
	jsr (sub_20390e).l
	move.w $36(a0),d0
	jmp (loc_207978).l
dat_20d5d2:
	dc.b $00,$12,$00,$48

sub_20d5d6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209832).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d89e,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d804
	lea dat_20d894(pc),a1
	jsr (sub_205e98).l
	lea ($d000).w,a1
	bsr.w sub_20d5d6
	beq.s loc_20d678
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d66e
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d66a
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d66a:
	move.b d0,$39(a1)
loc_20d66e:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d678
	bra.s loc_20d698
loc_20d678:
	rts
	.incbin 54906, 30
loc_20d698:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_2007d0).l
	moveq #$0,d0
	move.b $39(a1),d0
	muls.w d1,d0
	asr.l #$8,d0
	move.w $8(a0),$8(a1)
	add.w d0,$8(a1)
	moveq #$0,d0
	move.b $2b(a1),d0
	move.b d0,d1
	andi.b #$f0,d0
	lsr.b #$4,d0
	move.b dat_20d6f6(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d6d8
	addq.b #$1,$39(a1)
loc_20d6d8:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d6ec
	move.w ($f606).w,($f602).w
loc_20d6ec:
	bsr.w sub_20d706
	bra.w loc_20d754
	dc.b $4e,$75
dat_20d6f6:
	.incbin 55030, 16

sub_20d706:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d732
	btst.b #$2,($f602).w
	beq.s loc_20d71e
	addq.b #$1,$39(a1)
	bra.s loc_20d752
loc_20d71e:
	btst.b #$3,($f602).w
	beq.s loc_20d752
	subq.b #$1,$39(a1)
	bcc.s loc_20d752
	clr.b $39(a1)
	bra.s loc_20d752
loc_20d732:
	btst.b #$3,($f602).w
	beq.s loc_20d740
	addq.b #$1,$39(a1)
	bra.s loc_20d752
loc_20d740:
	btst.b #$2,($f602).w
	beq.s loc_20d752
	subq.b #$1,$39(a1)
	bcc.s loc_20d752
	clr.b $39(a1)
loc_20d752:
	rts
loc_20d754:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d7fa
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_2007d0).l
	muls.w d2,d1
	asr.l #$8,d1
	add.w d1,$10(a1)
	muls.w d2,d0
	asr.l #$8,d0
	add.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$1,$3c(a1)
	clr.b $38(a1)
	tst.b ($ff195b).l
	beq.s loc_20d7b4
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d7c0
loc_20d7b4:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d7c0:
	btst.b #$2,$22(a1)
	bne.s loc_20d7fc
	tst.b ($ff195b).l
	beq.s loc_20d7de
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d7ee
loc_20d7de:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d7ee:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d7fa:
	rts
loc_20d7fc:
	bset.b #$4,$22(a1)
	rts

sub_20d804:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d814(pc,d0.w),d0
	jmp dat_20d814(pc,d0.w)
dat_20d814:
	dc.b $00,$26,$00,$44,$00,$08,$00,$18
	bsr.w sub_20d878
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	bsr.w sub_20d878
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 55354, 62

sub_20d878:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007d0).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d894:
	.incbin 55444, 118
	jsr (sub_20fc62).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d92a(pc,d0.w),d0
	jsr dat_20d92a(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20d92a:
	dc.b $00,$08,$00,$8c,$01,$08,$01,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2438,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.l #$70000,$2e(a0)
	move.l #loc_206e82,$36(a0)
	move.w #$fff0,$34(a0)
	move.b #$1,$1a(a0)
	bsr.w sub_20db26
	movea.l #$20db48,a1
	move.l #$ffff6000,d0
	move.b #$7,d1
	tst.b $28(a0)
	beq.s loc_20d99a
	movea.l #$20db6c,a1
	move.l #$ffff8000,d0
	move.b #$3,d1
loc_20d99a:
	move.l a1,$4(a0)
	move.l d0,$2a(a0)
	move.l #$70000,$2e(a0)
	move.b d1,$33(a0)
	move.b d1,$32(a0)
	addq.b #$1,$32(a0)
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206c16).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d9f0
	tst.w $3e(a0)
	bpl.w loc_20daf2
	cmp.w $3e(a0),d1
	ble.w loc_20daf2
	bra.s loc_20da12
loc_20d9f0:
	tst.w $3e(a0)
	bmi.s loc_20da12
	addi.l #$2000,$2e(a0)
	cmpi.l #$70000,$2e(a0)
	blt.s loc_20da10
	move.l #$70000,$2e(a0)
loc_20da10:
	rts
loc_20da12:
	addq.b #$2,$24(a0)
	move.w $3e(a0),d0
	add.w d0,$c(a0)
	move.w #$1,d0
	tst.b $28(a0)
	beq.s loc_20da2c
	move.w #$14,d0
loc_20da2c:
	move.w d0,$3a(a0)
	rts
	tst.b $28(a0)
	beq.s loc_20da62
	move.w #$7,d6
	move.w $3a(a0),d0
	cmpi.w #$6,d0
	beq.s loc_20da5a
	cmpi.w #$b,d0
	beq.s loc_20da58
	cmpi.w #$f,d0
	beq.s loc_20da5a
	cmpi.w #$12,d0
	bne.s loc_20da62
loc_20da58:
	neg.w d6
loc_20da5a:
	add.w d6,$c(a0)
	bsr.w sub_20db26
loc_20da62:
	subq.w #$1,$3a(a0)
	bne.s loc_20da90
	addq.b #$2,$24(a0)
	subq.w #$7,$c(a0)
	bsr.w sub_20db26
	move.l #$fffa0000,d0
	tst.b $28(a0)
	beq.s loc_20da86
	move.l #$fffb0000,d0
loc_20da86:
	move.l d0,$2e(a0)
	subq.b #$1,$32(a0)
	bmi.s loc_20daf2
loc_20da90:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206dac).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20dac8
	tst.w $3e(a0)
	bpl.s loc_20daf2
	cmp.w $3e(a0),d1
	ble.s loc_20daf2
	bra.s loc_20dada
loc_20dac8:
	tst.w $3e(a0)
	bmi.s loc_20dada
	addi.l #$2000,$2e(a0)
	bpl.s loc_20dae6
	rts
loc_20dada:
	move.w $3e(a0),d0
	sub.w d0,$c(a0)
	clr.l $2e(a0)
loc_20dae6:
	subq.b #$4,$24(a0)
	subi.w #$b,$c(a0)
	bra.s sub_20db26
loc_20daf2:
	move.b $33(a0),$32(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
	neg.w $34(a0)
	lea (loc_206e82).l,a1
	lea (loc_206ce0).l,a2
	cmpa.l $36(a0),a1
	bne.s loc_20db20
	exg a1,a2
loc_20db20:
	move.l a1,$36(a0)
	rts

sub_20db26:
	tst.b $1a(a0)
	beq.s loc_20db34
	moveq #$0,d0
	moveq #$13,d1
	moveq #$2f,d2
	bra.s loc_20db3a
loc_20db34:
	moveq #$1,d0
	moveq #$1c,d1
	moveq #$30,d2
loc_20db3a:
	move.b d0,$1a(a0)
	move.b d1,$16(a0)
	move.b d2,$20(a0)
	rts
	.incbin 56136, 72
	tst.b $28(a0)
	bmi.w loc_20dfa0
	jsr (sub_20fc62).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dbc2(pc,d0.w),d0
	jsr dat_20dbc2(pc,d0.w)
	lea dat_20de2e(pc),a1
	jsr (sub_205e98).l
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20dbc2:
	.incbin 56258, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$a457,$2(a0)
	move.b #$31,$20(a0)
	move.w #$fff8,$30(a0)
	lea dat_20de3a(pc),a1
	move.l #$ffff0000,d0
	tst.b $28(a0)
	beq.s loc_20dc24
	lea dat_20df22(pc),a1
	move.l #$ffff8000,d0
loc_20dc24:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	addq.b #$2,$24(a0)
	move.w #$200,d0
	tst.b $28(a0)
	beq.s loc_20dc3e
	move.w #$400,d0
loc_20dc3e:
	move.w d0,$2a(a0)
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20dc6c
	tst.w $32(a0)
	beq.s loc_20dc5c
	subq.w #$1,$32(a0)
	bra.s loc_20dc6c
loc_20dc5c:
	lea ($d000).w,a1
	bsr.s sub_20dc7a
	beq.s loc_20dc6c
	move.b #$c,$24(a0)
	rts
loc_20dc6c:
	subq.w #$1,$2a(a0)
	bpl.s loc_20dc78
	move.b #$6,$24(a0)
loc_20dc78:
	rts

sub_20dc7a:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dcc4
	move.w $8(a1),d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20dcc4
	btst.b #$0,$1(a0)
	sne d2
	eor.b d1,d2
	beq.s loc_20dcc0
	neg.l $2c(a0)
	neg.w $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20dcc0:
	moveq #$ffffffff,d0
	rts
loc_20dcc4:
	moveq #$0,d0
	rts
	.incbin 56520, 358
dat_20de2e:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $01,$02,$03,$ff
dat_20de3a:
	.incbin 56890, 232
dat_20df22:
	.incbin 57122, 126
loc_20dfa0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dfba(pc,d0.w),d0
	jsr dat_20dfba(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20dfba:
	.incbin 57274, 1276
	tst.b $29(a0)
	beq.s loc_20e4c4
	bmi.w loc_20e732
	bra.w loc_20e712
loc_20e4c4:
	jsr (sub_20fc62).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e4e4(pc,d0.w),d0
	jsr dat_20e4e4(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20e4e4:
	.incbin 58596, 18
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$16(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$2488,$2(a0)
	move.b #$34,$20(a0)
	addq.w #$8,$c(a0)
	move.w $c(a0),$34(a0)
	move.w $c(a0),$36(a0)
	addi.w #$5f,$36(a0)
	lea dat_20e7bc(pc),a1
	tst.b $28(a0)
	beq.s loc_20e548
	lea dat_20e814(pc),a1
loc_20e548:
	move.l a1,$4(a0)
	jsr (sub_207954).l
	beq.s loc_20e55a
	jmp (sub_2039ba).l
loc_20e55a:
	move.b $0(a0),$0(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$20,$16(a1)
	move.b #$1,$17(a1)
	move.b #$1,$19(a1)
	move.w a0,$38(a1)
	addq.b #$2,$24(a0)
	move.b #$9,$1a(a0)
	move.w #$79,$2a(a0)
	subq.w #$1,$2a(a0)
	bne.s loc_20e5d4
	move.w #$79,$2a(a0)
	move.b #$2,d6
	lea ($d000).w,a1
	bsr.w sub_20e5d6
	bcs.s loc_20e5d0
	neg.b d6
loc_20e5d0:
	add.b d6,$24(a0)
loc_20e5d4:
	rts

sub_20e5d6:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$28,d0
	subi.w #$78,d0
	bcc.s loc_20e5f8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$ff58,d0
	subi.w #$150,d0
loc_20e5f8:
	rts
	.incbin 58874, 280
loc_20e712:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e72c
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e72c
	jmp (sub_20390e).l
loc_20e72c:
	jmp (sub_2039ba).l
loc_20e732:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e744
	jmp (sub_2039ba).l
loc_20e744:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e756
	moveq #$0,d0
loc_20e756:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_20390e).l
	.incbin 59246, 78
dat_20e7bc:
	.incbin 59324, 88
dat_20e814:
	.incbin 59412, 274
	jsr (sub_20fcaa).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ea48
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e946(pc,d0.w),d0
	jmp dat_20e946(pc,d0.w)
dat_20e946:
	.incbin 59718, 258
loc_20ea48:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea56(pc,d0.w),d0
	jmp dat_20ea56(pc,d0.w)
dat_20ea56:
	.incbin 59990, 448
	tst.b $28(a0)
	bmi.w loc_20ecc8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ec42(pc,d0.w),d0
	jsr dat_20ec42(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_209838).l
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20ec42:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$3a8,$2(a0)
	move.l #$20ee9c,$4(a0)
	move.w a0,$2a(a0)
	st $34(a0)
	move.w #$0,$32(a0)
	tst.b $34(a0)
	beq.s loc_20ecc6
	sf $34(a0)
	lea dat_20eea4(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.w $32(a0),d0
	adda.w $0(a1,d0.w),a1
	move.l a1,$2c(a0)
	addq.w #$2,$32(a0)
	cmpi.w #$8,$32(a0)
	blt.s loc_20ecba
	clr.w $32(a0)
loc_20ecba:
	bsr.w sub_20ee5a
	beq.s loc_20ecc6
	jmp (sub_2039ba).l
loc_20ecc6:
	rts
loc_20ecc8:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ee54
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.w loc_20ee54
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed00(pc,d0.w),d0
	jsr dat_20ed00(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_209838).l
	jmp (sub_20390e).l
dat_20ed00:
	.incbin 60672, 20
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.l #$0,$38(a0)
	move.l #$0,$3c(a0)
	movea.l $2c(a0),a1
	move.b -$1(a1),d0
	bne.s loc_20ed40
	move.l #$ffff8000,$3c(a0)
loc_20ed40:
	subq.b #$1,d0
	bne.s loc_20ed4c
	move.l #$8000,$38(a0)
loc_20ed4c:
	subq.b #$1,d0
	bne.s loc_20ed58
	move.l #$8000,$3c(a0)
loc_20ed58:
	subq.b #$1,d0
	bne.s loc_20ed64
	move.l #$ffff8000,$38(a0)
loc_20ed64:
	movea.w $2a(a0),a1
	cmpi.b #$2,$28(a1)
	bne.s loc_20ed82
	moveq #$1,d0
	tst.w $3c(a0)
	bpl.s loc_20ed7a
	moveq #$ffffffff,d0
loc_20ed7a:
	move.w d0,$34(a0)
	move.w d0,$12(a0)
loc_20ed82:
	move.l $38(a0),d0
	add.l d0,$8(a0)
	move.l $3c(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ed9c
	addq.b #$2,$24(a0)
loc_20ed9c:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20edb6
	move.w #$0,d0
loc_20edb6:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20edd6
	addq.b #$2,$24(a0)
	bsr.w sub_20ee5a
	beq.s loc_20edd6
	addq.b #$2,$24(a0)
	movea.w $2a(a0),a1
	st $34(a1)
loc_20edd6:
	rts
	rts
	.incbin 60890, 122
loc_20ee54:
	jmp (sub_2039ba).l

sub_20ee5a:
	movea.l $2c(a0),a6
	tst.b (a6)+
	bmi.s loc_20ee9a
	jsr (sub_20793e).l
	bne.s loc_20ee9a
	movea.l a0,a2
	movea.l a1,a3
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.b #$ff,$28(a1)
	move.w a0,$36(a1)
	move.l a6,$2c(a1)
	addq.b #$1,$18(a1)
	clr.b $24(a1)
loc_20ee9a:
	rts
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
dat_20eea4:
	.incbin 61092, 740
	tst.b $28(a0)
	bne.w loc_20f3d0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f1aa(pc,d0.w),d0
	jsr dat_20f1aa(pc,d0.w)
	jsr (sub_20390e).l
	jmp (loc_207974).l
dat_20f1aa:
	dc.b $00,$06,$00,$d4,$01,$be
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$3b8,$2(a0)
	move.l #$20f40c,$4(a0)
	jsr (sub_20793e).l
	bne.w loc_20f3de
	bsr.w sub_20f22a
	move.w a1,$2a(a0)
	subi.w #$28,$8(a1)
	subi.w #$18,$c(a1)
	jsr (sub_20793e).l
	bne.w loc_20f3de
	bsr.w sub_20f22a
	move.w a1,$2c(a0)
	addi.w #$28,$8(a1)
	addi.w #$18,$c(a1)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
	rts

sub_20f22a:
	move.b $0(a0),$0(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ff,$28(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$8,$16(a1)
	move.b #$9,$1a(a1)
	move.w a0,$2a(a1)
	move.w #$78,$2e(a0)
	rts
	lea loc_20f2ea(pc),a1
	tst.w $12(a0)
	beq.s loc_20f28c
	lea loc_20f30c(pc),a1
loc_20f28c:
	jsr (a1)
	move.w a0,-(a7)
	movea.w $2c(a0),a0
	lea ($d000).w,a1
	jsr (sub_209832).l
	jsr (sub_20390e).l
	movea.w (a7)+,a0
	move.w a0,-(a7)
	movea.w $2a(a0),a0
	lea ($d000).w,a1
	jsr (sub_209832).l
	sne $3f(a0)
	jsr (sub_20390e).l
	movea.w (a7)+,a0
	movea.w $2a(a0),a1
	tst.b $3f(a1)
	bne.s loc_20f2d6
	lea dat_20f3e4(pc),a1
	jmp (sub_205e98).l
loc_20f2d6:
	move.b #$4,$24(a0)
	move.w #$3,$2e(a0)
	move.b #$8,$1a(a0)
	rts
loc_20f2ea:
	tst.w $2e(a0)
	bmi.s loc_20f30a
	subq.w #$1,$2e(a0)
	bmi.s loc_20f300
	cmpi.w #$3c,$2e(a0)
	beq.s loc_20f306
	bra.s loc_20f30a
loc_20f300:
	move.w #$100,$12(a0)
loc_20f306:
	addq.b #$1,$1c(a0)
loc_20f30a:
	rts
loc_20f30c:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	moveq #$0,d0
	move.b $12(a0),d0
	add.w d0,$c(a0)
	add.w d0,$c(a1)
	add.w d0,$c(a2)
	moveq #$0,d0
	move.b $19(a2),d0
	move.w $8(a2),d3
	cmp.w $8(a0),d3
	blt.s loc_20f338
	neg.w d0
loc_20f338:
	add.w d0,d3
	move.w a0,-(a7)
	movea.w a2,a0
	jsr (sub_206c1a).l
	movea.w (a7)+,a0
	tst.w d1
	bmi.s loc_20f34c
	rts
loc_20f34c:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	add.w d1,$c(a0)
	add.w d1,$c(a1)
	add.w d1,$c(a2)
	move.w #$0,$12(a0)
	rts
	.incbin 62312, 104
loc_20f3d0:
	movea.w $2a(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.s loc_20f3de
	rts
loc_20f3de:
	jmp (sub_2039ba).l
dat_20f3e4:
	.incbin 62436, 210
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f4da(pc,d0.w),d0
	jsr dat_20f4da(pc,d0.w)
	jsr (sub_20390e).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f4d8
	jmp (loc_207974).l
loc_20f4d8:
	rts
dat_20f4da:
	.incbin 62682, 1928

sub_20fc62:
	tst.b ($ff156a).l
	beq.s loc_20fca8
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc7a
	tst.b $28(a0)
	beq.s loc_20fca8
loc_20fc7a:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2039ba).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fca6
	move.w #$9e,d0
	jsr (sub_2022cc).l
loc_20fca6:
	addq.l #$4,a7
loc_20fca8:
	rts

sub_20fcaa:
	tst.b $28(a0)
	bmi.s loc_20fcda
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fcca
	tst.b ($ff156d).l
	bne.s loc_20fcda
	addq.l #$4,a7
	jmp (loc_207974).l
loc_20fcca:
	tst.b ($ff156a).l
	bne.s loc_20fcda
	addq.l #$4,a7
	jmp (sub_2039ba).l
loc_20fcda:
	rts

sub_20fcdc:
	jsr (sub_20670c).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fe38).l,a1
	move.w #$3f,d6
	bsr.w sub_20fdf4
	bne.s loc_20fd1e
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4340,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd1e:
	lea (dat_20fe46).l,a1
	move.w #$1f,d6
	bsr.w sub_20fdf4
	bne.s loc_20fd52
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$42c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd52:
	lea (dat_20fdda).l,a1
	move.w #$1f,d6
	bsr.w sub_20fd88
	bne.s loc_20fd86
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4240,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd86:
	rts

sub_20fd88:
	subq.b #$1,(a2)
	bpl.s loc_20fdce
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fd98
	moveq #$0,d0
loc_20fd98:
	move.b d0,(a4)
	add.w d0,d0
	move.b $2(a1,d0.w),(a2)
	move.b $3(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	add.w d0,d0
	moveq #$0,d1
	move.b (a1),d1
	add.w d1,d1
	add.w d1,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fdbc:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fdbc
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fdce:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fdda:
	.incbin 64986, 26

sub_20fdf4:
	subq.b #$1,(a2)
	bpl.w loc_20fe2c
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe0a
	moveq #$0,d0
loc_20fe0a:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fe1a:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe1a
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fe2c:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe38:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fe46:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fe50:
	.incbin 65104, 16
dat_20fe60:
	.incbin 65120, 65952
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 4154
dat_2346f6:
	.incbin 214774, 256
dat_2347f6:
	.incbin 215030, 4096
dat_2357f6:
	.incbin 219126, 4896
dat_236b16:
	.incbin 224022, 13606
dat_23a03c:
	.incbin 237628, 768
dat_23a33c:
	.incbin 238396, 23748
