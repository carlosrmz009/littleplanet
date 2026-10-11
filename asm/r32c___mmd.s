; R32C__.MMD
; disassembled from the disc; code only, data comes from data/R32C__.MMD at build time
	.file "R32C__.MMD", 262144

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
	bsr.w sub_20789a
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
	lea (dat_20f0d0).l,a2
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
	bsr.w sub_203570
	bsr.w sub_203476
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
	jsr (sub_20f02c).l
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
	jsr (sub_205c2e).l
	bsr.w sub_20789a
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
	jsr (sub_2078b0).l
	jsr (sub_203984).l
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
	jsr (sub_203b2e).l
	tst.w ($ff190e).l
	bne.s loc_20192a
	bsr.w sub_200184
loc_20192a:
	jsr (sub_20bcf8).l
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
	jmp (sub_205c2e).l
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
	jmp (sub_205c2e).l
loc_201b64:
	tst.b ($ff151f).l
	bne.s loc_201b5a
	tst.b ($ff1520).l
	bne.s loc_201b5a
	move.w #$90,d0
	jmp (sub_205c2e).l
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
	jmp (sub_205c2e).l
loc_201ba0:
	tst.b ($ff151f).l
	bne.s loc_201b96
	tst.b ($ff1520).l
	bne.s loc_201b96
	move.w #$91,d0
	jmp (sub_205c2e).l
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
	bsr.w sub_205b50
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
	jsr (sub_20f02c).l
	jsr (sub_202236).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20306e
	bsr.w sub_20252a
	jmp (loc_20a6f8).l
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
	bsr.w sub_20306e
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
	lea (dat_20f0e0).l,a1
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
	lea (dat_20f0e0).l,a1
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
	dc.b $00,$04,$00,$00,$26,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_202888:
	.incbin 10376, 32
loc_2028a8:
	tst.b ($ff1522).l
	beq.s loc_2028c8
	jsr (sub_206ca6).l
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
	dc.b $00,$20,$01,$ac
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
	moveq #$d,d2
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
	bsr.w sub_202ce4
	bsr.w sub_202d84
	bsr.w sub_203618
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_20300e
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202fda
	lea ($a838).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202fa6
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a20
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a20
	moveq #$0,d0
loc_202a20:
	bsr.w sub_202f76
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
	asl.l #$6,d2
	divs.w #$1c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$6,d6
	lea ($a946).w,a1
loc_202ae4:
	move.w d3,d0
	neg.w d0
	move.w d0,-(a1)
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ae4
	lea ($a946).w,a1
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b00:
	move.w d0,(a1)+
	dbf d6,loc_202b00
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b0e:
	move.w d0,(a1)+
	dbf d6,loc_202b0e
	lea ($a800).w,a2
	moveq #$d,d6
loc_202b1a:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bf8).l,a3
	move.b $0(a3,d6.w),d5
loc_202b30:
	move.w d1,(a1)+
	dbf d5,loc_202b30
	dbf d6,loc_202b1a
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b42:
	move.w d0,(a1)+
	dbf d6,loc_202b42
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b50:
	move.w d0,(a1)+
	dbf d6,loc_202b50
	move.w ($f710).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b5e:
	move.w d0,(a1)+
	dbf d6,loc_202b5e
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202b6c:
	move.w d0,(a1)+
	dbf d6,loc_202b6c
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
loc_202b90:
	move.w d3,d0
	neg.w d0
	move.w d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b90
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202ba8:
	move.w d0,(a1)+
	dbf d6,loc_202ba8
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
	bcs.s loc_202bf4
	cmpi.w #$1b,d1
	bcs.s loc_202bd8
	moveq #$1c,d1
loc_202bd8:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202c06).l,a3
	lea (dat_23d5e0).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c5a
loc_202bf4:
	bra.w loc_202c0c
dat_202bf8:
	dc.b $01,$01,$01,$01,$01,$01,$03,$03
	dc.b $01,$01,$03,$03,$03,$05
dat_202c06:
	dc.b $00,$38,$02,$50,$7f,$ff
loc_202c0c:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a838).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202c1e:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c4e
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c4e:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202c1e
	rts

sub_202c5a:
	cmp.w (a3),d4
	bcc.s loc_202c90
loc_202c5e:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c7a(pc,d2.w)
loc_202c6e:
	tst.w d1
	bmi.s loc_202c8e
	cmp.w (a3),d4
	bcc.s loc_202caa
loc_202c76:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c7a:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c6e
loc_202c8e:
	rts
loc_202c90:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202cb4
	cmp.w (a3),d4
	bcs.s loc_202c5e
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c5e
	bra.s loc_202cb4
loc_202caa:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c76
loc_202cb4:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202cbe:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202cbe
	lsr.w #$3,d6
loc_202cda:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202cda
	bra.s loc_202c6e

sub_202ce4:
	move.w ($f700).w,d4
	bsr.s sub_202d18
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d16
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d10
	bset.b #$2,($f754).w
	rts
loc_202d10:
	bset.b #$3,($f754).w
loc_202d16:
	rts

sub_202d18:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d2a
	bcs.s loc_202d5a
	bra.s loc_202d30
loc_202d2a:
	clr.w ($f73a).w
	rts
loc_202d30:
	cmpi.w #$10,d0
	blt.s loc_202d3a
	move.w #$10,d0
loc_202d3a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d48
	move.w ($f72a).w,d0
loc_202d48:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d5a:
	cmpi.w #$fff0,d0
	bge.s loc_202d64
	move.w #$fff0,d0
loc_202d64:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d48
	move.w ($f728).w,d0
	bra.s loc_202d48
	.incbin 11636, 16

sub_202d84:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d98
	subq.w #$5,d0
loc_202d98:
	btst.b #$1,$22(a6)
	beq.s loc_202db8
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e04
	subi.w #$40,d0
	bcc.s loc_202e04
	tst.b ($f75c).w
	bne.s loc_202e16
	bra.s loc_202dc4
loc_202db8:
	sub.w ($f73e).w,d0
	bne.s loc_202dca
	tst.b ($f75c).w
	bne.s loc_202e16
loc_202dc4:
	clr.w ($f73c).w
	rts
loc_202dca:
	cmpi.w #$60,($f73e).w
	bne.s loc_202df2
	move.w $14(a6),d1
	bpl.s loc_202dda
	neg.w d1
loc_202dda:
	cmpi.w #$800,d1
	bcc.s loc_202e04
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e64
	cmpi.w #$fffa,d0
	blt.s loc_202e2e
	bra.s loc_202e1c
loc_202df2:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e64
	cmpi.w #$fffe,d0
	blt.s loc_202e2e
	bra.s loc_202e1c
loc_202e04:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e64
	cmpi.w #$fff0,d0
	blt.s loc_202e2e
	bra.s loc_202e1c
loc_202e16:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e1c:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e6e
	bra.w loc_202e3a
loc_202e2e:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e3a:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e92
	cmpi.w #$ff00,d1
	bgt.s loc_202e5e
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e92
loc_202e5e:
	move.w ($f72c).w,d1
	bra.s loc_202e92
loc_202e64:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e6e:
	cmp.w ($f72e).w,d1
	blt.s loc_202e92
	subi.w #$800,d1
	bcs.s loc_202e8e
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e92
loc_202e8e:
	move.w ($f72e).w,d1
loc_202e92:
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
	bne.s loc_202ed4
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202ece
	bset.b #$0,($f754).w
	rts
loc_202ece:
	bset.b #$1,($f754).w
loc_202ed4:
	rts
	.incbin 11990, 122
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f74
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f6e
	bset.b #$4,($f756).w
	rts
loc_202f6e:
	bset.b #$5,($f756).w
loc_202f74:
	rts

sub_202f76:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fa4
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f9e
	bset.b #$0,($f756).w
	rts
loc_202f9e:
	bset.b #$1,($f756).w
loc_202fa4:
	rts

sub_202fa6:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fd8
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202fd2
	bset.b d6,($f756).w
	bra.s loc_202fd8
loc_202fd2:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fd8:
	rts

sub_202fda:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_20300c
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_203006
	bset.b d6,($f758).w
	bra.s loc_20300c
loc_203006:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_20300c:
	rts

sub_20300e:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203040
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20303a
	bset.b d6,($f75a).w
	bra.s loc_203040
loc_20303a:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203040:
	rts
	.incbin 12354, 20
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20312c
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_203210

sub_20306e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20312c
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203210
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203212
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20312a
	bclr.b #$0,(a2)
	beq.s loc_2030e0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20343e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203214
loc_2030e0:
	bclr.b #$1,(a2)
	beq.s loc_2030fa
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20343e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203214
loc_2030fa:
	bclr.b #$2,(a2)
	beq.s loc_203110
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20343e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20326a
loc_203110:
	bclr.b #$3,(a2)
	beq.s loc_20312a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20343e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20326a
loc_20312a:
	rts

sub_20312c:
	lea (dat_2034f6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203148
	bclr.b #$1,(a2)
	beq.s loc_203192
	move.w #$e0,d4
loc_203148:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031c2(pc,d0.w),a3
	beq.s loc_20317a
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20343e
	movem.l (a7)+,d4-d5
	bsr.w sub_203214
	movea.l (a7)+,a0
	bra.s loc_203192
loc_20317a:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203440
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203240
	movea.l (a7)+,a0
loc_203192:
	tst.b (a2)
	bne.s loc_203198
	rts
loc_203198:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031ac
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031ac:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2031d2
dat_2031c2:
	.incbin 12738, 16
loc_2031d2:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031da:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_203204
	add.w d0,d0
	movea.l dat_2031c2(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	movem.l (a7)+,d4-d5
	bsr.w sub_20343e
	bsr.w sub_203298
	movem.l (a7)+,d4-d5/a0
loc_203204:
	addi.w #$10,d4
	dbf d6,loc_2031da
	clr.b (a2)
	rts

sub_203210:
	rts

sub_203212:
	rts

sub_203214:
	moveq #$15,d6

sub_203216:
	move.l #$800000,d7
	move.l d0,d1
loc_20321e:
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	move.l d1,d0
	bsr.w sub_203298
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20321e
	rts

sub_203240:
	move.l #$800000,d7
	move.l d0,d1
loc_203248:
	movem.l d4-d5,-(a7)
	bsr.w sub_203318
	move.l d1,d0
	bsr.w sub_203298
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203248
	rts

sub_20326a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203274:
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	move.l d1,d0
	bsr.w sub_203298
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203274
	rts

sub_203298:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032d4
	btst.b #$3,(a0)
	bne.s loc_2032b4
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032b4:
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
loc_2032d4:
	btst.b #$3,(a0)
	bne.s loc_2032f6
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
loc_2032f6:
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

sub_203316:
	add.w (a3),d5

sub_203318:
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
	beq.s loc_203366
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
loc_203366:
	rts
	.incbin 13160, 214

sub_20343e:
	add.w (a3),d5

sub_203440:
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
	.incbin 13402, 28

sub_203476:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034a0
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2034c8

sub_2034a0:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034a4:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20343e
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203216
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034a4
	rts
loc_2034c8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034cc:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034f6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203538
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2034cc
	rts
dat_2034f6:
	.incbin 13558, 50
dat_203528:
	.incbin 13608, 16

sub_203538:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203528(pc,d0.w),a3
	beq.s loc_20355a
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20343e
	movem.l (a7)+,d4-d5
	bsr.w sub_203214
	bra.s loc_20356e
loc_20355a:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203440
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203240
loc_20356e:
	rts

sub_203570:
	moveq #$0,d0
	lea (dat_20f0d0).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20231e
	movea.l (a2)+,a0
	bsr.w sub_2035ca
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200474
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2035b4
	jmp (loc_20bcf0).l
loc_2035b4:
	btst.b #$1,($ff151c).l
	beq.s loc_2035c8
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035c8
	bsr.w sub_20244c
loc_2035c8:
	rts

sub_2035ca:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035d4:
	move.l d0,(a3)+
	dbf d1,loc_2035d4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035ea
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035ea:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2396a8).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203604:
	move.w d1,d0
	movea.l a3,a0
loc_203608:
	move.b (a1)+,(a0)+
	dbf d0,loc_203608
	lea $80(a3),a3
	dbf d2,loc_203604
	rts

sub_203618:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203692(pc,d0.w),d0
	jsr dat_203692(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20363e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20363e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20366c
	bcc.s loc_20366e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203662
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203662:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20366c:
	rts
loc_20366e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203686
	btst.b #$1,($d022).w
	beq.s loc_203686
	add.w d1,d1
	add.w d1,d1
loc_203686:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203692:
	.incbin 13970, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20374c(pc,d0.w),d0
	jmp dat_20374c(pc,d0.w)
dat_20374c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 14170, 554

sub_203984:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20398c:
	move.b (a0),d0
	beq.s loc_2039a2
	add.w d0,d0
	add.w d0,d0
	lea (dat_203da6).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039a2:
	lea $40(a0),a0
	dbf d7,loc_20398c
	rts
loc_2039ac:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039ea
	bpl.s loc_2039dc
	btst.b #$1,$2c(a0)
	beq.s loc_2039dc
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039ea
loc_2039dc:
	btst.b #$2,$2c(a0)
	bne.s loc_2039ea
	addi.w #$38,$12(a0)
loc_2039ea:
	tst.w $12(a0)
	bmi.s loc_2039fe
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2039fe
	move.w #$1000,$12(a0)
loc_2039fe:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a0e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a4a
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a4a
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a48
	neg.w d1
loc_203a48:
	add.w d1,d0
loc_203a4a:
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

sub_203a64:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
loc_203a6e:
	andi.w #$c,d0
	beq.w loc_203ad4
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203af0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203af0
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203aae
	cmpi.w #$800,d3
	bcs.s loc_203ac0
	subi.w #$800,d3
	bra.s loc_203ac0
loc_203aae:
	cmpi.w #$700,($f704).w
	bcs.s loc_203ac0
	cmpi.w #$100,d3
	bcc.s loc_203ac0
	addi.w #$800,d3
loc_203ac0:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203af0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203af0
loc_203ad4:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203af0
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203af0:
	rts
	.incbin 15090, 30

sub_203b10:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b16:
	move.l d1,(a1)+
	dbf d0,loc_203b16
	rts
dat_203b1e:
	.incbin 15134, 16

sub_203b2e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b3a:
	tst.w (a4)
	beq.w loc_203bfa
	moveq #$2,d6
loc_203b42:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bf2
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203ba8
	movea.l dat_203b1e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b8c
	cmpi.w #$800,d2
	bcs.s loc_203b9e
	subi.w #$800,d2
	bra.s loc_203b9e
loc_203b8c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b9e
	cmpi.w #$100,d2
	bcc.s loc_203b9e
	addi.w #$800,d2
loc_203b9e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bca
loc_203ba8:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bca
	.incbin 15282, 24
loc_203bca:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203be8
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203bec
loc_203be8:
	bsr.w sub_203c1c
loc_203bec:
	bset.b #$7,$1(a0)
loc_203bf2:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b42
loc_203bfa:
	lea $80(a4),a4
	dbf d7,loc_203b3a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c14
	move.l #$0,(a2)
	rts
loc_203c14:
	move.b #$0,-$5(a2)
	rts

sub_203c1c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c62
	btst.l #$1,d4
	bne.w loc_203cb0
loc_203c2e:
	cmpi.b #$50,d5
	beq.s loc_203c60
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
	bne.s loc_203c5a
	addq.w #$1,d0
loc_203c5a:
	move.w d0,(a2)+
	dbf d1,loc_203c2e
loc_203c60:
	rts
loc_203c62:
	btst.l #$1,d4
	bne.w loc_203cf6
loc_203c6a:
	cmpi.b #$50,d5
	beq.s loc_203cae
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
	bne.s loc_203ca8
	addq.w #$1,d0
loc_203ca8:
	move.w d0,(a2)+
	dbf d1,loc_203c6a
loc_203cae:
	rts
loc_203cb0:
	cmpi.b #$50,d5
	beq.s loc_203cf4
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
	bne.s loc_203cee
	addq.w #$1,d0
loc_203cee:
	move.w d0,(a2)+
	dbf d1,loc_203cb0
loc_203cf4:
	rts
loc_203cf6:
	cmpi.b #$50,d5
	beq.s loc_203d48
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
	bne.s loc_203d42
	addq.w #$1,d0
loc_203d42:
	move.w d0,(a2)+
	dbf d1,loc_203cf6
loc_203d48:
	rts
	.incbin 15690, 92
dat_203da6:
	.incbin 15782, 246

sub_203e9c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203eae
	move.w #$0,(a1)
	rts
loc_203eae:
	tst.w (a1)
	bne.s loc_203eb8
	move.b #$1,$1(a1)
loc_203eb8:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f02
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ef4
	neg.w $10(a0)
loc_203ef4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c2e
loc_203f02:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f20
	cmpa.w #$d040,a0
	beq.s loc_203f20
	tst.b ($ff1906).l
	beq.s loc_203f20
	jmp (loc_2075cc).l
loc_203f20:
	move.b $2a(a0),d0
	beq.s loc_203f4a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f3c
	cmpi.b #$2d,d0
	bcs.s loc_203f46
	move.b #$2d,d0
	bra.s loc_203f46
loc_203f3c:
	cmpi.b #$1e,d0
	bcs.s loc_203f46
	move.b #$1e,d0
loc_203f46:
	move.b d0,$2a(a0)
loc_203f4a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f58(pc,d0.w),d1
	jmp dat_203f58(pc,d1.w)
dat_203f58:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f62:
	tst.b ($d300).w
	bne.s loc_203fa0
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203fa0:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203fc8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203fc8:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ffc:
	tst.b ($ff1506).l
	bne.s loc_204062
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_204062
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204066
	cmpi.b #$2f,d1
	bne.s loc_204064
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_204062
	tst.b $2c(a0)
	beq.s loc_204062
	jsr (sub_207aac).l
	bne.s loc_204062
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_20405a
	moveq #$0,d0
loc_20405a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_204062:
	rts
loc_204064:
	rts

sub_204066:
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

sub_20408c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204098
	neg.w d0
loc_204098:
	btst.b #$1,$2c(a0)
	beq.s loc_2040a8
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_2040d0
loc_2040a8:
	cmpi.w #$600,d0
	bcs.s loc_2040d0
	tst.w $14(a0)
	bpl.s loc_2040c2
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040de
	move.w #$e0,d1
	bra.s loc_2040de
loc_2040c2:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040de
	move.w #$60,d1
	bra.s loc_2040de
loc_2040d0:
	cmpi.w #$a0,d1
	beq.s loc_2040de
	bcc.s loc_2040dc
	addq.w #$2,d1
	bra.s loc_2040de
loc_2040dc:
	subq.w #$2,d1
loc_2040de:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_20408c
	bsr.w sub_203ffc
	tst.w ($ff1588).l
	beq.s loc_204104
	btst.b #$4,($f605).w
	beq.s loc_204104
	move.b #$1,($ff1906).l
	rts
loc_204104:
	tst.b ($f7cc).w
	bne.s loc_204110
	move.w ($f604).w,($f602).w
loc_204110:
	btst.b #$0,$2c(a0)
	beq.s loc_204134
	cmpi.b #$6,($ff1506).l
	bne.s loc_20412e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_20414c
loc_20412e:
	bsr.w sub_204416
	bra.s loc_20414c
loc_204134:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204192(pc,d0.w),d1
	jsr dat_204192(pc,d1.w)
	jsr (sub_2066e6).l
loc_20414c:
	bsr.s sub_2041a0
	bsr.w sub_204260
	bsr.w sub_20427a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204174
	tst.b $1c(a0)
	bne.s loc_204174
	move.b $1d(a0),$1c(a0)
loc_204174:
	bsr.w sub_20561e
	tst.b $2c(a0)
	bmi.s loc_20418c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20418c
	jsr (sub_207176).l
loc_20418c:
	bsr.w sub_2054d4
	rts
dat_204192:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2041a0:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2041c4
	move.w $30(a0),d0
	beq.s loc_2041b6
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2041c4
loc_2041b6:
	btst.b #$6,$2c(a0)
	bne.s loc_2041c4
	jsr (sub_203a64).l
loc_2041c4:
	tst.b ($ff151f).l
	beq.s loc_204208
	tst.w $32(a0)
	beq.s loc_204208
	subq.w #$1,$32(a0)
	bne.s loc_204208
	tst.b ($ff1520).l
	bne.s loc_204200
	tst.b ($ff1958).l
	bne.s loc_204200
	tst.b ($ff152e).l
	bne.s loc_2041fa
	move.w #$e,d0
	jsr (sub_205c2e).l
loc_2041fa:
	jsr (sub_201a76).l
loc_204200:
	move.b #$0,($ff151f).l
loc_204208:
	tst.b ($ff1520).l
	beq.s loc_20425e
	tst.w $34(a0)
	beq.s loc_20425e
	subq.w #$1,$34(a0)
	bne.s loc_20425e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204256
	tst.b ($ff1958).l
	bne.s loc_204256
	tst.b ($ff152e).l
	bne.s loc_204250
	move.w #$e,d0
	jsr (sub_205c2e).l
loc_204250:
	jsr (sub_201a76).l
loc_204256:
	move.b #$0,($ff1520).l
loc_20425e:
	rts

sub_204260:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20427a:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204286
loc_204284:
	rts
loc_204286:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204298
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204284
loc_204298:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042dc
	bset.b #$6,$22(a0)
	bne.s loc_204284
	bsr.w sub_205f32
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204284
	bra.s loc_204314
loc_2042dc:
	tst.w $12(a0)
	beq.s loc_2042e4
	bpl.s loc_204284
loc_2042e4:
	bclr.b #$6,$22(a0)
	beq.s loc_204284
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204284
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204314
	move.w #$f000,$12(a0)
loc_204314:
	jsr (sub_207aac).l
	bne.s loc_204328
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204328:
	rts

sub_20432a:
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
	bcs.s loc_204404
	move.l #$50000,d0
loc_204404:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204416:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20443c
	tst.b ($ff152e).l
	beq.s loc_204432
	cmpi.b #$2,($ff152e).l
	bne.s loc_20443c
loc_204432:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044ec
loc_20443c:
	tst.b $2a(a0)
	bne.w loc_2044fa
	tst.b ($f784).w
	beq.w loc_2044fa
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20445a
	neg.w d0
loc_20445a:
	tst.w ($f786).w
	bne.s loc_204466
	move.w #$1,($f786).w
loc_204466:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20447c
	move.b #$1,($ff1502).l
	bra.w loc_205c2a
loc_20447c:
	cmpi.w #$d2,d1
	bcs.s loc_2044d0
	cmpi.b #$2,($ff1522).l
	beq.s loc_2044ce
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2044a6
	move.w #$82,d0
	jsr (sub_205c2e).l
	moveq #$0,d0
loc_2044a6:
	add.b ($f784).w,d0
	bpl.s loc_2044b0
	moveq #$0,d0
	bra.s loc_2044b8
loc_2044b0:
	cmpi.b #$3,d0
	bcs.s loc_2044b8
	moveq #$2,d0
loc_2044b8:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20432a
	move.b #$2,($ff1522).l
loc_2044ce:
	rts
loc_2044d0:
	cmpi.w #$5a,d1
	bcc.s loc_2044e8
	cmp.w d2,d0
	bcc.w loc_203f62
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044e8:
	cmp.w d2,d0
	bcc.s loc_2044fa
loc_2044ec:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044fa:
	rts
	bsr.w sub_203e9c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20452c
	tst.b ($ff195b).l
	beq.s loc_20451a
	cmpi.b #$79,$1a(a0)
	bne.s loc_204556
	bra.s loc_204522
loc_20451a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204556
loc_204522:
	bsr.w sub_204dbe
	jmp (loc_2039ac).l
loc_20452c:
	bsr.w sub_204604
	bsr.w sub_204416
	bsr.w sub_204ea8
	bsr.w sub_204fd4
	bsr.w sub_204678
	bsr.w sub_204e2a
	bsr.w sub_204dbe
	jsr (sub_203a0e).l
	bsr.w sub_200b86
	bsr.w sub_205052
loc_204556:
	rts
	.incbin 17752, 172

sub_204604:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204670
	tst.w ($ff1506).l
	bne.s loc_204670
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204672).l,a2
loc_204638:
	move.b (a2)+,d0
	bmi.s loc_204648
	cmp.b d0,d1
	bne.s loc_204638
	bset.b #$1,$2c(a0)
	rts
loc_204648:
	bclr.b #$1,$2c(a0)
	beq.s loc_204670
	tst.w $12(a0)
	bpl.s loc_204670
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204670
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204670
	neg.w $10(a0)
loc_204670:
	rts
dat_204672:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204678:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2049a2
	tst.w $3e(a0)
	bne.w loc_204952
	btst.b #$2,($f602).w
	beq.s loc_2046a0
	bsr.w sub_204a32
loc_2046a0:
	btst.b #$3,($f602).w
	beq.s loc_2046ac
	bsr.w sub_204aa8
loc_2046ac:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204952
	tst.w $14(a0)
	beq.s loc_2046cc
	tst.b $2a(a0)
	beq.w loc_204952
	bra.s loc_2046d8
loc_2046cc:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046d8:
	btst.b #$3,$22(a0)
	beq.s loc_20472a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204782
	cmpi.b #$1e,$0(a1)
	bne.s loc_20470a
	move.b #$0,$1c(a0)
	bra.w loc_204952
loc_20470a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204766
	cmp.w d2,d1
	bge.s loc_204754
	bra.s loc_204782
loc_20472a:
	jsr (sub_206eda).l
	cmpi.w #$c,d1
	blt.s loc_204782
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20475e
loc_204754:
	btst.b #$0,$22(a0)
	bne.s loc_20476e
	bra.s loc_204778
loc_20475e:
	cmpi.b #$3,$37(a0)
	bne.s loc_204782
loc_204766:
	btst.b #$0,$22(a0)
	bne.s loc_204778
loc_20476e:
	move.b #$32,$1c(a0)
	bra.w loc_204952
loc_204778:
	move.b #$6,$1c(a0)
	bra.w loc_204952
loc_204782:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204796
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204796:
	btst.b #$7,($f788).w
	bne.w loc_20489a
	btst.b #$6,($f788).w
	bne.w loc_2048ba
	btst.b #$1,($f602).w
	bne.w loc_2048ba
	andi.b #$f,($f788).w
	beq.s loc_2047ce
	btst.b #$0,($f603).w
	beq.s loc_2047e2
	bset.b #$7,($f788).w
	bra.w loc_204976
loc_2047ce:
	btst.b #$0,($f603).w
	beq.w loc_2047e2
	move.b #$1,($f788).w
	bra.w loc_204976
loc_2047e2:
	btst.b #$0,($f602).w
	beq.s loc_20485e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204840
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204812
	asr.w #$1,d2
	sub.w d2,d1
loc_204812:
	btst.b #$0,$22(a0)
	beq.s loc_20481e
	neg.w d0
	neg.w d1
loc_20481e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204834
	cmp.w d0,d1
	ble.s loc_20483a
	bra.s loc_204838
loc_204834:
	cmp.w d1,d0
	ble.s loc_20483a
loc_204838:
	move.w d1,d0
loc_20483a:
	move.w d0,$14(a0)
	rts
loc_204840:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20485a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202282).l
loc_20485a:
	bra.w loc_204976
loc_20485e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20487e
	move.w #$ab,d0
	jsr (sub_202282).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2048ba
loc_20487e:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202282).l
	bra.w loc_204952
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20489a:
	btst.b #$0,($f602).w
	beq.s loc_2048ba
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204976
	addq.w #$2,($f73e).w
	bra.w loc_204976
loc_2048ba:
	btst.b #$6,($f788).w
	bne.w loc_204936
	andi.b #$f,($f788).w
	beq.s loc_2048de
	btst.b #$1,($f603).w
	beq.s loc_2048f0
	bset.b #$6,($f788).w
	bra.w loc_204976
loc_2048de:
	btst.b #$1,($f603).w
	beq.s loc_2048f0
	move.b #$1,($f788).w
	bra.w loc_204976
loc_2048f0:
	btst.b #$1,($f602).w
	beq.s loc_204952
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204934
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204934
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204926
	neg.w $14(a0)
loc_204926:
	move.w #$9c,d0
	jsr (sub_202282).l
	bsr.w sub_204e52
loc_204934:
	bra.s loc_204976
loc_204936:
	btst.b #$1,($f602).w
	beq.s loc_204952
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204976
	subq.w #$2,($f73e).w
	bra.s loc_204976
loc_204952:
	cmpi.w #$60,($f73e).w
	bne.s loc_20496c
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204976
	move.b #$0,($f788).w
	bra.s loc_204976
loc_20496c:
	bcc.s loc_204972
	addq.w #$4,($f73e).w
loc_204972:
	subq.w #$2,($f73e).w
loc_204976:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2049a2
	move.w $14(a0),d0
	beq.s loc_2049a2
	bmi.s loc_204996
	sub.w d5,d0
	bcc.s loc_204990
	move.w #$0,d0
loc_204990:
	move.w d0,$14(a0)
	bra.s loc_2049a2
loc_204996:
	add.w d5,d0
	bcc.s loc_20499e
	move.w #$0,d0
loc_20499e:
	move.w d0,$14(a0)
loc_2049a2:
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2049c0:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a30
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a30
	bmi.s loc_2049d8
	neg.w d1
loc_2049d8:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d9a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a30
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a2c
	cmpi.b #$40,d0
	beq.s loc_204a1a
	cmpi.b #$80,d0
	beq.s loc_204a14
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a14:
	sub.w d1,$12(a0)
	rts
loc_204a1a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a2c:
	add.w d1,$12(a0)
loc_204a30:
	rts

sub_204a32:
	tst.b $2a(a0)
	bne.s loc_204aa6
	move.w $14(a0),d0
	beq.s loc_204a40
	bpl.s loc_204a70
loc_204a40:
	bset.b #$0,$22(a0)
	bne.s loc_204a54
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a54:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a64
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a64
	move.w d1,d0
loc_204a64:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a70:
	sub.w d4,d0
	bcc.s loc_204a78
	move.w #$ff80,d0
loc_204a78:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204aa6
	cmpi.w #$400,d0
	blt.s loc_204aa6
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202282).l
loc_204aa6:
	rts

sub_204aa8:
	tst.b $2a(a0)
	bne.s loc_204b16
	move.w $14(a0),d0
	bmi.s loc_204ae0
	bclr.b #$0,$22(a0)
	beq.s loc_204ac8
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ac8:
	cmp.w d6,d0
	bge.s loc_204ad4
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ad4
	move.w d6,d0
loc_204ad4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ae0:
	add.w d4,d0
	bcc.s loc_204ae8
	move.w #$80,d0
loc_204ae8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b16
	cmpi.w #$fc00,d0
	bgt.s loc_204b16
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202282).l
loc_204b16:
	rts
	.incbin 19224, 236
	bcc.s loc_204c0a
	move.w #$0,d0
loc_204c0a:
	move.w d0,$14(a0)
	bra.s loc_204c1c
	dc.b $d0,$45
	bcc.s loc_204c18
	move.w #$0,d0
loc_204c18:
	move.w d0,$14(a0)
loc_204c1c:
	tst.w $14(a0)
	bne.s loc_204c62
	move.w #$ab,d0
	jsr (sub_202282).l
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c4c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c5c
loc_204c4c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c5c:
	move.b #$5,$1c(a0)
loc_204c62:
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c86
	move.w #$1000,d1
loc_204c86:
	cmpi.w #$f000,d1
	bge.s loc_204c90
	move.w #$f000,d1
loc_204c90:
	move.w d1,$10(a0)
	bra.w loc_2049c0
	.incbin 19608, 294

sub_204dbe:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e12
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204dec
	addi.w #$38,d0
loc_204dec:
	cmp.w d1,d0
	bls.s loc_204e12
loc_204df0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e00
	rts
loc_204e00:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207410
	move.b #$6,$24(a0)
	rts
loc_204e12:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204df0

sub_204e2a:
	tst.b ($f7ca).w
	bne.s loc_204e50
	move.w $14(a0),d0
	bpl.s loc_204e38
	neg.w d0
loc_204e38:
	cmpi.w #$80,d0
	bcs.s loc_204e50
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e50
	btst.b #$1,($f602).w
	bne.s sub_204e52
loc_204e50:
	rts

sub_204e52:
	btst.b #$2,$22(a0)
	beq.s loc_204e5c
	bra.s loc_204e8c
loc_204e5c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e7c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e8c
loc_204e7c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e8c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204ea6
	cmpi.w #$200,$14(a0)
	bcc.s loc_204ea6
	move.w #$200,$14(a0)
loc_204ea6:
	rts

sub_204ea8:
	tst.b $2a(a0)
	beq.s loc_204eb0
	rts
loc_204eb0:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ec2
	tst.w $14(a0)
	beq.w loc_204f88
loc_204ec2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f88
	btst.b #$3,$22(a0)
	beq.s loc_204ede
	jsr (sub_205bb4).l
	beq.s loc_204f0e
loc_204ede:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206e04
	cmpi.w #$6,d1
	blt.w loc_204f88
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f04
	move.w #$380,d2
loc_204f04:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f0e:
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
	bne.s loc_204f8a
	tst.b ($ff195b).l
	beq.s loc_204f6c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f7c
loc_204f6c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f7c:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f88:
	rts
loc_204f8a:
	bset.b #$4,$22(a0)
	rts
	dc.b $4a,$28,$00,$3c,$67,$2c,$32,$3c
	dc.b $fc,$00
	btst.b #$6,$22(a0)
	beq.s loc_204fa8
	move.w #$fe00,d1
loc_204fa8:
	cmp.w $12(a0),d1
	ble.s loc_204fc2
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204fc2
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204fc2:
	rts
	.incbin 20420, 16

sub_204fd4:
	tst.b $2a(a0)
	bne.s loc_20500e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20500e
	move.b $26(a0),d0
	jsr (sub_200786).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20500e
	bmi.s loc_20500a
	tst.w d0
	beq.s loc_205008
	add.w d0,$14(a0)
loc_205008:
	rts
loc_20500a:
	add.w d0,$14(a0)
loc_20500e:
	rts
	.incbin 20496, 66

sub_205052:
	nop
	tst.b $38(a0)
	bne.s loc_205094
	tst.w $3e(a0)
	bne.s loc_205096
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205094
	move.w $14(a0),d0
	bpl.s loc_205076
	neg.w d0
loc_205076:
	cmpi.w #$280,d0
	bcc.s loc_205094
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205094:
	rts
loc_205096:
	subq.w #$1,$3e(a0)
	rts
	.incbin 20636, 112
	move.w #$0,$10(a0)
	bsr.w sub_206f7c
	tst.w d1
	bpl.s loc_205124
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205124:
	bsr.w sub_206e2c
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2051a2
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205142
	cmp.b d2,d0
	blt.s loc_2051a2
loc_205142:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c4
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205180
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205172
	asr.w $12(a0)
	bra.s loc_205194
loc_205172:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205180:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205194
	move.w #$fc0,$12(a0)
loc_205194:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2051a2
	neg.w $14(a0)
loc_2051a2:
	rts
	.incbin 20900, 66
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2052c4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
	.incbin 20998, 176
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts

sub_2052c4:
	btst.b #$4,$22(a0)
	beq.s loc_2052ce
	nop
loc_2052ce:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205328
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205308
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205318
loc_205308:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205318:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202282).l
loc_205328:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21334, 382

sub_2054d4:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2054fc
	cmpi.b #$5,($ff1506).l
	beq.s loc_2054fc
	cmpi.b #$2,($ff1506).l
	beq.s loc_2054fc
	tst.b ($ff1506).l
	bne.w loc_2055be
loc_2054fc:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20553a
	tst.b ($ff1506).l
	bne.w loc_2055c0
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2055c0
	bra.s loc_205542
loc_20553a:
	cmp.b ($f7af).w,d1
	beq.w loc_2055c0
loc_205542:
	cmp.b ($f7ac).w,d1
	beq.s loc_205572
	cmp.b ($f7ad).w,d1
	beq.s loc_205556
	bclr.b #$6,$1(a0)
	rts
loc_205556:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055d8
	btst.b #$1,$22(a0)
	beq.s loc_205572
	bclr.b #$6,$1(a0)
	rts
loc_205572:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205584
	bclr.b #$6,$1(a0)
	rts
loc_205584:
	cmpi.b #$e0,d2
	bcs.s loc_205592
	bset.b #$6,$1(a0)
	rts
loc_205592:
	btst.b #$6,$1(a0)
	bne.s loc_2055ae
	move.b $26(a0),d1
	beq.s loc_2055be
	cmpi.b #$80,d1
	bhi.s loc_2055be
	bset.b #$6,$1(a0)
	rts
loc_2055ae:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2055be
	bclr.b #$6,$1(a0)
loc_2055be:
	rts
loc_2055c0:
	btst.b #$2,$22(a0)
	bne.s loc_2055d2
	move.w #$9c,d0
	jsr (sub_202282).l
loc_2055d2:
	jmp (sub_204e52).l
loc_2055d8:
	tst.w $12(a0)
	bmi.s loc_20561c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205610
	cmpi.w #$38,d1
	bcs.s loc_205608
	cmpi.w #$80,d1
	bcs.s loc_20561c
loc_205600:
	bclr.b #$6,$1(a0)
	rts
loc_205608:
	bset.b #$6,$1(a0)
	rts
loc_205610:
	cmpi.w #$38,d1
	bcs.s loc_205600
	cmpi.w #$80,d1
	bcc.s loc_205608
loc_20561c:
	rts

sub_20561e:
	lea (dat_20590e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205640
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205640:
	bsr.w sub_2058b0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2056b8
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205686
	move.b d0,$1e(a0)

sub_20566a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20567e
	bpl.s loc_20567e
	cmpi.b #$fd,d0
	bge.s loc_205688
loc_20567e:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205686:
	rts
loc_205688:
	addq.b #$1,d0
	bne.s loc_205698
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20567e
loc_205698:
	addq.b #$1,d0
	bne.s loc_2056ac
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20567e
loc_2056ac:
	addq.b #$1,d0
	bne.s loc_2056b6
	move.b $2(a1,d1.w),$1c(a0)
loc_2056b6:
	rts
loc_2056b8:
	subq.b #$1,$1e(a0)
	bpl.s loc_205686
	addq.b #$1,d0
	bne.w loc_205772
	tst.b ($ff195b).l
	bne.w loc_20583a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056e0
	not.b d0
loc_2056e0:
	btst.b #$1,$2c(a0)
	bne.s loc_2056ee
	addi.b #$10,d0
	bra.s loc_2056f0
loc_2056ee:
	addq.b #$8,d0
loc_2056f0:
	bpl.s loc_2056f4
	moveq #$3,d1
loc_2056f4:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057e6
	move.w $14(a0),d2
	bpl.s loc_205712
	neg.w d2
loc_205712:
	btst.b #$1,$2c(a0)
	beq.s loc_20572a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b10).l,a1
	bra.s loc_205754
loc_20572a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205aea).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205754
	lea (dat_20598e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205754
	lea (dat_205986).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205754:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205762
	moveq #$0,d2
loc_205762:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20566a
	add.b d3,$1a(a0)
	rts
loc_205772:
	addq.b #$1,d0
	bne.s loc_2057e2
	move.w $14(a0),d2
	bpl.s loc_20577e
	neg.w d2
loc_20577e:
	lea (dat_205a6c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057bc
	lea (dat_20599e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2057b0
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2057bc
	lea (dat_205b18).l,a1
	bra.s loc_2057bc
loc_2057b0:
	cmpi.w #$600,d2
	bcc.s loc_2057bc
	lea (dat_205996).l,a1
loc_2057bc:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2057c6
	moveq #$0,d2
loc_2057c6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20566a
loc_2057e2:
	addq.b #$1,d0
	bne.s loc_205826
loc_2057e6:
	move.w $14(a0),d2
	bmi.s loc_2057ee
	neg.w d2
loc_2057ee:
	addi.w #$800,d2
	bpl.s loc_2057f6
	moveq #$0,d2
loc_2057f6:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a7e).l,a1
	tst.b ($ff195b).l
	bne.s loc_205810
	lea (dat_2059a6).l,a1
loc_205810:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20566a
loc_205826:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20583a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20584c
	not.b d0
loc_20584c:
	addi.b #$10,d0
	bpl.s loc_205854
	moveq #$0,d1
loc_205854:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205882
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205772
loc_205882:
	move.w $14(a0),d2
	bpl.s loc_20588a
	neg.w d2
loc_20588a:
	lea (dat_205a66).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20589c
	lea (dat_205a60).l,a1
loc_20589c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058a6
	moveq #$0,d2
loc_2058a6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20566a

sub_2058b0:
	tst.b ($ff195b).l
	beq.s loc_2058bc
	move.b dat_2058be(pc,d0.w),d0
loc_2058bc:
	rts
dat_2058be:
	.incbin 22718, 80
dat_20590e:
	.incbin 22798, 120
dat_205986:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20598e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205996:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20599e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2059a6:
	.incbin 22950, 186
dat_205a60:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a66:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a6c:
	.incbin 23148, 18
dat_205a7e:
	.incbin 23166, 108
dat_205aea:
	.incbin 23274, 38
dat_205b10:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b18:
	.incbin 23320, 56

sub_205b50:
	tst.b (a0)
	beq.w loc_205bb2
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205bb2
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205bb2
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b84:
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
loc_205b9e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b9e
	dbf d1,loc_205b84
loc_205bb2:
	rts

sub_205bb4:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c28
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
	bne.s loc_205c16
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c16:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c28:
	rts
loc_205c2a:
	move.w #$e,d0

sub_205c2e:
	cmpi.w #$67,d0
	bne.s loc_205c3c
	move.b #$1,($ff1958).l
loc_205c3c:
	move.w d0,($a12010).l
loc_205c42:
	move.w ($a12020).l,d0
	beq.s loc_205c42
	cmp.w ($a12020).l,d0
	bne.s loc_205c42
	move.w #$0,($a12010).l
loc_205c5a:
	move.w ($a12020).l,d0
	bne.s loc_205c5a
	move.w ($a12020).l,d0
	bne.s loc_205c5a
	rts
	dc.b $00,$00
loc_205c6e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c8a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c8a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205cca
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ccc
loc_205ca6:
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
loc_205cca:
	rts
loc_205ccc:
	addq.b #$1,d0
	bne.s loc_205cdc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205ca6
loc_205cdc:
	addq.b #$1,d0
	bne.s loc_205cf0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205ca6
loc_205cf0:
	addq.b #$1,d0
	bne.s loc_205cfa
	move.b $2(a1,d1.w),$1c(a0)
loc_205cfa:
	addq.b #$1,d0
	bne.s loc_205d02
	addq.b #$2,$24(a0)
loc_205d02:
	addq.b #$1,d0
	bne.s loc_205d10
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d10:
	addq.b #$1,d0
	bne.s loc_205d18
	addq.b #$2,$25(a0)
loc_205d18:
	rts
	.incbin 23834, 166
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205ddc(pc,d0.w),d0
	jsr dat_205ddc(pc,d0.w)
	jsr (sub_203a64).l
	jmp (loc_207ae2).l
dat_205ddc:
	.incbin 24028, 342

sub_205f32:
	rts
	.incbin 24372, 362
	tst.b $29(a0)
	beq.s loc_2060aa
	andi.b #$7f,$2(a0)
loc_2060aa:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_2060d0
	bsr.w sub_20613c
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206132
loc_2060d0:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206eda).l
	tst.w d1
	bpl.s loc_20612e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206118
	bsr.w sub_20613c
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206162
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206118:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206132
loc_20612e:
	addq.w #$2,$c(a0)
loc_206132:
	lea (dat_2336bc).l,a1
	bra.w loc_205c6e

sub_20613c:
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

sub_206162:
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
	.incbin 24962, 274
dat_206294:
	.incbin 25236, 590

sub_2064e2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206530
loc_2064ec:
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206532(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206506:
	move.l (a1)+,(a2)+
	dbf d0,loc_206506
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206530:
	rts
dat_206532:
	.incbin 25906, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206568(pc,d0.w),d0
	jsr dat_206568(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206562
	jsr (sub_203a64).l
loc_206562:
	jmp (loc_207ae2).l
dat_206568:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23d362,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20664a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20664a
	bsr.w sub_2066ae
	beq.w loc_20664a
	tst.b $28(a0)
	bne.s loc_2065fc
	move.w $10(a1),d0
	bpl.s loc_2065bc
	neg.w d0
loc_2065bc:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2065ce
	move.w #$d00,d1
loc_2065ce:
	cmp.w d1,d0
	bcc.s loc_2065d4
	move.w d1,d0
loc_2065d4:
	tst.w $10(a1)
	bpl.s loc_2065dc
	neg.w d0
loc_2065dc:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20662c
	neg.w $14(a1)
	bra.s loc_20662c
loc_2065fc:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20664c
	move.w $12(a1),d0
	bpl.s loc_20660c
	neg.w d0
loc_20660c:
	cmpi.w #$d00,d0
	bcc.s loc_206616
	move.w #$d00,d0
loc_206616:
	tst.w $12(a1)
	bpl.s loc_20661e
	neg.w d0
loc_20661e:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20662c:
	bset.b #$2,$22(a1)
	bne.s loc_20664a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20664a:
	rts
loc_20664c:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206698
	cmpi.b #$2,$28(a0)
	bne.s loc_206668
	tst.w $12(a1)
	bpl.s loc_20662c
	bra.s loc_20666e
loc_206668:
	tst.w $12(a1)
	bmi.s loc_20662c
loc_20666e:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206680
	btst.l #$2,d1
	beq.s loc_20662c
	neg.w d0
loc_206680:
	cmpi.b #$2,$28(a0)
	beq.s loc_20668e
	bset.b #$1,$22(a1)
loc_20668e:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20662c
loc_206698:
	tst.w $10(a1)
	bmi.s loc_20662c
	btst.l #$0,d1
	beq.w loc_20662c
	move.w #$f600,d0
	bra.w loc_20661e

sub_2066ae:
	tst.b ($ff1906).l
	bne.s loc_2066e2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066e2
	cmpi.w #$50,d0
	bcc.s loc_2066e2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066e2
	cmpi.w #$50,d0
	bcc.s loc_2066e2
	moveq #$1,d0
	rts
loc_2066e2:
	moveq #$0,d0
	rts

sub_2066e6:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066f0
	bsr.s sub_2066f2
loc_2066f0:
	rts

sub_2066f2:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a1e).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067d6
	cmpi.b #$80,d0
	beq.w loc_20675c
	cmpi.b #$c0,d0
	beq.w loc_206798
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206814
	bne.s loc_20675a
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206814
loc_20675a:
	rts
loc_20675c:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_206814
	bne.s loc_206796
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_206814
loc_206796:
	rts
loc_206798:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206814
	bne.s loc_2067d4
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206814
loc_2067d4:
	rts
loc_2067d6:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_206814
	bne.s loc_206812
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_206814
loc_206812:
	rts

sub_206814:
	jsr (sub_200ef4).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206858
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_20683c
	add.b ($ff156a).l,d1
loc_20683c:
	add.w d1,d1
	move.w dat_20685c(pc,d1.w),d1
	lea dat_20685c(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_20684c:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068d0
	addq.w #$2,d1
	dbf d6,loc_20684c
loc_206858:
	moveq #$0,d0
	rts
dat_20685c:
	.incbin 26716, 116
loc_2068d0:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068e2
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068e2:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_206926(pc,d1.w),d0
	jsr dat_206926(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_206916
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_206910
	cmpi.b #$6,d1
	beq.s loc_206910
	move.w #$b5,d0
loc_206910:
	jsr (sub_202282).l
loc_206916:
	tst.b ($ff1950).l
	beq.s loc_206922
	moveq #$0,d0
	rts
loc_206922:
	moveq #$1,d0
	rts
dat_206926:
	.incbin 26918, 686
loc_206bd4:
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
	bne.s loc_206c8e
	move.b ($ff1593).l,($ff195b).l
loc_206c8e:
	tst.b ($ff1522).l
	bpl.s loc_206ca4
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ca4:
	rts

sub_206ca6:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206bd4
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
	bne.s loc_206d60
	move.b ($ff1591).l,($ff195b).l
loc_206d60:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d82
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d82:
	tst.b ($ff1522).l
	bpl.s loc_206d98
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d98:
	rts

sub_206d9a:
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
	bpl.s loc_206dd6
	move.b d1,d0
	bpl.s loc_206dd0
	subq.b #$1,d0
loc_206dd0:
	addi.b #$20,d0
	bra.s loc_206de0
loc_206dd6:
	move.b d1,d0
	bpl.s loc_206ddc
	addq.b #$1,d0
loc_206ddc:
	addi.b #$1f,d0
loc_206de0:
	andi.b #$c0,d0
	beq.w loc_206eb0
	cmpi.b #$80,d0
	beq.w loc_20704c
	andi.b #$38,d1
	bne.s loc_206df8
	addq.w #$8,d2
loc_206df8:
	cmpi.b #$40,d0
	beq.w loc_207122
	bra.w loc_206f84

sub_206e04:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2070aa
	cmpi.b #$80,d0
	beq.w loc_206fd4
	cmpi.b #$c0,d0
	beq.w loc_206f14

sub_206e2c:
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
loc_206e90:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e9e
	move.b ($f768).w,d3
	exg d0,d1
loc_206e9e:
	btst.l #$0,d3
	beq.s loc_206ea6
	move.b d2,d3
loc_206ea6:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206eb0:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010dc).l
	move.b #$0,d2
loc_206ecc:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ed8
	move.b d2,d3
loc_206ed8:
	rts

sub_206eda:
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
	beq.s loc_206f12
	move.b #$0,d3
loc_206f12:
	rts
loc_206f14:
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
	bra.w loc_206e90

sub_206f7c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f84:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b #$c0,d2
	bra.w loc_206ecc
	.incbin 28580, 48
loc_206fd4:
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
	bra.w loc_206e90

sub_207044:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20704c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010dc).l
	move.b #$80,d2
	bra.w loc_206ecc
	.incbin 28784, 58
loc_2070aa:
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
	bra.w loc_206e90
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_207122:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20124c).l
	move.b #$40,d2
	bra.w loc_206ecc
	.incbin 28998, 48

sub_207176:
	btst.b #$6,$2c(a0)
	bne.s loc_2071c4
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2071a2
	addi.w #$c,d3
	moveq #$a,d5
loc_2071a2:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2071b0:
	tst.b $1(a1)
	bpl.s loc_2071bc
	move.b $20(a1),d0
	bne.s loc_2071c8
loc_2071bc:
	lea $40(a1),a1
	dbf d6,loc_2071b0
loc_2071c4:
	moveq #$0,d0
	rts
loc_2071c8:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20754e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071f0
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071f6
	bra.w loc_2071bc
loc_2071f0:
	cmp.w d4,d0
	bhi.w loc_2071bc
loc_2071f6:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_20720e
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207214
	bra.w loc_2071bc
loc_20720e:
	cmp.w d5,d0
	bhi.w loc_2071bc
loc_207214:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207288
	cmpi.b #$c0,d1
	beq.w loc_207468
	tst.b d1
	bmi.w sub_207352
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20724c
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20724a
	addq.b #$2,$24(a1)
loc_20724a:
	rts
loc_20724c:
	tst.w $12(a0)
	bpl.s loc_207276
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207286
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207286
	addq.b #$4,$25(a1)
	rts
loc_207276:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207286
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207286:
	rts

sub_207288:
	tst.b ($ff1521).l
	bne.s loc_2072a2
	tst.b ($ff151f).l
	bne.s loc_2072a2
	cmpi.b #$2,$1c(a0)
	bne.w sub_207352
loc_2072a2:
	tst.b $21(a1)
	beq.s loc_2072cc
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2072ca
	bset.b #$7,$22(a1)
loc_2072ca:
	rts
loc_2072cc:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072e4
	moveq #$6,d0
loc_2072e4:
	move.w d0,$3e(a1)
	move.w dat_207344(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072fe
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072fe:
	bsr.w sub_20a6b0
	move.w #$96,d0
	jsr (sub_202282).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207334
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20733c
	neg.w $12(a0)
	rts
loc_207334:
	addi.w #$100,$12(a0)
	rts
loc_20733c:
	subi.w #$100,$12(a0)
	rts
dat_207344:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207352:
	tst.b ($ff1521).l
	bne.s loc_207362
	tst.b ($ff151f).l
	beq.s loc_207366
loc_207362:
	moveq #$ffffffff,d0
	rts
loc_207366:
	nop
	tst.w $30(a0)
	bne.s loc_207362
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_20739c
	tst.w ($ff1512).l
	beq.w loc_207406
	jsr (sub_207aac).l
	bne.s loc_20739c
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20739c:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2073b2
	move.b #$0,($ff156f).l
loc_2073b2:
	move.b #$4,$24(a0)
	bsr.w sub_2052c4
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073e2
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073e2:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073f0
	neg.w $10(a0)
loc_2073f0:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207406:
	tst.w ($ff1588).l
	bne.w loc_20739c

sub_207410:
	tst.w ($ff1906).l
	bne.s loc_207464
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2052c4
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
loc_207464:
	moveq #$ffffffff,d0
	rts
loc_207468:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074f8
	cmpi.b #$1f,d1
	beq.w loc_2074f8
	cmpi.b #$23,d1
	beq.w loc_2074f8
	cmpi.b #$27,d1
	beq.w loc_2074f8
	cmpi.b #$3a,d1
	beq.w loc_207540
	cmpi.b #$3b,d1
	beq.w loc_207540
	tst.b ($f7aa).w
	beq.w loc_2074f6
	cmpi.b #$1,($f7aa).w
	beq.s loc_2074c0
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074e2
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074f0
loc_2074c0:
	cmpi.b #$3c,d1
	blt.s loc_2074f6
	cmpi.b #$3f,d1
	bgt.s loc_2074f6
	bsr.w sub_207288
	tst.b $20(a1)
	bne.s loc_2074da
	addq.b #$3,$21(a1)
loc_2074da:
	clr.b $20(a1)
	bra.w loc_2074f8
loc_2074e2:
	cmpi.b #$3f,d1
	beq.s loc_207504
	cmpi.b #$3e,d1
	beq.s loc_2074fe
	bra.s loc_2074f6
loc_2074f0:
	cmpi.b #$3d,d1
	beq.s loc_2074fe
loc_2074f6:
	rts
loc_2074f8:
	addq.b #$1,$21(a1)
	rts
loc_2074fe:
	bsr.w sub_207352
	bra.s loc_2074f8
loc_207504:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20753e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20753e
	neg.w $10(a0)
loc_20753e:
	rts
loc_207540:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20754c
	addq.b #$1,$21(a1)
loc_20754c:
	rts
dat_20754e:
	.incbin 30030, 126
loc_2075cc:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075e2
	move.l #$4000,(dat_20775c).l
	bra.s loc_207602
loc_2075e2:
	addi.l #$2000,(dat_20775c).l
	cmpi.l #$80000,(dat_20775c).l
	bls.s loc_207602
	move.l #$80000,(dat_20775c).l
loc_207602:
	move.l (dat_20775c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207614
	sub.l d0,$c(a0)
loc_207614:
	btst.b #$1,($f604).w
	beq.s loc_207620
	add.l d0,$c(a0)
loc_207620:
	btst.b #$2,($f604).w
	beq.s loc_20762c
	sub.l d0,$8(a0)
loc_20762c:
	btst.b #$3,($f604).w
	beq.s loc_207638
	add.l d0,$8(a0)
loc_207638:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ef4).l
	move.w (a1),($ff194e).l
	lea (dat_207760).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20767a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207674
	move.b #$0,d1
loc_207674:
	move.b d1,($ff1904).l
loc_20767a:
	btst.b #$7,($f605).w
	beq.s loc_20769a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207694
	add.b (a2),d1
loc_207694:
	move.b d1,($ff1904).l
loc_20769a:
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
	beq.s loc_207726
	bsr.w sub_207aac
	bne.s loc_207726
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
loc_207726:
	btst.b #$4,($f605).w
	beq.s loc_207756
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207756:
	jmp (sub_203a64).l
dat_20775c:
	dc.b $00,$00,$40,$00
dat_207760:
	.incbin 30560, 314

sub_20789a:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2078a8:
	clr.l (a2)+
	dbf d0,loc_2078a8
	rts

sub_2078b0:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2078be(pc,d0.w),d0
	jmp dat_2078be(pc,d0.w)
dat_2078be:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207b5e).l,a0
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
	bcc.s loc_2078fc
	moveq #$0,d6
loc_2078fc:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207904:
	cmp.w (a0),d6
	bls.s loc_207916
	tst.b $4(a0)
	bpl.s loc_207912
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207912:
	addq.w #$8,a0
	bra.s loc_207904
loc_207916:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207936
loc_207924:
	cmp.w (a0),d6
	bls.s loc_207936
	tst.b $4(a0)
	bpl.s loc_207932
	addq.b #$1,$1(a2)
loc_207932:
	addq.w #$8,a0
	bra.s loc_207924
loc_207936:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207a20
	bge.s loc_2079c6
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2079a2
loc_207970:
	cmp.w -$8(a0),d6
	bge.s loc_2079a2
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207986
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207986:
	bsr.w sub_207a44
	bne.s loc_207990
	subq.w #$8,a0
	bra.s loc_207970
loc_207990:
	tst.b $4(a0)
	bpl.s loc_2079a0
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079a0:
	addq.w #$8,a0
loc_2079a2:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2079ae:
	cmp.w -$8(a0),d6
	bgt.s loc_2079c0
	tst.b -$4(a0)
	bpl.s loc_2079bc
	subq.b #$1,(a2)
loc_2079bc:
	subq.w #$8,a0
	bra.s loc_2079ae
loc_2079c0:
	move.l a0,($f770).w
	rts
loc_2079c6:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2079da:
	cmp.w (a0),d6
	bls.s loc_2079fc
	tst.b $4(a0)
	bpl.s loc_2079e8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2079e8:
	bsr.w sub_207a44
	beq.s loc_2079da
	tst.b $4(a0)
	bpl.s loc_2079fc
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079fc:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a1c
loc_207a0a:
	cmp.w (a0),d6
	bls.s loc_207a1c
	tst.b $4(a0)
	bpl.s loc_207a18
	addq.b #$1,$1(a2)
loc_207a18:
	addq.w #$8,a0
	bra.s loc_207a0a
loc_207a1c:
	move.l a0,($f774).w
loc_207a20:
	rts

sub_207a22:
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

sub_207a44:
	bsr.s sub_207a22
	beq.s loc_207a56
	tst.b $4(a0)
	bpl.s loc_207a5c
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a5c
loc_207a56:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a5c:
	bsr.w sub_207aac
	bne.s loc_207aaa
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
	bpl.s loc_207a8c
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207a8c:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207a9e
	nop
	nop
	nop
	nop
loc_207a9e:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207aaa:
	rts

sub_207aac:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207ab4:
	tst.b (a1)
	beq.s loc_207ac0
	lea $40(a1),a1
	dbf d0,loc_207ab4
loc_207ac0:
	rts

sub_207ac2:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207ae0
loc_207ad4:
	tst.b (a1)
	beq.s loc_207ae0
	lea $40(a1),a1
	dbf d0,loc_207ad4
loc_207ae0:
	rts
loc_207ae2:
	move.w $8(a0),d0
loc_207ae6:
	tst.b $1(a0)
	bmi.s loc_207b50
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b50
loc_207b04:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b46
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b3e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b36
	moveq #$0,d1
	bra.s loc_207b3e
loc_207b36:
	cmpi.w #$3,d1
	bcs.s loc_207b3e
	moveq #$2,d1
loc_207b3e:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b46:
	jsr (sub_203b10).l
	moveq #$1,d0
	rts
loc_207b50:
	btst.b #$7,($ff152e).l
	bne.s loc_207b04
	moveq #$0,d0
	rts
dat_207b5e:
	.incbin 31582, 3658

sub_2089a8:
	btst.b #$3,$22(a0)
	beq.s loc_208a18
	btst.b #$3,$22(a1)
	beq.s loc_208a18
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208a18
	tst.b $2a(a1)
	beq.s loc_2089da
	move.w #$ab,d0
	jsr (sub_202282).l
loc_2089da:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208a06
	cmpi.b #$17,$1c(a1)
	beq.s loc_208a06
	bclr.b #$0,$2c(a1)
loc_208a06:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208a18
	bclr.b #$1,$22(a1)
loc_208a18:
	rts

sub_208a1a:
	cmpi.b #$4,$24(a1)
	bne.s loc_208a2c
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208a2c:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208a8c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208a4e
	bclr.b #$3,$22(a0)
	bra.w sub_2089a8
loc_208a4e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208a8c
	tst.b ($ff195b).l
	beq.s loc_208a76
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208a86
loc_208a76:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208a86:
	move.b #$0,$1c(a1)
loc_208a8c:
	bset.b #$3,$22(a1)
	beq.s loc_208aae
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208ae6
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208aae:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208ada
	cmpi.b #$2,$24(a0)
	beq.s loc_208ae0
loc_208ada:
	move.w $10(a1),$14(a1)
loc_208ae0:
	bclr.b #$1,$22(a1)
loc_208ae6:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208af0:
	move.b #$1,$25(a0)
loc_208af6:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208daa
	btst.b #$6,$2c(a1)
	bne.w loc_208daa
	cmpi.b #$6,$24(a1)
	bcc.w loc_208daa
	tst.b $0(a1)
	beq.w loc_208daa
	tst.b $1(a0)
	bpl.w loc_208daa
	tst.b ($ff1906).l
	bne.w loc_208daa
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208daa
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208daa
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208b64
	btst.b #$3,$22(a0)
	bne.s loc_208b76
	bra.w loc_208daa
loc_208b64:
	cmpi.b #$1,$25(a0)
	bne.s loc_208b76
	tst.w $12(a1)
	beq.s loc_208b76
	bmi.w loc_208daa
loc_208b76:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208daa
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208daa
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208bac
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208bac:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208bba
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208bba:
	cmp.w d4,d5
	bcs.w loc_208c4e
	cmpi.b #$1,$25(a0)
	beq.w loc_208daa
	cmpi.b #$a,$0(a0)
	bne.s loc_208bdc
	btst.b #$1,$22(a1)
	bne.w loc_208daa
loc_208bdc:
	cmpi.b #$4,d5
	bls.w loc_208daa
	bsr.w sub_208dfa
	move.l d0,-(a7)
	bsr.w sub_2089a8
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208c06
	tst.w $10(a1)
	beq.s loc_208c36
	bpl.s loc_208c0e
	bra.s loc_208c36
loc_208c06:
	tst.w $10(a1)
	beq.s loc_208c36
	bpl.s loc_208c36
loc_208c0e:
	bsr.w sub_208dba
	btst.b #$1,$22(a1)
	bne.s loc_208c2c
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208c2c:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208c36:
	bsr.w sub_208e70
	bsr.w sub_208dba
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208c4e:
	cmpi.b #$19,$0(a0)
	bne.s loc_208c60
	btst.b #$2,$22(a1)
	bne.w loc_208daa
loc_208c60:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208c76
	bmi.w loc_208d46
loc_208c76:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208c88
	tst.w $12(a1)
	beq.s loc_208c88
	bmi.w loc_208daa
loc_208c88:
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
	beq.s loc_208cd4
	bpl.s loc_208cb4
	neg.b d0
loc_208cb4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d9a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208cd4
	tst.w $10(a0)
	bpl.s loc_208cd0
	neg.w d1
loc_208cd0:
	add.w d1,$8(a1)
loc_208cd4:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208d3e
	tst.w $12(a0)
	bmi.s loc_208d12
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e2c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208d12
	add.w d1,$c(a1)
	bra.w loc_208daa
loc_208d12:
	tst.w $12(a0)
	bpl.s loc_208d3e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207044).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208d3e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207410).l
	movem.l (a7)+,a0-a1
	bra.s loc_208daa
loc_208d3e:
	bsr.w sub_208a1a
	moveq #$1,d0
	rts
loc_208d46:
	cmpi.b #$1,$25(a0)
	beq.s loc_208daa
	cmpi.b #$9,$0(a0)
	beq.s loc_208daa
	cmpi.b #$a,$0(a0)
	bne.s loc_208d70
	cmpi.b #$2,$25(a0)
	beq.s loc_208d90
	btst.b #$1,$1(a0)
	bne.s loc_208d90
	bra.s loc_208daa
loc_208d70:
	btst.b #$1,$22(a1)
	bne.s loc_208d90
	tst.w $12(a0)
	beq.s loc_208d90
	bmi.s loc_208d90
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207410).l
	movem.l (a7)+,a0-a1
loc_208d90:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208e70
	bsr.w sub_2089a8
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208daa:
	bsr.w sub_208e70
	bsr.w sub_2089a8
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208dba:
	tst.w $10(a0)
	beq.s loc_208df8
	cmpi.b #$a,$0(a0)
	beq.s loc_208df8
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208dd4
	neg.b d0
loc_208dd4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d9a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208df8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207410).l
	movem.l (a7)+,a0-a1
loc_208df8:
	rts

sub_208dfa:
	cmpi.b #$a,$0(a0)
	bne.s loc_208e0a
	move.b #$0,$20(a1)
	rts
loc_208e0a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208e5e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208e6e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208e2c
	tst.w $10(a2)
	beq.s loc_208e6e
loc_208e2c:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208e3e
	cmp.w $8(a2),d1
	bcs.s loc_208e6e
	bra.s loc_208e44
loc_208e3e:
	cmp.w $8(a2),d1
	bcc.s loc_208e6e
loc_208e44:
	cmpi.b #$15,$0(a0)
	beq.s loc_208e6e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207410).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208e5e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208e6e:
	rts

sub_208e70:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208e8a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208e8a
	move.b #$0,$20(a1)
loc_208e8a:
	rts
	.incbin 36492, 90
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208af6).l
	.incbin 36596, 1580
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20952e(pc,d0.w),d1
	jmp dat_20952e(pc,d1.w)
dat_20952e:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209538:
	.incbin 38200, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209590
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209588
	moveq #$0,d1
	bra.s loc_209590
loc_209588:
	cmpi.w #$3,d1
	bcs.s loc_209590
	moveq #$2,d1
loc_209590:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2095ac
	moveq #$6,d1
loc_2095ac:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209538).l,a1
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
	beq.s loc_2095fc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2095f4
	moveq #$0,d0
	bra.s loc_2095fc
loc_2095f4:
	cmpi.w #$3,d0
	bcs.s loc_2095fc
	moveq #$2,d0
loc_2095fc:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2096ca
	dbf d0,loc_2095fc
	bclr.b #$7,(a2)
	bra.s loc_209652
loc_20960e:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20963a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209632
	moveq #$0,d0
	bra.s loc_20963a
loc_209632:
	cmpi.w #$3,d0
	bcs.s loc_20963a
	moveq #$2,d0
loc_20963a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2096ca
	dbf d0,loc_20963a
	bclr.b #$7,(a2)
	bsr.w sub_207ac2
	bne.w loc_2096d6
loc_209652:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20999c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2096a8
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2096a8
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2096a8:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2096ca:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20960e
loc_2096d6:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2096fc
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2096f4
	moveq #$0,d0
	bra.s loc_2096fc
loc_2096f4:
	cmpi.w #$3,d0
	bcs.s loc_2096fc
	moveq #$2,d0
loc_2096fc:
	lea $1(a2),a3
loc_209700:
	btst.b #$0,-(a3)
	bne.w sub_203b10
	dbf d0,loc_209700
	tst.b $1(a0)
	bmi.s loc_209730
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2097aa
loc_209730:
	tst.w ($ff190e).l
	bne.s loc_209740
	move.b ($ff1913).l,$1a(a0)
loc_209740:
	bra.w sub_203a64
	.incbin 38724, 102
loc_2097aa:
	bra.w sub_203b10
	.incbin 38830, 1338
loc_209ce8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d16(pc,d0.w),d0
	jsr dat_209d16(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209d14
	cmpi.w #$5a,($f786).w
	bcs.s loc_209d0e
	btst.b #$0,($ff1505).l
	bne.s loc_209d14
loc_209d0e:
	jmp (sub_203a64).l
loc_209d14:
	rts
dat_209d16:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a2f0,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209d4a
	move.b #$13,$1a(a0)
loc_209d4a:
	rts
loc_209d4c:
	tst.b ($ff0f01).l
	beq.s loc_209d5a
	jmp (sub_203b10).l
loc_209d5a:
	cmpi.b #$a,$28(a0)
	beq.w loc_209ce8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d7e(pc,d0.w),d0
	jsr dat_209d7e(pc,d0.w)
	jsr (sub_203a64).l
	jmp (loc_207ae2).l
dat_209d7e:
	.incbin 40318, 390
	tst.b $28(a0)
	bne.s loc_209f18
	tst.b ($ff0f01).l
	beq.s loc_209f18
	jmp (loc_207ae2).l
loc_209f18:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209d4c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f30(pc,d0.w),d1
	jmp dat_209f30(pc,d1.w)
dat_209f30:
	.incbin 40752, 1410
loc_20a4b2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4c6(pc,d0.w),d0
	jsr dat_20a4c6(pc,d0.w)
	jmp (sub_203a64).l
dat_20a4c6:
	.incbin 42182, 146
	tst.b $28(a0)
	bmi.w loc_20a4b2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a56e(pc,d0.w),d0
	jmp dat_20a56e(pc,d0.w)
dat_20a56e:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a608,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a59e
	move.b #$3,$1a(a0)
	bra.s loc_20a5be
loc_20a59e:
	tst.w ($ff1588).l
	beq.s loc_20a5ac
	move.b #$2,$1a(a0)
loc_20a5ac:
	tst.b $28(a0)
	beq.s loc_20a5be
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a5be:
	tst.b $28(a0)
	bne.s loc_20a602
	tst.b $29(a0)
	beq.s loc_20a5ee
	tst.w ($ff1512).l
	beq.s loc_20a5da
	bclr.b #$5,$2(a0)
	bra.s loc_20a602
loc_20a5da:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a602
	eori.b #$20,$2(a0)
	bra.s loc_20a602
loc_20a5ee:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a602
	move.b #$2,$1a(a0)
loc_20a602:
	jmp (sub_203a64).l
	.incbin 42504, 168

sub_20a6b0:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a6cc
	move.l d1,(a3)
loc_20a6cc:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a6f6
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c2e).l
loc_20a6f6:
	rts
loc_20a6f8:
	tst.w ($ff1588).l
	beq.s loc_20a74e
	bsr.w sub_20a94a
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
	lea (dat_20aaaa).l,a2
	moveq #$2,d6
	bsr.w sub_20ab02
	bra.w loc_20a7a8
loc_20a74e:
	tst.b ($ff1511).l
	beq.s loc_20a772
	bpl.s loc_20a75c
	bsr.w sub_20a8f4
loc_20a75c:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a9e4
loc_20a772:
	tst.b ($ff150f).l
	beq.s loc_20a7a8
	bpl.s loc_20a780
	bsr.w sub_20a8e0
loc_20a780:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a7a4
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a7a4:
	bsr.w sub_20a9da
loc_20a7a8:
	tst.w ($ff1588).l
	bne.w loc_20a854
	tst.b ($ff1510).l
	beq.w loc_20a854
	tst.w ($f63a).w
	bne.w loc_20a854
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a8b2
	tst.b ($f7cc).w
	bne.s loc_20a7fe
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a7fe
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a7fe
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a7fe
	move.b #$9,(a1)
loc_20a7fe:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20aaf0
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20aafa
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a850
	move.w #$63,d1
loc_20a850:
	bsr.w sub_20aafa
loc_20a854:
	tst.b ($ff150e).l
	beq.s loc_20a866
	clr.b ($ff150e).l
	bsr.w sub_20aad0
loc_20a866:
	tst.b ($f7d6).w
	beq.s loc_20a8b0
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a886
	move.l #$6d400001,d0
loc_20a886:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a968
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a8a6
	move.l #$6e800001,d0
loc_20a8a6:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a968
loc_20a8b0:
	rts
loc_20a8b2:
	btst.b #$7,($ff152e).l
	bne.s loc_20a8de
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207410
	move.b #$1,($ff150c).l
loc_20a8de:
	rts

sub_20a8e0:
	move.l #$73600002,($c00004).l
	lea dat_20a946(pc),a2
	move.w #$2,d2
	bra.s loc_20a910

sub_20a8f4:
	lea ($c00000).l,a6
	bsr.w sub_20aad0
	move.l #$70600002,($c00004).l
	lea dat_20a93e(pc),a2
	move.w #$6,d2
loc_20a910:
	lea (dat_2330bc).l,a1
loc_20a916:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a932
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a926:
	move.l (a3)+,(a6)
	dbf d1,loc_20a926
loc_20a92c:
	dbf d2,loc_20a916
	rts
loc_20a932:
	move.l #$0,(a6)
	dbf d1,loc_20a932
	bra.s loc_20a92c
dat_20a93e:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a946:
	dc.b $ff,$ff,$00,$00

sub_20a94a:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20aac6
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20aac6

sub_20a968:
	lea (dat_20aaa2).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a978:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a97c:
	sub.l d3,d1
	bcs.s loc_20a984
	addq.w #$1,d2
	bra.s loc_20a97c
loc_20a984:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a98e
	move.w #$1,d4
loc_20a98e:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a99a
	tst.w d6
	bne.s loc_20a9cc
loc_20a99a:
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
loc_20a9c0:
	addi.l #$400000,d0
	dbf d6,loc_20a978
	rts
loc_20a9cc:
	moveq #$f,d5
loc_20a9ce:
	move.l #$0,(a6)
	dbf d5,loc_20a9ce
	bra.s loc_20a9c0

sub_20a9da:
	lea (dat_20aaaa).l,a2
	moveq #$2,d6
	bra.s loc_20a9ec

sub_20a9e4:
	lea (dat_20aa9e).l,a2
	moveq #$5,d6
loc_20a9ec:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a9f4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a9f8:
	sub.l d3,d1
	bcs.s loc_20aa00
	addq.w #$1,d2
	bra.s loc_20a9f8
loc_20aa00:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aa0a
	move.w #$1,d4
loc_20aa0a:
	tst.w d4
	beq.s loc_20aa38
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
loc_20aa38:
	addi.l #$400000,d0
	dbf d6,loc_20a9f4
	rts
	.incbin 43588, 90
dat_20aa9e:
	dc.b $00,$01,$86,$a0
dat_20aaa2:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aaaa:
	dc.b $00,$00,$00,$64
dat_20aaae:
	dc.b $00,$00,$00,$0a
dat_20aab2:
	dc.b $00,$00,$00,$01
dat_20aab6:
	.incbin 43702, 16

sub_20aac6:
	moveq #$3,d6
	lea (dat_20aab6).l,a2
	bra.s sub_20ab02

sub_20aad0:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20aae6
	moveq #$9,d1
loc_20aae6:
	lea (dat_20aab2).l,a2
	moveq #$0,d6
	bra.s sub_20ab02

sub_20aaf0:
	lea (dat_20aab2).l,a2
	moveq #$0,d6
	bra.s sub_20ab02

sub_20aafa:
	lea (dat_20aaae).l,a2
	moveq #$1,d6

sub_20ab02:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ab0a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab0e:
	sub.l d3,d1
	bcs.s loc_20ab16
	addq.w #$1,d2
	bra.s loc_20ab0e
loc_20ab16:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ab20
	move.w #$1,d4
loc_20ab20:
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
	dbf d6,loc_20ab0a
	rts
	.incbin 43862, 1436
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b10c(pc,d0.w),d0
	jsr dat_20b10c(pc,d0.w)
	jsr (sub_203a64).l
	jmp (loc_207ae2).l
dat_20b10c:
	.incbin 45324, 636
	tst.b $28(a0)
	bmi.w loc_20b394
	bra.w loc_20b662
loc_20b394:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b3ae(pc,d0.w),d0
	jsr dat_20b3ae(pc,d0.w)
	jsr (sub_203a64).l
	jmp (loc_207ae2).l
dat_20b3ae:
	.incbin 45998, 22
	cmpi.b #$2,($ff152e).l
	bne.w loc_20b3e0
	tst.b ($ff156a).l
	beq.w loc_20b3e0
	jmp (sub_203b10).l
loc_20b3e0:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.w #$3af,$2(a0)
	move.l #$20b638,$4(a0)
	move.w #$7,$30(a0)
	tst.w ($ff1906).l
	bne.w loc_20b422
	lea ($d000).w,a6
	lea $3e(a0),a5
	bsr.w sub_20b424
	tst.b $3e(a0)
	bne.w loc_20b4a8
loc_20b422:
	rts

sub_20b424:
	tst.w $12(a6)
	bmi.w loc_20b4a6
	cmpi.b #$4,$24(a6)
	beq.w loc_20b4a6
	cmpi.b #$6,$24(a6)
	beq.w loc_20b4a6
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffe8,d0
	subi.w #$10,d0
	bcc.w loc_20b4a6
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.w loc_20b4a6
	st (a5)
	bset.b #$0,$2c(a6)
	bset.b #$2,$22(a6)
	move.b #$e,$16(a6)
	move.b #$7,$17(a6)
	move.b #$2,$1c(a6)
	move.w #$0,$10(a6)
	move.w #$f800,$12(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),d0
	addi.w #$fff0,d0
	move.w d0,$c(a6)
loc_20b4a6:
	rts
loc_20b4a8:
	addq.b #$2,$24(a0)
	move.w #$8,$2a(a0)
	move.b #$1,$1a(a0)
	move.w #$d7,d0
	jmp (sub_202282).l
	.incbin 46274, 416
loc_20b662:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b670(pc,d0.w),d0
	jmp dat_20b670(pc,d0.w)
dat_20b670:
	.incbin 46704, 1138
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bafc(pc,d0.w),d0
	jsr dat_20bafc(pc,d0.w)
	jsr (sub_203a64).l
	jmp (loc_207ae2).l
dat_20bafc:
	.incbin 47868, 290
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	movea.w $30(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	movea.w $32(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	movea.w $34(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	rts
	.incbin 48260, 108
loc_20bcf0:
	moveq #$2,d0
	jmp (sub_20244c).l

sub_20bcf8:
	rts
	.incbin 48378, 1906
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_208af0).l
	beq.s loc_20c482
	move.b #$1e,$38(a0)
loc_20c482:
	rts
	.incbin 50308, 1694
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208af0).l
	.incbin 52020, 1256
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d03a(pc,d0.w),d0
	jsr dat_20d03a(pc,d0.w)
	jsr (sub_203a64).l
	move.w $32(a0),d0
	jmp (loc_207ae6).l
dat_20d03a:
	.incbin 53306, 5814
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e6fe(pc,d0.w),d0
	jmp dat_20e6fe(pc,d0.w)
dat_20e6fe:
	.incbin 59134, 270
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e81a(pc,d0.w),d0
	jmp dat_20e81a(pc,d0.w)
dat_20e81a:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20ef18,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20eed8).l,a2
loc_20e868:
	jsr (sub_207aac).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20ef18,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20e8ba
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20e8ba:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20e868
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e8e2
	bge.s loc_20e8d8
	neg.w d0
loc_20e8d8:
	add.w d0,$a(a0)
	jmp (sub_203a64).l
loc_20e8e2:
	addq.b #$4,$24(a0)
	jmp (sub_203a64).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e906
	bge.s loc_20e8fc
	neg.w d0
loc_20e8fc:
	add.w d0,$8(a0)
	jmp (sub_203a64).l
loc_20e906:
	addq.b #$4,$24(a0)
	jmp (sub_203a64).l
	tst.b $1e(a0)
	beq.s loc_20e920
	subq.b #$1,$1e(a0)
	jmp (sub_203a64).l
loc_20e920:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20e93a
	bge.s loc_20e930
	neg.w d0
loc_20e930:
	add.w d0,$a(a0)
	jmp (sub_203a64).l
loc_20e93a:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20244c).l
	tst.b $1e(a0)
	beq.s loc_20e95c
	subq.b #$1,$1e(a0)
	jmp (sub_203a64).l
loc_20e95c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20e976
	bge.s loc_20e96c
	neg.w d0
loc_20e96c:
	add.w d0,$8(a0)
	jmp (sub_203a64).l
loc_20e976:
	jmp (sub_203b10).l
	tst.l ($f680).w
	bne.s loc_20e990
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b10).l
loc_20e990:
	rts
	.incbin 59794, 1350
dat_20eed8:
	.incbin 61144, 340

sub_20f02c:
	jsr (sub_2064e2).l
	subq.b #$1,($f66c).w
	bpl.w loc_20f0be
	move.b #$a,($f66c).w
	moveq #$0,d0
	move.b ($f666).w,d0
	addq.b #$1,d0
	cmpi.b #$2,d0
	bcs.s loc_20f050
	moveq #$0,d0
loc_20f050:
	move.b d0,($f666).w
	lsl.w #$3,d0
	movea.l dat_20f0c0(pc,d0.w),a1
	movea.l dat_20f0c4(pc,d0.w),a2
	bsr.s sub_20f0ae
	lea ($c00004).l,a5
	move.l #$940093a0,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$76c0,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	movea.l a2,a1
	bsr.s sub_20f0ae
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7a00,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	rts

sub_20f0ae:
	lea ($ff1980).l,a3
	move.w #$bf,d0
loc_20f0b8:
	move.l (a1)+,(a3)+
	dbf d0,loc_20f0b8
loc_20f0be:
	rts
dat_20f0c0:
	dc.b $00,$23,$41,$5a
dat_20f0c4:
	dc.b $00,$23,$42,$9a,$00,$23,$3f,$1a
	dc.b $00,$23,$40,$5a
dat_20f0d0:
	.incbin 61648, 16
dat_20f0e0:
	.incbin 61664, 548
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
	jmp ($203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp ($203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp (loc_2064ec).l
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
	.incbin 235176, 16184
dat_23d5e0:
	.incbin 251360, 10784
