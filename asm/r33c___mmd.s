; R33C__.MMD
; disassembled from the disc; code only, data comes from data/R33C__.MMD at build time
	.file "R33C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$46
	jmp (loc_201bbc).l
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
	bsr.w sub_2020f2
	bsr.w sub_20209a
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201436

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_2001e4).l,a1
	lea (dat_2001ec).l,a2
	bsr.s sub_2001a6
	lea (dat_2001f2).l,a1
	lea (dat_200214).l,a2

sub_2001a6:
	subq.b #$1,(a5)
	bpl.s loc_2001da
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
	bcs.s loc_2001c6
	moveq #$0,d0
loc_2001c6:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001da:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2001e4:
	dc.b $2c,$03,$01,$00,$02,$01,$01,$02
dat_2001ec:
	dc.b $0e,$ee,$0e,$0e,$00,$00
dat_2001f2:
	.incbin 498, 34
dat_200214:
	dc.b $00,$ae,$00,$00

sub_200218:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20022a:
	move.w d1,(a0)+
	dbf d0,loc_20022a
	move.w #$15,d4
loc_200234:
	move.b #$12,($f62a).w
	bsr.w sub_20077a
	bsr.s sub_20024a
	bsr.w sub_2024b8
	dbf d4,loc_200234
	rts

sub_20024a:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200260:
	bsr.s sub_20028e
	dbf d0,loc_200260
	cmpi.b #$1,($ff1506).l
	bne.s loc_20028c
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200286:
	bsr.s sub_20028e
	dbf d0,loc_200286
loc_20028c:
	rts

sub_20028e:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002b6
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002a4
	move.w d1,(a0)+
	rts
loc_2002a4:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002b2
	move.w d1,(a0)+
	rts
loc_2002b2:
	addq.w #$2,(a0)+
	rts
loc_2002b6:
	addq.w #$2,a0
	rts

sub_2002ba:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002c4:
	move.b #$12,($f62a).w
	bsr.w sub_20077a
	bsr.s sub_2002da
	bsr.w sub_2024b8
	dbf d4,loc_2002c4
	rts

sub_2002da:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2002ea:
	bsr.s sub_200308
	dbf d0,loc_2002ea
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200300:
	bsr.s sub_200308
	dbf d0,loc_200300
	rts

sub_200308:
	move.w (a0),d2
	beq.s loc_200334
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200318
	subq.w #$2,(a0)+
	rts
loc_200318:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200326
	subi.w #$20,(a0)+
	rts
loc_200326:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200334
	subi.w #$200,(a0)+
	rts
loc_200334:
	addq.w #$2,a0
	rts

sub_200338:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200352:
	move.w d1,(a0)+
	dbf d0,loc_200352
	move.w #$15,d4
loc_20035c:
	move.b #$12,($f62a).w
	bsr.w sub_20077a
	bsr.s sub_200372
	bsr.w sub_2024b8
	dbf d4,loc_20035c
	rts

sub_200372:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200388:
	bsr.s sub_2003b6
	dbf d0,loc_200388
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003b4
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ae:
	bsr.s sub_2003b6
	dbf d0,loc_2003ae
loc_2003b4:
	rts

sub_2003b6:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003e2
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003ce
	cmp.w d2,d1
	bcs.s loc_2003ce
	move.w d1,(a0)+
	rts
loc_2003ce:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2003de
	cmp.w d2,d1
	bcs.s loc_2003de
	move.w d1,(a0)+
	rts
loc_2003de:
	subq.w #$2,(a0)+
	rts
loc_2003e2:
	addq.w #$2,a0
	rts

sub_2003e6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003f0:
	move.b #$12,($f62a).w
	bsr.w sub_20077a
	bsr.s sub_200406
	bsr.w sub_2024b8
	dbf d4,loc_2003f0
	rts

sub_200406:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200416:
	bsr.s sub_200434
	dbf d0,loc_200416
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20042c:
	bsr.s sub_200434
	dbf d0,loc_20042c
	rts

sub_200434:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200470
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20044c
	addq.w #$2,(a0)+
	rts
loc_20044c:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20045e
	addi.w #$20,(a0)+
	rts
loc_20045e:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200470
	addi.w #$200,(a0)+
	rts
loc_200470:
	addq.w #$2,a0
	rts

sub_200474:
	lea (dat_2004e0).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200488:
	move.l (a2)+,(a3)+
	dbf d7,loc_200488
	rts

sub_200490:
	lea (dat_2004e0).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004a0:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004a0
	rts
	.incbin 1192, 18
	move.w (a1)+,d7
loc_2004bc:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004bc
	rts
	dc.b $43,$f9,$00,$20,$04,$e0
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_2004d8:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004d8
	rts
dat_2004e0:
	.incbin 1248, 666

sub_20077a:
	move.w #$2300,sr
loc_20077e:
	tst.b ($f62a).w
	bne.s loc_20077e
	rts

sub_200786:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20079e(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20079e(pc,d0.w),d0
	rts
dat_20079e:
	.incbin 1950, 640

sub_200a1e:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a7a
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a38
	neg.w d3
loc_200a38:
	tst.w d4
	bpl.w loc_200a40
	neg.w d4
loc_200a40:
	cmp.w d3,d4
	bcc.w loc_200a52
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a84(pc,d4.w),d0
	bra.s loc_200a5c
loc_200a52:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a84(pc,d3.w),d0
loc_200a5c:
	tst.w d1
	bpl.w loc_200a68
	neg.w d0
	addi.w #$80,d0
loc_200a68:
	tst.w d2
	bpl.w loc_200a74
	neg.w d0
	addi.w #$100,d0
loc_200a74:
	movem.l (a7)+,d3-d4
	rts
loc_200a7a:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a84:
	.incbin 2692, 258

sub_200b86:
	btst.b #$3,$22(a0)
	beq.s loc_200b9a
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b9a:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200bbc
	move.b $26(a0),d0
	bpl.s loc_200bb6
	subq.b #$1,d0
loc_200bb6:
	addi.b #$20,d0
	bra.s loc_200bc8
loc_200bbc:
	move.b $26(a0),d0
	bpl.s loc_200bc4
	addq.b #$1,d0
loc_200bc4:
	addi.b #$1f,d0
loc_200bc8:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e52
	cmpi.b #$80,d0
	beq.w loc_200db0
	cmpi.b #$c0,d0
	beq.w loc_200d14
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
	bsr.w sub_2010dc
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
	bsr.w sub_2010dc
	move.w (a7)+,d0
	bsr.w sub_200ce8
	tst.w d1
	beq.s loc_200c56
	bpl.s loc_200c58
	cmpi.w #$fff2,d1
	blt.s loc_200c7e
	add.w d1,$c(a0)
loc_200c56:
	rts
loc_200c58:
	cmpi.w #$e,d1
	bgt.s loc_200c64
loc_200c5e:
	add.w d1,$c(a0)
	rts
loc_200c64:
	tst.b $38(a0)
	bne.s loc_200c5e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c7e:
	rts
	.incbin 3200, 34
loc_200ca2:
	rts
	.incbin 3236, 26
	rts
	.incbin 3264, 40

sub_200ce8:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cf6
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cf6:
	btst.l #$0,d2
	bne.s loc_200d02
	move.b d2,$26(a0)
	rts
loc_200d02:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d14:
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
	bsr.w sub_20124c
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
	bsr.w sub_20124c
	move.w (a7)+,d0
	bsr.w sub_200ce8
	tst.w d1
	beq.s loc_200d88
	bpl.s loc_200d8a
	cmpi.w #$fff2,d1
	blt.w loc_200ca2
	add.w d1,$8(a0)
loc_200d88:
	rts
loc_200d8a:
	cmpi.w #$e,d1
	bgt.s loc_200d96
loc_200d90:
	add.w d1,$8(a0)
	rts
loc_200d96:
	tst.b $38(a0)
	bne.s loc_200d90
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200db0:
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
	bsr.w sub_2010dc
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
	bsr.w sub_2010dc
	move.w (a7)+,d0
	bsr.w sub_200ce8
	tst.w d1
	beq.s loc_200e2a
	bpl.s loc_200e2c
	cmpi.w #$fff2,d1
	blt.w loc_200c7e
	sub.w d1,$c(a0)
loc_200e2a:
	rts
loc_200e2c:
	cmpi.w #$e,d1
	bgt.s loc_200e38
loc_200e32:
	sub.w d1,$c(a0)
	rts
loc_200e38:
	tst.b $38(a0)
	bne.s loc_200e32
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e52:
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
	bsr.w sub_20124c
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
	bsr.w sub_20124c
	move.w (a7)+,d0
	bsr.w sub_200ce8
	tst.w d1
	beq.s loc_200ecc
	bpl.s loc_200ece
	cmpi.w #$fff2,d1
	blt.w loc_200ca2
	sub.w d1,$8(a0)
loc_200ecc:
	rts
loc_200ece:
	cmpi.w #$e,d1
	bgt.s loc_200eda
loc_200ed4:
	sub.w d1,$8(a0)
	rts
loc_200eda:
	tst.b $38(a0)
	bne.s loc_200ed4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ef4:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f0a
	andi.w #$380,d0
loc_200f0a:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f6a
	bmi.s loc_200f6e
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f3a
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f40
loc_200f3a:
	andi.w #$7fff,$2(a0)
loc_200f40:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f50
	bclr.b #$6,$1(a0)
loc_200f50:
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
loc_200f6a:
	movea.l d1,a1
	rts
loc_200f6e:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fd6
	btst.b #$6,$1(a0)
	bne.s loc_200f9c
	cmpi.b #$14,d1
	bne.w loc_2010c0
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010c0
loc_200f9c:
	cmpi.b #$15,d1
	bne.s loc_200faa
	move.w #$60,d1
	bra.w loc_2010c0
loc_200faa:
	cmpi.b #$1e,d1
	bne.s loc_200fb8
	move.w #$61,d1
	bra.w loc_2010c0
loc_200fb8:
	cmpi.b #$1f,d1
	bne.s loc_200fc6
	move.w #$62,d1
	bra.w loc_2010c0
loc_200fc6:
	cmpi.b #$32,d1
	bne.w loc_2010c0
	move.w #$63,d1
	bra.w loc_2010c0
loc_200fd6:
	cmpi.b #$5,($ff1506).l
	bne.w loc_20103c
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201026
	cmpi.b #$6,d1
	beq.s loc_201026
	tst.b ($ff1956).l
	beq.w loc_2010c0
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201036
	cmpi.b #$3c,d1
	beq.s loc_201036
	cmpi.b #$37,d1
	beq.s loc_201036
	cmpi.b #$2f,d1
	beq.s loc_201036
	cmpi.b #$16,d1
	beq.s loc_201036
	bra.w loc_2010c0
loc_201026:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010c0
loc_201036:
	addq.b #$1,d1
	bra.w loc_2010c0
loc_20103c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010ac
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010c0
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010c0
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201070
	move.w #$6a,d1
	bra.s loc_2010c0
loc_201070:
	cmpi.b #$48,d1
	bne.s loc_20107c
	move.w #$6b,d1
	bra.s loc_2010c0
loc_20107c:
	cmpi.b #$4a,d1
	bne.s loc_201088
	move.w #$6c,d1
	bra.s loc_2010c0
loc_201088:
	cmpi.b #$10,d1
	bne.s loc_201094
	move.w #$6d,d1
	bra.s loc_2010c0
loc_201094:
	cmpi.b #$63,d1
	bne.s loc_2010a0
	move.w #$6e,d1
	bra.s loc_2010c0
loc_2010a0:
	cmpi.b #$43,d1
	bne.s loc_2010c0
	move.w #$6f,d1
	bra.s loc_2010c0
loc_2010ac:
	btst.b #$6,$1(a0)
	beq.s loc_2010c0
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010c0
	move.w #$51,d1
loc_2010c0:
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

sub_2010dc:
	bsr.w sub_200ef4
	cmpi.l #$210000,d1
	beq.s loc_2010f6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010f6
	btst.l d5,d4
	bne.s loc_201104
loc_2010f6:
	add.w a3,d2
	bsr.w sub_20119c
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201104:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010f6
	lea (dat_2372ec).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20112a
	not.w d1
	neg.b (a4)
loc_20112a:
	btst.l #$c,d4
	beq.s loc_20113a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20113a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2373ec).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201156
	neg.w d0
loc_201156:
	tst.w d0
	beq.s loc_2010f6
	bmi.s loc_201172
	cmpi.b #$10,d0
	beq.s loc_20118e
loc_201162:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201172:
	cmpa.w #$10,a3
	bne.s loc_201182
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201162
loc_201182:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010f6
loc_20118e:
	sub.w a3,d2
	bsr.w sub_20119c
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_20119c:
	bsr.w sub_200ef4
	cmpi.l #$210000,d1
	beq.s loc_2011b6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011b6
	btst.l d5,d4
	bne.s loc_2011c4
loc_2011b6:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011c4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011b6
	lea (dat_2372ec).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011ea
	not.w d1
	neg.b (a4)
loc_2011ea:
	btst.l #$c,d4
	beq.s loc_2011fa
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011fa:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2373ec).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201216
	neg.w d0
loc_201216:
	tst.w d0
	beq.s loc_2011b6
	bmi.s loc_20122c
loc_20121c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20122c:
	cmpa.w #$10,a3
	bne.s loc_20123c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20121c
loc_20123c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011b6
	not.w d1
	rts

sub_20124c:
	bsr.w sub_200ef4
	cmpi.l #$210000,d1
	beq.s loc_201266
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201266
	btst.l d5,d4
	bne.s loc_201274
loc_201266:
	add.w a3,d3
	bsr.w sub_2012fc
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201274:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201266
	lea (dat_2372ec).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012a2
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012a2:
	btst.l #$b,d4
	beq.s loc_2012aa
	neg.b (a4)
loc_2012aa:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2383ec).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012c6
	neg.w d0
loc_2012c6:
	tst.w d0
	beq.s loc_201266
	bmi.s loc_2012e2
	cmpi.b #$10,d0
	beq.s loc_2012ee
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012e2:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201266
loc_2012ee:
	sub.w a3,d3
	bsr.w sub_2012fc
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012fc:
	bsr.w sub_200ef4
	cmpi.l #$210000,d1
	beq.s loc_201316
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201316
	btst.l d5,d4
	bne.s loc_201324
loc_201316:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201324:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201316
	lea (dat_2372ec).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201352
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201352:
	btst.l #$b,d4
	beq.s loc_20135a
	neg.b (a4)
loc_20135a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2383ec).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201376
	neg.w d0
loc_201376:
	tst.w d0
	beq.s loc_201316
	bmi.s loc_20138c
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20138c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201316
	not.w d1
	rts

sub_20139c:
	rts
	.incbin 5022, 152
loc_201436:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201456
	tst.b ($ff0f01).l
	bne.s loc_201456
	move.b #$1,($ff156a).l
loc_201456:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014bc
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2077d6
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014bc
	move.b #$1,($ff1508).l
loc_2014bc:
	bset.b #$7,($f600).w
	bsr.w sub_2024aa
	tst.b ($ff156e).l
	bne.s loc_2014e2
	btst.b #$7,($ff152e).l
	beq.s loc_201518
	bset.b #$0,($ff151d).l
	beq.s loc_2014ee
loc_2014e2:
	bsr.w sub_2003e6
	bclr.b #$0,($ff151d).l
loc_2014ee:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201588
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201516
	bclr.b #$7,($ff152e).l
loc_201516:
	rts
loc_201518:
	bset.b #$0,($ff151d).l
	beq.s loc_201526
	bsr.w sub_2002ba
loc_201526:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201542
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20156a
loc_201542:
	tst.b ($ff1508).l
	bne.s loc_201588
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20156a:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201572:
	move.l #$0,(a1)+
	dbf d6,loc_201572
	move.b #$c,($f62a).w
	bsr.w sub_20077a
	rts
loc_201588:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015a6
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015a6:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015bc
	btst.b #$7,($ff152e).l
	beq.s loc_2015c2
loc_2015bc:
	move.l #$eee0eee,d0
loc_2015c2:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015ca:
	move.l d0,(a1)+
	dbf d6,loc_2015ca
loc_2015d0:
	move.b #$c,($f62a).w
	bsr.w sub_20077a
	bsr.w sub_2024b8
	bne.s loc_2015d0
	tst.l ($f680).w
	bsr.w sub_201a76
	moveq #$0,d0
	lea (dat_20f672).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015fa
	bsr.w sub_2025be
loc_2015fa:
	moveq #$1,d0
	bsr.w sub_2025be
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201616:
	move.l d0,(a1)+
	dbf d1,loc_201616
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201628:
	move.l d0,(a1)+
	dbf d1,loc_201628
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201638:
	move.l d0,(a1)+
	dbf d1,loc_201638
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20164a:
	move.l d0,(a1)+
	dbf d1,loc_20164a
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20165a:
	move.l d0,(a1)+
	dbf d1,loc_20165a
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20166a:
	move.l d0,(a1)+
	dbf d1,loc_20166a
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202194
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
	bsr.w sub_200490
	moveq #$3,d0
	bsr.w sub_200474
	bsr.w sub_202820
	bsr.w sub_20299c
	bset.b #$2,($f754).w
	bsr.w sub_203562
	bsr.w sub_203468
	jsr (sub_20139c).l
	bsr.w sub_2019b0
loc_2016ea:
	move.b #$c,($f62a).w
	bsr.w sub_20077a
	bsr.w sub_2024b8
	bne.s loc_2016ea
	tst.l ($f680).w
	bne.s loc_2016ea
	bsr.w sub_20193c
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ad6
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20174e
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20174e:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201790
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201790:
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
	jsr (sub_20f66c).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201820
loc_20181a:
	bsr.w sub_200338
	bra.s loc_20182e
loc_201820:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20181a
	bsr.w sub_200218
loc_20182e:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20183c:
	move.b #$8,($f62a).w
	bsr.w sub_20077a
	tst.b ($f7cc).w
	bne.s loc_20185a
	btst.b #$7,($f605).w
	beq.s loc_20185a
	eori.b #$1,($f63a).w
loc_20185a:
	btst.b #$0,($f63a).w
	beq.w loc_2018cc
	bsr.w sub_201b3a
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018aa
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20183c
	subq.b #$1,($ff1508).l
	bpl.s loc_20188c
	clr.b ($ff1508).l
loc_20188c:
	move.w #$e,d0
	jsr (sub_205c1e).l
	bsr.w sub_2077d6
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018b8
loc_2018aa:
	andi.b #$70,d0
	beq.w loc_20183c
	clr.b ($ff1508).l
loc_2018b8:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201436
loc_2018cc:
	bsr.w sub_201b80
	addq.w #$1,($ff1504).l
	jsr (sub_2077ec).l
	jsr (sub_203968).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201436
	tst.w ($ff1502).l
	bne.w loc_201436
	tst.w ($ff1906).l
	bne.s loc_201914
	cmpi.b #$6,($d024).w
	bcs.s loc_201914
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201918
loc_201914:
	bsr.w sub_20299c
loc_201918:
	jsr (sub_203b12).l
	tst.w ($ff190e).l
	bne.s loc_20192a
	bsr.w sub_200184
loc_20192a:
	jsr (sub_20b31e).l
	bsr.w sub_2024b8
	bsr.w sub_2019e2
	bra.w loc_20183c

sub_20193c:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201954
	move.w #$78,$30(a1)
loc_201954:
	rts
	.incbin 6486, 90

sub_2019b0:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019c2(pc,d0.w),($f796).w
	rts
dat_2019c2:
	.incbin 6594, 32

sub_2019e2:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a00
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a00:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a1e
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a1e:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a46
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a46
	move.b #$0,($ff1915).l
loc_201a46:
	tst.b ($ff1916).l
	beq.s loc_201a74
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a74:
	rts

sub_201a76:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a98
	cmpi.b #$2,d0
	bne.s loc_201a98
	add.b ($ff156a).l,d0
loc_201a98:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201ab0(pc,d1.w),d0
	jmp (sub_205c1e).l
dat_201ab0:
	.incbin 6832, 38

sub_201ad6:
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

sub_201b3a:
	move.w #$ab,d0
	jsr (sub_202282).l
	bset.b #$7,($f63a).w
	bne.s loc_201b7e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b64
loc_201b5a:
	move.w #$d5,d0
	jmp (sub_205c1e).l
loc_201b64:
	tst.b ($ff151f).l
	bne.s loc_201b5a
	tst.b ($ff1520).l
	bne.s loc_201b5a
	move.w #$90,d0
	jmp (sub_205c1e).l
loc_201b7e:
	rts

sub_201b80:
	bclr.b #$7,($f63a).w
	beq.s loc_201bba
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ba0
loc_201b96:
	move.w #$d6,d0
	jmp (sub_205c1e).l
loc_201ba0:
	tst.b ($ff151f).l
	bne.s loc_201b96
	tst.b ($ff1520).l
	bne.s loc_201b96
	move.w #$91,d0
	jmp (sub_205c1e).l
loc_201bba:
	rts
loc_201bbc:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c48
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201bf8
	move.w #$700,d0
loc_201bf4:
	dbf d0,loc_201bf4
loc_201bf8:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c2e(pc,d0.w),d0
	jsr dat_201c2e(pc,d0.w)
loc_201c0e:
	jsr (sub_2022a6).l
	tst.b ($f63a).w
	bne.s loc_201c22
	bsr.w sub_20205a
	bsr.w sub_202048
loc_201c22:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c2e:
	.incbin 7214, 26
loc_201c48:
	tst.b ($ff1957).l
	beq.w loc_201c0e
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c0e
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c76
	move.w #$700,d0
loc_201c72:
	dbf d0,loc_201c72
loc_201c76:
	move.w #$1,($f6fc).w
	jsr (sub_20221a).l
	tst.b ($f64e).w
	bne.s loc_201cae
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cd2
loc_201cae:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cd2:
	move.w ($f624).w,(a5)
	jsr (sub_202236).l
	bra.w loc_201c0e
	.incbin 7392, 60
	jsr (sub_20221a).l
	bsr.w sub_2020b6
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
	bsr.w sub_205b40
	tst.b ($f767).w
	beq.s loc_201dca
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201dca:
	jsr (sub_20f66c).l
	jsr (sub_202236).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203060
	bsr.w sub_20252a
	jmp (loc_2099ec).l
	dc.b $4e,$75
	jsr (sub_20221a).l
	bsr.w sub_2020b6
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
	jsr (sub_202236).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203060
	bra.w loc_20250e
	.incbin 7842, 16
	bsr.w sub_201f9e
	cmpi.b #$1,($ff1903).l
	bne.s loc_201ed4
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201ed4:
	move.w ($f624).w,(a5)
	bra.w loc_20250e
	.incbin 7900, 194

sub_201f9e:
	jsr (sub_20221a).l
	bsr.w sub_2020b6
	tst.b ($f64e).w
	bne.s loc_201fd4
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201ff8
loc_201fd4:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201ff8:
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
	jmp (sub_202236).l
	dc.b $4e,$73

sub_202048:
	tst.b ($d02a).w
	bne.s loc_202058
	tst.w ($f786).w
	beq.s loc_202058
	addq.w #$1,($f786).w
loc_202058:
	rts

sub_20205a:
	tst.w ($f780).w
	beq.s loc_202064
	addq.w #$1,($f780).w
loc_202064:
	tst.w ($f782).w
	beq.s loc_20206e
	addq.w #$1,($f782).w
loc_20206e:
	rts

sub_202070:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_20207e
	move.l #$2a6d365a,d1
loc_20207e:
	move.l d1,d0
	asl.l #$2,d1
	add.l d0,d1
	asl.l #$3,d1
	add.l d0,d1
	move.w d1,d0
	swap d1
	add.w d1,d0
	move.w d0,d1
	swap d1
	move.l d1,($f636).w
	move.l (a7)+,d1
	rts

sub_20209a:
	bsr.w sub_20221a
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202236

sub_2020b6:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2020c4
	addq.w #$2,a1

sub_2020c4:
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

sub_2020f2:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20216e).l,a2
	moveq #$12,d7
loc_202106:
	move.w (a2)+,(a0)
	dbf d7,loc_202106
	move.w (dat_202170).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_20212c:
	move.w d0,(a1)
	dbf d7,loc_20212c
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20215e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20215e
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20216e:
	dc.b $80,$04
dat_202170:
	.incbin 8560, 36

sub_202194:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021b6:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021b6
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021e4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021e4
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202202:
	move.l d0,(a1)+
	dbf d1,loc_202202
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202212:
	move.l d0,(a1)+
	dbf d1,loc_202212
	rts

sub_20221a:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20222a:
	btst.b #$0,($a11100).l
	bne.s loc_20222a
	rts

sub_202236:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8772, 62

sub_202282:
	tst.b ($f00a).w
	bne.s loc_20228e
	move.b d0,($f00a).w
	rts
loc_20228e:
	tst.b ($f00b).w
	bne.s loc_20229a
	move.b d0,($f00b).w
	rts
loc_20229a:
	tst.b ($f00c).w
	bne.s loc_2022a4
	move.b d0,($f00c).w
loc_2022a4:
	rts

sub_2022a6:
	jsr (sub_20221a).l
	tst.b ($f00a).w
	beq.s loc_2022c0
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2022c0:
	tst.b ($f00b).w
	beq.s loc_2022d4
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2022d4:
	tst.b ($f00c).w
	beq.s loc_2022e8
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022e8:
	bra.w sub_202236
	.incbin 8940, 32

sub_20230c:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2023ce).l,a3
	lea ($c00000).l,a4
	bra.s loc_202328

sub_20231e:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023e4).l,a3
loc_202328:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202336
	adda.w #$a,a3
loc_202336:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023fa
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202356
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202356:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2023a2
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20237e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20237e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20238c:
	lsr.w #$4,d0
loc_20238e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20239c
	jmp (a3)

sub_202398:
	moveq #$0,d4
	moveq #$8,d3
loc_20239c:
	dbf d0,loc_20238e
	bra.s sub_202356
loc_2023a2:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2023b0
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023b0:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20238c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20238c
loc_2023ce:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202398
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202398
	rts
dat_2023e4:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202398
	rts

sub_2023fa:
	move.b (a0)+,d0
loc_2023fc:
	cmpi.b #$ff,d0
	bne.s loc_202404
	rts
loc_202404:
	move.w d0,d7
loc_202406:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023fc
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
	bne.s loc_202434
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202406
loc_202434:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202440:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202440
	bra.s loc_202406

sub_20244c:
	movem.l a1-a2,-(a7)
	lea (dat_20f682).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202464:
	tst.l (a2)
	beq.s loc_20246c
	addq.w #$6,a2
	bra.s loc_202464
loc_20246c:
	move.w (a1)+,d0
	bmi.s loc_202478
loc_202470:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202470
loc_202478:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9342, 44

sub_2024aa:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2024b0:
	clr.l (a2)+
	dbf d0,loc_2024b0
	rts

sub_2024b8:
	tst.l ($f680).w
	beq.s loc_20250c
	tst.w ($f6f8).w
	bne.s loc_20250c
	movea.l ($f680).w,a0
	lea (loc_2023ce).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024da
	adda.w #$a,a3
loc_2024da:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023fa
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
loc_20250c:
	rts
loc_20250e:
	tst.w ($f6f8).w
	beq.w loc_2025ac
loc_202516:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202548

sub_20252a:
	tst.w ($f6f8).w
	beq.s loc_2025ac
	tst.b ($f744).w
	bne.s loc_202516
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202548:
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
loc_20257c:
	movea.w #$8,a5
	bsr.w sub_202398
	subq.w #$1,($f6f8).w
	beq.s loc_2025ae
	subq.w #$1,($f6fa).w
	bne.s loc_20257c
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025ac:
	rts
loc_2025ae:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2025b4:
	move.l $6(a0),(a0)+
	dbf d0,loc_2025b4
	rts

sub_2025be:
	lea (dat_20f682).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2025d0:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_20230c
	dbf d1,loc_2025d0
	rts
	.incbin 9712, 560

sub_202820:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20287c).l,a0
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
	bra.w loc_2028a8
dat_20287c:
	dc.b $00,$04,$00,$00,$04,$97,$00,$30
	dc.b $05,$10,$00,$60
dat_202888:
	.incbin 10376, 32
loc_2028a8:
	tst.b ($ff1522).l
	beq.s loc_2028c8
	jsr (sub_206c96).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028c6
	moveq #$0,d0
loc_2028c6:
	bra.s loc_202904
loc_2028c8:
	lea (dat_202940).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028ea
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202888).l,a1
	adda.w d0,a1
	bra.s loc_2028f4
loc_2028ea:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028f4:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202904:
	subi.w #$a0,d1
	bcc.s loc_20290c
	moveq #$0,d1
loc_20290c:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202916
	move.w d2,d1
loc_202916:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202922
	moveq #$0,d0
loc_202922:
	cmp.w ($f72e).w,d0
	blt.s loc_20292c
	move.w ($f72e).w,d0
loc_20292c:
	move.w d0,($f704).w
	bsr.w sub_202948
	lea (dat_202944).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202940:
	dc.b $00,$50,$01,$0c
dat_202944:
	dc.b $7f,$7f,$7f,$7f

sub_202948:
	move.w #$218,d0
	move.w #$520,d2
	sub.w ($f704).w,d2
	bcs.s loc_20295e
	lsr.w #$1,d2
	sub.w d2,d0
	bpl.s loc_20295e
	moveq #$0,d0
loc_20295e:
	move.w d0,($f70c).w
	move.w #$0,($f70e).w
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$4,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f708).w
	lea ($a800).w,a2
	moveq #$b,d2
loc_202994:
	clr.l (a2)+
	dbf d2,loc_202994
	rts

sub_20299c:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029a8
	rts
loc_2029a8:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202cd6
	bsr.w sub_202d76
	bsr.w sub_2035fc
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_203000
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202fcc
	lea ($a830).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f98
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a20
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a20
	moveq #$0,d0
loc_202a20:
	bsr.w sub_202f68
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202a9a:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202a9a
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$1c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$6,d6
	lea ($a93e).w,a1
loc_202ad8:
	move.w d3,d0
	neg.w d0
	move.w d0,-(a1)
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ad8
	lea ($a93e).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202af4:
	move.w d0,(a1)+
	dbf d6,loc_202af4
	move.w ($f718).w,d0
	neg.w d0
	moveq #$1,d6
loc_202b02:
	move.w d0,(a1)+
	dbf d6,loc_202b02
	lea ($a800).w,a2
	moveq #$b,d6
loc_202b0e:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bec).l,a3
	move.b $0(a3,d6.w),d5
loc_202b24:
	move.w d1,(a1)+
	dbf d5,loc_202b24
	dbf d6,loc_202b0e
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b36:
	move.w d0,(a1)+
	dbf d6,loc_202b36
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b44:
	move.w d0,(a1)+
	dbf d6,loc_202b44
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202b52:
	move.w d0,(a1)+
	dbf d6,loc_202b52
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b60:
	move.w d0,(a1)+
	dbf d6,loc_202b60
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$2c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$a,d6
	move.w ($f708).w,d3
loc_202b84:
	move.w d3,d0
	neg.w d0
	move.w d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b84
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b9c:
	move.w d0,(a1)+
	dbf d6,loc_202b9c
	lea ($cc00).w,a1
	lea ($a930).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$3f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$57,d1
	moveq #$1d,d5
	sub.w d3,d1
	bcs.s loc_202be8
	cmpi.w #$1b,d1
	bcs.s loc_202bcc
	moveq #$1c,d1
loc_202bcc:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202bf8).l,a3
	lea (dat_23d27c).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c4c
loc_202be8:
	bra.w loc_202bfe
dat_202bec:
	dc.b $01,$03,$01,$03,$01,$03,$01,$03
	dc.b $03,$03,$03,$03
dat_202bf8:
	dc.b $00,$38,$02,$50,$7f,$ff
loc_202bfe:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a830).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202c10:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c40
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c40:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202c10
	rts

sub_202c4c:
	cmp.w (a3),d4
	bcc.s loc_202c82
loc_202c50:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c6c(pc,d2.w)
loc_202c60:
	tst.w d1
	bmi.s loc_202c80
	cmp.w (a3),d4
	bcc.s loc_202c9c
loc_202c68:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c6c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c60
loc_202c80:
	rts
loc_202c82:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202ca6
	cmp.w (a3),d4
	bcs.s loc_202c50
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c50
	bra.s loc_202ca6
loc_202c9c:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c68
loc_202ca6:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202cb0:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202cb0
	lsr.w #$3,d6
loc_202ccc:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202ccc
	bra.s loc_202c60

sub_202cd6:
	move.w ($f700).w,d4
	bsr.s sub_202d0a
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d08
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d02
	bset.b #$2,($f754).w
	rts
loc_202d02:
	bset.b #$3,($f754).w
loc_202d08:
	rts

sub_202d0a:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d1c
	bcs.s loc_202d4c
	bra.s loc_202d22
loc_202d1c:
	clr.w ($f73a).w
	rts
loc_202d22:
	cmpi.w #$10,d0
	blt.s loc_202d2c
	move.w #$10,d0
loc_202d2c:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d3a
	move.w ($f72a).w,d0
loc_202d3a:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d4c:
	cmpi.w #$fff0,d0
	bge.s loc_202d56
	move.w #$fff0,d0
loc_202d56:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d3a
	move.w ($f728).w,d0
	bra.s loc_202d3a
	.incbin 11622, 16

sub_202d76:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d8a
	subq.w #$5,d0
loc_202d8a:
	btst.b #$1,$22(a6)
	beq.s loc_202daa
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202df6
	subi.w #$40,d0
	bcc.s loc_202df6
	tst.b ($f75c).w
	bne.s loc_202e08
	bra.s loc_202db6
loc_202daa:
	sub.w ($f73e).w,d0
	bne.s loc_202dbc
	tst.b ($f75c).w
	bne.s loc_202e08
loc_202db6:
	clr.w ($f73c).w
	rts
loc_202dbc:
	cmpi.w #$60,($f73e).w
	bne.s loc_202de4
	move.w $14(a6),d1
	bpl.s loc_202dcc
	neg.w d1
loc_202dcc:
	cmpi.w #$800,d1
	bcc.s loc_202df6
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e56
	cmpi.w #$fffa,d0
	blt.s loc_202e20
	bra.s loc_202e0e
loc_202de4:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e56
	cmpi.w #$fffe,d0
	blt.s loc_202e20
	bra.s loc_202e0e
loc_202df6:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e56
	cmpi.w #$fff0,d0
	blt.s loc_202e20
	bra.s loc_202e0e
loc_202e08:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e0e:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e60
	bra.w loc_202e2c
loc_202e20:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e2c:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e84
	cmpi.w #$ff00,d1
	bgt.s loc_202e50
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e84
loc_202e50:
	move.w ($f72c).w,d1
	bra.s loc_202e84
loc_202e56:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e60:
	cmp.w ($f72e).w,d1
	blt.s loc_202e84
	subi.w #$800,d1
	bcs.s loc_202e80
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e84
loc_202e80:
	move.w ($f72e).w,d1
loc_202e84:
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
	bne.s loc_202ec6
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202ec0
	bset.b #$0,($f754).w
	rts
loc_202ec0:
	bset.b #$1,($f754).w
loc_202ec6:
	rts
	.incbin 11976, 160

sub_202f68:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f96
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f90
	bset.b #$0,($f756).w
	rts
loc_202f90:
	bset.b #$1,($f756).w
loc_202f96:
	rts

sub_202f98:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fca
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202fc4
	bset.b d6,($f756).w
	bra.s loc_202fca
loc_202fc4:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fca:
	rts

sub_202fcc:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ffe
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202ff8
	bset.b d6,($f758).w
	bra.s loc_202ffe
loc_202ff8:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ffe:
	rts

sub_203000:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203032
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20302c
	bset.b d6,($f75a).w
	bra.s loc_203032
loc_20302c:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203032:
	rts
	.incbin 12340, 44

sub_203060:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20311e
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203202
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203204
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20311c
	bclr.b #$0,(a2)
	beq.s loc_2030d2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203430
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203206
loc_2030d2:
	bclr.b #$1,(a2)
	beq.s loc_2030ec
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203430
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203206
loc_2030ec:
	bclr.b #$2,(a2)
	beq.s loc_203102
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203430
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20325c
loc_203102:
	bclr.b #$3,(a2)
	beq.s loc_20311c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203430
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20325c
loc_20311c:
	rts

sub_20311e:
	lea (dat_2034e8).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20313a
	bclr.b #$1,(a2)
	beq.s loc_203184
	move.w #$e0,d4
loc_20313a:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031b4(pc,d0.w),a3
	beq.s loc_20316c
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203430
	movem.l (a7)+,d4-d5
	bsr.w sub_203206
	movea.l (a7)+,a0
	bra.s loc_203184
loc_20316c:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203432
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203232
	movea.l (a7)+,a0
loc_203184:
	tst.b (a2)
	bne.s loc_20318a
	rts
loc_20318a:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20319e
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20319e:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2031c4
dat_2031b4:
	.incbin 12724, 16
loc_2031c4:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031cc:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2031f6
	add.w d0,d0
	movea.l dat_2031b4(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203308
	movem.l (a7)+,d4-d5
	bsr.w sub_203430
	bsr.w sub_20328a
	movem.l (a7)+,d4-d5/a0
loc_2031f6:
	addi.w #$10,d4
	dbf d6,loc_2031cc
	clr.b (a2)
	rts

sub_203202:
	rts

sub_203204:
	rts

sub_203206:
	moveq #$15,d6

sub_203208:
	move.l #$800000,d7
	move.l d0,d1
loc_203210:
	movem.l d4-d5,-(a7)
	bsr.w sub_203308
	move.l d1,d0
	bsr.w sub_20328a
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203210
	rts

sub_203232:
	move.l #$800000,d7
	move.l d0,d1
loc_20323a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20330a
	move.l d1,d0
	bsr.w sub_20328a
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20323a
	rts

sub_20325c:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203266:
	movem.l d4-d5,-(a7)
	bsr.w sub_203308
	move.l d1,d0
	bsr.w sub_20328a
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203266
	rts

sub_20328a:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032c6
	btst.b #$3,(a0)
	bne.s loc_2032a6
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032a6:
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
loc_2032c6:
	btst.b #$3,(a0)
	bne.s loc_2032e8
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
loc_2032e8:
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

sub_203308:
	add.w (a3),d5

sub_20330a:
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
	beq.s loc_203358
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
loc_203358:
	rts
	.incbin 13146, 30
	subq.b #$1,d3
	andi.w #$7f,d3
	ror.w #$7,d3
	add.w d4,d4
	andi.w #$1e0,d4
	andi.w #$1e,d5
	add.w d4,d3
	add.w d5,d3
	movea.l d3,a0
	rts
	.incbin 13202, 156
	rts

sub_203430:
	add.w (a3),d5

sub_203432:
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
	.incbin 13388, 28

sub_203468:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203492
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2034ba

sub_203492:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203496:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203430
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203208
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203496
	rts
loc_2034ba:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034be:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034e8).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20352a
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2034be
	rts
dat_2034e8:
	.incbin 13544, 50
dat_20351a:
	.incbin 13594, 16

sub_20352a:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20351a(pc,d0.w),a3
	beq.s loc_20354c
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203430
	movem.l (a7)+,d4-d5
	bsr.w sub_203206
	bra.s loc_203560
loc_20354c:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203432
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203232
loc_203560:
	rts

sub_203562:
	moveq #$0,d0
	lea (dat_20f672).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20231e
	movea.l (a2)+,a0
	bsr.w sub_2035ae
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200474
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2035ac
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035ac
	bsr.w sub_20244c
loc_2035ac:
	rts

sub_2035ae:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035b8:
	move.l d0,(a3)+
	dbf d1,loc_2035b8
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035ce
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035ce:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2396a8).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2035e8:
	move.w d1,d0
	movea.l a3,a0
loc_2035ec:
	move.b (a1)+,(a0)+
	dbf d0,loc_2035ec
	lea $80(a3),a3
	dbf d2,loc_2035e8
	rts

sub_2035fc:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203676(pc,d0.w),d0
	jsr dat_203676(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203622
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203622:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203650
	bcc.s loc_203652
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203646
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203646:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203650:
	rts
loc_203652:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20366a
	btst.b #$1,($d022).w
	beq.s loc_20366a
	add.w d1,d1
	add.w d1,d1
loc_20366a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203676:
	.incbin 13942, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203730(pc,d0.w),d0
	jmp dat_203730(pc,d0.w)
dat_203730:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	tst.b ($f7a7).w
	bne.w loc_20374e
	move.w #$510,($f726).w
	rts
loc_20374e:
	move.w #$60,d1
	bra.w loc_20392c
	.incbin 14166, 470
loc_20392c:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203938
	neg.w d1
loc_203938:
	cmpi.w #$4,d1
	bge.s loc_203944
	move.w ($f726).w,($f72e).w
loc_203944:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203964
	cmp.w ($f72a).w,d0
	ble.s loc_20395c
	move.w ($f72a).w,d0
loc_20395c:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203964:
	moveq #$1,d0
	rts

sub_203968:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203970:
	move.b (a0),d0
	beq.s loc_203986
	add.w d0,d0
	add.w d0,d0
	lea (dat_203d8a).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203986:
	lea $40(a0),a0
	dbf d7,loc_203970
	rts

sub_203990:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039ce
	bpl.s loc_2039c0
	btst.b #$1,$2c(a0)
	beq.s loc_2039c0
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039ce
loc_2039c0:
	btst.b #$2,$2c(a0)
	bne.s loc_2039ce
	addi.w #$38,$12(a0)
loc_2039ce:
	tst.w $12(a0)
	bmi.s loc_2039e2
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2039e2
	move.w #$1000,$12(a0)
loc_2039e2:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2039f2:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a2e
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a2e
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a2c
	neg.w d1
loc_203a2c:
	add.w d1,d0
loc_203a2e:
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

sub_203a48:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203ab8
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203ad4
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203ad4
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203a92
	cmpi.w #$800,d3
	bcs.s loc_203aa4
	subi.w #$800,d3
	bra.s loc_203aa4
loc_203a92:
	cmpi.w #$700,($f704).w
	bcs.s loc_203aa4
	cmpi.w #$100,d3
	bcc.s loc_203aa4
	addi.w #$800,d3
loc_203aa4:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203ad4
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203ad4
loc_203ab8:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203ad4
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203ad4:
	rts
	.incbin 15062, 30

sub_203af4:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203afa:
	move.l d1,(a1)+
	dbf d0,loc_203afa
	rts
dat_203b02:
	.incbin 15106, 16

sub_203b12:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b1e:
	tst.w (a4)
	beq.w loc_203bde
	moveq #$2,d6
loc_203b26:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bd6
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203b8c
	movea.l dat_203b02(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b70
	cmpi.w #$800,d2
	bcs.s loc_203b82
	subi.w #$800,d2
	bra.s loc_203b82
loc_203b70:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b82
	cmpi.w #$100,d2
	bcc.s loc_203b82
	addi.w #$800,d2
loc_203b82:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bae
loc_203b8c:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bae
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203bd6
	cmpi.w #$180,d2
	bcc.s loc_203bd6
loc_203bae:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203bcc
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203bd0
loc_203bcc:
	bsr.w sub_203c00
loc_203bd0:
	bset.b #$7,$1(a0)
loc_203bd6:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b26
loc_203bde:
	lea $80(a4),a4
	dbf d7,loc_203b1e
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203bf8
	move.l #$0,(a2)
	rts
loc_203bf8:
	move.b #$0,-$5(a2)
	rts

sub_203c00:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c46
	btst.l #$1,d4
	bne.w loc_203c94
loc_203c12:
	cmpi.b #$50,d5
	beq.s loc_203c44
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
	bne.s loc_203c3e
	addq.w #$1,d0
loc_203c3e:
	move.w d0,(a2)+
	dbf d1,loc_203c12
loc_203c44:
	rts
loc_203c46:
	btst.l #$1,d4
	bne.w loc_203cda
loc_203c4e:
	cmpi.b #$50,d5
	beq.s loc_203c92
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
	bne.s loc_203c8c
	addq.w #$1,d0
loc_203c8c:
	move.w d0,(a2)+
	dbf d1,loc_203c4e
loc_203c92:
	rts
loc_203c94:
	cmpi.b #$50,d5
	beq.s loc_203cd8
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
	bne.s loc_203cd2
	addq.w #$1,d0
loc_203cd2:
	move.w d0,(a2)+
	dbf d1,loc_203c94
loc_203cd8:
	rts
loc_203cda:
	cmpi.b #$50,d5
	beq.s loc_203d2c
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
	bne.s loc_203d26
	addq.w #$1,d0
loc_203d26:
	move.w d0,(a2)+
	dbf d1,loc_203cda
loc_203d2c:
	rts
	.incbin 15662, 92
dat_203d8a:
	.incbin 15754, 258

sub_203e8c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203e9e
	move.w #$0,(a1)
	rts
loc_203e9e:
	tst.w (a1)
	bne.s loc_203ea8
	move.b #$1,$1(a1)
loc_203ea8:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203ef2
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ee4
	neg.w $10(a0)
loc_203ee4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c1e
loc_203ef2:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f10
	cmpa.w #$d040,a0
	beq.s loc_203f10
	tst.b ($ff1906).l
	beq.s loc_203f10
	jmp (loc_2075bc).l
loc_203f10:
	move.b $2a(a0),d0
	beq.s loc_203f3a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f2c
	cmpi.b #$2d,d0
	bcs.s loc_203f36
	move.b #$2d,d0
	bra.s loc_203f36
loc_203f2c:
	cmpi.b #$1e,d0
	bcs.s loc_203f36
	move.b #$1e,d0
loc_203f36:
	move.b d0,$2a(a0)
loc_203f3a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f48(pc,d0.w),d1
	jmp dat_203f48(pc,d1.w)
dat_203f48:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f52:
	tst.b ($d300).w
	bne.s loc_203f90
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f90:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203fb8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203fb8:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203fec:
	tst.b ($ff1506).l
	bne.s loc_204052
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_204052
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204056
	cmpi.b #$2f,d1
	bne.s loc_204054
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_204052
	tst.b $2c(a0)
	beq.s loc_204052
	jsr (sub_2079e8).l
	bne.s loc_204052
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_20404a
	moveq #$0,d0
loc_20404a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_204052:
	rts
loc_204054:
	rts

sub_204056:
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

sub_20407c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204088
	neg.w d0
loc_204088:
	btst.b #$1,$2c(a0)
	beq.s loc_204098
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_2040c0
loc_204098:
	cmpi.w #$600,d0
	bcs.s loc_2040c0
	tst.w $14(a0)
	bpl.s loc_2040b2
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040ce
	move.w #$e0,d1
	bra.s loc_2040ce
loc_2040b2:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040ce
	move.w #$60,d1
	bra.s loc_2040ce
loc_2040c0:
	cmpi.w #$a0,d1
	beq.s loc_2040ce
	bcc.s loc_2040cc
	addq.w #$2,d1
	bra.s loc_2040ce
loc_2040cc:
	subq.w #$2,d1
loc_2040ce:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_20407c
	bsr.w sub_203fec
	tst.w ($ff1588).l
	beq.s loc_2040f4
	btst.b #$4,($f605).w
	beq.s loc_2040f4
	move.b #$1,($ff1906).l
	rts
loc_2040f4:
	tst.b ($f7cc).w
	bne.s loc_204100
	move.w ($f604).w,($f602).w
loc_204100:
	btst.b #$0,$2c(a0)
	beq.s loc_204124
	cmpi.b #$6,($ff1506).l
	bne.s loc_20411e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_20413c
loc_20411e:
	bsr.w sub_204406
	bra.s loc_20413c
loc_204124:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204182(pc,d0.w),d1
	jsr dat_204182(pc,d1.w)
	jsr (sub_2066d6).l
loc_20413c:
	bsr.s sub_204190
	bsr.w sub_204250
	bsr.w sub_20426a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204164
	tst.b $1c(a0)
	bne.s loc_204164
	move.b $1d(a0),$1c(a0)
loc_204164:
	bsr.w sub_20560e
	tst.b $2c(a0)
	bmi.s loc_20417c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20417c
	jsr (sub_207166).l
loc_20417c:
	bsr.w sub_2054c4
	rts
dat_204182:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204190:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2041b4
	move.w $30(a0),d0
	beq.s loc_2041a6
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2041b4
loc_2041a6:
	btst.b #$6,$2c(a0)
	bne.s loc_2041b4
	jsr (sub_203a48).l
loc_2041b4:
	tst.b ($ff151f).l
	beq.s loc_2041f8
	tst.w $32(a0)
	beq.s loc_2041f8
	subq.w #$1,$32(a0)
	bne.s loc_2041f8
	tst.b ($ff1520).l
	bne.s loc_2041f0
	tst.b ($ff1958).l
	bne.s loc_2041f0
	tst.b ($ff152e).l
	bne.s loc_2041ea
	move.w #$e,d0
	jsr (sub_205c1e).l
loc_2041ea:
	jsr (sub_201a76).l
loc_2041f0:
	move.b #$0,($ff151f).l
loc_2041f8:
	tst.b ($ff1520).l
	beq.s loc_20424e
	tst.w $34(a0)
	beq.s loc_20424e
	subq.w #$1,$34(a0)
	bne.s loc_20424e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204246
	tst.b ($ff1958).l
	bne.s loc_204246
	tst.b ($ff152e).l
	bne.s loc_204240
	move.w #$e,d0
	jsr (sub_205c1e).l
loc_204240:
	jsr (sub_201a76).l
loc_204246:
	move.b #$0,($ff1520).l
loc_20424e:
	rts

sub_204250:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20426a:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204276
loc_204274:
	rts
loc_204276:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204288
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204274
loc_204288:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042cc
	bset.b #$6,$22(a0)
	bne.s loc_204274
	bsr.w sub_205f22
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204274
	bra.s loc_204304
loc_2042cc:
	tst.w $12(a0)
	beq.s loc_2042d4
	bpl.s loc_204274
loc_2042d4:
	bclr.b #$6,$22(a0)
	beq.s loc_204274
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204274
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204304
	move.w #$f000,$12(a0)
loc_204304:
	jsr (sub_2079e8).l
	bne.s loc_204318
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204318:
	rts

sub_20431a:
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
	bcs.s loc_2043f4
	move.l #$50000,d0
loc_2043f4:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204406:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20442c
	tst.b ($ff152e).l
	beq.s loc_204422
	cmpi.b #$2,($ff152e).l
	bne.s loc_20442c
loc_204422:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044dc
loc_20442c:
	tst.b $2a(a0)
	bne.w loc_2044ea
	tst.b ($f784).w
	beq.w loc_2044ea
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20444a
	neg.w d0
loc_20444a:
	tst.w ($f786).w
	bne.s loc_204456
	move.w #$1,($f786).w
loc_204456:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20446c
	move.b #$1,($ff1502).l
	bra.w loc_205c1a
loc_20446c:
	cmpi.w #$d2,d1
	bcs.s loc_2044c0
	cmpi.b #$2,($ff1522).l
	beq.s loc_2044be
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204496
	move.w #$82,d0
	jsr (sub_205c1e).l
	moveq #$0,d0
loc_204496:
	add.b ($f784).w,d0
	bpl.s loc_2044a0
	moveq #$0,d0
	bra.s loc_2044a8
loc_2044a0:
	cmpi.b #$3,d0
	bcs.s loc_2044a8
	moveq #$2,d0
loc_2044a8:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20431a
	move.b #$2,($ff1522).l
loc_2044be:
	rts
loc_2044c0:
	cmpi.w #$5a,d1
	bcc.s loc_2044d8
	cmp.w d2,d0
	bcc.w loc_203f52
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044d8:
	cmp.w d2,d0
	bcc.s loc_2044ea
loc_2044dc:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044ea:
	rts
	bsr.w sub_203e8c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20451c
	tst.b ($ff195b).l
	beq.s loc_20450a
	cmpi.b #$79,$1a(a0)
	bne.s loc_204546
	bra.s loc_204512
loc_20450a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204546
loc_204512:
	bsr.w sub_204dae
	jmp (sub_203990).l
loc_20451c:
	bsr.w sub_2045f4
	bsr.w sub_204406
	bsr.w sub_204e98
	bsr.w sub_204fc4
	bsr.w sub_204668
	bsr.w sub_204e1a
	bsr.w sub_204dae
	jsr (sub_2039f2).l
	bsr.w sub_200b86
	bsr.w sub_205042
loc_204546:
	rts
	tst.b ($f7c7).w
	bne.s loc_204562
	cmpi.b #$15,$1c(a0)
	beq.s loc_204562
	tst.w $12(a0)
	bmi.s loc_204562
	move.b #$0,$1c(a0)
loc_204562:
	bsr.w sub_2045f4
	bsr.w sub_204406
	bsr.w sub_204f82
	bsr.w sub_204cce
	bsr.w sub_204dae
	jsr (sub_203990).l
	btst.b #$6,$22(a0)
	beq.s loc_20458a
	subi.w #$28,$12(a0)
loc_20458a:
	bsr.w sub_20508c
	bsr.w sub_2050b0
	rts
	bsr.w sub_2045f4
	bsr.w sub_204406
	bsr.w sub_204e98
	bsr.w sub_205000
	bsr.w sub_204b08
	bsr.w sub_204dae
	tst.b $2a(a0)
	bne.s loc_2045b8
	jsr (sub_2039f2).l
loc_2045b8:
	bsr.w sub_200b86
	bsr.w sub_205042
	rts
	bsr.w sub_2045f4
	bsr.w sub_204406
	bsr.w sub_204f82
	bsr.w sub_204cce
	bsr.w sub_204dae
	jsr (sub_203990).l
	btst.b #$6,$22(a0)
	beq.s loc_2045ea
	subi.w #$28,$12(a0)
loc_2045ea:
	bsr.w sub_20508c
	bsr.w sub_2050b0
	rts

sub_2045f4:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204660
	tst.w ($ff1506).l
	bne.s loc_204660
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204662).l,a2
loc_204628:
	move.b (a2)+,d0
	bmi.s loc_204638
	cmp.b d0,d1
	bne.s loc_204628
	bset.b #$1,$2c(a0)
	rts
loc_204638:
	bclr.b #$1,$2c(a0)
	beq.s loc_204660
	tst.w $12(a0)
	bpl.s loc_204660
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204660
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204660
	neg.w $10(a0)
loc_204660:
	rts
dat_204662:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204668:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204992
	tst.w $3e(a0)
	bne.w loc_204942
	btst.b #$2,($f602).w
	beq.s loc_204690
	bsr.w sub_204a22
loc_204690:
	btst.b #$3,($f602).w
	beq.s loc_20469c
	bsr.w sub_204a98
loc_20469c:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204942
	tst.w $14(a0)
	beq.s loc_2046bc
	tst.b $2a(a0)
	beq.w loc_204942
	bra.s loc_2046c8
loc_2046bc:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046c8:
	btst.b #$3,$22(a0)
	beq.s loc_20471a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204772
	cmpi.b #$1e,$0(a1)
	bne.s loc_2046fa
	move.b #$0,$1c(a0)
	bra.w loc_204942
loc_2046fa:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204756
	cmp.w d2,d1
	bge.s loc_204744
	bra.s loc_204772
loc_20471a:
	jsr (sub_206eca).l
	cmpi.w #$c,d1
	blt.s loc_204772
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20474e
loc_204744:
	btst.b #$0,$22(a0)
	bne.s loc_20475e
	bra.s loc_204768
loc_20474e:
	cmpi.b #$3,$37(a0)
	bne.s loc_204772
loc_204756:
	btst.b #$0,$22(a0)
	bne.s loc_204768
loc_20475e:
	move.b #$32,$1c(a0)
	bra.w loc_204942
loc_204768:
	move.b #$6,$1c(a0)
	bra.w loc_204942
loc_204772:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204786
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204786:
	btst.b #$7,($f788).w
	bne.w loc_20488a
	btst.b #$6,($f788).w
	bne.w loc_2048aa
	btst.b #$1,($f602).w
	bne.w loc_2048aa
	andi.b #$f,($f788).w
	beq.s loc_2047be
	btst.b #$0,($f603).w
	beq.s loc_2047d2
	bset.b #$7,($f788).w
	bra.w loc_204966
loc_2047be:
	btst.b #$0,($f603).w
	beq.w loc_2047d2
	move.b #$1,($f788).w
	bra.w loc_204966
loc_2047d2:
	btst.b #$0,($f602).w
	beq.s loc_20484e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204830
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204802
	asr.w #$1,d2
	sub.w d2,d1
loc_204802:
	btst.b #$0,$22(a0)
	beq.s loc_20480e
	neg.w d0
	neg.w d1
loc_20480e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204824
	cmp.w d0,d1
	ble.s loc_20482a
	bra.s loc_204828
loc_204824:
	cmp.w d1,d0
	ble.s loc_20482a
loc_204828:
	move.w d1,d0
loc_20482a:
	move.w d0,$14(a0)
	rts
loc_204830:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20484a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202282).l
loc_20484a:
	bra.w loc_204966
loc_20484e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20486e
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2048aa
loc_20486e:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202282).l
	bra.w loc_204942
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20488a:
	btst.b #$0,($f602).w
	beq.s loc_2048aa
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204966
	addq.w #$2,($f73e).w
	bra.w loc_204966
loc_2048aa:
	btst.b #$6,($f788).w
	bne.w loc_204926
	andi.b #$f,($f788).w
	beq.s loc_2048ce
	btst.b #$1,($f603).w
	beq.s loc_2048e0
	bset.b #$6,($f788).w
	bra.w loc_204966
loc_2048ce:
	btst.b #$1,($f603).w
	beq.s loc_2048e0
	move.b #$1,($f788).w
	bra.w loc_204966
loc_2048e0:
	btst.b #$1,($f602).w
	beq.s loc_204942
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204924
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204924
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204916
	neg.w $14(a0)
loc_204916:
	move.w #$9c,d0
	jsr (sub_202282).l
	bsr.w sub_204e42
loc_204924:
	bra.s loc_204966
loc_204926:
	btst.b #$1,($f602).w
	beq.s loc_204942
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204966
	subq.w #$2,($f73e).w
	bra.s loc_204966
loc_204942:
	cmpi.w #$60,($f73e).w
	bne.s loc_20495c
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204966
	move.b #$0,($f788).w
	bra.s loc_204966
loc_20495c:
	bcc.s loc_204962
	addq.w #$4,($f73e).w
loc_204962:
	subq.w #$2,($f73e).w
loc_204966:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204992
	move.w $14(a0),d0
	beq.s loc_204992
	bmi.s loc_204986
	sub.w d5,d0
	bcc.s loc_204980
	move.w #$0,d0
loc_204980:
	move.w d0,$14(a0)
	bra.s loc_204992
loc_204986:
	add.w d5,d0
	bcc.s loc_20498e
	move.w #$0,d0
loc_20498e:
	move.w d0,$14(a0)
loc_204992:
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2049b0:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a20
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a20
	bmi.s loc_2049c8
	neg.w d1
loc_2049c8:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d8a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a20
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a1c
	cmpi.b #$40,d0
	beq.s loc_204a0a
	cmpi.b #$80,d0
	beq.s loc_204a04
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a04:
	sub.w d1,$12(a0)
	rts
loc_204a0a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a1c:
	add.w d1,$12(a0)
loc_204a20:
	rts

sub_204a22:
	tst.b $2a(a0)
	bne.s loc_204a96
	move.w $14(a0),d0
	beq.s loc_204a30
	bpl.s loc_204a60
loc_204a30:
	bset.b #$0,$22(a0)
	bne.s loc_204a44
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a44:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a54
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a54
	move.w d1,d0
loc_204a54:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a60:
	sub.w d4,d0
	bcc.s loc_204a68
	move.w #$ff80,d0
loc_204a68:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a96
	cmpi.w #$400,d0
	blt.s loc_204a96
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202282).l
loc_204a96:
	rts

sub_204a98:
	tst.b $2a(a0)
	bne.s loc_204b06
	move.w $14(a0),d0
	bmi.s loc_204ad0
	bclr.b #$0,$22(a0)
	beq.s loc_204ab8
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ab8:
	cmp.w d6,d0
	bge.s loc_204ac4
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ac4
	move.w d6,d0
loc_204ac4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ad0:
	add.w d4,d0
	bcc.s loc_204ad8
	move.w #$80,d0
loc_204ad8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b06
	cmpi.w #$fc00,d0
	bgt.s loc_204b06
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202282).l
loc_204b06:
	rts

sub_204b08:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204c52
	tst.w $3e(a0)
	bne.s loc_204b40
	btst.b #$2,($f602).w
	beq.s loc_204b34
	bsr.w sub_204c88
loc_204b34:
	btst.b #$3,($f602).w
	beq.s loc_204b40
	bsr.w sub_204cac
loc_204b40:
	tst.b $2a(a0)
	beq.w loc_204bea
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204b60
	asr.w #$1,d2
	sub.w d2,d1
loc_204b60:
	btst.b #$0,$22(a0)
	beq.s loc_204b6c
	neg.w d0
	neg.w d1
loc_204b6c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b82
	cmp.w d0,d1
	ble.s loc_204b88
	bra.s loc_204b86
loc_204b82:
	cmp.w d1,d0
	ble.s loc_204b88
loc_204b86:
	move.w d1,d0
loc_204b88:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204bbc
	rts
loc_204b96:
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204c1c
loc_204bbc:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204b96
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202282).l
	btst.b #$0,$22(a0)
	bne.s loc_204be2
	bsr.w sub_204cac
	bra.s loc_204bea
loc_204be2:
	bsr.w sub_204c88
	bra.s loc_204bea
	dc.b $4e,$75
loc_204bea:
	move.w $14(a0),d0
	beq.s loc_204c0c
	bmi.s loc_204c00
	sub.w d5,d0
	bcc.s loc_204bfa
	move.w #$0,d0
loc_204bfa:
	move.w d0,$14(a0)
	bra.s loc_204c0c
loc_204c00:
	add.w d5,d0
	bcc.s loc_204c08
	move.w #$0,d0
loc_204c08:
	move.w d0,$14(a0)
loc_204c0c:
	tst.w $14(a0)
	bne.s loc_204c52
	move.w #$ab,d0
	jsr (sub_202282).l
loc_204c1c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c3c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c4c
loc_204c3c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c4c:
	move.b #$5,$1c(a0)
loc_204c52:
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c76
	move.w #$1000,d1
loc_204c76:
	cmpi.w #$f000,d1
	bge.s loc_204c80
	move.w #$f000,d1
loc_204c80:
	move.w d1,$10(a0)
	bra.w loc_2049b0

sub_204c88:
	move.w $14(a0),d0
	beq.s loc_204c90
	bpl.s loc_204c9e
loc_204c90:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c9e:
	sub.w d4,d0
	bcc.s loc_204ca6
	move.w #$ff80,d0
loc_204ca6:
	move.w d0,$14(a0)
	rts

sub_204cac:
	move.w $14(a0),d0
	bmi.s loc_204cc0
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204cc0:
	add.w d4,d0
	bcc.s loc_204cc8
	move.w #$80,d0
loc_204cc8:
	move.w d0,$14(a0)
	rts

sub_204cce:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d08
	tst.w ($ff1506).l
	bne.s loc_204d08
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d00
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d00
	rts
loc_204d00:
	btst.b #$1,$2c(a0)
	bne.s loc_204d38
loc_204d08:
	btst.b #$2,($f602).w
	beq.s loc_204d22
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204d22
	move.w d1,d0
loc_204d22:
	btst.b #$3,($f602).w
	beq.s loc_204d38
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d38
	move.w d6,d0
loc_204d38:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204d4e
	bcc.s loc_204d4a
	addq.w #$4,($f73e).w
loc_204d4a:
	subq.w #$2,($f73e).w
loc_204d4e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204d7c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204d7c
	bmi.s loc_204d70
	sub.w d1,d0
	bcc.s loc_204d6a
	move.w #$0,d0
loc_204d6a:
	move.w d0,$10(a0)
	rts
loc_204d70:
	sub.w d1,d0
	bcs.s loc_204d78
	move.w #$0,d0
loc_204d78:
	move.w d0,$10(a0)
loc_204d7c:
	rts
	.incbin 19838, 48

sub_204dae:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e02
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ddc
	addi.w #$38,d0
loc_204ddc:
	cmp.w d1,d0
	bls.s loc_204e02
loc_204de0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204df0
	rts
loc_204df0:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207400
	move.b #$6,$24(a0)
	rts
loc_204e02:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204de0

sub_204e1a:
	tst.b ($f7ca).w
	bne.s loc_204e40
	move.w $14(a0),d0
	bpl.s loc_204e28
	neg.w d0
loc_204e28:
	cmpi.w #$80,d0
	bcs.s loc_204e40
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e40
	btst.b #$1,($f602).w
	bne.s sub_204e42
loc_204e40:
	rts

sub_204e42:
	btst.b #$2,$22(a0)
	beq.s loc_204e4c
	bra.s loc_204e7c
loc_204e4c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e6c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e7c
loc_204e6c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e7c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204e96
	cmpi.w #$200,$14(a0)
	bcc.s loc_204e96
	move.w #$200,$14(a0)
loc_204e96:
	rts

sub_204e98:
	tst.b $2a(a0)
	beq.s loc_204ea0
	rts
loc_204ea0:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204eb2
	tst.w $14(a0)
	beq.w loc_204f78
loc_204eb2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f78
	btst.b #$3,$22(a0)
	beq.s loc_204ece
	jsr (sub_205ba4).l
	beq.s loc_204efe
loc_204ece:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206df4
	cmpi.w #$6,d1
	blt.w loc_204f78
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204ef4
	move.w #$380,d2
loc_204ef4:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204efe:
	jsr (sub_200786).l
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
	jsr (sub_202282).l
	btst.b #$2,$22(a0)
	bne.s loc_204f7a
	tst.b ($ff195b).l
	beq.s loc_204f5c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f6c
loc_204f5c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f6c:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f78:
	rts
loc_204f7a:
	bset.b #$4,$22(a0)
	rts

sub_204f82:
	tst.b $3c(a0)
	beq.s loc_204fb4
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204f98
	move.w #$fe00,d1
loc_204f98:
	cmp.w $12(a0),d1
	ble.s loc_204fb2
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204fb2
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204fb2:
	rts
loc_204fb4:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204fc2
	move.w #$f040,$12(a0)
loc_204fc2:
	rts

sub_204fc4:
	tst.b $2a(a0)
	bne.s loc_204ffe
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204ffe
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204ffe
	bmi.s loc_204ffa
	tst.w d0
	beq.s loc_204ff8
	add.w d0,$14(a0)
loc_204ff8:
	rts
loc_204ffa:
	add.w d0,$14(a0)
loc_204ffe:
	rts

sub_205000:
	tst.b $2a(a0)
	bne.s loc_205040
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205040
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205036
	tst.w d0
	bpl.s loc_205030
	asr.l #$2,d0
loc_205030:
	add.w d0,$14(a0)
	rts
loc_205036:
	tst.w d0
	bmi.s loc_20503c
	asr.l #$2,d0
loc_20503c:
	add.w d0,$14(a0)
loc_205040:
	rts

sub_205042:
	nop
	tst.b $38(a0)
	bne.s loc_205084
	tst.w $3e(a0)
	bne.s loc_205086
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205084
	move.w $14(a0),d0
	bpl.s loc_205066
	neg.w d0
loc_205066:
	cmpi.w #$280,d0
	bcc.s loc_205084
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205084:
	rts
loc_205086:
	subq.w #$1,$3e(a0)
	rts

sub_20508c:
	btst.b #$1,$2c(a0)
	bne.s loc_2050ae
	move.b $26(a0),d0
	beq.s loc_2050ae
	bpl.s loc_2050a4
	addq.b #$2,d0
	bcc.s loc_2050a2
	moveq #$0,d0
loc_2050a2:
	bra.s loc_2050aa
loc_2050a4:
	subq.b #$2,d0
	bcc.s loc_2050aa
	moveq #$0,d0
loc_2050aa:
	move.b d0,$26(a0)
loc_2050ae:
	rts

sub_2050b0:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205194
	cmpi.b #$80,d0
	beq.w loc_2051f6
	cmpi.b #$c0,d0
	beq.w loc_205252
	bsr.w sub_20710a
	tst.w d1
	bpl.s loc_205102
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205102:
	bsr.w sub_206f6c
	tst.w d1
	bpl.s loc_205114
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205114:
	bsr.w sub_206e1c
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205192
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205132
	cmp.b d2,d0
	blt.s loc_205192
loc_205132:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052b4
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205170
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205162
	asr.w $12(a0)
	bra.s loc_205184
loc_205162:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205170:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205184
	move.w #$fc0,$12(a0)
loc_205184:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205192
	neg.w $14(a0)
loc_205192:
	rts
loc_205194:
	bsr.w sub_20710a
	tst.w d1
	bpl.s loc_2051ae
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2051ae:
	bsr.w sub_206fc4
	tst.w d1
	bpl.s loc_2051c8
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2051c6
	move.w #$0,$12(a0)
loc_2051c6:
	rts
loc_2051c8:
	tst.w $12(a0)
	bmi.s loc_2051f4
	bsr.w sub_206e1c
	tst.w d1
	bpl.s loc_2051f4
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052b4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051f4:
	rts
loc_2051f6:
	bsr.w sub_20710a
	tst.w d1
	bpl.s loc_205208
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205208:
	bsr.w sub_206f6c
	tst.w d1
	bpl.s loc_20521a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20521a:
	bsr.w sub_206fc4
	tst.w d1
	bpl.s loc_205250
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20523a
	move.w #$0,$12(a0)
	rts
loc_20523a:
	move.b d3,$26(a0)
	bsr.w sub_205326
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205250
	neg.w $14(a0)
loc_205250:
	rts
loc_205252:
	bsr.w sub_206f6c
	tst.w d1
	bpl.s loc_20526c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20526c:
	bsr.w sub_206fc4
	tst.w d1
	bpl.s loc_205286
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205284
	move.w #$0,$12(a0)
loc_205284:
	rts
loc_205286:
	tst.w $12(a0)
	bmi.s loc_2052b2
	bsr.w sub_206e1c
	tst.w d1
	bpl.s loc_2052b2
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052b4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052b2:
	rts

sub_2052b4:
	btst.b #$4,$22(a0)
	beq.s loc_2052be
	nop
loc_2052be:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205318
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2052f8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205308
loc_2052f8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205308:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202282).l
loc_205318:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205326:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21318, 382

sub_2054c4:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2054ec
	cmpi.b #$5,($ff1506).l
	beq.s loc_2054ec
	cmpi.b #$2,($ff1506).l
	beq.s loc_2054ec
	tst.b ($ff1506).l
	bne.w loc_2055ae
loc_2054ec:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20552a
	tst.b ($ff1506).l
	bne.w loc_2055b0
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2055b0
	bra.s loc_205532
loc_20552a:
	cmp.b ($f7af).w,d1
	beq.w loc_2055b0
loc_205532:
	cmp.b ($f7ac).w,d1
	beq.s loc_205562
	cmp.b ($f7ad).w,d1
	beq.s loc_205546
	bclr.b #$6,$1(a0)
	rts
loc_205546:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055c8
	btst.b #$1,$22(a0)
	beq.s loc_205562
	bclr.b #$6,$1(a0)
	rts
loc_205562:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205574
	bclr.b #$6,$1(a0)
	rts
loc_205574:
	cmpi.b #$e0,d2
	bcs.s loc_205582
	bset.b #$6,$1(a0)
	rts
loc_205582:
	btst.b #$6,$1(a0)
	bne.s loc_20559e
	move.b $26(a0),d1
	beq.s loc_2055ae
	cmpi.b #$80,d1
	bhi.s loc_2055ae
	bset.b #$6,$1(a0)
	rts
loc_20559e:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2055ae
	bclr.b #$6,$1(a0)
loc_2055ae:
	rts
loc_2055b0:
	btst.b #$2,$22(a0)
	bne.s loc_2055c2
	move.w #$9c,d0
	jsr (sub_202282).l
loc_2055c2:
	jmp (sub_204e42).l
loc_2055c8:
	tst.w $12(a0)
	bmi.s loc_20560c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205600
	cmpi.w #$38,d1
	bcs.s loc_2055f8
	cmpi.w #$80,d1
	bcs.s loc_20560c
loc_2055f0:
	bclr.b #$6,$1(a0)
	rts
loc_2055f8:
	bset.b #$6,$1(a0)
	rts
loc_205600:
	cmpi.w #$38,d1
	bcs.s loc_2055f0
	cmpi.w #$80,d1
	bcc.s loc_2055f8
loc_20560c:
	rts

sub_20560e:
	lea (dat_2058fe).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205630
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205630:
	bsr.w sub_2058a0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2056a8
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205676
	move.b d0,$1e(a0)

sub_20565a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20566e
	bpl.s loc_20566e
	cmpi.b #$fd,d0
	bge.s loc_205678
loc_20566e:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205676:
	rts
loc_205678:
	addq.b #$1,d0
	bne.s loc_205688
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20566e
loc_205688:
	addq.b #$1,d0
	bne.s loc_20569c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20566e
loc_20569c:
	addq.b #$1,d0
	bne.s loc_2056a6
	move.b $2(a1,d1.w),$1c(a0)
loc_2056a6:
	rts
loc_2056a8:
	subq.b #$1,$1e(a0)
	bpl.s loc_205676
	addq.b #$1,d0
	bne.w loc_205762
	tst.b ($ff195b).l
	bne.w loc_20582a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056d0
	not.b d0
loc_2056d0:
	btst.b #$1,$2c(a0)
	bne.s loc_2056de
	addi.b #$10,d0
	bra.s loc_2056e0
loc_2056de:
	addq.b #$8,d0
loc_2056e0:
	bpl.s loc_2056e4
	moveq #$3,d1
loc_2056e4:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057d6
	move.w $14(a0),d2
	bpl.s loc_205702
	neg.w d2
loc_205702:
	btst.b #$1,$2c(a0)
	beq.s loc_20571a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b00).l,a1
	bra.s loc_205744
loc_20571a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205ada).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205744
	lea (dat_20597e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205744
	lea (dat_205976).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205744:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205752
	moveq #$0,d2
loc_205752:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20565a
	add.b d3,$1a(a0)
	rts
loc_205762:
	addq.b #$1,d0
	bne.s loc_2057d2
	move.w $14(a0),d2
	bpl.s loc_20576e
	neg.w d2
loc_20576e:
	lea (dat_205a5c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057ac
	lea (dat_20598e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2057a0
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2057ac
	lea (dat_205b08).l,a1
	bra.s loc_2057ac
loc_2057a0:
	cmpi.w #$600,d2
	bcc.s loc_2057ac
	lea (dat_205986).l,a1
loc_2057ac:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2057b6
	moveq #$0,d2
loc_2057b6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20565a
loc_2057d2:
	addq.b #$1,d0
	bne.s loc_205816
loc_2057d6:
	move.w $14(a0),d2
	bmi.s loc_2057de
	neg.w d2
loc_2057de:
	addi.w #$800,d2
	bpl.s loc_2057e6
	moveq #$0,d2
loc_2057e6:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a6e).l,a1
	tst.b ($ff195b).l
	bne.s loc_205800
	lea (dat_205996).l,a1
loc_205800:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20565a
loc_205816:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20582a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20583c
	not.b d0
loc_20583c:
	addi.b #$10,d0
	bpl.s loc_205844
	moveq #$0,d1
loc_205844:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205872
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205762
loc_205872:
	move.w $14(a0),d2
	bpl.s loc_20587a
	neg.w d2
loc_20587a:
	lea (dat_205a56).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20588c
	lea (dat_205a50).l,a1
loc_20588c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205896
	moveq #$0,d2
loc_205896:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20565a

sub_2058a0:
	tst.b ($ff195b).l
	beq.s loc_2058ac
	move.b dat_2058ae(pc,d0.w),d0
loc_2058ac:
	rts
dat_2058ae:
	.incbin 22702, 80
dat_2058fe:
	.incbin 22782, 120
dat_205976:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20597e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205986:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20598e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205996:
	.incbin 22934, 186
dat_205a50:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a56:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a5c:
	.incbin 23132, 18
dat_205a6e:
	.incbin 23150, 108
dat_205ada:
	.incbin 23258, 38
dat_205b00:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b08:
	.incbin 23304, 56

sub_205b40:
	tst.b (a0)
	beq.w loc_205ba2
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205ba2
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205ba2
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b74:
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
loc_205b8e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b8e
	dbf d1,loc_205b74
loc_205ba2:
	rts

sub_205ba4:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c18
	move.w #$98,d0
	jsr (sub_202282).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a1e).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205c06
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c06:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c18:
	rts
loc_205c1a:
	move.w #$e,d0

sub_205c1e:
	cmpi.w #$67,d0
	bne.s loc_205c2c
	move.b #$1,($ff1958).l
loc_205c2c:
	move.w d0,($a12010).l
loc_205c32:
	move.w ($a12020).l,d0
	beq.s loc_205c32
	cmp.w ($a12020).l,d0
	bne.s loc_205c32
	move.w #$0,($a12010).l
loc_205c4a:
	move.w ($a12020).l,d0
	bne.s loc_205c4a
	move.w ($a12020).l,d0
	bne.s loc_205c4a
	rts
	dc.b $00,$00

sub_205c5e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c7a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c7a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205cba
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205cbc
loc_205c96:
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
loc_205cba:
	rts
loc_205cbc:
	addq.b #$1,d0
	bne.s loc_205ccc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205c96
loc_205ccc:
	addq.b #$1,d0
	bne.s loc_205ce0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205c96
loc_205ce0:
	addq.b #$1,d0
	bne.s loc_205cea
	move.b $2(a1,d1.w),$1c(a0)
loc_205cea:
	addq.b #$1,d0
	bne.s loc_205cf2
	addq.b #$2,$24(a0)
loc_205cf2:
	addq.b #$1,d0
	bne.s loc_205d00
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d00:
	addq.b #$1,d0
	bne.s loc_205d08
	addq.b #$2,$25(a0)
loc_205d08:
	rts
	.incbin 23818, 536

sub_205f22:
	rts
	.incbin 24356, 130

sub_205fa6:
	ori.b #$80,d1
	jsr (sub_2079e8).l
	bne.s loc_205fc8
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205fc8:
	rts
	.incbin 24522, 572

sub_206206:
	tst.w $12(a1)
	bpl.s loc_206248
	bsr.w sub_2062bc
	beq.s loc_206248
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_206246
	jsr (sub_2079e8).l
	bne.s loc_206246
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_202282).l
loc_206246:
	rts
loc_206248:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207de4).l
	.incbin 25174, 62
loc_206294:
	bsr.w sub_206206
	lea ($d040).w,a1
	bra.w sub_206206
	.incbin 25248, 28

sub_2062bc:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_2062f0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2062f0
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_2062f0
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2062f0
	moveq #$1,d0
	rts
loc_2062f0:
	moveq #$0,d0
	rts
	.incbin 25332, 478
loc_2064d2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206520
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206522(pc,d0.w),a1
loc_2064ec:
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2064f6:
	move.l (a1)+,(a2)+
	dbf d0,loc_2064f6
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206520:
	rts
dat_206522:
	.incbin 25890, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206558(pc,d0.w),d0
	jsr dat_206558(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206552
	jsr (sub_203a48).l
loc_206552:
	jmp (loc_207a1e).l
dat_206558:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23cffe,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20663a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20663a
	bsr.w sub_20669e
	beq.w loc_20663a
	tst.b $28(a0)
	bne.s loc_2065ec
	move.w $10(a1),d0
	bpl.s loc_2065ac
	neg.w d0
loc_2065ac:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2065be
	move.w #$d00,d1
loc_2065be:
	cmp.w d1,d0
	bcc.s loc_2065c4
	move.w d1,d0
loc_2065c4:
	tst.w $10(a1)
	bpl.s loc_2065cc
	neg.w d0
loc_2065cc:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20661c
	neg.w $14(a1)
	bra.s loc_20661c
loc_2065ec:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20663c
	move.w $12(a1),d0
	bpl.s loc_2065fc
	neg.w d0
loc_2065fc:
	cmpi.w #$d00,d0
	bcc.s loc_206606
	move.w #$d00,d0
loc_206606:
	tst.w $12(a1)
	bpl.s loc_20660e
	neg.w d0
loc_20660e:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20661c:
	bset.b #$2,$22(a1)
	bne.s loc_20663a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20663a:
	rts
loc_20663c:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206688
	cmpi.b #$2,$28(a0)
	bne.s loc_206658
	tst.w $12(a1)
	bpl.s loc_20661c
	bra.s loc_20665e
loc_206658:
	tst.w $12(a1)
	bmi.s loc_20661c
loc_20665e:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206670
	btst.l #$2,d1
	beq.s loc_20661c
	neg.w d0
loc_206670:
	cmpi.b #$2,$28(a0)
	beq.s loc_20667e
	bset.b #$1,$22(a1)
loc_20667e:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20661c
loc_206688:
	tst.w $10(a1)
	bmi.s loc_20661c
	btst.l #$0,d1
	beq.w loc_20661c
	move.w #$f600,d0
	bra.w loc_20660e

sub_20669e:
	tst.b ($ff1906).l
	bne.s loc_2066d2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066d2
	cmpi.w #$50,d0
	bcc.s loc_2066d2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066d2
	cmpi.w #$50,d0
	bcc.s loc_2066d2
	moveq #$1,d0
	rts
loc_2066d2:
	moveq #$0,d0
	rts

sub_2066d6:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066e0
	bsr.s sub_2066e2
loc_2066e0:
	rts

sub_2066e2:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067c6
	cmpi.b #$80,d0
	beq.w loc_20674c
	cmpi.b #$c0,d0
	beq.w loc_206788
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206804
	bne.s loc_20674a
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206804
loc_20674a:
	rts
loc_20674c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206804
	bne.s loc_206786
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206804
loc_206786:
	rts
loc_206788:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206804
	bne.s loc_2067c4
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206804
loc_2067c4:
	rts
loc_2067c6:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206804
	bne.s loc_206802
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206804
loc_206802:
	rts

sub_206804:
	jsr (sub_200ef4).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206848
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_20682c
	add.b ($ff156a).l,d1
loc_20682c:
	add.w d1,d1
	move.w dat_20684c(pc,d1.w),d1
	lea dat_20684c(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_20683c:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068c0
	addq.w #$2,d1
	dbf d6,loc_20683c
loc_206848:
	moveq #$0,d0
	rts
dat_20684c:
	.incbin 26700, 116
loc_2068c0:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068d2
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068d2:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_206916(pc,d1.w),d0
	jsr dat_206916(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_206906
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_206900
	cmpi.b #$6,d1
	beq.s loc_206900
	move.w #$b5,d0
loc_206900:
	jsr (sub_202282).l
loc_206906:
	tst.b ($ff1950).l
	beq.s loc_206912
	moveq #$0,d0
	rts
loc_206912:
	moveq #$1,d0
	rts
dat_206916:
	.incbin 26902, 266
loc_206a20:
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	rts
loc_206a38:
	move.w #$700,d0
	tst.w $12(a0)
	bmi.s loc_206a44
	neg.w d0
loc_206a44:
	move.w d0,$12(a0)
	bra.s loc_206a20
loc_206a4a:
	move.w #$700,d0
	tst.w $10(a0)
	bmi.s loc_206a56
	neg.w d0
loc_206a56:
	move.w d0,$10(a0)
	bra.s loc_206a20
	.incbin 27228, 84
loc_206ab0:
	subi.w #$12,d1
	bmi.s loc_206ae2
	move.w dat_206b22(pc,d1.w),d0
	lea dat_206b22(pc,d0.w),a1
	andi.w #$f,d2
	andi.w #$f,d3
	btst.l #$b,d4
	bne.s loc_206ad2
	neg.b d3
	addi.b #$f,d3
loc_206ad2:
	cmp.b $0(a1,d3.w),d2
	bcc.s loc_206ae2
	move.b #$1,($ff1950).l
	rts
loc_206ae2:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	addi.b #$80,d0
	neg.b d0
	subi.b #$20,d0
	btst.l #$b,d4
	beq.s loc_206b04
	addi.b #$40,d0
loc_206b04:
	jsr (sub_200786).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bra.w loc_206a20
dat_206b22:
	.incbin 27426, 54
	move.w d3,d1
	andi.w #$f,d1
	cmpi.b #$8,d1
	bcc.s loc_206b70
	btst.l #$b,d4
	bne.w loc_206a4a
	bra.w loc_206ab0
loc_206b70:
	btst.l #$b,d4
	bne.w loc_206a38
	bra.w loc_206ab0
	.incbin 27516, 72
loc_206bc4:
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
	bne.s loc_206c7e
	move.b ($ff1593).l,($ff195b).l
loc_206c7e:
	tst.b ($ff1522).l
	bpl.s loc_206c94
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c94:
	rts

sub_206c96:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206bc4
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
	bne.s loc_206d50
	move.b ($ff1591).l,($ff195b).l
loc_206d50:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d72
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d72:
	tst.b ($ff1522).l
	bpl.s loc_206d88
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d88:
	rts

sub_206d8a:
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
	bpl.s loc_206dc6
	move.b d1,d0
	bpl.s loc_206dc0
	subq.b #$1,d0
loc_206dc0:
	addi.b #$20,d0
	bra.s loc_206dd0
loc_206dc6:
	move.b d1,d0
	bpl.s loc_206dcc
	addq.b #$1,d0
loc_206dcc:
	addi.b #$1f,d0
loc_206dd0:
	andi.b #$c0,d0
	beq.w loc_206ea0
	cmpi.b #$80,d0
	beq.w loc_20703c
	andi.b #$38,d1
	bne.s loc_206de8
	addq.w #$8,d2
loc_206de8:
	cmpi.b #$40,d0
	beq.w loc_207112
	bra.w loc_206f74

sub_206df4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_20709a
	cmpi.b #$80,d0
	beq.w sub_206fc4
	cmpi.b #$c0,d0
	beq.w loc_206f04

sub_206e1c:
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
	jsr (sub_2010dc).l
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
	jsr (sub_2010dc).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206e80:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e8e
	move.b ($f768).w,d3
	exg d0,d1
loc_206e8e:
	btst.l #$0,d3
	beq.s loc_206e96
	move.b d2,d3
loc_206e96:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206ea0:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010dc).l
	move.b #$0,d2
loc_206ebc:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ec8
	move.b d2,d3
loc_206ec8:
	rts

sub_206eca:
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
	jsr (sub_2010dc).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f02
	move.b #$0,d3
loc_206f02:
	rts
loc_206f04:
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
	jsr (sub_20124c).l
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
	jsr (sub_20124c).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206e80

sub_206f6c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f74:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b #$c0,d2
	bra.w loc_206ebc

sub_206f94:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206fc2
	move.b #$c0,d3
loc_206fc2:
	rts

sub_206fc4:
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
	jsr (sub_2010dc).l
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
	jsr (sub_2010dc).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206e80

sub_207034:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20703c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010dc).l
	move.b #$80,d2
	bra.w loc_206ebc

sub_207060:
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
	jsr (sub_2010dc).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_207098
	move.b #$80,d3
loc_207098:
	rts
loc_20709a:
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
	jsr (sub_20124c).l
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
	jsr (sub_20124c).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206e80

sub_20710a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207112:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b #$40,d2
	bra.w loc_206ebc

sub_207136:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_207164
	move.b #$40,d3
loc_207164:
	rts

sub_207166:
	btst.b #$6,$2c(a0)
	bne.s loc_2071b4
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207192
	addi.w #$c,d3
	moveq #$a,d5
loc_207192:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2071a0:
	tst.b $1(a1)
	bpl.s loc_2071ac
	move.b $20(a1),d0
	bne.s loc_2071b8
loc_2071ac:
	lea $40(a1),a1
	dbf d6,loc_2071a0
loc_2071b4:
	moveq #$0,d0
	rts
loc_2071b8:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20753e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071e0
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071e6
	bra.w loc_2071ac
loc_2071e0:
	cmp.w d4,d0
	bhi.w loc_2071ac
loc_2071e6:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2071fe
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207204
	bra.w loc_2071ac
loc_2071fe:
	cmp.w d5,d0
	bhi.w loc_2071ac
loc_207204:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207278
	cmpi.b #$c0,d1
	beq.w loc_207458
	tst.b d1
	bmi.w sub_207342
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20723c
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20723a
	addq.b #$2,$24(a1)
loc_20723a:
	rts
loc_20723c:
	tst.w $12(a0)
	bpl.s loc_207266
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207276
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207276
	addq.b #$4,$25(a1)
	rts
loc_207266:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207276
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207276:
	rts

sub_207278:
	tst.b ($ff1521).l
	bne.s loc_207292
	tst.b ($ff151f).l
	bne.s loc_207292
	cmpi.b #$2,$1c(a0)
	bne.w sub_207342
loc_207292:
	tst.b $21(a1)
	beq.s loc_2072bc
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2072ba
	bset.b #$7,$22(a1)
loc_2072ba:
	rts
loc_2072bc:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072d4
	moveq #$6,d0
loc_2072d4:
	move.w d0,$3e(a1)
	move.w dat_207334(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072ee
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072ee:
	bsr.w sub_2099a4
	move.w #$96,d0
	jsr (sub_202282).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207324
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20732c
	neg.w $12(a0)
	rts
loc_207324:
	addi.w #$100,$12(a0)
	rts
loc_20732c:
	subi.w #$100,$12(a0)
	rts
dat_207334:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207342:
	tst.b ($ff1521).l
	bne.s loc_207352
	tst.b ($ff151f).l
	beq.s loc_207356
loc_207352:
	moveq #$ffffffff,d0
	rts
loc_207356:
	nop
	tst.w $30(a0)
	bne.s loc_207352
	movea.l a1,a2

sub_207360:
	tst.b ($ff151e).l
	bne.s loc_20738c
	tst.w ($ff1512).l
	beq.w loc_2073f6
	jsr (sub_2079e8).l
	bne.s loc_20738c
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20738c:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2073a2
	move.b #$0,($ff156f).l
loc_2073a2:
	move.b #$4,$24(a0)
	bsr.w sub_2052b4
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073d2
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073d2:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073e0
	neg.w $10(a0)
loc_2073e0:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2073f6:
	tst.w ($ff1588).l
	bne.w loc_20738c

sub_207400:
	tst.w ($ff1906).l
	bne.s loc_207454
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2052b4
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202282).l
loc_207454:
	moveq #$ffffffff,d0
	rts
loc_207458:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074e8
	cmpi.b #$1f,d1
	beq.w loc_2074e8
	cmpi.b #$23,d1
	beq.w loc_2074e8
	cmpi.b #$27,d1
	beq.w loc_2074e8
	cmpi.b #$3a,d1
	beq.w loc_207530
	cmpi.b #$3b,d1
	beq.w loc_207530
	tst.b ($f7aa).w
	beq.w loc_2074e6
	cmpi.b #$1,($f7aa).w
	beq.s loc_2074b0
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074d2
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074e0
loc_2074b0:
	cmpi.b #$3c,d1
	blt.s loc_2074e6
	cmpi.b #$3f,d1
	bgt.s loc_2074e6
	bsr.w sub_207278
	tst.b $20(a1)
	bne.s loc_2074ca
	addq.b #$3,$21(a1)
loc_2074ca:
	clr.b $20(a1)
	bra.w loc_2074e8
loc_2074d2:
	cmpi.b #$3f,d1
	beq.s loc_2074f4
	cmpi.b #$3e,d1
	beq.s loc_2074ee
	bra.s loc_2074e6
loc_2074e0:
	cmpi.b #$3d,d1
	beq.s loc_2074ee
loc_2074e6:
	rts
loc_2074e8:
	addq.b #$1,$21(a1)
	rts
loc_2074ee:
	bsr.w sub_207342
	bra.s loc_2074e8
loc_2074f4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20752e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20752e
	neg.w $10(a0)
loc_20752e:
	rts
loc_207530:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20753c
	addq.b #$1,$21(a1)
loc_20753c:
	rts
dat_20753e:
	.incbin 30014, 126
loc_2075bc:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075d2
	move.l #$4000,(dat_20774c).l
	bra.s loc_2075f2
loc_2075d2:
	addi.l #$2000,(dat_20774c).l
	cmpi.l #$80000,(dat_20774c).l
	bls.s loc_2075f2
	move.l #$80000,(dat_20774c).l
loc_2075f2:
	move.l (dat_20774c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207604
	sub.l d0,$c(a0)
loc_207604:
	btst.b #$1,($f604).w
	beq.s loc_207610
	add.l d0,$c(a0)
loc_207610:
	btst.b #$2,($f604).w
	beq.s loc_20761c
	sub.l d0,$8(a0)
loc_20761c:
	btst.b #$3,($f604).w
	beq.s loc_207628
	add.l d0,$8(a0)
loc_207628:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ef4).l
	move.w (a1),($ff194e).l
	lea (dat_207750).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20766a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207664
	move.b #$0,d1
loc_207664:
	move.b d1,($ff1904).l
loc_20766a:
	btst.b #$7,($f605).w
	beq.s loc_20768a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207684
	add.b (a2),d1
loc_207684:
	move.b d1,($ff1904).l
loc_20768a:
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
	beq.s loc_207716
	bsr.w sub_2079e8
	bne.s loc_207716
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
loc_207716:
	btst.b #$4,($f605).w
	beq.s loc_207746
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207746:
	jmp (sub_203a48).l
dat_20774c:
	dc.b $00,$00,$40,$00
dat_207750:
	.incbin 30544, 134

sub_2077d6:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2077e4:
	clr.l (a2)+
	dbf d0,loc_2077e4
	rts

sub_2077ec:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2077fa(pc,d0.w),d0
	jmp dat_2077fa(pc,d0.w)
dat_2077fa:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a9a).l,a0
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
	bcc.s loc_207838
	moveq #$0,d6
loc_207838:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207840:
	cmp.w (a0),d6
	bls.s loc_207852
	tst.b $4(a0)
	bpl.s loc_20784e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20784e:
	addq.w #$8,a0
	bra.s loc_207840
loc_207852:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207872
loc_207860:
	cmp.w (a0),d6
	bls.s loc_207872
	tst.b $4(a0)
	bpl.s loc_20786e
	addq.b #$1,$1(a2)
loc_20786e:
	addq.w #$8,a0
	bra.s loc_207860
loc_207872:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20795c
	bge.s loc_207902
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2078de
loc_2078ac:
	cmp.w -$8(a0),d6
	bge.s loc_2078de
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2078c2
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2078c2:
	bsr.w sub_207980
	bne.s loc_2078cc
	subq.w #$8,a0
	bra.s loc_2078ac
loc_2078cc:
	tst.b $4(a0)
	bpl.s loc_2078dc
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078dc:
	addq.w #$8,a0
loc_2078de:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2078ea:
	cmp.w -$8(a0),d6
	bgt.s loc_2078fc
	tst.b -$4(a0)
	bpl.s loc_2078f8
	subq.b #$1,(a2)
loc_2078f8:
	subq.w #$8,a0
	bra.s loc_2078ea
loc_2078fc:
	move.l a0,($f770).w
	rts
loc_207902:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207916:
	cmp.w (a0),d6
	bls.s loc_207938
	tst.b $4(a0)
	bpl.s loc_207924
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207924:
	bsr.w sub_207980
	beq.s loc_207916
	tst.b $4(a0)
	bpl.s loc_207938
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207938:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207958
loc_207946:
	cmp.w (a0),d6
	bls.s loc_207958
	tst.b $4(a0)
	bpl.s loc_207954
	addq.b #$1,$1(a2)
loc_207954:
	addq.w #$8,a0
	bra.s loc_207946
loc_207958:
	move.l a0,($f774).w
loc_20795c:
	rts

sub_20795e:
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

sub_207980:
	bsr.s sub_20795e
	beq.s loc_207992
	tst.b $4(a0)
	bpl.s loc_207998
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207998
loc_207992:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207998:
	bsr.w sub_2079e8
	bne.s loc_2079e6
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
	bpl.s loc_2079c8
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2079c8:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2079da
	nop
	nop
	nop
	nop
loc_2079da:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2079e6:
	rts

sub_2079e8:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2079f0:
	tst.b (a1)
	beq.s loc_2079fc
	lea $40(a1),a1
	dbf d0,loc_2079f0
loc_2079fc:
	rts

sub_2079fe:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207a1c
loc_207a10:
	tst.b (a1)
	beq.s loc_207a1c
	lea $40(a1),a1
	dbf d0,loc_207a10
loc_207a1c:
	rts
loc_207a1e:
	move.w $8(a0),d0
loc_207a22:
	tst.b $1(a0)
	bmi.s loc_207a8c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207a8c
loc_207a40:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207a82
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207a7a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207a72
	moveq #$0,d1
	bra.s loc_207a7a
loc_207a72:
	cmpi.w #$3,d1
	bcs.s loc_207a7a
	moveq #$2,d1
loc_207a7a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207a82:
	jsr (sub_203af4).l
	moveq #$1,d0
	rts
loc_207a8c:
	btst.b #$7,($ff152e).l
	bne.s loc_207a40
	moveq #$0,d0
	rts
dat_207a9a:
	.incbin 31386, 514

sub_207c9c:
	btst.b #$3,$22(a0)
	beq.s loc_207d0c
	btst.b #$3,$22(a1)
	beq.s loc_207d0c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207d0c
	tst.b $2a(a1)
	beq.s loc_207cce
	move.w #$ab,d0
	jsr (sub_202282).l
loc_207cce:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207cfa
	cmpi.b #$17,$1c(a1)
	beq.s loc_207cfa
	bclr.b #$0,$2c(a1)
loc_207cfa:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d0c
	bclr.b #$1,$22(a1)
loc_207d0c:
	rts

sub_207d0e:
	cmpi.b #$4,$24(a1)
	bne.s loc_207d20
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207d20:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207d80
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d42
	bclr.b #$3,$22(a0)
	bra.w sub_207c9c
loc_207d42:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207d80
	tst.b ($ff195b).l
	beq.s loc_207d6a
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207d7a
loc_207d6a:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207d7a:
	move.b #$0,$1c(a1)
loc_207d80:
	bset.b #$3,$22(a1)
	beq.s loc_207da2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207dda
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207da2:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207dce
	cmpi.b #$2,$24(a0)
	beq.s loc_207dd4
loc_207dce:
	move.w $10(a1),$14(a1)
loc_207dd4:
	bclr.b #$1,$22(a1)
loc_207dda:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207de4:
	move.b #$1,$25(a0)

sub_207dea:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20809e
	btst.b #$6,$2c(a1)
	bne.w loc_20809e
	cmpi.b #$6,$24(a1)
	bcc.w loc_20809e
	tst.b $0(a1)
	beq.w loc_20809e
	tst.b $1(a0)
	bpl.w loc_20809e
	tst.b ($ff1906).l
	bne.w loc_20809e
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20809e
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20809e
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207e58
	btst.b #$3,$22(a0)
	bne.s loc_207e6a
	bra.w loc_20809e
loc_207e58:
	cmpi.b #$1,$25(a0)
	bne.s loc_207e6a
	tst.w $12(a1)
	beq.s loc_207e6a
	bmi.w loc_20809e
loc_207e6a:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20809e
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20809e
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207ea0
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207ea0:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207eae
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207eae:
	cmp.w d4,d5
	bcs.w loc_207f42
	cmpi.b #$1,$25(a0)
	beq.w loc_20809e
	cmpi.b #$a,$0(a0)
	bne.s loc_207ed0
	btst.b #$1,$22(a1)
	bne.w loc_20809e
loc_207ed0:
	cmpi.b #$4,d5
	bls.w loc_20809e
	bsr.w sub_2080ee
	move.l d0,-(a7)
	bsr.w sub_207c9c
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207efa
	tst.w $10(a1)
	beq.s loc_207f2a
	bpl.s loc_207f02
	bra.s loc_207f2a
loc_207efa:
	tst.w $10(a1)
	beq.s loc_207f2a
	bpl.s loc_207f2a
loc_207f02:
	bsr.w sub_2080ae
	btst.b #$1,$22(a1)
	bne.s loc_207f20
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207f20:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207f2a:
	bsr.w sub_208164
	bsr.w sub_2080ae
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207f42:
	cmpi.b #$19,$0(a0)
	bne.s loc_207f54
	btst.b #$2,$22(a1)
	bne.w loc_20809e
loc_207f54:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207f6a
	bmi.w loc_20803a
loc_207f6a:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207f7c
	tst.w $12(a1)
	beq.s loc_207f7c
	bmi.w loc_20809e
loc_207f7c:
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
	beq.s loc_207fc8
	bpl.s loc_207fa8
	neg.b d0
loc_207fa8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d8a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207fc8
	tst.w $10(a0)
	bpl.s loc_207fc4
	neg.w d1
loc_207fc4:
	add.w d1,$8(a1)
loc_207fc8:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208032
	tst.w $12(a0)
	bmi.s loc_208006
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e1c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208006
	add.w d1,$c(a1)
	bra.w loc_20809e
loc_208006:
	tst.w $12(a0)
	bpl.s loc_208032
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207034).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208032
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207400).l
	movem.l (a7)+,a0-a1
	bra.s loc_20809e
loc_208032:
	bsr.w sub_207d0e
	moveq #$1,d0
	rts
loc_20803a:
	cmpi.b #$1,$25(a0)
	beq.s loc_20809e
	cmpi.b #$9,$0(a0)
	beq.s loc_20809e
	cmpi.b #$a,$0(a0)
	bne.s loc_208064
	cmpi.b #$2,$25(a0)
	beq.s loc_208084
	btst.b #$1,$1(a0)
	bne.s loc_208084
	bra.s loc_20809e
loc_208064:
	btst.b #$1,$22(a1)
	bne.s loc_208084
	tst.w $12(a0)
	beq.s loc_208084
	bmi.s loc_208084
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207400).l
	movem.l (a7)+,a0-a1
loc_208084:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208164
	bsr.w sub_207c9c
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20809e:
	bsr.w sub_208164
	bsr.w sub_207c9c
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2080ae:
	tst.w $10(a0)
	beq.s loc_2080ec
	cmpi.b #$a,$0(a0)
	beq.s loc_2080ec
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2080c8
	neg.b d0
loc_2080c8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d8a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2080ec
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207400).l
	movem.l (a7)+,a0-a1
loc_2080ec:
	rts

sub_2080ee:
	cmpi.b #$a,$0(a0)
	bne.s loc_2080fe
	move.b #$0,$20(a1)
	rts
loc_2080fe:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208152
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208162
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208120
	tst.w $10(a2)
	beq.s loc_208162
loc_208120:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208132
	cmp.w $8(a2),d1
	bcs.s loc_208162
	bra.s loc_208138
loc_208132:
	cmp.w $8(a2),d1
	bcc.s loc_208162
loc_208138:
	cmpi.b #$15,$0(a0)
	beq.s loc_208162
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207400).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208152:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208162:
	rts

sub_208164:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20817e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20817e
	move.b #$0,$20(a1)
loc_20817e:
	rts
	.incbin 33152, 374
loc_2082f6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208304(pc,d0.w),d0
	jmp dat_208304(pc,d0.w)
dat_208304:
	.incbin 33540, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2082f6
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20835a
	tst.b $1(a0)
	bpl.s loc_208362
loc_20835a:
	move.w dat_2083b4(pc,d0.w),d1
	jsr dat_2083b4(pc,d1.w)
loc_208362:
	bsr.w sub_203a48
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208394
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208394:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203af4
	rts
dat_2083b4:
	.incbin 33716, 26
	addq.b #$2,$24(a0)
	move.l #$208736,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208424
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20873c,$4(a0)
	bra.s loc_208466
loc_208424:
	btst.l #$3,d0
	beq.s loc_208452
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208786,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20b322).l
	move.l (a7)+,d0
	bra.s loc_208466
loc_208452:
	btst.b #$1,$1(a0)
	beq.s loc_208466
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208466:
	btst.l #$1,d0
	beq.s loc_208472
	bset.b #$5,$2(a0)
loc_208472:
	andi.w #$2,d0
	move.w dat_20847e(pc,d0.w),$30(a0)
	rts
dat_20847e:
	.incbin 33918, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208822(pc,d0.w),d1
	jmp dat_208822(pc,d1.w)
dat_208822:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20882c:
	.incbin 34860, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208884
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20887c
	moveq #$0,d1
	bra.s loc_208884
loc_20887c:
	cmpi.w #$3,d1
	bcs.s loc_208884
	moveq #$2,d1
loc_208884:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2088a0
	moveq #$6,d1
loc_2088a0:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20882c).l,a1
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
	beq.s loc_2088f0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088e8
	moveq #$0,d0
	bra.s loc_2088f0
loc_2088e8:
	cmpi.w #$3,d0
	bcs.s loc_2088f0
	moveq #$2,d0
loc_2088f0:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2089be
	dbf d0,loc_2088f0
	bclr.b #$7,(a2)
	bra.s loc_208946
loc_208902:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20892e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208926
	moveq #$0,d0
	bra.s loc_20892e
loc_208926:
	cmpi.w #$3,d0
	bcs.s loc_20892e
	moveq #$2,d0
loc_20892e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2089be
	dbf d0,loc_20892e
	bclr.b #$7,(a2)
	bsr.w sub_2079fe
	bne.w loc_2089ca
loc_208946:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208c90,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20899c
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20899c
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20899c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2089be:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_208902
loc_2089ca:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2089f0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2089e8
	moveq #$0,d0
	bra.s loc_2089f0
loc_2089e8:
	cmpi.w #$3,d0
	bcs.s loc_2089f0
	moveq #$2,d0
loc_2089f0:
	lea $1(a2),a3
loc_2089f4:
	btst.b #$0,-(a3)
	bne.w sub_203af4
	dbf d0,loc_2089f4
	tst.b $1(a0)
	bmi.s loc_208a24
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208a9e
loc_208a24:
	tst.w ($ff190e).l
	bne.s loc_208a34
	move.b ($ff1913).l,$1a(a0)
loc_208a34:
	bra.w sub_203a48
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208aa2
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208a84
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208a7c
	moveq #$0,d1
	bra.s loc_208a84
loc_208a7c:
	cmpi.w #$3,d1
	bcs.s loc_208a84
	moveq #$2,d1
loc_208a84:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208c88).l,a1
	bsr.w sub_205c5e
	bra.w sub_203a48
loc_208a9e:
	bra.w sub_203af4

sub_208aa2:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208af2
	bset.b #$1,($ff150d).l
	beq.s loc_208adc
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208af2
	bset.b #$2,($ff150d).l
	bne.s loc_208af2
loc_208adc:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c1e).l
loc_208af2:
	jmp (sub_202282).l
	.incbin 35576, 362
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208aa2
	lea (dat_208c88).l,a1
	bsr.w sub_205c5e
	bra.w sub_203a48
	dc.b $60,$00,$ae,$6e
dat_208c88:
	.incbin 35976, 852
loc_208fdc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20900a(pc,d0.w),d0
	jsr dat_20900a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209008
	cmpi.w #$5a,($f786).w
	bcs.s loc_209002
	btst.b #$0,($ff1505).l
	bne.s loc_209008
loc_209002:
	jmp (sub_203a48).l
loc_209008:
	rts
dat_20900a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$2095e4,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20903e
	move.b #$13,$1a(a0)
loc_20903e:
	rts
loc_209040:
	tst.b ($ff0f01).l
	beq.s loc_20904e
	jmp (sub_203af4).l
loc_20904e:
	cmpi.b #$a,$28(a0)
	beq.w loc_208fdc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209072(pc,d0.w),d0
	jsr dat_209072(pc,d0.w)
	jsr (sub_203a48).l
	jmp (loc_207a1e).l
dat_209072:
	.incbin 36978, 282

sub_20918c:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2091c4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2091bc
	moveq #$0,d1
	bra.s loc_2091c4
loc_2091bc:
	cmpi.w #$3,d1
	bcs.s loc_2091c4
	moveq #$2,d1
loc_2091c4:
	add.w d1,d0
	rts

sub_2091c8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2091ea
	tst.b ($ff1956).l
	beq.s loc_2091e2
	tst.b $29(a0)
	bne.s loc_2091ea
	rts
loc_2091e2:
	tst.b $29(a0)
	beq.s loc_2091ea
	rts
loc_2091ea:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207dea).l
	tst.b $28(a0)
	bne.s loc_20920c
	tst.b ($ff0f01).l
	beq.s loc_20920c
	jmp (loc_207a1e).l
loc_20920c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209040
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209224(pc,d0.w),d1
	jmp dat_209224(pc,d1.w)
dat_209224:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2095e4,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20926e
	tst.b $29(a0)
	bne.s loc_20926e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20926e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20918c
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20929a
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20929a:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_2092f4
	move.b $25(a0),d0
	beq.s loc_2092d4
	bsr.w sub_203990
	jsr (sub_206eca).l
	tst.w d1
	bpl.w loc_2092e2
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_2092e2
loc_2092d4:
	tst.b $1(a0)
	bpl.s loc_2092e2
	lea ($d000).w,a1
	bsr.w sub_2091c8
loc_2092e2:
	tst.w ($ff190e).l
	bne.s loc_2092f4
	lea (dat_20955c).l,a1
	bsr.w sub_205c5e
loc_2092f4:
	bsr.w sub_203a48
	jmp (loc_207a1e).l
	.incbin 37630, 606
dat_20955c:
	.incbin 38236, 586
loc_2097a6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2097ba(pc,d0.w),d0
	jsr dat_2097ba(pc,d0.w)
	jmp (sub_203a48).l
dat_2097ba:
	.incbin 38842, 146
	tst.b $28(a0)
	bmi.w loc_2097a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209862(pc,d0.w),d0
	jmp dat_209862(pc,d0.w)
dat_209862:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2098fc,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_209892
	move.b #$3,$1a(a0)
	bra.s loc_2098b2
loc_209892:
	tst.w ($ff1588).l
	beq.s loc_2098a0
	move.b #$2,$1a(a0)
loc_2098a0:
	tst.b $28(a0)
	beq.s loc_2098b2
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2098b2:
	tst.b $28(a0)
	bne.s loc_2098f6
	tst.b $29(a0)
	beq.s loc_2098e2
	tst.w ($ff1512).l
	beq.s loc_2098ce
	bclr.b #$5,$2(a0)
	bra.s loc_2098f6
loc_2098ce:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2098f6
	eori.b #$20,$2(a0)
	bra.s loc_2098f6
loc_2098e2:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2098f6
	move.b #$2,$1a(a0)
loc_2098f6:
	jmp (sub_203a48).l
	.incbin 39164, 168

sub_2099a4:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2099c0
	move.l d1,(a3)
loc_2099c0:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2099ea
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c1e).l
loc_2099ea:
	rts
loc_2099ec:
	tst.w ($ff1588).l
	beq.s loc_209a42
	bsr.w sub_209c3e
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
	lea (dat_209d9e).l,a2
	moveq #$2,d6
	bsr.w sub_209df6
	bra.w loc_209a9c
loc_209a42:
	tst.b ($ff1511).l
	beq.s loc_209a66
	bpl.s loc_209a50
	bsr.w sub_209be8
loc_209a50:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209cd8
loc_209a66:
	tst.b ($ff150f).l
	beq.s loc_209a9c
	bpl.s loc_209a74
	bsr.w sub_209bd4
loc_209a74:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209a98
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209a98:
	bsr.w sub_209cce
loc_209a9c:
	tst.w ($ff1588).l
	bne.w loc_209b48
	tst.b ($ff1510).l
	beq.w loc_209b48
	tst.w ($f63a).w
	bne.w loc_209b48
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209ba6
	tst.b ($f7cc).w
	bne.s loc_209af2
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209af2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209af2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209af2
	move.b #$9,(a1)
loc_209af2:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209de4
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209dee
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209b44
	move.w #$63,d1
loc_209b44:
	bsr.w sub_209dee
loc_209b48:
	tst.b ($ff150e).l
	beq.s loc_209b5a
	clr.b ($ff150e).l
	bsr.w sub_209dc4
loc_209b5a:
	tst.b ($f7d6).w
	beq.s loc_209ba4
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209b7a
	move.l #$6d400001,d0
loc_209b7a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209c5c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209b9a
	move.l #$6e800001,d0
loc_209b9a:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209c5c
loc_209ba4:
	rts
loc_209ba6:
	btst.b #$7,($ff152e).l
	bne.s loc_209bd2
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207400
	move.b #$1,($ff150c).l
loc_209bd2:
	rts

sub_209bd4:
	move.l #$73600002,($c00004).l
	lea dat_209c3a(pc),a2
	move.w #$2,d2
	bra.s loc_209c04

sub_209be8:
	lea ($c00000).l,a6
	bsr.w sub_209dc4
	move.l #$70600002,($c00004).l
	lea dat_209c32(pc),a2
	move.w #$6,d2
loc_209c04:
	lea (dat_2330bc).l,a1
loc_209c0a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209c26
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209c1a:
	move.l (a3)+,(a6)
	dbf d1,loc_209c1a
loc_209c20:
	dbf d2,loc_209c0a
	rts
loc_209c26:
	move.l #$0,(a6)
	dbf d1,loc_209c26
	bra.s loc_209c20
dat_209c32:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209c3a:
	dc.b $ff,$ff,$00,$00

sub_209c3e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209dba
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209dba

sub_209c5c:
	lea (dat_209d96).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209c6c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209c70:
	sub.l d3,d1
	bcs.s loc_209c78
	addq.w #$1,d2
	bra.s loc_209c70
loc_209c78:
	add.l d3,d1
	tst.w d2
	beq.s loc_209c82
	move.w #$1,d4
loc_209c82:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209c8e
	tst.w d6
	bne.s loc_209cc0
loc_209c8e:
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
loc_209cb4:
	addi.l #$400000,d0
	dbf d6,loc_209c6c
	rts
loc_209cc0:
	moveq #$f,d5
loc_209cc2:
	move.l #$0,(a6)
	dbf d5,loc_209cc2
	bra.s loc_209cb4

sub_209cce:
	lea (dat_209d9e).l,a2
	moveq #$2,d6
	bra.s loc_209ce0

sub_209cd8:
	lea (dat_209d92).l,a2
	moveq #$5,d6
loc_209ce0:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209ce8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209cec:
	sub.l d3,d1
	bcs.s loc_209cf4
	addq.w #$1,d2
	bra.s loc_209cec
loc_209cf4:
	add.l d3,d1
	tst.w d2
	beq.s loc_209cfe
	move.w #$1,d4
loc_209cfe:
	tst.w d4
	beq.s loc_209d2c
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
loc_209d2c:
	addi.l #$400000,d0
	dbf d6,loc_209ce8
	rts
	.incbin 40248, 32
loc_209d58:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209d5c:
	sub.l d3,d1
	bcs.s loc_209d64
	addq.w #$1,d2
	bra.s loc_209d5c
loc_209d64:
	add.l d3,d1
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
	dbf d6,loc_209d58
	rts
dat_209d92:
	dc.b $00,$01,$86,$a0
dat_209d96:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209d9e:
	dc.b $00,$00,$00,$64
dat_209da2:
	dc.b $00,$00,$00,$0a
dat_209da6:
	dc.b $00,$00,$00,$01
dat_209daa:
	.incbin 40362, 16

sub_209dba:
	moveq #$3,d6
	lea (dat_209daa).l,a2
	bra.s sub_209df6

sub_209dc4:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209dda
	moveq #$9,d1
loc_209dda:
	lea (dat_209da6).l,a2
	moveq #$0,d6
	bra.s sub_209df6

sub_209de4:
	lea (dat_209da6).l,a2
	moveq #$0,d6
	bra.s sub_209df6

sub_209dee:
	lea (dat_209da2).l,a2
	moveq #$1,d6

sub_209df6:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209dfe:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209e02:
	sub.l d3,d1
	bcs.s loc_209e0a
	addq.w #$1,d2
	bra.s loc_209e02
loc_209e0a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209e14
	move.w #$1,d4
loc_209e14:
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
	dbf d6,loc_209dfe
	rts
	.incbin 40522, 358
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fbe(pc,d0.w),d1
	jmp dat_209fbe(pc,d1.w)
dat_209fbe:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.l #$20a2bc,$4(a0)
	move.w #$4ce,$2(a0)
	move.b #$4,$1(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$1,$18(a0)
	move.b #$d7,$20(a0)
	move.w $8(a0),$32(a0)
	move.w #$5,$34(a0)
	moveq #$0,d0
	move.b $28(a0),d6
	btst.l #$1,d6
	beq.s loc_20a014
	addi.w #$40,d0
loc_20a014:
	btst.l #$0,d6
	beq.s loc_20a01e
	addi.w #$20,d0
loc_20a01e:
	move.w d0,$30(a0)
	lsr.w #$1,d0
	move.w d0,$2e(a0)
	beq.s loc_20a03c
	move.l #$10000,$2a(a0)
	btst.l #$6,d6
	bne.s loc_20a03c
	neg.l $2a(a0)
loc_20a03c:
	move.l $2a(a0),d0
	beq.s loc_20a064
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20a050
	lea $c(a0),a1
loc_20a050:
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20a064
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20a064:
	tst.b $21(a0)
	beq.w loc_20a100
	tst.w $34(a0)
	beq.s loc_20a082
	subq.w #$1,$34(a0)
	moveq #$a,d0
	bsr.w sub_2099a4
	moveq #$0,d1
	bsr.w sub_205fa6
loc_20a082:
	tst.b $1(a0)
	bpl.s loc_20a092
	move.w #$7f,d0
	jsr (sub_205c1e).l
loc_20a092:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a0),d1
	move.w $c(a0),d2
	sub.w $8(a1),d1
	sub.w $c(a1),d2
	jsr (sub_200a1e).l
	jsr (sub_200786).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a1)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	clr.b $3c(a1)
	move.b #$1,$1c(a0)
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20a100
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20a100
	addq.b #$1,$2(a2,d0.w)
loc_20a100:
	lea (dat_20a2ac).l,a1
	bsr.w sub_205c5e
	jsr (sub_203a48).l
	move.w $32(a0),d0
	jmp (loc_207a22).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a128(pc,d0.w),d0
	jmp dat_20a128(pc,d0.w)
dat_20a128:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	move.l #$20a2fc,$4(a0)
	move.w #$49d,$2(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	tst.b $1c(a0)
	bne.s loc_20a164
	lea ($d000).w,a1
	bsr.w sub_20a17a
loc_20a164:
	lea (dat_20a2ee).l,a1
	bsr.w sub_205c5e
	jsr (sub_203a48).l
	jmp (loc_207a1e).l

sub_20a17a:
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20a222
	move.w $8(a1),d0
	moveq #$0,d1
	move.b $19(a0),d1
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20a222
	add.w d1,d1
	cmp.w d1,d0
	bcc.w loc_20a222
	move.w $8(a1),d0
	moveq #$0,d3
	move.b $19(a0),d3
	move.w $8(a0),d2
	sub.w d3,d2
	sub.w d2,d0
	btst.b #$0,$22(a0)
	beq.s loc_20a1c2
	move.w #$40,d2
	sub.w d0,d2
	move.w d2,d0
loc_20a1c2:
	lea (dat_20a22c).l,a3
	tst.w $12(a1)
	bpl.s loc_20a1d4
	lea (dat_20a26c).l,a3
loc_20a1d4:
	move.b $0(a3,d0.w),d0
	ext.w d0
	add.w $c(a0),d0
	move.w d0,d1
	moveq #$0,d3
	move.b $16(a1),d3
	tst.w $12(a1)
	bpl.s loc_20a1ee
	neg.w d3
loc_20a1ee:
	sub.w d3,d1
	add.w $c(a1),d3
	sub.w d0,d3
	addq.w #$8,d3
	bmi.s loc_20a222
	cmpi.w #$10,d3
	bcc.s loc_20a222
	move.w d1,$c(a1)
	tst.w $12(a1)
	bmi.s loc_20a212
	jsr (sub_207d0e).l
	bra.s loc_20a21e
loc_20a212:
	move.w #$0,$12(a1)
	move.w $10(a1),$14(a1)
loc_20a21e:
	moveq #$1,d0
	rts
loc_20a222:
	jsr (sub_207c9c).l
	moveq #$0,d0
	rts
dat_20a22c:
	.incbin 41516, 64
dat_20a26c:
	.incbin 41580, 64
dat_20a2ac:
	.incbin 41644, 66
dat_20a2ee:
	.incbin 41710, 902
loc_20a674:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a69c(pc,d0.w),d0
	jsr dat_20a69c(pc,d0.w)
	movea.w $36(a0),a1
	cmpi.b #$36,$0(a1)
	bne.w loc_20a696
	jmp (sub_203a48).l
loc_20a696:
	jmp (sub_203af4).l
dat_20a69c:
	.incbin 42652, 90
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a710(pc,d0.w),d0
	jsr dat_20a710(pc,d0.w)
	jsr (sub_203a48).l
	jmp (loc_207a1e).l
dat_20a710:
	.incbin 42768, 818
loc_20aa42:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa5c(pc,d0.w),d0
	jsr dat_20aa5c(pc,d0.w)
	jsr (sub_203a48).l
	jmp (loc_207a1e).l
dat_20aa5c:
	dc.b $00,$04,$00,$72
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$443e,$2(a0)
	move.l #$20abda,$4(a0)
	move.w #$fffe,$2e(a0)
	cmpi.b #$ff,$28(a0)
	bne.s loc_20aaa6
	move.w #$80,$2a(a0)
	st $3e(a0)
	st $3f(a0)
loc_20aaa6:
	jsr (sub_2079e8).l
	bne.s loc_20aace
	move.w a1,$2c(a0)
	move.w a0,$36(a1)
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w #$380,$8(a1)
	move.w #$4f8,$c(a1)
loc_20aace:
	lea ($d000).w,a6
	lea $3e(a0),a5
	bsr.w sub_20aaf2
	tst.w $2a(a0)
	beq.s loc_20aaf0
	addi.w #$ffff,$2a(a0)
	lea dat_20abca(pc),a1
	jmp (sub_205c5e).l
loc_20aaf0:
	rts

sub_20aaf2:
	move.w $c(a0),d0
	sub.w $c(a6),d0
	subi.w #$fff0,d0
	subi.w #$20,d0
	bcc.s loc_20ab3e
	move.w $8(a0),d0
	sub.w $8(a6),d0
	subi.w #$fff0,d0
	subi.w #$20,d0
	bcc.s loc_20ab3e
	tst.b (a5)
	bne.s loc_20ab3c
	st (a5)
	move.w #$ff,$1c(a0)
	tst.w $12(a6)
	bpl.s loc_20ab2e
	move.w #$1ff,$1c(a0)
loc_20ab2e:
	move.w $2a(a0),d0
	move.w #$80,$2a(a0)
	tst.w d0
	beq.s loc_20ab42
loc_20ab3c:
	rts
loc_20ab3e:
	sf (a5)
	rts
loc_20ab42:
	cmpi.w #$4,$2e(a0)
	beq.s loc_20ab9a
	addq.w #$2,$2e(a0)
	move.w $32(a0),$34(a0)
	move.w $30(a0),$32(a0)
	jsr (sub_2079e8).l
	bne.s loc_20ab80
	move.w a1,$30(a0)
	move.w a0,$36(a1)
	move.b $0(a0),$0(a1)
	move.w #$380,$8(a1)
	move.w $2e(a0),d0
	move.w dat_20ab94(pc,d0.w),$c(a1)
loc_20ab80:
	cmpi.w #$4,$2e(a0)
	bne.s loc_20ab92
	movea.w $2c(a0),a1
	move.b #$4,$24(a1)
loc_20ab92:
	rts
dat_20ab94:
	dc.b $04,$98,$04,$b0,$04,$c8
loc_20ab9a:
	move.w #$fffe,$2e(a0)
	movea.w $30(a0),a1
	move.b #$4,$24(a1)
	movea.w $32(a0),a1
	move.b #$4,$24(a1)
	movea.w $34(a0),a1
	move.b #$4,$24(a1)
	movea.w $2c(a0),a1
	move.b #$6,$24(a1)
	rts
dat_20abca:
	.incbin 43978, 78
loc_20ac18:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac3e(pc,d0.w),d0
	jsr dat_20ac3e(pc,d0.w)
	movea.w $36(a0),a1
	cmpi.b #$36,$0(a1)
	bne.s loc_20ac38
	jmp (sub_203a48).l
loc_20ac38:
	jmp (sub_203af4).l
dat_20ac3e:
	dc.b $00,$0c,$00,$36,$00,$78,$00,$84
	dc.b $00,$8e,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$43e,$2(a0)
	move.l #$20ace4,$4(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$2,$1a(a0)
	bne.s loc_20acb4
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_207de4).l
	beq.s loc_20acb4
	bclr.b #$3,$22(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	move.w #$0,$10(a1)
	move.w #$fc00,$12(a1)
loc_20acb4:
	rts
	.incbin 44214, 1640

sub_20b31e:
	rts
	dc.b $00,$00

sub_20b322:
	cmpi.b #$f,d0
	bne.s loc_20b32e
	move.w #$4f2,$2(a0)
loc_20b32e:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b390(pc,d0.w),d0
	jsr dat_20b390(pc,d0.w)
	jsr (sub_203a48).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20b36e
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20b36e:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20b38c
	rts
loc_20b38c:
	bra.w loc_20c398
dat_20b390:
	dc.b $00,$10,$00,$6e
dat_20b394:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20b3bc
	move.w #$3fc,d0
loc_20b3bc:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20b53e,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20b394(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20b468(pc)
	tst.b $1a(a0)
	beq.s loc_20b412
	lea ($d000).w,a1
	jmp (sub_207dea).l
loc_20b412:
	lea ($d000).w,a1
	jsr (sub_207dea).l
	beq.s loc_20b466
	btst.b #$3,$22(a0)
	beq.s loc_20b466
	tst.b ($ff1521).l
	bne.s loc_20b466
	tst.b ($ff151f).l
	bne.s loc_20b466
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20b464
	tst.w $30(a0)
	bne.s loc_20b464
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207360).l
loc_20b464:
	movea.l (a7)+,a0
loc_20b466:
	rts

sub_20b468:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20b482
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20b484(pc,d0.w),d0
	jmp dat_20b484(pc,d0.w)
loc_20b482:
	rts
dat_20b484:
	dc.b $00,$08,$00,$1c,$00,$32,$00,$48
	jsr sub_20b4e0(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 46240, 64

sub_20b4e0:
	tst.b $3a(a0)
	beq.s loc_20b4fe
	subq.b #$1,$3a(a0)
	bne.s loc_20b53c
	btst.b #$7,$1(a0)
	beq.s loc_20b4fe
	move.w #$b7,d0
	jsr (sub_202282).l
loc_20b4fe:
	tst.b $3c(a0)
	beq.s loc_20b51e
	subq.b #$8,$3b(a0)
	bcc.s loc_20b53c
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20b53c
loc_20b51e:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20b53c
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20b53c:
	rts
	.incbin 46398, 2052
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd78(pc,d0.w),d0
	jsr dat_20bd78(pc,d0.w)
	jsr (sub_203a48).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bd74
	rts
loc_20bd74:
	bra.w loc_20c398
dat_20bd78:
	.incbin 48504, 1568
loc_20c398:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c3bc
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c3bc:
	jmp (sub_203af4).l
	.incbin 50114, 1044
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c802(pc,d0.w),d0
	jsr dat_20c802(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_20c800
	cmpi.b #$a,$24(a0)
	beq.s loc_20c7fa
	cmpi.b #$6,$24(a0)
	bcc.s loc_20c800
loc_20c7fa:
	jmp (sub_203a48).l
loc_20c800:
	rts
dat_20c802:
	dc.b $00,$0c,$00,$3c,$00,$a0,$05,$ec
	dc.b $06,$b2,$01,$96
	ori.b #$4,$1(a0)
	addq.b #$2,$24(a0)
	move.b #$4,$18(a0)
	move.l #$23d53c,$4(a0)
	move.w #$2481,$2(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$18,$16(a0)
	lea (dat_23d508).l,a1
	jsr (sub_205c5e).l
	lea ($d000).w,a6
	bsr.w sub_20c9c8
	beq.s loc_20c8a0
	clr.b ($ff1510).l
	move.b #$2,$1a(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	move.w ($d008).w,d0
	move.b ($d017).w,d1
	ext.w d1
	addi.w #$20,d1
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20c894
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c894
	move.w ($d012).w,d0
	neg.w d0
	asr.w #$2,d0
	move.w d0,($d012).w
	rts
loc_20c894:
	move.w ($d010).w,d0
	neg.w d0
	asr.w #$2,d0
	move.w d0,($d010).w
loc_20c8a0:
	rts
	.incbin 51362, 294

sub_20c9c8:
	btst.b #$2,$22(a6)
	beq.s loc_20ca0c
	move.b $17(a6),d1
	ext.w d1
	addi.w #$20,d1
	move.w $8(a6),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20ca0c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20ca0c
	move.b $16(a6),d1
	ext.w d1
	addi.w #$1c,d1
	move.w $c(a6),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_20ca0c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20ca0c
	moveq #$1,d0
	rts
loc_20ca0c:
	moveq #$0,d0
	rts
	.incbin 51728, 2340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d342(pc,d0.w),d0
	jmp dat_20d342(pc,d0.w)
dat_20d342:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20da40,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20da00).l,a2
loc_20d390:
	jsr (sub_2079e8).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20da40,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20d3e2
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20d3e2:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20d390
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20d40a
	bge.s loc_20d400
	neg.w d0
loc_20d400:
	add.w d0,$a(a0)
	jmp (sub_203a48).l
loc_20d40a:
	addq.b #$4,$24(a0)
	jmp (sub_203a48).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20d42e
	bge.s loc_20d424
	neg.w d0
loc_20d424:
	add.w d0,$8(a0)
	jmp (sub_203a48).l
loc_20d42e:
	addq.b #$4,$24(a0)
	jmp (sub_203a48).l
	tst.b $1e(a0)
	beq.s loc_20d448
	subq.b #$1,$1e(a0)
	jmp (sub_203a48).l
loc_20d448:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20d462
	bge.s loc_20d458
	neg.w d0
loc_20d458:
	add.w d0,$a(a0)
	jmp (sub_203a48).l
loc_20d462:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20244c).l
	tst.b $1e(a0)
	beq.s loc_20d484
	subq.b #$1,$1e(a0)
	jmp (sub_203a48).l
loc_20d484:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20d49e
	bge.s loc_20d494
	neg.w d0
loc_20d494:
	add.w d0,$8(a0)
	jmp (sub_203a48).l
loc_20d49e:
	jmp (sub_203af4).l
	tst.l ($f680).w
	bne.s loc_20d4b8
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203af4).l
loc_20d4b8:
	rts
	.incbin 54458, 1350
dat_20da00:
	.incbin 55808, 340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20db62(pc,d0.w),d0
	jmp dat_20db62(pc,d0.w)
dat_20db62:
	dc.b $00,$08,$00,$7a,$00,$a6,$00,$f0
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$30,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e82c,$4(a0)
	move.l #$fffd8000,$30(a0)
	move.w $c(a0),$2e(a0)
	addi.w #$ffd0,$2e(a0)
	move.b #$3e,$20(a0)
	move.b #$2,$21(a0)
	bsr.w sub_2079e8
	bne.s loc_20dbdc
	move.w a0,$34(a1)
	move.b #$32,$0(a1)
	move.w $8(a0),$8(a1)
	subi.w #$30,$8(a1)
	move.w $c(a0),$c(a1)
	move.w a1,$34(a0)
loc_20dbdc:
	tst.b $20(a0)
	bne.s loc_20dc02
	move.w #$ac,d0
	jsr (sub_202282).l
	move.b #$4,$24(a0)
	bset.b #$2,$2c(a0)
	move.b #$1,$1c(a0)
	clr.b $21(a0)
loc_20dc02:
	jmp (sub_203a48).l
	.incbin 56328, 202

sub_20dcd2:
	tst.b $2b(a0)
	bne.s loc_20dcda
	rts
loc_20dcda:
	bchg.b #$7,$2b(a0)
	bne.s loc_20dcee
	move.w #$5,d0
	ori.b #$1,$1a(a0)
	bra.s loc_20dcf8
loc_20dcee:
	move.w #$6,d0
	andi.b #$fe,$1a(a0)
loc_20dcf8:
	subq.b #$1,$2b(a0)
	movem.l d7/a1-a3,-(a7)
	jsr (sub_200490).l
	movem.l (a7)+,d7/a1-a3
	rts
	tst.b $3b(a0)
	beq.s loc_20dd2e
	cmpi.w #$b0,($f73e).w
	bge.s loc_20dd28
	addq.w #$6,($f73e).w
	cmpi.w #$b2,($f73e).w
	bge.s loc_20dd28
	bra.s loc_20dd2e
loc_20dd28:
	move.w #$b2,($f73e).w
loc_20dd2e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd4e(pc,d0.w),d0
	jsr dat_20dd4e(pc,d0.w)
	btst.b #$0,$2c(a0)
	beq.s loc_20dd46
	rts
loc_20dd46:
	bsr.s sub_20dcd2
	jmp (sub_203a48).l
dat_20dd4e:
	dc.b $00,$0c,$00,$b2,$01,$76,$02,$9e
	dc.b $03,$1e,$03,$52
	movem.l d7/a1-a3,-(a7)
	move.w #$6,d0
	jsr (sub_200490).l
	movem.l (a7)+,d7/a1-a3
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$50,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e850,$4(a0)
	bsr.w sub_2079fe
	bne.w loc_20ddfe
	move.w a1,$36(a0)
	move.w a0,$34(a1)
	move.b #$33,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$30,$c(a1)
	bsr.w sub_2079fe
	bne.w loc_20ddfe
	move.w a0,$34(a1)
	move.w a1,$34(a0)
	move.b #$32,$0(a1)
	move.w $8(a0),$8(a1)
	subi.w #$40,$8(a1)
	move.w $c(a0),$c(a1)
	bsr.w sub_2079fe
	bne.s loc_20ddfe
	move.w a0,$34(a1)
	move.b #$3d,$0(a1)
	move.w $8(a0),$8(a1)
loc_20ddfe:
	rts
	movea.w $34(a0),a1
	move.b #$1,$1c(a1)
	lea ($d000).w,a1
	move.w #$1c0,d1
	move.w #$dc,d2
	move.w $c(a1),d0
	cmp.w d0,d1
	ble.s loc_20de44
	cmp.w d0,d2
	bgt.s loc_20de40
loc_20de22:
	cmp.w $2e(a0),d0
	bne.s loc_20de30
	bclr.b #$2,$2c(a0)
	bra.s loc_20de36
loc_20de30:
	bset.b #$2,$2c(a0)
loc_20de36:
	move.w d0,$2e(a0)
	move.w d0,$c(a0)
	rts
loc_20de40:
	move.w d2,d0
	bra.s loc_20de22
loc_20de44:
	move.w d1,$c(a0)
	bclr.b #$2,$2c(a0)
	move.b #$4,$24(a0)
	move.l #$fffd8000,$30(a0)
	move.w $c(a0),$2e(a0)
	addi.w #$ffb8,$2e(a0)
	move.b #$3f,$20(a0)
	move.b #$4,$21(a0)
	movea.w $34(a0),a1
	move.b #$0,$1c(a1)
	rts
	.incbin 56960, 878
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e214(pc,d0.w),d0
	jsr dat_20e214(pc,d0.w)
	tst.b $1(a0)
	bpl.s loc_20e20e
	lea (dat_20e6c0).l,a1
	jsr (sub_205c5e).l
loc_20e20e:
	jmp (sub_203a48).l
dat_20e214:
	dc.b $00,$0a,$00,$3c,$00,$48,$00,$94
	dc.b $00,$ca
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$6,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e6e0,$4(a0)
	move.w $c(a0),$2e(a0)
	movea.w $34(a0),a1
	move.w $c(a1),$c(a0)
	rts
	.incbin 57948, 158
	tst.b $24(a0)
	bne.s loc_20e32a
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e95a,$4(a0)
loc_20e32a:
	btst.b #$0,$2c(a0)
	bne.s loc_20e356
	movea.w $34(a0),a1
	move.w $c(a1),$c(a0)
	btst.b #$2,$2c(a1)
	beq.s loc_20e350
	lea (dat_20e94c).l,a1
	jsr (sub_205c5e).l
loc_20e350:
	jmp (sub_203a48).l
loc_20e356:
	rts
	movea.w $34(a0),a2
	move.w $c(a2),$c(a0)
	addi.w #$20,$c(a0)
	tst.b $3b(a2)
	bne.s loc_20e382
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e388(pc,d0.w),d0
	jsr dat_20e388(pc,d0.w)
	jmp (sub_203a48).l
loc_20e382:
	jmp (sub_203af4).l
dat_20e388:
	dc.b $00,$06,$00,$34,$00,$ac
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$18,$19(a0)
	move.b #$10,$16(a0)
	move.w #$47c,$2(a0)
	move.l #$20e972,$4(a0)
	movea.w $34(a0),a2
	cmpi.w #$400,($d00c).w
	bge.s loc_20e3d6
	tst.b $3a(a2)
	bne.s loc_20e3d6
	addq.w #$1,$2a(a0)
	cmpi.w #$78,$2a(a0)
	bge.s loc_20e3d8
loc_20e3d6:
	rts
loc_20e3d8:
	clr.w $2a(a0)
	move.b #$4,$24(a0)
	bsr.w sub_2079e8
	bne.w loc_20e432
	move.b #$3e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addq.w #$8,$c(a1)
	jsr (sub_202070).l
	andi.l #$7fff,d0
	ext.l d0
	move.l d0,d2
	divs.w #$400,d0
	swap d0
	move.w #$c,d1
	tst.b $1b(a0)
	bne.s loc_20e424
	neg.w d0
	neg.w d1
loc_20e424:
	add.w d1,$8(a1)
	move.w d0,$10(a1)
	move.w #$300,$12(a1)
loc_20e432:
	rts
	subq.b #$1,$1e(a0)
	bgt.s loc_20e460
	moveq #$0,d0
	move.b $1b(a0),d0
	addq.b #$1,d0
	cmpi.b #$4,d0
	beq.s loc_20e464
	cmpi.b #$8,d0
	beq.s loc_20e462
	move.b #$2,$1e(a0)
loc_20e454:
	move.b d0,$1b(a0)
	move.b dat_20e46c(pc,d0.w),d0
	move.b d0,$1a(a0)
loc_20e460:
	rts
loc_20e462:
	moveq #$0,d0
loc_20e464:
	move.b #$2,$24(a0)
	bra.s loc_20e454
dat_20e46c:
	dc.b $00,$01,$00,$02,$00,$03,$00,$04
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e482(pc,d0.w),d0
	jmp dat_20e482(pc,d0.w)
dat_20e482:
	dc.b $00,$0c,$00,$50,$01,$c4,$01,$d6
	dc.b $01,$76,$01,$8e
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.w #$47c,$2(a0)
	move.l #$20e9ea,$4(a0)
	move.b #$d7,$20(a0)
	move.w #$0,$38(a0)
	move.w #$20,$3a(a0)
	move.w #$600,$3c(a0)
	tst.b $21(a0)
	bne.w loc_20e584
	addq.w #$1,$2a(a0)
	cmpi.w #$f0,$2a(a0)
	bge.w loc_20e5f8
	addq.b #$1,$1e(a0)
	btst.b #$1,$1e(a0)
	beq.s loc_20e4fa
	eori.b #$1,$1a(a0)
loc_20e4fa:
	bsr.w sub_20e65e
	tst.w $12(a0)
	bmi.s loc_20e520
	bsr.w sub_206eca
	tst.w d1
	bgt.w loc_20e538
	add.w d1,$c(a0)
	move.w $12(a0),d1
	neg.w d1
	move.w d1,$12(a0)
	bra.w loc_20e538
loc_20e520:
	bsr.w sub_207060
	tst.w d1
	bgt.w loc_20e538
	sub.w d1,$c(a0)
	move.w $12(a0),d1
	neg.w d1
	move.w d1,$12(a0)
loc_20e538:
	tst.w $10(a0)
	bmi.s loc_20e560
	moveq #$0,d3
	move.b $17(a0),d3
	bsr.w sub_206f94
	tst.w d1
	bgt.w loc_20e57e
	add.w d1,$8(a0)
	move.w $10(a0),d0
	neg.w d0
	move.w d0,$10(a0)
	bra.w loc_20e57e
loc_20e560:
	moveq #$0,d3
	move.b $17(a0),d3
	bsr.w sub_207136
	tst.w d1
	bgt.w loc_20e57e
	sub.w d1,$8(a0)
	move.w $10(a0),d0
	neg.w d0
	move.w d0,$10(a0)
loc_20e57e:
	jmp (sub_203a48).l
loc_20e584:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a0),d1
	move.w $c(a0),d2
	sub.w $8(a1),d1
	sub.w $c(a1),d2
	jsr (sub_200a1e).l
	jsr (sub_200786).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a1)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	clr.b $3c(a1)
	move.b #$1,$1c(a0)
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20e5f2
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20e5f2
	addq.b #$1,$2(a2,d0.w)
loc_20e5f2:
	bclr.b #$3,$22(a1)
loc_20e5f8:
	move.w #$9e,d0
	jsr (sub_202282).l
	move.w #$100,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_20e61c
	dc.b $31,$7c,$00,$01,$00,$1c,$11,$7c
	dc.b $00,$04,$00,$24
loc_20e61c:
	clr.b $20(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$680,$2(a0)
	move.l #$23d1ea,$4(a0)
	lea (dat_23d1d6).l,a1
	jsr (sub_205c5e).l
	jmp (sub_203a48).l
	jmp (sub_203af4).l

sub_20e65e:
	move.w $3a(a0),d0
	add.w d0,$12(a0)
	move.w $38(a0),d0
	add.w d0,$10(a0)
	tst.w $3a(a0)
	beq.s loc_20e6a6
	bmi.s loc_20e686
	move.w $3c(a0),d0
	cmp.w $12(a0),d0
	bgt.s loc_20e6a6
	move.w d0,$12(a0)
	bra.s loc_20e6a6
loc_20e686:
	move.w $3c(a0),d0
	cmp.w $12(a0),d0
	blt.s loc_20e6a6
	move.w d0,$12(a0)
	bra.s loc_20e6a6
	.incbin 59030, 16
loc_20e6a6:
	move.w $10(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	rts
dat_20e6c0:
	.incbin 59072, 652
dat_20e94c:
	.incbin 59724, 530
	tst.b $28(a0)
	bmi.w loc_20aa42
	beq.w loc_20a674
	bra.w loc_20ac18
	.incbin 60270, 2438
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$33e,$2(a0)
	move.l #$20f588,$4(a0)
	moveq #$8,d0
	moveq #$4,d1
	moveq #$0,d2
	tst.b $28(a0)
	bmi.s loc_20f524
	moveq #$14,d0
	moveq #$18,d1
	moveq #$1,d2
loc_20f524:
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
	lea dat_20f544(pc),a1
	jsr (sub_205c5e).l
	jmp (sub_203a48).l
dat_20f544:
	.incbin 62788, 296

sub_20f66c:
	jmp (loc_2064d2).l
dat_20f672:
	.incbin 63090, 16
dat_20f682:
	.incbin 63106, 1094
	jmp (loc_2064ec).l
	.incbin 64206, 796
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 16944
dat_2372ec:
	.incbin 226028, 256
dat_2373ec:
	.incbin 226284, 4096
dat_2383ec:
	.incbin 230380, 4796
dat_2396a8:
	.incbin 235176, 15150
dat_23d1d6:
	.incbin 250326, 166
dat_23d27c:
	.incbin 250492, 652
dat_23d508:
	.incbin 251144, 11000
