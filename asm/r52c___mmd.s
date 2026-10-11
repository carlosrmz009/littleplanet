; R52C__.MMD
; disassembled from the disc; code only, data comes from data/R52C__.MMD at build time
	.file "R52C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$70
	jmp (loc_201ba0).l
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
	bsr.w sub_2021ac
	bsr.w sub_202154
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201410

sub_200184:
	tst.b ($f7a7).w
	beq.s loc_20018c
	rts
loc_20018c:
	lea ($f7b7).w,a4
	lea ($f7b0).w,a5
	bra.w loc_200198
loc_200198:
	lea dat_2001ee(pc),a1
	tst.b ($ff158f).l
	beq.s loc_2001a8
	lea dat_200204(pc),a1
loc_2001a8:
	subq.b #$1,(a4)
	bpl.s loc_2001e4
	move.b $3(a1),(a4)
	moveq #$0,d0
	move.b (a5),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_2001be
	moveq #$0,d0
loc_2001be:
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
loc_2001de:
	move.w (a1)+,(a2)+
	dbf d1,loc_2001de
loc_2001e4:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2001ee:
	.incbin 494, 22
dat_200204:
	.incbin 516, 22

sub_20021a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20022c:
	move.w d1,(a0)+
	dbf d0,loc_20022c
	move.w #$15,d4
loc_200236:
	move.b #$12,($f62a).w
	bsr.w sub_200754
	bsr.s sub_20024c
	bsr.w sub_202572
	dbf d4,loc_200236
	rts

sub_20024c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200262:
	bsr.s sub_200290
	dbf d0,loc_200262
	cmpi.b #$1,($ff1506).l
	bne.s loc_20028e
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200288:
	bsr.s sub_200290
	dbf d0,loc_200288
loc_20028e:
	rts

sub_200290:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002b8
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002a6
	move.w d1,(a0)+
	rts
loc_2002a6:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002b4
	move.w d1,(a0)+
	rts
loc_2002b4:
	addq.w #$2,(a0)+
	rts
loc_2002b8:
	addq.w #$2,a0
	rts

sub_2002bc:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002c6:
	move.b #$12,($f62a).w
	bsr.w sub_200754
	bsr.s sub_2002dc
	bsr.w sub_202572
	dbf d4,loc_2002c6
	rts

sub_2002dc:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2002ec:
	bsr.s sub_20030a
	dbf d0,loc_2002ec
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200302:
	bsr.s sub_20030a
	dbf d0,loc_200302
	rts

sub_20030a:
	move.w (a0),d2
	beq.s loc_200336
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20031a
	subq.w #$2,(a0)+
	rts
loc_20031a:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200328
	subi.w #$20,(a0)+
	rts
loc_200328:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200336
	subi.w #$200,(a0)+
	rts
loc_200336:
	addq.w #$2,a0
	rts

sub_20033a:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200354:
	move.w d1,(a0)+
	dbf d0,loc_200354
	move.w #$15,d4
loc_20035e:
	move.b #$12,($f62a).w
	bsr.w sub_200754
	bsr.s sub_200374
	bsr.w sub_202572
	dbf d4,loc_20035e
	rts

sub_200374:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20038a:
	bsr.s sub_2003b8
	dbf d0,loc_20038a
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003b6
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003b0:
	bsr.s sub_2003b8
	dbf d0,loc_2003b0
loc_2003b6:
	rts

sub_2003b8:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003e4
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003d0
	cmp.w d2,d1
	bcs.s loc_2003d0
	move.w d1,(a0)+
	rts
loc_2003d0:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2003e0
	cmp.w d2,d1
	bcs.s loc_2003e0
	move.w d1,(a0)+
	rts
loc_2003e0:
	subq.w #$2,(a0)+
	rts
loc_2003e4:
	addq.w #$2,a0
	rts

sub_2003e8:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003f2:
	move.b #$12,($f62a).w
	bsr.w sub_200754
	bsr.s sub_200408
	bsr.w sub_202572
	dbf d4,loc_2003f2
	rts

sub_200408:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200418:
	bsr.s sub_200436
	dbf d0,loc_200418
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20042e:
	bsr.s sub_200436
	dbf d0,loc_20042e
	rts

sub_200436:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200472
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20044e
	addq.w #$2,(a0)+
	rts
loc_20044e:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200460
	addi.w #$20,(a0)+
	rts
loc_200460:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200472
	addi.w #$200,(a0)+
	rts
loc_200472:
	addq.w #$2,a0
	rts

sub_200476:
	lea (dat_2004e2).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_20048a:
	move.l (a2)+,(a3)+
	dbf d7,loc_20048a
	rts

sub_200492:
	lea (dat_2004e2).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004a2:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004a2
	rts
	.incbin 1194, 34
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_2004da:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004da
	rts
dat_2004e2:
	.incbin 1250, 626

sub_200754:
	move.w #$2300,sr
loc_200758:
	tst.b ($f62a).w
	bne.s loc_200758
	rts

sub_200760:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200778(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200778(pc,d0.w),d0
	rts
dat_200778:
	.incbin 1912, 640

sub_2009f8:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a54
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a12
	neg.w d3
loc_200a12:
	tst.w d4
	bpl.w loc_200a1a
	neg.w d4
loc_200a1a:
	cmp.w d3,d4
	bcc.w loc_200a2c
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a5e(pc,d4.w),d0
	bra.s loc_200a36
loc_200a2c:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a5e(pc,d3.w),d0
loc_200a36:
	tst.w d1
	bpl.w loc_200a42
	neg.w d0
	addi.w #$80,d0
loc_200a42:
	tst.w d2
	bpl.w loc_200a4e
	neg.w d0
	addi.w #$100,d0
loc_200a4e:
	movem.l (a7)+,d3-d4
	rts
loc_200a54:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a5e:
	.incbin 2654, 258

sub_200b60:
	btst.b #$3,$22(a0)
	beq.s loc_200b74
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b74:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b96
	move.b $26(a0),d0
	bpl.s loc_200b90
	subq.b #$1,d0
loc_200b90:
	addi.b #$20,d0
	bra.s loc_200ba2
loc_200b96:
	move.b $26(a0),d0
	bpl.s loc_200b9e
	addq.b #$1,d0
loc_200b9e:
	addi.b #$1f,d0
loc_200ba2:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e2c
	cmpi.b #$80,d0
	beq.w loc_200d8a
	cmpi.b #$c0,d0
	beq.w loc_200cee
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
	bsr.w sub_2010b6
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
	bsr.w sub_2010b6
	move.w (a7)+,d0
	bsr.w sub_200cc2
	tst.w d1
	beq.s loc_200c30
	bpl.s loc_200c32
	cmpi.w #$fff2,d1
	blt.s loc_200c58
	add.w d1,$c(a0)
loc_200c30:
	rts
loc_200c32:
	cmpi.w #$e,d1
	bgt.s loc_200c3e
loc_200c38:
	add.w d1,$c(a0)
	rts
loc_200c3e:
	tst.b $38(a0)
	bne.s loc_200c38
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c58:
	rts
	.incbin 3162, 34
loc_200c7c:
	rts
	.incbin 3198, 68

sub_200cc2:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cd0
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cd0:
	btst.l #$0,d2
	bne.s loc_200cdc
	move.b d2,$26(a0)
	rts
loc_200cdc:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cee:
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
	bsr.w sub_201226
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
	bsr.w sub_201226
	move.w (a7)+,d0
	bsr.w sub_200cc2
	tst.w d1
	beq.s loc_200d62
	bpl.s loc_200d64
	cmpi.w #$fff2,d1
	blt.w loc_200c7c
	add.w d1,$8(a0)
loc_200d62:
	rts
loc_200d64:
	cmpi.w #$e,d1
	bgt.s loc_200d70
loc_200d6a:
	add.w d1,$8(a0)
	rts
loc_200d70:
	tst.b $38(a0)
	bne.s loc_200d6a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d8a:
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
	bsr.w sub_2010b6
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
	bsr.w sub_2010b6
	move.w (a7)+,d0
	bsr.w sub_200cc2
	tst.w d1
	beq.s loc_200e04
	bpl.s loc_200e06
	cmpi.w #$fff2,d1
	blt.w loc_200c58
	sub.w d1,$c(a0)
loc_200e04:
	rts
loc_200e06:
	cmpi.w #$e,d1
	bgt.s loc_200e12
loc_200e0c:
	sub.w d1,$c(a0)
	rts
loc_200e12:
	tst.b $38(a0)
	bne.s loc_200e0c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e2c:
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
	bsr.w sub_201226
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
	bsr.w sub_201226
	move.w (a7)+,d0
	bsr.w sub_200cc2
	tst.w d1
	beq.s loc_200ea6
	bpl.s loc_200ea8
	cmpi.w #$fff2,d1
	blt.w loc_200c7c
	sub.w d1,$8(a0)
loc_200ea6:
	rts
loc_200ea8:
	cmpi.w #$e,d1
	bgt.s loc_200eb4
loc_200eae:
	sub.w d1,$8(a0)
	rts
loc_200eb4:
	tst.b $38(a0)
	bne.s loc_200eae
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ece:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200ee4
	andi.w #$380,d0
loc_200ee4:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f44
	bmi.s loc_200f48
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f14
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f1a
loc_200f14:
	andi.w #$7fff,$2(a0)
loc_200f1a:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f2a
	bclr.b #$6,$1(a0)
loc_200f2a:
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
loc_200f44:
	movea.l d1,a1
	rts
loc_200f48:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fb0
	btst.b #$6,$1(a0)
	bne.s loc_200f76
	cmpi.b #$14,d1
	bne.w loc_20109a
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20109a
loc_200f76:
	cmpi.b #$15,d1
	bne.s loc_200f84
	move.w #$60,d1
	bra.w loc_20109a
loc_200f84:
	cmpi.b #$1e,d1
	bne.s loc_200f92
	move.w #$61,d1
	bra.w loc_20109a
loc_200f92:
	cmpi.b #$1f,d1
	bne.s loc_200fa0
	move.w #$62,d1
	bra.w loc_20109a
loc_200fa0:
	cmpi.b #$32,d1
	bne.w loc_20109a
	move.w #$63,d1
	bra.w loc_20109a
loc_200fb0:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201016
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201000
	cmpi.b #$6,d1
	beq.s loc_201000
	tst.b ($ff1956).l
	beq.w loc_20109a
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201010
	cmpi.b #$3c,d1
	beq.s loc_201010
	cmpi.b #$37,d1
	beq.s loc_201010
	cmpi.b #$2f,d1
	beq.s loc_201010
	cmpi.b #$16,d1
	beq.s loc_201010
	bra.w loc_20109a
loc_201000:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20109a
loc_201010:
	addq.b #$1,d1
	bra.w loc_20109a
loc_201016:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201086
	cmpi.b #$3,$0(a0)
	bcc.w loc_20109a
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20109a
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20104a
	move.w #$6a,d1
	bra.s loc_20109a
loc_20104a:
	cmpi.b #$48,d1
	bne.s loc_201056
	move.w #$6b,d1
	bra.s loc_20109a
loc_201056:
	cmpi.b #$4a,d1
	bne.s loc_201062
	move.w #$6c,d1
	bra.s loc_20109a
loc_201062:
	cmpi.b #$10,d1
	bne.s loc_20106e
	move.w #$6d,d1
	bra.s loc_20109a
loc_20106e:
	cmpi.b #$63,d1
	bne.s loc_20107a
	move.w #$6e,d1
	bra.s loc_20109a
loc_20107a:
	cmpi.b #$43,d1
	bne.s loc_20109a
	move.w #$6f,d1
	bra.s loc_20109a
loc_201086:
	btst.b #$6,$1(a0)
	beq.s loc_20109a
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20109a
	move.w #$51,d1
loc_20109a:
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

sub_2010b6:
	bsr.w sub_200ece
	cmpi.l #$210000,d1
	beq.s loc_2010d0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010d0
	btst.l d5,d4
	bne.s loc_2010de
loc_2010d0:
	add.w a3,d2
	bsr.w sub_201176
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010de:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010d0
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201104
	not.w d1
	neg.b (a4)
loc_201104:
	btst.l #$c,d4
	beq.s loc_201114
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201114:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201130
	neg.w d0
loc_201130:
	tst.w d0
	beq.s loc_2010d0
	bmi.s loc_20114c
	cmpi.b #$10,d0
	beq.s loc_201168
loc_20113c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20114c:
	cmpa.w #$10,a3
	bne.s loc_20115c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20113c
loc_20115c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010d0
loc_201168:
	sub.w a3,d2
	bsr.w sub_201176
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201176:
	bsr.w sub_200ece
	cmpi.l #$210000,d1
	beq.s loc_201190
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201190
	btst.l d5,d4
	bne.s loc_20119e
loc_201190:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20119e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201190
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011c4
	not.w d1
	neg.b (a4)
loc_2011c4:
	btst.l #$c,d4
	beq.s loc_2011d4
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011d4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011f0
	neg.w d0
loc_2011f0:
	tst.w d0
	beq.s loc_201190
	bmi.s loc_201206
loc_2011f6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201206:
	cmpa.w #$10,a3
	bne.s loc_201216
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011f6
loc_201216:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201190
	not.w d1
	rts

sub_201226:
	bsr.w sub_200ece
	cmpi.l #$210000,d1
	beq.s loc_201240
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201240
	btst.l d5,d4
	bne.s loc_20124e
loc_201240:
	add.w a3,d3
	bsr.w sub_2012d6
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_20124e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201240
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20127c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20127c:
	btst.l #$b,d4
	beq.s loc_201284
	neg.b (a4)
loc_201284:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012a0
	neg.w d0
loc_2012a0:
	tst.w d0
	beq.s loc_201240
	bmi.s loc_2012bc
	cmpi.b #$10,d0
	beq.s loc_2012c8
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012bc:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201240
loc_2012c8:
	sub.w a3,d3
	bsr.w sub_2012d6
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012d6:
	bsr.w sub_200ece
	cmpi.l #$210000,d1
	beq.s loc_2012f0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012f0
	btst.l d5,d4
	bne.s loc_2012fe
loc_2012f0:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2012fe:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012f0
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20132c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20132c:
	btst.l #$b,d4
	beq.s loc_201334
	neg.b (a4)
loc_201334:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201350
	neg.w d0
loc_201350:
	tst.w d0
	beq.s loc_2012f0
	bmi.s loc_201366
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201366:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012f0
	not.w d1
	rts

sub_201376:
	rts
	.incbin 4984, 152
loc_201410:
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20142a
	tst.b ($ff0f01).l
	bne.s loc_20142a
	move.b #$1,($ff156a).l
loc_20142a:
	clr.b ($f62a).w
	clr.b ($ff158f).l
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201498
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2078dc
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201498
	move.b #$1,($ff1508).l
loc_201498:
	bset.b #$7,($f600).w
	bsr.w sub_202564
	tst.b ($ff156e).l
	bne.s loc_2014be
	btst.b #$7,($ff152e).l
	beq.s loc_2014f4
	bset.b #$0,($ff151d).l
	beq.s loc_2014ca
loc_2014be:
	bsr.w sub_2003e8
	bclr.b #$0,($ff151d).l
loc_2014ca:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201564
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014f2
	bclr.b #$7,($ff152e).l
loc_2014f2:
	rts
loc_2014f4:
	bset.b #$0,($ff151d).l
	beq.s loc_201502
	bsr.w sub_2002bc
loc_201502:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20151e
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201546
loc_20151e:
	tst.b ($ff1508).l
	bne.s loc_201564
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201546:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20154e:
	move.l #$0,(a1)+
	dbf d6,loc_20154e
	move.b #$c,($f62a).w
	bsr.w sub_200754
	rts
loc_201564:
	cmpi.w #$800,($f78e).w
	bne.s loc_20157c
	move.w #$0,($f78e).w
	move.b #$0,($ff151d).l
	rts
loc_20157c:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201592
	btst.b #$7,($ff152e).l
	beq.s loc_201598
loc_201592:
	move.l #$eee0eee,d0
loc_201598:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015a0:
	move.l d0,(a1)+
	dbf d6,loc_2015a0
loc_2015a6:
	move.b #$c,($f62a).w
	bsr.w sub_200754
	bsr.w sub_202572
	bne.s loc_2015a6
	tst.l ($f680).w
	bne.s loc_2015a6
	bsr.w sub_201a5a
	moveq #$0,d0
	lea (dat_20f6d0).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015d2
	bsr.w sub_202678
loc_2015d2:
	moveq #$1,d0
	bsr.w sub_202678
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015ee:
	move.l d0,(a1)+
	dbf d1,loc_2015ee
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201600:
	move.l d0,(a1)+
	dbf d1,loc_201600
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201610:
	move.l d0,(a1)+
	dbf d1,loc_201610
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201620:
	move.l d0,(a1)+
	dbf d1,loc_201620
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201630:
	move.l d0,(a1)+
	dbf d1,loc_201630
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20224e
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
	bsr.w sub_200492
	moveq #$3,d0
	bsr.w sub_200476
	bsr.w sub_202970
	bsr.w sub_202ac4
	bset.b #$2,($f754).w
	bsr.w sub_2034ee
	bsr.w sub_2033d8
	jsr (sub_201376).l
	bsr.w sub_201994
loc_2016b0:
	move.b #$c,($f62a).w
	bsr.w sub_200754
	bsr.w sub_202572
	bne.s loc_2016b0
	tst.l ($f680).w
	bne.s loc_2016b0
	bsr.w sub_201920
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201aba
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201714
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201714:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201756
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201756:
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
	jsr (sub_20f6ca).l
	jsr (sub_2028c8).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017ec
loc_2017e6:
	bsr.w sub_20033a
	bra.s loc_2017fa
loc_2017ec:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017e6
	bsr.w sub_20021a
loc_2017fa:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201808:
	move.b #$8,($f62a).w
	bsr.w sub_200754
	tst.b ($f7cc).w
	bne.s loc_201826
	btst.b #$7,($f605).w
	beq.s loc_201826
	eori.b #$1,($f63a).w
loc_201826:
	btst.b #$0,($f63a).w
	beq.w loc_2018a6
	bsr.w sub_201b1e
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20188a
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201808
	subq.b #$1,($ff1508).l
	bpl.s loc_201858
	clr.b ($ff1508).l
loc_201858:
	move.w #$e,d0
	jsr (sub_205b9e).l
	bsr.w sub_2078dc
	clr.b ($ff1522).l
	jsr (sub_2022d4).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022f0).l
	move.w #$1,($ff1502).l
	bra.s loc_201898
loc_20188a:
	andi.b #$70,d0
	beq.w loc_201808
	clr.b ($ff1508).l
loc_201898:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	bra.w loc_201916
loc_2018a6:
	bsr.w sub_201b64
	addq.w #$1,($ff1504).l
	jsr (sub_2078f2).l
	jsr (sub_2038f4).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201916
	tst.w ($ff1502).l
	bne.w loc_201916
	tst.w ($ff1906).l
	bne.s loc_2018ee
	cmpi.b #$6,($d024).w
	bcs.s loc_2018ee
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018f2
loc_2018ee:
	bsr.w sub_202ac4
loc_2018f2:
	jsr (sub_203a9e).l
	tst.w ($ff190e).l
	bne.s loc_201904
	bsr.w sub_200184
loc_201904:
	jsr (sub_20c142).l
	bsr.w sub_202572
	bsr.w sub_2019c6
	bra.w loc_201808
loc_201916:
	clr.b ($ff156c).l
	bra.w loc_201410

sub_201920:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201938
	move.w #$78,$30(a1)
loc_201938:
	rts
	.incbin 6458, 90

sub_201994:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019a6(pc,d0.w),($f796).w
	rts
dat_2019a6:
	.incbin 6566, 32

sub_2019c6:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019e4
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019e4:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a02
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a02:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a2a
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a2a
	move.b #$0,($ff1915).l
loc_201a2a:
	tst.b ($ff1916).l
	beq.s loc_201a58
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a58:
	rts

sub_201a5a:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a7c
	cmpi.b #$2,d0
	bne.s loc_201a7c
	add.b ($ff156a).l,d0
loc_201a7c:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a94(pc,d1.w),d0
	jmp (sub_205b9e).l
dat_201a94:
	.incbin 6804, 38

sub_201aba:
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

sub_201b1e:
	move.w #$ab,d0
	jsr (sub_20233c).l
	bset.b #$7,($f63a).w
	bne.s loc_201b62
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b48
loc_201b3e:
	move.w #$d5,d0
	jmp (sub_205b9e).l
loc_201b48:
	tst.b ($ff151f).l
	bne.s loc_201b3e
	tst.b ($ff1520).l
	bne.s loc_201b3e
	move.w #$90,d0
	jmp (sub_205b9e).l
loc_201b62:
	rts

sub_201b64:
	bclr.b #$7,($f63a).w
	beq.s loc_201b9e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b84
loc_201b7a:
	move.w #$d6,d0
	jmp (sub_205b9e).l
loc_201b84:
	tst.b ($ff151f).l
	bne.s loc_201b7a
	tst.b ($ff1520).l
	bne.s loc_201b7a
	move.w #$91,d0
	jmp (sub_205b9e).l
loc_201b9e:
	rts
loc_201ba0:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c2c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201bdc
	move.w #$700,d0
loc_201bd8:
	dbf d0,loc_201bd8
loc_201bdc:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c12(pc,d0.w),d0
	jsr dat_201c12(pc,d0.w)
loc_201bf2:
	jsr (sub_202360).l
	tst.b ($f63a).w
	bne.s loc_201c06
	bsr.w sub_202114
	bsr.w sub_202102
loc_201c06:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c12:
	.incbin 7186, 26
loc_201c2c:
	tst.b ($ff1957).l
	beq.w loc_201bf2
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bf2
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c5a
	move.w #$700,d0
loc_201c56:
	dbf d0,loc_201c56
loc_201c5a:
	move.w #$1,($f6fc).w
	jsr (sub_2022d4).l
	tst.b ($f64e).w
	bne.s loc_201c92
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cb6
loc_201c92:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cb6:
	move.w ($f624).w,(a5)
	jsr (sub_2022f0).l
	bra.w loc_201bf2
	.incbin 7364, 60
	jsr (sub_2022d4).l
	bsr.w sub_202170
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
	bsr.w sub_205ac0
	tst.b ($f767).w
	beq.s loc_201dae
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201dae:
	tst.w ($ff190e).l
	bne.s loc_201dbc
	jsr (sub_20f6ca).l
loc_201dbc:
	jsr (sub_2022f0).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202fce
	jsr (sub_2028c8).l
	bsr.w sub_2025e4
	jmp (loc_20a93c).l
	dc.b $4e,$75
	jsr (sub_2022d4).l
	bsr.w sub_202170
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
	bsr.w sub_205ac0
	tst.b ($f767).w
	beq.s loc_201ea2
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201ea2:
	jsr (sub_2022f0).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202fce
	bra.w loc_2025c8
	.incbin 7884, 16
	bsr.w sub_201fc8
	cmpi.b #$1,($ff1903).l
	bne.s loc_201efe
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201efe:
	move.w ($f624).w,(a5)
	bra.w loc_2025c8
	dc.b $4e,$b9,$00,$20,$22,$d4,$61,$00
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
	jsr (sub_2022f0).l
	lea ($d000).w,a0
	bsr.w sub_205ac0
	tst.b ($f767).w
	beq.s loc_201fba
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201fba:
	tst.w ($f614).w
	beq.w loc_201fc6
	subq.w #$1,($f614).w
loc_201fc6:
	rts

sub_201fc8:
	jsr (sub_2022d4).l
	bsr.w sub_202170
	tst.b ($f64e).w
	bne.s loc_201ffe
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202022
loc_201ffe:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202022:
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
	jmp (sub_2022f0).l
	.incbin 8304, 146

sub_202102:
	tst.b ($d02a).w
	bne.s loc_202112
	tst.w ($f786).w
	beq.s loc_202112
	addq.w #$1,($f786).w
loc_202112:
	rts

sub_202114:
	tst.w ($f780).w
	beq.s loc_20211e
	addq.w #$1,($f780).w
loc_20211e:
	tst.w ($f782).w
	beq.s loc_202128
	addq.w #$1,($f782).w
loc_202128:
	rts
	.incbin 8490, 42

sub_202154:
	bsr.w sub_2022d4
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022f0

sub_202170:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20217e
	addq.w #$2,a1

sub_20217e:
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

sub_2021ac:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202228).l,a2
	moveq #$12,d7
loc_2021c0:
	move.w (a2)+,(a0)
	dbf d7,loc_2021c0
	move.w (dat_20222a).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021e6:
	move.w d0,(a1)
	dbf d7,loc_2021e6
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202218:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202218
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202228:
	dc.b $80,$04
dat_20222a:
	.incbin 8746, 36

sub_20224e:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202270:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202270
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20229e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20229e
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022bc:
	move.l d0,(a1)+
	dbf d1,loc_2022bc
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022cc:
	move.l d0,(a1)+
	dbf d1,loc_2022cc
	rts

sub_2022d4:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022e4:
	btst.b #$0,($a11100).l
	bne.s loc_2022e4
	rts

sub_2022f0:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8958, 62

sub_20233c:
	tst.b ($f00a).w
	bne.s loc_202348
	move.b d0,($f00a).w
	rts
loc_202348:
	tst.b ($f00b).w
	bne.s loc_202354
	move.b d0,($f00b).w
	rts
loc_202354:
	tst.b ($f00c).w
	bne.s loc_20235e
	move.b d0,($f00c).w
loc_20235e:
	rts

sub_202360:
	jsr (sub_2022d4).l
	tst.b ($f00a).w
	beq.s loc_20237a
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20237a:
	tst.b ($f00b).w
	beq.s loc_20238e
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20238e:
	tst.b ($f00c).w
	beq.s loc_2023a2
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023a2:
	bra.w sub_2022f0
	.incbin 9126, 32

sub_2023c6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202488).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023e2

sub_2023d8:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20249e).l,a3
loc_2023e2:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023f0
	adda.w #$a,a3
loc_2023f0:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024b4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202410
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202410:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20245c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202438
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202438:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202446:
	lsr.w #$4,d0
loc_202448:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202456
	jmp (a3)

sub_202452:
	moveq #$0,d4
	moveq #$8,d3
loc_202456:
	dbf d0,loc_202448
	bra.s sub_202410
loc_20245c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20246a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20246a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202446
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202446
loc_202488:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202452
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202452
	rts
dat_20249e:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202452
	rts

sub_2024b4:
	move.b (a0)+,d0
loc_2024b6:
	cmpi.b #$ff,d0
	bne.s loc_2024be
	rts
loc_2024be:
	move.w d0,d7
loc_2024c0:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024b6
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
	bne.s loc_2024ee
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024c0
loc_2024ee:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2024fa:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2024fa
	bra.s loc_2024c0

sub_202506:
	movem.l a1-a2,-(a7)
	lea (dat_20f6e0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20251e:
	tst.l (a2)
	beq.s loc_202526
	addq.w #$6,a2
	bra.s loc_20251e
loc_202526:
	move.w (a1)+,d0
	bmi.s loc_202532
loc_20252a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20252a
loc_202532:
	movem.l (a7)+,a1-a2
	rts
loc_202538:
	movem.l a1-a2,-(a7)
	lea (dat_20f6e0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202564
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20255e
loc_202556:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202556
loc_20255e:
	movem.l (a7)+,a1-a2
	rts

sub_202564:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20256a:
	clr.l (a2)+
	dbf d0,loc_20256a
	rts

sub_202572:
	tst.l ($f680).w
	beq.s loc_2025c6
	tst.w ($f6f8).w
	bne.s loc_2025c6
	movea.l ($f680).w,a0
	lea (loc_202488).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202594
	adda.w #$a,a3
loc_202594:
	andi.w #$7fff,d2

sub_202598:
	move.w d2,($f6f8).w
	bsr.w sub_2024b4
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
loc_2025c6:
	rts
loc_2025c8:
	tst.w ($f6f8).w
	beq.w loc_202666
loc_2025d0:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202602

sub_2025e4:
	tst.w ($f6f8).w
	beq.s loc_202666
	tst.b ($f744).w
	bne.s loc_2025d0
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202602:
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
loc_202636:
	movea.w #$8,a5
	bsr.w sub_202452
	subq.w #$1,($f6f8).w
	beq.s loc_202668
	subq.w #$1,($f6fa).w
	bne.s loc_202636
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202666:
	rts
loc_202668:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20266e:
	move.l $6(a0),(a0)+
	dbf d0,loc_20266e
	rts

sub_202678:
	lea (dat_20f6e0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20268a:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023c6
	dbf d1,loc_20268a
	rts
	.incbin 9898, 542

sub_2028c8:
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
loc_2028e4:
	move.w dat_202948(pc,d0.w),d1
	bmi.s loc_2028f6
	cmp.w $8(a6),d1
	bcc.s loc_2028f6
	addq.w #$2,d0
	addq.b #$1,d2
	bra.s loc_2028e4
loc_2028f6:
	cmp.b ($ff156c).l,d2
	bne.s loc_202902
loc_2028fe:
	movea.l (a7)+,a6
	rts
loc_202902:
	move.b d2,($ff156c).l
	clr.l ($f680).w
	clr.w ($f6f8).w
	moveq #$0,d1
	move.b dat_20295a(pc,d2.w),d1
	moveq #$0,d0
	move.b d1,d0
	lsr.b #$2,d0
	move.w d0,d2
	addi.b #$e,d0
	bsr.w sub_202506
	move.w d2,d0
	addq.b #$4,d0
	move.w d0,d2
	jsr (sub_200492).l
	move.w d2,d0
	jsr (sub_200476).l
	lea ($a040).w,a3
	bsr.w sub_20355a
	bsr.w sub_2033f2
	bra.s loc_2028fe
dat_202948:
	.incbin 10568, 18
dat_20295a:
	.incbin 10586, 22

sub_202970:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2029cc).l,a0
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
	bra.w loc_2029f8
dat_2029cc:
	dc.b $00,$04,$00,$00,$2a,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_2029d8:
	.incbin 10712, 32
loc_2029f8:
	tst.b ($ff1522).l
	beq.s loc_202a18
	jsr (sub_2069cc).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a16
	moveq #$0,d0
loc_202a16:
	bra.s loc_202a54
loc_202a18:
	lea (dat_202a90).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202a3a
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_2029d8).l,a1
	adda.w d0,a1
	bra.s loc_202a44
loc_202a3a:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202a44:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202a54:
	subi.w #$a0,d1
	bcc.s loc_202a5c
	moveq #$0,d1
loc_202a5c:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202a66
	move.w d2,d1
loc_202a66:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202a72
	moveq #$0,d0
loc_202a72:
	cmp.w ($f72e).w,d0
	blt.s loc_202a7c
	move.w ($f72e).w,d0
loc_202a7c:
	move.w d0,($f704).w
	bsr.w sub_202a98
	lea (dat_202a94).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a90:
	dc.b $00,$40,$01,$6c
dat_202a94:
	dc.b $7f,$7f,$15,$7f

sub_202a98:
	swap d0
	lsr.l #$2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f708).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f718).w
	rts

sub_202ac4:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202ad0
	rts
loc_202ad0:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202c44
	bsr.w sub_202ce4
	bsr.w sub_203588
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202f6e
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_202f3a
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$2,d6
	bsr.w sub_202f06
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202ed6
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
	beq.w loc_202b8a
	move.w ($f718).w,d0
	neg.w d0
	moveq #$d,d6
loc_202b7c:
	move.w d0,(a1)+
	dbf d6,loc_202b7c
	bsr.w sub_202be0
	bra.w loc_202bc2
loc_202b8a:
	move.w ($f708).w,d0
	neg.w d0
	moveq #$9,d6
loc_202b92:
	move.w d0,(a1)+
	dbf d6,loc_202b92
	move.w ($f718).w,d0
	neg.w d0
	moveq #$15,d6
loc_202ba0:
	move.w d0,(a1)+
	dbf d6,loc_202ba0
	move.w ($f710).w,d0
	neg.w d0
	moveq #$3,d6
loc_202bae:
	move.w d0,(a1)+
	dbf d6,loc_202bae
	move.w ($f708).w,d0
	neg.w d0
	moveq #$b,d6
loc_202bbc:
	move.w d0,(a1)+
	dbf d6,loc_202bbc
loc_202bc2:
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202c20

sub_202be0:
	move.w ($f710).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$c,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f710).w,d3
	moveq #$2,d6
loc_202c00:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202c1c(pc,d6.w),d5
loc_202c0a:
	move.w d0,(a1)+
	dbf d5,loc_202c0a
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c00
	rts
dat_202c1c:
	dc.b $27,$03,$09,$00
loc_202c20:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c2e(pc,d2.w)
loc_202c2c:
	move.w (a2)+,d0
loc_202c2e:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c2c
	rts

sub_202c44:
	move.w ($f700).w,d4
	bsr.s sub_202c78
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202c76
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202c70
	bset.b #$2,($f754).w
	rts
loc_202c70:
	bset.b #$3,($f754).w
loc_202c76:
	rts

sub_202c78:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202c8a
	bcs.s loc_202cba
	bra.s loc_202c90
loc_202c8a:
	clr.w ($f73a).w
	rts
loc_202c90:
	cmpi.w #$10,d0
	blt.s loc_202c9a
	move.w #$10,d0
loc_202c9a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202ca8
	move.w ($f72a).w,d0
loc_202ca8:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202cba:
	cmpi.w #$fff0,d0
	bge.s loc_202cc4
	move.w #$fff0,d0
loc_202cc4:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202ca8
	move.w ($f728).w,d0
	bra.s loc_202ca8
	.incbin 11476, 16

sub_202ce4:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202cf8
	subq.w #$5,d0
loc_202cf8:
	btst.b #$1,$22(a6)
	beq.s loc_202d18
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202d64
	subi.w #$40,d0
	bcc.s loc_202d64
	tst.b ($f75c).w
	bne.s loc_202d76
	bra.s loc_202d24
loc_202d18:
	sub.w ($f73e).w,d0
	bne.s loc_202d2a
	tst.b ($f75c).w
	bne.s loc_202d76
loc_202d24:
	clr.w ($f73c).w
	rts
loc_202d2a:
	cmpi.w #$60,($f73e).w
	bne.s loc_202d52
	move.w $14(a6),d1
	bpl.s loc_202d3a
	neg.w d1
loc_202d3a:
	cmpi.w #$800,d1
	bcc.s loc_202d64
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202dc4
	cmpi.w #$fffa,d0
	blt.s loc_202d8e
	bra.s loc_202d7c
loc_202d52:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202dc4
	cmpi.w #$fffe,d0
	blt.s loc_202d8e
	bra.s loc_202d7c
loc_202d64:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202dc4
	cmpi.w #$fff0,d0
	blt.s loc_202d8e
	bra.s loc_202d7c
loc_202d76:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202d7c:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202dce
	bra.w loc_202d9a
loc_202d8e:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d9a:
	cmp.w ($f72c).w,d1
	bgt.s loc_202df2
	cmpi.w #$ff00,d1
	bgt.s loc_202dbe
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202df2
loc_202dbe:
	move.w ($f72c).w,d1
	bra.s loc_202df2
loc_202dc4:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202dce:
	cmp.w ($f72e).w,d1
	blt.s loc_202df2
	subi.w #$800,d1
	bcs.s loc_202dee
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202df2
loc_202dee:
	move.w ($f72e).w,d1
loc_202df2:
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
	bne.s loc_202e34
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e2e
	bset.b #$0,($f754).w
	rts
loc_202e2e:
	bset.b #$1,($f754).w
loc_202e34:
	rts
	.incbin 11830, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202ed4
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202ece
	bset.b #$4,($f756).w
	rts
loc_202ece:
	bset.b #$5,($f756).w
loc_202ed4:
	rts

sub_202ed6:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f04
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202efe
	bset.b #$0,($f756).w
	rts
loc_202efe:
	bset.b #$1,($f756).w
loc_202f04:
	rts

sub_202f06:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f38
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f32
	bset.b d6,($f756).w
	bra.s loc_202f38
loc_202f32:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202f38:
	rts

sub_202f3a:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202f6c
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202f66
	bset.b d6,($f758).w
	bra.s loc_202f6c
loc_202f66:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202f6c:
	rts

sub_202f6e:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202fa0
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f9a
	bset.b d6,($f75a).w
	bra.s loc_202fa0
loc_202f9a:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202fa0:
	rts
	.incbin 12194, 44

sub_202fce:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20308c
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203172
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203174
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20308a
	bclr.b #$0,(a2)
	beq.s loc_203040
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203176
loc_203040:
	bclr.b #$1,(a2)
	beq.s loc_20305a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a0
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203176
loc_20305a:
	bclr.b #$2,(a2)
	beq.s loc_203070
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031cc
loc_203070:
	bclr.b #$3,(a2)
	beq.s loc_20308a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2033a0
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2031cc
loc_20308a:
	rts

sub_20308c:
	lea (dat_203464).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_2030a8
	bclr.b #$1,(a2)
	beq.s loc_2030f2
	move.w #$e0,d4
loc_2030a8:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203122(pc,d0.w),a3
	beq.s loc_2030da
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a0
	movem.l (a7)+,d4-d5
	bsr.w sub_203176
	movea.l (a7)+,a0
	bra.s loc_2030f2
loc_2030da:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a2
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031a2
	movea.l (a7)+,a0
loc_2030f2:
	tst.b (a2)
	bne.s loc_2030f8
	rts
loc_2030f8:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20310c
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20310c:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203132
dat_203122:
	.incbin 12578, 16
loc_203132:
	moveq #$f,d6
	move.l #$800000,d7
loc_20313a:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203166
	btst.b d0,(a2)
	beq.s loc_203166
	add.w d0,d0
	movea.l dat_203122(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203278
	movem.l (a7)+,d4-d5
	bsr.w sub_2033a0
	bsr.w sub_2031fa
	movem.l (a7)+,d4-d5/a0
loc_203166:
	addi.w #$10,d4
	dbf d6,loc_20313a
	clr.b (a2)
	rts

sub_203172:
	rts

sub_203174:
	rts

sub_203176:
	moveq #$15,d6

sub_203178:
	move.l #$800000,d7
	move.l d0,d1
loc_203180:
	movem.l d4-d5,-(a7)
	bsr.w sub_203278
	move.l d1,d0
	bsr.w sub_2031fa
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203180
	rts

sub_2031a2:
	move.l #$800000,d7
	move.l d0,d1
loc_2031aa:
	movem.l d4-d5,-(a7)
	bsr.w sub_20327a
	move.l d1,d0
	bsr.w sub_2031fa
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031aa
	rts

sub_2031cc:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2031d6:
	movem.l d4-d5,-(a7)
	bsr.w sub_203278
	move.l d1,d0
	bsr.w sub_2031fa
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2031d6
	rts

sub_2031fa:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203236
	btst.b #$3,(a0)
	bne.s loc_203216
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203216:
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
loc_203236:
	btst.b #$3,(a0)
	bne.s loc_203258
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
loc_203258:
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

sub_203278:
	add.w (a3),d5

sub_20327a:
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
	beq.s loc_2032c8
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
loc_2032c8:
	rts
	.incbin 13002, 214

sub_2033a0:
	add.w (a3),d5

sub_2033a2:
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
	.incbin 13244, 28

sub_2033d8:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20340e

sub_2033f2:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203436

sub_20340e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203412:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2033a0
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203178
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203412
	rts
loc_203436:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20343a:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203464).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_2034b6
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20343a
	rts
dat_203464:
	.incbin 13412, 66
dat_2034a6:
	.incbin 13478, 16

sub_2034b6:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2034a6(pc,d0.w),a3
	beq.s loc_2034d8
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a0
	movem.l (a7)+,d4-d5
	bsr.w sub_203176
	bra.s loc_2034ec
loc_2034d8:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033a2
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031a2
loc_2034ec:
	rts

sub_2034ee:
	moveq #$0,d0
	lea (dat_20f6d0).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023d8
	movea.l (a2)+,a0
	bsr.w sub_20353a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200476
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203538
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203538
	bsr.w sub_202506
loc_203538:
	rts

sub_20353a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203544:
	move.l d0,(a3)+
	dbf d1,loc_203544
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20355a
	lea ($a040).w,a3
	moveq #$2,d1

sub_20355a:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237954).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203574:
	move.w d1,d0
	movea.l a3,a0
loc_203578:
	move.b (a1)+,(a0)+
	dbf d0,loc_203578
	lea $80(a3),a3
	dbf d2,loc_203574
	rts

sub_203588:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203602(pc,d0.w),d0
	jsr dat_203602(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2035ae
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2035ae:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2035dc
	bcc.s loc_2035de
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2035d2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2035d2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2035dc:
	rts
loc_2035de:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2035f6
	btst.b #$1,($d022).w
	beq.s loc_2035f6
	add.w d1,d1
	add.w d1,d1
loc_2035f6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203602:
	.incbin 13826, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203752(pc,d0.w),d0
	jmp dat_203752(pc,d0.w)
dat_203752:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$310,($f726).w
	rts
	.incbin 14176, 404

sub_2038f4:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2038fc:
	move.b (a0),d0
	beq.s loc_203912
	add.w d0,d0
	add.w d0,d0
	lea (dat_203d16).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203912:
	lea $40(a0),a0
	dbf d7,loc_2038fc
	rts

sub_20391c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20395a
	bpl.s loc_20394c
	btst.b #$1,$2c(a0)
	beq.s loc_20394c
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20395a
loc_20394c:
	btst.b #$2,$2c(a0)
	bne.s loc_20395a
	addi.w #$38,$12(a0)
loc_20395a:
	tst.w $12(a0)
	bmi.s loc_20396e
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20396e
	move.w #$1000,$12(a0)
loc_20396e:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20397e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2039ba
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2039ba
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2039b8
	neg.w d1
loc_2039b8:
	add.w d1,d0
loc_2039ba:
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

sub_2039d4:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203a44
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a60
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203a60
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203a1e
	cmpi.w #$800,d3
	bcs.s loc_203a30
	subi.w #$800,d3
	bra.s loc_203a30
loc_203a1e:
	cmpi.w #$700,($f704).w
	bcs.s loc_203a30
	cmpi.w #$100,d3
	bcc.s loc_203a30
	addi.w #$800,d3
loc_203a30:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a60
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203a60
loc_203a44:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203a60
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203a60:
	rts
	.incbin 14946, 30

sub_203a80:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203a86:
	move.l d1,(a1)+
	dbf d0,loc_203a86
	rts
dat_203a8e:
	.incbin 14990, 16

sub_203a9e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203aaa:
	tst.w (a4)
	beq.w loc_203b6a
	moveq #$2,d6
loc_203ab2:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203b62
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203b18
	movea.l dat_203a8e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203afc
	cmpi.w #$800,d2
	bcs.s loc_203b0e
	subi.w #$800,d2
	bra.s loc_203b0e
loc_203afc:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b0e
	cmpi.w #$100,d2
	bcc.s loc_203b0e
	addi.w #$800,d2
loc_203b0e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203b3a
loc_203b18:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203b3a
	.incbin 15138, 24
loc_203b3a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203b58
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1

sub_203b52:
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203b5c
loc_203b58:
	bsr.w sub_203b8c
loc_203b5c:
	bset.b #$7,$1(a0)
loc_203b62:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203ab2
loc_203b6a:
	lea $80(a4),a4
	dbf d7,loc_203aaa
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203b84
	move.l #$0,(a2)
	rts
loc_203b84:
	move.b #$0,-$5(a2)
	rts

sub_203b8c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203bd2
	btst.l #$1,d4
	bne.w loc_203c20
loc_203b9e:
	cmpi.b #$50,d5
	beq.s loc_203bd0
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
	bne.s loc_203bca
	addq.w #$1,d0
loc_203bca:
	move.w d0,(a2)+
	dbf d1,loc_203b9e
loc_203bd0:
	rts
loc_203bd2:
	btst.l #$1,d4
	bne.w loc_203c66
loc_203bda:
	cmpi.b #$50,d5
	beq.s loc_203c1e
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
	bne.s loc_203c18
	addq.w #$1,d0
loc_203c18:
	move.w d0,(a2)+
	dbf d1,loc_203bda
loc_203c1e:
	rts
loc_203c20:
	cmpi.b #$50,d5
	beq.s loc_203c64
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
	bne.s loc_203c5e
	addq.w #$1,d0
loc_203c5e:
	move.w d0,(a2)+
	dbf d1,loc_203c20
loc_203c64:
	rts
loc_203c66:
	cmpi.b #$50,d5
	beq.s loc_203cb8
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
	bne.s loc_203cb2
	addq.w #$1,d0
loc_203cb2:
	move.w d0,(a2)+
	dbf d1,loc_203c66
loc_203cb8:
	rts
	.incbin 15546, 92
dat_203d16:
	.incbin 15638, 246

sub_203e0c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203e1e
	move.w #$0,(a1)
	rts
loc_203e1e:
	tst.w (a1)
	bne.s loc_203e28
	move.b #$1,$1(a1)
loc_203e28:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203e72
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203e64
	neg.w $10(a0)
loc_203e64:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205b9e
loc_203e72:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203e90
	cmpa.w #$d040,a0
	beq.s loc_203e90
	tst.b ($ff1906).l
	beq.s loc_203e90
	jmp (loc_207302).l
loc_203e90:
	move.b $2a(a0),d0
	beq.s loc_203eba
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203eac
	cmpi.b #$2d,d0
	bcs.s loc_203eb6
	move.b #$2d,d0
	bra.s loc_203eb6
loc_203eac:
	cmpi.b #$1e,d0
	bcs.s loc_203eb6
	move.b #$1e,d0
loc_203eb6:
	move.b d0,$2a(a0)
loc_203eba:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203ec8(pc,d0.w),d1
	jmp dat_203ec8(pc,d1.w)
dat_203ec8:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203ed2:
	tst.b ($d300).w
	bne.s loc_203f10
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f10:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203f38
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203f38:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203f6c:
	tst.b ($ff1506).l
	bne.s loc_203fd2
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203fd2
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203fd6
	cmpi.b #$2f,d1
	bne.s loc_203fd4
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203fd2
	tst.b $2c(a0)
	beq.s loc_203fd2
	jsr (sub_207aee).l
	bne.s loc_203fd2
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203fca
	moveq #$0,d0
loc_203fca:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203fd2:
	rts
loc_203fd4:
	rts

sub_203fd6:
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

sub_203ffc:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204008
	neg.w d0
loc_204008:
	btst.b #$1,$2c(a0)
	beq.s loc_204018
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204040
loc_204018:
	cmpi.w #$600,d0
	bcs.s loc_204040
	tst.w $14(a0)
	bpl.s loc_204032
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20404e
	move.w #$e0,d1
	bra.s loc_20404e
loc_204032:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20404e
	move.w #$60,d1
	bra.s loc_20404e
loc_204040:
	cmpi.w #$a0,d1
	beq.s loc_20404e
	bcc.s loc_20404c
	addq.w #$2,d1
	bra.s loc_20404e
loc_20404c:
	subq.w #$2,d1
loc_20404e:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203ffc
	bsr.w sub_203f6c
	tst.w ($ff1588).l
	beq.s loc_204074
	btst.b #$4,($f605).w
	beq.s loc_204074
	move.b #$1,($ff1906).l
	rts
loc_204074:
	tst.b ($f7cc).w
	bne.s loc_204080
	move.w ($f604).w,($f602).w
loc_204080:
	btst.b #$0,$2c(a0)
	beq.s loc_2040a4
	cmpi.b #$6,($ff1506).l
	bne.s loc_20409e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2040bc
loc_20409e:
	bsr.w sub_204386
	bra.s loc_2040bc
loc_2040a4:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204102(pc,d0.w),d1
	jsr dat_204102(pc,d1.w)
	jsr (sub_206656).l
loc_2040bc:
	bsr.s sub_204110
	bsr.w sub_2041d0
	bsr.w sub_2041ea
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2040e4
	tst.b $1c(a0)
	bne.s loc_2040e4
	move.b $1d(a0),$1c(a0)
loc_2040e4:
	bsr.w sub_20558e
	tst.b $2c(a0)
	bmi.s loc_2040fc
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2040fc
	jsr (sub_206e9c).l
loc_2040fc:
	bsr.w sub_205444
	rts
dat_204102:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204110:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204134
	move.w $30(a0),d0
	beq.s loc_204126
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204134
loc_204126:
	btst.b #$6,$2c(a0)
	bne.s loc_204134
	jsr (sub_2039d4).l
loc_204134:
	tst.b ($ff151f).l
	beq.s loc_204178
	tst.w $32(a0)
	beq.s loc_204178
	subq.w #$1,$32(a0)
	bne.s loc_204178
	tst.b ($ff1520).l
	bne.s loc_204170
	tst.b ($ff1958).l
	bne.s loc_204170
	tst.b ($ff152e).l
	bne.s loc_20416a
	move.w #$e,d0
	jsr (sub_205b9e).l
loc_20416a:
	jsr (sub_201a5a).l
loc_204170:
	move.b #$0,($ff151f).l
loc_204178:
	tst.b ($ff1520).l
	beq.s loc_2041ce
	tst.w $34(a0)
	beq.s loc_2041ce
	subq.w #$1,$34(a0)
	bne.s loc_2041ce
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2041c6
	tst.b ($ff1958).l
	bne.s loc_2041c6
	tst.b ($ff152e).l
	bne.s loc_2041c0
	move.w #$e,d0
	jsr (sub_205b9e).l
loc_2041c0:
	jsr (sub_201a5a).l
loc_2041c6:
	move.b #$0,($ff1520).l
loc_2041ce:
	rts

sub_2041d0:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2041ea:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2041f6
loc_2041f4:
	rts
loc_2041f6:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204208
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2041f4
loc_204208:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20424c
	bset.b #$6,$22(a0)
	bne.s loc_2041f4
	bsr.w sub_205ea2
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2041f4
	bra.s loc_204284
loc_20424c:
	tst.w $12(a0)
	beq.s loc_204254
	bpl.s loc_2041f4
loc_204254:
	bclr.b #$6,$22(a0)
	beq.s loc_2041f4
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2041f4
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204284
	move.w #$f000,$12(a0)
loc_204284:
	jsr (sub_207aee).l
	bne.s loc_204298
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204298:
	rts

sub_20429a:
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
	bcs.s loc_204374
	move.l #$50000,d0
loc_204374:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204386:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2043ac
	tst.b ($ff152e).l
	beq.s loc_2043a2
	cmpi.b #$2,($ff152e).l
	bne.s loc_2043ac
loc_2043a2:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20445c
loc_2043ac:
	tst.b $2a(a0)
	bne.w loc_20446a
	tst.b ($f784).w
	beq.w loc_20446a
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2043ca
	neg.w d0
loc_2043ca:
	tst.w ($f786).w
	bne.s loc_2043d6
	move.w #$1,($f786).w
loc_2043d6:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2043ec
	move.b #$1,($ff1502).l
	bra.w loc_205b9a
loc_2043ec:
	cmpi.w #$d2,d1
	bcs.s loc_204440
	cmpi.b #$2,($ff1522).l
	beq.s loc_20443e
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204416
	move.w #$82,d0
	jsr (sub_205b9e).l
	moveq #$0,d0
loc_204416:
	add.b ($f784).w,d0
	bpl.s loc_204420
	moveq #$0,d0
	bra.s loc_204428
loc_204420:
	cmpi.b #$3,d0
	bcs.s loc_204428
	moveq #$2,d0
loc_204428:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20429a
	move.b #$2,($ff1522).l
loc_20443e:
	rts
loc_204440:
	cmpi.w #$5a,d1
	bcc.s loc_204458
	cmp.w d2,d0
	bcc.w loc_203ed2
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204458:
	cmp.w d2,d0
	bcc.s loc_20446a
loc_20445c:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20446a:
	rts
	bsr.w sub_203e0c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20449c
	tst.b ($ff195b).l
	beq.s loc_20448a
	cmpi.b #$79,$1a(a0)
	bne.s loc_2044c6
	bra.s loc_204492
loc_20448a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2044c6
loc_204492:
	bsr.w sub_204d2e
	jmp (sub_20391c).l
loc_20449c:
	bsr.w sub_204574
	bsr.w sub_204386
	bsr.w sub_204e18
	bsr.w sub_204f44
	bsr.w sub_2045e8
	bsr.w sub_204d9a
	bsr.w sub_204d2e
	jsr (sub_20397e).l
	bsr.w sub_200b60
	bsr.w sub_204fc2
loc_2044c6:
	rts
	tst.b ($f7c7).w
	bne.s loc_2044e2
	cmpi.b #$15,$1c(a0)
	beq.s loc_2044e2
	tst.w $12(a0)
	bmi.s loc_2044e2
	move.b #$0,$1c(a0)
loc_2044e2:
	bsr.w sub_204574
	bsr.w sub_204386
	bsr.w sub_204f02
	bsr.w sub_204c4e
	bsr.w sub_204d2e
	jsr (sub_20391c).l
	btst.b #$6,$22(a0)
	beq.s loc_20450a
	subi.w #$28,$12(a0)
loc_20450a:
	bsr.w sub_20500c
	bsr.w sub_205030
	rts
	bsr.w sub_204574
	bsr.w sub_204386
	bsr.w sub_204e18
	bsr.w sub_204f80
	bsr.w sub_204a88
	bsr.w sub_204d2e
	tst.b $2a(a0)
	bne.s loc_204538
	jsr (sub_20397e).l
loc_204538:
	bsr.w sub_200b60
	bsr.w sub_204fc2
	rts
	bsr.w sub_204574
	bsr.w sub_204386
	bsr.w sub_204f02
	bsr.w sub_204c4e
	bsr.w sub_204d2e
	jsr (sub_20391c).l
	btst.b #$6,$22(a0)
	beq.s loc_20456a
	subi.w #$28,$12(a0)
loc_20456a:
	bsr.w sub_20500c
	bsr.w sub_205030
	rts

sub_204574:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2045e0
	tst.w ($ff1506).l
	bne.s loc_2045e0
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2045e2).l,a2
loc_2045a8:
	move.b (a2)+,d0
	bmi.s loc_2045b8
	cmp.b d0,d1
	bne.s loc_2045a8
	bset.b #$1,$2c(a0)
	rts
loc_2045b8:
	bclr.b #$1,$2c(a0)
	beq.s loc_2045e0
	tst.w $12(a0)
	bpl.s loc_2045e0
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2045e0
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2045e0
	neg.w $10(a0)
loc_2045e0:
	rts
dat_2045e2:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2045e8:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204912
	tst.w $3e(a0)
	bne.w loc_2048c2
	btst.b #$2,($f602).w
	beq.s loc_204610
	bsr.w sub_2049a2
loc_204610:
	btst.b #$3,($f602).w
	beq.s loc_20461c
	bsr.w sub_204a18
loc_20461c:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2048c2
	tst.w $14(a0)
	beq.s loc_20463c
	tst.b $2a(a0)
	beq.w loc_2048c2
	bra.s loc_204648
loc_20463c:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204648:
	btst.b #$3,$22(a0)
	beq.s loc_20469a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2046f2
	cmpi.b #$1e,$0(a1)
	bne.s loc_20467a
	move.b #$0,$1c(a0)
	bra.w loc_2048c2
loc_20467a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2046d6
	cmp.w d2,d1
	bge.s loc_2046c4
	bra.s loc_2046f2
loc_20469a:
	jsr (sub_206c00).l
	cmpi.w #$c,d1
	blt.s loc_2046f2
	move.w #$ab,d0
	jsr (sub_20233c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2046ce
loc_2046c4:
	btst.b #$0,$22(a0)
	bne.s loc_2046de
	bra.s loc_2046e8
loc_2046ce:
	cmpi.b #$3,$37(a0)
	bne.s loc_2046f2
loc_2046d6:
	btst.b #$0,$22(a0)
	bne.s loc_2046e8
loc_2046de:
	move.b #$32,$1c(a0)
	bra.w loc_2048c2
loc_2046e8:
	move.b #$6,$1c(a0)
	bra.w loc_2048c2
loc_2046f2:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204706
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204706:
	btst.b #$7,($f788).w
	bne.w loc_20480a
	btst.b #$6,($f788).w
	bne.w loc_20482a
	btst.b #$1,($f602).w
	bne.w loc_20482a
	andi.b #$f,($f788).w
	beq.s loc_20473e
	btst.b #$0,($f603).w
	beq.s loc_204752
	bset.b #$7,($f788).w
	bra.w loc_2048e6
loc_20473e:
	btst.b #$0,($f603).w
	beq.w loc_204752
	move.b #$1,($f788).w
	bra.w loc_2048e6
loc_204752:
	btst.b #$0,($f602).w
	beq.s loc_2047ce
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2047b0
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204782
	asr.w #$1,d2
	sub.w d2,d1
loc_204782:
	btst.b #$0,$22(a0)
	beq.s loc_20478e
	neg.w d0
	neg.w d1
loc_20478e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2047a4
	cmp.w d0,d1
	ble.s loc_2047aa
	bra.s loc_2047a8
loc_2047a4:
	cmp.w d1,d0
	ble.s loc_2047aa
loc_2047a8:
	move.w d1,d0
loc_2047aa:
	move.w d0,$14(a0)
	rts
loc_2047b0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047ca
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20233c).l
loc_2047ca:
	bra.w loc_2048e6
loc_2047ce:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2047ee
	move.w #$ab,d0
	jsr (sub_20233c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20482a
loc_2047ee:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20233c).l
	bra.w loc_2048c2
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20480a:
	btst.b #$0,($f602).w
	beq.s loc_20482a
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2048e6
	addq.w #$2,($f73e).w
	bra.w loc_2048e6
loc_20482a:
	btst.b #$6,($f788).w
	bne.w loc_2048a6
	andi.b #$f,($f788).w
	beq.s loc_20484e
	btst.b #$1,($f603).w
	beq.s loc_204860
	bset.b #$6,($f788).w
	bra.w loc_2048e6
loc_20484e:
	btst.b #$1,($f603).w
	beq.s loc_204860
	move.b #$1,($f788).w
	bra.w loc_2048e6
loc_204860:
	btst.b #$1,($f602).w
	beq.s loc_2048c2
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2048a4
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048a4
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204896
	neg.w $14(a0)
loc_204896:
	move.w #$9c,d0
	jsr (sub_20233c).l
	bsr.w sub_204dc2
loc_2048a4:
	bra.s loc_2048e6
loc_2048a6:
	btst.b #$1,($f602).w
	beq.s loc_2048c2
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2048e6
	subq.w #$2,($f73e).w
	bra.s loc_2048e6
loc_2048c2:
	cmpi.w #$60,($f73e).w
	bne.s loc_2048dc
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2048e6
	move.b #$0,($f788).w
	bra.s loc_2048e6
loc_2048dc:
	bcc.s loc_2048e2
	addq.w #$4,($f73e).w
loc_2048e2:
	subq.w #$2,($f73e).w
loc_2048e6:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204912
	move.w $14(a0),d0
	beq.s loc_204912
	bmi.s loc_204906
	sub.w d5,d0
	bcc.s loc_204900
	move.w #$0,d0
loc_204900:
	move.w d0,$14(a0)
	bra.s loc_204912
loc_204906:
	add.w d5,d0
	bcc.s loc_20490e
	move.w #$0,d0
loc_20490e:
	move.w d0,$14(a0)
loc_204912:
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204930:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2049a0
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2049a0
	bmi.s loc_204948
	neg.w d1
loc_204948:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206ac0
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2049a0
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20499c
	cmpi.b #$40,d0
	beq.s loc_20498a
	cmpi.b #$80,d0
	beq.s loc_204984
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204984:
	sub.w d1,$12(a0)
	rts
loc_20498a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20499c:
	add.w d1,$12(a0)
loc_2049a0:
	rts

sub_2049a2:
	tst.b $2a(a0)
	bne.s loc_204a16
	move.w $14(a0),d0
	beq.s loc_2049b0
	bpl.s loc_2049e0
loc_2049b0:
	bset.b #$0,$22(a0)
	bne.s loc_2049c4
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2049c4:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2049d4
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2049d4
	move.w d1,d0
loc_2049d4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2049e0:
	sub.w d4,d0
	bcc.s loc_2049e8
	move.w #$ff80,d0
loc_2049e8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a16
	cmpi.w #$400,d0
	blt.s loc_204a16
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20233c).l
loc_204a16:
	rts

sub_204a18:
	tst.b $2a(a0)
	bne.s loc_204a86
	move.w $14(a0),d0
	bmi.s loc_204a50
	bclr.b #$0,$22(a0)
	beq.s loc_204a38
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a38:
	cmp.w d6,d0
	bge.s loc_204a44
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204a44
	move.w d6,d0
loc_204a44:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a50:
	add.w d4,d0
	bcc.s loc_204a58
	move.w #$80,d0
loc_204a58:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a86
	cmpi.w #$fc00,d0
	bgt.s loc_204a86
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20233c).l
loc_204a86:
	rts

sub_204a88:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204bd2
	tst.w $3e(a0)
	bne.s loc_204ac0
	btst.b #$2,($f602).w
	beq.s loc_204ab4
	bsr.w sub_204c08
loc_204ab4:
	btst.b #$3,($f602).w
	beq.s loc_204ac0
	bsr.w sub_204c2c
loc_204ac0:
	tst.b $2a(a0)
	beq.w loc_204b6a
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ae0
	asr.w #$1,d2
	sub.w d2,d1
loc_204ae0:
	btst.b #$0,$22(a0)
	beq.s loc_204aec
	neg.w d0
	neg.w d1
loc_204aec:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b02
	cmp.w d0,d1
	ble.s loc_204b08
	bra.s loc_204b06
loc_204b02:
	cmp.w d1,d0
	ble.s loc_204b08
loc_204b06:
	move.w d1,d0
loc_204b08:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204b3c
	rts
loc_204b16:
	move.w #$ab,d0
	jsr (sub_20233c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204b9c
loc_204b3c:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204b16
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20233c).l
	btst.b #$0,$22(a0)
	bne.s loc_204b62
	bsr.w sub_204c2c
	bra.s loc_204b6a
loc_204b62:
	bsr.w sub_204c08
	bra.s loc_204b6a
	dc.b $4e,$75
loc_204b6a:
	move.w $14(a0),d0
	beq.s loc_204b8c
	bmi.s loc_204b80
	sub.w d5,d0
	bcc.s loc_204b7a
	move.w #$0,d0
loc_204b7a:
	move.w d0,$14(a0)
	bra.s loc_204b8c
loc_204b80:
	add.w d5,d0
	bcc.s loc_204b88
	move.w #$0,d0
loc_204b88:
	move.w d0,$14(a0)
loc_204b8c:
	tst.w $14(a0)
	bne.s loc_204bd2
	move.w #$ab,d0
	jsr (sub_20233c).l
loc_204b9c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204bbc
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204bcc
loc_204bbc:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204bcc:
	move.b #$5,$1c(a0)
loc_204bd2:
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204bf6
	move.w #$1000,d1
loc_204bf6:
	cmpi.w #$f000,d1
	bge.s loc_204c00
	move.w #$f000,d1
loc_204c00:
	move.w d1,$10(a0)
	bra.w loc_204930

sub_204c08:
	move.w $14(a0),d0
	beq.s loc_204c10
	bpl.s loc_204c1e
loc_204c10:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c1e:
	sub.w d4,d0
	bcc.s loc_204c26
	move.w #$ff80,d0
loc_204c26:
	move.w d0,$14(a0)
	rts

sub_204c2c:
	move.w $14(a0),d0
	bmi.s loc_204c40
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c40:
	add.w d4,d0
	bcc.s loc_204c48
	move.w #$80,d0
loc_204c48:
	move.w d0,$14(a0)
	rts

sub_204c4e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204c88
	tst.w ($ff1506).l
	bne.s loc_204c88
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204c80
	cmpi.w #$840,$8(a0)
	bcc.s loc_204c80
	rts
loc_204c80:
	btst.b #$1,$2c(a0)
	bne.s loc_204cb8
loc_204c88:
	btst.b #$2,($f602).w
	beq.s loc_204ca2
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204ca2
	move.w d1,d0
loc_204ca2:
	btst.b #$3,($f602).w
	beq.s loc_204cb8
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204cb8
	move.w d6,d0
loc_204cb8:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204cce
	bcc.s loc_204cca
	addq.w #$4,($f73e).w
loc_204cca:
	subq.w #$2,($f73e).w
loc_204cce:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204cfc
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204cfc
	bmi.s loc_204cf0
	sub.w d1,d0
	bcc.s loc_204cea
	move.w #$0,d0
loc_204cea:
	move.w d0,$10(a0)
	rts
loc_204cf0:
	sub.w d1,d0
	bcs.s loc_204cf8
	move.w #$0,d0
loc_204cf8:
	move.w d0,$10(a0)
loc_204cfc:
	rts
	.incbin 19710, 48

sub_204d2e:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204d82
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204d5c
	addi.w #$38,d0
loc_204d5c:
	cmp.w d1,d0
	bls.s loc_204d82
loc_204d60:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204d70
	rts
loc_204d70:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_20712e
	move.b #$6,$24(a0)
	rts
loc_204d82:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204d60

sub_204d9a:
	tst.b ($f7ca).w
	bne.s loc_204dc0
	move.w $14(a0),d0
	bpl.s loc_204da8
	neg.w d0
loc_204da8:
	cmpi.w #$80,d0
	bcs.s loc_204dc0
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204dc0
	btst.b #$1,($f602).w
	bne.s sub_204dc2
loc_204dc0:
	rts

sub_204dc2:
	btst.b #$2,$22(a0)
	beq.s loc_204dcc
	bra.s loc_204dfc
loc_204dcc:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204dec
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204dfc
loc_204dec:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204dfc:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204e16
	cmpi.w #$200,$14(a0)
	bcc.s loc_204e16
	move.w #$200,$14(a0)
loc_204e16:
	rts

sub_204e18:
	tst.b $2a(a0)
	beq.s loc_204e20
	rts
loc_204e20:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204e32
	tst.w $14(a0)
	beq.w loc_204ef8
loc_204e32:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204ef8
	btst.b #$3,$22(a0)
	beq.s loc_204e4e
	jsr (sub_205b24).l
	beq.s loc_204e7e
loc_204e4e:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206b2a
	cmpi.w #$6,d1
	blt.w loc_204ef8
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204e74
	move.w #$380,d2
loc_204e74:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204e7e:
	jsr (sub_200760).l
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
	jsr (sub_20233c).l
	btst.b #$2,$22(a0)
	bne.s loc_204efa
	tst.b ($ff195b).l
	beq.s loc_204edc
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204eec
loc_204edc:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204eec:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204ef8:
	rts
loc_204efa:
	bset.b #$4,$22(a0)
	rts

sub_204f02:
	tst.b $3c(a0)
	beq.s loc_204f34
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204f18
	move.w #$fe00,d1
loc_204f18:
	cmp.w $12(a0),d1
	ble.s loc_204f32
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204f32
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204f32:
	rts
loc_204f34:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204f42
	move.w #$f040,$12(a0)
loc_204f42:
	rts

sub_204f44:
	tst.b $2a(a0)
	bne.s loc_204f7e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f7e
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204f7e
	bmi.s loc_204f7a
	tst.w d0
	beq.s loc_204f78
	add.w d0,$14(a0)
loc_204f78:
	rts
loc_204f7a:
	add.w d0,$14(a0)
loc_204f7e:
	rts

sub_204f80:
	tst.b $2a(a0)
	bne.s loc_204fc0
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204fc0
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204fb6
	tst.w d0
	bpl.s loc_204fb0
	asr.l #$2,d0
loc_204fb0:
	add.w d0,$14(a0)
	rts
loc_204fb6:
	tst.w d0
	bmi.s loc_204fbc
	asr.l #$2,d0
loc_204fbc:
	add.w d0,$14(a0)
loc_204fc0:
	rts

sub_204fc2:
	nop
	tst.b $38(a0)
	bne.s loc_205004
	tst.w $3e(a0)
	bne.s loc_205006
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205004
	move.w $14(a0),d0
	bpl.s loc_204fe6
	neg.w d0
loc_204fe6:
	cmpi.w #$280,d0
	bcc.s loc_205004
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205004:
	rts
loc_205006:
	subq.w #$1,$3e(a0)
	rts

sub_20500c:
	btst.b #$1,$2c(a0)
	bne.s loc_20502e
	move.b $26(a0),d0
	beq.s loc_20502e
	bpl.s loc_205024
	addq.b #$2,d0
	bcc.s loc_205022
	moveq #$0,d0
loc_205022:
	bra.s loc_20502a
loc_205024:
	subq.b #$2,d0
	bcc.s loc_20502a
	moveq #$0,d0
loc_20502a:
	move.b d0,$26(a0)
loc_20502e:
	rts

sub_205030:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009f8).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205114
	cmpi.b #$80,d0
	beq.w loc_205176
	cmpi.b #$c0,d0
	beq.w loc_2051d2
	bsr.w sub_206e40
	tst.w d1
	bpl.s loc_205082
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205082:
	bsr.w sub_206ca2
	tst.w d1
	bpl.s loc_205094
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205094:
	bsr.w sub_206b52
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205112
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2050b2
	cmp.b d2,d0
	blt.s loc_205112
loc_2050b2:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205234
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050f0
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2050e2
	asr.w $12(a0)
	bra.s loc_205104
loc_2050e2:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2050f0:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205104
	move.w #$fc0,$12(a0)
loc_205104:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205112
	neg.w $14(a0)
loc_205112:
	rts
loc_205114:
	bsr.w sub_206e40
	tst.w d1
	bpl.s loc_20512e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20512e:
	bsr.w sub_206cfa
	tst.w d1
	bpl.s loc_205148
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205146
	move.w #$0,$12(a0)
loc_205146:
	rts
loc_205148:
	tst.w $12(a0)
	bmi.s loc_205174
	bsr.w sub_206b52
	tst.w d1
	bpl.s loc_205174
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205234
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205174:
	rts
loc_205176:
	bsr.w sub_206e40
	tst.w d1
	bpl.s loc_205188
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205188:
	bsr.w sub_206ca2
	tst.w d1
	bpl.s loc_20519a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20519a:
	bsr.w sub_206cfa
	tst.w d1
	bpl.s loc_2051d0
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2051ba
	move.w #$0,$12(a0)
	rts
loc_2051ba:
	move.b d3,$26(a0)
	bsr.w sub_2052a6
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2051d0
	neg.w $14(a0)
loc_2051d0:
	rts
loc_2051d2:
	bsr.w sub_206ca2
	tst.w d1
	bpl.s loc_2051ec
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2051ec:
	bsr.w sub_206cfa
	tst.w d1
	bpl.s loc_205206
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205204
	move.w #$0,$12(a0)
loc_205204:
	rts
loc_205206:
	tst.w $12(a0)
	bmi.s loc_205232
	bsr.w sub_206b52
	tst.w d1
	bpl.s loc_205232
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205234
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205232:
	rts

sub_205234:
	btst.b #$4,$22(a0)
	beq.s loc_20523e
	nop
loc_20523e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205298
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205278
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205288
loc_205278:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205288:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20233c).l
loc_205298:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2052a6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_20397e).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2052e0
	subi.w #$20,$12(a0)
loc_2052e0:
	jsr (sub_206656).l
	bsr.w sub_2052fc
	bsr.w sub_204d2e
	bsr.w sub_2041d0
	bsr.w sub_20558e
	jmp (sub_2039d4).l

sub_2052fc:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_20712e
	bsr.w sub_205030
	btst.b #$1,$22(a0)
	bne.s loc_205336
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205336:
	rts
	bsr.w sub_205350
	jsr (sub_20391c).l
	bsr.w sub_2041d0
	bsr.w sub_20558e
	jmp (sub_2039d4).l

sub_205350:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_2053be
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205384
	clr.b ($ff1508).l
loc_205384:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20539e
	tst.b ($ff0f01).l
	beq.s loc_20539e
	move.b #$0,($ff1508).l
	bra.s loc_2053b8
loc_20539e:
	jsr (sub_207aee).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_2053be
loc_2053b8:
	move.w #$3c,$3a(a0)
loc_2053be:
	rts
	tst.w $3a(a0)
	beq.w loc_205442
	subq.w #$1,$3a(a0)
	bne.w loc_205442
	move.w #$1,($ff1502).l
	jsr (sub_2022d4).l
	move.b #$1,($a01c3e).l
	jsr (sub_2022f0).l
	bsr.w sub_2078dc
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205410
	cmpi.b #$1,($ff152e).l
	bne.s loc_205410
	bclr.b #$1,($ff151c).l
loc_205410:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20543e
	cmpi.b #$1,($ff152e).l
	bne.s loc_205438
	tst.b ($ff158e).l
	beq.s loc_20543e
	move.b #$1,($ff1522).l
	bra.s loc_20543e
loc_205438:
	clr.b ($ff1522).l
loc_20543e:
	bra.w sub_205b9e
loc_205442:
	rts

sub_205444:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20546c
	cmpi.b #$5,($ff1506).l
	beq.s loc_20546c
	cmpi.b #$2,($ff1506).l
	beq.s loc_20546c
	tst.b ($ff1506).l
	bne.w loc_20552e
loc_20546c:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2054aa
	tst.b ($ff1506).l
	bne.w loc_205530
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205530
	bra.s loc_2054b2
loc_2054aa:
	cmp.b ($f7af).w,d1
	beq.w loc_205530
loc_2054b2:
	cmp.b ($f7ac).w,d1
	beq.s loc_2054e2
	cmp.b ($f7ad).w,d1
	beq.s loc_2054c6
	bclr.b #$6,$1(a0)
	rts
loc_2054c6:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205548
	btst.b #$1,$22(a0)
	beq.s loc_2054e2
	bclr.b #$6,$1(a0)
	rts
loc_2054e2:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2054f4
	bclr.b #$6,$1(a0)
	rts
loc_2054f4:
	cmpi.b #$e0,d2
	bcs.s loc_205502
	bset.b #$6,$1(a0)
	rts
loc_205502:
	btst.b #$6,$1(a0)
	bne.s loc_20551e
	move.b $26(a0),d1
	beq.s loc_20552e
	cmpi.b #$80,d1
	bhi.s loc_20552e
	bset.b #$6,$1(a0)
	rts
loc_20551e:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20552e
	bclr.b #$6,$1(a0)
loc_20552e:
	rts
loc_205530:
	btst.b #$2,$22(a0)
	bne.s loc_205542
	move.w #$9c,d0
	jsr (sub_20233c).l
loc_205542:
	jmp (sub_204dc2).l
loc_205548:
	tst.w $12(a0)
	bmi.s loc_20558c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205580
	cmpi.w #$38,d1
	bcs.s loc_205578
	cmpi.w #$80,d1
	bcs.s loc_20558c
loc_205570:
	bclr.b #$6,$1(a0)
	rts
loc_205578:
	bset.b #$6,$1(a0)
	rts
loc_205580:
	cmpi.w #$38,d1
	bcs.s loc_205570
	cmpi.w #$80,d1
	bcc.s loc_205578
loc_20558c:
	rts

sub_20558e:
	lea (dat_20587e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2055b0
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2055b0:
	bsr.w sub_205820
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205628
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2055f6
	move.b d0,$1e(a0)

sub_2055da:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2055ee
	bpl.s loc_2055ee
	cmpi.b #$fd,d0
	bge.s loc_2055f8
loc_2055ee:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2055f6:
	rts
loc_2055f8:
	addq.b #$1,d0
	bne.s loc_205608
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2055ee
loc_205608:
	addq.b #$1,d0
	bne.s loc_20561c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2055ee
loc_20561c:
	addq.b #$1,d0
	bne.s loc_205626
	move.b $2(a1,d1.w),$1c(a0)
loc_205626:
	rts
loc_205628:
	subq.b #$1,$1e(a0)
	bpl.s loc_2055f6
	addq.b #$1,d0
	bne.w loc_2056e2
	tst.b ($ff195b).l
	bne.w loc_2057aa
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205650
	not.b d0
loc_205650:
	btst.b #$1,$2c(a0)
	bne.s loc_20565e
	addi.b #$10,d0
	bra.s loc_205660
loc_20565e:
	addq.b #$8,d0
loc_205660:
	bpl.s loc_205664
	moveq #$3,d1
loc_205664:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205756
	move.w $14(a0),d2
	bpl.s loc_205682
	neg.w d2
loc_205682:
	btst.b #$1,$2c(a0)
	beq.s loc_20569a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205a80).l,a1
	bra.s loc_2056c4
loc_20569a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205a5a).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2056c4
	lea (dat_2058fe).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056c4
	lea (dat_2058f6).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2056c4:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056d2
	moveq #$0,d2
loc_2056d2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2055da
	add.b d3,$1a(a0)
	rts
loc_2056e2:
	addq.b #$1,d0
	bne.s loc_205752
	move.w $14(a0),d2
	bpl.s loc_2056ee
	neg.w d2
loc_2056ee:
	lea (dat_2059dc).l,a1
	tst.b ($ff195b).l
	bne.s loc_20572c
	lea (dat_20590e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205720
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20572c
	lea (dat_205a88).l,a1
	bra.s loc_20572c
loc_205720:
	cmpi.w #$600,d2
	bcc.s loc_20572c
	lea (dat_205906).l,a1
loc_20572c:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205736
	moveq #$0,d2
loc_205736:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2055da
loc_205752:
	addq.b #$1,d0
	bne.s loc_205796
loc_205756:
	move.w $14(a0),d2
	bmi.s loc_20575e
	neg.w d2
loc_20575e:
	addi.w #$800,d2
	bpl.s loc_205766
	moveq #$0,d2
loc_205766:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2059ee).l,a1
	tst.b ($ff195b).l
	bne.s loc_205780
	lea (dat_205916).l,a1
loc_205780:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2055da
loc_205796:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2057aa:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2057bc
	not.b d0
loc_2057bc:
	addi.b #$10,d0
	bpl.s loc_2057c4
	moveq #$0,d1
loc_2057c4:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2057f2
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2056e2
loc_2057f2:
	move.w $14(a0),d2
	bpl.s loc_2057fa
	neg.w d2
loc_2057fa:
	lea (dat_2059d6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20580c
	lea (dat_2059d0).l,a1
loc_20580c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205816
	moveq #$0,d2
loc_205816:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2055da

sub_205820:
	tst.b ($ff195b).l
	beq.s loc_20582c
	move.b dat_20582e(pc,d0.w),d0
loc_20582c:
	rts
dat_20582e:
	.incbin 22574, 80
dat_20587e:
	.incbin 22654, 120
dat_2058f6:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2058fe:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205906:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20590e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205916:
	.incbin 22806, 186
dat_2059d0:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2059d6:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2059dc:
	.incbin 23004, 18
dat_2059ee:
	.incbin 23022, 108
dat_205a5a:
	.incbin 23130, 38
dat_205a80:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205a88:
	.incbin 23176, 56

sub_205ac0:
	tst.b (a0)
	beq.w loc_205b22
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205b22
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205b22
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205af4:
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
loc_205b0e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b0e
	dbf d1,loc_205af4
loc_205b22:
	rts

sub_205b24:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205b98
	move.w #$98,d0
	jsr (sub_20233c).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2009f8).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205b86
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205b86:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205b98:
	rts
loc_205b9a:
	move.w #$e,d0

sub_205b9e:
	cmpi.w #$67,d0
	bne.s loc_205bac
	move.b #$1,($ff1958).l
loc_205bac:
	move.w d0,($a12010).l
loc_205bb2:
	move.w ($a12020).l,d0
	beq.s loc_205bb2
	cmp.w ($a12020).l,d0
	bne.s loc_205bb2
	move.w #$0,($a12010).l
loc_205bca:
	move.w ($a12020).l,d0
	bne.s loc_205bca
	move.w ($a12020).l,d0
	bne.s loc_205bca
	rts
	dc.b $00,$00

sub_205bde:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205bfa
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205bfa:
	subq.b #$1,$1e(a0)
	bpl.s loc_205c3a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205c3c
loc_205c16:
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
loc_205c3a:
	rts
loc_205c3c:
	addq.b #$1,d0
	bne.s loc_205c4c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205c16
loc_205c4c:
	addq.b #$1,d0
	bne.s loc_205c60
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205c16
loc_205c60:
	addq.b #$1,d0
	bne.s loc_205c6a
	move.b $2(a1,d1.w),$1c(a0)
loc_205c6a:
	addq.b #$1,d0
	bne.s loc_205c72
	addq.b #$2,$24(a0)
loc_205c72:
	addq.b #$1,d0
	bne.s loc_205c80
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205c80:
	addq.b #$1,d0
	bne.s loc_205c88
	addq.b #$2,$25(a0)
loc_205c88:
	rts
	.incbin 23690, 536

sub_205ea2:
	rts
	.incbin 24228, 116

sub_205f18:
	tst.b $25(a0)
	bne.s loc_205f48
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207aee).l
	bne.s loc_205f48
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205f48:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f58(pc,d0.w),d0
	jmp dat_205f58(pc,d0.w)
dat_205f58:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205f80
	andi.b #$7f,$2(a0)
loc_205f80:
	move.l #$23bd1a,$4(a0)
	bsr.s sub_205f18
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205fae
	move.w #$100,$1c(a0)
loc_205fae:
	lea (dat_23bd06).l,a1
	bsr.w sub_205bde
	jmp (sub_2039d4).l
	tst.b $25(a0)
	beq.s loc_205fca
	jmp (sub_203a80).l
loc_205fca:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fec(pc,d0.w),d0
	jsr dat_205fec(pc,d0.w)
	jmp (sub_2039d4).l
dat_205fec:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_20601a
	andi.b #$7f,$2(a0)
loc_20601a:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_206040
	bsr.w sub_2060ac
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_2060a2
loc_206040:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206c00).l
	tst.w d1
	bpl.s loc_20609e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206088
	bsr.w sub_2060ac
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2060d2
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206088:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_2060a2
loc_20609e:
	addq.w #$2,$c(a0)
loc_2060a2:
	lea (dat_2336bc).l,a1
	bra.w sub_205bde

sub_2060ac:
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

sub_2060d2:
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
	bra.s loc_2060a2
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_2060a2
	.incbin 24846, 460
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2062e8(pc,d0.w),d1
	jmp dat_2062e8(pc,d1.w)
dat_2062e8:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23bb2e,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_20632a
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_20632a
	addq.b #$2,$24(a0)
loc_20632a:
	rts
	.incbin 25388, 120
	tst.b ($ff1521).l
	bne.s loc_2063b2
	jmp (sub_203a80).l
loc_2063b2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2063d0
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2063d0
	andi.b #$7f,$2(a0)
loc_2063d0:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_2063e2
	subq.b #$4,d1
loc_2063e2:
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
	bcs.s loc_2063fe
	moveq #$0,d1
loc_2063fe:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23ba06).l,a1
	jsr (sub_205bde).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_206436
	rts
loc_206436:
	cmp.b $24(a0),d0
	beq.s loc_20644c
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_20644c:
	jmp (sub_2039d4).l
loc_206452:
	bclr.b #$7,($ff156b).l
	beq.s loc_2064a0
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2064a2(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206476:
	move.l (a1)+,(a2)+
	dbf d0,loc_206476
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2064a0:
	rts
dat_2064a2:
	.incbin 25762, 436

sub_206656:
	bsr.s sub_20665a
loc_206658:
	rts

sub_20665a:
	tst.b ($f7a7).w
	bne.s loc_206658
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200ece).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_2066ba
	bne.w loc_2068aa
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200ece).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_2066ba
	bne.w loc_2068aa
	rts

sub_2066ba:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2066d2
	add.b ($ff156a).l,d1
loc_2066d2:
	add.w d1,d1
	move.w dat_2066f6(pc,d1.w),d1
	lea dat_2066f6(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2066e2:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2066f2
	addq.w #$2,d1
	dbf d6,loc_2066e2
	moveq #$0,d0
	rts
loc_2066f2:
	moveq #$1,d0
	rts
dat_2066f6:
	.incbin 26358, 182
loc_2067ac:
	bclr.b d0,(a5)
	bclr.b d0,(a6)
	bclr.b d0,(a7)
	bclr.b d0,(a0)+
	bclr.b d0,(a1)+
	bclr.b d0,(a2)+
	bclr.b d0,(a3)+
	bclr.b d0,(a5)+
	bclr.b d0,(a7)+
	bclr.b d0,-(a6)
	bclr.b d0,-(a7)
	bclr.b d0,$1e3(a0)
	bset.b d0,-(a4)
	bset.b d0,-(a5)
	ori.b #$1,$2(a3,d0.w)
	ori.b #$4,d3
	ori.b #$6,d5
	ori.b #$8,d7
	.incbin 26588, 206
loc_2068aa:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_2068ca
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_2068ca
	move.l #$20000,d0
loc_2068ca:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_2068da
	neg.l d0
	neg.b d1
loc_2068da:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_206ac0).l
	tst.w d1
	bpl.s loc_2068f8
	tst.b ($ff158f).l
	beq.s loc_2068f4
	neg.w d1
loc_2068f4:
	add.w d1,$8(a0)
loc_2068f8:
	rts
loc_2068fa:
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
	bne.s loc_2069b4
	move.b ($ff1593).l,($ff195b).l
loc_2069b4:
	tst.b ($ff1522).l
	bpl.s loc_2069ca
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2069ca:
	rts

sub_2069cc:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2068fa
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
	bne.s loc_206a86
	move.b ($ff1591).l,($ff195b).l
loc_206a86:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206aa8
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206aa8:
	tst.b ($ff1522).l
	bpl.s loc_206abe
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206abe:
	rts

sub_206ac0:
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
	bpl.s loc_206afc
	move.b d1,d0
	bpl.s loc_206af6
	subq.b #$1,d0
loc_206af6:
	addi.b #$20,d0
	bra.s loc_206b06
loc_206afc:
	move.b d1,d0
	bpl.s loc_206b02
	addq.b #$1,d0
loc_206b02:
	addi.b #$1f,d0
loc_206b06:
	andi.b #$c0,d0
	beq.w loc_206bd6
	cmpi.b #$80,d0
	beq.w loc_206d72
	andi.b #$38,d1
	bne.s loc_206b1e
	addq.w #$8,d2
loc_206b1e:
	cmpi.b #$40,d0
	beq.w loc_206e48
	bra.w loc_206caa

sub_206b2a:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206dd0
	cmpi.b #$80,d0
	beq.w sub_206cfa
	cmpi.b #$c0,d0
	beq.w loc_206c3a

sub_206b52:
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
	jsr (sub_2010b6).l
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
	jsr (sub_2010b6).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206bb6:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206bc4
	move.b ($f768).w,d3
	exg d0,d1
loc_206bc4:
	btst.l #$0,d3
	beq.s loc_206bcc
	move.b d2,d3
loc_206bcc:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206bd6:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010b6).l
	move.b #$0,d2
loc_206bf2:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bfe
	move.b d2,d3
loc_206bfe:
	rts

sub_206c00:
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
	jsr (sub_2010b6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c38
	move.b #$0,d3
loc_206c38:
	rts
loc_206c3a:
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
	jsr (sub_201226).l
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
	jsr (sub_201226).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206bb6

sub_206ca2:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206caa:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201226).l
	move.b #$c0,d2
	bra.w loc_206bf2
	.incbin 27850, 32
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206cf8
	move.b #$c0,d3
loc_206cf8:
	rts

sub_206cfa:
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
	jsr (sub_2010b6).l
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
	jsr (sub_2010b6).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206bb6

sub_206d6a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d72:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010b6).l
	move.b #$80,d2
	bra.w loc_206bf2

sub_206d96:
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
	jsr (sub_2010b6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dce
	move.b #$80,d3
loc_206dce:
	rts
loc_206dd0:
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
	jsr (sub_201226).l
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
	jsr (sub_201226).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206bb6

sub_206e40:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e48:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201226).l
	move.b #$40,d2
	bra.w loc_206bf2
	.incbin 28268, 48

sub_206e9c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ec0
	addi.w #$c,d3
	moveq #$a,d5
loc_206ec0:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ece:
	tst.b $1(a1)
	bpl.s loc_206eda
	move.b $20(a1),d0
	bne.s loc_206ee6
loc_206eda:
	lea $40(a1),a1
	dbf d6,loc_206ece
	moveq #$0,d0
	rts
loc_206ee6:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207284).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206f0e
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206f14
	bra.w loc_206eda
loc_206f0e:
	cmp.w d4,d0
	bhi.w loc_206eda
loc_206f14:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206f2c
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206f32
	bra.w loc_206eda
loc_206f2c:
	cmp.w d5,d0
	bhi.w loc_206eda
loc_206f32:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206fa6
	cmpi.b #$c0,d1
	beq.w loc_207186
	tst.b d1
	bmi.w sub_207070
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206f6a
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206f68
	addq.b #$2,$24(a1)
loc_206f68:
	rts
loc_206f6a:
	tst.w $12(a0)
	bpl.s loc_206f94
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206fa4
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206fa4
	addq.b #$4,$25(a1)
	rts
loc_206f94:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206fa4
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206fa4:
	rts

sub_206fa6:
	tst.b ($ff1521).l
	bne.s loc_206fc0
	tst.b ($ff151f).l
	bne.s loc_206fc0
	cmpi.b #$2,$1c(a0)
	bne.w sub_207070
loc_206fc0:
	tst.b $21(a1)
	beq.s loc_206fea
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206fe8
	bset.b #$7,$22(a1)
loc_206fe8:
	rts
loc_206fea:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_207002
	moveq #$6,d0
loc_207002:
	move.w d0,$3e(a1)
	move.w dat_207062(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_20701c
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_20701c:
	bsr.w sub_20a8f4
	move.w #$96,d0
	jsr (sub_20233c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207052
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20705a
	neg.w $12(a0)
	rts
loc_207052:
	addi.w #$100,$12(a0)
	rts
loc_20705a:
	subi.w #$100,$12(a0)
	rts
dat_207062:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207070:
	tst.b ($ff1521).l
	bne.s loc_207080
	tst.b ($ff151f).l
	beq.s loc_207084
loc_207080:
	moveq #$ffffffff,d0
	rts
loc_207084:
	nop
	tst.w $30(a0)
	bne.s loc_207080
	movea.l a1,a2

sub_20708e:
	tst.b ($ff151e).l
	bne.s loc_2070ba
	tst.w ($ff1512).l
	beq.w loc_207124
	jsr (sub_207aee).l
	bne.s loc_2070ba
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2070ba:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2070d0
	move.b #$0,($ff156f).l
loc_2070d0:
	move.b #$4,$24(a0)
	bsr.w sub_205234
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_207100
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_207100:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_20710e
	neg.w $10(a0)
loc_20710e:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207124:
	tst.w ($ff1588).l
	bne.w loc_2070ba

sub_20712e:
	tst.w ($ff1906).l
	bne.s loc_207182
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205234
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20233c).l
loc_207182:
	moveq #$ffffffff,d0
	rts
loc_207186:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207226
	cmpi.b #$23,d1
	beq.w loc_207226
	cmpi.b #$2e,d1
	beq.w loc_20726e
	cmpi.b #$37,d1
	beq.w loc_207226
	cmpi.b #$38,d1
	beq.w loc_20727c
	cmpi.b #$3a,d1
	beq.w loc_20726e
	cmpi.b #$3b,d1
	beq.w loc_20726e
	cmpi.b #$3c,d1
	beq.w loc_20726e
	tst.b ($f7aa).w
	beq.w loc_207224
	cmpi.b #$1,($f7aa).w
	beq.s loc_2071ee
	cmpi.b #$4,($f7aa).w
	beq.s loc_207210
	cmpi.b #$5,($f7aa).w
	beq.s loc_20721e
loc_2071ee:
	cmpi.b #$3c,d1
	blt.s loc_207224
	cmpi.b #$3f,d1
	bgt.s loc_207224
	bsr.w sub_206fa6
	tst.b $20(a1)
	bne.s loc_207208
	addq.b #$3,$21(a1)
loc_207208:
	clr.b $20(a1)
	bra.w loc_207226
loc_207210:
	cmpi.b #$3f,d1
	beq.s loc_207232
	cmpi.b #$3e,d1
	beq.s loc_20722c
	bra.s loc_207224
loc_20721e:
	cmpi.b #$3d,d1
	beq.s loc_20722c
loc_207224:
	rts
loc_207226:
	addq.b #$1,$21(a1)
	rts
loc_20722c:
	bsr.w sub_207070
	bra.s loc_207226
loc_207232:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20726c
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20726c
	neg.w $10(a0)
loc_20726c:
	rts
loc_20726e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20727a
	addq.b #$1,$21(a1)
loc_20727a:
	rts
loc_20727c:
	addq.b #$1,$21(a1)
	bra.w sub_207070
dat_207284:
	.incbin 29316, 126
loc_207302:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207318
	move.l #$4000,(dat_207492).l
	bra.s loc_207338
loc_207318:
	addi.l #$2000,(dat_207492).l
	cmpi.l #$80000,(dat_207492).l
	bls.s loc_207338
	move.l #$80000,(dat_207492).l
loc_207338:
	move.l (dat_207492).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20734a
	sub.l d0,$c(a0)
loc_20734a:
	btst.b #$1,($f604).w
	beq.s loc_207356
	add.l d0,$c(a0)
loc_207356:
	btst.b #$2,($f604).w
	beq.s loc_207362
	sub.l d0,$8(a0)
loc_207362:
	btst.b #$3,($f604).w
	beq.s loc_20736e
	add.l d0,$8(a0)
loc_20736e:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ece).l
	move.w (a1),($ff194e).l
	lea (dat_207496).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2073b0
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2073aa
	move.b #$0,d1
loc_2073aa:
	move.b d1,($ff1904).l
loc_2073b0:
	btst.b #$7,($f605).w
	beq.s loc_2073d0
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2073ca
	add.b (a2),d1
loc_2073ca:
	move.b d1,($ff1904).l
loc_2073d0:
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
	beq.s loc_20745c
	bsr.w sub_207aee
	bne.s loc_20745c
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
loc_20745c:
	btst.b #$4,($f605).w
	beq.s loc_20748c
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20748c:
	jmp (sub_2039d4).l
dat_207492:
	dc.b $00,$00,$40,$00
dat_207496:
	.incbin 29846, 1038
dat_2078a4:
	.incbin 30884, 56

sub_2078dc:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2078ea:
	clr.l (a2)+
	dbf d0,loc_2078ea
	rts

sub_2078f2:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207900(pc,d0.w),d0
	jmp dat_207900(pc,d0.w)
dat_207900:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207ba0).l,a0
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
	bcc.s loc_20793e
	moveq #$0,d6
loc_20793e:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207946:
	cmp.w (a0),d6
	bls.s loc_207958
	tst.b $4(a0)
	bpl.s loc_207954
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207954:
	addq.w #$8,a0
	bra.s loc_207946
loc_207958:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207978
loc_207966:
	cmp.w (a0),d6
	bls.s loc_207978
	tst.b $4(a0)
	bpl.s loc_207974
	addq.b #$1,$1(a2)
loc_207974:
	addq.w #$8,a0
	bra.s loc_207966
loc_207978:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207a62
	bge.s loc_207a08
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2079e4
loc_2079b2:
	cmp.w -$8(a0),d6
	bge.s loc_2079e4
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2079c8
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2079c8:
	bsr.w sub_207a86
	bne.s loc_2079d2
	subq.w #$8,a0
	bra.s loc_2079b2
loc_2079d2:
	tst.b $4(a0)
	bpl.s loc_2079e2
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079e2:
	addq.w #$8,a0
loc_2079e4:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2079f0:
	cmp.w -$8(a0),d6
	bgt.s loc_207a02
	tst.b -$4(a0)
	bpl.s loc_2079fe
	subq.b #$1,(a2)
loc_2079fe:
	subq.w #$8,a0
	bra.s loc_2079f0
loc_207a02:
	move.l a0,($f770).w
	rts
loc_207a08:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207a1c:
	cmp.w (a0),d6
	bls.s loc_207a3e
	tst.b $4(a0)
	bpl.s loc_207a2a
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a2a:
	bsr.w sub_207a86
	beq.s loc_207a1c
	tst.b $4(a0)
	bpl.s loc_207a3e
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a3e:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a5e
loc_207a4c:
	cmp.w (a0),d6
	bls.s loc_207a5e
	tst.b $4(a0)
	bpl.s loc_207a5a
	addq.b #$1,$1(a2)
loc_207a5a:
	addq.w #$8,a0
	bra.s loc_207a4c
loc_207a5e:
	move.l a0,($f774).w
loc_207a62:
	rts

sub_207a64:
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

sub_207a86:
	bsr.s sub_207a64
	beq.s loc_207a98
	tst.b $4(a0)
	bpl.s loc_207a9e
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a9e
loc_207a98:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a9e:
	bsr.w sub_207aee
	bne.s loc_207aec
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
	bpl.s loc_207ace
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207ace:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207ae0
	nop
	nop
	nop
	nop
loc_207ae0:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207aec:
	rts

sub_207aee:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207af6:
	tst.b (a1)
	beq.s loc_207b02
	lea $40(a1),a1
	dbf d0,loc_207af6
loc_207b02:
	rts

sub_207b04:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207b22
loc_207b16:
	tst.b (a1)
	beq.s loc_207b22
	lea $40(a1),a1
	dbf d0,loc_207b16
loc_207b22:
	rts
loc_207b24:
	move.w $8(a0),d0
loc_207b28:
	tst.b $1(a0)
	bmi.s loc_207b92
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b92
loc_207b46:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b88
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b80
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b78
	moveq #$0,d1
	bra.s loc_207b80
loc_207b78:
	cmpi.w #$3,d1
	bcs.s loc_207b80
	moveq #$2,d1
loc_207b80:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b88:
	jsr (sub_203a80).l
	moveq #$1,d0
	rts
loc_207b92:
	btst.b #$7,($ff152e).l
	bne.s loc_207b46
	moveq #$0,d0
	rts
dat_207ba0:
	.incbin 31648, 3146
	btst.b #$7,($ff152e).l
	beq.s loc_208834
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208834
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
	bpl.s loc_208824
	moveq #$0,d1
	bra.s loc_20882c
loc_208824:
	cmpi.w #$3,d1
	bcs.s loc_20882c
	moveq #$2,d1
loc_20882c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208834:
	tst.b $28(a0)
	bpl.s loc_208856
	beq.s loc_208856
	tst.b ($ff158f).l
	bne.s loc_20884e
	btst.b #$0,$28(a0)
	beq.s loc_208856
	bra.s loc_208880
loc_20884e:
	btst.b #$0,$28(a0)
	beq.s loc_208880
loc_208856:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208886
	cmpi.b #$6,$24(a6)
	bcc.s loc_208886
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208888(pc,d0.w),d1
	jsr dat_208888(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208886
loc_208880:
	jmp (loc_207b24).l
loc_208886:
	rts
dat_208888:
	dc.b $00,$08,$00,$40,$00,$d0,$00,$e4
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208a74(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$10,d0
	cmpi.w #$20,d0
	bcc.s loc_208956
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$10,d1
	cmpi.w #$20,d1
	bcc.w loc_208956
	tst.b $2c(a6)
	bne.w loc_208956
	cmpi.b #$4,$24(a6)
	bne.s loc_208908
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208908:
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
	jsr (sub_20233c).l
loc_208956:
	rts
	.incbin 35160, 284
dat_208a74:
	.incbin 35444, 826

sub_208dae:
	btst.b #$3,$22(a0)
	beq.s loc_208e1e
	btst.b #$3,$22(a1)
	beq.s loc_208e1e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208e1e
	tst.b $2a(a1)
	beq.s loc_208de0
	move.w #$ab,d0
	jsr (sub_20233c).l
loc_208de0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208e0c
	cmpi.b #$17,$1c(a1)
	beq.s loc_208e0c
	bclr.b #$0,$2c(a1)
loc_208e0c:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e1e
	bclr.b #$1,$22(a1)
loc_208e1e:
	rts

sub_208e20:
	cmpi.b #$4,$24(a1)
	bne.s loc_208e32
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208e32:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208e92
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e54
	bclr.b #$3,$22(a0)
	bra.w sub_208dae
loc_208e54:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208e92
	tst.b ($ff195b).l
	beq.s loc_208e7c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208e8c
loc_208e7c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208e8c:
	move.b #$0,$1c(a1)
loc_208e92:
	bset.b #$3,$22(a1)
	beq.s loc_208eb4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208eec
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208eb4:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208ee0
	cmpi.b #$2,$24(a0)
	beq.s loc_208ee6
loc_208ee0:
	move.w $10(a1),$14(a1)
loc_208ee6:
	bclr.b #$1,$22(a1)
loc_208eec:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208ef6:
	move.b #$1,$25(a0)

sub_208efc:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2091b0
	btst.b #$6,$2c(a1)
	bne.w loc_2091b0
	cmpi.b #$6,$24(a1)
	bcc.w loc_2091b0
	tst.b $0(a1)
	beq.w loc_2091b0
	tst.b $1(a0)
	bpl.w loc_2091b0
	tst.b ($ff1906).l
	bne.w loc_2091b0
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2091b0
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2091b0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f6a
	btst.b #$3,$22(a0)
	bne.s loc_208f7c
	bra.w loc_2091b0
loc_208f6a:
	cmpi.b #$1,$25(a0)
	bne.s loc_208f7c
	tst.w $12(a1)
	beq.s loc_208f7c
	bmi.w loc_2091b0
loc_208f7c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2091b0
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2091b0
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208fb2
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208fb2:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208fc0
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208fc0:
	cmp.w d4,d5
	bcs.w loc_209054
	cmpi.b #$1,$25(a0)
	beq.w loc_2091b0
	cmpi.b #$a,$0(a0)
	bne.s loc_208fe2
	btst.b #$1,$22(a1)
	bne.w loc_2091b0
loc_208fe2:
	cmpi.b #$4,d5
	bls.w loc_2091b0
	bsr.w sub_209200
	move.l d0,-(a7)
	bsr.w sub_208dae
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20900c
	tst.w $10(a1)
	beq.s loc_20903c
	bpl.s loc_209014
	bra.s loc_20903c
loc_20900c:
	tst.w $10(a1)
	beq.s loc_20903c
	bpl.s loc_20903c
loc_209014:
	bsr.w sub_2091c0
	btst.b #$1,$22(a1)
	bne.s loc_209032
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209032:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20903c:
	bsr.w sub_209276
	bsr.w sub_2091c0
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209054:
	cmpi.b #$19,$0(a0)
	bne.s loc_209066
	btst.b #$2,$22(a1)
	bne.w loc_2091b0
loc_209066:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20907c
	bmi.w loc_20914c
loc_20907c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20908e
	tst.w $12(a1)
	beq.s loc_20908e
	bmi.w loc_2091b0
loc_20908e:
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
	beq.s loc_2090da
	bpl.s loc_2090ba
	neg.b d0
loc_2090ba:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ac0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090da
	tst.w $10(a0)
	bpl.s loc_2090d6
	neg.w d1
loc_2090d6:
	add.w d1,$8(a1)
loc_2090da:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209144
	tst.w $12(a0)
	bmi.s loc_209118
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b52).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209118
	add.w d1,$c(a1)
	bra.w loc_2091b0
loc_209118:
	tst.w $12(a0)
	bpl.s loc_209144
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d6a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209144
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20712e).l
	movem.l (a7)+,a0-a1
	bra.s loc_2091b0
loc_209144:
	bsr.w sub_208e20
	moveq #$1,d0
	rts
loc_20914c:
	cmpi.b #$1,$25(a0)
	beq.s loc_2091b0
	cmpi.b #$9,$0(a0)
	beq.s loc_2091b0
	cmpi.b #$a,$0(a0)
	bne.s loc_209176
	cmpi.b #$2,$25(a0)
	beq.s loc_209196
	btst.b #$1,$1(a0)
	bne.s loc_209196
	bra.s loc_2091b0
loc_209176:
	btst.b #$1,$22(a1)
	bne.s loc_209196
	tst.w $12(a0)
	beq.s loc_209196
	bmi.s loc_209196
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20712e).l
	movem.l (a7)+,a0-a1
loc_209196:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209276
	bsr.w sub_208dae
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2091b0:
	bsr.w sub_209276
	bsr.w sub_208dae
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2091c0:
	tst.w $10(a0)
	beq.s loc_2091fe
	cmpi.b #$a,$0(a0)
	beq.s loc_2091fe
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2091da
	neg.b d0
loc_2091da:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ac0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091fe
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20712e).l
	movem.l (a7)+,a0-a1
loc_2091fe:
	rts

sub_209200:
	cmpi.b #$a,$0(a0)
	bne.s loc_209210
	move.b #$0,$20(a1)
	rts
loc_209210:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209264
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209274
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209232
	tst.w $10(a2)
	beq.s loc_209274
loc_209232:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209244
	cmp.w $8(a2),d1
	bcs.s loc_209274
	bra.s loc_20924a
loc_209244:
	cmp.w $8(a2),d1
	bcc.s loc_209274
loc_20924a:
	cmpi.b #$15,$0(a0)
	beq.s loc_209274
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20712e).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209264:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209274:
	rts

sub_209276:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209290
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209290
	move.b #$0,$20(a1)
loc_209290:
	rts
	.incbin 37522, 374
loc_209408:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209416(pc,d0.w),d0
	jmp dat_209416(pc,d0.w)
dat_209416:
	.incbin 37910, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209408
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20946c
	tst.b $1(a0)
	bpl.s loc_209474
loc_20946c:
	move.w dat_2094c6(pc,d0.w),d1
	jsr dat_2094c6(pc,d1.w)
loc_209474:
	bsr.w sub_2039d4
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2094a6
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2094a6:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203a80
	rts
dat_2094c6:
	.incbin 38086, 26
	addq.b #$2,$24(a0)
	move.l #$209848,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209536
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20984e,$4(a0)
	bra.s loc_209578
loc_209536:
	btst.l #$3,d0
	beq.s loc_209564
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209898,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c18a).l
	move.l (a7)+,d0
	bra.s loc_209578
loc_209564:
	btst.b #$1,$1(a0)
	beq.s loc_209578
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209578:
	btst.l #$1,d0
	beq.s loc_209584
	bset.b #$5,$2(a0)
loc_209584:
	andi.w #$2,d0
	move.w dat_209590(pc,d0.w),$30(a0)
	rts
dat_209590:
	dc.b $f0,$00,$f6,$00

sub_209594:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208efc).l
	tst.b $1(a0)
	bpl.s loc_2095b0
	lea ($d000).w,a1
	bsr.s sub_209594
	bne.s loc_2095b2
loc_2095b0:
	rts
loc_2095b2:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20233c).l
	lea (dat_20983a).l,a1
	bra.w sub_205bde
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38406, 212
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jsr (sub_20233c).l
	lea (dat_20983a).l,a1
	bra.w sub_205bde
	.incbin 38656, 18
	tst.b $1(a0)
	bpl.s loc_20972a
	lea ($d000).w,a1
	bsr.w sub_209594
	bne.s loc_20972c
	btst.b #$5,$22(a0)
	bne.s loc_20972c
loc_20972a:
	rts
loc_20972c:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_200760).l
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
	beq.s loc_20976a
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_20976a:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_20978c
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_20978c:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_20233c).l
	lea (dat_20983a).l,a1
	bra.w sub_205bde
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38864, 106
dat_20983a:
	.incbin 38970, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209934(pc,d0.w),d1
	jmp dat_209934(pc,d1.w)
dat_209934:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20993e:
	.incbin 39230, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209996
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20998e
	moveq #$0,d1
	bra.s loc_209996
loc_20998e:
	cmpi.w #$3,d1
	bcs.s loc_209996
	moveq #$2,d1
loc_209996:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2099b2
	moveq #$6,d1
loc_2099b2:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20993e).l,a1
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
	beq.s loc_209a02
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2099fa
	moveq #$0,d0
	bra.s loc_209a02
loc_2099fa:
	cmpi.w #$3,d0
	bcs.s loc_209a02
	moveq #$2,d0
loc_209a02:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209ad0
	dbf d0,loc_209a02
	bclr.b #$7,(a2)
	bra.s loc_209a58
loc_209a14:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209a40
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a38
	moveq #$0,d0
	bra.s loc_209a40
loc_209a38:
	cmpi.w #$3,d0
	bcs.s loc_209a40
	moveq #$2,d0
loc_209a40:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209ad0
	dbf d0,loc_209a40
	bclr.b #$7,(a2)
	bsr.w sub_207b04
	bne.w loc_209adc
loc_209a58:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209da2,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209aae
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209aae
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209aae:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209ad0:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209a14
loc_209adc:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209b02
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209afa
	moveq #$0,d0
	bra.s loc_209b02
loc_209afa:
	cmpi.w #$3,d0
	bcs.s loc_209b02
	moveq #$2,d0
loc_209b02:
	lea $1(a2),a3
loc_209b06:
	btst.b #$0,-(a3)
	bne.w sub_203a80
	dbf d0,loc_209b06
	tst.b $1(a0)
	bmi.s loc_209b36
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209bb0
loc_209b36:
	tst.w ($ff190e).l
	bne.s loc_209b46
	move.b ($ff1913).l,$1a(a0)
loc_209b46:
	bra.w sub_2039d4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209bb4
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209b96
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b8e
	moveq #$0,d1
	bra.s loc_209b96
loc_209b8e:
	cmpi.w #$3,d1
	bcs.s loc_209b96
	moveq #$2,d1
loc_209b96:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209d9a).l,a1
	bsr.w sub_205bde
	bra.w sub_2039d4
loc_209bb0:
	bra.w sub_203a80

sub_209bb4:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c04
	bset.b #$1,($ff150d).l
	beq.s loc_209bee
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c04
	bset.b #$2,($ff150d).l
	bne.s loc_209c04
loc_209bee:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b9e).l
loc_209c04:
	jmp (sub_20233c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209c18(pc,d0.w),d1
	jmp dat_209c18(pc,d1.w)
dat_209c18:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209c34
	move.w d0,d5
loc_209c34:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209c44
loc_209c3c:
	bsr.w sub_207aee
	bne.w loc_209cfa
loc_209c44:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209da2,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209ca2
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209ca2
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209ca2:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209cea
	move.w d4,d0
	jsr (sub_200760).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209cea
	subi.w #$80,d4
	bcc.s loc_209cea
	move.w #$288,d4
loc_209cea:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209c3c
loc_209cfa:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20233c).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_20397e
	addi.w #$18,$12(a0)
	bmi.s loc_209d5a
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209d5a
	jsr (sub_206c00).l
	tst.w d1
	bpl.s loc_209d5a
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209d5a:
	tst.b ($ff1916).l
	beq.s loc_209d96
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209d96
	bra.w sub_2039d4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209bb4
	lea (dat_209d9a).l,a1
	bsr.w sub_205bde
	bra.w sub_2039d4
loc_209d96:
	bra.w sub_203a80
dat_209d9a:
	.incbin 40346, 402
loc_209f2c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f5a(pc,d0.w),d0
	jsr dat_209f5a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209f58
	cmpi.w #$5a,($f786).w
	bcs.s loc_209f52
	btst.b #$0,($ff1505).l
	bne.s loc_209f58
loc_209f52:
	jmp (sub_2039d4).l
loc_209f58:
	rts
dat_209f5a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a534,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209f8e
	move.b #$13,$1a(a0)
loc_209f8e:
	rts
loc_209f90:
	tst.b ($ff0f01).l
	beq.s loc_209f9e
	jmp (sub_203a80).l
loc_209f9e:
	cmpi.b #$a,$28(a0)
	beq.w loc_209f2c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fc2(pc,d0.w),d0
	jsr dat_209fc2(pc,d0.w)
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
dat_209fc2:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a534,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a010
	tst.b $29(a0)
	bne.s loc_20a010
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a010:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a0dc
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a038
	addq.b #$2,$1a(a0)
loc_20a038:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a04c
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a04c:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a0b2
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a07e
	tst.b $29(a0)
	beq.s loc_20a076
	tst.b ($ff1956).l
	beq.s loc_20a0b2
	bra.s loc_20a07e
loc_20a076:
	tst.b ($ff1956).l
	bne.s loc_20a0b2
loc_20a07e:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a0dc
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a0ac
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a0ac:
	jsr (sub_205b9e).l
loc_20a0b2:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a0c4
	lea (dat_20a4ac).l,a1
	bra.w sub_205bde
loc_20a0c4:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a0da
	addq.b #$2,$1a(a0)
loc_20a0da:
	rts

sub_20a0dc:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a114
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a10c
	moveq #$0,d1
	bra.s loc_20a114
loc_20a10c:
	cmpi.w #$3,d1
	bcs.s loc_20a114
	moveq #$2,d1
loc_20a114:
	add.w d1,d0
	rts

sub_20a118:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a13a
	tst.b ($ff1956).l
	beq.s loc_20a132
	tst.b $29(a0)
	bne.s loc_20a13a
	rts
loc_20a132:
	tst.b $29(a0)
	beq.s loc_20a13a
	rts
loc_20a13a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208efc).l
	tst.b $28(a0)
	bne.s loc_20a15c
	tst.b ($ff0f01).l
	beq.s loc_20a15c
	jmp (loc_207b24).l
loc_20a15c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209f90
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a174(pc,d0.w),d1
	jmp dat_20a174(pc,d1.w)
dat_20a174:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a534,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1be
	tst.b $29(a0)
	bne.s loc_20a1be
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a1be:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a0dc
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a1ea
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a1ea:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a244
	move.b $25(a0),d0
	beq.s loc_20a224
	bsr.w sub_20391c
	jsr (sub_206c00).l
	tst.w d1
	bpl.w loc_20a232
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a232
loc_20a224:
	tst.b $1(a0)
	bpl.s loc_20a232
	lea ($d000).w,a1
	bsr.w sub_20a118
loc_20a232:
	tst.w ($ff190e).l
	bne.s loc_20a244
	lea (dat_20a4ac).l,a1
	bsr.w sub_205bde
loc_20a244:
	bsr.w sub_2039d4
	jmp (loc_207b24).l
	.incbin 41550, 606
dat_20a4ac:
	.incbin 42156, 586
loc_20a6f6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a70a(pc,d0.w),d0
	jsr dat_20a70a(pc,d0.w)
	jmp (sub_2039d4).l
dat_20a70a:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a74a,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a744
	jmp (sub_203a80).l
loc_20a744:
	subq.w #$2,$c(a0)
	rts
	.incbin 42826, 82
	tst.b $28(a0)
	bmi.w loc_20a6f6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a7b2(pc,d0.w),d0
	jmp dat_20a7b2(pc,d0.w)
dat_20a7b2:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a84c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a7e2
	move.b #$3,$1a(a0)
	bra.s loc_20a802
loc_20a7e2:
	tst.w ($ff1588).l
	beq.s loc_20a7f0
	move.b #$2,$1a(a0)
loc_20a7f0:
	tst.b $28(a0)
	beq.s loc_20a802
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a802:
	tst.b $28(a0)
	bne.s loc_20a846
	tst.b $29(a0)
	beq.s loc_20a832
	tst.w ($ff1512).l
	beq.s loc_20a81e
	bclr.b #$5,$2(a0)
	bra.s loc_20a846
loc_20a81e:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a846
	eori.b #$20,$2(a0)
	bra.s loc_20a846
loc_20a832:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a846
	move.b #$2,$1a(a0)
loc_20a846:
	jmp (sub_2039d4).l
	.incbin 43084, 168

sub_20a8f4:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a910
	move.l d1,(a3)
loc_20a910:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a93a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205b9e).l
loc_20a93a:
	rts
loc_20a93c:
	tst.w ($ff1588).l
	beq.s loc_20a992
	bsr.w sub_20ab8e
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
	lea (dat_20acee).l,a2
	moveq #$2,d6
	bsr.w sub_20ad46
	bra.w loc_20a9ec
loc_20a992:
	tst.b ($ff1511).l
	beq.s loc_20a9b6
	bpl.s loc_20a9a0
	bsr.w sub_20ab38
loc_20a9a0:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ac28
loc_20a9b6:
	tst.b ($ff150f).l
	beq.s loc_20a9ec
	bpl.s loc_20a9c4
	bsr.w sub_20ab24
loc_20a9c4:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a9e8
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a9e8:
	bsr.w sub_20ac1e
loc_20a9ec:
	tst.w ($ff1588).l
	bne.w loc_20aa98
	tst.b ($ff1510).l
	beq.w loc_20aa98
	tst.w ($f63a).w
	bne.w loc_20aa98
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20aaf6
	tst.b ($f7cc).w
	bne.s loc_20aa42
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa42
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa42
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20aa42
	move.b #$9,(a1)
loc_20aa42:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ad34
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ad3e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20aa94
	move.w #$63,d1
loc_20aa94:
	bsr.w sub_20ad3e
loc_20aa98:
	tst.b ($ff150e).l
	beq.s loc_20aaaa
	clr.b ($ff150e).l
	bsr.w sub_20ad14
loc_20aaaa:
	tst.b ($f7d6).w
	beq.s loc_20aaf4
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aaca
	move.l #$6d400001,d0
loc_20aaca:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20abac
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aaea
	move.l #$6e800001,d0
loc_20aaea:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20abac
loc_20aaf4:
	rts
loc_20aaf6:
	btst.b #$7,($ff152e).l
	bne.s loc_20ab22
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20712e
	move.b #$1,($ff150c).l
loc_20ab22:
	rts

sub_20ab24:
	move.l #$73600002,($c00004).l
	lea dat_20ab8a(pc),a2
	move.w #$2,d2
	bra.s loc_20ab54

sub_20ab38:
	lea ($c00000).l,a6
	bsr.w sub_20ad14
	move.l #$70600002,($c00004).l
	lea dat_20ab82(pc),a2
	move.w #$6,d2
loc_20ab54:
	lea (dat_2330bc).l,a1
loc_20ab5a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ab76
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ab6a:
	move.l (a3)+,(a6)
	dbf d1,loc_20ab6a
loc_20ab70:
	dbf d2,loc_20ab5a
	rts
loc_20ab76:
	move.l #$0,(a6)
	dbf d1,loc_20ab76
	bra.s loc_20ab70
dat_20ab82:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ab8a:
	dc.b $ff,$ff,$00,$00

sub_20ab8e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ad0a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ad0a

sub_20abac:
	lea (dat_20ace6).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20abbc:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20abc0:
	sub.l d3,d1
	bcs.s loc_20abc8
	addq.w #$1,d2
	bra.s loc_20abc0
loc_20abc8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abd2
	move.w #$1,d4
loc_20abd2:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20abde
	tst.w d6
	bne.s loc_20ac10
loc_20abde:
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
loc_20ac04:
	addi.l #$400000,d0
	dbf d6,loc_20abbc
	rts
loc_20ac10:
	moveq #$f,d5
loc_20ac12:
	move.l #$0,(a6)
	dbf d5,loc_20ac12
	bra.s loc_20ac04

sub_20ac1e:
	lea (dat_20acee).l,a2
	moveq #$2,d6
	bra.s loc_20ac30

sub_20ac28:
	lea (dat_20ace2).l,a2
	moveq #$5,d6
loc_20ac30:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac38:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac3c:
	sub.l d3,d1
	bcs.s loc_20ac44
	addq.w #$1,d2
	bra.s loc_20ac3c
loc_20ac44:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac4e
	move.w #$1,d4
loc_20ac4e:
	tst.w d4
	beq.s loc_20ac7c
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
loc_20ac7c:
	addi.l #$400000,d0
	dbf d6,loc_20ac38
	rts
	.incbin 44168, 90
dat_20ace2:
	dc.b $00,$01,$86,$a0
dat_20ace6:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20acee:
	dc.b $00,$00,$00,$64
dat_20acf2:
	dc.b $00,$00,$00,$0a
dat_20acf6:
	dc.b $00,$00,$00,$01
dat_20acfa:
	.incbin 44282, 16

sub_20ad0a:
	moveq #$3,d6
	lea (dat_20acfa).l,a2
	bra.s sub_20ad46

sub_20ad14:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ad2a
	moveq #$9,d1
loc_20ad2a:
	lea (dat_20acf6).l,a2
	moveq #$0,d6
	bra.s sub_20ad46

sub_20ad34:
	lea (dat_20acf6).l,a2
	moveq #$0,d6
	bra.s sub_20ad46

sub_20ad3e:
	lea (dat_20acf2).l,a2
	moveq #$1,d6

sub_20ad46:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ad4e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad52:
	sub.l d3,d1
	bcs.s loc_20ad5a
	addq.w #$1,d2
	bra.s loc_20ad52
loc_20ad5a:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ad64
	move.w #$1,d4
loc_20ad64:
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
	dbf d6,loc_20ad4e
	rts
	.incbin 44442, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b7ea(pc,d0.w),d0
	jmp dat_20b7ea(pc,d0.w)
dat_20b7ea:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205b9e).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20b8c0,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20b846
	tst.b ($ff1508).l
	beq.s loc_20b84e
	move.l #$20b8c4,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20b84e
loc_20b846:
	tst.b ($ff1508).l
	bne.s loc_20b85e
loc_20b84e:
	bset.b #$7,($ff156b).l
	jsr (sub_207aee).l
	beq.s loc_20b864
loc_20b85e:
	jmp (sub_203a80).l
loc_20b864:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20b8a6
	move.w #$6e,d0
	jmp (sub_205b9e).l
loc_20b8a6:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b8ba
	bge.s loc_20b8b6
	neg.w d0
loc_20b8b6:
	add.w d0,$8(a0)
loc_20b8ba:
	jmp (sub_2039d4).l
	.incbin 47296, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b906(pc,d0.w),d0
	jmp dat_20b906(pc,d0.w)
dat_20b906:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c004,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bfc4).l,a2
loc_20b954:
	jsr (sub_207aee).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c004,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b9a6
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b9a6:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b954
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b9ce
	bge.s loc_20b9c4
	neg.w d0
loc_20b9c4:
	add.w d0,$a(a0)
	jmp (sub_2039d4).l
loc_20b9ce:
	addq.b #$4,$24(a0)
	jmp (sub_2039d4).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b9f2
	bge.s loc_20b9e8
	neg.w d0
loc_20b9e8:
	add.w d0,$8(a0)
	jmp (sub_2039d4).l
loc_20b9f2:
	addq.b #$4,$24(a0)
	jmp (sub_2039d4).l
	tst.b $1e(a0)
	beq.s loc_20ba0c
	subq.b #$1,$1e(a0)
	jmp (sub_2039d4).l
loc_20ba0c:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ba26
	bge.s loc_20ba1c
	neg.w d0
loc_20ba1c:
	add.w d0,$a(a0)
	jmp (sub_2039d4).l
loc_20ba26:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202506).l
	tst.b $1e(a0)
	beq.s loc_20ba48
	subq.b #$1,$1e(a0)
	jmp (sub_2039d4).l
loc_20ba48:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ba62
	bge.s loc_20ba58
	neg.w d0
loc_20ba58:
	add.w d0,$8(a0)
	jmp (sub_2039d4).l
loc_20ba62:
	jmp (sub_203a80).l
	tst.l ($f680).w
	bne.s loc_20ba7c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203a80).l
loc_20ba7c:
	rts
	.incbin 47742, 1350
dat_20bfc4:
	.incbin 49092, 382

sub_20c142:
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	beq.s loc_20c150
	rts
loc_20c150:
	lea dat_20c17e(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c15c:
	cmp.w (a1)+,d0
	bcs.s loc_20c164
	addq.b #$2,d1
	bra.s loc_20c15c
loc_20c164:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c16e
	rts
loc_20c16e:
	move.b d1,($ff1574).l
	move.w dat_20c182(pc,d1.w),d0
	jmp (loc_202538).l
dat_20c17e:
	dc.b $04,$00,$ff,$ff
dat_20c182:
	dc.b $00,$05,$00,$06,$00,$02,$00,$04

sub_20c18a:
	move.w #$4f2,$2(a0)
	rts
	.incbin 49554, 1340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c6ec(pc,d0.w),d0
	jsr dat_20c6ec(pc,d0.w)
	jsr (sub_2039d4).l
	move.w $36(a0),d0
	jmp (loc_207b28).l
dat_20c6ec:
	dc.b $00,$96,$01,$56
loc_20c6f0:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ef6).l
dat_20c702:
	.incbin 50946, 50
dat_20c734:
	.incbin 50996, 52
dat_20c768:
	.incbin 51048, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20c7a4
	move.w #$4378,d0
loc_20c7a4:
	move.w d0,$2(a0)
	move.l #$20cb48,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20c702).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20c734).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20c768).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20c83e
	cmpi.b #$1,d1
	bne.s loc_20c80a
	clr.b d2
	bsr.w sub_20cab4
	bra.s loc_20c83e
loc_20c80a:
	cmpi.b #$2,d1
	bne.s loc_20c822
	move.b #$f0,d2
	bsr.w sub_20cab4
	move.b #$10,d2
	bsr.w sub_20cab4
	bra.s loc_20c83e
loc_20c822:
	cmpi.b #$3,d1
	bne.s loc_20c83e
	move.b #$e0,d2
	bsr.w sub_20cab4
	clr.b d2
	bsr.w sub_20cab4
	move.b #$20,d2
	bsr.w sub_20cab4
loc_20c83e:
	bra.w loc_20c842
loc_20c842:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20c860(pc,d0.w),d0
	jsr dat_20c860(pc,d0.w)
	bsr.w sub_20ca70
	bsr.w sub_20cae4
	bra.w loc_20c6f0
dat_20c860:
	.incbin 51296, 50
	bset.b #$7,$3f(a0)
	rts
	.incbin 51354, 50
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20ca30
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20c8e6
	neg.w d0
loc_20c8e6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts
	.incbin 51440, 170
	move.b $3d(a0),d0
	andi.w #$ff,d0
	move.w dat_20c9aa(pc,d0.w),d0
	jmp dat_20c9aa(pc,d0.w)
dat_20c9aa:
	dc.b $00,$06,$00,$20,$00,$84
	bset.b #$7,$3f(a0)
	btst.b #$3,$22(a0)
	bne.s loc_20c9c0
	rts
loc_20c9c0:
	addq.b #$2,$3d(a0)
	move.b #$1e,$3b(a0)
	tst.b $3b(a0)
	beq.s loc_20c9e2
	subq.b #$1,$3b(a0)
	bne.s loc_20ca2e
	bclr.b #$7,$3f(a0)
	move.b #$e,$16(a0)
loc_20c9e2:
	move.w $12(a0),d0
	subq.w #$8,d0
	cmpi.w #$fd00,d0
	bcc.s loc_20c9f2
	move.w #$fd00,d0
loc_20c9f2:
	move.w d0,$12(a0)
	jsr (sub_20397e).l
	move.l $c(a0),-(a7)
	subi.w #$30,$c(a0)
	jsr (sub_206d96).l
	move.l (a7)+,$c(a0)
	tst.w d1
	bpl.s loc_20ca2e
	move.b #$10,$16(a0)
	clr.w $12(a0)
	move.w $c(a0),$32(a0)
	bset.b #$7,$3f(a0)
	addq.b #$2,$3d(a0)
loc_20ca2e:
	rts

sub_20ca30:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20ca56
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20ca6e
	move.b #$ff,$3c(a0)
	bra.s loc_20ca6e
loc_20ca56:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20ca6e
	clr.b $3c(a0)
loc_20ca6e:
	rts

sub_20ca70:
	btst.b #$7,$3f(a0)
	beq.s loc_20cab2
	btst.b #$3,$22(a0)
	bne.s loc_20ca8c
	tst.b $3e(a0)
	beq.s loc_20cab2
	subq.b #$8,$3e(a0)
	bra.s loc_20ca98
loc_20ca8c:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20cab2
	addq.b #$8,$3e(a0)
loc_20ca98:
	move.b $3e(a0),d0
	jsr (sub_200760).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20cab2:
	rts

sub_20cab4:
	jsr (sub_207aee).l
	bne.s loc_20cae2
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20cae2:
	rts

sub_20cae4:
	btst.b #$0,$3f(a0)
	beq.s loc_20cb46
	btst.b #$3,$22(a0)
	beq.s loc_20cb46
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20cb46
	btst.b #$3,$22(a1)
	beq.s loc_20cb46
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20cb46
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20cb38
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20cb38
	move.l #$20000,d0
loc_20cb38:
	tst.b ($ff158f).l
	beq.s loc_20cb42
	neg.l d0
loc_20cb42:
	add.l d0,$8(a1)
loc_20cb46:
	rts
	.incbin 52040, 188
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc1e(pc,d0.w),d0
	jsr dat_20cc1e(pc,d0.w)
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
dat_20cc1e:
	dc.b $00,$08,$00,$4a,$00,$b4,$00,$f2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$4797,$2(a0)
	move.l #$20cd4a,$4(a0)
	btst.b #$0,($ff158f).l
	beq.s loc_20cc60
	move.b #$2,$1a(a0)
loc_20cc60:
	move.b ($ff158f).l,$3c(a0)
	tst.b ($ff1906).l
	bne.s loc_20ccb6
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20cc80
	neg.w d0
loc_20cc80:
	cmpi.w #$10,d0
	bcc.s loc_20ccb6
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20cc92
	neg.w d0
loc_20cc92:
	cmpi.w #$8,d0
	bcc.s loc_20ccb6
	bchg.b #$0,($ff158f).l
	addq.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20ccb4
	move.w #$bf,d0
	jsr (sub_20233c).l
loc_20ccb4:
	rts
loc_20ccb6:
	move.b ($ff158f).l,d0
	cmp.b $3c(a0),d0
	beq.s loc_20cccc
	move.b #$ff,$3d(a0)
	addq.b #$2,$24(a0)
loc_20cccc:
	move.b d0,$3c(a0)
	rts
	addq.b #$1,$3a(a0)
	cmpi.b #$7,$3a(a0)
	bne.s loc_20cce6
	move.b #$1,$1a(a0)
	bra.s loc_20cd0e
loc_20cce6:
	cmpi.b #$e,$3a(a0)
	bne.s loc_20cd0e
	clr.b $3a(a0)
	clr.b $1a(a0)
	btst.b #$0,($ff158f).l
	beq.s loc_20cd06
	move.b #$2,$1a(a0)
loc_20cd06:
	addq.b #$2,$24(a0)
	clr.b $3d(a0)
loc_20cd0e:
	rts
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20cd20
	neg.w d0
loc_20cd20:
	cmpi.b #$20,d0
	bcc.s loc_20cd3a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20cd32
	neg.w d0
loc_20cd32:
	cmpi.b #$10,d0
	bcc.s loc_20cd3a
	rts
loc_20cd3a:
	move.b #$2,$24(a0)
	move.b ($ff158f).l,$3c(a0)
	rts
	.incbin 52554, 42
	tst.b $28(a0)
	bmi.w loc_20cf1a
	jsr (sub_20e9f4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cda0(pc,d0.w),d0
	jsr dat_20cda0(pc,d0.w)
	jsr (sub_2039d4).l
	move.w $2a(a0),d0
	jmp (loc_207b28).l
dat_20cda0:
	.incbin 52640, 36
	move.b #$10,$19(a0)
	move.b #$f,$16(a0)
	move.b #$2f,$20(a0)
	move.l #$ffffc000,$2c(a0)
	addq.b #$2,$24(a0)
	lea dat_20cf5a(pc),a1
	tst.b $28(a0)
	beq.s loc_20cdf0
	lea dat_20cfca(pc),a1
loc_20cdf0:
	move.l a1,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206c00).l
	tst.w d1
	bpl.s loc_20ce0e
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20ce0e:
	rts
	.incbin 52752, 266
loc_20cf1a:
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20cf48
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.s loc_20cf48
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	addi.w #$ffec,$c(a0)
	jmp (sub_2039d4).l
loc_20cf48:
	jmp (sub_203a80).l
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $1d,$02,$03,$ff
dat_20cf5a:
	.incbin 53082, 112
dat_20cfca:
	.incbin 53194, 36
	tst.b $29(a0)
	beq.s loc_20cffc
	bpl.w loc_20d2ec
	bra.w loc_20d2ec
loc_20cffc:
	jsr (sub_20e9f4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d02a(pc,d0.w),d0
	jsr dat_20d02a(pc,d0.w)
	lea dat_20d322(pc),a1
	jsr (sub_205bde).l
	jsr (sub_2039d4).l
	move.w $2a(a0),d0
	jmp (loc_207b28).l
dat_20d02a:
	.incbin 53290, 700
loc_20d2e6:
	jmp (sub_203a80).l
loc_20d2ec:
	movea.w $2a(a0),a1
	cmpi.b #$21,$0(a1)
	bne.s loc_20d2e6
	tst.b $29(a0)
	bmi.s loc_20d304
	jmp (sub_2039d4).l
loc_20d304:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	lea dat_20d3a8(pc),a1
	jsr (sub_205bde).l
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
dat_20d322:
	.incbin 54050, 134
dat_20d3a8:
	.incbin 54184, 22
	tst.b $29(a0)
	bne.s loc_20d3ca
	jsr (sub_20e9f4).l
loc_20d3ca:
	tst.b $24(a0)
	beq.s loc_20d3ee
	movem.w $3a(a0),a1-a3
	cmpi.b #$22,$0(a1)
	bne.s loc_20d41e
	cmpi.b #$22,$0(a2)
	bne.s loc_20d41e
	cmpi.b #$22,$0(a3)
	bne.s loc_20d41e
loc_20d3ee:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d414(pc,d0.w),d0
	jsr dat_20d414(pc,d0.w)
	jsr (sub_2039d4).l
	tst.b $29(a0)
	bne.s loc_20d412
	move.w $34(a0),d0
	jmp (loc_207b28).l
loc_20d412:
	rts
dat_20d414:
	dc.b $00,$10,$01,$1a,$01,$42,$01,$6a
	dc.b $01,$8c
loc_20d41e:
	jmp (sub_203a80).l
	.incbin 54308, 516
	tst.b $28(a0)
	bmi.w loc_20d836
	jsr (sub_20e9f4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d650(pc,d0.w),d0
	jsr dat_20d650(pc,d0.w)
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
dat_20d650:
	.incbin 54864, 486
loc_20d836:
	tst.w $2a(a0)
	bne.s loc_20d876
	tst.b $21(a0)
	beq.s loc_20d862
	clr.b $21(a0)
	lea ($d000).w,a1
	cmpi.b #$4,$24(a1)
	beq.s loc_20d862
	cmpi.b #$6,$24(a1)
	beq.s loc_20d862
	tst.w $30(a1)
	bne.s loc_20d862
	bra.s loc_20d86c
loc_20d862:
	move.l $34(a0),d0
	add.l d0,$8(a0)
	bra.s loc_20d89a
loc_20d86c:
	move.w a1,$2c(a0)
	move.w #$78,$2a(a0)
loc_20d876:
	subq.w #$1,$2a(a0)
	bne.s loc_20d882
	jmp (sub_203a80).l
loc_20d882:
	movea.w $2c(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	clr.w $10(a1)
	clr.w $14(a1)
loc_20d89a:
	lea dat_20d9ec(pc),a1
	jsr (sub_205bde).l
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
	.incbin 55472, 316
dat_20d9ec:
	.incbin 55788, 22
	tst.b $28(a0)
	bmi.w loc_20db90
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20da24(pc,d0.w),d0
	jsr dat_20da24(pc,d0.w)
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
dat_20da24:
	dc.b $00,$06,$00,$3c,$00,$80
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$4332,$2(a0)
	move.l #$20dbc8,$4(a0)
	tst.b $28(a0)
	beq.s loc_20da78
	lea ($d000).w,a1
	bsr.s sub_20da82
	bcc.s loc_20da78
	addq.b #$2,$24(a0)
	move.b #$f8,$20(a0)
loc_20da78:
	lea ($d000).w,a1
	jmp (sub_208efc).l

sub_20da82:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subq.w #$8,d0
	subi.w #$58,d0
	bcc.s loc_20daa2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fff8,d0
	subi.w #$10,d0
loc_20daa2:
	rts
	tst.b $21(a0)
	bne.s loc_20dac8
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	addi.l #$4000,$2e(a0)
	jsr (sub_206c00).l
	tst.w d1
	bmi.s loc_20dac8
	bra.w loc_20dbae
loc_20dac8:
	lea dat_20db60(pc),a6
	moveq #$3,d6
loc_20dace:
	jsr (sub_207aee).l
	bne.s loc_20db38
	move.b #$3,$18(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
	move.w (a6)+,d0
	move.w (a6)+,d1
	add.w d0,$8(a1)
	add.w d1,$c(a1)
	move.l (a6)+,$2a(a1)
	move.l (a6)+,$2e(a1)
	move.b d6,d0
	addq.b #$1,d0
	move.b d0,$1a(a1)
	dbf d6,loc_20dace
loc_20db38:
	move.b #$18,$0(a0)
	move.b #$0,$24(a0)
	move.b #$1,$25(a0)
	clr.w $20(a0)
	tst.b $1(a0)
	bpl.s loc_20db5e
	move.w #$9e,d0
	jmp (sub_20233c).l
loc_20db5e:
	rts
dat_20db60:
	.incbin 56160, 48
loc_20db90:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	jsr (sub_2039d4).l
loc_20dbae:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	bgt.s loc_20dbc6
	jmp (sub_203a80).l
loc_20dbc6:
	rts
	.incbin 56264, 322
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd6a(pc,d0.w),d0
	jsr dat_20dd6a(pc,d0.w)
	jsr (sub_2039d4).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20dd48
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20dd48:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20dd66
	rts
loc_20dd66:
	bra.w loc_20df18
dat_20dd6a:
	dc.b $00,$10,$00,$60
dat_20dd6e:
	dc.b $12,$0c,$00,$12,$0c,$83,$0a,$0e
	dc.b $82,$0a,$0e,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$44b,d0
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20def8,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20dd6e(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20de34(pc)
	tst.b $1a(a0)
	beq.s loc_20ddde
	lea ($d000).w,a1
	jmp (sub_208efc).l
loc_20ddde:
	lea ($d000).w,a1
	jsr (sub_208efc).l
	beq.s loc_20de32
	btst.b #$3,$22(a0)
	beq.s loc_20de32
	tst.b ($ff1521).l
	bne.s loc_20de32
	tst.b ($ff151f).l
	bne.s loc_20de32
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20de30
	tst.w $30(a0)
	bne.s loc_20de30
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_20708e).l
loc_20de30:
	movea.l (a7)+,a0
loc_20de32:
	rts

sub_20de34:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20de4e
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20de50(pc,d0.w),d0
	jmp dat_20de50(pc,d0.w)
loc_20de4e:
	rts
dat_20de50:
	dc.b $00,$08,$00,$1c,$00,$32,$00,$48
	jsr sub_20deac(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 56940, 64

sub_20deac:
	tst.b $3a(a0)
	beq.s loc_20deb8
	subq.b #$1,$3a(a0)
	bne.s loc_20def6
loc_20deb8:
	tst.b $3c(a0)
	beq.s loc_20ded8
	subq.b #$8,$3b(a0)
	bcc.s loc_20def6
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20def6
loc_20ded8:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20def6
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20def6:
	rts
	.incbin 57080, 32
loc_20df18:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20df3c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20df3c:
	jmp (sub_203a80).l
	tst.b $24(a0)
	bne.w loc_20e000
	lea dat_20e0a4(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	add.w d0,d0
	move.w $0(a1,d0.w),d1
	movea.w $2(a1,d0.w),a5
	tst.b $28(a0)
	beq.s loc_20df6a
	neg.w d1
loc_20df6a:
	move.w d1,$36(a0)
	moveq #$3,d6
	moveq #$0,d5
	moveq #$0,d4
	moveq #$0,d3
	movea.w a0,a1
	bra.s loc_20df86
loc_20df7a:
	moveq #$0,d5
	move.w d4,d3
loc_20df7e:
	jsr (sub_207aee).l
	bne.s loc_20df9e
loc_20df86:
	bsr.s sub_20dfa4
	move.w d3,$34(a1)
	addi.w #$800,d3
	addq.w #$1,d5
	cmp.w a5,d5
	ble.s loc_20df7e
	addi.w #$4000,d4
	dbf d6,loc_20df7a
loc_20df9e:
	clr.w $2a(a0)
	rts

sub_20dfa4:
	move.w a0,$2a(a1)
	ori.b #$4,$1(a1)
	move.b #$2,$24(a1)
	move.b #$3,$18(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w #$4300,$2(a1)
	move.l #$20e0b0,$4(a1)
	move.w $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l $8(a0),$2c(a1)
	move.l $c(a0),$30(a1)
	move.w $36(a0),$36(a1)
	rts
loc_20e000:
	move.w $2a(a0),d0
	beq.s loc_20e016
	movea.w d0,a1
	cmpi.b #$27,$0(a1)
	beq.s loc_20e016
	jmp (sub_203a80).l
loc_20e016:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	moveq #$0,d1
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_200760).l
	swap d1
	swap d0
	asr.l #$2,d1
	asr.l #$2,d0
	move.l d1,d5
	move.l d0,d4
	asr.l #$1,d5
	asr.l #$1,d4
	add.l d1,d5
	add.l d0,d4
	add.l $2c(a0),d5
	add.l $30(a0),d4
	move.l $8(a0),d3
	move.l d5,$8(a0)
	move.l d4,$c(a0)
	sub.l d3,d5
	asr.l #$8,d5
	move.w d5,$10(a0)
	lea ($d000).w,a1
	move.w $10(a0),-(a7)
	move.w #$0,$10(a0)
	move.b #$a,$16(a0)
	jsr (sub_208efc).l
	sne d0
	move.w (a7)+,$10(a0)
	move.b #$8,$16(a0)
	tst.b d0
	beq.s loc_20e08c
	jsr (sub_208efc).l
loc_20e08c:
	jsr (sub_2039d4).l
	tst.w $2a(a0)
	bne.s loc_20e0a2
	move.w $2c(a0),d0
	jmp (loc_207b28).l
loc_20e0a2:
	rts
dat_20e0a4:
	.incbin 57508, 884
	tst.b $24(a0)
	bne.w loc_20e4d2
	move.w $8(a0),d0
	move.w d0,$2c(a0)
	swap d0
	clr.w d0
	subi.l #$800000,d0
	move.l d0,$2e(a0)
	addi.l #$1000000,d0
	move.l d0,$32(a0)
	moveq #$1,d6
	move.w $8(a0),d5
	addi.w #$40,d5
	move.w #$80,d4
	move.w #$8000,d3
	tst.b $28(a0)
	beq.s loc_20e45c
	addi.w #$8000,d3
loc_20e45c:
	movea.w a0,a1
	bsr.s sub_20e498
	bra.s loc_20e46c
loc_20e462:
	jsr (sub_207aee).l
	bne.s loc_20e47a
	bsr.s sub_20e47c
loc_20e46c:
	move.w d5,$8(a1)
	sub.w d4,d5
	move.w d3,$38(a1)
	dbf d6,loc_20e462
loc_20e47a:
	rts

sub_20e47c:
	move.w a0,$2a(a1)
	move.w $0(a0),$0(a1)
	move.l $2e(a0),$2e(a1)
	move.l $32(a0),$32(a1)
	move.w $c(a0),$c(a1)

sub_20e498:
	ori.b #$4,$1(a1)
	move.b #$2,$24(a1)
	move.b #$3,$18(a1)
	move.b #$20,$17(a1)
	move.b #$20,$19(a1)
	move.b #$10,$16(a1)
	move.w #$4487,$2(a1)
	move.l #$20e584,$4(a1)
	move.w $c(a0),$36(a1)
	rts
loc_20e4d2:
	move.l $8(a0),d0
	move.l d0,d1
	subi.l #$8000,d1
	cmp.l $2e(a0),d1
	bgt.s loc_20e4ea
	move.l $32(a0),d0
	move.l d0,d1
loc_20e4ea:
	move.l d1,$8(a0)
	sub.l d0,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	addi.w #$100,$38(a0)
	move.w $38(a0),d0
	asr.w #$8,d0
	jsr (sub_200760).l
	swap d1
	asr.l #$2,d1
	move.l d1,d0
	asr.l #$1,d0
	add.l d1,d0
	addi.l #$8000,d0
	swap d0
	add.w $36(a0),d0
	move.w d0,$c(a0)
	tst.w $2a(a0)
	beq.s loc_20e53a
	movea.w $2a(a0),a1
	cmpi.b #$29,$0(a1)
	beq.s sub_20e546
	jmp (sub_203a80).l
loc_20e53a:
	bsr.s sub_20e546
	move.w $2c(a0),d0
	jmp (loc_207b28).l

sub_20e546:
	lea ($d000).w,a1
	bsr.s sub_20e552
	jmp (sub_2039d4).l

sub_20e552:
	move.w $10(a0),$3a(a0)
	move.w #$0,$10(a0)
	move.b #$12,$16(a0)
	jsr (sub_208ef6).l
	sne d0
	move.w $3a(a0),$10(a0)
	move.b #$10,$16(a0)
	tst.b d0
	beq.s loc_20e582
	jsr (sub_208ef6).l
loc_20e582:
	rts
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e0
	dc.b $f0,$0f,$00,$10,$00,$00
	tst.b $29(a0)
	beq.s loc_20e5a0
	bpl.w loc_20e6ea
	bra.w loc_20e71c
loc_20e5a0:
	tst.b $24(a0)
	bne.w loc_20e650
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.b #$3,$18(a0)
	move.w #$358,$2(a0)
	move.l #$20e7aa,$4(a0)
	lea dat_20e7cc(pc),a1
	move.b $28(a0),d0
	andi.w #$fffe,d0
	add.w d0,d0
	adda.w d0,a1
	move.w (a1)+,$36(a0)
	move.w (a1),$30(a0)
	move.w #$100,$34(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e606
	neg.l $2e(a0)
	neg.l $32(a0)
loc_20e606:
	lea $38(a0),a6
	move.w $36(a0),d6
loc_20e60e:
	jsr (sub_207b04).l
	bne.w loc_20e764
	move.w a1,d0
	lsr.w #$6,d0
	move.b d0,(a6)+
	move.b #$1,$29(a1)
	move.w a0,$2a(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.l $4(a0),$4(a1)
	dbf d6,loc_20e60e
	move.b #$ff,$29(a1)
loc_20e650:
	move.l $2a(a0),d6
	add.l $32(a0),d6
	move.l $2e(a0),d5
	beq.s loc_20e67a
	move.l d6,d1
	move.l d5,d0
	bpl.s loc_20e668
	neg.l d1
	neg.l d0
loc_20e668:
	tst.l d1
	bge.s loc_20e670
	moveq #$0,d6
	bra.s loc_20e676
loc_20e670:
	cmp.l d0,d1
	ble.s loc_20e67a
	move.l d5,d6
loc_20e676:
	neg.l $32(a0)
loc_20e67a:
	move.l d6,$2a(a0)
	lea $38(a0),a6
	move.w $36(a0),d6
	subq.w #$1,d6
	move.l $8(a0),d5
	move.l $c(a0),d4
	moveq #$0,d1
	moveq #$0,d0
	move.b $2c(a0),d0
	jsr (sub_200760).l
	swap d1
	swap d0
	asr.l #$4,d1
	asr.l #$4,d0
loc_20e6a6:
	moveq #$ffffffff,d2
	move.b (a6)+,d2
	lsl.w #$6,d2
	movea.w d2,a1
	add.l d1,d5
	add.l d0,d4
	move.l d5,$8(a1)
	move.l d4,$c(a1)
	dbf d6,loc_20e6a6
	moveq #$ffffffff,d2
	move.b (a6),d2
	lsl.w #$6,d2
	movea.w d2,a1
	add.l d1,d5
	add.l d0,d4
	move.l $8(a1),d3
	move.l d5,$8(a1)
	move.l d4,$c(a1)
	sub.l d3,d5
	asr.l #$8,d5
	move.w d5,$10(a1)
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
loc_20e6ea:
	tst.b $24(a0)
	bne.w loc_20e752
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.b #$3,$18(a0)
	move.w #$358,$2(a0)
	rts
loc_20e71c:
	tst.b $24(a0)
	bne.s loc_20e74a
	addq.b #$2,$24(a0)
	move.b #$2,$1a(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	move.b #$2,$18(a0)
	move.w #$431c,$2(a0)
loc_20e74a:
	lea ($d000).w,a1
	bsr.w sub_20e76a
loc_20e752:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.s loc_20e764
	jmp (sub_2039d4).l
loc_20e764:
	jmp (sub_203a80).l

sub_20e76a:
	move.w $10(a0),-(a7)
	move.w #$0,$10(a0)
	move.b #$a,$16(a0)
	jsr (sub_208ef6).l
	sne d0
	move.w (a7)+,$10(a0)
	move.b #$8,$16(a0)
	tst.b d0
	beq.s loc_20e7a8
	jsr (sub_208ef6).l
	beq.s loc_20e7a8
	moveq #$2,d0
	tst.b ($ff158f).l
	beq.s loc_20e7a4
	neg.w d0
loc_20e7a4:
	add.w d0,$8(a1)
loc_20e7a8:
	rts
	.incbin 59306, 34
dat_20e7cc:
	dc.b $00,$05,$00,$00,$00,$05,$80,$00
	dc.b $00,$07,$40,$00
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e7f2(pc,d0.w),d0
	jsr dat_20e7f2(pc,d0.w)
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
dat_20e7f2:
	dc.b $00,$06,$00,$3c,$00,$f6
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$30,$16(a0)
	move.b #$ee,$20(a0)
	move.w #$446b,$2(a0)
	move.l #$20e91e,$4(a0)
	move.b $21(a0),d6
	beq.s loc_20e854
	clr.b $21(a0)
	lea ($d000).w,a1
	asr.w $10(a1)
	asr.w $14(a1)
	jsr (sub_208efc).l
	beq.s loc_20e852
	jsr (sub_208dae).l
loc_20e852:
	bra.s loc_20e85e
loc_20e854:
	lea ($d000).w,a1
	jmp (sub_208efc).l
loc_20e85e:
	move.w #$b0,d0
	jsr (sub_20233c).l
	addq.b #$2,$24(a0)
	clr.b $20(a0)
	lea dat_20e994(pc),a6
	lea dat_20e9b4(pc),a5
	lea dat_20e98c(pc),a4
	moveq #$7,d6
	movea.w a0,a1
	bra.s loc_20e8ba
loc_20e882:
	jsr (sub_207aee).l
	bne.s loc_20e8e8
	move.b $0(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
loc_20e8ba:
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
	dbf d6,loc_20e882
loc_20e8e8:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	ble.s loc_20e918
	jmp (sub_2039d4).l
loc_20e918:
	jmp (sub_203a80).l
	.incbin 59678, 110
dat_20e98c:
	dc.b $02,$05,$03,$05,$04,$05,$07,$05
dat_20e994:
	.incbin 59796, 32
dat_20e9b4:
	.incbin 59828, 64

sub_20e9f4:
	tst.b ($ff156a).l
	beq.s loc_20ea3a
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ea0c
	tst.b $28(a0)
	beq.s loc_20ea3a
loc_20ea0c:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203a80).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20ea38
	move.w #$9e,d0
	jsr (sub_20233c).l
loc_20ea38:
	addq.l #$4,a7
loc_20ea3a:
	rts

sub_20ea3c:
	tst.b $28(a0)
	bmi.s loc_20ea6c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ea5c
	tst.b ($ff156d).l
	bne.s loc_20ea6c
	addq.l #$4,a7
	jmp (loc_207b24).l
loc_20ea5c:
	tst.b ($ff156a).l
	bne.s loc_20ea6c
	addq.l #$4,a7
	jmp (sub_203a80).l
loc_20ea6c:
	rts
	jsr (sub_20ea3c).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20eb90
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea8e(pc,d0.w),d0
	jmp dat_20ea8e(pc,d0.w)
dat_20ea8e:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ed08,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20ec5e
	bsr.w sub_20ec6c
	tst.b $28(a0)
	bmi.s loc_20eadc
	move.b #$4,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20eadc:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20eb70
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20eb14
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20ec5e
loc_20eb14:
	move.b d0,$2e(a0)
	lea dat_20ec8a(pc),a1
	jsr (sub_205bde).l
	jsr (sub_2039d4).l
	move.w $2a(a0),d0
	jmp (loc_207b28).l
	.incbin 60210, 62

sub_20eb70:
	move.b $2e(a0),d0
	jsr (sub_200760).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20eb90:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eb9e(pc,d0.w),d0
	jmp dat_20eb9e(pc,d0.w)
dat_20eb9e:
	dc.b $00,$06,$00,$4c,$00,$94
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ed1c,$4(a0)
	move.w $8(a0),$2a(a0)
	bsr.w sub_20ec6c
	tst.b $28(a0)
	bmi.s loc_20ebe0
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20ebe0:
	move.b #$4,$24(a0)
	bra.w sub_20ec5e
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206c00).l
	tst.w d1
	bpl.s loc_20ec26
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20ec5e
loc_20ec26:
	jsr (sub_2039d4).l
	jmp (loc_207b24).l
	.incbin 60466, 44

sub_20ec5e:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20ec6c:
	lea dat_20ed40(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20ec8a:
	.incbin 60554, 182
dat_20ed40:
	.incbin 60736, 2442

sub_20f6ca:
	jmp (loc_206452).l
dat_20f6d0:
	.incbin 63184, 16
dat_20f6e0:
	.incbin 63200, 1612
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
	jsr (sub_202598).l
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
	jmp (dat_2078a4).l
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
	.incbin 227668, 16562
dat_23ba06:
	.incbin 244230, 768
dat_23bd06:
	.incbin 244998, 17146
