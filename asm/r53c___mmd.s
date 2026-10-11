; R53C__.MMD
; disassembled from the disc; code only, data comes from data/R53C__.MMD at build time
	.file "R53C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$20
	jmp (loc_201b96).l
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
	bsr.w sub_2020cc
	bsr.w sub_202074
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
	bsr.w sub_202492
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
	bsr.w sub_202492
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
	bsr.w sub_202492
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
	bsr.w sub_202492
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
	lea (dat_235650).l,a2
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
	lea (dat_235750).l,a2
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
	lea (dat_235650).l,a2
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
	lea (dat_235750).l,a2
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
	lea (dat_235650).l,a2
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
	lea (dat_236750).l,a2
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
	lea (dat_235650).l,a2
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
	lea (dat_236750).l,a2
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
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201430
	tst.b ($ff0f01).l
	bne.s loc_201430
	move.b #$1,($ff156a).l
loc_201430:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201496
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207586
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201496
	move.b #$1,($ff1508).l
loc_201496:
	bset.b #$7,($f600).w
	bsr.w sub_202484
	tst.b ($ff156e).l
	bne.s loc_2014bc
	btst.b #$7,($ff152e).l
	beq.s loc_2014f2
	bset.b #$0,($ff151d).l
	beq.s loc_2014c8
loc_2014bc:
	bsr.w sub_2003e8
	bclr.b #$0,($ff151d).l
loc_2014c8:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201562
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014f0
	bclr.b #$7,($ff152e).l
loc_2014f0:
	rts
loc_2014f2:
	bset.b #$0,($ff151d).l
	beq.s loc_201500
	bsr.w sub_2002bc
loc_201500:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20151c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201544
loc_20151c:
	tst.b ($ff1508).l
	bne.s loc_201562
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201544:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20154c:
	move.l #$0,(a1)+
	dbf d6,loc_20154c
	move.b #$c,($f62a).w
	bsr.w sub_200754
	rts
loc_201562:
	cmpi.w #$800,($f78e).w
	bne.s loc_201580
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201580:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201596
	btst.b #$7,($ff152e).l
	beq.s loc_20159c
loc_201596:
	move.l #$eee0eee,d0
loc_20159c:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015a4:
	move.l d0,(a1)+
	dbf d6,loc_2015a4
loc_2015aa:
	move.b #$c,($f62a).w
	bsr.w sub_200754
	bsr.w sub_202492
	bne.s loc_2015aa
	tst.l ($f680).w
	bsr.w sub_201a50
	moveq #$0,d0
	lea (dat_20fdf0).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015d4
	bsr.w sub_202598
loc_2015d4:
	moveq #$1,d0
	bsr.w sub_202598
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015f0:
	move.l d0,(a1)+
	dbf d1,loc_2015f0
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201602:
	move.l d0,(a1)+
	dbf d1,loc_201602
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201612:
	move.l d0,(a1)+
	dbf d1,loc_201612
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201624:
	move.l d0,(a1)+
	dbf d1,loc_201624
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201634:
	move.l d0,(a1)+
	dbf d1,loc_201634
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201644:
	move.l d0,(a1)+
	dbf d1,loc_201644
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20216e
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
	bsr.w sub_2027fa
	bsr.w sub_20294e
	bset.b #$2,($f754).w
	bsr.w sub_203330
	bsr.w sub_20321a
	jsr (sub_201376).l
	bsr.w sub_20198a
loc_2016c4:
	move.b #$c,($f62a).w
	bsr.w sub_200754
	bsr.w sub_202492
	bne.s loc_2016c4
	tst.l ($f680).w
	bne.s loc_2016c4
	bsr.w sub_201916
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ab0
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201728
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201728:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20176a
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20176a:
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
	jsr (sub_20fdea).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017fa
loc_2017f4:
	bsr.w sub_20033a
	bra.s loc_201808
loc_2017fa:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017f4
	bsr.w sub_20021a
loc_201808:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201816:
	move.b #$8,($f62a).w
	bsr.w sub_200754
	tst.b ($f7cc).w
	bne.s loc_201834
	btst.b #$7,($f605).w
	beq.s loc_201834
	eori.b #$1,($f63a).w
loc_201834:
	btst.b #$0,($f63a).w
	beq.w loc_2018a6
	bsr.w sub_201b14
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201884
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201816
	subq.b #$1,($ff1508).l
	bpl.s loc_201866
	clr.b ($ff1508).l
loc_201866:
	move.w #$e,d0
	jsr (sub_2059e0).l
	bsr.w sub_207586
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201892
loc_201884:
	andi.b #$70,d0
	beq.w loc_201816
	clr.b ($ff1508).l
loc_201892:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201410
loc_2018a6:
	bsr.w sub_201b5a
	addq.w #$1,($ff1504).l
	jsr (sub_20759c).l
	jsr (sub_203736).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201410
	tst.w ($ff1502).l
	bne.w loc_201410
	tst.w ($ff1906).l
	bne.s loc_2018ee
	cmpi.b #$6,($d024).w
	bcs.s loc_2018ee
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018f2
loc_2018ee:
	bsr.w sub_20294e
loc_2018f2:
	jsr (sub_2038e0).l
	tst.w ($ff190e).l
	bne.s loc_201904
	bsr.w sub_200184
loc_201904:
	jsr (sub_20c872).l
	bsr.w sub_202492
	bsr.w sub_2019bc
	bra.w loc_201816

sub_201916:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20192e
	move.w #$78,$30(a1)
loc_20192e:
	rts
	.incbin 6448, 90

sub_20198a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_20199c(pc,d0.w),($f796).w
	rts
dat_20199c:
	.incbin 6556, 32

sub_2019bc:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019da
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019da:
	subq.b #$1,($ff1912).l
	bpl.s loc_2019f8
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2019f8:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a20
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a20
	move.b #$0,($ff1915).l
loc_201a20:
	tst.b ($ff1916).l
	beq.s loc_201a4e
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a4e:
	rts

sub_201a50:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a72
	cmpi.b #$2,d0
	bne.s loc_201a72
	add.b ($ff156a).l,d0
loc_201a72:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a8a(pc,d1.w),d0
	jmp (sub_2059e0).l
dat_201a8a:
	.incbin 6794, 38

sub_201ab0:
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

sub_201b14:
	move.w #$ab,d0
	jsr (sub_20225c).l
	bset.b #$7,($f63a).w
	bne.s loc_201b58
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b3e
loc_201b34:
	move.w #$d5,d0
	jmp (sub_2059e0).l
loc_201b3e:
	tst.b ($ff151f).l
	bne.s loc_201b34
	tst.b ($ff1520).l
	bne.s loc_201b34
	move.w #$90,d0
	jmp (sub_2059e0).l
loc_201b58:
	rts

sub_201b5a:
	bclr.b #$7,($f63a).w
	beq.s loc_201b94
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b7a
loc_201b70:
	move.w #$d6,d0
	jmp (sub_2059e0).l
loc_201b7a:
	tst.b ($ff151f).l
	bne.s loc_201b70
	tst.b ($ff1520).l
	bne.s loc_201b70
	move.w #$91,d0
	jmp (sub_2059e0).l
loc_201b94:
	rts
loc_201b96:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c22
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201bd2
	move.w #$700,d0
loc_201bce:
	dbf d0,loc_201bce
loc_201bd2:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c08(pc,d0.w),d0
	jsr dat_201c08(pc,d0.w)
loc_201be8:
	jsr (sub_202280).l
	tst.b ($f63a).w
	bne.s loc_201bfc
	bsr.w sub_202034
	bsr.w sub_202022
loc_201bfc:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c08:
	.incbin 7176, 26
loc_201c22:
	tst.b ($ff1957).l
	beq.w loc_201be8
	cmpi.b #$2,($ff1506).l
	bne.w loc_201be8
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c50
	move.w #$700,d0
loc_201c4c:
	dbf d0,loc_201c4c
loc_201c50:
	move.w #$1,($f6fc).w
	jsr (sub_2021f4).l
	tst.b ($f64e).w
	bne.s loc_201c88
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cac
loc_201c88:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cac:
	move.w ($f624).w,(a5)
	jsr (sub_202210).l
	bra.w loc_201be8
	.incbin 7354, 60
	jsr (sub_2021f4).l
	bsr.w sub_202090
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
	bsr.w sub_205902
	tst.b ($f767).w
	beq.s loc_201da4
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201da4:
	jsr (sub_20fdea).l
	jsr (sub_202210).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e10
	bsr.w sub_202504
	jmp (loc_209b36).l
	dc.b $4e,$75
	jsr (sub_2021f4).l
	bsr.w sub_202090
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
	jsr (sub_202210).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e10
	bra.w loc_2024e8
	.incbin 7804, 16
	bsr.w sub_201f78
	cmpi.b #$1,($ff1903).l
	bne.s loc_201eae
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201eae:
	move.w ($f624).w,(a5)
	bra.w loc_2024e8
	dc.b $4e,$b9,$00,$20,$21,$f4,$61,$00
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
	jsr (sub_202210).l
	lea ($d000).w,a0
	bsr.w sub_205902
	tst.b ($f767).w
	beq.s loc_201f6a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f6a:
	tst.w ($f614).w
	beq.w loc_201f76
	subq.w #$1,($f614).w
loc_201f76:
	rts

sub_201f78:
	jsr (sub_2021f4).l
	bsr.w sub_202090
	tst.b ($f64e).w
	bne.s loc_201fae
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fd2
loc_201fae:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fd2:
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
	jmp (sub_202210).l
	dc.b $4e,$73

sub_202022:
	tst.b ($d02a).w
	bne.s loc_202032
	tst.w ($f786).w
	beq.s loc_202032
	addq.w #$1,($f786).w
loc_202032:
	rts

sub_202034:
	tst.w ($f780).w
	beq.s loc_20203e
	addq.w #$1,($f780).w
loc_20203e:
	tst.w ($f782).w
	beq.s loc_202048
	addq.w #$1,($f782).w
loc_202048:
	rts
	.incbin 8266, 42

sub_202074:
	bsr.w sub_2021f4
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202210

sub_202090:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20209e
	addq.w #$2,a1

sub_20209e:
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

sub_2020cc:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202148).l,a2
	moveq #$12,d7
loc_2020e0:
	move.w (a2)+,(a0)
	dbf d7,loc_2020e0
	move.w (dat_20214a).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202106:
	move.w d0,(a1)
	dbf d7,loc_202106
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202138:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202138
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202148:
	dc.b $80,$04
dat_20214a:
	.incbin 8522, 36

sub_20216e:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202190:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202190
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021be:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021be
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021dc:
	move.l d0,(a1)+
	dbf d1,loc_2021dc
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2021ec:
	move.l d0,(a1)+
	dbf d1,loc_2021ec
	rts

sub_2021f4:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202204:
	btst.b #$0,($a11100).l
	bne.s loc_202204
	rts

sub_202210:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8734, 62

sub_20225c:
	tst.b ($f00a).w
	bne.s loc_202268
	move.b d0,($f00a).w
	rts
loc_202268:
	tst.b ($f00b).w
	bne.s loc_202274
	move.b d0,($f00b).w
	rts
loc_202274:
	tst.b ($f00c).w
	bne.s loc_20227e
	move.b d0,($f00c).w
loc_20227e:
	rts

sub_202280:
	jsr (sub_2021f4).l
	tst.b ($f00a).w
	beq.s loc_20229a
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20229a:
	tst.b ($f00b).w
	beq.s loc_2022ae
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2022ae:
	tst.b ($f00c).w
	beq.s loc_2022c2
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022c2:
	bra.w sub_202210
	.incbin 8902, 32

sub_2022e6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2023a8).l,a3
	lea ($c00000).l,a4
	bra.s loc_202302

sub_2022f8:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023be).l,a3
loc_202302:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202310
	adda.w #$a,a3
loc_202310:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023d4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202330
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202330:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20237c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202358
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202358:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202366:
	lsr.w #$4,d0
loc_202368:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202376
	jmp (a3)

sub_202372:
	moveq #$0,d4
	moveq #$8,d3
loc_202376:
	dbf d0,loc_202368
	bra.s sub_202330
loc_20237c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20238a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20238a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202366
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202366
loc_2023a8:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202372
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202372
	rts
dat_2023be:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202372
	rts

sub_2023d4:
	move.b (a0)+,d0
loc_2023d6:
	cmpi.b #$ff,d0
	bne.s loc_2023de
	rts
loc_2023de:
	move.w d0,d7
loc_2023e0:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023d6
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
	bne.s loc_20240e
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2023e0
loc_20240e:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20241a:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20241a
	bra.s loc_2023e0

sub_202426:
	movem.l a1-a2,-(a7)
	lea (dat_20fe00).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20243e:
	tst.l (a2)
	beq.s loc_202446
	addq.w #$6,a2
	bra.s loc_20243e
loc_202446:
	move.w (a1)+,d0
	bmi.s loc_202452
loc_20244a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20244a
loc_202452:
	movem.l (a7)+,a1-a2
	rts
loc_202458:
	movem.l a1-a2,-(a7)
	lea (dat_20fe00).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202484
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20247e
loc_202476:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202476
loc_20247e:
	movem.l (a7)+,a1-a2
	rts

sub_202484:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20248a:
	clr.l (a2)+
	dbf d0,loc_20248a
	rts

sub_202492:
	tst.l ($f680).w
	beq.s loc_2024e6
	tst.w ($f6f8).w
	bne.s loc_2024e6
	movea.l ($f680).w,a0
	lea (loc_2023a8).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024b4
	adda.w #$a,a3
loc_2024b4:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023d4
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
loc_2024e6:
	rts
loc_2024e8:
	tst.w ($f6f8).w
	beq.w loc_202586
loc_2024f0:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202522

sub_202504:
	tst.w ($f6f8).w
	beq.s loc_202586
	tst.b ($f744).w
	bne.s loc_2024f0
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202522:
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
loc_202556:
	movea.w #$8,a5
	bsr.w sub_202372
	subq.w #$1,($f6f8).w
	beq.s loc_202588
	subq.w #$1,($f6fa).w
	bne.s loc_202556
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202586:
	rts
loc_202588:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20258e:
	move.l $6(a0),(a0)+
	dbf d0,loc_20258e
	rts

sub_202598:
	lea (dat_20fe00).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2025aa:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2022e6
	dbf d1,loc_2025aa
	rts
	.incbin 9674, 560

sub_2027fa:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202856).l,a0
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
	bra.w loc_202882
dat_202856:
	dc.b $00,$04,$00,$00,$0e,$97,$00,$00
	dc.b $03,$20,$00,$60
dat_202862:
	.incbin 10338, 32
loc_202882:
	tst.b ($ff1522).l
	beq.s loc_2028a2
	jsr (sub_20680e).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028a0
	moveq #$0,d0
loc_2028a0:
	bra.s loc_2028de
loc_2028a2:
	lea (dat_20291a).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028c4
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202862).l,a1
	adda.w d0,a1
	bra.s loc_2028ce
loc_2028c4:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028ce:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028de:
	subi.w #$a0,d1
	bcc.s loc_2028e6
	moveq #$0,d1
loc_2028e6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2028f0
	move.w d2,d1
loc_2028f0:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2028fc
	moveq #$0,d0
loc_2028fc:
	cmp.w ($f72e).w,d0
	blt.s loc_202906
	move.w ($f72e).w,d0
loc_202906:
	move.w d0,($f704).w
	bsr.w sub_202922
	lea (dat_20291e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20291a:
	dc.b $00,$40,$02,$6c
dat_20291e:
	dc.b $7f,$7f,$7f,$7f

sub_202922:
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

sub_20294e:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_20295a
	rts
loc_20295a:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202a86
	bsr.w sub_202b26
	bsr.w sub_2033ca
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202db0
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_202d7c
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$2,d6
	bsr.w sub_202d48
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202d18
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
	move.w ($f718).w,d0
	neg.w d0
	moveq #$d,d6
loc_2029fa:
	move.w d0,(a1)+
	dbf d6,loc_2029fa
	bsr.w sub_202a22
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202a62

sub_202a22:
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
loc_202a42:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a5e(pc,d6.w),d5
loc_202a4c:
	move.w d0,(a1)+
	dbf d5,loc_202a4c
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a42
	rts
dat_202a5e:
	dc.b $27,$03,$09,$00
loc_202a62:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202a70(pc,d2.w)
loc_202a6e:
	move.w (a2)+,d0
loc_202a70:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202a6e
	rts

sub_202a86:
	move.w ($f700).w,d4
	bsr.s sub_202aba
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ab8
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ab2
	bset.b #$2,($f754).w
	rts
loc_202ab2:
	bset.b #$3,($f754).w
loc_202ab8:
	rts

sub_202aba:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202acc
	bcs.s loc_202afc
	bra.s loc_202ad2
loc_202acc:
	clr.w ($f73a).w
	rts
loc_202ad2:
	cmpi.w #$10,d0
	blt.s loc_202adc
	move.w #$10,d0
loc_202adc:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202aea
	move.w ($f72a).w,d0
loc_202aea:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202afc:
	cmpi.w #$fff0,d0
	bge.s loc_202b06
	move.w #$fff0,d0
loc_202b06:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202aea
	move.w ($f728).w,d0
	bra.s loc_202aea
	.incbin 11030, 16

sub_202b26:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b3a
	subq.w #$5,d0
loc_202b3a:
	btst.b #$1,$22(a6)
	beq.s loc_202b5a
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ba6
	subi.w #$40,d0
	bcc.s loc_202ba6
	tst.b ($f75c).w
	bne.s loc_202bb8
	bra.s loc_202b66
loc_202b5a:
	sub.w ($f73e).w,d0
	bne.s loc_202b6c
	tst.b ($f75c).w
	bne.s loc_202bb8
loc_202b66:
	clr.w ($f73c).w
	rts
loc_202b6c:
	cmpi.w #$60,($f73e).w
	bne.s loc_202b94
	move.w $14(a6),d1
	bpl.s loc_202b7c
	neg.w d1
loc_202b7c:
	cmpi.w #$800,d1
	bcc.s loc_202ba6
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c06
	cmpi.w #$fffa,d0
	blt.s loc_202bd0
	bra.s loc_202bbe
loc_202b94:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c06
	cmpi.w #$fffe,d0
	blt.s loc_202bd0
	bra.s loc_202bbe
loc_202ba6:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c06
	cmpi.w #$fff0,d0
	blt.s loc_202bd0
	bra.s loc_202bbe
loc_202bb8:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202bbe:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c10
	bra.w loc_202bdc
loc_202bd0:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202bdc:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c34
	cmpi.w #$ff00,d1
	bgt.s loc_202c00
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c34
loc_202c00:
	move.w ($f72c).w,d1
	bra.s loc_202c34
loc_202c06:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c10:
	cmp.w ($f72e).w,d1
	blt.s loc_202c34
	subi.w #$800,d1
	bcs.s loc_202c30
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c34
loc_202c30:
	move.w ($f72e).w,d1
loc_202c34:
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
	bne.s loc_202c76
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202c70
	bset.b #$0,($f754).w
	rts
loc_202c70:
	bset.b #$1,($f754).w
loc_202c76:
	rts
	.incbin 11384, 160

sub_202d18:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d46
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202d40
	bset.b #$0,($f756).w
	rts
loc_202d40:
	bset.b #$1,($f756).w
loc_202d46:
	rts

sub_202d48:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d7a
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d74
	bset.b d6,($f756).w
	bra.s loc_202d7a
loc_202d74:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202d7a:
	rts

sub_202d7c:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202dae
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202da8
	bset.b d6,($f758).w
	bra.s loc_202dae
loc_202da8:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202dae:
	rts

sub_202db0:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202de2
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202ddc
	bset.b d6,($f75a).w
	bra.s loc_202de2
loc_202ddc:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202de2:
	rts
	.incbin 11748, 44

sub_202e10:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202ece
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_202fb4
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_202fb6
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202ecc
	bclr.b #$0,(a2)
	beq.s loc_202e82
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_202fb8
loc_202e82:
	bclr.b #$1,(a2)
	beq.s loc_202e9c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e2
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_202fb8
loc_202e9c:
	bclr.b #$2,(a2)
	beq.s loc_202eb2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20300e
loc_202eb2:
	bclr.b #$3,(a2)
	beq.s loc_202ecc
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2031e2
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20300e
loc_202ecc:
	rts

sub_202ece:
	lea (dat_2032a6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202eea
	bclr.b #$1,(a2)
	beq.s loc_202f34
	move.w #$e0,d4
loc_202eea:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202f64(pc,d0.w),a3
	beq.s loc_202f1c
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e2
	movem.l (a7)+,d4-d5
	bsr.w sub_202fb8
	movea.l (a7)+,a0
	bra.s loc_202f34
loc_202f1c:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e4
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_202fe4
	movea.l (a7)+,a0
loc_202f34:
	tst.b (a2)
	bne.s loc_202f3a
	rts
loc_202f3a:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202f4e
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202f4e:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202f74
dat_202f64:
	.incbin 12132, 16
loc_202f74:
	moveq #$f,d6
	move.l #$800000,d7
loc_202f7c:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_202fa8
	btst.b d0,(a2)
	beq.s loc_202fa8
	add.w d0,d0
	movea.l dat_202f64(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2030ba
	movem.l (a7)+,d4-d5
	bsr.w sub_2031e2
	bsr.w sub_20303c
	movem.l (a7)+,d4-d5/a0
loc_202fa8:
	addi.w #$10,d4
	dbf d6,loc_202f7c
	clr.b (a2)
	rts

sub_202fb4:
	rts

sub_202fb6:
	rts

sub_202fb8:
	moveq #$15,d6

sub_202fba:
	move.l #$800000,d7
	move.l d0,d1
loc_202fc2:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030ba
	move.l d1,d0
	bsr.w sub_20303c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_202fc2
	rts

sub_202fe4:
	move.l #$800000,d7
	move.l d0,d1
loc_202fec:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030bc
	move.l d1,d0
	bsr.w sub_20303c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_202fec
	rts

sub_20300e:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203018:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030ba
	move.l d1,d0
	bsr.w sub_20303c
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203018
	rts

sub_20303c:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203078
	btst.b #$3,(a0)
	bne.s loc_203058
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203058:
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
loc_203078:
	btst.b #$3,(a0)
	bne.s loc_20309a
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
loc_20309a:
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

sub_2030ba:
	add.w (a3),d5

sub_2030bc:
	add.w $4(a3),d4

sub_2030c0:
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
	beq.s loc_20310a
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
loc_20310a:
	rts
	.incbin 12556, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2030c0
	bne.s loc_203170
	movem.l (a7)+,d3-d5
	bra.s loc_20319a
loc_203170:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_20319e
	bne.s loc_20319a
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2031e8
	bsr.w sub_20303c
	movem.l (a7)+,d3-d5
loc_20319a:
	movea.l (a7)+,a0
	rts

sub_20319e:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2031de
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2031de
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2031de
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2031de
	moveq #$0,d0
	rts
loc_2031de:
	moveq #$1,d0
	rts

sub_2031e2:
	add.w (a3),d5

sub_2031e4:
	add.w $4(a3),d4

sub_2031e8:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 12798, 28

sub_20321a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203250
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203278

sub_203250:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203254:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2031e2
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_202fba
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203254
	rts
loc_203278:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20327c:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032a6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_2032f8
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20327c
	rts
dat_2032a6:
	.incbin 12966, 66
dat_2032e8:
	.incbin 13032, 16

sub_2032f8:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2032e8(pc,d0.w),a3
	beq.s loc_20331a
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e2
	movem.l (a7)+,d4-d5
	bsr.w sub_202fb8
	bra.s loc_20332e
loc_20331a:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e4
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_202fe4
loc_20332e:
	rts

sub_203330:
	moveq #$0,d0
	lea (dat_20fdf0).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2022f8
	movea.l (a2)+,a0
	bsr.w sub_20337c
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200476
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_20337a
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20337a
	bsr.w sub_202426
loc_20337a:
	rts

sub_20337c:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203386:
	move.l d0,(a3)+
	dbf d1,loc_203386
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20339c
	lea ($a040).w,a3
	moveq #$2,d1

sub_20339c:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237a70).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033b6:
	move.w d1,d0
	movea.l a3,a0
loc_2033ba:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033ba
	lea $80(a3),a3
	dbf d2,loc_2033b6
	rts

sub_2033ca:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203444(pc,d0.w),d0
	jsr dat_203444(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2033f0
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2033f0:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20341e
	bcc.s loc_203420
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203414
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203414:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20341e:
	rts
loc_203420:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203438
	btst.b #$1,($d022).w
	beq.s loc_203438
	add.w d1,d1
	add.w d1,d1
loc_203438:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203444:
	.incbin 13380, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203594(pc,d0.w),d0
	jmp dat_203594(pc,d0.w)
dat_203594:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $03,$10,$f7,$26,$4e,$75
	move.w #$e10,d0
	move.w #$1f8,d1
	bsr.w sub_2036f0
	bne.s loc_2035bc
	tst.b ($f7a7).w
	bne.s loc_2035be
	move.w #$320,($f726).w
loc_2035bc:
	rts
loc_2035be:
	move.w #$1f8,($f72e).w
	move.w #$1f8,($f726).w
	rts
	.incbin 13772, 292

sub_2036f0:
	cmp.w ($d008).w,d0
	ble.s loc_2036fa
	moveq #$0,d0
	rts
loc_2036fa:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203706
	neg.w d1
loc_203706:
	cmpi.w #$4,d1
	bge.s loc_203712
	move.w ($f726).w,($f72e).w
loc_203712:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203732
	cmp.w ($f72a).w,d0
	ble.s loc_20372a
	move.w ($f72a).w,d0
loc_20372a:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203732:
	moveq #$1,d0
	rts

sub_203736:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20373e:
	move.b (a0),d0
	beq.s loc_203754
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b58).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203754:
	lea $40(a0),a0
	dbf d7,loc_20373e
	rts

sub_20375e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20379c
	bpl.s loc_20378e
	btst.b #$1,$2c(a0)
	beq.s loc_20378e
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20379c
loc_20378e:
	btst.b #$2,$2c(a0)
	bne.s loc_20379c
	addi.w #$38,$12(a0)
loc_20379c:
	tst.w $12(a0)
	bmi.s loc_2037b0
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037b0
	move.w #$1000,$12(a0)
loc_2037b0:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037c0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2037fc
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2037fc
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2037fa
	neg.w d1
loc_2037fa:
	add.w d1,d0
loc_2037fc:
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

sub_203816:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203886
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038a2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038a2
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203860
	cmpi.w #$800,d3
	bcs.s loc_203872
	subi.w #$800,d3
	bra.s loc_203872
loc_203860:
	cmpi.w #$700,($f704).w
	bcs.s loc_203872
	cmpi.w #$100,d3
	bcc.s loc_203872
	addi.w #$800,d3
loc_203872:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038a2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038a2
loc_203886:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038a2
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038a2:
	rts
	.incbin 14500, 30

sub_2038c2:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2038c8:
	move.l d1,(a1)+
	dbf d0,loc_2038c8
	rts
dat_2038d0:
	.incbin 14544, 16

sub_2038e0:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2038ec:
	tst.w (a4)
	beq.w loc_2039ac
	moveq #$2,d6
loc_2038f4:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039a4
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_20395a
	movea.l dat_2038d0(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_20393e
	cmpi.w #$800,d2
	bcs.s loc_203950
	subi.w #$800,d2
	bra.s loc_203950
loc_20393e:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203950
	cmpi.w #$100,d2
	bcc.s loc_203950
	addi.w #$800,d2
loc_203950:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_20397c
loc_20395a:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_20397c
	.incbin 14692, 24
loc_20397c:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_20399a
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_20399e
loc_20399a:
	bsr.w sub_2039ce
loc_20399e:
	bset.b #$7,$1(a0)
loc_2039a4:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2038f4
loc_2039ac:
	lea $80(a4),a4
	dbf d7,loc_2038ec
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2039c6
	move.l #$0,(a2)
	rts
loc_2039c6:
	move.b #$0,-$5(a2)
	rts

sub_2039ce:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a14
	btst.l #$1,d4
	bne.w loc_203a62
loc_2039e0:
	cmpi.b #$50,d5
	beq.s loc_203a12
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
	bne.s loc_203a0c
	addq.w #$1,d0
loc_203a0c:
	move.w d0,(a2)+
	dbf d1,loc_2039e0
loc_203a12:
	rts
loc_203a14:
	btst.l #$1,d4
	bne.w loc_203aa8
loc_203a1c:
	cmpi.b #$50,d5
	beq.s loc_203a60
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
	bne.s loc_203a5a
	addq.w #$1,d0
loc_203a5a:
	move.w d0,(a2)+
	dbf d1,loc_203a1c
loc_203a60:
	rts
loc_203a62:
	cmpi.b #$50,d5
	beq.s loc_203aa6
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
	bne.s loc_203aa0
	addq.w #$1,d0
loc_203aa0:
	move.w d0,(a2)+
	dbf d1,loc_203a62
loc_203aa6:
	rts
loc_203aa8:
	cmpi.b #$50,d5
	beq.s loc_203afa
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
	bne.s loc_203af4
	addq.w #$1,d0
loc_203af4:
	move.w d0,(a2)+
	dbf d1,loc_203aa8
loc_203afa:
	rts
	.incbin 15100, 92
dat_203b58:
	.incbin 15192, 246

sub_203c4e:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203c60
	move.w #$0,(a1)
	rts
loc_203c60:
	tst.w (a1)
	bne.s loc_203c6a
	move.b #$1,$1(a1)
loc_203c6a:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cb4
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ca6
	neg.w $10(a0)
loc_203ca6:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_2059e0
loc_203cb4:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203cd2
	cmpa.w #$d040,a0
	beq.s loc_203cd2
	tst.b ($ff1906).l
	beq.s loc_203cd2
	jmp (loc_207144).l
loc_203cd2:
	move.b $2a(a0),d0
	beq.s loc_203cfc
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203cee
	cmpi.b #$2d,d0
	bcs.s loc_203cf8
	move.b #$2d,d0
	bra.s loc_203cf8
loc_203cee:
	cmpi.b #$1e,d0
	bcs.s loc_203cf8
	move.b #$1e,d0
loc_203cf8:
	move.b d0,$2a(a0)
loc_203cfc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d0a(pc,d0.w),d1
	jmp dat_203d0a(pc,d1.w)
dat_203d0a:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d14:
	tst.b ($d300).w
	bne.s loc_203d52
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d52:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203d7a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203d7a:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203dae:
	tst.b ($ff1506).l
	bne.s loc_203e14
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e14
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e18
	cmpi.b #$2f,d1
	bne.s loc_203e16
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e14
	tst.b $2c(a0)
	beq.s loc_203e14
	jsr (sub_207798).l
	bne.s loc_203e14
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e0c
	moveq #$0,d0
loc_203e0c:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e14:
	rts
loc_203e16:
	rts

sub_203e18:
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

sub_203e3e:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e4a
	neg.w d0
loc_203e4a:
	btst.b #$1,$2c(a0)
	beq.s loc_203e5a
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203e82
loc_203e5a:
	cmpi.w #$600,d0
	bcs.s loc_203e82
	tst.w $14(a0)
	bpl.s loc_203e74
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203e90
	move.w #$e0,d1
	bra.s loc_203e90
loc_203e74:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203e90
	move.w #$60,d1
	bra.s loc_203e90
loc_203e82:
	cmpi.w #$a0,d1
	beq.s loc_203e90
	bcc.s loc_203e8e
	addq.w #$2,d1
	bra.s loc_203e90
loc_203e8e:
	subq.w #$2,d1
loc_203e90:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e3e
	bsr.w sub_203dae
	tst.w ($ff1588).l
	beq.s loc_203eb6
	btst.b #$4,($f605).w
	beq.s loc_203eb6
	move.b #$1,($ff1906).l
	rts
loc_203eb6:
	tst.b ($f7cc).w
	bne.s loc_203ec2
	move.w ($f604).w,($f602).w
loc_203ec2:
	btst.b #$0,$2c(a0)
	beq.s loc_203ee6
	cmpi.b #$6,($ff1506).l
	bne.s loc_203ee0
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203efe
loc_203ee0:
	bsr.w sub_2041c8
	bra.s loc_203efe
loc_203ee6:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f44(pc,d0.w),d1
	jsr dat_203f44(pc,d1.w)
	jsr (sub_206498).l
loc_203efe:
	bsr.s sub_203f52
	bsr.w sub_204012
	bsr.w sub_20402c
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f26
	tst.b $1c(a0)
	bne.s loc_203f26
	move.b $1d(a0),$1c(a0)
loc_203f26:
	bsr.w sub_2053d0
	tst.b $2c(a0)
	bmi.s loc_203f3e
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f3e
	jsr (sub_206cde).l
loc_203f3e:
	bsr.w sub_205286
	rts
dat_203f44:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203f52:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203f76
	move.w $30(a0),d0
	beq.s loc_203f68
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203f76
loc_203f68:
	btst.b #$6,$2c(a0)
	bne.s loc_203f76
	jsr (sub_203816).l
loc_203f76:
	tst.b ($ff151f).l
	beq.s loc_203fba
	tst.w $32(a0)
	beq.s loc_203fba
	subq.w #$1,$32(a0)
	bne.s loc_203fba
	tst.b ($ff1520).l
	bne.s loc_203fb2
	tst.b ($ff1958).l
	bne.s loc_203fb2
	tst.b ($ff152e).l
	bne.s loc_203fac
	move.w #$e,d0
	jsr (sub_2059e0).l
loc_203fac:
	jsr (sub_201a50).l
loc_203fb2:
	move.b #$0,($ff151f).l
loc_203fba:
	tst.b ($ff1520).l
	beq.s loc_204010
	tst.w $34(a0)
	beq.s loc_204010
	subq.w #$1,$34(a0)
	bne.s loc_204010
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204008
	tst.b ($ff1958).l
	bne.s loc_204008
	tst.b ($ff152e).l
	bne.s loc_204002
	move.w #$e,d0
	jsr (sub_2059e0).l
loc_204002:
	jsr (sub_201a50).l
loc_204008:
	move.b #$0,($ff1520).l
loc_204010:
	rts

sub_204012:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20402c:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204038
loc_204036:
	rts
loc_204038:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20404a
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204036
loc_20404a:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20408e
	bset.b #$6,$22(a0)
	bne.s loc_204036
	bsr.w sub_205ce4
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204036
	bra.s loc_2040c6
loc_20408e:
	tst.w $12(a0)
	beq.s loc_204096
	bpl.s loc_204036
loc_204096:
	bclr.b #$6,$22(a0)
	beq.s loc_204036
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204036
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2040c6
	move.w #$f000,$12(a0)
loc_2040c6:
	jsr (sub_207798).l
	bne.s loc_2040da
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2040da:
	rts

sub_2040dc:
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
	bcs.s loc_2041b6
	move.l #$50000,d0
loc_2041b6:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2041c8:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2041ee
	tst.b ($ff152e).l
	beq.s loc_2041e4
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041ee
loc_2041e4:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20429e
loc_2041ee:
	tst.b $2a(a0)
	bne.w loc_2042ac
	tst.b ($f784).w
	beq.w loc_2042ac
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20420c
	neg.w d0
loc_20420c:
	tst.w ($f786).w
	bne.s loc_204218
	move.w #$1,($f786).w
loc_204218:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20422e
	move.b #$1,($ff1502).l
	bra.w loc_2059dc
loc_20422e:
	cmpi.w #$d2,d1
	bcs.s loc_204282
	cmpi.b #$2,($ff1522).l
	beq.s loc_204280
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204258
	move.w #$82,d0
	jsr (sub_2059e0).l
	moveq #$0,d0
loc_204258:
	add.b ($f784).w,d0
	bpl.s loc_204262
	moveq #$0,d0
	bra.s loc_20426a
loc_204262:
	cmpi.b #$3,d0
	bcs.s loc_20426a
	moveq #$2,d0
loc_20426a:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2040dc
	move.b #$2,($ff1522).l
loc_204280:
	rts
loc_204282:
	cmpi.w #$5a,d1
	bcc.s loc_20429a
	cmp.w d2,d0
	bcc.w loc_203d14
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20429a:
	cmp.w d2,d0
	bcc.s loc_2042ac
loc_20429e:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042ac:
	rts
	bsr.w sub_203c4e
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2042de
	tst.b ($ff195b).l
	beq.s loc_2042cc
	cmpi.b #$79,$1a(a0)
	bne.s loc_204308
	bra.s loc_2042d4
loc_2042cc:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204308
loc_2042d4:
	bsr.w sub_204b70
	jmp (sub_20375e).l
loc_2042de:
	bsr.w sub_2043b6
	bsr.w sub_2041c8
	bsr.w sub_204c5a
	bsr.w sub_204d86
	bsr.w sub_20442a
	bsr.w sub_204bdc
	bsr.w sub_204b70
	jsr (sub_2037c0).l
	bsr.w sub_200b60
	bsr.w sub_204e04
loc_204308:
	rts
	tst.b ($f7c7).w
	bne.s loc_204324
	cmpi.b #$15,$1c(a0)
	beq.s loc_204324
	tst.w $12(a0)
	bmi.s loc_204324
	move.b #$0,$1c(a0)
loc_204324:
	bsr.w sub_2043b6
	bsr.w sub_2041c8
	bsr.w sub_204d44
	bsr.w sub_204a90
	bsr.w sub_204b70
	jsr (sub_20375e).l
	btst.b #$6,$22(a0)
	beq.s loc_20434c
	subi.w #$28,$12(a0)
loc_20434c:
	bsr.w sub_204e4e
	bsr.w sub_204e72
	rts
	bsr.w sub_2043b6
	bsr.w sub_2041c8
	bsr.w sub_204c5a
	bsr.w sub_204dc2
	bsr.w sub_2048ca
	bsr.w sub_204b70
	tst.b $2a(a0)
	bne.s loc_20437a
	jsr (sub_2037c0).l
loc_20437a:
	bsr.w sub_200b60
	bsr.w sub_204e04
	rts
	bsr.w sub_2043b6
	bsr.w sub_2041c8
	bsr.w sub_204d44
	bsr.w sub_204a90
	bsr.w sub_204b70
	jsr (sub_20375e).l
	btst.b #$6,$22(a0)
	beq.s loc_2043ac
	subi.w #$28,$12(a0)
loc_2043ac:
	bsr.w sub_204e4e
	bsr.w sub_204e72
	rts

sub_2043b6:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204422
	tst.w ($ff1506).l
	bne.s loc_204422
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204424).l,a2
loc_2043ea:
	move.b (a2)+,d0
	bmi.s loc_2043fa
	cmp.b d0,d1
	bne.s loc_2043ea
	bset.b #$1,$2c(a0)
	rts
loc_2043fa:
	bclr.b #$1,$2c(a0)
	beq.s loc_204422
	tst.w $12(a0)
	bpl.s loc_204422
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204422
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204422
	neg.w $10(a0)
loc_204422:
	rts
dat_204424:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20442a:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204754
	tst.w $3e(a0)
	bne.w loc_204704
	btst.b #$2,($f602).w
	beq.s loc_204452
	bsr.w sub_2047e4
loc_204452:
	btst.b #$3,($f602).w
	beq.s loc_20445e
	bsr.w sub_20485a
loc_20445e:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204704
	tst.w $14(a0)
	beq.s loc_20447e
	tst.b $2a(a0)
	beq.w loc_204704
	bra.s loc_20448a
loc_20447e:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20448a:
	btst.b #$3,$22(a0)
	beq.s loc_2044dc
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204534
	cmpi.b #$1e,$0(a1)
	bne.s loc_2044bc
	move.b #$0,$1c(a0)
	bra.w loc_204704
loc_2044bc:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204518
	cmp.w d2,d1
	bge.s loc_204506
	bra.s loc_204534
loc_2044dc:
	jsr (sub_206a42).l
	cmpi.w #$c,d1
	blt.s loc_204534
	move.w #$ab,d0
	jsr (sub_20225c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204510
loc_204506:
	btst.b #$0,$22(a0)
	bne.s loc_204520
	bra.s loc_20452a
loc_204510:
	cmpi.b #$3,$37(a0)
	bne.s loc_204534
loc_204518:
	btst.b #$0,$22(a0)
	bne.s loc_20452a
loc_204520:
	move.b #$32,$1c(a0)
	bra.w loc_204704
loc_20452a:
	move.b #$6,$1c(a0)
	bra.w loc_204704
loc_204534:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204548
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204548:
	btst.b #$7,($f788).w
	bne.w loc_20464c
	btst.b #$6,($f788).w
	bne.w loc_20466c
	btst.b #$1,($f602).w
	bne.w loc_20466c
	andi.b #$f,($f788).w
	beq.s loc_204580
	btst.b #$0,($f603).w
	beq.s loc_204594
	bset.b #$7,($f788).w
	bra.w loc_204728
loc_204580:
	btst.b #$0,($f603).w
	beq.w loc_204594
	move.b #$1,($f788).w
	bra.w loc_204728
loc_204594:
	btst.b #$0,($f602).w
	beq.s loc_204610
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2045f2
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2045c4
	asr.w #$1,d2
	sub.w d2,d1
loc_2045c4:
	btst.b #$0,$22(a0)
	beq.s loc_2045d0
	neg.w d0
	neg.w d1
loc_2045d0:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2045e6
	cmp.w d0,d1
	ble.s loc_2045ec
	bra.s loc_2045ea
loc_2045e6:
	cmp.w d1,d0
	ble.s loc_2045ec
loc_2045ea:
	move.w d1,d0
loc_2045ec:
	move.w d0,$14(a0)
	rts
loc_2045f2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20460c
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20225c).l
loc_20460c:
	bra.w loc_204728
loc_204610:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204630
	move.w #$ab,d0
	jsr (sub_20225c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20466c
loc_204630:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20225c).l
	bra.w loc_204704
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20464c:
	btst.b #$0,($f602).w
	beq.s loc_20466c
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204728
	addq.w #$2,($f73e).w
	bra.w loc_204728
loc_20466c:
	btst.b #$6,($f788).w
	bne.w loc_2046e8
	andi.b #$f,($f788).w
	beq.s loc_204690
	btst.b #$1,($f603).w
	beq.s loc_2046a2
	bset.b #$6,($f788).w
	bra.w loc_204728
loc_204690:
	btst.b #$1,($f603).w
	beq.s loc_2046a2
	move.b #$1,($f788).w
	bra.w loc_204728
loc_2046a2:
	btst.b #$1,($f602).w
	beq.s loc_204704
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2046e6
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046e6
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046d8
	neg.w $14(a0)
loc_2046d8:
	move.w #$9c,d0
	jsr (sub_20225c).l
	bsr.w sub_204c04
loc_2046e6:
	bra.s loc_204728
loc_2046e8:
	btst.b #$1,($f602).w
	beq.s loc_204704
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204728
	subq.w #$2,($f73e).w
	bra.s loc_204728
loc_204704:
	cmpi.w #$60,($f73e).w
	bne.s loc_20471e
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204728
	move.b #$0,($f788).w
	bra.s loc_204728
loc_20471e:
	bcc.s loc_204724
	addq.w #$4,($f73e).w
loc_204724:
	subq.w #$2,($f73e).w
loc_204728:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204754
	move.w $14(a0),d0
	beq.s loc_204754
	bmi.s loc_204748
	sub.w d5,d0
	bcc.s loc_204742
	move.w #$0,d0
loc_204742:
	move.w d0,$14(a0)
	bra.s loc_204754
loc_204748:
	add.w d5,d0
	bcc.s loc_204750
	move.w #$0,d0
loc_204750:
	move.w d0,$14(a0)
loc_204754:
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204772:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2047e2
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2047e2
	bmi.s loc_20478a
	neg.w d1
loc_20478a:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206902
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2047e2
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2047de
	cmpi.b #$40,d0
	beq.s loc_2047cc
	cmpi.b #$80,d0
	beq.s loc_2047c6
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2047c6:
	sub.w d1,$12(a0)
	rts
loc_2047cc:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2047de:
	add.w d1,$12(a0)
loc_2047e2:
	rts

sub_2047e4:
	tst.b $2a(a0)
	bne.s loc_204858
	move.w $14(a0),d0
	beq.s loc_2047f2
	bpl.s loc_204822
loc_2047f2:
	bset.b #$0,$22(a0)
	bne.s loc_204806
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204806:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204816
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204816
	move.w d1,d0
loc_204816:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204822:
	sub.w d4,d0
	bcc.s loc_20482a
	move.w #$ff80,d0
loc_20482a:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204858
	cmpi.w #$400,d0
	blt.s loc_204858
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20225c).l
loc_204858:
	rts

sub_20485a:
	tst.b $2a(a0)
	bne.s loc_2048c8
	move.w $14(a0),d0
	bmi.s loc_204892
	bclr.b #$0,$22(a0)
	beq.s loc_20487a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20487a:
	cmp.w d6,d0
	bge.s loc_204886
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204886
	move.w d6,d0
loc_204886:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204892:
	add.w d4,d0
	bcc.s loc_20489a
	move.w #$80,d0
loc_20489a:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048c8
	cmpi.w #$fc00,d0
	bgt.s loc_2048c8
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20225c).l
loc_2048c8:
	rts

sub_2048ca:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a14
	tst.w $3e(a0)
	bne.s loc_204902
	btst.b #$2,($f602).w
	beq.s loc_2048f6
	bsr.w sub_204a4a
loc_2048f6:
	btst.b #$3,($f602).w
	beq.s loc_204902
	bsr.w sub_204a6e
loc_204902:
	tst.b $2a(a0)
	beq.w loc_2049ac
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204922
	asr.w #$1,d2
	sub.w d2,d1
loc_204922:
	btst.b #$0,$22(a0)
	beq.s loc_20492e
	neg.w d0
	neg.w d1
loc_20492e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204944
	cmp.w d0,d1
	ble.s loc_20494a
	bra.s loc_204948
loc_204944:
	cmp.w d1,d0
	ble.s loc_20494a
loc_204948:
	move.w d1,d0
loc_20494a:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_20497e
	rts
loc_204958:
	move.w #$ab,d0
	jsr (sub_20225c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_2049de
loc_20497e:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204958
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20225c).l
	btst.b #$0,$22(a0)
	bne.s loc_2049a4
	bsr.w sub_204a6e
	bra.s loc_2049ac
loc_2049a4:
	bsr.w sub_204a4a
	bra.s loc_2049ac
	dc.b $4e,$75
loc_2049ac:
	move.w $14(a0),d0
	beq.s loc_2049ce
	bmi.s loc_2049c2
	sub.w d5,d0
	bcc.s loc_2049bc
	move.w #$0,d0
loc_2049bc:
	move.w d0,$14(a0)
	bra.s loc_2049ce
loc_2049c2:
	add.w d5,d0
	bcc.s loc_2049ca
	move.w #$0,d0
loc_2049ca:
	move.w d0,$14(a0)
loc_2049ce:
	tst.w $14(a0)
	bne.s loc_204a14
	move.w #$ab,d0
	jsr (sub_20225c).l
loc_2049de:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2049fe
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a0e
loc_2049fe:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a0e:
	move.b #$5,$1c(a0)
loc_204a14:
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a38
	move.w #$1000,d1
loc_204a38:
	cmpi.w #$f000,d1
	bge.s loc_204a42
	move.w #$f000,d1
loc_204a42:
	move.w d1,$10(a0)
	bra.w loc_204772

sub_204a4a:
	move.w $14(a0),d0
	beq.s loc_204a52
	bpl.s loc_204a60
loc_204a52:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204a60:
	sub.w d4,d0
	bcc.s loc_204a68
	move.w #$ff80,d0
loc_204a68:
	move.w d0,$14(a0)
	rts

sub_204a6e:
	move.w $14(a0),d0
	bmi.s loc_204a82
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204a82:
	add.w d4,d0
	bcc.s loc_204a8a
	move.w #$80,d0
loc_204a8a:
	move.w d0,$14(a0)
	rts

sub_204a90:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204aca
	tst.w ($ff1506).l
	bne.s loc_204aca
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204ac2
	cmpi.w #$840,$8(a0)
	bcc.s loc_204ac2
	rts
loc_204ac2:
	btst.b #$1,$2c(a0)
	bne.s loc_204afa
loc_204aca:
	btst.b #$2,($f602).w
	beq.s loc_204ae4
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204ae4
	move.w d1,d0
loc_204ae4:
	btst.b #$3,($f602).w
	beq.s loc_204afa
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204afa
	move.w d6,d0
loc_204afa:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b10
	bcc.s loc_204b0c
	addq.w #$4,($f73e).w
loc_204b0c:
	subq.w #$2,($f73e).w
loc_204b10:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b3e
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b3e
	bmi.s loc_204b32
	sub.w d1,d0
	bcc.s loc_204b2c
	move.w #$0,d0
loc_204b2c:
	move.w d0,$10(a0)
	rts
loc_204b32:
	sub.w d1,d0
	bcs.s loc_204b3a
	move.w #$0,d0
loc_204b3a:
	move.w d0,$10(a0)
loc_204b3e:
	rts
	.incbin 19264, 48

sub_204b70:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204bc4
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204b9e
	addi.w #$38,d0
loc_204b9e:
	cmp.w d1,d0
	bls.s loc_204bc4
loc_204ba2:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204bb2
	rts
loc_204bb2:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206f70
	move.b #$6,$24(a0)
	rts
loc_204bc4:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ba2

sub_204bdc:
	tst.b ($f7ca).w
	bne.s loc_204c02
	move.w $14(a0),d0
	bpl.s loc_204bea
	neg.w d0
loc_204bea:
	cmpi.w #$80,d0
	bcs.s loc_204c02
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c02
	btst.b #$1,($f602).w
	bne.s sub_204c04
loc_204c02:
	rts

sub_204c04:
	btst.b #$2,$22(a0)
	beq.s loc_204c0e
	bra.s loc_204c3e
loc_204c0e:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c2e
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c3e
loc_204c2e:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c3e:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c58
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c58
	move.w #$200,$14(a0)
loc_204c58:
	rts

sub_204c5a:
	tst.b $2a(a0)
	beq.s loc_204c62
	rts
loc_204c62:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204c74
	tst.w $14(a0)
	beq.w loc_204d3a
loc_204c74:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d3a
	btst.b #$3,$22(a0)
	beq.s loc_204c90
	jsr (sub_205966).l
	beq.s loc_204cc0
loc_204c90:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20696c
	cmpi.w #$6,d1
	blt.w loc_204d3a
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204cb6
	move.w #$380,d2
loc_204cb6:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204cc0:
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
	jsr (sub_20225c).l
	btst.b #$2,$22(a0)
	bne.s loc_204d3c
	tst.b ($ff195b).l
	beq.s loc_204d1e
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d2e
loc_204d1e:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d2e:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d3a:
	rts
loc_204d3c:
	bset.b #$4,$22(a0)
	rts

sub_204d44:
	tst.b $3c(a0)
	beq.s loc_204d76
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204d5a
	move.w #$fe00,d1
loc_204d5a:
	cmp.w $12(a0),d1
	ble.s loc_204d74
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204d74
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204d74:
	rts
loc_204d76:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204d84
	move.w #$f040,$12(a0)
loc_204d84:
	rts

sub_204d86:
	tst.b $2a(a0)
	bne.s loc_204dc0
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204dc0
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204dc0
	bmi.s loc_204dbc
	tst.w d0
	beq.s loc_204dba
	add.w d0,$14(a0)
loc_204dba:
	rts
loc_204dbc:
	add.w d0,$14(a0)
loc_204dc0:
	rts

sub_204dc2:
	tst.b $2a(a0)
	bne.s loc_204e02
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e02
	move.b $26(a0),d0
	jsr (sub_200760).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204df8
	tst.w d0
	bpl.s loc_204df2
	asr.l #$2,d0
loc_204df2:
	add.w d0,$14(a0)
	rts
loc_204df8:
	tst.w d0
	bmi.s loc_204dfe
	asr.l #$2,d0
loc_204dfe:
	add.w d0,$14(a0)
loc_204e02:
	rts

sub_204e04:
	nop
	tst.b $38(a0)
	bne.s loc_204e46
	tst.w $3e(a0)
	bne.s loc_204e48
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e46
	move.w $14(a0),d0
	bpl.s loc_204e28
	neg.w d0
loc_204e28:
	cmpi.w #$280,d0
	bcc.s loc_204e46
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e46:
	rts
loc_204e48:
	subq.w #$1,$3e(a0)
	rts

sub_204e4e:
	btst.b #$1,$2c(a0)
	bne.s loc_204e70
	move.b $26(a0),d0
	beq.s loc_204e70
	bpl.s loc_204e66
	addq.b #$2,d0
	bcc.s loc_204e64
	moveq #$0,d0
loc_204e64:
	bra.s loc_204e6c
loc_204e66:
	subq.b #$2,d0
	bcc.s loc_204e6c
	moveq #$0,d0
loc_204e6c:
	move.b d0,$26(a0)
loc_204e70:
	rts

sub_204e72:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009f8).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204f56
	cmpi.b #$80,d0
	beq.w loc_204fb8
	cmpi.b #$c0,d0
	beq.w loc_205014
	bsr.w sub_206c82
	tst.w d1
	bpl.s loc_204ec4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204ec4:
	bsr.w sub_206ae4
	tst.w d1
	bpl.s loc_204ed6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204ed6:
	bsr.w sub_206994
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204f54
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204ef4
	cmp.b d2,d0
	blt.s loc_204f54
loc_204ef4:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205076
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f32
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f24
	asr.w $12(a0)
	bra.s loc_204f46
loc_204f24:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f32:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f46
	move.w #$fc0,$12(a0)
loc_204f46:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f54
	neg.w $14(a0)
loc_204f54:
	rts
loc_204f56:
	bsr.w sub_206c82
	tst.w d1
	bpl.s loc_204f70
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204f70:
	bsr.w sub_206b3c
	tst.w d1
	bpl.s loc_204f8a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204f88
	move.w #$0,$12(a0)
loc_204f88:
	rts
loc_204f8a:
	tst.w $12(a0)
	bmi.s loc_204fb6
	bsr.w sub_206994
	tst.w d1
	bpl.s loc_204fb6
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205076
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204fb6:
	rts
loc_204fb8:
	bsr.w sub_206c82
	tst.w d1
	bpl.s loc_204fca
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fca:
	bsr.w sub_206ae4
	tst.w d1
	bpl.s loc_204fdc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fdc:
	bsr.w sub_206b3c
	tst.w d1
	bpl.s loc_205012
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204ffc
	move.w #$0,$12(a0)
	rts
loc_204ffc:
	move.b d3,$26(a0)
	bsr.w sub_2050e8
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205012
	neg.w $14(a0)
loc_205012:
	rts
loc_205014:
	bsr.w sub_206ae4
	tst.w d1
	bpl.s loc_20502e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20502e:
	bsr.w sub_206b3c
	tst.w d1
	bpl.s loc_205048
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205046
	move.w #$0,$12(a0)
loc_205046:
	rts
loc_205048:
	tst.w $12(a0)
	bmi.s loc_205074
	bsr.w sub_206994
	tst.w d1
	bpl.s loc_205074
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205076
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205074:
	rts

sub_205076:
	btst.b #$4,$22(a0)
	beq.s loc_205080
	nop
loc_205080:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2050da
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050ba
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2050ca
loc_2050ba:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2050ca:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20225c).l
loc_2050da:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2050e8:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20744, 382

sub_205286:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052ae
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052ae
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052ae
	tst.b ($ff1506).l
	bne.w loc_205370
loc_2052ae:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2052ec
	tst.b ($ff1506).l
	bne.w loc_205372
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205372
	bra.s loc_2052f4
loc_2052ec:
	cmp.b ($f7af).w,d1
	beq.w loc_205372
loc_2052f4:
	cmp.b ($f7ac).w,d1
	beq.s loc_205324
	cmp.b ($f7ad).w,d1
	beq.s loc_205308
	bclr.b #$6,$1(a0)
	rts
loc_205308:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20538a
	btst.b #$1,$22(a0)
	beq.s loc_205324
	bclr.b #$6,$1(a0)
	rts
loc_205324:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205336
	bclr.b #$6,$1(a0)
	rts
loc_205336:
	cmpi.b #$e0,d2
	bcs.s loc_205344
	bset.b #$6,$1(a0)
	rts
loc_205344:
	btst.b #$6,$1(a0)
	bne.s loc_205360
	move.b $26(a0),d1
	beq.s loc_205370
	cmpi.b #$80,d1
	bhi.s loc_205370
	bset.b #$6,$1(a0)
	rts
loc_205360:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205370
	bclr.b #$6,$1(a0)
loc_205370:
	rts
loc_205372:
	btst.b #$2,$22(a0)
	bne.s loc_205384
	move.w #$9c,d0
	jsr (sub_20225c).l
loc_205384:
	jmp (sub_204c04).l
loc_20538a:
	tst.w $12(a0)
	bmi.s loc_2053ce
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2053c2
	cmpi.w #$38,d1
	bcs.s loc_2053ba
	cmpi.w #$80,d1
	bcs.s loc_2053ce
loc_2053b2:
	bclr.b #$6,$1(a0)
	rts
loc_2053ba:
	bset.b #$6,$1(a0)
	rts
loc_2053c2:
	cmpi.w #$38,d1
	bcs.s loc_2053b2
	cmpi.w #$80,d1
	bcc.s loc_2053ba
loc_2053ce:
	rts

sub_2053d0:
	lea (dat_2056c0).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2053f2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2053f2:
	bsr.w sub_205662
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20546a
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205438
	move.b d0,$1e(a0)

sub_20541c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205430
	bpl.s loc_205430
	cmpi.b #$fd,d0
	bge.s loc_20543a
loc_205430:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205438:
	rts
loc_20543a:
	addq.b #$1,d0
	bne.s loc_20544a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205430
loc_20544a:
	addq.b #$1,d0
	bne.s loc_20545e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205430
loc_20545e:
	addq.b #$1,d0
	bne.s loc_205468
	move.b $2(a1,d1.w),$1c(a0)
loc_205468:
	rts
loc_20546a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205438
	addq.b #$1,d0
	bne.w loc_205524
	tst.b ($ff195b).l
	bne.w loc_2055ec
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205492
	not.b d0
loc_205492:
	btst.b #$1,$2c(a0)
	bne.s loc_2054a0
	addi.b #$10,d0
	bra.s loc_2054a2
loc_2054a0:
	addq.b #$8,d0
loc_2054a2:
	bpl.s loc_2054a6
	moveq #$3,d1
loc_2054a6:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205598
	move.w $14(a0),d2
	bpl.s loc_2054c4
	neg.w d2
loc_2054c4:
	btst.b #$1,$2c(a0)
	beq.s loc_2054dc
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2058c2).l,a1
	bra.s loc_205506
loc_2054dc:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_20589c).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205506
	lea (dat_205740).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205506
	lea (dat_205738).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205506:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205514
	moveq #$0,d2
loc_205514:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20541c
	add.b d3,$1a(a0)
	rts
loc_205524:
	addq.b #$1,d0
	bne.s loc_205594
	move.w $14(a0),d2
	bpl.s loc_205530
	neg.w d2
loc_205530:
	lea (dat_20581e).l,a1
	tst.b ($ff195b).l
	bne.s loc_20556e
	lea (dat_205750).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205562
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20556e
	lea (dat_2058ca).l,a1
	bra.s loc_20556e
loc_205562:
	cmpi.w #$600,d2
	bcc.s loc_20556e
	lea (dat_205748).l,a1
loc_20556e:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205578
	moveq #$0,d2
loc_205578:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20541c
loc_205594:
	addq.b #$1,d0
	bne.s loc_2055d8
loc_205598:
	move.w $14(a0),d2
	bmi.s loc_2055a0
	neg.w d2
loc_2055a0:
	addi.w #$800,d2
	bpl.s loc_2055a8
	moveq #$0,d2
loc_2055a8:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205830).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055c2
	lea (dat_205758).l,a1
loc_2055c2:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20541c
loc_2055d8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2055ec:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2055fe
	not.b d0
loc_2055fe:
	addi.b #$10,d0
	bpl.s loc_205606
	moveq #$0,d1
loc_205606:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205634
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205524
loc_205634:
	move.w $14(a0),d2
	bpl.s loc_20563c
	neg.w d2
loc_20563c:
	lea (dat_205818).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20564e
	lea (dat_205812).l,a1
loc_20564e:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205658
	moveq #$0,d2
loc_205658:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20541c

sub_205662:
	tst.b ($ff195b).l
	beq.s loc_20566e
	move.b dat_205670(pc,d0.w),d0
loc_20566e:
	rts
dat_205670:
	.incbin 22128, 80
dat_2056c0:
	.incbin 22208, 120
dat_205738:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205740:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205748:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205750:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205758:
	.incbin 22360, 186
dat_205812:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205818:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20581e:
	.incbin 22558, 18
dat_205830:
	.incbin 22576, 108
dat_20589c:
	.incbin 22684, 38
dat_2058c2:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2058ca:
	.incbin 22730, 56

sub_205902:
	tst.b (a0)
	beq.w loc_205964
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205964
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205964
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205936:
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
loc_205950:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205950
	dbf d1,loc_205936
loc_205964:
	rts

sub_205966:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2059da
	move.w #$98,d0
	jsr (sub_20225c).l
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
	bne.s loc_2059c8
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_2059c8:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_2059da:
	rts
loc_2059dc:
	move.w #$e,d0

sub_2059e0:
	cmpi.w #$67,d0
	bne.s loc_2059ee
	move.b #$1,($ff1958).l
loc_2059ee:
	move.w d0,($a12010).l
loc_2059f4:
	move.w ($a12020).l,d0
	beq.s loc_2059f4
	cmp.w ($a12020).l,d0
	bne.s loc_2059f4
	move.w #$0,($a12010).l
loc_205a0c:
	move.w ($a12020).l,d0
	bne.s loc_205a0c
	move.w ($a12020).l,d0
	bne.s loc_205a0c
	rts
	dc.b $00,$00

sub_205a20:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a3c
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a3c:
	subq.b #$1,$1e(a0)
	bpl.s loc_205a7c
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205a7e
loc_205a58:
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
loc_205a7c:
	rts
loc_205a7e:
	addq.b #$1,d0
	bne.s loc_205a8e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a58
loc_205a8e:
	addq.b #$1,d0
	bne.s loc_205aa2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a58
loc_205aa2:
	addq.b #$1,d0
	bne.s loc_205aac
	move.b $2(a1,d1.w),$1c(a0)
loc_205aac:
	addq.b #$1,d0
	bne.s loc_205ab4
	addq.b #$2,$24(a0)
loc_205ab4:
	addq.b #$1,d0
	bne.s loc_205ac2
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205ac2:
	addq.b #$1,d0
	bne.s loc_205aca
	addq.b #$2,$25(a0)
loc_205aca:
	rts
	.incbin 23244, 536

sub_205ce4:
	rts
	.incbin 23782, 704
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fc0(pc,d0.w),d0
	jsr dat_205fc0(pc,d0.w)
	jsr (sub_203816).l
	jmp (loc_2077ce).l
dat_205fc0:
	.incbin 24512, 724
loc_206294:
	bclr.b #$7,($ff156b).l
	beq.s loc_2062e2
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2062e4(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2062b8:
	move.l (a1)+,(a2)+
	dbf d0,loc_2062b8
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2062e2:
	rts
dat_2062e4:
	.incbin 25316, 436

sub_206498:
	bsr.s sub_20649c
loc_20649a:
	rts

sub_20649c:
	tst.b ($f7a7).w
	bne.s loc_20649a
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
	bsr.s sub_2064fc
	bne.w loc_2066ec
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
	bsr.s sub_2064fc
	bne.w loc_2066ec
	rts

sub_2064fc:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_206514
	add.b ($ff156a).l,d1
loc_206514:
	add.w d1,d1
	move.w dat_206538(pc,d1.w),d1
	lea dat_206538(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206524:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206534
	addq.w #$2,d1
	dbf d6,loc_206524
	moveq #$0,d0
	rts
loc_206534:
	moveq #$1,d0
	rts
dat_206538:
	.incbin 25912, 436
loc_2066ec:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20670c
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20670c
	move.l #$20000,d0
loc_20670c:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_20671c
	neg.l d0
	neg.b d1
loc_20671c:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_206902).l
	tst.w d1
	bpl.s loc_20673a
	tst.b ($ff158f).l
	beq.s loc_206736
	neg.w d1
loc_206736:
	add.w d1,$8(a0)
loc_20673a:
	rts
loc_20673c:
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
	bne.s loc_2067f6
	move.b ($ff1593).l,($ff195b).l
loc_2067f6:
	tst.b ($ff1522).l
	bpl.s loc_20680c
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20680c:
	rts

sub_20680e:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20673c
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
	bne.s loc_2068c8
	move.b ($ff1591).l,($ff195b).l
loc_2068c8:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2068ea
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2068ea:
	tst.b ($ff1522).l
	bpl.s loc_206900
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206900:
	rts

sub_206902:
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
	bpl.s loc_20693e
	move.b d1,d0
	bpl.s loc_206938
	subq.b #$1,d0
loc_206938:
	addi.b #$20,d0
	bra.s loc_206948
loc_20693e:
	move.b d1,d0
	bpl.s loc_206944
	addq.b #$1,d0
loc_206944:
	addi.b #$1f,d0
loc_206948:
	andi.b #$c0,d0
	beq.w loc_206a18
	cmpi.b #$80,d0
	beq.w loc_206bb4
	andi.b #$38,d1
	bne.s loc_206960
	addq.w #$8,d2
loc_206960:
	cmpi.b #$40,d0
	beq.w loc_206c8a
	bra.w loc_206aec

sub_20696c:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206c12
	cmpi.b #$80,d0
	beq.w sub_206b3c
	cmpi.b #$c0,d0
	beq.w loc_206a7c

sub_206994:
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
loc_2069f8:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206a06
	move.b ($f768).w,d3
	exg d0,d1
loc_206a06:
	btst.l #$0,d3
	beq.s loc_206a0e
	move.b d2,d3
loc_206a0e:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206a18:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010b6).l
	move.b #$0,d2
loc_206a34:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a40
	move.b d2,d3
loc_206a40:
	rts

sub_206a42:
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
	beq.s loc_206a7a
	move.b #$0,d3
loc_206a7a:
	rts
loc_206a7c:
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
	bra.w loc_2069f8

sub_206ae4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206aec:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201226).l
	move.b #$c0,d2
	bra.w loc_206a34
	.incbin 27404, 48

sub_206b3c:
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
	bra.w loc_2069f8

sub_206bac:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bb4:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010b6).l
	move.b #$80,d2
	bra.w loc_206a34
	.incbin 27608, 56
	rts
loc_206c12:
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
	bra.w loc_2069f8

sub_206c82:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c8a:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201226).l
	move.b #$40,d2
	bra.w loc_206a34
	.incbin 27822, 48

sub_206cde:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206d02
	addi.w #$c,d3
	moveq #$a,d5
loc_206d02:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206d10:
	tst.b $1(a1)
	bpl.s loc_206d1c
	move.b $20(a1),d0
	bne.s loc_206d28
loc_206d1c:
	lea $40(a1),a1
	dbf d6,loc_206d10
	moveq #$0,d0
	rts
loc_206d28:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2070c6).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d50
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206d56
	bra.w loc_206d1c
loc_206d50:
	cmp.w d4,d0
	bhi.w loc_206d1c
loc_206d56:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206d6e
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206d74
	bra.w loc_206d1c
loc_206d6e:
	cmp.w d5,d0
	bhi.w loc_206d1c
loc_206d74:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206de8
	cmpi.b #$c0,d1
	beq.w loc_206fc8
	tst.b d1
	bmi.w sub_206eb2
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206dac
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206daa
	addq.b #$2,$24(a1)
loc_206daa:
	rts
loc_206dac:
	tst.w $12(a0)
	bpl.s loc_206dd6
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206de6
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206de6
	addq.b #$4,$25(a1)
	rts
loc_206dd6:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206de6
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206de6:
	rts

sub_206de8:
	tst.b ($ff1521).l
	bne.s loc_206e02
	tst.b ($ff151f).l
	bne.s loc_206e02
	cmpi.b #$2,$1c(a0)
	bne.w sub_206eb2
loc_206e02:
	tst.b $21(a1)
	beq.s loc_206e2c
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206e2a
	bset.b #$7,$22(a1)
loc_206e2a:
	rts
loc_206e2c:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206e44
	moveq #$6,d0
loc_206e44:
	move.w d0,$3e(a1)
	move.w dat_206ea4(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206e5e
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206e5e:
	bsr.w sub_209aee
	move.w #$96,d0
	jsr (sub_20225c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206e94
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206e9c
	neg.w $12(a0)
	rts
loc_206e94:
	addi.w #$100,$12(a0)
	rts
loc_206e9c:
	subi.w #$100,$12(a0)
	rts
dat_206ea4:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206eb2:
	tst.b ($ff1521).l
	bne.s loc_206ec2
	tst.b ($ff151f).l
	beq.s loc_206ec6
loc_206ec2:
	moveq #$ffffffff,d0
	rts
loc_206ec6:
	nop
	tst.w $30(a0)
	bne.s loc_206ec2
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206efc
	tst.w ($ff1512).l
	beq.w loc_206f66
	jsr (sub_207798).l
	bne.s loc_206efc
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206efc:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206f12
	move.b #$0,($ff156f).l
loc_206f12:
	move.b #$4,$24(a0)
	bsr.w sub_205076
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f42
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f42:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f50
	neg.w $10(a0)
loc_206f50:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206f66:
	tst.w ($ff1588).l
	bne.w loc_206efc

sub_206f70:
	tst.w ($ff1906).l
	bne.s loc_206fc4
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205076
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20225c).l
loc_206fc4:
	moveq #$ffffffff,d0
	rts
loc_206fc8:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207068
	cmpi.b #$23,d1
	beq.w loc_207068
	cmpi.b #$2e,d1
	beq.w loc_2070b0
	cmpi.b #$37,d1
	beq.w loc_207068
	cmpi.b #$38,d1
	beq.w loc_2070be
	cmpi.b #$3a,d1
	beq.w loc_2070b0
	cmpi.b #$3b,d1
	beq.w loc_2070b0
	cmpi.b #$3c,d1
	beq.w loc_2070b0
	tst.b ($f7aa).w
	beq.w loc_207066
	cmpi.b #$1,($f7aa).w
	beq.s loc_207030
	cmpi.b #$4,($f7aa).w
	beq.s loc_207052
	cmpi.b #$5,($f7aa).w
	beq.s loc_207060
loc_207030:
	cmpi.b #$3c,d1
	blt.s loc_207066
	cmpi.b #$3f,d1
	bgt.s loc_207066
	bsr.w sub_206de8
	tst.b $20(a1)
	bne.s loc_20704a
	addq.b #$3,$21(a1)
loc_20704a:
	clr.b $20(a1)
	bra.w loc_207068
loc_207052:
	cmpi.b #$3f,d1
	beq.s loc_207074
	cmpi.b #$3e,d1
	beq.s loc_20706e
	bra.s loc_207066
loc_207060:
	cmpi.b #$3d,d1
	beq.s loc_20706e
loc_207066:
	rts
loc_207068:
	addq.b #$1,$21(a1)
	rts
loc_20706e:
	bsr.w sub_206eb2
	bra.s loc_207068
loc_207074:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2070ae
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2070ae
	neg.w $10(a0)
loc_2070ae:
	rts
loc_2070b0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2070bc
	addq.b #$1,$21(a1)
loc_2070bc:
	rts
loc_2070be:
	addq.b #$1,$21(a1)
	bra.w sub_206eb2
dat_2070c6:
	.incbin 28870, 126
loc_207144:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20715a
	move.l #$4000,(dat_2072d4).l
	bra.s loc_20717a
loc_20715a:
	addi.l #$2000,(dat_2072d4).l
	cmpi.l #$80000,(dat_2072d4).l
	bls.s loc_20717a
	move.l #$80000,(dat_2072d4).l
loc_20717a:
	move.l (dat_2072d4).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20718c
	sub.l d0,$c(a0)
loc_20718c:
	btst.b #$1,($f604).w
	beq.s loc_207198
	add.l d0,$c(a0)
loc_207198:
	btst.b #$2,($f604).w
	beq.s loc_2071a4
	sub.l d0,$8(a0)
loc_2071a4:
	btst.b #$3,($f604).w
	beq.s loc_2071b0
	add.l d0,$8(a0)
loc_2071b0:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ece).l
	move.w (a1),($ff194e).l
	lea (dat_2072d8).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2071f2
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2071ec
	move.b #$0,d1
loc_2071ec:
	move.b d1,($ff1904).l
loc_2071f2:
	btst.b #$7,($f605).w
	beq.s loc_207212
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20720c
	add.b (a2),d1
loc_20720c:
	move.b d1,($ff1904).l
loc_207212:
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
	beq.s loc_20729e
	bsr.w sub_207798
	bne.s loc_20729e
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
loc_20729e:
	btst.b #$4,($f605).w
	beq.s loc_2072ce
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2072ce:
	jmp (sub_203816).l
dat_2072d4:
	dc.b $00,$00,$40,$00
dat_2072d8:
	.incbin 29400, 686

sub_207586:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207594:
	clr.l (a2)+
	dbf d0,loc_207594
	rts

sub_20759c:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2075aa(pc,d0.w),d0
	jmp dat_2075aa(pc,d0.w)
dat_2075aa:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20784a).l,a0
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
	bcc.s loc_2075e8
	moveq #$0,d6
loc_2075e8:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2075f0:
	cmp.w (a0),d6
	bls.s loc_207602
	tst.b $4(a0)
	bpl.s loc_2075fe
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2075fe:
	addq.w #$8,a0
	bra.s loc_2075f0
loc_207602:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207622
loc_207610:
	cmp.w (a0),d6
	bls.s loc_207622
	tst.b $4(a0)
	bpl.s loc_20761e
	addq.b #$1,$1(a2)
loc_20761e:
	addq.w #$8,a0
	bra.s loc_207610
loc_207622:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20770c
	bge.s loc_2076b2
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20768e
loc_20765c:
	cmp.w -$8(a0),d6
	bge.s loc_20768e
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207672
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207672:
	bsr.w sub_207730
	bne.s loc_20767c
	subq.w #$8,a0
	bra.s loc_20765c
loc_20767c:
	tst.b $4(a0)
	bpl.s loc_20768c
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20768c:
	addq.w #$8,a0
loc_20768e:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20769a:
	cmp.w -$8(a0),d6
	bgt.s loc_2076ac
	tst.b -$4(a0)
	bpl.s loc_2076a8
	subq.b #$1,(a2)
loc_2076a8:
	subq.w #$8,a0
	bra.s loc_20769a
loc_2076ac:
	move.l a0,($f770).w
	rts
loc_2076b2:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2076c6:
	cmp.w (a0),d6
	bls.s loc_2076e8
	tst.b $4(a0)
	bpl.s loc_2076d4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076d4:
	bsr.w sub_207730
	beq.s loc_2076c6
	tst.b $4(a0)
	bpl.s loc_2076e8
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2076e8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207708
loc_2076f6:
	cmp.w (a0),d6
	bls.s loc_207708
	tst.b $4(a0)
	bpl.s loc_207704
	addq.b #$1,$1(a2)
loc_207704:
	addq.w #$8,a0
	bra.s loc_2076f6
loc_207708:
	move.l a0,($f774).w
loc_20770c:
	rts

sub_20770e:
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

sub_207730:
	bsr.s sub_20770e
	beq.s loc_207742
	tst.b $4(a0)
	bpl.s loc_207748
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207748
loc_207742:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207748:
	bsr.w sub_207798
	bne.s loc_207796
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
	bpl.s loc_207778
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207778:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20778a
	nop
	nop
	nop
	nop
loc_20778a:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207796:
	rts

sub_207798:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2077a0:
	tst.b (a1)
	beq.s loc_2077ac
	lea $40(a1),a1
	dbf d0,loc_2077a0
loc_2077ac:
	rts

sub_2077ae:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2077cc
loc_2077c0:
	tst.b (a1)
	beq.s loc_2077cc
	lea $40(a1),a1
	dbf d0,loc_2077c0
loc_2077cc:
	rts
loc_2077ce:
	move.w $8(a0),d0
loc_2077d2:
	tst.b $1(a0)
	bmi.s loc_20783c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20783c
loc_2077f0:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207832
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20782a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207822
	moveq #$0,d1
	bra.s loc_20782a
loc_207822:
	cmpi.w #$3,d1
	bcs.s loc_20782a
	moveq #$2,d1
loc_20782a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207832:
	jsr (sub_2038c2).l
	moveq #$1,d0
	rts
loc_20783c:
	btst.b #$7,($ff152e).l
	bne.s loc_2077f0
	moveq #$0,d0
	rts
dat_20784a:
	.incbin 30794, 1886

sub_207fa8:
	btst.b #$3,$22(a0)
	beq.s loc_208018
	btst.b #$3,$22(a1)
	beq.s loc_208018
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208018
	tst.b $2a(a1)
	beq.s loc_207fda
	move.w #$ab,d0
	jsr (sub_20225c).l
loc_207fda:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208006
	cmpi.b #$17,$1c(a1)
	beq.s loc_208006
	bclr.b #$0,$2c(a1)
loc_208006:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208018
	bclr.b #$1,$22(a1)
loc_208018:
	rts

sub_20801a:
	cmpi.b #$4,$24(a1)
	bne.s loc_20802c
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_20802c:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20808c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20804e
	bclr.b #$3,$22(a0)
	bra.w sub_207fa8
loc_20804e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20808c
	tst.b ($ff195b).l
	beq.s loc_208076
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208086
loc_208076:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208086:
	move.b #$0,$1c(a1)
loc_20808c:
	bset.b #$3,$22(a1)
	beq.s loc_2080ae
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2080e6
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2080ae:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2080da
	cmpi.b #$2,$24(a0)
	beq.s loc_2080e0
loc_2080da:
	move.w $10(a1),$14(a1)
loc_2080e0:
	bclr.b #$1,$22(a1)
loc_2080e6:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2080f0:
	move.b #$1,$25(a0)

sub_2080f6:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2083aa
	btst.b #$6,$2c(a1)
	bne.w loc_2083aa
	cmpi.b #$6,$24(a1)
	bcc.w loc_2083aa
	tst.b $0(a1)
	beq.w loc_2083aa
	tst.b $1(a0)
	bpl.w loc_2083aa
	tst.b ($ff1906).l
	bne.w loc_2083aa
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2083aa
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2083aa
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208164
	btst.b #$3,$22(a0)
	bne.s loc_208176
	bra.w loc_2083aa
loc_208164:
	cmpi.b #$1,$25(a0)
	bne.s loc_208176
	tst.w $12(a1)
	beq.s loc_208176
	bmi.w loc_2083aa
loc_208176:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2083aa
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2083aa
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2081ac
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2081ac:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2081ba
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2081ba:
	cmp.w d4,d5
	bcs.w loc_20824e
	cmpi.b #$1,$25(a0)
	beq.w loc_2083aa
	cmpi.b #$a,$0(a0)
	bne.s loc_2081dc
	btst.b #$1,$22(a1)
	bne.w loc_2083aa
loc_2081dc:
	cmpi.b #$4,d5
	bls.w loc_2083aa
	bsr.w sub_2083fa
	move.l d0,-(a7)
	bsr.w sub_207fa8
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208206
	tst.w $10(a1)
	beq.s loc_208236
	bpl.s loc_20820e
	bra.s loc_208236
loc_208206:
	tst.w $10(a1)
	beq.s loc_208236
	bpl.s loc_208236
loc_20820e:
	bsr.w sub_2083ba
	btst.b #$1,$22(a1)
	bne.s loc_20822c
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_20822c:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208236:
	bsr.w sub_208470
	bsr.w sub_2083ba
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20824e:
	cmpi.b #$19,$0(a0)
	bne.s loc_208260
	btst.b #$2,$22(a1)
	bne.w loc_2083aa
loc_208260:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208276
	bmi.w loc_208346
loc_208276:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208288
	tst.w $12(a1)
	beq.s loc_208288
	bmi.w loc_2083aa
loc_208288:
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
	beq.s loc_2082d4
	bpl.s loc_2082b4
	neg.b d0
loc_2082b4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206902).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2082d4
	tst.w $10(a0)
	bpl.s loc_2082d0
	neg.w d1
loc_2082d0:
	add.w d1,$8(a1)
loc_2082d4:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20833e
	tst.w $12(a0)
	bmi.s loc_208312
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206994).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208312
	add.w d1,$c(a1)
	bra.w loc_2083aa
loc_208312:
	tst.w $12(a0)
	bpl.s loc_20833e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206bac).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20833e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f70).l
	movem.l (a7)+,a0-a1
	bra.s loc_2083aa
loc_20833e:
	bsr.w sub_20801a
	moveq #$1,d0
	rts
loc_208346:
	cmpi.b #$1,$25(a0)
	beq.s loc_2083aa
	cmpi.b #$9,$0(a0)
	beq.s loc_2083aa
	cmpi.b #$a,$0(a0)
	bne.s loc_208370
	cmpi.b #$2,$25(a0)
	beq.s loc_208390
	btst.b #$1,$1(a0)
	bne.s loc_208390
	bra.s loc_2083aa
loc_208370:
	btst.b #$1,$22(a1)
	bne.s loc_208390
	tst.w $12(a0)
	beq.s loc_208390
	bmi.s loc_208390
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f70).l
	movem.l (a7)+,a0-a1
loc_208390:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208470
	bsr.w sub_207fa8
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2083aa:
	bsr.w sub_208470
	bsr.w sub_207fa8
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2083ba:
	tst.w $10(a0)
	beq.s loc_2083f8
	cmpi.b #$a,$0(a0)
	beq.s loc_2083f8
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2083d4
	neg.b d0
loc_2083d4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206902).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2083f8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f70).l
	movem.l (a7)+,a0-a1
loc_2083f8:
	rts

sub_2083fa:
	cmpi.b #$a,$0(a0)
	bne.s loc_20840a
	move.b #$0,$20(a1)
	rts
loc_20840a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20845e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20846e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20842c
	tst.w $10(a2)
	beq.s loc_20846e
loc_20842c:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20843e
	cmp.w $8(a2),d1
	bcs.s loc_20846e
	bra.s loc_208444
loc_20843e:
	cmp.w $8(a2),d1
	bcc.s loc_20846e
loc_208444:
	cmpi.b #$15,$0(a0)
	beq.s loc_20846e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f70).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20845e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20846e:
	rts

sub_208470:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20848a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20848a
	move.b #$0,$20(a1)
loc_20848a:
	rts
	.incbin 33932, 374
loc_208602:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208610(pc,d0.w),d0
	jmp dat_208610(pc,d0.w)
dat_208610:
	.incbin 34320, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208602
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208666
	tst.b $1(a0)
	bpl.s loc_20866e
loc_208666:
	move.w dat_2086c0(pc,d0.w),d1
	jsr dat_2086c0(pc,d1.w)
loc_20866e:
	bsr.w sub_203816
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2086a0
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2086a0:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038c2
	rts
dat_2086c0:
	.incbin 34496, 26
	addq.b #$2,$24(a0)
	move.l #$208a42,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208730
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208a48,$4(a0)
	bra.s loc_208772
loc_208730:
	btst.l #$3,d0
	beq.s loc_20875e
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208a92,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c8b0).l
	move.l (a7)+,d0
	bra.s loc_208772
loc_20875e:
	btst.b #$1,$1(a0)
	beq.s loc_208772
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208772:
	btst.l #$1,d0
	beq.s loc_20877e
	bset.b #$5,$2(a0)
loc_20877e:
	andi.w #$2,d0
	move.w dat_20878a(pc,d0.w),$30(a0)
	rts
dat_20878a:
	.incbin 34698, 118

sub_208800:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2080f6).l
	tst.b $1(a0)
	bpl.s loc_208822
	lea ($d000).w,a1
	bsr.s sub_208800
	btst.b #$5,$22(a0)
	bne.s loc_208824
loc_208822:
	rts
loc_208824:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_208852
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_208852:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20886c
	move.b #$0,$1c(a1)
loc_20886c:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20225c).l
	.incbin 34950, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208b2e(pc,d0.w),d1
	jmp dat_208b2e(pc,d1.w)
dat_208b2e:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_208b38:
	.incbin 35640, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208b90
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208b88
	moveq #$0,d1
	bra.s loc_208b90
loc_208b88:
	cmpi.w #$3,d1
	bcs.s loc_208b90
	moveq #$2,d1
loc_208b90:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208bac
	moveq #$6,d1
loc_208bac:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_208b38).l,a1
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
	beq.s loc_208bfc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208bf4
	moveq #$0,d0
	bra.s loc_208bfc
loc_208bf4:
	cmpi.w #$3,d0
	bcs.s loc_208bfc
	moveq #$2,d0
loc_208bfc:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208cca
	dbf d0,loc_208bfc
	bclr.b #$7,(a2)
	bra.s loc_208c52
loc_208c0e:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208c3a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208c32
	moveq #$0,d0
	bra.s loc_208c3a
loc_208c32:
	cmpi.w #$3,d0
	bcs.s loc_208c3a
	moveq #$2,d0
loc_208c3a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208cca
	dbf d0,loc_208c3a
	bclr.b #$7,(a2)
	bsr.w sub_2077ae
	bne.w loc_208cd6
loc_208c52:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208f9c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208ca8
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208ca8
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208ca8:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208cca:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_208c0e
loc_208cd6:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208cfc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208cf4
	moveq #$0,d0
	bra.s loc_208cfc
loc_208cf4:
	cmpi.w #$3,d0
	bcs.s loc_208cfc
	moveq #$2,d0
loc_208cfc:
	lea $1(a2),a3
loc_208d00:
	btst.b #$0,-(a3)
	bne.w sub_2038c2
	dbf d0,loc_208d00
	tst.b $1(a0)
	bmi.s loc_208d30
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208daa
loc_208d30:
	tst.w ($ff190e).l
	bne.s loc_208d40
	move.b ($ff1913).l,$1a(a0)
loc_208d40:
	bra.w sub_203816
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208dae
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208d90
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208d88
	moveq #$0,d1
	bra.s loc_208d90
loc_208d88:
	cmpi.w #$3,d1
	bcs.s loc_208d90
	moveq #$2,d1
loc_208d90:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208f94).l,a1
	bsr.w sub_205a20
	bra.w sub_203816
loc_208daa:
	bra.w sub_2038c2

sub_208dae:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208dfe
	bset.b #$1,($ff150d).l
	beq.s loc_208de8
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208dfe
	bset.b #$2,($ff150d).l
	bne.s loc_208dfe
loc_208de8:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_2059e0).l
loc_208dfe:
	jmp (sub_20225c).l
	.incbin 36356, 400
dat_208f94:
	.incbin 36756, 402
loc_209126:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209154(pc,d0.w),d0
	jsr dat_209154(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209152
	cmpi.w #$5a,($f786).w
	bcs.s loc_20914c
	btst.b #$0,($ff1505).l
	bne.s loc_209152
loc_20914c:
	jmp (sub_203816).l
loc_209152:
	rts
dat_209154:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20972e,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209188
	move.b #$13,$1a(a0)
loc_209188:
	rts
loc_20918a:
	tst.b ($ff0f01).l
	beq.s loc_209198
	jmp (sub_2038c2).l
loc_209198:
	cmpi.b #$a,$28(a0)
	beq.w loc_209126
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2091bc(pc,d0.w),d0
	jsr dat_2091bc(pc,d0.w)
	jsr (sub_203816).l
	jmp (loc_2077ce).l
dat_2091bc:
	.incbin 37308, 282

sub_2092d6:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20930e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209306
	moveq #$0,d1
	bra.s loc_20930e
loc_209306:
	cmpi.w #$3,d1
	bcs.s loc_20930e
	moveq #$2,d1
loc_20930e:
	add.w d1,d0
	rts

sub_209312:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209334
	tst.b ($ff1956).l
	beq.s loc_20932c
	tst.b $29(a0)
	bne.s loc_209334
	rts
loc_20932c:
	tst.b $29(a0)
	beq.s loc_209334
	rts
loc_209334:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2080f6).l
	tst.b $28(a0)
	bne.s loc_209356
	tst.b ($ff0f01).l
	beq.s loc_209356
	jmp (loc_2077ce).l
loc_209356:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20918a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20936e(pc,d0.w),d1
	jmp dat_20936e(pc,d1.w)
dat_20936e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20972e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2093b8
	tst.b $29(a0)
	bne.s loc_2093b8
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_2093b8:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2092d6
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_2093e4
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_2093e4:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20943e
	move.b $25(a0),d0
	beq.s loc_20941e
	bsr.w sub_20375e
	jsr (sub_206a42).l
	tst.w d1
	bpl.w loc_20942c
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20942c
loc_20941e:
	tst.b $1(a0)
	bpl.s loc_20942c
	lea ($d000).w,a1
	bsr.w sub_209312
loc_20942c:
	tst.w ($ff190e).l
	bne.s loc_20943e
	lea (dat_2096a6).l,a1
	bsr.w sub_205a20
loc_20943e:
	bsr.w sub_203816
	jmp (loc_2077ce).l
	.incbin 37960, 606
dat_2096a6:
	.incbin 38566, 586
loc_2098f0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209904(pc,d0.w),d0
	jsr dat_209904(pc,d0.w)
	jmp (sub_203816).l
dat_209904:
	.incbin 39172, 146
	tst.b $28(a0)
	bmi.w loc_2098f0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099ac(pc,d0.w),d0
	jmp dat_2099ac(pc,d0.w)
dat_2099ac:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209a46,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2099dc
	move.b #$3,$1a(a0)
	bra.s loc_2099fc
loc_2099dc:
	tst.w ($ff1588).l
	beq.s loc_2099ea
	move.b #$2,$1a(a0)
loc_2099ea:
	tst.b $28(a0)
	beq.s loc_2099fc
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2099fc:
	tst.b $28(a0)
	bne.s loc_209a40
	tst.b $29(a0)
	beq.s loc_209a2c
	tst.w ($ff1512).l
	beq.s loc_209a18
	bclr.b #$5,$2(a0)
	bra.s loc_209a40
loc_209a18:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209a40
	eori.b #$20,$2(a0)
	bra.s loc_209a40
loc_209a2c:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209a40
	move.b #$2,$1a(a0)
loc_209a40:
	jmp (sub_203816).l
	.incbin 39494, 168

sub_209aee:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_209b0a
	move.l d1,(a3)
loc_209b0a:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_209b34
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_2059e0).l
loc_209b34:
	rts
loc_209b36:
	tst.w ($ff1588).l
	beq.s loc_209b8c
	bsr.w sub_209d88
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
	lea (dat_209ee8).l,a2
	moveq #$2,d6
	bsr.w sub_209f40
	bra.w loc_209be6
loc_209b8c:
	tst.b ($ff1511).l
	beq.s loc_209bb0
	bpl.s loc_209b9a
	bsr.w sub_209d32
loc_209b9a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209e22
loc_209bb0:
	tst.b ($ff150f).l
	beq.s loc_209be6
	bpl.s loc_209bbe
	bsr.w sub_209d1e
loc_209bbe:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209be2
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209be2:
	bsr.w sub_209e18
loc_209be6:
	tst.w ($ff1588).l
	bne.w loc_209c92
	tst.b ($ff1510).l
	beq.w loc_209c92
	tst.w ($f63a).w
	bne.w loc_209c92
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209cf0
	tst.b ($f7cc).w
	bne.s loc_209c3c
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209c3c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209c3c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209c3c
	move.b #$9,(a1)
loc_209c3c:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209f2e
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209f38
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209c8e
	move.w #$63,d1
loc_209c8e:
	bsr.w sub_209f38
loc_209c92:
	tst.b ($ff150e).l
	beq.s loc_209ca4
	clr.b ($ff150e).l
	bsr.w sub_209f0e
loc_209ca4:
	tst.b ($f7d6).w
	beq.s loc_209cee
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209cc4
	move.l #$6d400001,d0
loc_209cc4:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209da6
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209ce4
	move.l #$6e800001,d0
loc_209ce4:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209da6
loc_209cee:
	rts
loc_209cf0:
	btst.b #$7,($ff152e).l
	bne.s loc_209d1c
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206f70
	move.b #$1,($ff150c).l
loc_209d1c:
	rts

sub_209d1e:
	move.l #$73600002,($c00004).l
	lea dat_209d84(pc),a2
	move.w #$2,d2
	bra.s loc_209d4e

sub_209d32:
	lea ($c00000).l,a6
	bsr.w sub_209f0e
	move.l #$70600002,($c00004).l
	lea dat_209d7c(pc),a2
	move.w #$6,d2
loc_209d4e:
	lea (dat_2330bc).l,a1
loc_209d54:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209d70
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209d64:
	move.l (a3)+,(a6)
	dbf d1,loc_209d64
loc_209d6a:
	dbf d2,loc_209d54
	rts
loc_209d70:
	move.l #$0,(a6)
	dbf d1,loc_209d70
	bra.s loc_209d6a
dat_209d7c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209d84:
	dc.b $ff,$ff,$00,$00

sub_209d88:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209f04
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209f04

sub_209da6:
	lea (dat_209ee0).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209db6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209dba:
	sub.l d3,d1
	bcs.s loc_209dc2
	addq.w #$1,d2
	bra.s loc_209dba
loc_209dc2:
	add.l d3,d1
	tst.w d2
	beq.s loc_209dcc
	move.w #$1,d4
loc_209dcc:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209dd8
	tst.w d6
	bne.s loc_209e0a
loc_209dd8:
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
loc_209dfe:
	addi.l #$400000,d0
	dbf d6,loc_209db6
	rts
loc_209e0a:
	moveq #$f,d5
loc_209e0c:
	move.l #$0,(a6)
	dbf d5,loc_209e0c
	bra.s loc_209dfe

sub_209e18:
	lea (dat_209ee8).l,a2
	moveq #$2,d6
	bra.s loc_209e2a

sub_209e22:
	lea (dat_209edc).l,a2
	moveq #$5,d6
loc_209e2a:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209e32:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209e36:
	sub.l d3,d1
	bcs.s loc_209e3e
	addq.w #$1,d2
	bra.s loc_209e36
loc_209e3e:
	add.l d3,d1
	tst.w d2
	beq.s loc_209e48
	move.w #$1,d4
loc_209e48:
	tst.w d4
	beq.s loc_209e76
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
loc_209e76:
	addi.l #$400000,d0
	dbf d6,loc_209e32
	rts
	.incbin 40578, 90
dat_209edc:
	dc.b $00,$01,$86,$a0
dat_209ee0:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209ee8:
	dc.b $00,$00,$00,$64
dat_209eec:
	dc.b $00,$00,$00,$0a
dat_209ef0:
	dc.b $00,$00,$00,$01
dat_209ef4:
	.incbin 40692, 16

sub_209f04:
	moveq #$3,d6
	lea (dat_209ef4).l,a2
	bra.s sub_209f40

sub_209f0e:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209f24
	moveq #$9,d1
loc_209f24:
	lea (dat_209ef0).l,a2
	moveq #$0,d6
	bra.s sub_209f40

sub_209f2e:
	lea (dat_209ef0).l,a2
	moveq #$0,d6
	bra.s sub_209f40

sub_209f38:
	lea (dat_209eec).l,a2
	moveq #$1,d6

sub_209f40:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209f48:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209f4c:
	sub.l d3,d1
	bcs.s loc_209f54
	addq.w #$1,d2
	bra.s loc_209f4c
loc_209f54:
	add.l d3,d1
	tst.w d2
	beq.s loc_209f5e
	move.w #$1,d4
loc_209f5e:
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
	dbf d6,loc_209f48
	rts
	.incbin 40852, 1044
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$23c062,$4(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$20,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a424
	move.w $c(a6),d0
	sub.w $c(a0),d0
	addi.w #$80,d0
	bmi.s loc_20a420
	cmpi.w #$100,d0
	bcc.s loc_20a420
	move.w $8(a6),d0
	cmp.w $8(a0),d0
	bcs.s loc_20a420
	addq.b #$2,$24(a0)
	move.w ($f700).w,($f728).w
	move.w ($f700).w,($f720).w
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
	moveq #$12,d0
	jmp (sub_202426).l
loc_20a420:
	rts
	dc.b $4e,$75

sub_20a424:
	moveq #$0,d0
	move.w ($ff1506).l,d0
	lsl.b #$7,d0
	lsr.w #$4,d0
	move.b ($ff152e).l,d1
	cmpi.b #$2,d1
	bne.s loc_20a442
	add.b ($ff156a).l,d1
loc_20a442:
	add.b d1,d1
	add.b d1,d0
	move.w dat_20a45e(pc,d0.w),$2(a0)
	cmpi.b #$3,($ff1506).l
	beq.s loc_20a45c
	ori.w #$8000,$2(a0)
loc_20a45c:
	rts
dat_20a45e:
	.incbin 42078, 1684
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab00(pc,d0.w),d0
	jmp dat_20ab00(pc,d0.w)
dat_20ab00:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b1fe,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b1be).l,a2
loc_20ab4e:
	jsr (sub_207798).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b1fe,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20aba0
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20aba0:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20ab4e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20abc8
	bge.s loc_20abbe
	neg.w d0
loc_20abbe:
	add.w d0,$a(a0)
	jmp (sub_203816).l
loc_20abc8:
	addq.b #$4,$24(a0)
	jmp (sub_203816).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20abec
	bge.s loc_20abe2
	neg.w d0
loc_20abe2:
	add.w d0,$8(a0)
	jmp (sub_203816).l
loc_20abec:
	addq.b #$4,$24(a0)
	jmp (sub_203816).l
	tst.b $1e(a0)
	beq.s loc_20ac06
	subq.b #$1,$1e(a0)
	jmp (sub_203816).l
loc_20ac06:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ac20
	bge.s loc_20ac16
	neg.w d0
loc_20ac16:
	add.w d0,$a(a0)
	jmp (sub_203816).l
loc_20ac20:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202426).l
	tst.b $1e(a0)
	beq.s loc_20ac42
	subq.b #$1,$1e(a0)
	jmp (sub_203816).l
loc_20ac42:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ac5c
	bge.s loc_20ac52
	neg.w d0
loc_20ac52:
	add.w d0,$8(a0)
	jmp (sub_203816).l
loc_20ac5c:
	jmp (sub_2038c2).l
	tst.l ($f680).w
	bne.s loc_20ac76
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2038c2).l
loc_20ac76:
	rts
	.incbin 44152, 1350
dat_20b1be:
	.incbin 45502, 898
	rts
	.incbin 46402, 4912

sub_20c872:
	lea dat_20c8a0(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c87e:
	cmp.w (a1)+,d0
	bcs.s loc_20c886
	addq.b #$2,d1
	bra.s loc_20c87e
loc_20c886:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c890
	rts
loc_20c890:
	move.b d1,($ff1574).l
	move.w dat_20c8a4(pc,d1.w),d0
	jmp (loc_202458).l
dat_20c8a0:
	dc.b $18,$00,$ff,$ff
dat_20c8a4:
	dc.b $00,$05,$00,$06,$00,$05,$00,$02
	dc.b $00,$04,$00,$02

sub_20c8b0:
	rts
	.incbin 51378, 1340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce0c(pc,d0.w),d0
	jsr dat_20ce0c(pc,d0.w)
	jsr (sub_203816).l
	move.w $36(a0),d0
	jmp (loc_2077d2).l
dat_20ce0c:
	dc.b $00,$96,$01,$56
loc_20ce10:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2080f0).l
dat_20ce22:
	.incbin 52770, 50
dat_20ce54:
	.incbin 52820, 52
dat_20ce88:
	.incbin 52872, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20cec4
	move.w #$4378,d0
loc_20cec4:
	move.w d0,$2(a0)
	move.l #$20d268,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20ce22).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20ce54).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20ce88).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20cf5e
	cmpi.b #$1,d1
	bne.s loc_20cf2a
	clr.b d2
	bsr.w sub_20d1d4
	bra.s loc_20cf5e
loc_20cf2a:
	cmpi.b #$2,d1
	bne.s loc_20cf42
	move.b #$f0,d2
	bsr.w sub_20d1d4
	move.b #$10,d2
	bsr.w sub_20d1d4
	bra.s loc_20cf5e
loc_20cf42:
	cmpi.b #$3,d1
	bne.s loc_20cf5e
	move.b #$e0,d2
	bsr.w sub_20d1d4
	clr.b d2
	bsr.w sub_20d1d4
	move.b #$20,d2
	bsr.w sub_20d1d4
loc_20cf5e:
	bra.w loc_20cf62
loc_20cf62:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20cf80(pc,d0.w),d0
	jsr dat_20cf80(pc,d0.w)
	bsr.w sub_20d190
	bsr.w sub_20d204
	bra.w loc_20ce10
dat_20cf80:
	.incbin 53120, 50
	bset.b #$7,$3f(a0)
	rts
	bset.b #$7,$3f(a0)
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20d150
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20cfda
	neg.w d0
loc_20cfda:
	move.w d0,$10(a0)
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	rts
	.incbin 53228, 356

sub_20d150:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20d176
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20d18e
	move.b #$ff,$3c(a0)
	bra.s loc_20d18e
loc_20d176:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20d18e
	clr.b $3c(a0)
loc_20d18e:
	rts

sub_20d190:
	btst.b #$7,$3f(a0)
	beq.s loc_20d1d2
	btst.b #$3,$22(a0)
	bne.s loc_20d1ac
	tst.b $3e(a0)
	beq.s loc_20d1d2
	subq.b #$8,$3e(a0)
	bra.s loc_20d1b8
loc_20d1ac:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20d1d2
	addq.b #$8,$3e(a0)
loc_20d1b8:
	move.b $3e(a0),d0
	jsr (sub_200760).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20d1d2:
	rts

sub_20d1d4:
	jsr (sub_207798).l
	bne.s loc_20d202
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20d202:
	rts

sub_20d204:
	btst.b #$0,$3f(a0)
	beq.s loc_20d266
	btst.b #$3,$22(a0)
	beq.s loc_20d266
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20d266
	btst.b #$3,$22(a1)
	beq.s loc_20d266
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20d266
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20d258
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20d258
	move.l #$20000,d0
loc_20d258:
	tst.b ($ff158f).l
	beq.s loc_20d262
	neg.l d0
loc_20d262:
	add.l d0,$8(a1)
loc_20d266:
	rts
	.incbin 53864, 5488
	tst.b $29(a0)
	bne.w loc_20e940
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e7ee(pc,d0.w),d0
	jmp dat_20e7ee(pc,d0.w)
dat_20e7ee:
	dc.b $00,$08,$00,$52,$00,$90,$00,$aa
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$20e9a8,$4(a0)
	move.b #$3,$18(a0)
	move.b #$11,$16(a0)
	move.w #$4350,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e826
	move.w #$43a0,d0
loc_20e826:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	lea ($d000).w,a1
	jsr (sub_2080f0).l
	beq.s loc_20e872
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20e864
	neg.w d0
loc_20e864:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_20225c).l
loc_20e872:
	jsr (sub_203816).l
	jmp (loc_2077ce).l
	.incbin 59518, 194
loc_20e940:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e94e(pc,d0.w),d0
	jmp dat_20e94e(pc,d0.w)
dat_20e94e:
	.incbin 59726, 4812
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$fc,$20(a0)
	move.w #$44a7,$2(a0)
	move.l #$20fd82,$4(a0)
	move.b $28(a0),d0
	andi.b #$1,d0
	move.b d0,$1a(a0)
	cmpi.b #$2,$28(a0)
	bne.s loc_20fc70
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20fc70:
	tst.b $21(a0)
	beq.s loc_20fc9e
	clr.w $20(a0)
	addq.b #$2,$24(a0)
	lea ($d000).w,a1
	move.w $10(a1),$2a(a0)
	move.w $12(a1),$2e(a0)
	jsr (sub_2080f6).l
	beq.s loc_20fc9c
	jsr (sub_207fa8).l
loc_20fc9c:
	bra.s loc_20fcb4
loc_20fc9e:
	lea ($d000).w,a1
	jsr (sub_2080f6).l
	jsr (sub_203816).l
	jmp (loc_2077ce).l
loc_20fcb4:
	move.w #$b0,d0
	jsr (sub_20225c).l
	lea dat_20fdc6(pc),a6
	lea dat_20fdcc(pc),a5
	lea dat_20fdd2(pc),a4
	btst.b #$0,$28(a0)
	beq.s loc_20fcd4
	addq.w #$3,a5
loc_20fcd4:
	lea ($d000).w,a3
	asr.w $10(a3)
	moveq #$2,d6
	movea.w a0,a1
	bra.s loc_20fd1a
loc_20fce2:
	jsr (sub_207798).l
	bne.s loc_20fd4c
	move.b $0(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
loc_20fd1a:
	move.b (a5)+,$1a(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w (a6)+,d0
	add.w d0,$c(a1)
	move.l (a4)+,d0
	move.l (a4)+,$2e(a1)
	tst.w $10(a3)
	bpl.s loc_20fd44
	neg.l d0
loc_20fd44:
	move.l d0,$2a(a1)
	dbf d6,loc_20fce2
loc_20fd4c:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	ble.s loc_20fd7c
	jmp (sub_203816).l
loc_20fd7c:
	jmp (sub_2038c2).l
	.incbin 64898, 68
dat_20fdc6:
	dc.b $ff,$f0,$00,$00,$00,$10
dat_20fdcc:
	dc.b $02,$03,$04,$05,$05,$05
dat_20fdd2:
	.incbin 64978, 24

sub_20fdea:
	jmp (loc_206294).l
dat_20fdf0:
	.incbin 65008, 16
dat_20fe00:
	.incbin 65024, 66048
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 9620
dat_235650:
	.incbin 218704, 256
dat_235750:
	.incbin 218960, 4096
dat_236750:
	.incbin 223056, 4896
dat_237a70:
	.incbin 227952, 34192
