; R62B__.MMD
; disassembled from the disc; code only, data comes from data/R62B__.MMD at build time
	.file "R62B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$10
	jmp (loc_201b86).l
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
	bsr.w sub_2020bc
	bsr.w sub_202064
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201400

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
	bsr.w sub_200744
	bsr.s sub_2002e4
	bsr.w sub_202482
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
	bsr.w sub_200744
	bsr.s sub_200374
	bsr.w sub_202482
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
	bsr.w sub_200744
	bsr.s sub_20040c
	bsr.w sub_202482
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
	bsr.w sub_200744
	bsr.s sub_2004a0
	bsr.w sub_202482
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
	.incbin 1402, 458

sub_200744:
	move.w #$2300,sr
loc_200748:
	tst.b ($f62a).w
	bne.s loc_200748
	rts

sub_200750:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200768(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200768(pc,d0.w),d0
	rts
dat_200768:
	.incbin 1896, 640

sub_2009e8:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a44
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a02
	neg.w d3
loc_200a02:
	tst.w d4
	bpl.w loc_200a0a
	neg.w d4
loc_200a0a:
	cmp.w d3,d4
	bcc.w loc_200a1c
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a4e(pc,d4.w),d0
	bra.s loc_200a26
loc_200a1c:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a4e(pc,d3.w),d0
loc_200a26:
	tst.w d1
	bpl.w loc_200a32
	neg.w d0
	addi.w #$80,d0
loc_200a32:
	tst.w d2
	bpl.w loc_200a3e
	neg.w d0
	addi.w #$100,d0
loc_200a3e:
	movem.l (a7)+,d3-d4
	rts
loc_200a44:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a4e:
	.incbin 2638, 258

sub_200b50:
	btst.b #$3,$22(a0)
	beq.s loc_200b64
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b64:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b86
	move.b $26(a0),d0
	bpl.s loc_200b80
	subq.b #$1,d0
loc_200b80:
	addi.b #$20,d0
	bra.s loc_200b92
loc_200b86:
	move.b $26(a0),d0
	bpl.s loc_200b8e
	addq.b #$1,d0
loc_200b8e:
	addi.b #$1f,d0
loc_200b92:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e1c
	cmpi.b #$80,d0
	beq.w loc_200d7a
	cmpi.b #$c0,d0
	beq.w loc_200cde
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
	bsr.w sub_2010a6
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
	bsr.w sub_2010a6
	move.w (a7)+,d0
	bsr.w sub_200cb2
	tst.w d1
	beq.s loc_200c20
	bpl.s loc_200c22
	cmpi.w #$fff2,d1
	blt.s loc_200c48
	add.w d1,$c(a0)
loc_200c20:
	rts
loc_200c22:
	cmpi.w #$e,d1
	bgt.s loc_200c2e
loc_200c28:
	add.w d1,$c(a0)
	rts
loc_200c2e:
	tst.b $38(a0)
	bne.s loc_200c28
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c48:
	rts
	.incbin 3146, 34
loc_200c6c:
	rts
	.incbin 3182, 26
	rts
	.incbin 3210, 40

sub_200cb2:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cc0
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cc0:
	btst.l #$0,d2
	bne.s loc_200ccc
	move.b d2,$26(a0)
	rts
loc_200ccc:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cde:
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
	bsr.w sub_201216
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
	bsr.w sub_201216
	move.w (a7)+,d0
	bsr.w sub_200cb2
	tst.w d1
	beq.s loc_200d52
	bpl.s loc_200d54
	cmpi.w #$fff2,d1
	blt.w loc_200c6c
	add.w d1,$8(a0)
loc_200d52:
	rts
loc_200d54:
	cmpi.w #$e,d1
	bgt.s loc_200d60
loc_200d5a:
	add.w d1,$8(a0)
	rts
loc_200d60:
	tst.b $38(a0)
	bne.s loc_200d5a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d7a:
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
	bsr.w sub_2010a6
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
	bsr.w sub_2010a6
	move.w (a7)+,d0
	bsr.w sub_200cb2
	tst.w d1
	beq.s loc_200df4
	bpl.s loc_200df6
	cmpi.w #$fff2,d1
	blt.w loc_200c48
	sub.w d1,$c(a0)
loc_200df4:
	rts
loc_200df6:
	cmpi.w #$e,d1
	bgt.s loc_200e02
loc_200dfc:
	sub.w d1,$c(a0)
	rts
loc_200e02:
	tst.b $38(a0)
	bne.s loc_200dfc
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e1c:
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
	bsr.w sub_201216
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
	bsr.w sub_201216
	move.w (a7)+,d0
	bsr.w sub_200cb2
	tst.w d1
	beq.s loc_200e96
	bpl.s loc_200e98
	cmpi.w #$fff2,d1
	blt.w loc_200c6c
	sub.w d1,$8(a0)
loc_200e96:
	rts
loc_200e98:
	cmpi.w #$e,d1
	bgt.s loc_200ea4
loc_200e9e:
	sub.w d1,$8(a0)
	rts
loc_200ea4:
	tst.b $38(a0)
	bne.s loc_200e9e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ebe:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200ed4
	andi.w #$380,d0
loc_200ed4:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f34
	bmi.s loc_200f38
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f04
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f0a
loc_200f04:
	andi.w #$7fff,$2(a0)
loc_200f0a:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f1a
	bclr.b #$6,$1(a0)
loc_200f1a:
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
loc_200f34:
	movea.l d1,a1
	rts
loc_200f38:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fa0
	btst.b #$6,$1(a0)
	bne.s loc_200f66
	cmpi.b #$14,d1
	bne.w loc_20108a
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20108a
loc_200f66:
	cmpi.b #$15,d1
	bne.s loc_200f74
	move.w #$60,d1
	bra.w loc_20108a
loc_200f74:
	cmpi.b #$1e,d1
	bne.s loc_200f82
	move.w #$61,d1
	bra.w loc_20108a
loc_200f82:
	cmpi.b #$1f,d1
	bne.s loc_200f90
	move.w #$62,d1
	bra.w loc_20108a
loc_200f90:
	cmpi.b #$32,d1
	bne.w loc_20108a
	move.w #$63,d1
	bra.w loc_20108a
loc_200fa0:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201006
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200ff0
	cmpi.b #$6,d1
	beq.s loc_200ff0
	tst.b ($ff1956).l
	beq.w loc_20108a
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201000
	cmpi.b #$3c,d1
	beq.s loc_201000
	cmpi.b #$37,d1
	beq.s loc_201000
	cmpi.b #$2f,d1
	beq.s loc_201000
	cmpi.b #$16,d1
	beq.s loc_201000
	bra.w loc_20108a
loc_200ff0:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20108a
loc_201000:
	addq.b #$1,d1
	bra.w loc_20108a
loc_201006:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201076
	cmpi.b #$3,$0(a0)
	bcc.w loc_20108a
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20108a
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20103a
	move.w #$6a,d1
	bra.s loc_20108a
loc_20103a:
	cmpi.b #$48,d1
	bne.s loc_201046
	move.w #$6b,d1
	bra.s loc_20108a
loc_201046:
	cmpi.b #$4a,d1
	bne.s loc_201052
	move.w #$6c,d1
	bra.s loc_20108a
loc_201052:
	cmpi.b #$10,d1
	bne.s loc_20105e
	move.w #$6d,d1
	bra.s loc_20108a
loc_20105e:
	cmpi.b #$63,d1
	bne.s loc_20106a
	move.w #$6e,d1
	bra.s loc_20108a
loc_20106a:
	cmpi.b #$43,d1
	bne.s loc_20108a
	move.w #$6f,d1
	bra.s loc_20108a
loc_201076:
	btst.b #$6,$1(a0)
	beq.s loc_20108a
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20108a
	move.w #$51,d1
loc_20108a:
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

sub_2010a6:
	bsr.w sub_200ebe
	cmpi.l #$210000,d1
	beq.s loc_2010c0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010c0
	btst.l d5,d4
	bne.s loc_2010ce
loc_2010c0:
	add.w a3,d2
	bsr.w sub_201166
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010ce:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010c0
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010f4
	not.w d1
	neg.b (a4)
loc_2010f4:
	btst.l #$c,d4
	beq.s loc_201104
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201104:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201120
	neg.w d0
loc_201120:
	tst.w d0
	beq.s loc_2010c0
	bmi.s loc_20113c
	cmpi.b #$10,d0
	beq.s loc_201158
loc_20112c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20113c:
	cmpa.w #$10,a3
	bne.s loc_20114c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20112c
loc_20114c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010c0
loc_201158:
	sub.w a3,d2
	bsr.w sub_201166
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201166:
	bsr.w sub_200ebe
	cmpi.l #$210000,d1
	beq.s loc_201180
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201180
	btst.l d5,d4
	bne.s loc_20118e
loc_201180:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20118e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201180
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011b4
	not.w d1
	neg.b (a4)
loc_2011b4:
	btst.l #$c,d4
	beq.s loc_2011c4
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011c4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011e0
	neg.w d0
loc_2011e0:
	tst.w d0
	beq.s loc_201180
	bmi.s loc_2011f6
loc_2011e6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011f6:
	cmpa.w #$10,a3
	bne.s loc_201206
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011e6
loc_201206:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201180
	not.w d1
	rts

sub_201216:
	bsr.w sub_200ebe
	cmpi.l #$210000,d1
	beq.s loc_201230
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201230
	btst.l d5,d4
	bne.s loc_20123e
loc_201230:
	add.w a3,d3
	bsr.w sub_2012c6
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_20123e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201230
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20126c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20126c:
	btst.l #$b,d4
	beq.s loc_201274
	neg.b (a4)
loc_201274:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201290
	neg.w d0
loc_201290:
	tst.w d0
	beq.s loc_201230
	bmi.s loc_2012ac
	cmpi.b #$10,d0
	beq.s loc_2012b8
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012ac:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201230
loc_2012b8:
	sub.w a3,d3
	bsr.w sub_2012c6
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012c6:
	bsr.w sub_200ebe
	cmpi.l #$210000,d1
	beq.s loc_2012e0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012e0
	btst.l d5,d4
	bne.s loc_2012ee
loc_2012e0:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2012ee:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012e0
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20131c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20131c:
	btst.l #$b,d4
	beq.s loc_201324
	neg.b (a4)
loc_201324:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201340
	neg.w d0
loc_201340:
	tst.w d0
	beq.s loc_2012e0
	bmi.s loc_201356
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201356:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012e0
	not.w d1
	rts

sub_201366:
	rts
	.incbin 4968, 152
loc_201400:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201420
	tst.b ($ff0f01).l
	bne.s loc_201420
	move.b #$1,($ff156a).l
loc_201420:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201486
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2076a8
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201486
	move.b #$1,($ff1508).l
loc_201486:
	bset.b #$7,($f600).w
	bsr.w sub_202474
	tst.b ($ff156e).l
	bne.s loc_2014ac
	btst.b #$7,($ff152e).l
	beq.s loc_2014e2
	bset.b #$0,($ff151d).l
	beq.s loc_2014b8
loc_2014ac:
	bsr.w sub_200480
	bclr.b #$0,($ff151d).l
loc_2014b8:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201552
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014e0
	bclr.b #$7,($ff152e).l
loc_2014e0:
	rts
loc_2014e2:
	bset.b #$0,($ff151d).l
	beq.s loc_2014f0
	bsr.w sub_200354
loc_2014f0:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20150c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201534
loc_20150c:
	tst.b ($ff1508).l
	bne.s loc_201552
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201534:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20153c:
	move.l #$0,(a1)+
	dbf d6,loc_20153c
	move.b #$c,($f62a).w
	bsr.w sub_200744
	rts
loc_201552:
	cmpi.w #$800,($f78e).w
	bne.s loc_201570
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201570:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201586
	btst.b #$7,($ff152e).l
	beq.s loc_20158c
loc_201586:
	move.l #$eee0eee,d0
loc_20158c:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201594:
	move.l d0,(a1)+
	dbf d6,loc_201594
loc_20159a:
	move.b #$c,($f62a).w
	bsr.w sub_200744
	bsr.w sub_202482
	bne.s loc_20159a
	tst.l ($f680).w
	bsr.w sub_201a40
	moveq #$0,d0
	lea (dat_20fe62).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015c4
	bsr.w sub_202588
loc_2015c4:
	moveq #$1,d0
	bsr.w sub_202588
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015e0:
	move.l d0,(a1)+
	dbf d1,loc_2015e0
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2015f2:
	move.l d0,(a1)+
	dbf d1,loc_2015f2
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201602:
	move.l d0,(a1)+
	dbf d1,loc_201602
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201614:
	move.l d0,(a1)+
	dbf d1,loc_201614
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201624:
	move.l d0,(a1)+
	dbf d1,loc_201624
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201634:
	move.l d0,(a1)+
	dbf d1,loc_201634
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20215e
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
	bsr.w sub_2027ea
	bsr.w sub_20293e
	bset.b #$2,($f754).w
	bsr.w sub_20338c
	bsr.w sub_203292
	jsr (sub_201366).l
	bsr.w sub_20197a
loc_2016b4:
	move.b #$c,($f62a).w
	bsr.w sub_200744
	bsr.w sub_202482
	bne.s loc_2016b4
	tst.l ($f680).w
	bne.s loc_2016b4
	bsr.w sub_201906
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201aa0
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201718
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201718:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20175a
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20175a:
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
	jsr (sub_20fcee).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017ea
loc_2017e4:
	bsr.w sub_2003d2
	bra.s loc_2017f8
loc_2017ea:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017e4
	bsr.w sub_2002b2
loc_2017f8:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201806:
	move.b #$8,($f62a).w
	bsr.w sub_200744
	tst.b ($f7cc).w
	bne.s loc_201824
	btst.b #$7,($f605).w
	beq.s loc_201824
	eori.b #$1,($f63a).w
loc_201824:
	btst.b #$0,($f63a).w
	beq.w loc_201896
	bsr.w sub_201b04
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201874
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201806
	subq.b #$1,($ff1508).l
	bpl.s loc_201856
	clr.b ($ff1508).l
loc_201856:
	move.w #$e,d0
	jsr (sub_205dbc).l
	bsr.w sub_2076a8
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201882
loc_201874:
	andi.b #$70,d0
	beq.w loc_201806
	clr.b ($ff1508).l
loc_201882:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201400
loc_201896:
	bsr.w sub_201b4a
	addq.w #$1,($ff1504).l
	jsr (sub_2076be).l
	jsr (sub_203792).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201400
	tst.w ($ff1502).l
	bne.w loc_201400
	tst.w ($ff1906).l
	bne.s loc_2018de
	cmpi.b #$6,($d024).w
	bcs.s loc_2018de
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018e2
loc_2018de:
	bsr.w sub_20293e
loc_2018e2:
	jsr (sub_20393c).l
	tst.w ($ff190e).l
	bne.s loc_2018f4
	bsr.w sub_200184
loc_2018f4:
	jsr (sub_20c68c).l
	bsr.w sub_202482
	bsr.w sub_2019ac
	bra.w loc_201806

sub_201906:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20191e
	move.w #$78,$30(a1)
loc_20191e:
	rts
	.incbin 6432, 90

sub_20197a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_20198c(pc,d0.w),($f796).w
	rts
dat_20198c:
	.incbin 6540, 32

sub_2019ac:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019ca
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019ca:
	subq.b #$1,($ff1912).l
	bpl.s loc_2019e8
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2019e8:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a10
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a10
	move.b #$0,($ff1915).l
loc_201a10:
	tst.b ($ff1916).l
	beq.s loc_201a3e
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a3e:
	rts

sub_201a40:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a62
	cmpi.b #$2,d0
	bne.s loc_201a62
	add.b ($ff156a).l,d0
loc_201a62:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a7a(pc,d1.w),d0
	jmp (sub_205dbc).l
dat_201a7a:
	.incbin 6778, 38

sub_201aa0:
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

sub_201b04:
	move.w #$ab,d0
	jsr (sub_20224c).l
	bset.b #$7,($f63a).w
	bne.s loc_201b48
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b2e
loc_201b24:
	move.w #$d5,d0
	jmp (sub_205dbc).l
loc_201b2e:
	tst.b ($ff151f).l
	bne.s loc_201b24
	tst.b ($ff1520).l
	bne.s loc_201b24
	move.w #$90,d0
	jmp (sub_205dbc).l
loc_201b48:
	rts

sub_201b4a:
	bclr.b #$7,($f63a).w
	beq.s loc_201b84
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b6a
loc_201b60:
	move.w #$d6,d0
	jmp (sub_205dbc).l
loc_201b6a:
	tst.b ($ff151f).l
	bne.s loc_201b60
	tst.b ($ff1520).l
	bne.s loc_201b60
	move.w #$91,d0
	jmp (sub_205dbc).l
loc_201b84:
	rts
loc_201b86:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c12
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201bc2
	move.w #$700,d0
loc_201bbe:
	dbf d0,loc_201bbe
loc_201bc2:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201bf8(pc,d0.w),d0
	jsr dat_201bf8(pc,d0.w)
loc_201bd8:
	jsr (sub_202270).l
	tst.b ($f63a).w
	bne.s loc_201bec
	bsr.w sub_202024
	bsr.w sub_202012
loc_201bec:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201bf8:
	.incbin 7160, 26
loc_201c12:
	tst.b ($ff1957).l
	beq.w loc_201bd8
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bd8
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c40
	move.w #$700,d0
loc_201c3c:
	dbf d0,loc_201c3c
loc_201c40:
	move.w #$1,($f6fc).w
	jsr (sub_2021e4).l
	tst.b ($f64e).w
	bne.s loc_201c78
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201c9c
loc_201c78:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201c9c:
	move.w ($f624).w,(a5)
	jsr (sub_202200).l
	bra.w loc_201bd8
	.incbin 7338, 60
	jsr (sub_2021e4).l
	bsr.w sub_202080
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
	bsr.w sub_205ce8
	tst.b ($f767).w
	beq.s loc_201d94
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201d94:
	jsr (sub_20fcee).l
	jsr (sub_202200).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e88
	bsr.w sub_2024f4
	jmp (loc_20aebc).l
	dc.b $4e,$75
	jsr (sub_2021e4).l
	bsr.w sub_202080
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
	jsr (sub_202200).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e88
	bra.w loc_2024d8
	.incbin 7788, 16
	bsr.w sub_201f68
	cmpi.b #$1,($ff1903).l
	bne.s loc_201e9e
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201e9e:
	move.w ($f624).w,(a5)
	bra.w loc_2024d8
	dc.b $4e,$b9,$00,$20,$21,$e4,$61,$00
	dc.b $01,$d2
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
	jsr (sub_202200).l
	lea ($d000).w,a0
	bsr.w sub_205ce8
	tst.b ($f767).w
	beq.s loc_201f5a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f5a:
	tst.w ($f614).w
	beq.w loc_201f66
	subq.w #$1,($f614).w
loc_201f66:
	rts

sub_201f68:
	jsr (sub_2021e4).l
	bsr.w sub_202080
	tst.b ($f64e).w
	bne.s loc_201f9e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fc2
loc_201f9e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fc2:
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
	jmp (sub_202200).l
	dc.b $4e,$73

sub_202012:
	tst.b ($d02a).w
	bne.s loc_202022
	tst.w ($f786).w
	beq.s loc_202022
	addq.w #$1,($f786).w
loc_202022:
	rts

sub_202024:
	tst.w ($f780).w
	beq.s loc_20202e
	addq.w #$1,($f780).w
loc_20202e:
	tst.w ($f782).w
	beq.s loc_202038
	addq.w #$1,($f782).w
loc_202038:
	rts
	.incbin 8250, 42

sub_202064:
	bsr.w sub_2021e4
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202200

sub_202080:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20208e
	addq.w #$2,a1

sub_20208e:
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

sub_2020bc:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202138).l,a2
	moveq #$12,d7
loc_2020d0:
	move.w (a2)+,(a0)
	dbf d7,loc_2020d0
	move.w (dat_20213a).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2020f6:
	move.w d0,(a1)
	dbf d7,loc_2020f6
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202128:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202128
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202138:
	dc.b $80,$04
dat_20213a:
	.incbin 8506, 36

sub_20215e:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202180:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202180
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021ae:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021ae
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021cc:
	move.l d0,(a1)+
	dbf d1,loc_2021cc
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2021dc:
	move.l d0,(a1)+
	dbf d1,loc_2021dc
	rts

sub_2021e4:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2021f4:
	btst.b #$0,($a11100).l
	bne.s loc_2021f4
	rts

sub_202200:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8718, 62

sub_20224c:
	tst.b ($f00a).w
	bne.s loc_202258
	move.b d0,($f00a).w
	rts
loc_202258:
	tst.b ($f00b).w
	bne.s loc_202264
	move.b d0,($f00b).w
	rts
loc_202264:
	tst.b ($f00c).w
	bne.s loc_20226e
	move.b d0,($f00c).w
loc_20226e:
	rts

sub_202270:
	jsr (sub_2021e4).l
	tst.b ($f00a).w
	beq.s loc_20228a
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20228a:
	tst.b ($f00b).w
	beq.s loc_20229e
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20229e:
	tst.b ($f00c).w
	beq.s loc_2022b2
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022b2:
	bra.w sub_202200
	.incbin 8886, 32

sub_2022d6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202398).l,a3
	lea ($c00000).l,a4
	bra.s loc_2022f2

sub_2022e8:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023ae).l,a3
loc_2022f2:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202300
	adda.w #$a,a3
loc_202300:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023c4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202320
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202320:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20236c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202348
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202348:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202356:
	lsr.w #$4,d0
loc_202358:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202366
	jmp (a3)

sub_202362:
	moveq #$0,d4
	moveq #$8,d3
loc_202366:
	dbf d0,loc_202358
	bra.s sub_202320
loc_20236c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20237a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20237a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202356
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202356
loc_202398:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202362
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202362
	rts
dat_2023ae:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202362
	rts

sub_2023c4:
	move.b (a0)+,d0
loc_2023c6:
	cmpi.b #$ff,d0
	bne.s loc_2023ce
	rts
loc_2023ce:
	move.w d0,d7
loc_2023d0:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023c6
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
	bne.s loc_2023fe
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2023d0
loc_2023fe:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20240a:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20240a
	bra.s loc_2023d0

sub_202416:
	movem.l a1-a2,-(a7)
	lea (dat_20fe72).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20242e:
	tst.l (a2)
	beq.s loc_202436
	addq.w #$6,a2
	bra.s loc_20242e
loc_202436:
	move.w (a1)+,d0
	bmi.s loc_202442
loc_20243a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20243a
loc_202442:
	movem.l (a7)+,a1-a2
	rts
	movem.l a1-a2,-(a7)
	lea (dat_20fe72).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202474
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20246e
loc_202466:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202466
loc_20246e:
	movem.l (a7)+,a1-a2
	rts

sub_202474:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20247a:
	clr.l (a2)+
	dbf d0,loc_20247a
	rts

sub_202482:
	tst.l ($f680).w
	beq.s loc_2024d6
	tst.w ($f6f8).w
	bne.s loc_2024d6
	movea.l ($f680).w,a0
	lea (loc_202398).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024a4
	adda.w #$a,a3
loc_2024a4:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023c4
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
loc_2024d6:
	rts
loc_2024d8:
	tst.w ($f6f8).w
	beq.w loc_202576
loc_2024e0:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202512

sub_2024f4:
	tst.w ($f6f8).w
	beq.s loc_202576
	tst.b ($f744).w
	bne.s loc_2024e0
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202512:
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
loc_202546:
	movea.w #$8,a5
	bsr.w sub_202362
	subq.w #$1,($f6f8).w
	beq.s loc_202578
	subq.w #$1,($f6fa).w
	bne.s loc_202546
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202576:
	rts
loc_202578:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20257e:
	move.l $6(a0),(a0)+
	dbf d0,loc_20257e
	rts

sub_202588:
	lea (dat_20fe72).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20259a:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2022d6
	dbf d1,loc_20259a
	rts
	.incbin 9658, 560

sub_2027ea:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202846).l,a0
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
	bra.w loc_202872
dat_202846:
	dc.b $00,$04,$00,$00,$23,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202852:
	.incbin 10322, 32
loc_202872:
	tst.b ($ff1522).l
	beq.s loc_202892
	jsr (sub_206946).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202890
	moveq #$0,d0
loc_202890:
	bra.s loc_2028ce
loc_202892:
	lea (dat_20290a).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028b4
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202852).l,a1
	adda.w d0,a1
	bra.s loc_2028be
loc_2028b4:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028be:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028ce:
	subi.w #$a0,d1
	bcc.s loc_2028d6
	moveq #$0,d1
loc_2028d6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2028e0
	move.w d2,d1
loc_2028e0:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2028ec
	moveq #$0,d0
loc_2028ec:
	cmp.w ($f72e).w,d0
	blt.s loc_2028f6
	move.w ($f72e).w,d0
loc_2028f6:
	move.w d0,($f704).w
	bsr.w sub_202912
	lea (dat_20290e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20290a:
	dc.b $00,$30,$01,$9c
dat_20290e:
	dc.b $7f,$7f,$7f,$7f

sub_202912:
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

sub_20293e:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_20294a
	rts
loc_20294a:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202afe
	bsr.w sub_202b9e
	bsr.w sub_203426
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e28
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202df4
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202dc0
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202d90
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
	bsr.w sub_202a78
	move.w ($f708).w,d0
	neg.w d0
	moveq #$d,d6
loc_2029ee:
	move.w d0,(a1)+
	dbf d6,loc_2029ee
	move.w ($f718).w,d0
	neg.w d0
	moveq #$1,d6
loc_2029fc:
	move.w d0,(a1)+
	dbf d6,loc_2029fc
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a0a:
	move.w d0,(a1)+
	dbf d6,loc_202a0a
	move.w ($f718).w,d0
	neg.w d0
	moveq #$b,d6
loc_202a18:
	move.w d0,(a1)+
	dbf d6,loc_202a18
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a26:
	move.w d0,(a1)+
	dbf d6,loc_202a26
	move.w ($f718).w,d0
	neg.w d0
	moveq #$b,d6
loc_202a34:
	move.w d0,(a1)+
	dbf d6,loc_202a34
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a42:
	move.w d0,(a1)+
	dbf d6,loc_202a42
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202abc
dat_202a66:
	.incbin 10854, 18

sub_202a78:
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
loc_202a9c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a66(pc,d6.w),d5
loc_202aa6:
	move.w d0,-(a1)
	dbf d5,loc_202aa6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a9c
	adda.w #$38,a1
	rts
loc_202abc:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202aca(pc,d2.w)
loc_202ac8:
	move.w (a2)+,d0
loc_202aca:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ac8
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
	dbf d1,loc_202ac8
	rts

sub_202afe:
	move.w ($f700).w,d4
	bsr.s sub_202b32
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b30
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b2a
	bset.b #$2,($f754).w
	rts
loc_202b2a:
	bset.b #$3,($f754).w
loc_202b30:
	rts

sub_202b32:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b44
	bcs.s loc_202b74
	bra.s loc_202b4a
loc_202b44:
	clr.w ($f73a).w
	rts
loc_202b4a:
	cmpi.w #$10,d0
	blt.s loc_202b54
	move.w #$10,d0
loc_202b54:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b62
	move.w ($f72a).w,d0
loc_202b62:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b74:
	cmpi.w #$fff0,d0
	bge.s loc_202b7e
	move.w #$fff0,d0
loc_202b7e:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b62
	move.w ($f728).w,d0
	bra.s loc_202b62
	.incbin 11150, 16

sub_202b9e:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202bb2
	subq.w #$5,d0
loc_202bb2:
	btst.b #$1,$22(a6)
	beq.s loc_202bd2
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c1e
	subi.w #$40,d0
	bcc.s loc_202c1e
	tst.b ($f75c).w
	bne.s loc_202c30
	bra.s loc_202bde
loc_202bd2:
	sub.w ($f73e).w,d0
	bne.s loc_202be4
	tst.b ($f75c).w
	bne.s loc_202c30
loc_202bde:
	clr.w ($f73c).w
	rts
loc_202be4:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c0c
	move.w $14(a6),d1
	bpl.s loc_202bf4
	neg.w d1
loc_202bf4:
	cmpi.w #$800,d1
	bcc.s loc_202c1e
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c7e
	cmpi.w #$fffa,d0
	blt.s loc_202c48
	bra.s loc_202c36
loc_202c0c:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c7e
	cmpi.w #$fffe,d0
	blt.s loc_202c48
	bra.s loc_202c36
loc_202c1e:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c7e
	cmpi.w #$fff0,d0
	blt.s loc_202c48
	bra.s loc_202c36
loc_202c30:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c36:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c88
	bra.w loc_202c54
loc_202c48:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c54:
	cmp.w ($f72c).w,d1
	bgt.s loc_202cac
	cmpi.w #$ff00,d1
	bgt.s loc_202c78
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cac
loc_202c78:
	move.w ($f72c).w,d1
	bra.s loc_202cac
loc_202c7e:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c88:
	cmp.w ($f72e).w,d1
	blt.s loc_202cac
	subi.w #$800,d1
	bcs.s loc_202ca8
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cac
loc_202ca8:
	move.w ($f72e).w,d1
loc_202cac:
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
	bne.s loc_202cee
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202ce8
	bset.b #$0,($f754).w
	rts
loc_202ce8:
	bset.b #$1,($f754).w
loc_202cee:
	rts
	.incbin 11504, 160

sub_202d90:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dbe
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202db8
	bset.b #$0,($f756).w
	rts
loc_202db8:
	bset.b #$1,($f756).w
loc_202dbe:
	rts

sub_202dc0:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202df2
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202dec
	bset.b d6,($f756).w
	bra.s loc_202df2
loc_202dec:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202df2:
	rts

sub_202df4:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e26
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e20
	bset.b d6,($f758).w
	bra.s loc_202e26
loc_202e20:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e26:
	rts

sub_202e28:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e5a
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e54
	bset.b d6,($f75a).w
	bra.s loc_202e5a
loc_202e54:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e5a:
	rts
	.incbin 11868, 44

sub_202e88:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f46
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20302c
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20302e
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f44
	bclr.b #$0,(a2)
	beq.s loc_202efa
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20325a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203030
loc_202efa:
	bclr.b #$1,(a2)
	beq.s loc_202f14
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20325a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203030
loc_202f14:
	bclr.b #$2,(a2)
	beq.s loc_202f2a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20325a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203086
loc_202f2a:
	bclr.b #$3,(a2)
	beq.s loc_202f44
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20325a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203086
loc_202f44:
	rts

sub_202f46:
	lea (dat_203312).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f62
	bclr.b #$1,(a2)
	beq.s loc_202fac
	move.w #$e0,d4
loc_202f62:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fdc(pc,d0.w),a3
	beq.s loc_202f94
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20325a
	movem.l (a7)+,d4-d5
	bsr.w sub_203030
	movea.l (a7)+,a0
	bra.s loc_202fac
loc_202f94:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20325c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20305c
	movea.l (a7)+,a0
loc_202fac:
	tst.b (a2)
	bne.s loc_202fb2
	rts
loc_202fb2:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fc6
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fc6:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fec
dat_202fdc:
	.incbin 12252, 16
loc_202fec:
	moveq #$f,d6
	move.l #$800000,d7
loc_202ff4:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203020
	btst.b d0,(a2)
	beq.s loc_203020
	add.w d0,d0
	movea.l dat_202fdc(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203132
	movem.l (a7)+,d4-d5
	bsr.w sub_20325a
	bsr.w sub_2030b4
	movem.l (a7)+,d4-d5/a0
loc_203020:
	addi.w #$10,d4
	dbf d6,loc_202ff4
	clr.b (a2)
	rts

sub_20302c:
	rts

sub_20302e:
	rts

sub_203030:
	moveq #$15,d6

sub_203032:
	move.l #$800000,d7
	move.l d0,d1
loc_20303a:
	movem.l d4-d5,-(a7)
	bsr.w sub_203132
	move.l d1,d0
	bsr.w sub_2030b4
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20303a
	rts

sub_20305c:
	move.l #$800000,d7
	move.l d0,d1
loc_203064:
	movem.l d4-d5,-(a7)
	bsr.w sub_203134
	move.l d1,d0
	bsr.w sub_2030b4
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203064
	rts

sub_203086:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203090:
	movem.l d4-d5,-(a7)
	bsr.w sub_203132
	move.l d1,d0
	bsr.w sub_2030b4
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203090
	rts

sub_2030b4:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030f0
	btst.b #$3,(a0)
	bne.s loc_2030d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030d0:
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
loc_2030f0:
	btst.b #$3,(a0)
	bne.s loc_203112
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
loc_203112:
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

sub_203132:
	add.w (a3),d5

sub_203134:
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
	beq.s loc_203182
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
loc_203182:
	rts
	.incbin 12676, 214

sub_20325a:
	add.w (a3),d5

sub_20325c:
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
	.incbin 12918, 28

sub_203292:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032bc
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032e4

sub_2032bc:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032c0:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20325a
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203032
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032c0
	rts
loc_2032e4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032e8:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203312).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203354
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032e8
	rts
dat_203312:
	.incbin 13074, 50
dat_203344:
	.incbin 13124, 16

sub_203354:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203344(pc,d0.w),a3
	beq.s loc_203376
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20325a
	movem.l (a7)+,d4-d5
	bsr.w sub_203030
	bra.s loc_20338a
loc_203376:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20325c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20305c
loc_20338a:
	rts

sub_20338c:
	moveq #$0,d0
	lea (dat_20fe62).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2022e8
	movea.l (a2)+,a0
	bsr.w sub_2033d8
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20050e
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2033d6
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033d6
	bsr.w sub_202416
loc_2033d6:
	rts

sub_2033d8:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033e2:
	move.l d0,(a3)+
	dbf d1,loc_2033e2
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033f8
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033f8:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b16).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203412:
	move.w d1,d0
	movea.l a3,a0
loc_203416:
	move.b (a1)+,(a0)+
	dbf d0,loc_203416
	lea $80(a3),a3
	dbf d2,loc_203412
	rts

sub_203426:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2034a0(pc,d0.w),d0
	jsr dat_2034a0(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20344c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20344c:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20347a
	bcc.s loc_20347c
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203470
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203470:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20347a:
	rts
loc_20347c:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203494
	btst.b #$1,($d022).w
	beq.s loc_203494
	add.w d1,d1
	add.w d1,d1
loc_203494:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2034a0:
	.incbin 13472, 224
	btst.b #$4,($f7a7).w
	bne.s loc_203590
	move.w #$710,($f726).w
	rts
loc_203590:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_20374c
	bne.w loc_2035dc
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_2035c0
	cmpi.w #$498,$c(a1)
	ble.s loc_2035ba
	move.w #$5d0,d0
	bra.s loc_2035c4
loc_2035ba:
	move.w #$3d0,d0
	bra.s loc_2035c4
loc_2035c0:
	move.w #$1d0,d0
loc_2035c4:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_2035d2
	neg.w d0
loc_2035d2:
	cmpi.w #$2,d0
	bgt.s loc_2035dc
	move.w d1,($f72e).w
loc_2035dc:
	rts
	.incbin 13790, 140
	rts
	.incbin 13932, 224

sub_20374c:
	cmp.w ($d008).w,d0
	ble.s loc_203756
	moveq #$0,d0
	rts
loc_203756:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203762
	neg.w d1
loc_203762:
	cmpi.w #$4,d1
	bge.s loc_20376e
	move.w ($f726).w,($f72e).w
loc_20376e:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_20378e
	cmp.w ($f72a).w,d0
	ble.s loc_203786
	move.w ($f72a).w,d0
loc_203786:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_20378e:
	moveq #$1,d0
	rts

sub_203792:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20379a:
	move.b (a0),d0
	beq.s loc_2037b0
	add.w d0,d0
	add.w d0,d0
	lea (dat_203bb4).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2037b0:
	lea $40(a0),a0
	dbf d7,loc_20379a
	rts

sub_2037ba:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037f8
	bpl.s loc_2037ea
	btst.b #$1,$2c(a0)
	beq.s loc_2037ea
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037f8
loc_2037ea:
	btst.b #$2,$2c(a0)
	bne.s loc_2037f8
	addi.w #$38,$12(a0)
loc_2037f8:
	tst.w $12(a0)
	bmi.s loc_20380c
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20380c
	move.w #$1000,$12(a0)
loc_20380c:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20381c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203858
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203858
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203856
	neg.w d1
loc_203856:
	add.w d1,d0
loc_203858:
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

sub_203872:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038e2
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038fe
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038fe
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038bc
	cmpi.w #$800,d3
	bcs.s loc_2038ce
	subi.w #$800,d3
	bra.s loc_2038ce
loc_2038bc:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038ce
	cmpi.w #$100,d3
	bcc.s loc_2038ce
	addi.w #$800,d3
loc_2038ce:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038fe
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038fe
loc_2038e2:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038fe
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038fe:
	rts
	.incbin 14592, 30

sub_20391e:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203924:
	move.l d1,(a1)+
	dbf d0,loc_203924
	rts
dat_20392c:
	.incbin 14636, 16

sub_20393c:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203948:
	tst.w (a4)
	beq.w loc_203a08
	moveq #$2,d6
loc_203950:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a00
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039b6
	movea.l dat_20392c(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_20399a
	cmpi.w #$800,d2
	bcs.s loc_2039ac
	subi.w #$800,d2
	bra.s loc_2039ac
loc_20399a:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2039ac
	cmpi.w #$100,d2
	bcc.s loc_2039ac
	addi.w #$800,d2
loc_2039ac:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039d8
loc_2039b6:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039d8
	.incbin 14784, 24
loc_2039d8:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039f6
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039fa
loc_2039f6:
	bsr.w sub_203a2a
loc_2039fa:
	bset.b #$7,$1(a0)
loc_203a00:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203950
loc_203a08:
	lea $80(a4),a4
	dbf d7,loc_203948
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a22
	move.l #$0,(a2)
	rts
loc_203a22:
	move.b #$0,-$5(a2)
	rts

sub_203a2a:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a70
	btst.l #$1,d4
	bne.w loc_203abe
loc_203a3c:
	cmpi.b #$50,d5
	beq.s loc_203a6e
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
	bne.s loc_203a68
	addq.w #$1,d0
loc_203a68:
	move.w d0,(a2)+
	dbf d1,loc_203a3c
loc_203a6e:
	rts
loc_203a70:
	btst.l #$1,d4
	bne.w loc_203b04
loc_203a78:
	cmpi.b #$50,d5
	beq.s loc_203abc
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
	bne.s loc_203ab6
	addq.w #$1,d0
loc_203ab6:
	move.w d0,(a2)+
	dbf d1,loc_203a78
loc_203abc:
	rts
loc_203abe:
	cmpi.b #$50,d5
	beq.s loc_203b02
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
	bne.s loc_203afc
	addq.w #$1,d0
loc_203afc:
	move.w d0,(a2)+
	dbf d1,loc_203abe
loc_203b02:
	rts
loc_203b04:
	cmpi.b #$50,d5
	beq.s loc_203b56
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
	bne.s loc_203b50
	addq.w #$1,d0
loc_203b50:
	move.w d0,(a2)+
	dbf d1,loc_203b04
loc_203b56:
	rts
	.incbin 15192, 92
dat_203bb4:
	.incbin 15284, 246

sub_203caa:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cbc
	move.w #$0,(a1)
	rts
loc_203cbc:
	tst.w (a1)
	bne.s loc_203cc6
	move.b #$1,$1(a1)
loc_203cc6:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d10
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d02
	neg.w $10(a0)
loc_203d02:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205dbc
loc_203d10:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d2e
	cmpa.w #$d040,a0
	beq.s loc_203d2e
	tst.b ($ff1906).l
	beq.s loc_203d2e
	jmp (loc_207272).l
loc_203d2e:
	move.b $2a(a0),d0
	beq.s loc_203d58
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d4a
	cmpi.b #$2d,d0
	bcs.s loc_203d54
	move.b #$2d,d0
	bra.s loc_203d54
loc_203d4a:
	cmpi.b #$1e,d0
	bcs.s loc_203d54
	move.b #$1e,d0
loc_203d54:
	move.b d0,$2a(a0)
loc_203d58:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d66(pc,d0.w),d1
	jmp dat_203d66(pc,d1.w)
dat_203d66:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203d70:
	tst.b ($d300).w
	bne.s loc_203dae
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203dae:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dd6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dd6:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e0a:
	tst.b ($ff1506).l
	bne.s loc_203e70
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203e70
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203eea
	cmpi.b #$2f,d1
	bne.s loc_203e72
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e70
	tst.b $2c(a0)
	beq.s loc_203e70
	jsr (sub_2078ba).l
	bne.s loc_203e70
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e68
	moveq #$0,d0
loc_203e68:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e70:
	rts
loc_203e72:
	rts
	.incbin 15988, 118

sub_203eea:
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

sub_203f10:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f8e
	cmpi.b #$4,$24(a0)
	bcc.s loc_203f8e
	btst.b #$3,$2c(a0)
	bne.s loc_203f8e
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_203f8e
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203f5a
	neg.w d0
loc_203f5a:
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
loc_203f8e:
	rts

sub_203f90:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20402c
	cmpi.b #$2,($ff1522).l
	beq.w loc_20402c
	btst.b #$0,$2c(a0)
	bne.s loc_20402c
	btst.b #$2,$2c(a0)
	bne.s loc_20402c
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20402c
	move.w ($f786).w,d0
	beq.s loc_203fee
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_203fee
	clr.b ($f784).w
loc_203fee:
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
loc_20402c:
	rts

sub_20402e:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20408c
	cmpi.b #$4,$24(a0)
	bcc.s loc_20408c
	tst.b ($ff1521).l
	bne.s loc_20408c
	tst.b ($ff151f).l
	bne.s loc_20408c
	tst.w $30(a0)
	bne.s loc_20408c
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_20408c
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_20408e(pc,d0.w),d0
	lea dat_20408e(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_204080:
	move.w (a3)+,d1
	bmi.s loc_20408c
	cmp.w d1,d0
	bne.s loc_204080
	bra.w loc_207014
loc_20408c:
	rts
dat_20408e:
	.incbin 16526, 32

sub_2040ae:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204168
	tst.b ($ff1521).l
	bne.w loc_204168
	tst.b ($ff151f).l
	bne.w loc_204168
	cmpi.w #$980,$8(a0)
	bcs.s loc_2040de
	cmpi.w #$a20,$8(a0)
	bcs.w loc_204168
loc_2040de:
	btst.b #$7,($f7a7).w
	bne.w loc_204168
	tst.w $30(a0)
	bne.s loc_204168
	cmpi.b #$2,($ff1507).l
	bne.s loc_204112
	cmpi.w #$a10,$8(a0)
	bcs.s loc_20412a
	tst.b ($ff1958).l
	beq.s loc_204168
	tst.b ($ff156a).l
	bne.s loc_204124
	bra.s loc_20412a
loc_204112:
	cmpi.b #$2,($ff152e).l
	bne.s loc_20412a
	tst.b ($ff156a).l
	beq.s loc_20412a
loc_204124:
	tst.b ($f668).w
	beq.s loc_204168
loc_20412a:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_20416a).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_20415e
	tst.b ($ff156a).l
	bne.s loc_20415e
	lea (dat_204170).l,a1
loc_20415e:
	cmp.w (a1)+,d0
	beq.w loc_207014
	dbf d6,loc_20415e
loc_204168:
	rts
dat_20416a:
	dc.b $02,$43,$02,$44,$02,$45
dat_204170:
	dc.b $02,$87,$02,$88,$02,$89

sub_204176:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204246
	tst.b ($f7a7).w
	bne.w loc_204246
	cmpi.b #$2,($ff152e).l
	bcc.s loc_2041aa
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_2041a2
	addi.b #$1e,d0
loc_2041a2:
	cmp.b ($f7b3).w,d0
	beq.w loc_204246
loc_2041aa:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_204202
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_204246
loc_204202:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_204246
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_20224c).l
loc_204246:
	rts

sub_204248:
	rts
	.incbin 16970, 80
	bsr.s sub_204248
	bsr.w sub_203e0a
	tst.w ($ff1588).l
	beq.s loc_2042ba
	btst.b #$4,($f605).w
	beq.s loc_2042ba
	move.b #$1,($ff1906).l
	rts
loc_2042ba:
	tst.b ($f7cc).w
	bne.s loc_2042c6
	move.w ($f604).w,($f602).w
loc_2042c6:
	btst.b #$0,$2c(a0)
	beq.s loc_2042d4
	bsr.w sub_2044ee
	bra.s loc_2042fa
loc_2042d4:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20432a(pc,d0.w),d1
	jsr dat_20432a(pc,d1.w)
	bsr.w sub_204176
	bsr.w sub_2040ae
	bsr.w sub_20402e
	bsr.w sub_203f90
	bsr.w sub_203f10
loc_2042fa:
	bsr.s sub_204338
	bsr.w sub_2043f8
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_2057b2
	tst.b $2c(a0)
	bmi.s loc_204324
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204324
	jsr (sub_206e16).l
loc_204324:
	bsr.w sub_205676
	rts
dat_20432a:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_204338:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20435c
	move.w $30(a0),d0
	beq.s loc_20434e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20435c
loc_20434e:
	btst.b #$6,$2c(a0)
	bne.s loc_20435c
	jsr (sub_203872).l
loc_20435c:
	tst.b ($ff151f).l
	beq.s loc_2043a0
	tst.w $32(a0)
	beq.s loc_2043a0
	subq.w #$1,$32(a0)
	bne.s loc_2043a0
	tst.b ($ff1520).l
	bne.s loc_204398
	tst.b ($ff1958).l
	bne.s loc_204398
	tst.b ($ff152e).l
	bne.s loc_204392
	move.w #$e,d0
	jsr (sub_205dbc).l
loc_204392:
	jsr (sub_201a40).l
loc_204398:
	move.b #$0,($ff151f).l
loc_2043a0:
	tst.b ($ff1520).l
	beq.s loc_2043f6
	tst.w $34(a0)
	beq.s loc_2043f6
	subq.w #$1,$34(a0)
	bne.s loc_2043f6
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2043ee
	tst.b ($ff1958).l
	bne.s loc_2043ee
	tst.b ($ff152e).l
	bne.s loc_2043e8
	move.w #$e,d0
	jsr (sub_205dbc).l
loc_2043e8:
	jsr (sub_201a40).l
loc_2043ee:
	move.b #$0,($ff1520).l
loc_2043f6:
	rts

sub_2043f8:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_204414:
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
	bcs.s loc_2044e6
	move.l #$50000,d0
loc_2044e6:
	move.l d0,($ff1570).l
	rts

sub_2044ee:
	tst.b $2a(a0)
	bne.w loc_2045ac
	tst.b ($f784).w
	beq.w loc_2045ac
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20450c
	neg.w d0
loc_20450c:
	tst.w ($f786).w
	bne.s loc_204518
	move.w #$1,($f786).w
loc_204518:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20452e
	move.b #$1,($ff1502).l
	bra.w loc_205db8
loc_20452e:
	cmpi.w #$d2,d1
	bcs.s loc_204582
	cmpi.b #$2,($ff1522).l
	beq.s loc_204580
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204558
	move.w #$82,d0
	jsr (sub_205dbc).l
	moveq #$0,d0
loc_204558:
	add.b ($f784).w,d0
	bpl.s loc_204562
	moveq #$0,d0
	bra.s loc_20456a
loc_204562:
	cmpi.b #$3,d0
	bcs.s loc_20456a
	moveq #$2,d0
loc_20456a:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204414
	move.b #$2,($ff1522).l
loc_204580:
	rts
loc_204582:
	cmpi.w #$5a,d1
	bcc.s loc_20459a
	cmp.w d2,d0
	bcc.w loc_203d70
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20459a:
	cmp.w d2,d0
	bcc.s loc_2045ac
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2045ac:
	rts
	tst.b ($f75f).w
	beq.s loc_2045c0
	cmpi.b #$5,$1c(a0)
	bne.s loc_20461a
	clr.b ($f75f).w
loc_2045c0:
	bsr.w sub_203caa
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045f0
	tst.b ($ff195b).l
	beq.s loc_2045de
	cmpi.b #$79,$1a(a0)
	bne.s loc_20461a
	bra.s loc_2045e6
loc_2045de:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20461a
loc_2045e6:
	bsr.w sub_204fae
	jmp (sub_2037ba).l
loc_2045f0:
	bsr.w sub_204824
	bsr.w sub_2044ee
	bsr.w sub_20508c
	bsr.w sub_2051a6
	bsr.w sub_20489a
	bsr.w sub_20501a
	bsr.w sub_204fae
	jsr (sub_20381c).l
	bsr.w sub_200b50
	bsr.w sub_205224
loc_20461a:
	rts
	tst.w $12(a0)
	bmi.s loc_204630
	cmpi.b #$2c,$1c(a0)
	beq.s loc_204630
	move.b #$0,$1c(a0)
loc_204630:
	btst.b #$2,$2c(a0)
	beq.s loc_20463e
	bsr.w sub_204790
	bra.s loc_20466a
loc_20463e:
	bsr.w sub_204824
	bsr.w sub_2044ee
	bsr.w sub_205172
	bsr.w sub_204eda
	bsr.w sub_204fae
	jsr (sub_2037ba).l
	btst.b #$6,$22(a0)
	beq.s loc_204666
	subi.w #$28,$12(a0)
loc_204666:
	bsr.w sub_205266
loc_20466a:
	bsr.w sub_20528a
	rts
	bsr.w sub_204824
	bsr.w sub_2044ee
	bsr.w sub_20508c
	bsr.w sub_2051e2
	bsr.w sub_204d22
	bsr.w sub_204fae
	tst.b $2a(a0)
	bne.s loc_204694
	jsr (sub_20381c).l
loc_204694:
	bsr.w sub_200b50
	bsr.w sub_205224
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_2046b0
	bsr.w sub_2046f4
	bsr.w sub_2044ee
	bra.s loc_2046ee
loc_2046b0:
	btst.b #$2,$2c(a0)
	beq.s loc_2046c2
	bsr.w sub_204790
	bsr.w sub_2044ee
	bra.s loc_2046ee
loc_2046c2:
	bsr.w sub_204824
	bsr.w sub_2044ee
	bsr.w sub_205172
	bsr.w sub_204eda
	bsr.w sub_204fae
	jsr (sub_2037ba).l
	btst.b #$6,$22(a0)
	beq.s loc_2046ea
	subi.w #$28,$12(a0)
loc_2046ea:
	bsr.w sub_205266
loc_2046ee:
	bsr.w sub_20528a
	rts

sub_2046f4:
	btst.b #$4,$2c(a0)
	beq.s loc_204728
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_204738
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_204716
	neg.w $10(a0)
loc_204716:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_204728:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204738
	bset.b #$4,$2c(a0)
loc_204738:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_20474e
	andi.w #$7fff,$2(a0)
loc_20474e:
	jsr (sub_200750).l
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
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_20478e
	neg.w $12(a0)
loc_20478e:
	rts

sub_204790:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200ebe).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_2047b8
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047d2
loc_2047b8:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_2047d2:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_2047ec
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_204800
loc_2047ec:
	btst.b #$3,($f602).w
	beq.s loc_204822
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_204800:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_204822
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_204822
	move.b #$0,$1b(a0)
loc_204822:
	rts

sub_204824:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204890
	tst.w ($ff1506).l
	bne.s loc_204890
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204892).l,a2
loc_204858:
	move.b (a2)+,d0
	bmi.s loc_204868
	cmp.b d0,d1
	bne.s loc_204858
	bset.b #$1,$2c(a0)
	rts
loc_204868:
	bclr.b #$1,$2c(a0)
	beq.s loc_204890
	tst.w $12(a0)
	bpl.s loc_204890
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204890
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204890
	neg.w $10(a0)
loc_204890:
	rts
dat_204892:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_20489a:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204bac
	tst.w $3e(a0)
	bne.w loc_204b5c
	btst.b #$2,($f602).w
	beq.s loc_2048c2
	bsr.w sub_204c3c
loc_2048c2:
	btst.b #$3,($f602).w
	beq.s loc_2048ce
	bsr.w sub_204cb2
loc_2048ce:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204b5c
	tst.w $14(a0)
	beq.s loc_2048ee
	tst.b $2a(a0)
	beq.w loc_204b5c
	bra.s loc_2048fa
loc_2048ee:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2048fa:
	btst.b #$3,$22(a0)
	beq.s loc_20494a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_20498c
	cmpi.b #$1e,$0(a1)
	bne.s loc_20492a
	move.b #$0,$1c(a0)
	bra.w loc_204b5c
loc_20492a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204970
	cmp.w d2,d1
	bge.s loc_20495e
	bra.s loc_20498c
loc_20494a:
	jsr (sub_206b7a).l
	cmpi.w #$c,d1
	blt.s loc_20498c
	cmpi.b #$3,$36(a0)
	bne.s loc_204968
loc_20495e:
	btst.b #$0,$22(a0)
	bne.s loc_204978
	bra.s loc_204982
loc_204968:
	cmpi.b #$3,$37(a0)
	bne.s loc_20498c
loc_204970:
	btst.b #$0,$22(a0)
	bne.s loc_204982
loc_204978:
	move.b #$32,$1c(a0)
	bra.w loc_204b5c
loc_204982:
	move.b #$6,$1c(a0)
	bra.w loc_204b5c
loc_20498c:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2049a0
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2049a0:
	btst.b #$7,($f788).w
	bne.w loc_204aa4
	btst.b #$6,($f788).w
	bne.w loc_204ac4
	btst.b #$1,($f602).w
	bne.w loc_204ac4
	andi.b #$f,($f788).w
	beq.s loc_2049d8
	btst.b #$0,($f603).w
	beq.s loc_2049ec
	bset.b #$7,($f788).w
	bra.w loc_204b80
loc_2049d8:
	btst.b #$0,($f603).w
	beq.w loc_2049ec
	move.b #$1,($f788).w
	bra.w loc_204b80
loc_2049ec:
	btst.b #$0,($f602).w
	beq.s loc_204a68
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204a4a
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a1c
	asr.w #$1,d2
	sub.w d2,d1
loc_204a1c:
	btst.b #$0,$22(a0)
	beq.s loc_204a28
	neg.w d0
	neg.w d1
loc_204a28:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a3e
	cmp.w d0,d1
	ble.s loc_204a44
	bra.s loc_204a42
loc_204a3e:
	cmp.w d1,d0
	ble.s loc_204a44
loc_204a42:
	move.w d1,d0
loc_204a44:
	move.w d0,$14(a0)
	rts
loc_204a4a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a64
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20224c).l
loc_204a64:
	bra.w loc_204b80
loc_204a68:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204a88
	move.w #$ab,d0
	jsr (sub_20224c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ac4
loc_204a88:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20224c).l
	bra.w loc_204b5c
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204aa4:
	btst.b #$0,($f602).w
	beq.s loc_204ac4
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204b80
	addq.w #$2,($f73e).w
	bra.w loc_204b80
loc_204ac4:
	btst.b #$6,($f788).w
	bne.w loc_204b40
	andi.b #$f,($f788).w
	beq.s loc_204ae8
	btst.b #$1,($f603).w
	beq.s loc_204afa
	bset.b #$6,($f788).w
	bra.w loc_204b80
loc_204ae8:
	btst.b #$1,($f603).w
	beq.s loc_204afa
	move.b #$1,($f788).w
	bra.w loc_204b80
loc_204afa:
	btst.b #$1,($f602).w
	beq.s loc_204b5c
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204b3e
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b3e
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204b30
	neg.w $14(a0)
loc_204b30:
	move.w #$9c,d0
	jsr (sub_20224c).l
	bsr.w sub_205042
loc_204b3e:
	bra.s loc_204b80
loc_204b40:
	btst.b #$1,($f602).w
	beq.s loc_204b5c
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204b80
	subq.w #$2,($f73e).w
	bra.s loc_204b80
loc_204b5c:
	cmpi.w #$60,($f73e).w
	bne.s loc_204b76
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204b80
	move.b #$0,($f788).w
	bra.s loc_204b80
loc_204b76:
	bcc.s loc_204b7c
	addq.w #$4,($f73e).w
loc_204b7c:
	subq.w #$2,($f73e).w
loc_204b80:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204bac
	move.w $14(a0),d0
	beq.s loc_204bac
	bmi.s loc_204ba0
	sub.w d5,d0
	bcc.s loc_204b9a
	move.w #$0,d0
loc_204b9a:
	move.w d0,$14(a0)
	bra.s loc_204bac
loc_204ba0:
	add.w d5,d0
	bcc.s loc_204ba8
	move.w #$0,d0
loc_204ba8:
	move.w d0,$14(a0)
loc_204bac:
	move.b $26(a0),d0
	jsr (sub_200750).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204bca:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204c3a
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204c3a
	bmi.s loc_204be2
	neg.w d1
loc_204be2:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206a3a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204c3a
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204c36
	cmpi.b #$40,d0
	beq.s loc_204c24
	cmpi.b #$80,d0
	beq.s loc_204c1e
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c1e:
	sub.w d1,$12(a0)
	rts
loc_204c24:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c36:
	add.w d1,$12(a0)
loc_204c3a:
	rts

sub_204c3c:
	tst.b $2a(a0)
	bne.s loc_204cb0
	move.w $14(a0),d0
	beq.s loc_204c4a
	bpl.s loc_204c7a
loc_204c4a:
	bset.b #$0,$22(a0)
	bne.s loc_204c5e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c5e:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204c6e
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204c6e
	move.w d1,d0
loc_204c6e:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c7a:
	sub.w d4,d0
	bcc.s loc_204c82
	move.w #$ff80,d0
loc_204c82:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204cb0
	cmpi.w #$400,d0
	blt.s loc_204cb0
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20224c).l
loc_204cb0:
	rts

sub_204cb2:
	tst.b $2a(a0)
	bne.s loc_204d20
	move.w $14(a0),d0
	bmi.s loc_204cea
	bclr.b #$0,$22(a0)
	beq.s loc_204cd2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cd2:
	cmp.w d6,d0
	bge.s loc_204cde
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204cde
	move.w d6,d0
loc_204cde:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204cea:
	add.w d4,d0
	bcc.s loc_204cf2
	move.w #$80,d0
loc_204cf2:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d20
	cmpi.w #$fc00,d0
	bgt.s loc_204d20
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20224c).l
loc_204d20:
	rts

sub_204d22:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204e5e
	tst.w $3e(a0)
	bne.s loc_204d5a
	btst.b #$2,($f602).w
	beq.s loc_204d4e
	bsr.w sub_204e94
loc_204d4e:
	btst.b #$3,($f602).w
	beq.s loc_204d5a
	bsr.w sub_204eb8
loc_204d5a:
	tst.b $2a(a0)
	beq.w loc_204e04
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204d7a
	asr.w #$1,d2
	sub.w d2,d1
loc_204d7a:
	btst.b #$0,$22(a0)
	beq.s loc_204d86
	neg.w d0
	neg.w d1
loc_204d86:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204d9c
	cmp.w d0,d1
	ble.s loc_204da2
	bra.s loc_204da0
loc_204d9c:
	cmp.w d1,d0
	ble.s loc_204da2
loc_204da0:
	move.w d1,d0
loc_204da2:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204dd6
	rts
loc_204db0:
	move.w #$ab,d0
	jsr (sub_20224c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204e2c
loc_204dd6:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204db0
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20224c).l
	btst.b #$0,$22(a0)
	bne.s loc_204dfc
	bsr.w sub_204eb8
	bra.s loc_204e04
loc_204dfc:
	bsr.w sub_204e94
	bra.s loc_204e04
	dc.b $4e,$75
loc_204e04:
	move.w $14(a0),d0
	beq.s loc_204e26
	bmi.s loc_204e1a
	sub.w d5,d0
	bcc.s loc_204e14
	move.w #$0,d0
loc_204e14:
	move.w d0,$14(a0)
	bra.s loc_204e26
loc_204e1a:
	add.w d5,d0
	bcc.s loc_204e22
	move.w #$0,d0
loc_204e22:
	move.w d0,$14(a0)
loc_204e26:
	tst.w $14(a0)
	bne.s loc_204e5e
loc_204e2c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e48
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204e58
loc_204e48:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204e58:
	move.b #$5,$1c(a0)
loc_204e5e:
	move.b $26(a0),d0
	jsr (sub_200750).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204e82
	move.w #$1000,d1
loc_204e82:
	cmpi.w #$f000,d1
	bge.s loc_204e8c
	move.w #$f000,d1
loc_204e8c:
	move.w d1,$10(a0)
	bra.w loc_204bca

sub_204e94:
	move.w $14(a0),d0
	beq.s loc_204e9c
	bpl.s loc_204eaa
loc_204e9c:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204eaa:
	sub.w d4,d0
	bcc.s loc_204eb2
	move.w #$ff80,d0
loc_204eb2:
	move.w d0,$14(a0)
	rts

sub_204eb8:
	move.w $14(a0),d0
	bmi.s loc_204ecc
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ecc:
	add.w d4,d0
	bcc.s loc_204ed4
	move.w #$80,d0
loc_204ed4:
	move.w d0,$14(a0)
	rts

sub_204eda:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204f08
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204f00
	cmpi.w #$840,$8(a0)
	bcs.s loc_204f38
loc_204f00:
	btst.b #$1,$2c(a0)
	bne.s loc_204f38
loc_204f08:
	btst.b #$2,($f602).w
	beq.s loc_204f22
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204f22
	move.w d1,d0
loc_204f22:
	btst.b #$3,($f602).w
	beq.s loc_204f38
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204f38
	move.w d6,d0
loc_204f38:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204f4e
	bcc.s loc_204f4a
	addq.w #$4,($f73e).w
loc_204f4a:
	subq.w #$2,($f73e).w
loc_204f4e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204f7c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204f7c
	bmi.s loc_204f70
	sub.w d1,d0
	bcc.s loc_204f6a
	move.w #$0,d0
loc_204f6a:
	move.w d0,$10(a0)
	rts
loc_204f70:
	sub.w d1,d0
	bcs.s loc_204f78
	move.w #$0,d0
loc_204f78:
	move.w d0,$10(a0)
loc_204f7c:
	rts
	.incbin 20350, 48

sub_204fae:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_205002
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204fdc
	addi.w #$38,d0
loc_204fdc:
	cmp.w d1,d0
	bls.s loc_205002
loc_204fe0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ff0
	rts
loc_204ff0:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2070be
	move.b #$6,$24(a0)
	rts
loc_205002:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204fe0

sub_20501a:
	tst.b ($f7ca).w
	bne.s loc_205040
	move.w $14(a0),d0
	bpl.s loc_205028
	neg.w d0
loc_205028:
	cmpi.w #$80,d0
	bcs.s loc_205040
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_205040
	btst.b #$1,($f602).w
	bne.s sub_205042
loc_205040:
	rts

sub_205042:
	btst.b #$2,$22(a0)
	beq.s loc_20504c
	rts
loc_20504c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205068
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205078
loc_205068:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205078:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_20508a
	move.w #$200,$14(a0)
loc_20508a:
	rts

sub_20508c:
	tst.b $2a(a0)
	beq.s loc_205094
	rts
loc_205094:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_2050a6
	tst.w $14(a0)
	beq.w loc_205168
loc_2050a6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205168
	btst.b #$3,$22(a0)
	beq.s loc_2050c2
	jsr (sub_205d4c).l
	beq.s loc_2050f2
loc_2050c2:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206aa4
	cmpi.w #$6,d1
	blt.w loc_205168
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_2050e8
	move.w #$380,d2
loc_2050e8:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_2050f2:
	jsr (sub_200750).l
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
	jsr (sub_20224c).l
	btst.b #$2,$22(a0)
	bne.s loc_20516a
	tst.b ($ff195b).l
	beq.s loc_20514c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_20515c
loc_20514c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_20515c:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205168:
	rts
loc_20516a:
	bset.b #$4,$22(a0)
	rts

sub_205172:
	tst.b $3c(a0)
	beq.s loc_2051a4
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205188
	move.w #$fe00,d1
loc_205188:
	cmp.w $12(a0),d1
	ble.s loc_2051a2
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_2051a2
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_2051a2:
	rts
loc_2051a4:
	rts

sub_2051a6:
	tst.b $2a(a0)
	bne.s loc_2051e0
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2051e0
	move.b $26(a0),d0
	jsr (sub_200750).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2051e0
	bmi.s loc_2051dc
	tst.w d0
	beq.s loc_2051da
	add.w d0,$14(a0)
loc_2051da:
	rts
loc_2051dc:
	add.w d0,$14(a0)
loc_2051e0:
	rts

sub_2051e2:
	tst.b $2a(a0)
	bne.s loc_205222
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205222
	move.b $26(a0),d0
	jsr (sub_200750).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205218
	tst.w d0
	bpl.s loc_205212
	asr.l #$2,d0
loc_205212:
	add.w d0,$14(a0)
	rts
loc_205218:
	tst.w d0
	bmi.s loc_20521e
	asr.l #$2,d0
loc_20521e:
	add.w d0,$14(a0)
loc_205222:
	rts

sub_205224:
	nop
	tst.b $38(a0)
	bne.s loc_20525e
	tst.w $3e(a0)
	bne.s loc_205260
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20525e
	move.w $14(a0),d0
	bpl.s loc_205248
	neg.w d0
loc_205248:
	cmpi.w #$280,d0
	bcc.s loc_20525e
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_20525e:
	rts
loc_205260:
	subq.w #$1,$3e(a0)
	rts

sub_205266:
	btst.b #$1,$2c(a0)
	bne.s loc_205288
	move.b $26(a0),d0
	beq.s loc_205288
	bpl.s loc_20527e
	addq.b #$2,d0
	bcc.s loc_20527c
	moveq #$0,d0
loc_20527c:
	bra.s loc_205284
loc_20527e:
	subq.b #$2,d0
	bcc.s loc_205284
	moveq #$0,d0
loc_205284:
	move.b d0,$26(a0)
loc_205288:
	rts

sub_20528a:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009e8).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20536e
	cmpi.b #$80,d0
	beq.w loc_2053d0
	cmpi.b #$c0,d0
	beq.w loc_20542c
	bsr.w sub_206dba
	tst.w d1
	bpl.s loc_2052dc
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052dc:
	bsr.w sub_206c1c
	tst.w d1
	bpl.s loc_2052ee
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052ee:
	bsr.w sub_206acc
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20536c
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20530c
	cmp.b d2,d0
	blt.s loc_20536c
loc_20530c:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20548e
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20534a
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20533c
	asr.w $12(a0)
	bra.s loc_20535e
loc_20533c:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20534a:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20535e
	move.w #$fc0,$12(a0)
loc_20535e:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20536c
	neg.w $14(a0)
loc_20536c:
	rts
loc_20536e:
	bsr.w sub_206dba
	tst.w d1
	bpl.s loc_205388
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205388:
	bsr.w sub_206c74
	tst.w d1
	bpl.s loc_2053a2
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2053a0
	move.w #$0,$12(a0)
loc_2053a0:
	rts
loc_2053a2:
	tst.w $12(a0)
	bmi.s loc_2053ce
	bsr.w sub_206acc
	tst.w d1
	bpl.s loc_2053ce
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20548e
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2053ce:
	rts
loc_2053d0:
	bsr.w sub_206dba
	tst.w d1
	bpl.s loc_2053e2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053e2:
	bsr.w sub_206c1c
	tst.w d1
	bpl.s loc_2053f4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053f4:
	bsr.w sub_206c74
	tst.w d1
	bpl.s loc_20542a
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205414
	move.w #$0,$12(a0)
	rts
loc_205414:
	move.b d3,$26(a0)
	bsr.w sub_2054f2
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20542a
	neg.w $14(a0)
loc_20542a:
	rts
loc_20542c:
	bsr.w sub_206c1c
	tst.w d1
	bpl.s loc_205446
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205446:
	bsr.w sub_206c74
	tst.w d1
	bpl.s loc_205460
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20545e
	move.w #$0,$12(a0)
loc_20545e:
	rts
loc_205460:
	tst.w $12(a0)
	bmi.s loc_20548c
	bsr.w sub_206acc
	tst.w d1
	bpl.s loc_20548c
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20548e
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20548c:
	rts

sub_20548e:
	btst.b #$4,$22(a0)
	beq.s loc_205498
	nop
loc_205498:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2054e4
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2054ce
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2054de
loc_2054ce:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2054de:
	move.b #$0,$1c(a0)
loc_2054e4:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2054f2:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_20381c).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20552c
	subi.w #$20,$12(a0)
loc_20552c:
	bsr.w sub_205542
	bsr.w sub_204fae
	bsr.w sub_2043f8
	bsr.w sub_2057b2
	jmp (sub_203872).l

sub_205542:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2070be
	bsr.w sub_20528a
	btst.b #$1,$22(a0)
	bne.s loc_20557c
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20557c:
	rts
	.incbin 21886, 248

sub_205676:
	rts
	.incbin 22136, 314

sub_2057b2:
	lea (dat_205aa2).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2057d4
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2057d4:
	bsr.w sub_205a44
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20584c
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20581a
	move.b d0,$1e(a0)

sub_2057fe:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205812
	bpl.s loc_205812
	cmpi.b #$fd,d0
	bge.s loc_20581c
loc_205812:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20581a:
	rts
loc_20581c:
	addq.b #$1,d0
	bne.s loc_20582c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205812
loc_20582c:
	addq.b #$1,d0
	bne.s loc_205840
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205812
loc_205840:
	addq.b #$1,d0
	bne.s loc_20584a
	move.b $2(a1,d1.w),$1c(a0)
loc_20584a:
	rts
loc_20584c:
	subq.b #$1,$1e(a0)
	bpl.s loc_20581a
	addq.b #$1,d0
	bne.w loc_205906
	tst.b ($ff195b).l
	bne.w loc_2059ce
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205874
	not.b d0
loc_205874:
	btst.b #$1,$2c(a0)
	bne.s loc_205882
	addi.b #$10,d0
	bra.s loc_205884
loc_205882:
	addq.b #$8,d0
loc_205884:
	bpl.s loc_205888
	moveq #$3,d1
loc_205888:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20597a
	move.w $14(a0),d2
	bpl.s loc_2058a6
	neg.w d2
loc_2058a6:
	btst.b #$1,$2c(a0)
	beq.s loc_2058be
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205ca4).l,a1
	bra.s loc_2058e8
loc_2058be:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c7e).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2058e8
	lea (dat_205b22).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058e8
	lea (dat_205b1a).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2058e8:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058f6
	moveq #$0,d2
loc_2058f6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2057fe
	add.b d3,$1a(a0)
	rts
loc_205906:
	addq.b #$1,d0
	bne.s loc_205976
	move.w $14(a0),d2
	bpl.s loc_205912
	neg.w d2
loc_205912:
	lea (dat_205c00).l,a1
	tst.b ($ff195b).l
	bne.s loc_205950
	lea (dat_205b32).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205944
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205950
	lea (dat_205cac).l,a1
	bra.s loc_205950
loc_205944:
	cmpi.w #$600,d2
	bcc.s loc_205950
	lea (dat_205b2a).l,a1
loc_205950:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20595a
	moveq #$0,d2
loc_20595a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057fe
loc_205976:
	addq.b #$1,d0
	bne.s loc_2059ba
loc_20597a:
	move.w $14(a0),d2
	bmi.s loc_205982
	neg.w d2
loc_205982:
	addi.w #$800,d2
	bpl.s loc_20598a
	moveq #$0,d2
loc_20598a:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205c12).l,a1
	tst.b ($ff195b).l
	bne.s loc_2059a4
	lea (dat_205b3a).l,a1
loc_2059a4:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057fe
loc_2059ba:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2059ce:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2059e0
	not.b d0
loc_2059e0:
	addi.b #$10,d0
	bpl.s loc_2059e8
	moveq #$0,d1
loc_2059e8:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205a16
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205906
loc_205a16:
	move.w $14(a0),d2
	bpl.s loc_205a1e
	neg.w d2
loc_205a1e:
	lea (dat_205bfa).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205a30
	lea (dat_205bf4).l,a1
loc_205a30:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a3a
	moveq #$0,d2
loc_205a3a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2057fe

sub_205a44:
	tst.b ($ff195b).l
	beq.s loc_205a50
	move.b dat_205a52(pc,d0.w),d0
loc_205a50:
	rts
dat_205a52:
	.incbin 23122, 80
dat_205aa2:
	.incbin 23202, 120
dat_205b1a:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b22:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b2a:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205b32:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b3a:
	.incbin 23354, 186
dat_205bf4:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205bfa:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205c00:
	.incbin 23552, 18
dat_205c12:
	.incbin 23570, 108
dat_205c7e:
	.incbin 23678, 38
dat_205ca4:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205cac:
	.incbin 23724, 60

sub_205ce8:
	tst.b (a0)
	beq.w loc_205d4a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205d4a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205d4a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205d1c:
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
loc_205d36:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205d36
	dbf d1,loc_205d1c
loc_205d4a:
	rts

sub_205d4c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205db6
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2009e8).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205da4
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205da4:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205db6:
	rts
loc_205db8:
	move.w #$e,d0

sub_205dbc:
	cmpi.w #$67,d0
	bne.s loc_205dca
	move.b #$1,($ff1958).l
loc_205dca:
	move.w d0,($a12010).l
loc_205dd0:
	move.w ($a12020).l,d0
	beq.s loc_205dd0
	cmp.w ($a12020).l,d0
	bne.s loc_205dd0
	move.w #$0,($a12010).l
loc_205de8:
	move.w ($a12020).l,d0
	bne.s loc_205de8
	move.w ($a12020).l,d0
	bne.s loc_205de8
	rts
	dc.b $00,$00

sub_205dfc:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205e18
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205e18:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e58
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e5a
loc_205e34:
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
loc_205e58:
	rts
loc_205e5a:
	addq.b #$1,d0
	bne.s loc_205e6a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e34
loc_205e6a:
	addq.b #$1,d0
	bne.s loc_205e7e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e34
loc_205e7e:
	addq.b #$1,d0
	bne.s loc_205e88
	move.b $2(a1,d1.w),$1c(a0)
loc_205e88:
	addq.b #$1,d0
	bne.s loc_205e90
	addq.b #$2,$24(a0)
loc_205e90:
	addq.b #$1,d0
	bne.s loc_205e9e
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205e9e:
	addq.b #$1,d0
	bne.s loc_205ea6
	addq.b #$2,$25(a0)
loc_205ea6:
	rts
	.incbin 24232, 654

sub_206136:
	tst.b $25(a0)
	bne.s loc_206166
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2078ba).l
	bne.s loc_206166
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206166:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206176(pc,d0.w),d0
	jmp dat_206176(pc,d0.w)
dat_206176:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_20619e
	andi.b #$7f,$2(a0)
loc_20619e:
	move.l #$23a596,$4(a0)
	bsr.s sub_206136
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2061cc
	move.w #$100,$1c(a0)
loc_2061cc:
	lea (dat_23a582).l,a1
	bsr.w sub_205dfc
	jmp (sub_203872).l
	tst.b $25(a0)
	beq.s loc_2061e8
	jmp (sub_20391e).l
loc_2061e8:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20620a(pc,d0.w),d0
	jsr dat_20620a(pc,d0.w)
	jmp (sub_203872).l
dat_20620a:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_206238
	andi.b #$7f,$2(a0)
loc_206238:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_20625e
	bsr.w sub_2062ca
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2062c0
loc_20625e:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206b7a).l
	tst.w d1
	bpl.s loc_2062bc
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_2062a6
	bsr.w sub_2062ca
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2062f0
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_2062a6:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2062c0
loc_2062bc:
	addq.w #$2,$c(a0)
loc_2062c0:
	lea (dat_2336bc).l,a1
	bra.w sub_205dfc

sub_2062ca:
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

sub_2062f0:
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
	bra.s loc_2062c0
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2062c0
	.incbin 25388, 500
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_206548
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_206548
	addq.b #$2,$24(a0)
loc_206548:
	rts
	.incbin 25930, 294

sub_206670:
	bclr.b #$7,($ff156b).l
	beq.s loc_2066be
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2066c0(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206694:
	move.l (a1)+,(a2)+
	dbf d0,loc_206694
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2066be:
	rts
dat_2066c0:
	.incbin 26304, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2066f6(pc,d0.w),d0
	jsr dat_2066f6(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2066f0
	jsr (sub_203872).l
loc_2066f0:
	jmp (loc_2078f0).l
dat_2066f6:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23a3aa,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2067d8
	cmpi.b #$6,$24(a1)
	bcc.w loc_2067d8
	bsr.w sub_20683c
	beq.w loc_2067d8
	tst.b $28(a0)
	bne.s loc_20678a
	move.w $10(a1),d0
	bpl.s loc_20674a
	neg.w d0
loc_20674a:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_20675c
	move.w #$d00,d1
loc_20675c:
	cmp.w d1,d0
	bcc.s loc_206762
	move.w d1,d0
loc_206762:
	tst.w $10(a1)
	bpl.s loc_20676a
	neg.w d0
loc_20676a:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2067ba
	neg.w $14(a1)
	bra.s loc_2067ba
loc_20678a:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2067da
	move.w $12(a1),d0
	bpl.s loc_20679a
	neg.w d0
loc_20679a:
	cmpi.w #$d00,d0
	bcc.s loc_2067a4
	move.w #$d00,d0
loc_2067a4:
	tst.w $12(a1)
	bpl.s loc_2067ac
	neg.w d0
loc_2067ac:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2067ba:
	bset.b #$2,$22(a1)
	bne.s loc_2067d8
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2067d8:
	rts
loc_2067da:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206826
	cmpi.b #$2,$28(a0)
	bne.s loc_2067f6
	tst.w $12(a1)
	bpl.s loc_2067ba
	bra.s loc_2067fc
loc_2067f6:
	tst.w $12(a1)
	bmi.s loc_2067ba
loc_2067fc:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_20680e
	btst.l #$2,d1
	beq.s loc_2067ba
	neg.w d0
loc_20680e:
	cmpi.b #$2,$28(a0)
	beq.s loc_20681c
	bset.b #$1,$22(a1)
loc_20681c:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2067ba
loc_206826:
	tst.w $10(a1)
	bmi.s loc_2067ba
	btst.l #$0,d1
	beq.w loc_2067ba
	move.w #$f600,d0
	bra.w loc_2067ac

sub_20683c:
	tst.b ($ff1906).l
	bne.s loc_206870
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_206870
	cmpi.w #$50,d0
	bcc.s loc_206870
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_206870
	cmpi.w #$50,d0
	bcc.s loc_206870
	moveq #$1,d0
	rts
loc_206870:
	moveq #$0,d0
	rts
loc_206874:
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
	bne.s loc_20692e
	move.b ($ff1593).l,($ff195b).l
loc_20692e:
	tst.b ($ff1522).l
	bpl.s loc_206944
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206944:
	rts

sub_206946:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206874
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
	bne.s loc_206a00
	move.b ($ff1591).l,($ff195b).l
loc_206a00:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206a22
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206a22:
	tst.b ($ff1522).l
	bpl.s loc_206a38
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206a38:
	rts

sub_206a3a:
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
	bpl.s loc_206a76
	move.b d1,d0
	bpl.s loc_206a70
	subq.b #$1,d0
loc_206a70:
	addi.b #$20,d0
	bra.s loc_206a80
loc_206a76:
	move.b d1,d0
	bpl.s loc_206a7c
	addq.b #$1,d0
loc_206a7c:
	addi.b #$1f,d0
loc_206a80:
	andi.b #$c0,d0
	beq.w loc_206b50
	cmpi.b #$80,d0
	beq.w loc_206cec
	andi.b #$38,d1
	bne.s loc_206a98
	addq.w #$8,d2
loc_206a98:
	cmpi.b #$40,d0
	beq.w loc_206dc2
	bra.w loc_206c24

sub_206aa4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206d4a
	cmpi.b #$80,d0
	beq.w sub_206c74
	cmpi.b #$c0,d0
	beq.w loc_206bb4

sub_206acc:
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
	jsr (sub_2010a6).l
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
	jsr (sub_2010a6).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206b30:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206b3e
	move.b ($f768).w,d3
	exg d0,d1
loc_206b3e:
	btst.l #$0,d3
	beq.s loc_206b46
	move.b d2,d3
loc_206b46:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206b50:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010a6).l
	move.b #$0,d2
loc_206b6c:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b78
	move.b d2,d3
loc_206b78:
	rts

sub_206b7a:
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
	jsr (sub_2010a6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bb2
	move.b #$0,d3
loc_206bb2:
	rts
loc_206bb4:
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
	jsr (sub_201216).l
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
	jsr (sub_201216).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206b30

sub_206c1c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c24:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201216).l
	move.b #$c0,d2
	bra.w loc_206b6c
dat_206c44:
	.incbin 27716, 48

sub_206c74:
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
	jsr (sub_2010a6).l
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
	jsr (sub_2010a6).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206b30

sub_206ce4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cec:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010a6).l
	move.b #$80,d2
	bra.w loc_206b6c

sub_206d10:
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
	jsr (sub_2010a6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206d48
	move.b #$80,d3
loc_206d48:
	rts
loc_206d4a:
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
	jsr (sub_201216).l
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
	jsr (sub_201216).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206b30

sub_206dba:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206dc2:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201216).l
	move.b #$40,d2
	bra.w loc_206b6c
loc_206de6:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201216).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e14
	move.b #$40,d3
loc_206e14:
	rts

sub_206e16:
	btst.b #$6,$2c(a0)
	beq.s loc_206e22
	moveq #$0,d0
	rts
loc_206e22:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206e46
	addi.w #$c,d3
	moveq #$a,d5
loc_206e46:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206e54:
	tst.b $1(a1)
	bpl.s loc_206e60
	move.b $20(a1),d0
	bne.s loc_206e6c
loc_206e60:
	lea $40(a1),a1
	dbf d6,loc_206e54
	moveq #$0,d0
	rts
loc_206e6c:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2071f4).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206e94
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206e9a
	bra.w loc_206e60
loc_206e94:
	cmp.w d4,d0
	bhi.w loc_206e60
loc_206e9a:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206eb2
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206eb8
	bra.w loc_206e60
loc_206eb2:
	cmp.w d5,d0
	bhi.w loc_206e60
loc_206eb8:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206f2c
	cmpi.b #$c0,d1
	beq.w loc_207116
	tst.b d1
	bmi.w sub_206ff6
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206ef0
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206eee
	addq.b #$2,$24(a1)
loc_206eee:
	rts
loc_206ef0:
	tst.w $12(a0)
	bpl.s loc_206f1a
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f2a
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f2a
	addq.b #$4,$25(a1)
	rts
loc_206f1a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f2a
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f2a:
	rts

sub_206f2c:
	tst.b ($ff1521).l
	bne.s loc_206f46
	tst.b ($ff151f).l
	bne.s loc_206f46
	cmpi.b #$2,$1c(a0)
	bne.w sub_206ff6
loc_206f46:
	tst.b $21(a1)
	beq.s loc_206f70
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206f6e
	bset.b #$7,$22(a1)
loc_206f6e:
	rts
loc_206f70:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206f88
	moveq #$6,d0
loc_206f88:
	move.w d0,$3e(a1)
	move.w dat_206fe8(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206fa2
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206fa2:
	bsr.w sub_20ae74
	move.w #$96,d0
	jsr (sub_20224c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206fd8
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206fe0
	neg.w $12(a0)
	rts
loc_206fd8:
	addi.w #$100,$12(a0)
	rts
loc_206fe0:
	subi.w #$100,$12(a0)
	rts
dat_206fe8:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206ff6:
	tst.b ($ff1521).l
	bne.s loc_207006
	tst.b ($ff151f).l
	beq.s loc_20700a
loc_207006:
	moveq #$ffffffff,d0
	rts
loc_20700a:
	nop
	tst.w $30(a0)
	bne.s loc_207006
	movea.l a1,a2
loc_207014:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_20704e
	tst.w ($ff1512).l
	beq.w loc_2070b4
	jsr (sub_2078ba).l
	bne.s loc_20704e
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20704e:
	bclr.b #$0,($ff151e).l
	bne.s loc_207060
	move.b #$0,($ff156f).l
loc_207060:
	move.b #$4,$24(a0)
	bsr.w sub_20548e
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_207090
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_207090:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_20709e
	neg.w $10(a0)
loc_20709e:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2070b4:
	tst.w ($ff1588).l
	bne.w loc_20704e

sub_2070be:
	tst.w ($ff1906).l
	bne.s loc_207112
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20548e
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20224c).l
loc_207112:
	moveq #$ffffffff,d0
	rts
loc_207116:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_20719e
	cmpi.b #$23,d1
	beq.w loc_20719e
	cmpi.b #$38,d1
	beq.w loc_2071e6
	cmpi.b #$3a,d1
	beq.w loc_2071e6
	cmpi.b #$3b,d1
	beq.w loc_2071e6
	tst.b ($f7aa).w
	beq.w loc_20719c
	cmpi.b #$1,($f7aa).w
	beq.s loc_207166
	cmpi.b #$4,($f7aa).w
	beq.s loc_207188
	cmpi.b #$5,($f7aa).w
	beq.s loc_207196
loc_207166:
	cmpi.b #$3c,d1
	blt.s loc_20719c
	cmpi.b #$3f,d1
	bgt.s loc_20719c
	bsr.w sub_206f2c
	tst.b $20(a1)
	bne.s loc_207180
	addq.b #$3,$21(a1)
loc_207180:
	clr.b $20(a1)
	bra.w loc_20719e
loc_207188:
	cmpi.b #$3f,d1
	beq.s loc_2071aa
	cmpi.b #$3e,d1
	beq.s loc_2071a4
	bra.s loc_20719c
loc_207196:
	cmpi.b #$3d,d1
	beq.s loc_2071a4
loc_20719c:
	rts
loc_20719e:
	addq.b #$1,$21(a1)
	rts
loc_2071a4:
	bsr.w sub_206ff6
	bra.s loc_20719e
loc_2071aa:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2071e4
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2071e4
	neg.w $10(a0)
loc_2071e4:
	rts
loc_2071e6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2071f2
	addq.b #$1,$21(a1)
loc_2071f2:
	rts
dat_2071f4:
	.incbin 29172, 126
loc_207272:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207288
	move.l #$4000,(dat_207402).l
	bra.s loc_2072a8
loc_207288:
	addi.l #$2000,(dat_207402).l
	cmpi.l #$80000,(dat_207402).l
	bls.s loc_2072a8
	move.l #$80000,(dat_207402).l
loc_2072a8:
	move.l (dat_207402).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2072ba
	sub.l d0,$c(a0)
loc_2072ba:
	btst.b #$1,($f604).w
	beq.s loc_2072c6
	add.l d0,$c(a0)
loc_2072c6:
	btst.b #$2,($f604).w
	beq.s loc_2072d2
	sub.l d0,$8(a0)
loc_2072d2:
	btst.b #$3,($f604).w
	beq.s loc_2072de
	add.l d0,$8(a0)
loc_2072de:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ebe).l
	move.w (a1),($ff194e).l
	lea (dat_207406).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207320
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20731a
	move.b #$0,d1
loc_20731a:
	move.b d1,($ff1904).l
loc_207320:
	btst.b #$7,($f605).w
	beq.s loc_207340
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20733a
	add.b (a2),d1
loc_20733a:
	move.b d1,($ff1904).l
loc_207340:
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
	beq.s loc_2073cc
	bsr.w sub_2078ba
	bne.s loc_2073cc
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
loc_2073cc:
	btst.b #$4,($f605).w
	beq.s loc_2073fc
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2073fc:
	jmp (sub_203872).l
dat_207402:
	dc.b $00,$00,$40,$00
dat_207406:
	.incbin 29702, 674

sub_2076a8:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076b6:
	clr.l (a2)+
	dbf d0,loc_2076b6
	rts

sub_2076be:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2076cc(pc,d0.w),d0
	jmp dat_2076cc(pc,d0.w)
dat_2076cc:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20796c).l,a0
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
	bcc.s loc_20770a
	moveq #$0,d6
loc_20770a:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207712:
	cmp.w (a0),d6
	bls.s loc_207724
	tst.b $4(a0)
	bpl.s loc_207720
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207720:
	addq.w #$8,a0
	bra.s loc_207712
loc_207724:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207744
loc_207732:
	cmp.w (a0),d6
	bls.s loc_207744
	tst.b $4(a0)
	bpl.s loc_207740
	addq.b #$1,$1(a2)
loc_207740:
	addq.w #$8,a0
	bra.s loc_207732
loc_207744:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20782e
	bge.s loc_2077d4
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077b0
loc_20777e:
	cmp.w -$8(a0),d6
	bge.s loc_2077b0
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207794
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207794:
	bsr.w sub_207852
	bne.s loc_20779e
	subq.w #$8,a0
	bra.s loc_20777e
loc_20779e:
	tst.b $4(a0)
	bpl.s loc_2077ae
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077ae:
	addq.w #$8,a0
loc_2077b0:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077bc:
	cmp.w -$8(a0),d6
	bgt.s loc_2077ce
	tst.b -$4(a0)
	bpl.s loc_2077ca
	subq.b #$1,(a2)
loc_2077ca:
	subq.w #$8,a0
	bra.s loc_2077bc
loc_2077ce:
	move.l a0,($f770).w
	rts
loc_2077d4:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077e8:
	cmp.w (a0),d6
	bls.s loc_20780a
	tst.b $4(a0)
	bpl.s loc_2077f6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077f6:
	bsr.w sub_207852
	beq.s loc_2077e8
	tst.b $4(a0)
	bpl.s loc_20780a
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20780a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20782a
loc_207818:
	cmp.w (a0),d6
	bls.s loc_20782a
	tst.b $4(a0)
	bpl.s loc_207826
	addq.b #$1,$1(a2)
loc_207826:
	addq.w #$8,a0
	bra.s loc_207818
loc_20782a:
	move.l a0,($f774).w
loc_20782e:
	rts

sub_207830:
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

sub_207852:
	bsr.s sub_207830
	beq.s loc_207864
	tst.b $4(a0)
	bpl.s loc_20786a
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20786a
loc_207864:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20786a:
	bsr.w sub_2078ba
	bne.s loc_2078b8
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
	bpl.s loc_20789a
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20789a:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078ac
	nop
	nop
	nop
	nop
loc_2078ac:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078b8:
	rts

sub_2078ba:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078c2:
	tst.b (a1)
	beq.s loc_2078ce
	lea $40(a1),a1
	dbf d0,loc_2078c2
loc_2078ce:
	rts

sub_2078d0:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078ee
loc_2078e2:
	tst.b (a1)
	beq.s loc_2078ee
	lea $40(a1),a1
	dbf d0,loc_2078e2
loc_2078ee:
	rts
loc_2078f0:
	move.w $8(a0),d0
loc_2078f4:
	tst.b $1(a0)
	bmi.s loc_20795e
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20795e
loc_207912:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207954
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20794c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207944
	moveq #$0,d1
	bra.s loc_20794c
loc_207944:
	cmpi.w #$3,d1
	bcs.s loc_20794c
	moveq #$2,d1
loc_20794c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207954:
	jsr (sub_20391e).l
	moveq #$1,d0
	rts
loc_20795e:
	btst.b #$7,($ff152e).l
	bne.s loc_207912
	moveq #$0,d0
	rts
dat_20796c:
	.incbin 31084, 4424
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ace(pc,d0.w),d0
	jsr dat_208ace(pc,d0.w)
	jsr (sub_203872).l
	jmp (loc_2078f0).l
dat_208ace:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$208c62,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_2078d0).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$208c62,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_209476).l
	beq.s loc_208b72
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208b72:
	rts
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	move.l $8(a0),d1
	add.l d0,d1
	move.l d1,$8(a0)
	lea ($d000).w,a1
	jsr (sub_209476).l
	move.w ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_208bd8
	bclr.b #$0,$2c(a1)
	move.w #$f980,$12(a1)
	move.w $10(a0),$10(a1)
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	bset.b #$2,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$2,$1c(a1)
	move.w #$92,d0
	jsr (sub_20224c).l
loc_208bd8:
	move.w $2e(a0),d0
	addi.w #$390,d0
	cmp.w $8(a0),d0
	bcc.s loc_208c14
	move.w d0,$8(a0)
	addq.b #$2,$24(a0)
	btst.b #$3,$22(a0)
	beq.s loc_208c14
	bclr.b #$0,$2c(a1)
	move.w $10(a0),$10(a1)
	move.b #$0,$1c(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
loc_208c14:
	rts
	subq.w #$4,$8(a0)
	move.w $2e(a0),d0
	cmp.w $8(a0),d0
	bcs.s loc_208c30
	move.w $2e(a0),$8(a0)
	move.b #$2,$24(a0)
loc_208c30:
	rts
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_208c60
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (sub_20947c).l
loc_208c60:
	rts
	.incbin 35938, 32
	btst.b #$7,($ff152e).l
	beq.s loc_208ccc
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208ccc
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
	bpl.s loc_208cbc
	moveq #$0,d1
	bra.s loc_208cc4
loc_208cbc:
	cmpi.w #$3,d1
	bcs.s loc_208cc4
	moveq #$2,d1
loc_208cc4:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208ccc:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208cfc
	cmpi.b #$6,$24(a6)
	bcc.s loc_208cfc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208cfe(pc,d0.w),d1
	jsr dat_208cfe(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208cfc
	jmp (loc_2078f0).l
loc_208cfc:
	rts
dat_208cfe:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$23a3aa,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208f94(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_208e14
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_208e14
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_208e14
	tst.b $2c(a6)
	bne.w loc_208e14
	cmpi.b #$4,$24(a6)
	bne.s loc_208d9c
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208d9c:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_208db2
	bset.b #$6,$2c(a6)
loc_208db2:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_208dd0
	bset.b #$6,$1(a6)
loc_208dd0:
	cmpi.b #$4,$24(a6)
	bne.s loc_208ddc
	subq.b #$2,$24(a6)
loc_208ddc:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_20224c).l
loc_208e14:
	rts
	dc.b $1d,$7c,$00,$02,$00,$1c,$61,$00
	dc.b $00,$ce,$54,$28,$00,$24
	move.w #$91,d0
	jsr (sub_20224c).l
	rts
	.incbin 36400, 356
dat_208f94:
	.incbin 36756, 922

sub_20932e:
	btst.b #$3,$22(a0)
	beq.s loc_20939e
	btst.b #$3,$22(a1)
	beq.s loc_20939e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20939e
	tst.b $2a(a1)
	beq.s loc_209360
	move.w #$ab,d0
	jsr (sub_20224c).l
loc_209360:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20938c
	cmpi.b #$17,$1c(a1)
	beq.s loc_20938c
	bclr.b #$0,$2c(a1)
loc_20938c:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20939e
	bclr.b #$1,$22(a1)
loc_20939e:
	rts

sub_2093a0:
	cmpi.b #$4,$24(a1)
	bne.s loc_2093b2
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2093b2:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_209412
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2093d4
	bclr.b #$3,$22(a0)
	bra.w sub_20932e
loc_2093d4:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_209412
	tst.b ($ff195b).l
	beq.s loc_2093fc
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_20940c
loc_2093fc:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_20940c:
	move.b #$0,$1c(a1)
loc_209412:
	bset.b #$3,$22(a1)
	beq.s loc_209434
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20946c
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_209434:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_209460
	cmpi.b #$2,$24(a0)
	beq.s loc_209466
loc_209460:
	move.w $10(a1),$14(a1)
loc_209466:
	bclr.b #$1,$22(a1)
loc_20946c:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_209476:
	move.b #$1,$25(a0)

sub_20947c:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209730
	btst.b #$6,$2c(a1)
	bne.w loc_209730
	cmpi.b #$6,$24(a1)
	bcc.w loc_209730
	tst.b $0(a1)
	beq.w loc_209730
	tst.b $1(a0)
	bpl.w loc_209730
	tst.b ($ff1906).l
	bne.w loc_209730
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209730
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209730
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2094ea
	btst.b #$3,$22(a0)
	bne.s loc_2094fc
	bra.w loc_209730
loc_2094ea:
	cmpi.b #$1,$25(a0)
	bne.s loc_2094fc
	tst.w $12(a1)
	beq.s loc_2094fc
	bmi.w loc_209730
loc_2094fc:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209730
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209730
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209532
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209532:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_209540
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_209540:
	cmp.w d4,d5
	bcs.w loc_2095d4
	cmpi.b #$1,$25(a0)
	beq.w loc_209730
	cmpi.b #$a,$0(a0)
	bne.s loc_209562
	btst.b #$1,$22(a1)
	bne.w loc_209730
loc_209562:
	cmpi.b #$4,d5
	bls.w loc_209730
	bsr.w sub_209780
	move.l d0,-(a7)
	bsr.w sub_20932e
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20958c
	tst.w $10(a1)
	beq.s loc_2095bc
	bpl.s loc_209594
	bra.s loc_2095bc
loc_20958c:
	tst.w $10(a1)
	beq.s loc_2095bc
	bpl.s loc_2095bc
loc_209594:
	bsr.w sub_209740
	btst.b #$1,$22(a1)
	bne.s loc_2095b2
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2095b2:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2095bc:
	bsr.w sub_2097f6
	bsr.w sub_209740
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2095d4:
	cmpi.b #$19,$0(a0)
	bne.s loc_2095e6
	btst.b #$2,$22(a1)
	bne.w loc_209730
loc_2095e6:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2095fc
	bmi.w loc_2096cc
loc_2095fc:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20960e
	tst.w $12(a1)
	beq.s loc_20960e
	bmi.w loc_209730
loc_20960e:
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
	beq.s loc_20965a
	bpl.s loc_20963a
	neg.b d0
loc_20963a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a3a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20965a
	tst.w $10(a0)
	bpl.s loc_209656
	neg.w d1
loc_209656:
	add.w d1,$8(a1)
loc_20965a:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2096c4
	tst.w $12(a0)
	bmi.s loc_209698
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206acc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209698
	add.w d1,$c(a1)
	bra.w loc_209730
loc_209698:
	tst.w $12(a0)
	bpl.s loc_2096c4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ce4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2096c4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070be).l
	movem.l (a7)+,a0-a1
	bra.s loc_209730
loc_2096c4:
	bsr.w sub_2093a0
	moveq #$1,d0
	rts
loc_2096cc:
	cmpi.b #$1,$25(a0)
	beq.s loc_209730
	cmpi.b #$9,$0(a0)
	beq.s loc_209730
	cmpi.b #$a,$0(a0)
	bne.s loc_2096f6
	cmpi.b #$2,$25(a0)
	beq.s loc_209716
	btst.b #$1,$1(a0)
	bne.s loc_209716
	bra.s loc_209730
loc_2096f6:
	btst.b #$1,$22(a1)
	bne.s loc_209716
	tst.w $12(a0)
	beq.s loc_209716
	bmi.s loc_209716
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070be).l
	movem.l (a7)+,a0-a1
loc_209716:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2097f6
	bsr.w sub_20932e
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209730:
	bsr.w sub_2097f6
	bsr.w sub_20932e
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209740:
	tst.w $10(a0)
	beq.s loc_20977e
	cmpi.b #$a,$0(a0)
	beq.s loc_20977e
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_20975a
	neg.b d0
loc_20975a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a3a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20977e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070be).l
	movem.l (a7)+,a0-a1
loc_20977e:
	rts

sub_209780:
	cmpi.b #$a,$0(a0)
	bne.s loc_209790
	move.b #$0,$20(a1)
	rts
loc_209790:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2097e4
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2097f4
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2097b2
	tst.w $10(a2)
	beq.s loc_2097f4
loc_2097b2:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2097c4
	cmp.w $8(a2),d1
	bcs.s loc_2097f4
	bra.s loc_2097ca
loc_2097c4:
	cmp.w $8(a2),d1
	bcc.s loc_2097f4
loc_2097ca:
	cmpi.b #$15,$0(a0)
	beq.s loc_2097f4
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070be).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2097e4:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2097f4:
	rts

sub_2097f6:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209810
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209810
	move.b #$0,$20(a1)
loc_209810:
	rts
	.incbin 38930, 374
loc_209988:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209996(pc,d0.w),d0
	jmp dat_209996(pc,d0.w)
dat_209996:
	.incbin 39318, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209988
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2099ec
	tst.b $1(a0)
	bpl.s loc_2099f4
loc_2099ec:
	move.w dat_209a46(pc,d0.w),d1
	jsr dat_209a46(pc,d1.w)
loc_2099f4:
	bsr.w sub_203872
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209a26
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209a26:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20391e
	rts
dat_209a46:
	.incbin 39494, 26
	addq.b #$2,$24(a0)
	move.l #$209dc8,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209ab6
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209dce,$4(a0)
	bra.s loc_209af8
loc_209ab6:
	btst.l #$3,d0
	beq.s loc_209ae4
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209e18,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c68c).l
	move.l (a7)+,d0
	bra.s loc_209af8
loc_209ae4:
	btst.b #$1,$1(a0)
	beq.s loc_209af8
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209af8:
	btst.l #$1,d0
	beq.s loc_209b04
	bset.b #$5,$2(a0)
loc_209b04:
	andi.w #$2,d0
	move.w dat_209b10(pc,d0.w),$30(a0)
	rts
dat_209b10:
	dc.b $f0,$00,$f6,$00

sub_209b14:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20947c).l
	tst.b $1(a0)
	bpl.s loc_209b30
	lea ($d000).w,a1
	bsr.s sub_209b14
	bne.s loc_209b32
loc_209b30:
	rts
loc_209b32:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20224c).l
	.incbin 39780, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209eb4(pc,d0.w),d1
	jmp dat_209eb4(pc,d1.w)
dat_209eb4:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209ebe:
	.incbin 40638, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209f16
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209f0e
	moveq #$0,d1
	bra.s loc_209f16
loc_209f0e:
	cmpi.w #$3,d1
	bcs.s loc_209f16
	moveq #$2,d1
loc_209f16:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209f32
	moveq #$6,d1
loc_209f32:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209ebe).l,a1
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
	beq.s loc_209f82
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f7a
	moveq #$0,d0
	bra.s loc_209f82
loc_209f7a:
	cmpi.w #$3,d0
	bcs.s loc_209f82
	moveq #$2,d0
loc_209f82:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a050
	dbf d0,loc_209f82
	bclr.b #$7,(a2)
	bra.s loc_209fd8
loc_209f94:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209fc0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209fb8
	moveq #$0,d0
	bra.s loc_209fc0
loc_209fb8:
	cmpi.w #$3,d0
	bcs.s loc_209fc0
	moveq #$2,d0
loc_209fc0:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a050
	dbf d0,loc_209fc0
	bclr.b #$7,(a2)
	bsr.w sub_2078d0
	bne.w loc_20a05c
loc_209fd8:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a322,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a02e
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a02e
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a02e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a050:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209f94
loc_20a05c:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a082
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a07a
	moveq #$0,d0
	bra.s loc_20a082
loc_20a07a:
	cmpi.w #$3,d0
	bcs.s loc_20a082
	moveq #$2,d0
loc_20a082:
	lea $1(a2),a3
loc_20a086:
	btst.b #$0,-(a3)
	bne.w sub_20391e
	dbf d0,loc_20a086
	tst.b $1(a0)
	bmi.s loc_20a0b6
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a130
loc_20a0b6:
	tst.w ($ff190e).l
	bne.s loc_20a0c6
	move.b ($ff1913).l,$1a(a0)
loc_20a0c6:
	bra.w sub_203872
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a134
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a116
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a10e
	moveq #$0,d1
	bra.s loc_20a116
loc_20a10e:
	cmpi.w #$3,d1
	bcs.s loc_20a116
	moveq #$2,d1
loc_20a116:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a31a).l,a1
	bsr.w sub_205dfc
	bra.w sub_203872
loc_20a130:
	bra.w sub_20391e

sub_20a134:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a184
	bset.b #$1,($ff150d).l
	beq.s loc_20a16e
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a184
	bset.b #$2,($ff150d).l
	bne.s loc_20a184
loc_20a16e:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205dbc).l
loc_20a184:
	jmp (sub_20224c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a198(pc,d0.w),d1
	jmp dat_20a198(pc,d1.w)
dat_20a198:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a1b4
	move.w d0,d5
loc_20a1b4:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a1c4
loc_20a1bc:
	bsr.w sub_2078ba
	bne.w loc_20a27a
loc_20a1c4:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a322,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a222
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a222
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a222:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a26a
	move.w d4,d0
	jsr (sub_200750).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a26a
	subi.w #$80,d4
	bcc.s loc_20a26a
	move.w #$288,d4
loc_20a26a:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a1bc
loc_20a27a:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20224c).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_20381c
	addi.w #$18,$12(a0)
	bmi.s loc_20a2da
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a2da
	jsr (sub_206b7a).l
	tst.w d1
	bpl.s loc_20a2da
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a2da:
	tst.b ($ff1916).l
	beq.s loc_20a316
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a316
	bra.w sub_203872
	.incbin 41716, 34
loc_20a316:
	bra.w sub_20391e
dat_20a31a:
	.incbin 41754, 402
loc_20a4ac:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4da(pc,d0.w),d0
	jsr dat_20a4da(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a4d8
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a4d2
	btst.b #$0,($ff1505).l
	bne.s loc_20a4d8
loc_20a4d2:
	jmp (sub_203872).l
loc_20a4d8:
	rts
dat_20a4da:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20aab4,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a50e
	move.b #$13,$1a(a0)
loc_20a50e:
	rts
loc_20a510:
	tst.b ($ff0f01).l
	beq.s loc_20a51e
	jmp (sub_20391e).l
loc_20a51e:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a4ac
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a542(pc,d0.w),d0
	jsr dat_20a542(pc,d0.w)
	jsr (sub_203872).l
	jmp (loc_2078f0).l
dat_20a542:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aab4,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a590
	tst.b $29(a0)
	bne.s loc_20a590
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a590:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a65c
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a5b8
	addq.b #$2,$1a(a0)
loc_20a5b8:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a5cc
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a5cc:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a632
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5fe
	tst.b $29(a0)
	beq.s loc_20a5f6
	tst.b ($ff1956).l
	beq.s loc_20a632
	bra.s loc_20a5fe
loc_20a5f6:
	tst.b ($ff1956).l
	bne.s loc_20a632
loc_20a5fe:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a65c
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a62c
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a62c:
	jsr (sub_205dbc).l
loc_20a632:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a644
	lea (dat_20aa2c).l,a1
	bra.w sub_205dfc
loc_20a644:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a65a
	addq.b #$2,$1a(a0)
loc_20a65a:
	rts

sub_20a65c:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a694
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a68c
	moveq #$0,d1
	bra.s loc_20a694
loc_20a68c:
	cmpi.w #$3,d1
	bcs.s loc_20a694
	moveq #$2,d1
loc_20a694:
	add.w d1,d0
	rts

sub_20a698:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a6ba
	tst.b ($ff1956).l
	beq.s loc_20a6b2
	tst.b $29(a0)
	bne.s loc_20a6ba
	rts
loc_20a6b2:
	tst.b $29(a0)
	beq.s loc_20a6ba
	rts
loc_20a6ba:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20947c).l
	tst.b $28(a0)
	bne.s loc_20a6dc
	tst.b ($ff0f01).l
	beq.s loc_20a6dc
	jmp (loc_2078f0).l
loc_20a6dc:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a510
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6f4(pc,d0.w),d1
	jmp dat_20a6f4(pc,d1.w)
dat_20a6f4:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aab4,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a73e
	tst.b $29(a0)
	bne.s loc_20a73e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a73e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a65c
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a76a
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a76a:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a7c4
	move.b $25(a0),d0
	beq.s loc_20a7a4
	bsr.w sub_2037ba
	jsr (sub_206b7a).l
	tst.w d1
	bpl.w loc_20a7b2
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a7b2
loc_20a7a4:
	tst.b $1(a0)
	bpl.s loc_20a7b2
	lea ($d000).w,a1
	bsr.w sub_20a698
loc_20a7b2:
	tst.w ($ff190e).l
	bne.s loc_20a7c4
	lea (dat_20aa2c).l,a1
	bsr.w sub_205dfc
loc_20a7c4:
	bsr.w sub_203872
	jmp (loc_2078f0).l
	.incbin 42958, 606
dat_20aa2c:
	.incbin 43564, 586
loc_20ac76:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac8a(pc,d0.w),d0
	jsr dat_20ac8a(pc,d0.w)
	jmp (sub_203872).l
dat_20ac8a:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20acca,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20acc4
	jmp (sub_20391e).l
loc_20acc4:
	subq.w #$2,$c(a0)
	rts
	.incbin 44234, 82
	tst.b $28(a0)
	bmi.w loc_20ac76
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad32(pc,d0.w),d0
	jmp dat_20ad32(pc,d0.w)
dat_20ad32:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20adcc,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ad62
	move.b #$3,$1a(a0)
	bra.s loc_20ad82
loc_20ad62:
	tst.w ($ff1588).l
	beq.s loc_20ad70
	move.b #$2,$1a(a0)
loc_20ad70:
	tst.b $28(a0)
	beq.s loc_20ad82
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ad82:
	tst.b $28(a0)
	bne.s loc_20adc6
	tst.b $29(a0)
	beq.s loc_20adb2
	tst.w ($ff1512).l
	beq.s loc_20ad9e
	bclr.b #$5,$2(a0)
	bra.s loc_20adc6
loc_20ad9e:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20adc6
	eori.b #$20,$2(a0)
	bra.s loc_20adc6
loc_20adb2:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20adc6
	move.b #$2,$1a(a0)
loc_20adc6:
	jmp (sub_203872).l
	.incbin 44492, 168

sub_20ae74:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ae90
	move.l d1,(a3)
loc_20ae90:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20aeba
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205dbc).l
loc_20aeba:
	rts
loc_20aebc:
	tst.w ($ff1588).l
	beq.s loc_20af12
	bsr.w sub_20b10e
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
	lea (dat_20b26e).l,a2
	moveq #$2,d6
	bsr.w sub_20b2c6
	bra.w loc_20af6c
loc_20af12:
	tst.b ($ff1511).l
	beq.s loc_20af36
	bpl.s loc_20af20
	bsr.w sub_20b0b8
loc_20af20:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b1a8
loc_20af36:
	tst.b ($ff150f).l
	beq.s loc_20af6c
	bpl.s loc_20af44
	bsr.w sub_20b0a4
loc_20af44:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20af68
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20af68:
	bsr.w sub_20b19e
loc_20af6c:
	tst.w ($ff1588).l
	bne.w loc_20b018
	tst.b ($ff1510).l
	beq.w loc_20b018
	tst.w ($f63a).w
	bne.w loc_20b018
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b076
	tst.b ($f7cc).w
	bne.s loc_20afc2
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20afc2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20afc2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20afc2
	move.b #$9,(a1)
loc_20afc2:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b2b4
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b2be
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b014
	move.w #$63,d1
loc_20b014:
	bsr.w sub_20b2be
loc_20b018:
	tst.b ($ff150e).l
	beq.s loc_20b02a
	clr.b ($ff150e).l
	bsr.w sub_20b294
loc_20b02a:
	tst.b ($f7d6).w
	beq.s loc_20b074
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b04a
	move.l #$6d400001,d0
loc_20b04a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b12c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b06a
	move.l #$6e800001,d0
loc_20b06a:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b12c
loc_20b074:
	rts
loc_20b076:
	btst.b #$7,($ff152e).l
	bne.s loc_20b0a2
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2070be
	move.b #$1,($ff150c).l
loc_20b0a2:
	rts

sub_20b0a4:
	move.l #$73600002,($c00004).l
	lea dat_20b10a(pc),a2
	move.w #$2,d2
	bra.s loc_20b0d4

sub_20b0b8:
	lea ($c00000).l,a6
	bsr.w sub_20b294
	move.l #$70600002,($c00004).l
	lea dat_20b102(pc),a2
	move.w #$6,d2
loc_20b0d4:
	lea (dat_2330bc).l,a1
loc_20b0da:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b0f6
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b0ea:
	move.l (a3)+,(a6)
	dbf d1,loc_20b0ea
loc_20b0f0:
	dbf d2,loc_20b0da
	rts
loc_20b0f6:
	move.l #$0,(a6)
	dbf d1,loc_20b0f6
	bra.s loc_20b0f0
dat_20b102:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b10a:
	dc.b $ff,$ff,$00,$00

sub_20b10e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b28a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b28a

sub_20b12c:
	lea (dat_20b266).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b13c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b140:
	sub.l d3,d1
	bcs.s loc_20b148
	addq.w #$1,d2
	bra.s loc_20b140
loc_20b148:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b152
	move.w #$1,d4
loc_20b152:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b15e
	tst.w d6
	bne.s loc_20b190
loc_20b15e:
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
loc_20b184:
	addi.l #$400000,d0
	dbf d6,loc_20b13c
	rts
loc_20b190:
	moveq #$f,d5
loc_20b192:
	move.l #$0,(a6)
	dbf d5,loc_20b192
	bra.s loc_20b184

sub_20b19e:
	lea (dat_20b26e).l,a2
	moveq #$2,d6
	bra.s loc_20b1b0

sub_20b1a8:
	lea (dat_20b262).l,a2
	moveq #$5,d6
loc_20b1b0:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b1b8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1bc:
	sub.l d3,d1
	bcs.s loc_20b1c4
	addq.w #$1,d2
	bra.s loc_20b1bc
loc_20b1c4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b1ce
	move.w #$1,d4
loc_20b1ce:
	tst.w d4
	beq.s loc_20b1fc
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
loc_20b1fc:
	addi.l #$400000,d0
	dbf d6,loc_20b1b8
	rts
	.incbin 45576, 90
dat_20b262:
	dc.b $00,$01,$86,$a0
dat_20b266:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b26e:
	dc.b $00,$00,$00,$64
dat_20b272:
	dc.b $00,$00,$00,$0a
dat_20b276:
	dc.b $00,$00,$00,$01
dat_20b27a:
	.incbin 45690, 16

sub_20b28a:
	moveq #$3,d6
	lea (dat_20b27a).l,a2
	bra.s sub_20b2c6

sub_20b294:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b2aa
	moveq #$9,d1
loc_20b2aa:
	lea (dat_20b276).l,a2
	moveq #$0,d6
	bra.s sub_20b2c6

sub_20b2b4:
	lea (dat_20b276).l,a2
	moveq #$0,d6
	bra.s sub_20b2c6

sub_20b2be:
	lea (dat_20b272).l,a2
	moveq #$1,d6

sub_20b2c6:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b2ce:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b2d2:
	sub.l d3,d1
	bcs.s loc_20b2da
	addq.w #$1,d2
	bra.s loc_20b2d2
loc_20b2da:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b2e4
	move.w #$1,d4
loc_20b2e4:
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
	dbf d6,loc_20b2ce
	rts
	.incbin 45850, 954
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b6f8(pc,d0.w),d0
	jsr dat_20b6f8(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20b6f2
	jsr (sub_203872).l
loc_20b6f2:
	jmp (loc_2078f0).l
dat_20b6f8:
	.incbin 46840, 1920
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be86(pc,d0.w),d0
	jmp dat_20be86(pc,d0.w)
dat_20be86:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c584,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c544).l,a2
loc_20bed4:
	jsr (sub_2078ba).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c584,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bf26
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bf26:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20bed4
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf4e
	bge.s loc_20bf44
	neg.w d0
loc_20bf44:
	add.w d0,$a(a0)
	jmp (sub_203872).l
loc_20bf4e:
	addq.b #$4,$24(a0)
	jmp (sub_203872).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf72
	bge.s loc_20bf68
	neg.w d0
loc_20bf68:
	add.w d0,$8(a0)
	jmp (sub_203872).l
loc_20bf72:
	addq.b #$4,$24(a0)
	jmp (sub_203872).l
	tst.b $1e(a0)
	beq.s loc_20bf8c
	subq.b #$1,$1e(a0)
	jmp (sub_203872).l
loc_20bf8c:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bfa6
	bge.s loc_20bf9c
	neg.w d0
loc_20bf9c:
	add.w d0,$a(a0)
	jmp (sub_203872).l
loc_20bfa6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202416).l
	tst.b $1e(a0)
	beq.s loc_20bfc8
	subq.b #$1,$1e(a0)
	jmp (sub_203872).l
loc_20bfc8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bfe2
	bge.s loc_20bfd8
	neg.w d0
loc_20bfd8:
	add.w d0,$8(a0)
	jmp (sub_203872).l
loc_20bfe2:
	jmp (sub_20391e).l
	tst.l ($f680).w
	bne.s loc_20bffc
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_20391e).l
loc_20bffc:
	rts
	.incbin 49150, 1350
dat_20c544:
	.incbin 50500, 328

sub_20c68c:
	rts
	.incbin 50830, 1138
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb1e(pc,d0.w),d0
	jsr dat_20cb1e(pc,d0.w)
	jsr (sub_203872).l
	move.w $36(a0),d0
	jmp (loc_2078f4).l
dat_20cb1e:
	dc.b $00,$16,$00,$4c
loc_20cb22:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209476).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cc02,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cb7a(pc,d0.w),d0
	jmp dat_20cb7a(pc,d0.w)
dat_20cb7a:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cbe6
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cb22
	bsr.w sub_20cbe6
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cb22
	move.l $8(a0),-(a7)
	bsr.w sub_20cbe6
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cb22
	move.l $8(a0),-(a7)
	bsr.w sub_20cbe6
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cb22

sub_20cbe6:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_200750).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 52226, 1554
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d22e(pc,d0.w),d0
	jsr dat_20d22e(pc,d0.w)
	jsr (sub_203872).l
	jmp (loc_2078f0).l
dat_20d22e:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d238:
	tst.b $1a(a0)
	beq.s loc_20d240
	rts
loc_20d240:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20947c).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d382,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d28e
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d28e:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d29e
	neg.w d0
loc_20d29e:
	cmpi.w #$40,d0
	bcc.s loc_20d2de
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d2ba
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d2ba:
	sub.w d1,d0
	bcs.s loc_20d2de
	cmpi.w #$40,d0
	bcc.s loc_20d2de
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d2de
	move.w #$a4,d0
	jsr (sub_20224c).l
loc_20d2de:
	bra.w loc_20d238
	.incbin 53986, 204
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3cc(pc,d0.w),d0
	jsr dat_20d3cc(pc,d0.w)
	jsr (sub_203872).l
	move.w $36(a0),d0
	jmp (loc_2078f4).l
dat_20d3cc:
	dc.b $00,$12,$00,$48

sub_20d3d0:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209476).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d698,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d5fe
	lea dat_20d68e(pc),a1
	jsr (sub_205dfc).l
	lea ($d000).w,a1
	bsr.w sub_20d3d0
	beq.s loc_20d472
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d468
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d464
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d464:
	move.b d0,$39(a1)
loc_20d468:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d472
	bra.s loc_20d492
loc_20d472:
	rts
	.incbin 54388, 30
loc_20d492:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_200750).l
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
	move.b dat_20d4f0(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d4d2
	addq.b #$1,$39(a1)
loc_20d4d2:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d4e6
	move.w ($f606).w,($f602).w
loc_20d4e6:
	bsr.w sub_20d500
	bra.w loc_20d54e
	dc.b $4e,$75
dat_20d4f0:
	.incbin 54512, 16

sub_20d500:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d52c
	btst.b #$2,($f602).w
	beq.s loc_20d518
	addq.b #$1,$39(a1)
	bra.s loc_20d54c
loc_20d518:
	btst.b #$3,($f602).w
	beq.s loc_20d54c
	subq.b #$1,$39(a1)
	bcc.s loc_20d54c
	clr.b $39(a1)
	bra.s loc_20d54c
loc_20d52c:
	btst.b #$3,($f602).w
	beq.s loc_20d53a
	addq.b #$1,$39(a1)
	bra.s loc_20d54c
loc_20d53a:
	btst.b #$2,($f602).w
	beq.s loc_20d54c
	subq.b #$1,$39(a1)
	bcc.s loc_20d54c
	clr.b $39(a1)
loc_20d54c:
	rts
loc_20d54e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d5f4
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_200750).l
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
	beq.s loc_20d5ae
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d5ba
loc_20d5ae:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d5ba:
	btst.b #$2,$22(a1)
	bne.s loc_20d5f6
	tst.b ($ff195b).l
	beq.s loc_20d5d8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d5e8
loc_20d5d8:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d5e8:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d5f4:
	rts
loc_20d5f6:
	bset.b #$4,$22(a1)
	rts

sub_20d5fe:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d60e(pc,d0.w),d0
	jmp dat_20d60e(pc,d0.w)
dat_20d60e:
	.incbin 54798, 38
	move.l $8(a0),-(a7)
	bsr.w sub_20d672
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d672
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts

sub_20d672:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_200750).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d68e:
	.incbin 54926, 118
	jsr (sub_20fc74).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d724(pc,d0.w),d0
	jsr dat_20d724(pc,d0.w)
	jsr (sub_203872).l
	jmp (loc_2078f0).l
dat_20d724:
	dc.b $00,$08,$00,$8c,$01,$08,$01,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2438,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.l #$70000,$2e(a0)
	move.l #loc_206de6,$36(a0)
	move.w #$fff0,$34(a0)
	move.b #$1,$1a(a0)
	bsr.w sub_20d920
	movea.l #$20d942,a1
	move.l #$ffff6000,d0
	move.b #$7,d1
	tst.b $28(a0)
	beq.s loc_20d794
	movea.l #$20d966,a1
	move.l #$ffff8000,d0
	move.b #$3,d1
loc_20d794:
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
	jsr (sub_206b7a).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d7ea
	tst.w $3e(a0)
	bpl.w loc_20d8ec
	cmp.w $3e(a0),d1
	ble.w loc_20d8ec
	bra.s loc_20d80c
loc_20d7ea:
	tst.w $3e(a0)
	bmi.s loc_20d80c
	addi.l #$2000,$2e(a0)
	cmpi.l #$70000,$2e(a0)
	blt.s loc_20d80a
	move.l #$70000,$2e(a0)
loc_20d80a:
	rts
loc_20d80c:
	addq.b #$2,$24(a0)
	move.w $3e(a0),d0
	add.w d0,$c(a0)
	move.w #$1,d0
	tst.b $28(a0)
	beq.s loc_20d826
	move.w #$14,d0
loc_20d826:
	move.w d0,$3a(a0)
	rts
	tst.b $28(a0)
	beq.s loc_20d85c
	move.w #$7,d6
	move.w $3a(a0),d0
	cmpi.w #$6,d0
	beq.s loc_20d854
	cmpi.w #$b,d0
	beq.s loc_20d852
	cmpi.w #$f,d0
	beq.s loc_20d854
	cmpi.w #$12,d0
	bne.s loc_20d85c
loc_20d852:
	neg.w d6
loc_20d854:
	add.w d6,$c(a0)
	bsr.w sub_20d920
loc_20d85c:
	subq.w #$1,$3a(a0)
	bne.s loc_20d88a
	addq.b #$2,$24(a0)
	subq.w #$7,$c(a0)
	bsr.w sub_20d920
	move.l #$fffa0000,d0
	tst.b $28(a0)
	beq.s loc_20d880
	move.l #$fffb0000,d0
loc_20d880:
	move.l d0,$2e(a0)
	subq.b #$1,$32(a0)
	bmi.s loc_20d8ec
loc_20d88a:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206d10).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d8c2
	tst.w $3e(a0)
	bpl.s loc_20d8ec
	cmp.w $3e(a0),d1
	ble.s loc_20d8ec
	bra.s loc_20d8d4
loc_20d8c2:
	tst.w $3e(a0)
	bmi.s loc_20d8d4
	addi.l #$2000,$2e(a0)
	bpl.s loc_20d8e0
	rts
loc_20d8d4:
	move.w $3e(a0),d0
	sub.w d0,$c(a0)
	clr.l $2e(a0)
loc_20d8e0:
	subq.b #$4,$24(a0)
	subi.w #$b,$c(a0)
	bra.s sub_20d920
loc_20d8ec:
	move.b $33(a0),$32(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
	neg.w $34(a0)
	lea (loc_206de6).l,a1
	lea (dat_206c44).l,a2
	cmpa.l $36(a0),a1
	bne.s loc_20d91a
	exg a1,a2
loc_20d91a:
	move.l a1,$36(a0)
	rts

sub_20d920:
	tst.b $1a(a0)
	beq.s loc_20d92e
	moveq #$0,d0
	moveq #$13,d1
	moveq #$2f,d2
	bra.s loc_20d934
loc_20d92e:
	moveq #$1,d0
	moveq #$1c,d1
	moveq #$30,d2
loc_20d934:
	move.b d0,$1a(a0)
	move.b d1,$16(a0)
	move.b d2,$20(a0)
	rts
	.incbin 55618, 72
	tst.b $28(a0)
	bmi.w loc_20dd9a
	jsr (sub_20fc74).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9bc(pc,d0.w),d0
	jsr dat_20d9bc(pc,d0.w)
	lea dat_20dc28(pc),a1
	jsr (sub_205dfc).l
	jsr (sub_203872).l
	jmp (loc_2078f0).l
dat_20d9bc:
	.incbin 55740, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$a457,$2(a0)
	move.b #$31,$20(a0)
	move.w #$fff8,$30(a0)
	lea dat_20dc34(pc),a1
	move.l #$ffff0000,d0
	tst.b $28(a0)
	beq.s loc_20da1e
	lea dat_20dd1c(pc),a1
	move.l #$ffff8000,d0
loc_20da1e:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	addq.b #$2,$24(a0)
	move.w #$200,d0
	tst.b $28(a0)
	beq.s loc_20da38
	move.w #$400,d0
loc_20da38:
	move.w d0,$2a(a0)
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20da66
	tst.w $32(a0)
	beq.s loc_20da56
	subq.w #$1,$32(a0)
	bra.s loc_20da66
loc_20da56:
	lea ($d000).w,a1
	bsr.s sub_20da74
	beq.s loc_20da66
	move.b #$c,$24(a0)
	rts
loc_20da66:
	subq.w #$1,$2a(a0)
	bpl.s loc_20da72
	move.b #$6,$24(a0)
loc_20da72:
	rts

sub_20da74:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dabe
	move.w $8(a1),d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20dabe
	btst.b #$0,$1(a0)
	sne d2
	eor.b d1,d2
	beq.s loc_20daba
	neg.l $2c(a0)
	neg.w $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20daba:
	moveq #$ffffffff,d0
	rts
loc_20dabe:
	moveq #$0,d0
	rts
	.incbin 56002, 62
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20db44
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	move.b #$1,$1c(a0)
	move.b #$32,$20(a0)
	move.b #$10,$16(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w $30(a0),d0
	add.w d0,$8(a0)
	addq.w #$4,$c(a0)
loc_20db44:
	rts
	subq.w #$1,$2a(a0)
	bpl.w loc_20dbe8
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	jsr (sub_2078ba).l
	bne.w loc_20dbe8
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $1(a0),$1(a1)
	move.w $2(a0),$2(a1)
	move.l #$20de26,$4(a1)
	move.b #$1,$18(a1)
	move.b #$10,$16(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$b3,$20(a1)
	move.w $c(a0),$c(a1)
	addi.w #$17,$c(a1)
	move.l #$20000,$30(a1)
	move.w $8(a0),$8(a1)
	move.w #$7,d0
	move.l #$20000,d1
	btst.b #$0,$1(a0)
	bne.s loc_20dbd0
	neg.w d0
	neg.l d1
loc_20dbd0:
	add.w d0,$8(a1)
	move.l d1,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20dbe8
	move.w #$a0,d0
	jsr (sub_20224c).l
loc_20dbe8:
	rts
	subq.w #$1,$2a(a0)
	bpl.s loc_20dc26
	move.b #$2,$24(a0)
	move.w #$3c,$32(a0)
	move.b #$0,$1c(a0)
	move.b #$31,$20(a0)
	move.b #$c,$16(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.w $30(a0),d0
	sub.w d0,$8(a0)
	subq.w #$4,$c(a0)
loc_20dc26:
	rts
dat_20dc28:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $01,$02,$03,$ff
dat_20dc34:
	.incbin 56372, 232
dat_20dd1c:
	.incbin 56604, 126
loc_20dd9a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ddb4(pc,d0.w),d0
	jsr dat_20ddb4(pc,d0.w)
	jsr (sub_203872).l
	jmp (loc_2078f0).l
dat_20ddb4:
	dc.b $00,$08,$00,$12,$00,$2a,$00,$46
	addq.b #$2,$24(a0)
	move.w #$3,$2a(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20dddc
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$a,$2a(a0)
loc_20dddc:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20ddf8
	addq.b #$2,$24(a0)
loc_20ddf8:
	rts
	tst.b $1(a0)
	bmi.s loc_20de06
	jmp (sub_20391e).l
loc_20de06:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	lea dat_20de20(pc),a1
	jmp (sub_205dfc).l
dat_20de20:
	.incbin 56864, 2304
	jsr (sub_20fcbc).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e842
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e740(pc,d0.w),d0
	jmp dat_20e740(pc,d0.w)
dat_20e740:
	.incbin 59200, 258
loc_20e842:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e850(pc,d0.w),d0
	jmp dat_20e850(pc,d0.w)
dat_20e850:
	.incbin 59472, 3182
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$04,$f8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f4ec(pc,d0.w),d0
	jsr dat_20f4ec(pc,d0.w)
	jsr (sub_203872).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f4ea
	jmp (loc_2078f0).l
loc_20f4ea:
	rts
dat_20f4ec:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20f91a(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20f69c,$4(a0)
	move.l #$20f8da,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20f560
	addq.b #$2,d0
loc_20f560:
	tst.b ($ff152e).l
	bne.s loc_20f56a
	addq.b #$1,d0
loc_20f56a:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20f58a
	tst.b ($ff152e).l
	bne.s loc_20f58a
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20f58a:
	tst.b ($ff156a).l
	bne.s loc_20f5f2
	tst.b ($ff152e).l
	bne.s loc_20f5f2
	bsr.w sub_20f66e
	tst.b $21(a0)
	beq.s loc_20f5de
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20ae74).l
	lea ($d000).w,a1
	jsr (sub_20947c).l
	beq.s loc_20f5dc
	jsr (sub_20932e).l
loc_20f5dc:
	rts
loc_20f5de:
	lea ($d000).w,a1
	jsr (sub_20947c).l
	lea dat_20f694(pc),a1
	jmp (sub_205dfc).l
loc_20f5f2:
	rts
	.incbin 62964, 122

sub_20f66e:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20f684
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20f684:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20f692
	neg.w $32(a0)
loc_20f692:
	rts
dat_20f694:
	.incbin 63124, 646
dat_20f91a:
	.incbin 63770, 858

sub_20fc74:
	tst.b ($ff156a).l
	beq.s loc_20fcba
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc8c
	tst.b $28(a0)
	beq.s loc_20fcba
loc_20fc8c:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_20391e).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fcb8
	move.w #$9e,d0
	jsr (sub_20224c).l
loc_20fcb8:
	addq.l #$4,a7
loc_20fcba:
	rts

sub_20fcbc:
	tst.b $28(a0)
	bmi.s loc_20fcec
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fcdc
	tst.b ($ff156d).l
	bne.s loc_20fcec
	addq.l #$4,a7
	jmp (loc_2078f0).l
loc_20fcdc:
	tst.b ($ff156a).l
	bne.s loc_20fcec
	addq.l #$4,a7
	jmp (sub_20391e).l
loc_20fcec:
	rts

sub_20fcee:
	jsr (sub_206670).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fe4a).l,a1
	move.w #$3f,d6
	bsr.w sub_20fe06
	bne.s loc_20fd30
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7e00,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fd30:
	lea (dat_20fe58).l,a1
	move.w #$1f,d6
	bsr.w sub_20fe06
	bne.s loc_20fd64
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7d80,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fd64:
	lea (dat_20fdec).l,a1
	move.w #$1f,d6
	bsr.w sub_20fd9a
	bne.s loc_20fd98
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7d00,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fd98:
	rts

sub_20fd9a:
	subq.b #$1,(a2)
	bpl.s loc_20fde0
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fdaa
	moveq #$0,d0
loc_20fdaa:
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
loc_20fdce:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fdce
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fde0:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fdec:
	.incbin 65004, 26

sub_20fe06:
	subq.b #$1,(a2)
	bpl.w loc_20fe3e
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe1c
	moveq #$0,d0
loc_20fe1c:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fe2c:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe2c
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fe3e:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe4a:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fe58:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fe62:
	.incbin 65122, 16
dat_20fe72:
	.incbin 65138, 65934
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
	.incbin 224022, 14956
dat_23a582:
	.incbin 238978, 23166
