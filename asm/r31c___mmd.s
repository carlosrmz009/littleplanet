; R31C__.MMD
; disassembled from the disc; code only, data comes from data/R31C__.MMD at build time
	.file "R31C__.MMD", 262144

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
	bsr.w sub_20789e
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
	lea (dat_20f22e).l,a2
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
	bsr.w sub_203574
	bsr.w sub_20347a
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
	jsr (sub_20f228).l
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
	jsr (sub_205c32).l
	bsr.w sub_20789e
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
	jsr (sub_2078b4).l
	jsr (sub_203988).l
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
	jsr (sub_203b32).l
	tst.w ($ff190e).l
	bne.s loc_20192a
	bsr.w sub_200184
loc_20192a:
	jsr (sub_20bef4).l
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
	jmp (sub_205c32).l
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
	jmp (sub_205c32).l
loc_201b64:
	tst.b ($ff151f).l
	bne.s loc_201b5a
	tst.b ($ff1520).l
	bne.s loc_201b5a
	move.w #$90,d0
	jmp (sub_205c32).l
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
	jmp (sub_205c32).l
loc_201ba0:
	tst.b ($ff151f).l
	bne.s loc_201b96
	tst.b ($ff1520).l
	bne.s loc_201b96
	move.w #$91,d0
	jmp (sub_205c32).l
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
	bsr.w sub_205b54
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
	jsr (sub_20f228).l
	jsr (sub_202236).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203072
	bsr.w sub_20252a
	jmp (loc_20a8f4).l
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
	bsr.w sub_203072
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
	lea (dat_20f23e).l,a1
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
	lea (dat_20f23e).l,a1
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
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_202888:
	.incbin 10376, 32
loc_2028a8:
	tst.b ($ff1522).l
	beq.s loc_2028c8
	jsr (sub_206caa).l
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
	dc.b $00,$60,$03,$ec
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
	moveq #$d,d2
	lea ($a800).w,a2
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
	bsr.w sub_202ce8
	bsr.w sub_202d88
	bsr.w sub_20361c
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_203012
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202fde
	lea ($a838).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202faa
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a20
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a20
	moveq #$0,d0
loc_202a20:
	bsr.w sub_202f7a
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
	addi.l #$1000,(a2)+
	addi.l #$1000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202aa6:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202aa6
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divs.w #$1c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$6,d6
	lea ($a946).w,a1
loc_202ae6:
	move.w d3,d0
	neg.w d0
	move.w d0,-(a1)
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ae6
	lea ($a946).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b02:
	move.w d0,(a1)+
	dbf d6,loc_202b02
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b10:
	move.w d0,(a1)+
	dbf d6,loc_202b10
	lea ($a800).w,a2
	moveq #$d,d6
loc_202b1c:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bfc).l,a3
	move.b $0(a3,d6.w),d5
loc_202b32:
	move.w d1,(a1)+
	dbf d5,loc_202b32
	dbf d6,loc_202b1c
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b44:
	move.w d0,(a1)+
	dbf d6,loc_202b44
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b52:
	move.w d0,(a1)+
	dbf d6,loc_202b52
	move.w ($f710).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b60:
	move.w d0,(a1)+
	dbf d6,loc_202b60
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b6e:
	move.w d0,(a1)+
	dbf d6,loc_202b6e
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divs.w #$2c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$a,d6
	move.w ($f708).w,d3
loc_202b94:
	move.w d3,d0
	neg.w d0
	move.w d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b94
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202bac:
	move.w d0,(a1)+
	dbf d6,loc_202bac
	lea ($cc00).w,a1
	lea ($a938).w,a2
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
	bcs.s loc_202bf8
	cmpi.w #$1b,d1
	bcs.s loc_202bdc
	moveq #$1c,d1
loc_202bdc:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202c0a).l,a3
	lea (dat_23d610).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c5e
loc_202bf8:
	bra.w loc_202c10
dat_202bfc:
	dc.b $01,$03,$01,$01,$01,$01,$01,$03
	dc.b $03,$03,$03,$01,$03,$03
dat_202c0a:
	dc.b $00,$38,$02,$50,$7f,$ff
loc_202c10:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a838).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202c22:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c52
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c52:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202c22
	rts

sub_202c5e:
	cmp.w (a3),d4
	bcc.s loc_202c94
loc_202c62:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c7e(pc,d2.w)
loc_202c72:
	tst.w d1
	bmi.s loc_202c92
	cmp.w (a3),d4
	bcc.s loc_202cae
loc_202c7a:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c7e:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c72
loc_202c92:
	rts
loc_202c94:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202cb8
	cmp.w (a3),d4
	bcs.s loc_202c62
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c62
	bra.s loc_202cb8
loc_202cae:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c7a
loc_202cb8:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202cc2:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202cc2
	lsr.w #$3,d6
loc_202cde:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202cde
	bra.s loc_202c72

sub_202ce8:
	move.w ($f700).w,d4
	bsr.s sub_202d1c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d1a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d14
	bset.b #$2,($f754).w
	rts
loc_202d14:
	bset.b #$3,($f754).w
loc_202d1a:
	rts

sub_202d1c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d2e
	bcs.s loc_202d5e
	bra.s loc_202d34
loc_202d2e:
	clr.w ($f73a).w
	rts
loc_202d34:
	cmpi.w #$10,d0
	blt.s loc_202d3e
	move.w #$10,d0
loc_202d3e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d4c
	move.w ($f72a).w,d0
loc_202d4c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d5e:
	cmpi.w #$fff0,d0
	bge.s loc_202d68
	move.w #$fff0,d0
loc_202d68:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d4c
	move.w ($f728).w,d0
	bra.s loc_202d4c
	.incbin 11640, 16

sub_202d88:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d9c
	subq.w #$5,d0
loc_202d9c:
	btst.b #$1,$22(a6)
	beq.s loc_202dbc
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e08
	subi.w #$40,d0
	bcc.s loc_202e08
	tst.b ($f75c).w
	bne.s loc_202e1a
	bra.s loc_202dc8
loc_202dbc:
	sub.w ($f73e).w,d0
	bne.s loc_202dce
	tst.b ($f75c).w
	bne.s loc_202e1a
loc_202dc8:
	clr.w ($f73c).w
	rts
loc_202dce:
	cmpi.w #$60,($f73e).w
	bne.s loc_202df6
	move.w $14(a6),d1
	bpl.s loc_202dde
	neg.w d1
loc_202dde:
	cmpi.w #$800,d1
	bcc.s loc_202e08
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e68
	cmpi.w #$fffa,d0
	blt.s loc_202e32
	bra.s loc_202e20
loc_202df6:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e68
	cmpi.w #$fffe,d0
	blt.s loc_202e32
	bra.s loc_202e20
loc_202e08:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e68
	cmpi.w #$fff0,d0
	blt.s loc_202e32
	bra.s loc_202e20
loc_202e1a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e20:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e72
	bra.w loc_202e3e
loc_202e32:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e3e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e96
	cmpi.w #$ff00,d1
	bgt.s loc_202e62
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e96
loc_202e62:
	move.w ($f72c).w,d1
	bra.s loc_202e96
loc_202e68:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e72:
	cmp.w ($f72e).w,d1
	blt.s loc_202e96
	subi.w #$800,d1
	bcs.s loc_202e92
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e96
loc_202e92:
	move.w ($f72e).w,d1
loc_202e96:
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
	bne.s loc_202ed8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202ed2
	bset.b #$0,($f754).w
	rts
loc_202ed2:
	bset.b #$1,($f754).w
loc_202ed8:
	rts
	.incbin 11994, 160

sub_202f7a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fa8
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202fa2
	bset.b #$0,($f756).w
	rts
loc_202fa2:
	bset.b #$1,($f756).w
loc_202fa8:
	rts

sub_202faa:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fdc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202fd6
	bset.b d6,($f756).w
	bra.s loc_202fdc
loc_202fd6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fdc:
	rts

sub_202fde:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203010
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_20300a
	bset.b d6,($f758).w
	bra.s loc_203010
loc_20300a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203010:
	rts

sub_203012:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203044
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20303e
	bset.b d6,($f75a).w
	bra.s loc_203044
loc_20303e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203044:
	rts
	.incbin 12358, 44

sub_203072:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203130
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203214
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203216
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20312e
	bclr.b #$0,(a2)
	beq.s loc_2030e4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203442
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203218
loc_2030e4:
	bclr.b #$1,(a2)
	beq.s loc_2030fe
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203442
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203218
loc_2030fe:
	bclr.b #$2,(a2)
	beq.s loc_203114
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203442
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20326e
loc_203114:
	bclr.b #$3,(a2)
	beq.s loc_20312e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203442
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20326e
loc_20312e:
	rts

sub_203130:
	lea (dat_2034fa).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20314c
	bclr.b #$1,(a2)
	beq.s loc_203196
	move.w #$e0,d4
loc_20314c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031c6(pc,d0.w),a3
	beq.s loc_20317e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203442
	movem.l (a7)+,d4-d5
	bsr.w sub_203218
	movea.l (a7)+,a0
	bra.s loc_203196
loc_20317e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203444
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203244
	movea.l (a7)+,a0
loc_203196:
	tst.b (a2)
	bne.s loc_20319c
	rts
loc_20319c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031b0
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031b0:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2031d6
dat_2031c6:
	.incbin 12742, 16
loc_2031d6:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031de:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_203208
	add.w d0,d0
	movea.l dat_2031c6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20331a
	movem.l (a7)+,d4-d5
	bsr.w sub_203442
	bsr.w sub_20329c
	movem.l (a7)+,d4-d5/a0
loc_203208:
	addi.w #$10,d4
	dbf d6,loc_2031de
	clr.b (a2)
	rts

sub_203214:
	rts

sub_203216:
	rts

sub_203218:
	moveq #$15,d6

sub_20321a:
	move.l #$800000,d7
	move.l d0,d1
loc_203222:
	movem.l d4-d5,-(a7)
	bsr.w sub_20331a
	move.l d1,d0
	bsr.w sub_20329c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203222
	rts

sub_203244:
	move.l #$800000,d7
	move.l d0,d1
loc_20324c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20331c
	move.l d1,d0
	bsr.w sub_20329c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20324c
	rts

sub_20326e:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203278:
	movem.l d4-d5,-(a7)
	bsr.w sub_20331a
	move.l d1,d0
	bsr.w sub_20329c
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203278
	rts

sub_20329c:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032d8
	btst.b #$3,(a0)
	bne.s loc_2032b8
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032b8:
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
loc_2032d8:
	btst.b #$3,(a0)
	bne.s loc_2032fa
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
loc_2032fa:
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

sub_20331a:
	add.w (a3),d5

sub_20331c:
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
	beq.s loc_20336a
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
loc_20336a:
	rts
	.incbin 13164, 214

sub_203442:
	add.w (a3),d5

sub_203444:
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
	.incbin 13406, 28

sub_20347a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034a4
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2034cc

sub_2034a4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034a8:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203442
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20321a
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034a8
	rts
loc_2034cc:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034d0:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034fa).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_20353c
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2034d0
	rts
dat_2034fa:
	.incbin 13562, 50
dat_20352c:
	.incbin 13612, 16

sub_20353c:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20352c(pc,d0.w),a3
	beq.s loc_20355e
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203442
	movem.l (a7)+,d4-d5
	bsr.w sub_203218
	bra.s loc_203572
loc_20355e:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203444
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203244
loc_203572:
	rts

sub_203574:
	moveq #$0,d0
	lea (dat_20f22e).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20231e
	movea.l (a2)+,a0
	bsr.w sub_2035ce
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200474
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2035b8
	jmp (loc_20beec).l
loc_2035b8:
	btst.b #$1,($ff151c).l
	beq.s loc_2035cc
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035cc
	bsr.w sub_20244c
loc_2035cc:
	rts

sub_2035ce:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035d8:
	move.l d0,(a3)+
	dbf d1,loc_2035d8
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035ee
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035ee:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2396a8).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203608:
	move.w d1,d0
	movea.l a3,a0
loc_20360c:
	move.b (a1)+,(a0)+
	dbf d0,loc_20360c
	lea $80(a3),a3
	dbf d2,loc_203608
	rts

sub_20361c:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203696(pc,d0.w),d0
	jsr dat_203696(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203642
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203642:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203670
	bcc.s loc_203672
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203666
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203666:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203670:
	rts
loc_203672:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20368a
	btst.b #$1,($d022).w
	beq.s loc_20368a
	add.w d1,d1
	add.w d1,d1
loc_20368a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203696:
	.incbin 13974, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203750(pc,d0.w),d0
	jmp dat_203750(pc,d0.w)
dat_203750:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 14174, 554

sub_203988:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203990:
	move.b (a0),d0
	beq.s loc_2039a6
	add.w d0,d0
	add.w d0,d0
	lea (dat_203daa).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039a6:
	lea $40(a0),a0
	dbf d7,loc_203990
	rts

sub_2039b0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039ee
	bpl.s loc_2039e0
	btst.b #$1,$2c(a0)
	beq.s loc_2039e0
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039ee
loc_2039e0:
	btst.b #$2,$2c(a0)
	bne.s loc_2039ee
	addi.w #$38,$12(a0)
loc_2039ee:
	tst.w $12(a0)
	bmi.s loc_203a02
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a02
	move.w #$1000,$12(a0)
loc_203a02:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a12:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a4e
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a4e
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a4c
	neg.w d1
loc_203a4c:
	add.w d1,d0
loc_203a4e:
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

sub_203a68:
	bclr.b #$7,$1(a0)
loc_203a6e:
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203ad8
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203af4
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203af4
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203ab2
	cmpi.w #$800,d3
	bcs.s loc_203ac4
	subi.w #$800,d3
	bra.s loc_203ac4
loc_203ab2:
	cmpi.w #$700,($f704).w
	bcs.s loc_203ac4
	cmpi.w #$100,d3
	bcc.s loc_203ac4
	addi.w #$800,d3
loc_203ac4:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203af4
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203af4
loc_203ad8:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203af4
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203af4:
	rts
	.incbin 15094, 30

sub_203b14:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b1a:
	move.l d1,(a1)+
	dbf d0,loc_203b1a
	rts
dat_203b22:
	.incbin 15138, 16

sub_203b32:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b3e:
	tst.w (a4)
	beq.w loc_203bfe
	moveq #$2,d6
loc_203b46:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bf6
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bac
	movea.l dat_203b22(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b90
	cmpi.w #$800,d2
	bcs.s loc_203ba2
	subi.w #$800,d2
	bra.s loc_203ba2
loc_203b90:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203ba2
	cmpi.w #$100,d2
	bcc.s loc_203ba2
	addi.w #$800,d2
loc_203ba2:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bce
loc_203bac:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bce
	.incbin 15286, 24
loc_203bce:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203bec
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203bf0
loc_203bec:
	bsr.w sub_203c20
loc_203bf0:
	bset.b #$7,$1(a0)
loc_203bf6:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b46
loc_203bfe:
	lea $80(a4),a4
	dbf d7,loc_203b3e
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c18
	move.l #$0,(a2)
	rts
loc_203c18:
	move.b #$0,-$5(a2)
	rts

sub_203c20:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c66
	btst.l #$1,d4
	bne.w loc_203cb4
loc_203c32:
	cmpi.b #$50,d5
	beq.s loc_203c64
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
	bne.s loc_203c5e
	addq.w #$1,d0
loc_203c5e:
	move.w d0,(a2)+
	dbf d1,loc_203c32
loc_203c64:
	rts
loc_203c66:
	btst.l #$1,d4
	bne.w loc_203cfa
loc_203c6e:
	cmpi.b #$50,d5
	beq.s loc_203cb2
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
	bne.s loc_203cac
	addq.w #$1,d0
loc_203cac:
	move.w d0,(a2)+
	dbf d1,loc_203c6e
loc_203cb2:
	rts
loc_203cb4:
	cmpi.b #$50,d5
	beq.s loc_203cf8
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
	bne.s loc_203cf2
	addq.w #$1,d0
loc_203cf2:
	move.w d0,(a2)+
	dbf d1,loc_203cb4
loc_203cf8:
	rts
loc_203cfa:
	cmpi.b #$50,d5
	beq.s loc_203d4c
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
	bne.s loc_203d46
	addq.w #$1,d0
loc_203d46:
	move.w d0,(a2)+
	dbf d1,loc_203cfa
loc_203d4c:
	rts
	.incbin 15694, 92
dat_203daa:
	.incbin 15786, 246

sub_203ea0:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203eb2
	move.w #$0,(a1)
	rts
loc_203eb2:
	tst.w (a1)
	bne.s loc_203ebc
	move.b #$1,$1(a1)
loc_203ebc:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f06
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ef8
	neg.w $10(a0)
loc_203ef8:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c32
loc_203f06:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f24
	cmpa.w #$d040,a0
	beq.s loc_203f24
	tst.b ($ff1906).l
	beq.s loc_203f24
	jmp (loc_2075d0).l
loc_203f24:
	move.b $2a(a0),d0
	beq.s loc_203f4e
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f40
	cmpi.b #$2d,d0
	bcs.s loc_203f4a
	move.b #$2d,d0
	bra.s loc_203f4a
loc_203f40:
	cmpi.b #$1e,d0
	bcs.s loc_203f4a
	move.b #$1e,d0
loc_203f4a:
	move.b d0,$2a(a0)
loc_203f4e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f5c(pc,d0.w),d1
	jmp dat_203f5c(pc,d1.w)
dat_203f5c:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f66:
	tst.b ($d300).w
	bne.s loc_203fa4
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203fa4:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203fcc
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203fcc:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204000:
	tst.b ($ff1506).l
	bne.s loc_204066
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_204066
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_20406a
	cmpi.b #$2f,d1
	bne.s loc_204068
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_204066
	tst.b $2c(a0)
	beq.s loc_204066
	jsr (sub_207ab0).l
	bne.s loc_204066
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_20405e
	moveq #$0,d0
loc_20405e:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_204066:
	rts
loc_204068:
	rts

sub_20406a:
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

sub_204090:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_20409c
	neg.w d0
loc_20409c:
	btst.b #$1,$2c(a0)
	beq.s loc_2040ac
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_2040d4
loc_2040ac:
	cmpi.w #$600,d0
	bcs.s loc_2040d4
	tst.w $14(a0)
	bpl.s loc_2040c6
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040e2
	move.w #$e0,d1
	bra.s loc_2040e2
loc_2040c6:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040e2
	move.w #$60,d1
	bra.s loc_2040e2
loc_2040d4:
	cmpi.w #$a0,d1
	beq.s loc_2040e2
	bcc.s loc_2040e0
	addq.w #$2,d1
	bra.s loc_2040e2
loc_2040e0:
	subq.w #$2,d1
loc_2040e2:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204090
	bsr.w sub_204000
	tst.w ($ff1588).l
	beq.s loc_204108
	btst.b #$4,($f605).w
	beq.s loc_204108
	move.b #$1,($ff1906).l
	rts
loc_204108:
	tst.b ($f7cc).w
	bne.s loc_204114
	move.w ($f604).w,($f602).w
loc_204114:
	btst.b #$0,$2c(a0)
	beq.s loc_204138
	cmpi.b #$6,($ff1506).l
	bne.s loc_204132
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204150
loc_204132:
	bsr.w sub_20441a
	bra.s loc_204150
loc_204138:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204196(pc,d0.w),d1
	jsr dat_204196(pc,d1.w)
	jsr (sub_2066ea).l
loc_204150:
	bsr.s sub_2041a4
	bsr.w sub_204264
	bsr.w sub_20427e
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204178
	tst.b $1c(a0)
	bne.s loc_204178
	move.b $1d(a0),$1c(a0)
loc_204178:
	bsr.w sub_205622
	tst.b $2c(a0)
	bmi.s loc_204190
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204190
	jsr (sub_20717a).l
loc_204190:
	bsr.w sub_2054d8
	rts
dat_204196:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2041a4:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2041c8
	move.w $30(a0),d0
	beq.s loc_2041ba
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2041c8
loc_2041ba:
	btst.b #$6,$2c(a0)
	bne.s loc_2041c8
	jsr (sub_203a68).l
loc_2041c8:
	tst.b ($ff151f).l
	beq.s loc_20420c
	tst.w $32(a0)
	beq.s loc_20420c
	subq.w #$1,$32(a0)
	bne.s loc_20420c
	tst.b ($ff1520).l
	bne.s loc_204204
	tst.b ($ff1958).l
	bne.s loc_204204
	tst.b ($ff152e).l
	bne.s loc_2041fe
	move.w #$e,d0
	jsr (sub_205c32).l
loc_2041fe:
	jsr (sub_201a76).l
loc_204204:
	move.b #$0,($ff151f).l
loc_20420c:
	tst.b ($ff1520).l
	beq.s loc_204262
	tst.w $34(a0)
	beq.s loc_204262
	subq.w #$1,$34(a0)
	bne.s loc_204262
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20425a
	tst.b ($ff1958).l
	bne.s loc_20425a
	tst.b ($ff152e).l
	bne.s loc_204254
	move.w #$e,d0
	jsr (sub_205c32).l
loc_204254:
	jsr (sub_201a76).l
loc_20425a:
	move.b #$0,($ff1520).l
loc_204262:
	rts

sub_204264:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20427e:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20428a
loc_204288:
	rts
loc_20428a:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20429c
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204288
loc_20429c:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042e0
	bset.b #$6,$22(a0)
	bne.s loc_204288
	bsr.w sub_205f36
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204288
	bra.s loc_204318
loc_2042e0:
	tst.w $12(a0)
	beq.s loc_2042e8
	bpl.s loc_204288
loc_2042e8:
	bclr.b #$6,$22(a0)
	beq.s loc_204288
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204288
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204318
	move.w #$f000,$12(a0)
loc_204318:
	jsr (sub_207ab0).l
	bne.s loc_20432c
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20432c:
	rts

sub_20432e:
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
	bcs.s loc_204408
	move.l #$50000,d0
loc_204408:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20441a:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204440
	tst.b ($ff152e).l
	beq.s loc_204436
	cmpi.b #$2,($ff152e).l
	bne.s loc_204440
loc_204436:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044f0
loc_204440:
	tst.b $2a(a0)
	bne.w loc_2044fe
	tst.b ($f784).w
	beq.w loc_2044fe
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20445e
	neg.w d0
loc_20445e:
	tst.w ($f786).w
	bne.s loc_20446a
	move.w #$1,($f786).w
loc_20446a:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204480
	move.b #$1,($ff1502).l
	bra.w loc_205c2e
loc_204480:
	cmpi.w #$d2,d1
	bcs.s loc_2044d4
	cmpi.b #$2,($ff1522).l
	beq.s loc_2044d2
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2044aa
	move.w #$82,d0
	jsr (sub_205c32).l
	moveq #$0,d0
loc_2044aa:
	add.b ($f784).w,d0
	bpl.s loc_2044b4
	moveq #$0,d0
	bra.s loc_2044bc
loc_2044b4:
	cmpi.b #$3,d0
	bcs.s loc_2044bc
	moveq #$2,d0
loc_2044bc:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20432e
	move.b #$2,($ff1522).l
loc_2044d2:
	rts
loc_2044d4:
	cmpi.w #$5a,d1
	bcc.s loc_2044ec
	cmp.w d2,d0
	bcc.w loc_203f66
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044ec:
	cmp.w d2,d0
	bcc.s loc_2044fe
loc_2044f0:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044fe:
	rts
	bsr.w sub_203ea0
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204530
	tst.b ($ff195b).l
	beq.s loc_20451e
	cmpi.b #$79,$1a(a0)
	bne.s loc_20455a
	bra.s loc_204526
loc_20451e:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20455a
loc_204526:
	bsr.w sub_204dc2
	jmp (sub_2039b0).l
loc_204530:
	bsr.w sub_204608
	bsr.w sub_20441a
	bsr.w sub_204eac
	bsr.w sub_204fd8
	bsr.w sub_20467c
	bsr.w sub_204e2e
	bsr.w sub_204dc2
	jsr (sub_203a12).l
	bsr.w sub_200b86
	bsr.w sub_205056
loc_20455a:
	rts
	tst.b ($f7c7).w
	bne.s loc_204576
	cmpi.b #$15,$1c(a0)
	beq.s loc_204576
	tst.w $12(a0)
	bmi.s loc_204576
	move.b #$0,$1c(a0)
loc_204576:
	bsr.w sub_204608
	bsr.w sub_20441a
	bsr.w sub_204f96
	bsr.w sub_204ce2
	bsr.w sub_204dc2
	jsr (sub_2039b0).l
	btst.b #$6,$22(a0)
	beq.s loc_20459e
	subi.w #$28,$12(a0)
loc_20459e:
	bsr.w sub_2050a0
	bsr.w sub_2050c4
	rts
	bsr.w sub_204608
	bsr.w sub_20441a
	bsr.w sub_204eac
	bsr.w sub_205014
	bsr.w sub_204b1c
	bsr.w sub_204dc2
	tst.b $2a(a0)
	bne.s loc_2045cc
	jsr (sub_203a12).l
loc_2045cc:
	bsr.w sub_200b86
	bsr.w sub_205056
	rts
	bsr.w sub_204608
	bsr.w sub_20441a
	bsr.w sub_204f96
	bsr.w sub_204ce2
	bsr.w sub_204dc2
	jsr (sub_2039b0).l
	btst.b #$6,$22(a0)
	beq.s loc_2045fe
	subi.w #$28,$12(a0)
loc_2045fe:
	bsr.w sub_2050a0
	bsr.w sub_2050c4
	rts

sub_204608:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204674
	tst.w ($ff1506).l
	bne.s loc_204674
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204676).l,a2
loc_20463c:
	move.b (a2)+,d0
	bmi.s loc_20464c
	cmp.b d0,d1
	bne.s loc_20463c
	bset.b #$1,$2c(a0)
	rts
loc_20464c:
	bclr.b #$1,$2c(a0)
	beq.s loc_204674
	tst.w $12(a0)
	bpl.s loc_204674
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204674
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204674
	neg.w $10(a0)
loc_204674:
	rts
dat_204676:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20467c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2049a6
	tst.w $3e(a0)
	bne.w loc_204956
	btst.b #$2,($f602).w
	beq.s loc_2046a4
	bsr.w sub_204a36
loc_2046a4:
	btst.b #$3,($f602).w
	beq.s loc_2046b0
	bsr.w sub_204aac
loc_2046b0:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204956
	tst.w $14(a0)
	beq.s loc_2046d0
	tst.b $2a(a0)
	beq.w loc_204956
	bra.s loc_2046dc
loc_2046d0:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046dc:
	btst.b #$3,$22(a0)
	beq.s loc_20472e
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204786
	cmpi.b #$1e,$0(a1)
	bne.s loc_20470e
	move.b #$0,$1c(a0)
	bra.w loc_204956
loc_20470e:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20476a
	cmp.w d2,d1
	bge.s loc_204758
	bra.s loc_204786
loc_20472e:
	jsr (sub_206ede).l
	cmpi.w #$c,d1
	blt.s loc_204786
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204762
loc_204758:
	btst.b #$0,$22(a0)
	bne.s loc_204772
	bra.s loc_20477c
loc_204762:
	cmpi.b #$3,$37(a0)
	bne.s loc_204786
loc_20476a:
	btst.b #$0,$22(a0)
	bne.s loc_20477c
loc_204772:
	move.b #$32,$1c(a0)
	bra.w loc_204956
loc_20477c:
	move.b #$6,$1c(a0)
	bra.w loc_204956
loc_204786:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20479a
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20479a:
	btst.b #$7,($f788).w
	bne.w loc_20489e
	btst.b #$6,($f788).w
	bne.w loc_2048be
	btst.b #$1,($f602).w
	bne.w loc_2048be
	andi.b #$f,($f788).w
	beq.s loc_2047d2
	btst.b #$0,($f603).w
	beq.s loc_2047e6
	bset.b #$7,($f788).w
	bra.w loc_20497a
loc_2047d2:
	btst.b #$0,($f603).w
	beq.w loc_2047e6
	move.b #$1,($f788).w
	bra.w loc_20497a
loc_2047e6:
	btst.b #$0,($f602).w
	beq.s loc_204862
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204844
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204816
	asr.w #$1,d2
	sub.w d2,d1
loc_204816:
	btst.b #$0,$22(a0)
	beq.s loc_204822
	neg.w d0
	neg.w d1
loc_204822:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204838
	cmp.w d0,d1
	ble.s loc_20483e
	bra.s loc_20483c
loc_204838:
	cmp.w d1,d0
	ble.s loc_20483e
loc_20483c:
	move.w d1,d0
loc_20483e:
	move.w d0,$14(a0)
	rts
loc_204844:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20485e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202282).l
loc_20485e:
	bra.w loc_20497a
loc_204862:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204882
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2048be
loc_204882:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202282).l
	bra.w loc_204956
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20489e:
	btst.b #$0,($f602).w
	beq.s loc_2048be
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20497a
	addq.w #$2,($f73e).w
	bra.w loc_20497a
loc_2048be:
	btst.b #$6,($f788).w
	bne.w loc_20493a
	andi.b #$f,($f788).w
	beq.s loc_2048e2
	btst.b #$1,($f603).w
	beq.s loc_2048f4
	bset.b #$6,($f788).w
	bra.w loc_20497a
loc_2048e2:
	btst.b #$1,($f603).w
	beq.s loc_2048f4
	move.b #$1,($f788).w
	bra.w loc_20497a
loc_2048f4:
	btst.b #$1,($f602).w
	beq.s loc_204956
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204938
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204938
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20492a
	neg.w $14(a0)
loc_20492a:
	move.w #$9c,d0
	jsr (sub_202282).l
	bsr.w sub_204e56
loc_204938:
	bra.s loc_20497a
loc_20493a:
	btst.b #$1,($f602).w
	beq.s loc_204956
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20497a
	subq.w #$2,($f73e).w
	bra.s loc_20497a
loc_204956:
	cmpi.w #$60,($f73e).w
	bne.s loc_204970
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20497a
	move.b #$0,($f788).w
	bra.s loc_20497a
loc_204970:
	bcc.s loc_204976
	addq.w #$4,($f73e).w
loc_204976:
	subq.w #$2,($f73e).w
loc_20497a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2049a6
	move.w $14(a0),d0
	beq.s loc_2049a6
	bmi.s loc_20499a
	sub.w d5,d0
	bcc.s loc_204994
	move.w #$0,d0
loc_204994:
	move.w d0,$14(a0)
	bra.s loc_2049a6
loc_20499a:
	add.w d5,d0
	bcc.s loc_2049a2
	move.w #$0,d0
loc_2049a2:
	move.w d0,$14(a0)
loc_2049a6:
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2049c4:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a34
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a34
	bmi.s loc_2049dc
	neg.w d1
loc_2049dc:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d9e
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a34
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a30
	cmpi.b #$40,d0
	beq.s loc_204a1e
	cmpi.b #$80,d0
	beq.s loc_204a18
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a18:
	sub.w d1,$12(a0)
	rts
loc_204a1e:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a30:
	add.w d1,$12(a0)
loc_204a34:
	rts

sub_204a36:
	tst.b $2a(a0)
	bne.s loc_204aaa
	move.w $14(a0),d0
	beq.s loc_204a44
	bpl.s loc_204a74
loc_204a44:
	bset.b #$0,$22(a0)
	bne.s loc_204a58
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a58:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a68
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a68
	move.w d1,d0
loc_204a68:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a74:
	sub.w d4,d0
	bcc.s loc_204a7c
	move.w #$ff80,d0
loc_204a7c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204aaa
	cmpi.w #$400,d0
	blt.s loc_204aaa
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202282).l
loc_204aaa:
	rts

sub_204aac:
	tst.b $2a(a0)
	bne.s loc_204b1a
	move.w $14(a0),d0
	bmi.s loc_204ae4
	bclr.b #$0,$22(a0)
	beq.s loc_204acc
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204acc:
	cmp.w d6,d0
	bge.s loc_204ad8
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ad8
	move.w d6,d0
loc_204ad8:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ae4:
	add.w d4,d0
	bcc.s loc_204aec
	move.w #$80,d0
loc_204aec:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b1a
	cmpi.w #$fc00,d0
	bgt.s loc_204b1a
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202282).l
loc_204b1a:
	rts

sub_204b1c:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204c66
	tst.w $3e(a0)
	bne.s loc_204b54
	btst.b #$2,($f602).w
	beq.s loc_204b48
	bsr.w sub_204c9c
loc_204b48:
	btst.b #$3,($f602).w
	beq.s loc_204b54
	bsr.w sub_204cc0
loc_204b54:
	tst.b $2a(a0)
	beq.w loc_204bfe
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204b74
	asr.w #$1,d2
	sub.w d2,d1
loc_204b74:
	btst.b #$0,$22(a0)
	beq.s loc_204b80
	neg.w d0
	neg.w d1
loc_204b80:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b96
	cmp.w d0,d1
	ble.s loc_204b9c
	bra.s loc_204b9a
loc_204b96:
	cmp.w d1,d0
	ble.s loc_204b9c
loc_204b9a:
	move.w d1,d0
loc_204b9c:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204bd0
	rts
loc_204baa:
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204c30
loc_204bd0:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204baa
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202282).l
	btst.b #$0,$22(a0)
	bne.s loc_204bf6
	bsr.w sub_204cc0
	bra.s loc_204bfe
loc_204bf6:
	bsr.w sub_204c9c
	bra.s loc_204bfe
	dc.b $4e,$75
loc_204bfe:
	move.w $14(a0),d0
	beq.s loc_204c20
	bmi.s loc_204c14
	sub.w d5,d0
	bcc.s loc_204c0e
	move.w #$0,d0
loc_204c0e:
	move.w d0,$14(a0)
	bra.s loc_204c20
loc_204c14:
	add.w d5,d0
	bcc.s loc_204c1c
	move.w #$0,d0
loc_204c1c:
	move.w d0,$14(a0)
loc_204c20:
	tst.w $14(a0)
	bne.s loc_204c66
	move.w #$ab,d0
	jsr (sub_202282).l
loc_204c30:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c50
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c60
loc_204c50:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c60:
	move.b #$5,$1c(a0)
loc_204c66:
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c8a
	move.w #$1000,d1
loc_204c8a:
	cmpi.w #$f000,d1
	bge.s loc_204c94
	move.w #$f000,d1
loc_204c94:
	move.w d1,$10(a0)
	bra.w loc_2049c4

sub_204c9c:
	move.w $14(a0),d0
	beq.s loc_204ca4
	bpl.s loc_204cb2
loc_204ca4:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204cb2:
	sub.w d4,d0
	bcc.s loc_204cba
	move.w #$ff80,d0
loc_204cba:
	move.w d0,$14(a0)
	rts

sub_204cc0:
	move.w $14(a0),d0
	bmi.s loc_204cd4
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204cd4:
	add.w d4,d0
	bcc.s loc_204cdc
	move.w #$80,d0
loc_204cdc:
	move.w d0,$14(a0)
	rts

sub_204ce2:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d1c
	tst.w ($ff1506).l
	bne.s loc_204d1c
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d14
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d14
	rts
loc_204d14:
	btst.b #$1,$2c(a0)
	bne.s loc_204d4c
loc_204d1c:
	btst.b #$2,($f602).w
	beq.s loc_204d36
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204d36
	move.w d1,d0
loc_204d36:
	btst.b #$3,($f602).w
	beq.s loc_204d4c
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d4c
	move.w d6,d0
loc_204d4c:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204d62
	bcc.s loc_204d5e
	addq.w #$4,($f73e).w
loc_204d5e:
	subq.w #$2,($f73e).w
loc_204d62:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204d90
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204d90
	bmi.s loc_204d84
	sub.w d1,d0
	bcc.s loc_204d7e
	move.w #$0,d0
loc_204d7e:
	move.w d0,$10(a0)
	rts
loc_204d84:
	sub.w d1,d0
	bcs.s loc_204d8c
	move.w #$0,d0
loc_204d8c:
	move.w d0,$10(a0)
loc_204d90:
	rts
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204dc0
	bsr.w sub_206fd8
	tst.w d1
	bpl.s loc_204dc0
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204dc0:
	rts

sub_204dc2:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e16
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204df0
	addi.w #$38,d0
loc_204df0:
	cmp.w d1,d0
	bls.s loc_204e16
loc_204df4:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e04
	rts
loc_204e04:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207414
	move.b #$6,$24(a0)
	rts
loc_204e16:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204df4

sub_204e2e:
	tst.b ($f7ca).w
	bne.s loc_204e54
	move.w $14(a0),d0
	bpl.s loc_204e3c
	neg.w d0
loc_204e3c:
	cmpi.w #$80,d0
	bcs.s loc_204e54
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e54
	btst.b #$1,($f602).w
	bne.s sub_204e56
loc_204e54:
	rts

sub_204e56:
	btst.b #$2,$22(a0)
	beq.s loc_204e60
	bra.s loc_204e90
loc_204e60:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e80
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e90
loc_204e80:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e90:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204eaa
	cmpi.w #$200,$14(a0)
	bcc.s loc_204eaa
	move.w #$200,$14(a0)
loc_204eaa:
	rts

sub_204eac:
	tst.b $2a(a0)
	beq.s loc_204eb4
	rts
loc_204eb4:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ec6
	tst.w $14(a0)
	beq.w loc_204f8c
loc_204ec6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f8c
	btst.b #$3,$22(a0)
	beq.s loc_204ee2
	jsr (sub_205bb8).l
	beq.s loc_204f12
loc_204ee2:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206e08
	cmpi.w #$6,d1
	blt.w loc_204f8c
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f08
	move.w #$380,d2
loc_204f08:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f12:
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
	bne.s loc_204f8e
	tst.b ($ff195b).l
	beq.s loc_204f70
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f80
loc_204f70:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f80:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f8c:
	rts
loc_204f8e:
	bset.b #$4,$22(a0)
	rts

sub_204f96:
	tst.b $3c(a0)
	beq.s loc_204fc8
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204fac
	move.w #$fe00,d1
loc_204fac:
	cmp.w $12(a0),d1
	ble.s loc_204fc6
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204fc6
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204fc6:
	rts
loc_204fc8:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204fd6
	move.w #$f040,$12(a0)
loc_204fd6:
	rts

sub_204fd8:
	tst.b $2a(a0)
	bne.s loc_205012
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205012
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205012
	bmi.s loc_20500e
	tst.w d0
	beq.s loc_20500c
	add.w d0,$14(a0)
loc_20500c:
	rts
loc_20500e:
	add.w d0,$14(a0)
loc_205012:
	rts

sub_205014:
	tst.b $2a(a0)
	bne.s loc_205054
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205054
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_20504a
	tst.w d0
	bpl.s loc_205044
	asr.l #$2,d0
loc_205044:
	add.w d0,$14(a0)
	rts
loc_20504a:
	tst.w d0
	bmi.s loc_205050
	asr.l #$2,d0
loc_205050:
	add.w d0,$14(a0)
loc_205054:
	rts

sub_205056:
	nop
	tst.b $38(a0)
	bne.s loc_205098
	tst.w $3e(a0)
	bne.s loc_20509a
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205098
	move.w $14(a0),d0
	bpl.s loc_20507a
	neg.w d0
loc_20507a:
	cmpi.w #$280,d0
	bcc.s loc_205098
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205098:
	rts
loc_20509a:
	subq.w #$1,$3e(a0)
	rts

sub_2050a0:
	btst.b #$1,$2c(a0)
	bne.s loc_2050c2
	move.b $26(a0),d0
	beq.s loc_2050c2
	bpl.s loc_2050b8
	addq.b #$2,d0
	bcc.s loc_2050b6
	moveq #$0,d0
loc_2050b6:
	bra.s loc_2050be
loc_2050b8:
	subq.b #$2,d0
	bcc.s loc_2050be
	moveq #$0,d0
loc_2050be:
	move.b d0,$26(a0)
loc_2050c2:
	rts

sub_2050c4:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2051a8
	cmpi.b #$80,d0
	beq.w loc_20520a
	cmpi.b #$c0,d0
	beq.w loc_205266
	bsr.w sub_20711e
	tst.w d1
	bpl.s loc_205116
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205116:
	bsr.w sub_206f80
	tst.w d1
	bpl.s loc_205128
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205128:
	bsr.w sub_206e30
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2051a6
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205146
	cmp.b d2,d0
	blt.s loc_2051a6
loc_205146:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c8
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205184
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205176
	asr.w $12(a0)
	bra.s loc_205198
loc_205176:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205184:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205198
	move.w #$fc0,$12(a0)
loc_205198:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2051a6
	neg.w $14(a0)
loc_2051a6:
	rts
loc_2051a8:
	bsr.w sub_20711e
	tst.w d1
	bpl.s loc_2051c2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2051c2:
	bsr.w sub_206fd8
	tst.w d1
	bpl.s loc_2051dc
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2051da
	move.w #$0,$12(a0)
loc_2051da:
	rts
loc_2051dc:
	tst.w $12(a0)
	bmi.s loc_205208
	bsr.w sub_206e30
	tst.w d1
	bpl.s loc_205208
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c8
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205208:
	rts
loc_20520a:
	bsr.w sub_20711e
	tst.w d1
	bpl.s loc_20521c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20521c:
	bsr.w sub_206f80
	tst.w d1
	bpl.s loc_20522e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20522e:
	bsr.w sub_206fd8
	tst.w d1
	bpl.s loc_205264
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20524e
	move.w #$0,$12(a0)
	rts
loc_20524e:
	move.b d3,$26(a0)
	bsr.w sub_20533a
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205264
	neg.w $14(a0)
loc_205264:
	rts
loc_205266:
	bsr.w sub_206f80
	tst.w d1
	bpl.s loc_205280
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205280:
	bsr.w sub_206fd8
	tst.w d1
	bpl.s loc_20529a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205298
	move.w #$0,$12(a0)
loc_205298:
	rts
loc_20529a:
	tst.w $12(a0)
	bmi.s loc_2052c6
	bsr.w sub_206e30
	tst.w d1
	bpl.s loc_2052c6
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c8
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052c6:
	rts

sub_2052c8:
	btst.b #$4,$22(a0)
	beq.s loc_2052d2
	nop
loc_2052d2:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20532c
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20530c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20531c
loc_20530c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20531c:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202282).l
loc_20532c:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20533a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203a12).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205374
	subi.w #$20,$12(a0)
loc_205374:
	jsr (sub_2066ea).l
	bsr.w sub_205390
	bsr.w sub_204dc2
	bsr.w sub_204264
	bsr.w sub_205622
	jmp (sub_203a68).l

sub_205390:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_207414
	bsr.w sub_2050c4
	btst.b #$1,$22(a0)
	bne.s loc_2053ca
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2053ca:
	rts
	.incbin 21452, 268

sub_2054d8:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205500
	cmpi.b #$5,($ff1506).l
	beq.s loc_205500
	cmpi.b #$2,($ff1506).l
	beq.s loc_205500
	tst.b ($ff1506).l
	bne.w loc_2055c2
loc_205500:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20553e
	tst.b ($ff1506).l
	bne.w loc_2055c4
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2055c4
	bra.s loc_205546
loc_20553e:
	cmp.b ($f7af).w,d1
	beq.w loc_2055c4
loc_205546:
	cmp.b ($f7ac).w,d1
	beq.s loc_205576
	cmp.b ($f7ad).w,d1
	beq.s loc_20555a
	bclr.b #$6,$1(a0)
	rts
loc_20555a:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055dc
	btst.b #$1,$22(a0)
	beq.s loc_205576
	bclr.b #$6,$1(a0)
	rts
loc_205576:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205588
	bclr.b #$6,$1(a0)
	rts
loc_205588:
	cmpi.b #$e0,d2
	bcs.s loc_205596
	bset.b #$6,$1(a0)
	rts
loc_205596:
	btst.b #$6,$1(a0)
	bne.s loc_2055b2
	move.b $26(a0),d1
	beq.s loc_2055c2
	cmpi.b #$80,d1
	bhi.s loc_2055c2
	bset.b #$6,$1(a0)
	rts
loc_2055b2:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2055c2
	bclr.b #$6,$1(a0)
loc_2055c2:
	rts
loc_2055c4:
	btst.b #$2,$22(a0)
	bne.s loc_2055d6
	move.w #$9c,d0
	jsr (sub_202282).l
loc_2055d6:
	jmp (sub_204e56).l
loc_2055dc:
	tst.w $12(a0)
	bmi.s loc_205620
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205614
	cmpi.w #$38,d1
	bcs.s loc_20560c
	cmpi.w #$80,d1
	bcs.s loc_205620
loc_205604:
	bclr.b #$6,$1(a0)
	rts
loc_20560c:
	bset.b #$6,$1(a0)
	rts
loc_205614:
	cmpi.w #$38,d1
	bcs.s loc_205604
	cmpi.w #$80,d1
	bcc.s loc_20560c
loc_205620:
	rts

sub_205622:
	lea (dat_205912).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205644
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205644:
	bsr.w sub_2058b4
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2056bc
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20568a
	move.b d0,$1e(a0)

sub_20566e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205682
	bpl.s loc_205682
	cmpi.b #$fd,d0
	bge.s loc_20568c
loc_205682:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20568a:
	rts
loc_20568c:
	addq.b #$1,d0
	bne.s loc_20569c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205682
loc_20569c:
	addq.b #$1,d0
	bne.s loc_2056b0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205682
loc_2056b0:
	addq.b #$1,d0
	bne.s loc_2056ba
	move.b $2(a1,d1.w),$1c(a0)
loc_2056ba:
	rts
loc_2056bc:
	subq.b #$1,$1e(a0)
	bpl.s loc_20568a
	addq.b #$1,d0
	bne.w loc_205776
	tst.b ($ff195b).l
	bne.w loc_20583e
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056e4
	not.b d0
loc_2056e4:
	btst.b #$1,$2c(a0)
	bne.s loc_2056f2
	addi.b #$10,d0
	bra.s loc_2056f4
loc_2056f2:
	addq.b #$8,d0
loc_2056f4:
	bpl.s loc_2056f8
	moveq #$3,d1
loc_2056f8:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057ea
	move.w $14(a0),d2
	bpl.s loc_205716
	neg.w d2
loc_205716:
	btst.b #$1,$2c(a0)
	beq.s loc_20572e
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b14).l,a1
	bra.s loc_205758
loc_20572e:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205aee).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205758
	lea (dat_205992).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205758
	lea (dat_20598a).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205758:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205766
	moveq #$0,d2
loc_205766:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20566e
	add.b d3,$1a(a0)
	rts
loc_205776:
	addq.b #$1,d0
	bne.s loc_2057e6
	move.w $14(a0),d2
	bpl.s loc_205782
	neg.w d2
loc_205782:
	lea (dat_205a70).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057c0
	lea (dat_2059a2).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2057b4
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2057c0
	lea (dat_205b1c).l,a1
	bra.s loc_2057c0
loc_2057b4:
	cmpi.w #$600,d2
	bcc.s loc_2057c0
	lea (dat_20599a).l,a1
loc_2057c0:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2057ca
	moveq #$0,d2
loc_2057ca:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20566e
loc_2057e6:
	addq.b #$1,d0
	bne.s loc_20582a
loc_2057ea:
	move.w $14(a0),d2
	bmi.s loc_2057f2
	neg.w d2
loc_2057f2:
	addi.w #$800,d2
	bpl.s loc_2057fa
	moveq #$0,d2
loc_2057fa:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a82).l,a1
	tst.b ($ff195b).l
	bne.s loc_205814
	lea (dat_2059aa).l,a1
loc_205814:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20566e
loc_20582a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20583e:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205850
	not.b d0
loc_205850:
	addi.b #$10,d0
	bpl.s loc_205858
	moveq #$0,d1
loc_205858:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205886
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205776
loc_205886:
	move.w $14(a0),d2
	bpl.s loc_20588e
	neg.w d2
loc_20588e:
	lea (dat_205a6a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058a0
	lea (dat_205a64).l,a1
loc_2058a0:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058aa
	moveq #$0,d2
loc_2058aa:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20566e

sub_2058b4:
	tst.b ($ff195b).l
	beq.s loc_2058c0
	move.b dat_2058c2(pc,d0.w),d0
loc_2058c0:
	rts
dat_2058c2:
	.incbin 22722, 80
dat_205912:
	.incbin 22802, 120
dat_20598a:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205992:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20599a:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2059a2:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2059aa:
	.incbin 22954, 186
dat_205a64:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a6a:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a70:
	.incbin 23152, 18
dat_205a82:
	.incbin 23170, 108
dat_205aee:
	.incbin 23278, 38
dat_205b14:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b1c:
	.incbin 23324, 56

sub_205b54:
	tst.b (a0)
	beq.w loc_205bb6
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205bb6
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205bb6
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b88:
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
loc_205ba2:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205ba2
	dbf d1,loc_205b88
loc_205bb6:
	rts

sub_205bb8:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c2c
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
	bne.s loc_205c1a
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c1a:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c2c:
	rts
loc_205c2e:
	move.w #$e,d0

sub_205c32:
	cmpi.w #$67,d0
	bne.s loc_205c40
	move.b #$1,($ff1958).l
loc_205c40:
	move.w d0,($a12010).l
loc_205c46:
	move.w ($a12020).l,d0
	beq.s loc_205c46
	cmp.w ($a12020).l,d0
	bne.s loc_205c46
	move.w #$0,($a12010).l
loc_205c5e:
	move.w ($a12020).l,d0
	bne.s loc_205c5e
	move.w ($a12020).l,d0
	bne.s loc_205c5e
	rts
	dc.b $00,$00

sub_205c72:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c8e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c8e:
	subq.b #$1,$1e(a0)
	bpl.s loc_205cce
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205cd0
loc_205caa:
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
loc_205cce:
	rts
loc_205cd0:
	addq.b #$1,d0
	bne.s loc_205ce0
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205caa
loc_205ce0:
	addq.b #$1,d0
	bne.s loc_205cf4
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205caa
loc_205cf4:
	addq.b #$1,d0
	bne.s loc_205cfe
	move.b $2(a1,d1.w),$1c(a0)
loc_205cfe:
	addq.b #$1,d0
	bne.s loc_205d06
	addq.b #$2,$24(a0)
loc_205d06:
	addq.b #$1,d0
	bne.s loc_205d14
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d14:
	addq.b #$1,d0
	bne.s loc_205d1c
	addq.b #$2,$25(a0)
loc_205d1c:
	rts
	.incbin 23838, 166
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205de0(pc,d0.w),d0
	jsr dat_205de0(pc,d0.w)
	jsr (sub_203a68).l
	jmp (loc_207ae6).l
dat_205de0:
	.incbin 24032, 152
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$20,$c(a1)
	move.w $8(a0),$2a(a1)
	move.w $c(a0),$2c(a1)
	subi.w #$18,$2c(a1)
	rts
	.incbin 24222, 152

sub_205f36:
	rts
	.incbin 24376, 116

sub_205fac:
	tst.b $25(a0)
	bne.s loc_205fdc
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207ab0).l
	bne.s loc_205fdc
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205fdc:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fec(pc,d0.w),d0
	jmp dat_205fec(pc,d0.w)
dat_205fec:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206014
	andi.b #$7f,$2(a0)
loc_206014:
	move.l #$23d57e,$4(a0)
	bsr.s sub_205fac
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206042
	move.w #$100,$1c(a0)
loc_206042:
	lea (dat_23d56a).l,a1
	bsr.w sub_205c72
	jmp (sub_203a68).l
	tst.b $25(a0)
	beq.s loc_20605e
	jmp (sub_203b14).l
loc_20605e:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206080(pc,d0.w),d0
	jsr dat_206080(pc,d0.w)
	jmp (sub_203a68).l
dat_206080:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_2060ae
	andi.b #$7f,$2(a0)
loc_2060ae:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_2060d4
	bsr.w sub_206140
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206136
loc_2060d4:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206ede).l
	tst.w d1
	bpl.s loc_206132
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_20611c
	bsr.w sub_206140
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206166
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_20611c:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206136
loc_206132:
	addq.w #$2,$c(a0)
loc_206136:
	lea (dat_2336bc).l,a1
	bra.w sub_205c72

sub_206140:
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

sub_206166:
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
	bra.s loc_206136
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206136
	.incbin 24994, 242
dat_206294:
	.incbin 25236, 218
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20637c(pc,d0.w),d1
	jmp dat_20637c(pc,d1.w)
dat_20637c:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23d392,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_2063be
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_2063be
	addq.b #$2,$24(a0)
loc_2063be:
	rts
	tst.b ($ff151e).l
	beq.s loc_20641a
	tst.b ($ff1521).l
	bne.s loc_206418
	tst.b ($ff151f).l
	bne.s loc_206418
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_206408
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_206408
	andi.b #$7f,$2(a0)
loc_206408:
	lea (dat_23d26a).l,a1
	jsr (sub_205c72).l
	bra.w loc_2064b8
loc_206418:
	rts
loc_20641a:
	jmp (sub_203b14).l
	.incbin 25632, 152
loc_2064b8:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2064ca
	rts
loc_2064ca:
	cmp.b $24(a0),d0
	beq.s loc_2064e0
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2064e0:
	jmp (sub_203a68).l
loc_2064e6:
	bclr.b #$7,($ff156b).l
	dc.b $67,$44,$70,$00
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206536(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20650a:
	move.l (a1)+,(a2)+
	dbf d0,loc_20650a
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
	rts
dat_206536:
	.incbin 25910, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20656c(pc,d0.w),d0
	jsr dat_20656c(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206566
	jsr (sub_203a68).l
loc_206566:
	jmp (loc_207ae6).l
dat_20656c:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23d392,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20664e
	cmpi.b #$6,$24(a1)
	bcc.w loc_20664e
	bsr.w sub_2066b2
	beq.w loc_20664e
	tst.b $28(a0)
	bne.s loc_206600
	move.w $10(a1),d0
	bpl.s loc_2065c0
	neg.w d0
loc_2065c0:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2065d2
	move.w #$d00,d1
loc_2065d2:
	cmp.w d1,d0
	bcc.s loc_2065d8
	move.w d1,d0
loc_2065d8:
	tst.w $10(a1)
	bpl.s loc_2065e0
	neg.w d0
loc_2065e0:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206630
	neg.w $14(a1)
	bra.s loc_206630
loc_206600:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206650
	move.w $12(a1),d0
	bpl.s loc_206610
	neg.w d0
loc_206610:
	cmpi.w #$d00,d0
	bcc.s loc_20661a
	move.w #$d00,d0
loc_20661a:
	tst.w $12(a1)
	bpl.s loc_206622
	neg.w d0
loc_206622:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206630:
	bset.b #$2,$22(a1)
	bne.s loc_20664e
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20664e:
	rts
loc_206650:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_20669c
	cmpi.b #$2,$28(a0)
	bne.s loc_20666c
	tst.w $12(a1)
	bpl.s loc_206630
	bra.s loc_206672
loc_20666c:
	tst.w $12(a1)
	bmi.s loc_206630
loc_206672:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206684
	btst.l #$2,d1
	beq.s loc_206630
	neg.w d0
loc_206684:
	cmpi.b #$2,$28(a0)
	beq.s loc_206692
	bset.b #$1,$22(a1)
loc_206692:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206630
loc_20669c:
	tst.w $10(a1)
	bmi.s loc_206630
	btst.l #$0,d1
	beq.w loc_206630
	move.w #$f600,d0
	bra.w loc_206622

sub_2066b2:
	tst.b ($ff1906).l
	bne.s loc_2066e6
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066e6
	cmpi.w #$50,d0
	bcc.s loc_2066e6
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066e6
	cmpi.w #$50,d0
	bcc.s loc_2066e6
	moveq #$1,d0
	rts
loc_2066e6:
	moveq #$0,d0
	rts

sub_2066ea:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066f4
	bsr.s sub_2066f6
loc_2066f4:
	rts

sub_2066f6:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067da
	cmpi.b #$80,d0
	beq.w loc_206760
	cmpi.b #$c0,d0
	beq.w loc_20679c
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206818
	bne.s loc_20675e
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206818
loc_20675e:
	rts
loc_206760:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206818
	bne.s loc_20679a
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206818
loc_20679a:
	rts
loc_20679c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206818
	bne.s loc_2067d8
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206818
loc_2067d8:
	rts
loc_2067da:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206818
	bne.s loc_206816
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206818
loc_206816:
	rts

sub_206818:
	jsr (sub_200ef4).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20685c
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206840
	add.b ($ff156a).l,d1
loc_206840:
	add.w d1,d1
	move.w dat_206860(pc,d1.w),d1
	lea dat_206860(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206850:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068d4
	addq.w #$2,d1
	dbf d6,loc_206850
loc_20685c:
	moveq #$0,d0
	rts
dat_206860:
	.incbin 26720, 116
loc_2068d4:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068e6
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068e6:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_20692a(pc,d1.w),d0
	jsr dat_20692a(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_20691a
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_206914
	cmpi.b #$6,d1
	beq.s loc_206914
	move.w #$b5,d0
loc_206914:
	jsr (sub_202282).l
loc_20691a:
	tst.b ($ff1950).l
	beq.s loc_206926
	moveq #$0,d0
	rts
loc_206926:
	moveq #$1,d0
	rts
dat_20692a:
	.incbin 26922, 266
loc_206a34:
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	rts
loc_206a4c:
	move.w #$700,d0
	tst.w $12(a0)
	bmi.s loc_206a58
	neg.w d0
loc_206a58:
	move.w d0,$12(a0)
	bra.s loc_206a34
	.incbin 27230, 18
loc_206a70:
	andi.w #$fff0,d2
	addq.w #$8,d2
	andi.w #$fff0,d3
	addq.w #$8,d3
	move.w d3,d1
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a1e).l
	jsr (sub_200786).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bra.s loc_206a34
	.incbin 27304, 28
	subi.w #$12,d1
	bmi.s loc_206af6
	move.w dat_206b36(pc,d1.w),d0
	lea dat_206b36(pc,d0.w),a1
	andi.w #$f,d2
	andi.w #$f,d3
	btst.l #$b,d4
	bne.s loc_206ae6
	neg.b d3
	addi.b #$f,d3
loc_206ae6:
	cmp.b $0(a1,d3.w),d2
	bcc.s loc_206af6
	move.b #$1,($ff1950).l
	rts
loc_206af6:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	addi.b #$80,d0
	neg.b d0
	subi.b #$20,d0
	btst.l #$b,d4
	beq.s loc_206b18
	addi.b #$40,d0
loc_206b18:
	jsr (sub_200786).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bra.w loc_206a34
dat_206b36:
	.incbin 27446, 90
	move.w d3,d1
	andi.w #$f,d1
	cmpi.b #$8,d1
	bcc.s loc_206ba8
	btst.l #$b,d4
	bne.w loc_206a4c
	bra.w loc_206a70
loc_206ba8:
	btst.l #$b,d4
	bne.w loc_206a70
	bra.w loc_206a4c
	.incbin 27572, 36
loc_206bd8:
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
	bne.s loc_206c92
	move.b ($ff1593).l,($ff195b).l
loc_206c92:
	tst.b ($ff1522).l
	bpl.s loc_206ca8
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ca8:
	rts

sub_206caa:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206bd8
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
	bne.s loc_206d64
	move.b ($ff1591).l,($ff195b).l
loc_206d64:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d86
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d86:
	tst.b ($ff1522).l
	bpl.s loc_206d9c
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d9c:
	rts

sub_206d9e:
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
	bpl.s loc_206dda
	move.b d1,d0
	bpl.s loc_206dd4
	subq.b #$1,d0
loc_206dd4:
	addi.b #$20,d0
	bra.s loc_206de4
loc_206dda:
	move.b d1,d0
	bpl.s loc_206de0
	addq.b #$1,d0
loc_206de0:
	addi.b #$1f,d0
loc_206de4:
	andi.b #$c0,d0
	beq.w loc_206eb4
	cmpi.b #$80,d0
	beq.w loc_207050
	andi.b #$38,d1
	bne.s loc_206dfc
	addq.w #$8,d2
loc_206dfc:
	cmpi.b #$40,d0
	beq.w loc_207126
	bra.w loc_206f88

sub_206e08:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2070ae
	cmpi.b #$80,d0
	beq.w sub_206fd8
	cmpi.b #$c0,d0
	beq.w loc_206f18

sub_206e30:
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
loc_206e94:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206ea2
	move.b ($f768).w,d3
	exg d0,d1
loc_206ea2:
	btst.l #$0,d3
	beq.s loc_206eaa
	move.b d2,d3
loc_206eaa:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206eb4:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010dc).l
	move.b #$0,d2
loc_206ed0:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206edc
	move.b d2,d3
loc_206edc:
	rts

sub_206ede:
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
	beq.s loc_206f16
	move.b #$0,d3
loc_206f16:
	rts
loc_206f18:
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
	bra.w loc_206e94

sub_206f80:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f88:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b #$c0,d2
	bra.w loc_206ed0
	.incbin 28584, 48

sub_206fd8:
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
	bra.w loc_206e94

sub_207048:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207050:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010dc).l
	move.b #$80,d2
	bra.w loc_206ed0
	.incbin 28788, 58
loc_2070ae:
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
	bra.w loc_206e94

sub_20711e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207126:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b #$40,d2
	bra.w loc_206ed0
	.incbin 29002, 48

sub_20717a:
	btst.b #$6,$2c(a0)
	bne.s loc_2071c8
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2071a6
	addi.w #$c,d3
	moveq #$a,d5
loc_2071a6:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2071b4:
	tst.b $1(a1)
	bpl.s loc_2071c0
	move.b $20(a1),d0
	bne.s loc_2071cc
loc_2071c0:
	lea $40(a1),a1
	dbf d6,loc_2071b4
loc_2071c8:
	moveq #$0,d0
	rts
loc_2071cc:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207552).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071f4
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071fa
	bra.w loc_2071c0
loc_2071f4:
	cmp.w d4,d0
	bhi.w loc_2071c0
loc_2071fa:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_207212
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207218
	bra.w loc_2071c0
loc_207212:
	cmp.w d5,d0
	bhi.w loc_2071c0
loc_207218:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20728c
	cmpi.b #$c0,d1
	beq.w loc_20746c
	tst.b d1
	bmi.w sub_207356
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207250
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20724e
	addq.b #$2,$24(a1)
loc_20724e:
	rts
loc_207250:
	tst.w $12(a0)
	bpl.s loc_20727a
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20728a
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20728a
	addq.b #$4,$25(a1)
	rts
loc_20727a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20728a
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20728a:
	rts

sub_20728c:
	tst.b ($ff1521).l
	bne.s loc_2072a6
	tst.b ($ff151f).l
	bne.s loc_2072a6
	cmpi.b #$2,$1c(a0)
	bne.w sub_207356
loc_2072a6:
	tst.b $21(a1)
	beq.s loc_2072d0
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2072ce
	bset.b #$7,$22(a1)
loc_2072ce:
	rts
loc_2072d0:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072e8
	moveq #$6,d0
loc_2072e8:
	move.w d0,$3e(a1)
	move.w dat_207348(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207302
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207302:
	bsr.w sub_20a8ac
	move.w #$96,d0
	jsr (sub_202282).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207338
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207340
	neg.w $12(a0)
	rts
loc_207338:
	addi.w #$100,$12(a0)
	rts
loc_207340:
	subi.w #$100,$12(a0)
	rts
dat_207348:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207356:
	tst.b ($ff1521).l
	bne.s loc_207366
	tst.b ($ff151f).l
	beq.s loc_20736a
loc_207366:
	moveq #$ffffffff,d0
	rts
loc_20736a:
	nop
	tst.w $30(a0)
	bne.s loc_207366
	movea.l a1,a2

sub_207374:
	tst.b ($ff151e).l
	bne.s loc_2073a0
	tst.w ($ff1512).l
	beq.w loc_20740a
	jsr (sub_207ab0).l
	bne.s loc_2073a0
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2073a0:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2073b6
	move.b #$0,($ff156f).l
loc_2073b6:
	move.b #$4,$24(a0)
	bsr.w sub_2052c8
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073e6
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073e6:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073f4
	neg.w $10(a0)
loc_2073f4:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_20740a:
	tst.w ($ff1588).l
	bne.w loc_2073a0

sub_207414:
	tst.w ($ff1906).l
	bne.s loc_207468
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2052c8
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
loc_207468:
	moveq #$ffffffff,d0
	rts
loc_20746c:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074fc
	cmpi.b #$1f,d1
	beq.w loc_2074fc
	cmpi.b #$23,d1
	beq.w loc_2074fc
	cmpi.b #$27,d1
	beq.w loc_2074fc
	cmpi.b #$3a,d1
	beq.w loc_207544
	cmpi.b #$3b,d1
	beq.w loc_207544
	tst.b ($f7aa).w
	beq.w loc_2074fa
	cmpi.b #$1,($f7aa).w
	beq.s loc_2074c4
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074e6
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074f4
loc_2074c4:
	cmpi.b #$3c,d1
	blt.s loc_2074fa
	cmpi.b #$3f,d1
	bgt.s loc_2074fa
	bsr.w sub_20728c
	tst.b $20(a1)
	bne.s loc_2074de
	addq.b #$3,$21(a1)
loc_2074de:
	clr.b $20(a1)
	bra.w loc_2074fc
loc_2074e6:
	cmpi.b #$3f,d1
	beq.s loc_207508
	cmpi.b #$3e,d1
	beq.s loc_207502
	bra.s loc_2074fa
loc_2074f4:
	cmpi.b #$3d,d1
	beq.s loc_207502
loc_2074fa:
	rts
loc_2074fc:
	addq.b #$1,$21(a1)
	rts
loc_207502:
	bsr.w sub_207356
	bra.s loc_2074fc
loc_207508:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207542
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207542
	neg.w $10(a0)
loc_207542:
	rts
loc_207544:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207550
	addq.b #$1,$21(a1)
loc_207550:
	rts
dat_207552:
	.incbin 30034, 126
loc_2075d0:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075e6
	move.l #$4000,(dat_207760).l
	bra.s loc_207606
loc_2075e6:
	addi.l #$2000,(dat_207760).l
	cmpi.l #$80000,(dat_207760).l
	bls.s loc_207606
	move.l #$80000,(dat_207760).l
loc_207606:
	move.l (dat_207760).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207618
	sub.l d0,$c(a0)
loc_207618:
	btst.b #$1,($f604).w
	beq.s loc_207624
	add.l d0,$c(a0)
loc_207624:
	btst.b #$2,($f604).w
	beq.s loc_207630
	sub.l d0,$8(a0)
loc_207630:
	btst.b #$3,($f604).w
	beq.s loc_20763c
	add.l d0,$8(a0)
loc_20763c:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ef4).l
	move.w (a1),($ff194e).l
	lea (dat_207764).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20767e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207678
	move.b #$0,d1
loc_207678:
	move.b d1,($ff1904).l
loc_20767e:
	btst.b #$7,($f605).w
	beq.s loc_20769e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207698
	add.b (a2),d1
loc_207698:
	move.b d1,($ff1904).l
loc_20769e:
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
	beq.s loc_20772a
	bsr.w sub_207ab0
	bne.s loc_20772a
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
loc_20772a:
	btst.b #$4,($f605).w
	beq.s loc_20775a
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20775a:
	jmp (sub_203a68).l
dat_207760:
	dc.b $00,$00,$40,$00
dat_207764:
	.incbin 30564, 314

sub_20789e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2078ac:
	clr.l (a2)+
	dbf d0,loc_2078ac
	rts

sub_2078b4:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2078c2(pc,d0.w),d0
	jmp dat_2078c2(pc,d0.w)
dat_2078c2:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207b62).l,a0
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
	bcc.s loc_207900
	moveq #$0,d6
loc_207900:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207908:
	cmp.w (a0),d6
	bls.s loc_20791a
	tst.b $4(a0)
	bpl.s loc_207916
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207916:
	addq.w #$8,a0
	bra.s loc_207908
loc_20791a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20793a
loc_207928:
	cmp.w (a0),d6
	bls.s loc_20793a
	tst.b $4(a0)
	bpl.s loc_207936
	addq.b #$1,$1(a2)
loc_207936:
	addq.w #$8,a0
	bra.s loc_207928
loc_20793a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207a24
	bge.s loc_2079ca
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2079a6
loc_207974:
	cmp.w -$8(a0),d6
	bge.s loc_2079a6
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20798a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20798a:
	bsr.w sub_207a48
	bne.s loc_207994
	subq.w #$8,a0
	bra.s loc_207974
loc_207994:
	tst.b $4(a0)
	bpl.s loc_2079a4
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079a4:
	addq.w #$8,a0
loc_2079a6:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2079b2:
	cmp.w -$8(a0),d6
	bgt.s loc_2079c4
	tst.b -$4(a0)
	bpl.s loc_2079c0
	subq.b #$1,(a2)
loc_2079c0:
	subq.w #$8,a0
	bra.s loc_2079b2
loc_2079c4:
	move.l a0,($f770).w
	rts
loc_2079ca:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2079de:
	cmp.w (a0),d6
	bls.s loc_207a00
	tst.b $4(a0)
	bpl.s loc_2079ec
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2079ec:
	bsr.w sub_207a48
	beq.s loc_2079de
	tst.b $4(a0)
	bpl.s loc_207a00
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a00:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a20
loc_207a0e:
	cmp.w (a0),d6
	bls.s loc_207a20
	tst.b $4(a0)
	bpl.s loc_207a1c
	addq.b #$1,$1(a2)
loc_207a1c:
	addq.w #$8,a0
	bra.s loc_207a0e
loc_207a20:
	move.l a0,($f774).w
loc_207a24:
	rts

sub_207a26:
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

sub_207a48:
	bsr.s sub_207a26
	beq.s loc_207a5a
	tst.b $4(a0)
	bpl.s loc_207a60
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a60
loc_207a5a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a60:
	bsr.w sub_207ab0
	bne.s loc_207aae
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
	bpl.s loc_207a90
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207a90:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207aa2
	nop
	nop
	nop
	nop
loc_207aa2:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207aae:
	rts

sub_207ab0:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207ab8:
	tst.b (a1)
	beq.s loc_207ac4
	lea $40(a1),a1
	dbf d0,loc_207ab8
loc_207ac4:
	rts

sub_207ac6:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207ae4
loc_207ad8:
	tst.b (a1)
	beq.s loc_207ae4
	lea $40(a1),a1
	dbf d0,loc_207ad8
loc_207ae4:
	rts
loc_207ae6:
	move.w $8(a0),d0
loc_207aea:
	tst.b $1(a0)
	bmi.s loc_207b54
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b54
loc_207b08:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b4a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b42
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b3a
	moveq #$0,d1
	bra.s loc_207b42
loc_207b3a:
	cmpi.w #$3,d1
	bcs.s loc_207b42
	moveq #$2,d1
loc_207b42:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b4a:
	jsr (sub_203b14).l
	moveq #$1,d0
	rts
loc_207b54:
	btst.b #$7,($ff152e).l
	bne.s loc_207b08
	moveq #$0,d0
	rts
dat_207b62:
	.incbin 31586, 4162

sub_208ba4:
	btst.b #$3,$22(a0)
	beq.s loc_208c14
	btst.b #$3,$22(a1)
	beq.s loc_208c14
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208c14
	tst.b $2a(a1)
	beq.s loc_208bd6
	move.w #$ab,d0
	jsr (sub_202282).l
loc_208bd6:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208c02
	cmpi.b #$17,$1c(a1)
	beq.s loc_208c02
	bclr.b #$0,$2c(a1)
loc_208c02:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c14
	bclr.b #$1,$22(a1)
loc_208c14:
	rts

sub_208c16:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c28
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c28:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208c88
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c4a
	bclr.b #$3,$22(a0)
	bra.w sub_208ba4
loc_208c4a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208c88
	tst.b ($ff195b).l
	beq.s loc_208c72
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208c82
loc_208c72:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208c82:
	move.b #$0,$1c(a1)
loc_208c88:
	bset.b #$3,$22(a1)
	beq.s loc_208caa
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208ce2
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208caa:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208cd6
	cmpi.b #$2,$24(a0)
	beq.s loc_208cdc
loc_208cd6:
	move.w $10(a1),$14(a1)
loc_208cdc:
	bclr.b #$1,$22(a1)
loc_208ce2:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208cec:
	move.b #$1,$25(a0)

sub_208cf2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208fa6
	btst.b #$6,$2c(a1)
	bne.w loc_208fa6
	cmpi.b #$6,$24(a1)
	bcc.w loc_208fa6
	tst.b $0(a1)
	beq.w loc_208fa6
	tst.b $1(a0)
	bpl.w loc_208fa6
	tst.b ($ff1906).l
	bne.w loc_208fa6
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208fa6
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208fa6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d60
	btst.b #$3,$22(a0)
	bne.s loc_208d72
	bra.w loc_208fa6
loc_208d60:
	cmpi.b #$1,$25(a0)
	bne.s loc_208d72
	tst.w $12(a1)
	beq.s loc_208d72
	bmi.w loc_208fa6
loc_208d72:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208fa6
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208fa6
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208da8
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208da8:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208db6
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208db6:
	cmp.w d4,d5
	bcs.w loc_208e4a
	cmpi.b #$1,$25(a0)
	beq.w loc_208fa6
	cmpi.b #$a,$0(a0)
	bne.s loc_208dd8
	btst.b #$1,$22(a1)
	bne.w loc_208fa6
loc_208dd8:
	cmpi.b #$4,d5
	bls.w loc_208fa6
	bsr.w sub_208ff6
	move.l d0,-(a7)
	bsr.w sub_208ba4
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208e02
	tst.w $10(a1)
	beq.s loc_208e32
	bpl.s loc_208e0a
	bra.s loc_208e32
loc_208e02:
	tst.w $10(a1)
	beq.s loc_208e32
	bpl.s loc_208e32
loc_208e0a:
	bsr.w sub_208fb6
	btst.b #$1,$22(a1)
	bne.s loc_208e28
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e28:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e32:
	bsr.w sub_20906c
	bsr.w sub_208fb6
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208e4a:
	cmpi.b #$19,$0(a0)
	bne.s loc_208e5c
	btst.b #$2,$22(a1)
	bne.w loc_208fa6
loc_208e5c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208e72
	bmi.w loc_208f42
loc_208e72:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208e84
	tst.w $12(a1)
	beq.s loc_208e84
	bmi.w loc_208fa6
loc_208e84:
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
	beq.s loc_208ed0
	bpl.s loc_208eb0
	neg.b d0
loc_208eb0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d9e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ed0
	tst.w $10(a0)
	bpl.s loc_208ecc
	neg.w d1
loc_208ecc:
	add.w d1,$8(a1)
loc_208ed0:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f3a
	tst.w $12(a0)
	bmi.s loc_208f0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e30).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f0e
	add.w d1,$c(a1)
	bra.w loc_208fa6
loc_208f0e:
	tst.w $12(a0)
	bpl.s loc_208f3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207048).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207414).l
	movem.l (a7)+,a0-a1
	bra.s loc_208fa6
loc_208f3a:
	bsr.w sub_208c16
	moveq #$1,d0
	rts
loc_208f42:
	cmpi.b #$1,$25(a0)
	beq.s loc_208fa6
	cmpi.b #$9,$0(a0)
	beq.s loc_208fa6
	cmpi.b #$a,$0(a0)
	bne.s loc_208f6c
	cmpi.b #$2,$25(a0)
	beq.s loc_208f8c
	btst.b #$1,$1(a0)
	bne.s loc_208f8c
	bra.s loc_208fa6
loc_208f6c:
	btst.b #$1,$22(a1)
	bne.s loc_208f8c
	tst.w $12(a0)
	beq.s loc_208f8c
	bmi.s loc_208f8c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207414).l
	movem.l (a7)+,a0-a1
loc_208f8c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20906c
	bsr.w sub_208ba4
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208fa6:
	bsr.w sub_20906c
	bsr.w sub_208ba4
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208fb6:
	tst.w $10(a0)
	beq.s loc_208ff4
	cmpi.b #$a,$0(a0)
	beq.s loc_208ff4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208fd0
	neg.b d0
loc_208fd0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d9e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ff4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207414).l
	movem.l (a7)+,a0-a1
loc_208ff4:
	rts

sub_208ff6:
	cmpi.b #$a,$0(a0)
	bne.s loc_209006
	move.b #$0,$20(a1)
	rts
loc_209006:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20905a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20906a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209028
	tst.w $10(a2)
	beq.s loc_20906a
loc_209028:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20903a
	cmp.w $8(a2),d1
	bcs.s loc_20906a
	bra.s loc_209040
loc_20903a:
	cmp.w $8(a2),d1
	bcc.s loc_20906a
loc_209040:
	cmpi.b #$15,$0(a0)
	beq.s loc_20906a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207414).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20905a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20906a:
	rts

sub_20906c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209086
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209086
	move.b #$0,$20(a1)
loc_209086:
	rts
	.incbin 37000, 374
loc_2091fe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20920c(pc,d0.w),d0
	jmp dat_20920c(pc,d0.w)
dat_20920c:
	.incbin 37388, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2091fe
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209262
	tst.b $1(a0)
	bpl.s loc_20926a
loc_209262:
	move.w dat_2092bc(pc,d0.w),d1
	jsr dat_2092bc(pc,d1.w)
loc_20926a:
	bsr.w sub_203a68
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20929c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20929c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b14
	rts
dat_2092bc:
	.incbin 37564, 26
	addq.b #$2,$24(a0)
	move.l #$20963e,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20932c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209644,$4(a0)
	bra.s loc_20936e
loc_20932c:
	btst.l #$3,d0
	beq.s loc_20935a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20968e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bef8).l
	move.l (a7)+,d0
	bra.s loc_20936e
loc_20935a:
	btst.b #$1,$1(a0)
	beq.s loc_20936e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20936e:
	btst.l #$1,d0
	beq.s loc_20937a
	bset.b #$5,$2(a0)
loc_20937a:
	andi.w #$2,d0
	move.w dat_209386(pc,d0.w),$30(a0)
	rts
dat_209386:
	dc.b $f0,$00,$f6,$00

sub_20938a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cf2).l
	tst.b $1(a0)
	bpl.s loc_2093a6
	lea ($d000).w,a1
	bsr.s sub_20938a
	bne.s loc_2093a8
loc_2093a6:
	rts
loc_2093a8:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202282).l
	lea (dat_209630).l,a1
	bra.w sub_205c72
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2093fc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cf2).l
	tst.b $1(a0)
	bpl.s loc_20941e
	lea ($d000).w,a1
	bsr.s sub_2093fc
	btst.b #$5,$22(a0)
	bne.s loc_209420
loc_20941e:
	rts
loc_209420:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_20944e
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_20944e:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209468
	move.b #$0,$1c(a1)
loc_209468:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202282).l
	lea (dat_209630).l,a1
	bra.w sub_205c72
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38046, 402
dat_209630:
	.incbin 38448, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20972a(pc,d0.w),d1
	jmp dat_20972a(pc,d1.w)
dat_20972a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209734:
	.incbin 38708, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20978c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209784
	moveq #$0,d1
	bra.s loc_20978c
loc_209784:
	cmpi.w #$3,d1
	bcs.s loc_20978c
	moveq #$2,d1
loc_20978c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2097a8
	moveq #$6,d1
loc_2097a8:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209734).l,a1
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
	beq.s loc_2097f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2097f0
	moveq #$0,d0
	bra.s loc_2097f8
loc_2097f0:
	cmpi.w #$3,d0
	bcs.s loc_2097f8
	moveq #$2,d0
loc_2097f8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2098c6
	dbf d0,loc_2097f8
	bclr.b #$7,(a2)
	bra.s loc_20984e
loc_20980a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209836
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20982e
	moveq #$0,d0
	bra.s loc_209836
loc_20982e:
	cmpi.w #$3,d0
	bcs.s loc_209836
	moveq #$2,d0
loc_209836:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2098c6
	dbf d0,loc_209836
	bclr.b #$7,(a2)
	bsr.w sub_207ac6
	bne.w loc_2098d2
loc_20984e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209b98,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2098a4
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2098a4
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2098a4:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2098c6:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20980a
loc_2098d2:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2098f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2098f0
	moveq #$0,d0
	bra.s loc_2098f8
loc_2098f0:
	cmpi.w #$3,d0
	bcs.s loc_2098f8
	moveq #$2,d0
loc_2098f8:
	lea $1(a2),a3
loc_2098fc:
	btst.b #$0,-(a3)
	bne.w sub_203b14
	dbf d0,loc_2098fc
	tst.b $1(a0)
	bmi.s loc_20992c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2099a6
loc_20992c:
	tst.w ($ff190e).l
	bne.s loc_20993c
	move.b ($ff1913).l,$1a(a0)
loc_20993c:
	bra.w sub_203a68
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_2099aa
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20998c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209984
	moveq #$0,d1
	bra.s loc_20998c
loc_209984:
	cmpi.w #$3,d1
	bcs.s loc_20998c
	moveq #$2,d1
loc_20998c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209b90).l,a1
	bsr.w sub_205c72
	bra.w sub_203a68
loc_2099a6:
	bra.w sub_203b14

sub_2099aa:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2099fa
	bset.b #$1,($ff150d).l
	beq.s loc_2099e4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2099fa
	bset.b #$2,($ff150d).l
	bne.s loc_2099fa
loc_2099e4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c32).l
loc_2099fa:
	jmp (sub_202282).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a0e(pc,d0.w),d1
	jmp dat_209a0e(pc,d1.w)
dat_209a0e:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209a2a
	move.w d0,d5
loc_209a2a:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209a3a
loc_209a32:
	bsr.w sub_207ab0
	bne.w loc_209af0
loc_209a3a:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209b98,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a98
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209a98
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209a98:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209ae0
	move.w d4,d0
	jsr (sub_200786).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209ae0
	subi.w #$80,d4
	bcc.s loc_209ae0
	move.w #$288,d4
loc_209ae0:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209a32
loc_209af0:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202282).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203a12
	addi.w #$18,$12(a0)
	bmi.s loc_209b50
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209b50
	jsr (sub_206ede).l
	tst.w d1
	bpl.s loc_209b50
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209b50:
	tst.b ($ff1916).l
	beq.s loc_209b8c
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209b8c
	bra.w sub_203a68
	.incbin 39786, 34
loc_209b8c:
	bra.w sub_203b14
dat_209b90:
	.incbin 39824, 852
loc_209ee4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f12(pc,d0.w),d0
	jsr dat_209f12(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209f10
	cmpi.w #$5a,($f786).w
	bcs.s loc_209f0a
	btst.b #$0,($ff1505).l
	bne.s loc_209f10
loc_209f0a:
	jmp (sub_203a68).l
loc_209f10:
	rts
dat_209f12:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a4ec,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209f46
	move.b #$13,$1a(a0)
loc_209f46:
	rts
loc_209f48:
	tst.b ($ff0f01).l
	beq.s loc_209f56
	jmp (sub_203b14).l
loc_209f56:
	cmpi.b #$a,$28(a0)
	beq.w loc_209ee4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f7a(pc,d0.w),d0
	jsr dat_209f7a(pc,d0.w)
	jsr (sub_203a68).l
	jmp (loc_207ae6).l
dat_209f7a:
	.incbin 40826, 282

sub_20a094:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a0cc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a0c4
	moveq #$0,d1
	bra.s loc_20a0cc
loc_20a0c4:
	cmpi.w #$3,d1
	bcs.s loc_20a0cc
	moveq #$2,d1
loc_20a0cc:
	add.w d1,d0
	rts

sub_20a0d0:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a0f2
	tst.b ($ff1956).l
	beq.s loc_20a0ea
	tst.b $29(a0)
	bne.s loc_20a0f2
	rts
loc_20a0ea:
	tst.b $29(a0)
	beq.s loc_20a0f2
	rts
loc_20a0f2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cf2).l
	tst.b $28(a0)
	bne.s loc_20a114
	tst.b ($ff0f01).l
	beq.s loc_20a114
	jmp (loc_207ae6).l
loc_20a114:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209f48
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a12c(pc,d0.w),d1
	jmp dat_20a12c(pc,d1.w)
dat_20a12c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a4ec,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a176
	tst.b $29(a0)
	bne.s loc_20a176
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a176:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a094
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a1a2
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a1a2:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a1fc
	move.b $25(a0),d0
	beq.s loc_20a1dc
	bsr.w sub_2039b0
	jsr (sub_206ede).l
	tst.w d1
	bpl.w loc_20a1ea
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a1ea
loc_20a1dc:
	tst.b $1(a0)
	bpl.s loc_20a1ea
	lea ($d000).w,a1
	bsr.w sub_20a0d0
loc_20a1ea:
	tst.w ($ff190e).l
	bne.s loc_20a1fc
	lea (dat_20a464).l,a1
	bsr.w sub_205c72
loc_20a1fc:
	bsr.w sub_203a68
	jmp (loc_207ae6).l
	move.w #$96,d0
	jsr (sub_202282).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207ab0
	bne.s loc_20a23e
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a23e:
	bsr.w sub_207ab0
	bne.s loc_20a268
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a268:
	bsr.w sub_20a094
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203a68
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a28e(pc,d0.w),d1
	jsr dat_20a28e(pc,d1.w)
	bra.w sub_203a68
dat_20a28e:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a2aa
	andi.b #$7f,$2(a0)
loc_20a2aa:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a4ec,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a2f2
	bsr.w sub_203a12
	addi.w #$18,$12(a0)
	rts
loc_20a2f2:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a318
loc_20a302:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c32).l
loc_20a318:
	cmpi.b #$1,d0
	bne.s loc_20a364
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a35a
	bset.b #$1,($ff150d).l
	beq.w loc_20a302
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a35a
	bset.b #$2,($ff150d).l
	beq.w loc_20a302
loc_20a35a:
	move.w #$95,d0
	jmp (sub_202282).l
loc_20a364:
	cmpi.b #$2,d0
	bne.s loc_20a382

sub_20a36a:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202282).l
loc_20a382:
	cmpi.b #$3,d0
	bne.s loc_20a3e4

sub_20a388:
	move.b #$1,($ff151f).l
	move.w #$4b0,($d032).w
	move.b #$3,($d200).w
	move.b #$1,($d21c).w
	move.b #$3,($d240).w
	move.b #$2,($d25c).w
	move.b #$3,($d280).w
	move.b #$3,($d29c).w
	move.b #$3,($d2c0).w
	move.b #$4,($d2dc).w
	tst.b ($ff152e).l
	bne.s loc_20a3d8
	move.w #$82,d0
	jsr (sub_205c32).l
loc_20a3d8:
	move.w #$6d,d0
	jmp (sub_205c32).l
	dc.b $4e,$75
loc_20a3e4:
	cmpi.b #$4,d0
	bne.s loc_20a426
loc_20a3ea:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a41c
	move.w #$82,d0
	jsr (sub_205c32).l
loc_20a41c:
	move.w #$6c,d0
	jmp (sub_205c32).l
loc_20a426:
	cmpi.b #$5,d0
	bne.s loc_20a436
	move.w #$12c,($ff190e).l
	rts
loc_20a436:
	cmpi.b #$6,d0
	bne.s loc_20a450
	move.w #$9d,d0
	jsr (sub_202282).l
	move.b #$1,($ff156f).l
	rts
loc_20a450:
	bsr.w sub_20a36a
	bsr.w sub_20a388
	bra.s loc_20a3ea
	subq.w #$1,$1e(a0)
	bmi.w sub_203b14
	rts
dat_20a464:
	.incbin 42084, 586
loc_20a6ae:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6c2(pc,d0.w),d0
	jsr dat_20a6c2(pc,d0.w)
	jmp (sub_203a68).l
dat_20a6c2:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a702,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a6fc
	jmp (sub_203b14).l
loc_20a6fc:
	subq.w #$2,$c(a0)
	rts
	.incbin 42754, 82
	tst.b $28(a0)
	bmi.w loc_20a6ae
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a76a(pc,d0.w),d0
	jmp dat_20a76a(pc,d0.w)
dat_20a76a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a804,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a79a
	move.b #$3,$1a(a0)
	bra.s loc_20a7ba
loc_20a79a:
	tst.w ($ff1588).l
	beq.s loc_20a7a8
	move.b #$2,$1a(a0)
loc_20a7a8:
	tst.b $28(a0)
	beq.s loc_20a7ba
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a7ba:
	tst.b $28(a0)
	bne.s loc_20a7fe
	tst.b $29(a0)
	beq.s loc_20a7ea
	tst.w ($ff1512).l
	beq.s loc_20a7d6
	bclr.b #$5,$2(a0)
	bra.s loc_20a7fe
loc_20a7d6:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a7fe
	eori.b #$20,$2(a0)
	bra.s loc_20a7fe
loc_20a7ea:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a7fe
	move.b #$2,$1a(a0)
loc_20a7fe:
	jmp (sub_203a68).l
	.incbin 43012, 168

sub_20a8ac:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a8c8
	move.l d1,(a3)
loc_20a8c8:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a8f2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c32).l
loc_20a8f2:
	rts
loc_20a8f4:
	tst.w ($ff1588).l
	beq.s loc_20a94a
	bsr.w sub_20ab46
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
	lea (dat_20aca6).l,a2
	moveq #$2,d6
	bsr.w sub_20acfe
	bra.w loc_20a9a4
loc_20a94a:
	tst.b ($ff1511).l
	beq.s loc_20a96e
	bpl.s loc_20a958
	bsr.w sub_20aaf0
loc_20a958:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20abe0
loc_20a96e:
	tst.b ($ff150f).l
	beq.s loc_20a9a4
	bpl.s loc_20a97c
	bsr.w sub_20aadc
loc_20a97c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a9a0
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a9a0:
	bsr.w sub_20abd6
loc_20a9a4:
	tst.w ($ff1588).l
	bne.w loc_20aa50
	tst.b ($ff1510).l
	beq.w loc_20aa50
	tst.w ($f63a).w
	bne.w loc_20aa50
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20aaae
	tst.b ($f7cc).w
	bne.s loc_20a9fa
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a9fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a9fa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a9fa
	move.b #$9,(a1)
loc_20a9fa:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20acec
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20acf6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20aa4c
	move.w #$63,d1
loc_20aa4c:
	bsr.w sub_20acf6
loc_20aa50:
	tst.b ($ff150e).l
	beq.s loc_20aa62
	clr.b ($ff150e).l
	bsr.w sub_20accc
loc_20aa62:
	tst.b ($f7d6).w
	beq.s loc_20aaac
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aa82
	move.l #$6d400001,d0
loc_20aa82:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ab64
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aaa2
	move.l #$6e800001,d0
loc_20aaa2:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ab64
loc_20aaac:
	rts
loc_20aaae:
	btst.b #$7,($ff152e).l
	bne.s loc_20aada
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207414
	move.b #$1,($ff150c).l
loc_20aada:
	rts

sub_20aadc:
	move.l #$73600002,($c00004).l
	lea dat_20ab42(pc),a2
	move.w #$2,d2
	bra.s loc_20ab0c

sub_20aaf0:
	lea ($c00000).l,a6
	bsr.w sub_20accc
	move.l #$70600002,($c00004).l
	lea dat_20ab3a(pc),a2
	move.w #$6,d2
loc_20ab0c:
	lea (dat_2330bc).l,a1
loc_20ab12:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ab2e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ab22:
	move.l (a3)+,(a6)
	dbf d1,loc_20ab22
loc_20ab28:
	dbf d2,loc_20ab12
	rts
loc_20ab2e:
	move.l #$0,(a6)
	dbf d1,loc_20ab2e
	bra.s loc_20ab28
dat_20ab3a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ab42:
	dc.b $ff,$ff,$00,$00

sub_20ab46:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20acc2
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20acc2

sub_20ab64:
	lea (dat_20ac9e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ab74:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab78:
	sub.l d3,d1
	bcs.s loc_20ab80
	addq.w #$1,d2
	bra.s loc_20ab78
loc_20ab80:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ab8a
	move.w #$1,d4
loc_20ab8a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ab96
	tst.w d6
	bne.s loc_20abc8
loc_20ab96:
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
loc_20abbc:
	addi.l #$400000,d0
	dbf d6,loc_20ab74
	rts
loc_20abc8:
	moveq #$f,d5
loc_20abca:
	move.l #$0,(a6)
	dbf d5,loc_20abca
	bra.s loc_20abbc

sub_20abd6:
	lea (dat_20aca6).l,a2
	moveq #$2,d6
	bra.s loc_20abe8

sub_20abe0:
	lea (dat_20ac9a).l,a2
	moveq #$5,d6
loc_20abe8:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20abf0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20abf4:
	sub.l d3,d1
	bcs.s loc_20abfc
	addq.w #$1,d2
	bra.s loc_20abf4
loc_20abfc:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac06
	move.w #$1,d4
loc_20ac06:
	tst.w d4
	beq.s loc_20ac34
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
loc_20ac34:
	addi.l #$400000,d0
	dbf d6,loc_20abf0
	rts
	.incbin 44096, 32
loc_20ac60:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac64:
	sub.l d3,d1
	bcs.s loc_20ac6c
	addq.w #$1,d2
	bra.s loc_20ac64
loc_20ac6c:
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
	dbf d6,loc_20ac60
	rts
dat_20ac9a:
	dc.b $00,$01,$86,$a0
dat_20ac9e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aca6:
	dc.b $00,$00,$00,$64
dat_20acaa:
	dc.b $00,$00,$00,$0a
dat_20acae:
	dc.b $00,$00,$00,$01
dat_20acb2:
	.incbin 44210, 16

sub_20acc2:
	moveq #$3,d6
	lea (dat_20acb2).l,a2
	bra.s sub_20acfe

sub_20accc:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ace2
	moveq #$9,d1
loc_20ace2:
	lea (dat_20acae).l,a2
	moveq #$0,d6
	bra.s sub_20acfe

sub_20acec:
	lea (dat_20acae).l,a2
	moveq #$0,d6
	bra.s sub_20acfe

sub_20acf6:
	lea (dat_20acaa).l,a2
	moveq #$1,d6

sub_20acfe:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ad06:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad0a:
	sub.l d3,d1
	bcs.s loc_20ad12
	addq.w #$1,d2
	bra.s loc_20ad0a
loc_20ad12:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ad1c
	move.w #$1,d4
loc_20ad1c:
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
	dbf d6,loc_20ad06
	rts
	.incbin 44370, 946
	addq.b #$2,$24(a0)
	move.l #$20b220,$4(a0)
	move.w #$435e,$2(a0)
	move.b #$4,$1(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.b #$1,$18(a0)
	move.b #$e7,$20(a0)
	move.w #$c0,$30(a0)
	move.w #$60,$2e(a0)
	btst.b #$7,$28(a0)
	bne.s loc_20b154
	move.w #$a0,$30(a0)
	move.w #$50,$2e(a0)
loc_20b154:
	move.l #$10000,$2a(a0)
	btst.b #$6,$28(a0)
	bne.s loc_20b168
	neg.l $2a(a0)
loc_20b168:
	tst.b $21(a0)
	beq.w loc_20b1f8
	tst.b $1(a0)
	bpl.s loc_20b180
	move.w #$b5,d0
	jsr (sub_202282).l
loc_20b180:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a1),d5
	move.w $c(a1),d6
	sub.w $8(a0),d5
	sub.w $c(a0),d6
	move.w d6,d0
	subi.w #$fff8,d0
	subi.w #$10,d0
	bcc.s loc_20b1ae
	move.w #$0,$10(a1)
	bra.w loc_20b1f8
loc_20b1ae:
	move.w d5,d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.s loc_20b1ca
	move.w #$700,$12(a1)
	tst.w d6
	bpl.s loc_20b1c8
	neg.w $12(a1)
loc_20b1c8:
	bra.s loc_20b1e6
loc_20b1ca:
	move.w #$4f3,$10(a1)
	tst.w d5
	bpl.s loc_20b1d8
	neg.w $10(a1)
loc_20b1d8:
	move.w #$4f3,$12(a1)
	tst.w d6
	bpl.s loc_20b1e6
	neg.w $12(a1)
loc_20b1e6:
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
loc_20b1f8:
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20b206
	lea $c(a0),a1
loc_20b206:
	move.l $2a(a0),d0
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20b21e
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20b21e:
	rts
	.incbin 45600, 188
	move.b $28(a0),d0
	subq.b #$1,d0
	bmi.s loc_20b2e8
	bra.w loc_20b504
loc_20b2e8:
	jsr (sub_20e872).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b308(pc,d0.w),d0
	jsr dat_20b308(pc,d0.w)
	jsr (sub_203a68).l
	jmp (loc_207ae6).l
dat_20b308:
	.incbin 45832, 508
loc_20b504:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b518(pc,d0.w),d0
	jsr dat_20b518(pc,d0.w)
	jmp (sub_203a68).l
dat_20b518:
	.incbin 46360, 964
	move.b $28(a0),d0
	addi.b #$ff,d0
	bmi.s loc_20b8ea
	bra.w loc_20bbe8
loc_20b8ea:
	jsr (sub_20e872).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b914(pc,d0.w),d0
	jsr dat_20b914(pc,d0.w)
	lea dat_20bafc(pc),a1
	jsr (sub_205c72).l
	jsr (sub_203a68).l
	jmp (loc_207ae6).l
dat_20b914:
	.incbin 47380, 488
dat_20bafc:
	.incbin 47868, 236
loc_20bbe8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bbfc(pc,d0.w),d0
	jsr dat_20bbfc(pc,d0.w)
	jmp (sub_203a68).l
dat_20bbfc:
	.incbin 48124, 752
loc_20beec:
	moveq #$2,d0
	jmp (sub_20244c).l

sub_20bef4:
	rts
	dc.b $00,$00

sub_20bef8:
	cmpi.b #$f,d0
	bne.s loc_20bf04
	move.w #$4f2,$2(a0)
loc_20bf04:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bf66(pc,d0.w),d0
	jsr dat_20bf66(pc,d0.w)
	jsr (sub_203a68).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bf44
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bf44:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bf62
	rts
loc_20bf62:
	bra.w loc_20cf6e
dat_20bf66:
	dc.b $00,$10,$00,$6e
dat_20bf6a:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20bf92
	move.w #$3fc,d0
loc_20bf92:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c114,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20bf6a(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20c03e(pc)
	tst.b $1a(a0)
	beq.s loc_20bfe8
	lea ($d000).w,a1
	jmp (sub_208cf2).l
loc_20bfe8:
	lea ($d000).w,a1
	jsr (sub_208cf2).l
	beq.s loc_20c03c
	btst.b #$3,$22(a0)
	beq.s loc_20c03c
	tst.b ($ff1521).l
	bne.s loc_20c03c
	tst.b ($ff151f).l
	bne.s loc_20c03c
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20c03a
	tst.w $30(a0)
	bne.s loc_20c03a
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207374).l
loc_20c03a:
	movea.l (a7)+,a0
loc_20c03c:
	rts

sub_20c03e:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20c058
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20c05a(pc,d0.w),d0
	jmp dat_20c05a(pc,d0.w)
loc_20c058:
	rts
dat_20c05a:
	dc.b $00,$08,$00,$1c,$00,$32,$00,$48
	jsr sub_20c0b6(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	jsr sub_20c0b6(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 49292, 42

sub_20c0b6:
	tst.b $3a(a0)
	beq.s loc_20c0d4
	subq.b #$1,$3a(a0)
	bne.s loc_20c112
	btst.b #$7,$1(a0)
	beq.s loc_20c0d4
	move.w #$b7,d0
	jsr (sub_202282).l
loc_20c0d4:
	tst.b $3c(a0)
	beq.s loc_20c0f4
	subq.b #$8,$3b(a0)
	bcc.s loc_20c112
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20c112
loc_20c0f4:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c112
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20c112:
	rts
	.incbin 49428, 350
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c2a8(pc,d0.w),d0
	jsr dat_20c2a8(pc,d0.w)
	jsr (sub_203a68).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c2a4
	rts
loc_20c2a4:
	bra.w loc_20cf6e
dat_20c2a8:
	dc.b $00,$04,$00,$a0
	ori.b #$4,$1(a0)
	move.w #$39f,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c3d2,$4(a0)
	move.b $28(a0),d0
	lsr.b #$2,d0
	move.b d0,$1a(a0)
	move.b #$10,$19(a0)
	move.b #$e,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	beq.s loc_20c348
	moveq #$20,d1
	cmpi.b #$1,d0
	beq.s loc_20c302
	moveq #$a,d1
loc_20c302:
	jsr (sub_207ac6).l
	bne.s loc_20c348
	move.b d1,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$34(a1)
	move.b #$20,$38(a1)
	move.b #$2,$28(a1)
	cmpi.b #$20,d1
	beq.s loc_20c348
	move.b #$18,$38(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	ori.b #$4,d0
	move.b d0,$28(a1)
loc_20c348:
	jsr sub_20c35e(pc)
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cf2).l

sub_20c35e:
	btst.b #$2,$28(a0)
	bne.s loc_20c37a
	jsr sub_20c390(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
loc_20c37a:
	jsr sub_20c390(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20c390:
	lea ($d000).w,a1
	move.w $8(a0),d0
	move.b $19(a0),d1
	ext.w d1
	sub.w d1,d0
	move.w $8(a1),d1
	sub.w d0,d1
	bcs.s loc_20c3be
	cmpi.w #$50,d1
	bcc.s loc_20c3b0
	rts
loc_20c3b0:
	subq.b #$8,$3b(a0)
	bcc.s loc_20c3d0
	move.b #$0,$3b(a0)
	rts
loc_20c3be:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c3d0
	move.b #$20,$3b(a0)
loc_20c3d0:
	rts
	.incbin 50130, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c3f6(pc,d0.w),d0
	jsr dat_20c3f6(pc,d0.w)
	jmp (sub_203a68).l
dat_20c3f6:
	dc.b $00,$04,$00,$3a
	ori.b #$4,$1(a0)
	move.w #$34e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c740,$4(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c470(pc,d0.w),d0
	jsr dat_20c470(pc,d0.w)
	jsr sub_20c480(pc)
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c462
	rts
loc_20c462:
	bra.w loc_20cf6e

sub_20c466:
	lea ($d000).w,a1
	jmp (loc_208cec).l
dat_20c470:
	.incbin 50288, 16

sub_20c480:
	tst.b $3f(a0)
	beq.s loc_20c4c0
	btst.b #$3,$22(a0)
	bne.s loc_20c49a
	tst.b $3e(a0)
	beq.s loc_20c4c0
	subq.b #$8,$3e(a0)
	bra.s loc_20c4a6
loc_20c49a:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20c4c0
	addq.b #$8,$3e(a0)
loc_20c4a6:
	move.b $3e(a0),d0
	jsr (sub_200786).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
loc_20c4c0:
	rts
	.incbin 50370, 194
loc_20c584:
	jsr sub_20c466(pc)
	tst.b $38(a0)
	bne.s loc_20c5c6
	clr.b $3f(a0)
	lea (dat_20c600).l,a1
	cmpi.b #$3,$28(a0)
	beq.s loc_20c5a6
	lea (dat_20c620).l,a1
loc_20c5a6:
	moveq #$0,d0
	move.b $39(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a1,d0.w),a1
	move.b (a1)+,$38(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$36(a0)
	move.w (a1)+,$34(a0)
loc_20c5c4:
	rts
loc_20c5c6:
	move.w $34(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.w $34(a0),d0
	andi.w #$ff00,d0
	move.w d0,$12(a0)
	subq.b #$1,$38(a0)
	bne.s loc_20c5c4
	addq.b #$1,$39(a0)
	cmpi.b #$8,$39(a0)
	bne.s loc_20c584
	move.b #$2,$39(a0)
	bra.s loc_20c584
dat_20c600:
	.incbin 50688, 32
dat_20c620:
	.incbin 50720, 594
	move.b $28(a0),d0
	cmpi.b #$1,d0
	beq.w loc_20c918
	cmpi.b #$2,d0
	beq.w loc_20cb36
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c8bc(pc,d0.w),d0
	jsr dat_20c8bc(pc,d0.w)
	jsr (sub_203a68).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c8b8
	rts
loc_20c8b8:
	bra.w loc_20cf6e
dat_20c8bc:
	dc.b $00,$04,$00,$5a
	ori.b #$4,$1(a0)
	move.w #$379,$2(a0)
	move.b #$2,$18(a0)
	move.l #$20cc26,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	jsr (sub_207ab0).l
	beq.s loc_20c8f6
	rts
loc_20c8f6:
	move.b #$27,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),d0
	addq.w #$8,d0
	move.w d0,$c(a1)
	move.b #$1,$28(a1)
	addq.b #$2,$24(a0)
	rts
loc_20c918:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c94e(pc,d0.w),d0
	jsr dat_20c94e(pc,d0.w)
	jsr (sub_203a68).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c94a
	rts
loc_20c94a:
	bra.w loc_20cf6e
dat_20c94e:
	dc.b $00,$14,$00,$52,$00,$b8,$01,$2c
	dc.b $01,$6c
loc_20c958:
	lea ($d000).w,a1
	jmp (sub_208cf2).l
	ori.b #$4,$1(a0)
	move.w #$379,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20cc26,$4(a0)
	move.b #$10,$19(a0)
	move.b #$14,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$1,$1a(a0)
	addq.b #$2,$24(a0)
	rts
	tst.b $3a(a0)
	bne.s loc_20c9c6
	bsr.w sub_20cec6
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcc.s loc_20c9b6
	neg.w d0
loc_20c9b6:
	cmpi.w #$78,d0
	bcs.s loc_20c9c0
	bra.w loc_20c958
loc_20c9c0:
	move.b #$3c,$3a(a0)
loc_20c9c6:
	subq.b #$1,$3a(a0)
	beq.s loc_20c9f4
	tst.b ($ff152e).l
	beq.s loc_20c9f0
	cmpi.b #$1,($ff152e).l
	beq.s loc_20c9e6
	tst.b ($ff156a).l
	bne.s loc_20c9f0
loc_20c9e6:
	lea dat_20cc04(pc),a1
	jsr (sub_205c72).l
loc_20c9f0:
	bra.w loc_20c958
loc_20c9f4:
	move.w #$0,$3a(a0)
	move.b #$1,$1a(a0)
	addq.b #$2,$24(a0)
	rts
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20ca18
	move.b #$20,$3b(a0)
loc_20ca18:
	move.b $3b(a0),d0
	ext.w d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	cmpi.b #$20,$3b(a0)
	beq.s loc_20ca34
	bra.w loc_20c958
loc_20ca34:
	jsr sub_20cad0(pc)
	lea ($d000).w,a1
	bsr.s sub_20ca6c
	bne.s loc_20ca4c
	move.b #$8,$3a(a0)
	addq.b #$2,$24(a0)
	rts
loc_20ca4c:
	move.w #$f900,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts

sub_20ca6c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cf2).l
	tst.b $3a(a0)
	beq.s loc_20ca86
	subq.b #$1,$3a(a0)
	bra.s loc_20cab6
loc_20ca86:
	subq.b #$4,$3b(a0)
	bcc.s loc_20ca92
	move.b #$0,$3b(a0)
loc_20ca92:
	move.b $3b(a0),d0
	ext.w d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	cmpi.b #$0,$3b(a0)
	beq.s loc_20caac
	bra.s loc_20cab6
loc_20caac:
	move.b #$3c,$3a(a0)
	addq.b #$2,$24(a0)
loc_20cab6:
	bra.w loc_20c958
	tst.b $3a(a0)
	beq.s loc_20cac8
	subq.b #$1,$3a(a0)
	bra.w loc_20c958
loc_20cac8:
	move.b #$2,$24(a0)
	rts

sub_20cad0:
	tst.b ($ff152e).l
	beq.s loc_20cb1c
	cmpi.b #$1,($ff152e).l
	beq.s loc_20caea
	tst.b ($ff156a).l
	bne.s loc_20cb1c
loc_20caea:
	jsr (sub_207ab0).l
	bne.s loc_20cb00
	bsr.s sub_20cb1e
	move.w $8(a0),d0
	subi.w #$18,d0
	move.w d0,$8(a1)
loc_20cb00:
	jsr (sub_207ab0).l
	bne.s loc_20cb1c
	bsr.s sub_20cb1e
	move.w $8(a0),d0
	addi.w #$18,d0
	move.w d0,$8(a1)
	move.b #$1,$3a(a1)
loc_20cb1c:
	rts

sub_20cb1e:
	move.b #$27,$0(a1)
	move.b #$2,$28(a1)
	move.w $c(a0),d0
	addq.b #$8,d0
	move.w d0,$c(a1)
	rts
loc_20cb36:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb50(pc,d0.w),d0
	jsr dat_20cb50(pc,d0.w)
	jsr (sub_203a68).l
	jmp (loc_207ae6).l
dat_20cb50:
	.incbin 52048, 180
dat_20cc04:
	.incbin 52228, 706

sub_20cec6:
	lea ($d000).w,a1
	rts
	.incbin 52940, 162
loc_20cf6e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cf92
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cf92:
	jmp (sub_203b14).l
	.incbin 53144, 3670
	jsr (sub_20e8ba).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20df10
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de0e(pc,d0.w),d0
	jmp dat_20de0e(pc,d0.w)
dat_20de0e:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080108,$16(a0)
	move.l #$20e092,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20dfe8
	bsr.w sub_20dff6
	tst.b $28(a0)
	bmi.s loc_20de5c
	move.b #$1,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20de5c:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20def0
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20de94
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20dfe8
loc_20de94:
	move.b d0,$2e(a0)
	lea dat_20e014(pc),a1
	jsr (sub_205c72).l
	jsr (sub_203a68).l
	move.w $2a(a0),d0
	jmp (loc_207aea).l
	.incbin 57010, 62

sub_20def0:
	move.b $2e(a0),d0
	jsr (sub_200786).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20df10:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20df1e(pc,d0.w),d0
	jmp dat_20df1e(pc,d0.w)
dat_20df1e:
	dc.b $00,$0a,$00,$4a,$00,$4a,$00,$90
	dc.b $00,$9e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$c080408,$16(a0)
	move.l #$20e0a6,$4(a0)
	bsr.w sub_20dff6
	tst.b $28(a0)
	bmi.s loc_20df5e
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20df5e:
	move.b #$8,$24(a0)
	bra.w sub_20dfe8
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206ede).l
	tst.w d1
	bpl.s loc_20dfa2
	addq.b #$2,$24(a0)
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
loc_20dfa2:
	jsr (sub_203a68).l
	jmp (loc_207ae6).l
	.incbin 57262, 58

sub_20dfe8:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20dff6:
	lea dat_20e0ca(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20e014:
	.incbin 57364, 182
dat_20e0ca:
	.incbin 57546, 1960

sub_20e872:
	tst.b ($ff156a).l
	beq.s loc_20e8b8
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e88a
	tst.b $28(a0)
	beq.s loc_20e8b8
loc_20e88a:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b14).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e8b6
	move.w #$9e,d0
	jsr (sub_202282).l
loc_20e8b6:
	addq.l #$4,a7
loc_20e8b8:
	rts

sub_20e8ba:
	tst.b $28(a0)
	bmi.s loc_20e8ea
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e8da
	tst.b ($ff156d).l
	bne.s loc_20e8ea
	addq.l #$4,a7
	jmp (loc_207ae6).l
loc_20e8da:
	tst.b ($ff156a).l
	bne.s loc_20e8ea
	addq.l #$4,a7
	jmp (sub_203b14).l
loc_20e8ea:
	rts
	.incbin 59628, 284
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea16(pc,d0.w),d0
	jmp dat_20ea16(pc,d0.w)
dat_20ea16:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20f114,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20f0d4).l,a2
loc_20ea64:
	jsr (sub_207ab0).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20f114,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20eab6
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20eab6:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20ea64
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20eade
	bge.s loc_20ead4
	neg.w d0
loc_20ead4:
	add.w d0,$a(a0)
	jmp (sub_203a68).l
loc_20eade:
	addq.b #$4,$24(a0)
	jmp (sub_203a68).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20eb02
	bge.s loc_20eaf8
	neg.w d0
loc_20eaf8:
	add.w d0,$8(a0)
	jmp (sub_203a68).l
loc_20eb02:
	addq.b #$4,$24(a0)
	jmp (sub_203a68).l
	tst.b $1e(a0)
	beq.s loc_20eb1c
	subq.b #$1,$1e(a0)
	jmp (sub_203a68).l
loc_20eb1c:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20eb36
	bge.s loc_20eb2c
	neg.w d0
loc_20eb2c:
	add.w d0,$a(a0)
	jmp (sub_203a68).l
loc_20eb36:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20244c).l
	tst.b $1e(a0)
	beq.s loc_20eb58
	subq.b #$1,$1e(a0)
	jmp (sub_203a68).l
loc_20eb58:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20eb72
	bge.s loc_20eb68
	neg.w d0
loc_20eb68:
	add.w d0,$8(a0)
	jmp (sub_203a68).l
loc_20eb72:
	jmp (sub_203b14).l
	tst.l ($f680).w
	bne.s loc_20eb8c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b14).l
loc_20eb8c:
	rts
	.incbin 60302, 1350
dat_20f0d4:
	.incbin 61652, 340

sub_20f228:
	jmp (loc_2064e6).l
dat_20f22e:
	.incbin 61998, 16
dat_20f23e:
	.incbin 62014, 198
dat_20f304:
	.incbin 62212, 48
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20f356
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20f356:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,dat_20f304
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f37e
	bge.s loc_20f374
	neg.w d0
loc_20f374:
	add.w d0,$a(a0)
	jmp (loc_203a6e).l
loc_20f37e:
	addq.b #$4,$24(a0)
	jmp (loc_203a6e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f3a2
	bge.s loc_20f398
	neg.w d0
loc_20f398:
	add.w d0,$8(a0)
	jmp (loc_203a6e).l
loc_20f3a2:
	addq.b #$4,$24(a0)
	jmp (loc_203a6e).l
	tst.b $1e(a0)
	beq.s loc_20f3bc
	subq.b #$1,$1e(a0)
	jmp (loc_203a6e).l
loc_20f3bc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f3d6
	bge.s loc_20f3cc
	neg.w d0
loc_20f3cc:
	add.w d0,$a(a0)
	jmp (loc_203a6e).l
loc_20f3d6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp ($202448).l
	tst.b $1e(a0)
	beq.s loc_20f3f8
	subq.b #$1,$1e(a0)
	jmp (loc_203a6e).l
loc_20f3f8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f412
	bge.s loc_20f408
	neg.w d0
loc_20f408:
	add.w d0,$8(a0)
	jmp (loc_203a6e).l
loc_20f412:
	jmp (loc_203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (loc_203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp ($2064ec).l
	.incbin 64206, 796
	jmp (dat_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 15408
dat_2372ec:
	.incbin 226028, 256
dat_2373ec:
	.incbin 226284, 4096
dat_2383ec:
	.incbin 230380, 4796
dat_2396a8:
	.incbin 235176, 15298
dat_23d26a:
	.incbin 250474, 768
dat_23d56a:
	.incbin 251242, 166
dat_23d610:
	.incbin 251408, 10736
