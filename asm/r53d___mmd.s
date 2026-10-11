; R53D__.MMD
; disassembled from the disc; code only, data comes from data/R53D__.MMD at build time
	.file "R53D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$82
	jmp (loc_201bf8).l
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
	bsr.w sub_20212e
	bsr.w sub_2020d6
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201472

sub_200184:
	lea ($f7b7).w,a4
	lea ($f7b0).w,a5
	tst.b ($f7a7).w
	beq.s loc_20019c
	adda.w #$1,a4
	adda.w #$1,a5
	bra.s loc_20019e
loc_20019c:
	bsr.s sub_2001ba
loc_20019e:
	btst.b #$0,($ff156c).l
	bne.s loc_2001aa
	rts
loc_2001aa:
	lea (dat_200226).l,a1
	bsr.s sub_2001ca
	lea (dat_200242).l,a1
	bra.s sub_2001ca

sub_2001ba:
	lea dat_200210(pc),a1
	tst.b ($ff158f).l
	beq.s sub_2001ca
	lea dat_200266(pc),a1

sub_2001ca:
	subq.b #$1,(a4)
	bpl.s loc_200206
	move.b $3(a1),(a4)
	moveq #$0,d0
	move.b (a5),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_2001e0
	moveq #$0,d0
loc_2001e0:
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
loc_200200:
	move.w (a1)+,(a2)+
	dbf d1,loc_200200
loc_200206:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200210:
	.incbin 528, 22
dat_200226:
	.incbin 550, 28
dat_200242:
	.incbin 578, 36
dat_200266:
	.incbin 614, 22

sub_20027c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20028e:
	move.w d1,(a0)+
	dbf d0,loc_20028e
	move.w #$15,d4
loc_200298:
	move.b #$12,($f62a).w
	bsr.w sub_2007b6
	bsr.s sub_2002ae
	bsr.w sub_2024f4
	dbf d4,loc_200298
	rts

sub_2002ae:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002c4:
	bsr.s sub_2002f2
	dbf d0,loc_2002c4
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002f0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002ea:
	bsr.s sub_2002f2
	dbf d0,loc_2002ea
loc_2002f0:
	rts

sub_2002f2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20031a
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_200308
	move.w d1,(a0)+
	rts
loc_200308:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200316
	move.w d1,(a0)+
	rts
loc_200316:
	addq.w #$2,(a0)+
	rts
loc_20031a:
	addq.w #$2,a0
	rts

sub_20031e:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200328:
	move.b #$12,($f62a).w
	bsr.w sub_2007b6
	bsr.s sub_20033e
	bsr.w sub_2024f4
	dbf d4,loc_200328
	rts

sub_20033e:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20034e:
	bsr.s sub_20036c
	dbf d0,loc_20034e
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200364:
	bsr.s sub_20036c
	dbf d0,loc_200364
	rts

sub_20036c:
	move.w (a0),d2
	beq.s loc_200398
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20037c
	subq.w #$2,(a0)+
	rts
loc_20037c:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_20038a
	subi.w #$20,(a0)+
	rts
loc_20038a:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200398
	subi.w #$200,(a0)+
	rts
loc_200398:
	addq.w #$2,a0
	rts

sub_20039c:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003b6:
	move.w d1,(a0)+
	dbf d0,loc_2003b6
	move.w #$15,d4
loc_2003c0:
	move.b #$12,($f62a).w
	bsr.w sub_2007b6
	bsr.s sub_2003d6
	bsr.w sub_2024f4
	dbf d4,loc_2003c0
	rts

sub_2003d6:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ec:
	bsr.s sub_20041a
	dbf d0,loc_2003ec
	cmpi.b #$1,($ff1506).l
	bne.s loc_200418
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200412:
	bsr.s sub_20041a
	dbf d0,loc_200412
loc_200418:
	rts

sub_20041a:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200446
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200432
	cmp.w d2,d1
	bcs.s loc_200432
	move.w d1,(a0)+
	rts
loc_200432:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200442
	cmp.w d2,d1
	bcs.s loc_200442
	move.w d1,(a0)+
	rts
loc_200442:
	subq.w #$2,(a0)+
	rts
loc_200446:
	addq.w #$2,a0
	rts

sub_20044a:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200454:
	move.b #$12,($f62a).w
	bsr.w sub_2007b6
	bsr.s sub_20046a
	bsr.w sub_2024f4
	dbf d4,loc_200454
	rts

sub_20046a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20047a:
	bsr.s sub_200498
	dbf d0,loc_20047a
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200490:
	bsr.s sub_200498
	dbf d0,loc_200490
	rts

sub_200498:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004d4
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_2004b0
	addq.w #$2,(a0)+
	rts
loc_2004b0:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004c2
	addi.w #$20,(a0)+
	rts
loc_2004c2:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004d4
	addi.w #$200,(a0)+
	rts
loc_2004d4:
	addq.w #$2,a0
	rts

sub_2004d8:
	lea (dat_200544).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2004ec:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004ec
	rts

sub_2004f4:
	lea (dat_200544).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200504:
	move.l (a2)+,(a3)+
	dbf d7,loc_200504
	rts
	.incbin 1292, 56
dat_200544:
	.incbin 1348, 626

sub_2007b6:
	move.w #$2300,sr
loc_2007ba:
	tst.b ($f62a).w
	bne.s loc_2007ba
	rts

sub_2007c2:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007da(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007da(pc,d0.w),d0
	rts
dat_2007da:
	.incbin 2010, 640

sub_200a5a:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200ab6
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a74
	neg.w d3
loc_200a74:
	tst.w d4
	bpl.w loc_200a7c
	neg.w d4
loc_200a7c:
	cmp.w d3,d4
	bcc.w loc_200a8e
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200ac0(pc,d4.w),d0
	bra.s loc_200a98
loc_200a8e:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200ac0(pc,d3.w),d0
loc_200a98:
	tst.w d1
	bpl.w loc_200aa4
	neg.w d0
	addi.w #$80,d0
loc_200aa4:
	tst.w d2
	bpl.w loc_200ab0
	neg.w d0
	addi.w #$100,d0
loc_200ab0:
	movem.l (a7)+,d3-d4
	rts
loc_200ab6:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200ac0:
	.incbin 2752, 258

sub_200bc2:
	btst.b #$3,$22(a0)
	beq.s loc_200bd6
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200bd6:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200bf8
	move.b $26(a0),d0
	bpl.s loc_200bf2
	subq.b #$1,d0
loc_200bf2:
	addi.b #$20,d0
	bra.s loc_200c04
loc_200bf8:
	move.b $26(a0),d0
	bpl.s loc_200c00
	addq.b #$1,d0
loc_200c00:
	addi.b #$1f,d0
loc_200c04:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e8e
	cmpi.b #$80,d0
	beq.w loc_200dec
	cmpi.b #$c0,d0
	beq.w loc_200d50
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
	bsr.w sub_201118
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
	bsr.w sub_201118
	move.w (a7)+,d0
	bsr.w sub_200d24
	tst.w d1
	beq.s loc_200c92
	bpl.s loc_200c94
	cmpi.w #$fff2,d1
	blt.s loc_200cba
	add.w d1,$c(a0)
loc_200c92:
	rts
loc_200c94:
	cmpi.w #$e,d1
	bgt.s loc_200ca0
loc_200c9a:
	add.w d1,$c(a0)
	rts
loc_200ca0:
	tst.b $38(a0)
	bne.s loc_200c9a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cba:
	rts
	.incbin 3260, 34
loc_200cde:
	rts
	.incbin 3296, 68

sub_200d24:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d32
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d32:
	btst.l #$0,d2
	bne.s loc_200d3e
	move.b d2,$26(a0)
	rts
loc_200d3e:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d50:
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
	bsr.w sub_201288
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
	bsr.w sub_201288
	move.w (a7)+,d0
	bsr.w sub_200d24
	tst.w d1
	beq.s loc_200dc4
	bpl.s loc_200dc6
	cmpi.w #$fff2,d1
	blt.w loc_200cde
	add.w d1,$8(a0)
loc_200dc4:
	rts
loc_200dc6:
	cmpi.w #$e,d1
	bgt.s loc_200dd2
loc_200dcc:
	add.w d1,$8(a0)
	rts
loc_200dd2:
	tst.b $38(a0)
	bne.s loc_200dcc
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dec:
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
	bsr.w sub_201118
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
	bsr.w sub_201118
	move.w (a7)+,d0
	bsr.w sub_200d24
	tst.w d1
	beq.s loc_200e66
	bpl.s loc_200e68
	cmpi.w #$fff2,d1
	blt.w loc_200cba
	sub.w d1,$c(a0)
loc_200e66:
	rts
loc_200e68:
	cmpi.w #$e,d1
	bgt.s loc_200e74
loc_200e6e:
	sub.w d1,$c(a0)
	rts
loc_200e74:
	tst.b $38(a0)
	bne.s loc_200e6e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e8e:
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
	bsr.w sub_201288
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
	bsr.w sub_201288
	move.w (a7)+,d0
	bsr.w sub_200d24
	tst.w d1
	beq.s loc_200f08
	bpl.s loc_200f0a
	cmpi.w #$fff2,d1
	blt.w loc_200cde
	sub.w d1,$8(a0)
loc_200f08:
	rts
loc_200f0a:
	cmpi.w #$e,d1
	bgt.s loc_200f16
loc_200f10:
	sub.w d1,$8(a0)
	rts
loc_200f16:
	tst.b $38(a0)
	bne.s loc_200f10
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f30:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f46
	andi.w #$380,d0
loc_200f46:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fa6
	bmi.s loc_200faa
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f76
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f7c
loc_200f76:
	andi.w #$7fff,$2(a0)
loc_200f7c:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f8c
	bclr.b #$6,$1(a0)
loc_200f8c:
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
loc_200fa6:
	movea.l d1,a1
	rts
loc_200faa:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201012
	btst.b #$6,$1(a0)
	bne.s loc_200fd8
	cmpi.b #$14,d1
	bne.w loc_2010fc
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010fc
loc_200fd8:
	cmpi.b #$15,d1
	bne.s loc_200fe6
	move.w #$60,d1
	bra.w loc_2010fc
loc_200fe6:
	cmpi.b #$1e,d1
	bne.s loc_200ff4
	move.w #$61,d1
	bra.w loc_2010fc
loc_200ff4:
	cmpi.b #$1f,d1
	bne.s loc_201002
	move.w #$62,d1
	bra.w loc_2010fc
loc_201002:
	cmpi.b #$32,d1
	bne.w loc_2010fc
	move.w #$63,d1
	bra.w loc_2010fc
loc_201012:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201078
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201062
	cmpi.b #$6,d1
	beq.s loc_201062
	tst.b ($ff1956).l
	beq.w loc_2010fc
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201072
	cmpi.b #$3c,d1
	beq.s loc_201072
	cmpi.b #$37,d1
	beq.s loc_201072
	cmpi.b #$2f,d1
	beq.s loc_201072
	cmpi.b #$16,d1
	beq.s loc_201072
	bra.w loc_2010fc
loc_201062:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010fc
loc_201072:
	addq.b #$1,d1
	bra.w loc_2010fc
loc_201078:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010e8
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010fc
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010fc
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010ac
	move.w #$6a,d1
	bra.s loc_2010fc
loc_2010ac:
	cmpi.b #$48,d1
	bne.s loc_2010b8
	move.w #$6b,d1
	bra.s loc_2010fc
loc_2010b8:
	cmpi.b #$4a,d1
	bne.s loc_2010c4
	move.w #$6c,d1
	bra.s loc_2010fc
loc_2010c4:
	cmpi.b #$10,d1
	bne.s loc_2010d0
	move.w #$6d,d1
	bra.s loc_2010fc
loc_2010d0:
	cmpi.b #$63,d1
	bne.s loc_2010dc
	move.w #$6e,d1
	bra.s loc_2010fc
loc_2010dc:
	cmpi.b #$43,d1
	bne.s loc_2010fc
	move.w #$6f,d1
	bra.s loc_2010fc
loc_2010e8:
	btst.b #$6,$1(a0)
	beq.s loc_2010fc
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010fc
	move.w #$51,d1
loc_2010fc:
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

sub_201118:
	bsr.w sub_200f30
	cmpi.l #$210000,d1
	beq.s loc_201132
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201132
	btst.l d5,d4
	bne.s loc_201140
loc_201132:
	add.w a3,d2
	bsr.w sub_2011d8
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201140:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201132
	lea (dat_235638).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201166
	not.w d1
	neg.b (a4)
loc_201166:
	btst.l #$c,d4
	beq.s loc_201176
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201176:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235738).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201192
	neg.w d0
loc_201192:
	tst.w d0
	beq.s loc_201132
	bmi.s loc_2011ae
	cmpi.b #$10,d0
	beq.s loc_2011ca
loc_20119e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011ae:
	cmpa.w #$10,a3
	bne.s loc_2011be
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20119e
loc_2011be:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201132
loc_2011ca:
	sub.w a3,d2
	bsr.w sub_2011d8
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011d8:
	bsr.w sub_200f30
	cmpi.l #$210000,d1
	beq.s loc_2011f2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011f2
	btst.l d5,d4
	bne.s loc_201200
loc_2011f2:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201200:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011f2
	lea (dat_235638).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201226
	not.w d1
	neg.b (a4)
loc_201226:
	btst.l #$c,d4
	beq.s loc_201236
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201236:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235738).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201252
	neg.w d0
loc_201252:
	tst.w d0
	beq.s loc_2011f2
	bmi.s loc_201268
loc_201258:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201268:
	cmpa.w #$10,a3
	bne.s loc_201278
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201258
loc_201278:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011f2
	not.w d1
	rts

sub_201288:
	bsr.w sub_200f30
	cmpi.l #$210000,d1
	beq.s loc_2012a2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012a2
	btst.l d5,d4
	bne.s loc_2012b0
loc_2012a2:
	add.w a3,d3
	bsr.w sub_201338
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012b0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012a2
	lea (dat_235638).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012de
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012de:
	btst.l #$b,d4
	beq.s loc_2012e6
	neg.b (a4)
loc_2012e6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236738).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201302
	neg.w d0
loc_201302:
	tst.w d0
	beq.s loc_2012a2
	bmi.s loc_20131e
	cmpi.b #$10,d0
	beq.s loc_20132a
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20131e:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012a2
loc_20132a:
	sub.w a3,d3
	bsr.w sub_201338
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201338:
	bsr.w sub_200f30
	cmpi.l #$210000,d1
	beq.s loc_201352
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201352
	btst.l d5,d4
	bne.s loc_201360
loc_201352:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201360:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201352
	lea (dat_235638).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20138e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20138e:
	btst.l #$b,d4
	beq.s loc_201396
	neg.b (a4)
loc_201396:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236738).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013b2
	neg.w d0
loc_2013b2:
	tst.w d0
	beq.s loc_201352
	bmi.s loc_2013c8
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013c8:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201352
	not.w d1
	rts

sub_2013d8:
	rts
	.incbin 5082, 152
loc_201472:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201492
	tst.b ($ff0f01).l
	bne.s loc_201492
	move.b #$1,($ff156a).l
loc_201492:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014f8
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207662
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014f8
	move.b #$1,($ff1508).l
loc_2014f8:
	bset.b #$7,($f600).w
	bsr.w sub_2024e6
	tst.b ($ff156e).l
	bne.s loc_20151e
	btst.b #$7,($ff152e).l
	beq.s loc_201554
	bset.b #$0,($ff151d).l
	beq.s loc_20152a
loc_20151e:
	bsr.w sub_20044a
	bclr.b #$0,($ff151d).l
loc_20152a:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015c4
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201552
	bclr.b #$7,($ff152e).l
loc_201552:
	rts
loc_201554:
	bset.b #$0,($ff151d).l
	beq.s loc_201562
	bsr.w sub_20031e
loc_201562:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20157e
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015a6
loc_20157e:
	tst.b ($ff1508).l
	bne.s loc_2015c4
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015a6:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015ae:
	move.l #$0,(a1)+
	dbf d6,loc_2015ae
	move.b #$c,($f62a).w
	bsr.w sub_2007b6
	rts
loc_2015c4:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015e2
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015e2:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015f8
	btst.b #$7,($ff152e).l
	beq.s loc_2015fe
loc_2015f8:
	move.l #$eee0eee,d0
loc_2015fe:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201606:
	move.l d0,(a1)+
	dbf d6,loc_201606
loc_20160c:
	move.b #$c,($f62a).w
	bsr.w sub_2007b6
	bsr.w sub_2024f4
	bne.s loc_20160c
	tst.l ($f680).w
	bsr.w sub_201ab2
	moveq #$0,d0
	lea (dat_20fecc).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201636
	bsr.w sub_2025fa
loc_201636:
	moveq #$1,d0
	bsr.w sub_2025fa
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201652:
	move.l d0,(a1)+
	dbf d1,loc_201652
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201664:
	move.l d0,(a1)+
	dbf d1,loc_201664
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201674:
	move.l d0,(a1)+
	dbf d1,loc_201674
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201686:
	move.l d0,(a1)+
	dbf d1,loc_201686
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201696:
	move.l d0,(a1)+
	dbf d1,loc_201696
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016a6:
	move.l d0,(a1)+
	dbf d1,loc_2016a6
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2021d0
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
	bsr.w sub_2004f4
	moveq #$3,d0
	bsr.w sub_2004d8
	bsr.w sub_20285c
	bsr.w sub_2029b4
	bset.b #$2,($f754).w
	bsr.w sub_20340c
	bsr.w sub_2032f6
	jsr (sub_2013d8).l
	bsr.w sub_2019ec
loc_201726:
	move.b #$c,($f62a).w
	bsr.w sub_2007b6
	bsr.w sub_2024f4
	bne.s loc_201726
	tst.l ($f680).w
	bne.s loc_201726
	bsr.w sub_201978
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b12
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20178a
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20178a:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017cc
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017cc:
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
	jsr (sub_20fec6).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20185c
loc_201856:
	bsr.w sub_20039c
	bra.s loc_20186a
loc_20185c:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201856
	bsr.w sub_20027c
loc_20186a:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201878:
	move.b #$8,($f62a).w
	bsr.w sub_2007b6
	tst.b ($f7cc).w
	bne.s loc_201896
	btst.b #$7,($f605).w
	beq.s loc_201896
	eori.b #$1,($f63a).w
loc_201896:
	btst.b #$0,($f63a).w
	beq.w loc_201908
	bsr.w sub_201b76
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018e6
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201878
	subq.b #$1,($ff1508).l
	bpl.s loc_2018c8
	clr.b ($ff1508).l
loc_2018c8:
	move.w #$e,d0
	jsr (sub_205abc).l
	bsr.w sub_207662
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018f4
loc_2018e6:
	andi.b #$70,d0
	beq.w loc_201878
	clr.b ($ff1508).l
loc_2018f4:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201472
loc_201908:
	bsr.w sub_201bbc
	addq.w #$1,($ff1504).l
	jsr (sub_207678).l
	jsr (sub_203812).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201472
	tst.w ($ff1502).l
	bne.w loc_201472
	tst.w ($ff1906).l
	bne.s loc_201950
	cmpi.b #$6,($d024).w
	bcs.s loc_201950
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201954
loc_201950:
	bsr.w sub_2029b4
loc_201954:
	jsr (sub_2039bc).l
	tst.w ($ff190e).l
	bne.s loc_201966
	bsr.w sub_200184
loc_201966:
	jsr (sub_20c94e).l
	bsr.w sub_2024f4
	bsr.w sub_201a1e
	bra.w loc_201878

sub_201978:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201990
	move.w #$78,$30(a1)
loc_201990:
	rts
	.incbin 6546, 90

sub_2019ec:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019fe(pc,d0.w),($f796).w
	rts
dat_2019fe:
	.incbin 6654, 32

sub_201a1e:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a3c
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a3c:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a5a
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a5a:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a82
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a82
	move.b #$0,($ff1915).l
loc_201a82:
	tst.b ($ff1916).l
	beq.s loc_201ab0
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201ab0:
	rts

sub_201ab2:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201ad4
	cmpi.b #$2,d0
	bne.s loc_201ad4
	add.b ($ff156a).l,d0
loc_201ad4:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201aec(pc,d1.w),d0
	jmp (sub_205abc).l
dat_201aec:
	.incbin 6892, 38

sub_201b12:
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

sub_201b76:
	move.w #$ab,d0
	jsr (sub_2022be).l
	bset.b #$7,($f63a).w
	bne.s loc_201bba
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ba0
loc_201b96:
	move.w #$d5,d0
	jmp (sub_205abc).l
loc_201ba0:
	tst.b ($ff151f).l
	bne.s loc_201b96
	tst.b ($ff1520).l
	bne.s loc_201b96
	move.w #$90,d0
	jmp (sub_205abc).l
loc_201bba:
	rts

sub_201bbc:
	bclr.b #$7,($f63a).w
	beq.s loc_201bf6
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bdc
loc_201bd2:
	move.w #$d6,d0
	jmp (sub_205abc).l
loc_201bdc:
	tst.b ($ff151f).l
	bne.s loc_201bd2
	tst.b ($ff1520).l
	bne.s loc_201bd2
	move.w #$91,d0
	jmp (sub_205abc).l
loc_201bf6:
	rts
loc_201bf8:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c84
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c34
	move.w #$700,d0
loc_201c30:
	dbf d0,loc_201c30
loc_201c34:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c6a(pc,d0.w),d0
	jsr dat_201c6a(pc,d0.w)
loc_201c4a:
	jsr (sub_2022e2).l
	tst.b ($f63a).w
	bne.s loc_201c5e
	bsr.w sub_202096
	bsr.w sub_202084
loc_201c5e:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c6a:
	.incbin 7274, 26
loc_201c84:
	tst.b ($ff1957).l
	beq.w loc_201c4a
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c4a
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cb2
	move.w #$700,d0
loc_201cae:
	dbf d0,loc_201cae
loc_201cb2:
	move.w #$1,($f6fc).w
	jsr (sub_202256).l
	tst.b ($f64e).w
	bne.s loc_201cea
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d0e
loc_201cea:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d0e:
	move.w ($f624).w,(a5)
	jsr (sub_202272).l
	bra.w loc_201c4a
	.incbin 7452, 60
	jsr (sub_202256).l
	bsr.w sub_2020f2
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
	bsr.w sub_2059de
	tst.b ($f767).w
	beq.s loc_201e06
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e06:
	jsr (sub_20fec6).l
	jsr (sub_202272).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202eec
	bsr.w sub_202566
	jmp (loc_209c12).l
	dc.b $4e,$75
	jsr (sub_202256).l
	bsr.w sub_2020f2
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
	jsr (sub_202272).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202eec
	bra.w loc_20254a
	.incbin 7902, 16
	bsr.w sub_201fda
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f10
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f10:
	move.w ($f624).w,(a5)
	bra.w loc_20254a
	.incbin 7960, 194

sub_201fda:
	jsr (sub_202256).l
	bsr.w sub_2020f2
	tst.b ($f64e).w
	bne.s loc_202010
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202034
loc_202010:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202034:
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
	jmp (sub_202272).l
	dc.b $4e,$73

sub_202084:
	tst.b ($d02a).w
	bne.s loc_202094
	tst.w ($f786).w
	beq.s loc_202094
	addq.w #$1,($f786).w
loc_202094:
	rts

sub_202096:
	tst.w ($f780).w
	beq.s loc_2020a0
	addq.w #$1,($f780).w
loc_2020a0:
	tst.w ($f782).w
	beq.s loc_2020aa
	addq.w #$1,($f782).w
loc_2020aa:
	rts
	.incbin 8364, 42

sub_2020d6:
	bsr.w sub_202256
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202272

sub_2020f2:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202100
	addq.w #$2,a1

sub_202100:
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

sub_20212e:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021aa).l,a2
	moveq #$12,d7
loc_202142:
	move.w (a2)+,(a0)
	dbf d7,loc_202142
	move.w (dat_2021ac).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202168:
	move.w d0,(a1)
	dbf d7,loc_202168
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20219a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20219a
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021aa:
	dc.b $80,$04
dat_2021ac:
	.incbin 8620, 36

sub_2021d0:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021f2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021f2
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202220:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202220
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20223e:
	move.l d0,(a1)+
	dbf d1,loc_20223e
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20224e:
	move.l d0,(a1)+
	dbf d1,loc_20224e
	rts

sub_202256:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202266:
	btst.b #$0,($a11100).l
	bne.s loc_202266
	rts

sub_202272:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8832, 62

sub_2022be:
	tst.b ($f00a).w
	bne.s loc_2022ca
	move.b d0,($f00a).w
	rts
loc_2022ca:
	tst.b ($f00b).w
	bne.s loc_2022d6
	move.b d0,($f00b).w
	rts
loc_2022d6:
	tst.b ($f00c).w
	bne.s loc_2022e0
	move.b d0,($f00c).w
loc_2022e0:
	rts

sub_2022e2:
	jsr (sub_202256).l
	tst.b ($f00a).w
	beq.s loc_2022fc
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2022fc:
	tst.b ($f00b).w
	beq.s loc_202310
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202310:
	tst.b ($f00c).w
	beq.s loc_202324
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202324:
	bra.w sub_202272
	.incbin 9000, 32

sub_202348:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20240a).l,a3
	lea ($c00000).l,a4
	bra.s loc_202364

sub_20235a:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202420).l,a3
loc_202364:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202372
	adda.w #$a,a3
loc_202372:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202436
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202392
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202392:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2023de
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023ba
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023ba:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2023c8:
	lsr.w #$4,d0
loc_2023ca:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2023d8
	jmp (a3)

sub_2023d4:
	moveq #$0,d4
	moveq #$8,d3
loc_2023d8:
	dbf d0,loc_2023ca
	bra.s sub_202392
loc_2023de:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2023ec
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023ec:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2023c8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2023c8
loc_20240a:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023d4
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023d4
	rts
dat_202420:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023d4
	rts

sub_202436:
	move.b (a0)+,d0
loc_202438:
	cmpi.b #$ff,d0
	bne.s loc_202440
	rts
loc_202440:
	move.w d0,d7
loc_202442:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202438
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
	bne.s loc_202470
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202442
loc_202470:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20247c:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20247c
	bra.s loc_202442

sub_202488:
	movem.l a1-a2,-(a7)
	lea (dat_20fedc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024a0:
	tst.l (a2)
	beq.s loc_2024a8
	addq.w #$6,a2
	bra.s loc_2024a0
loc_2024a8:
	move.w (a1)+,d0
	bmi.s loc_2024b4
loc_2024ac:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024ac
loc_2024b4:
	movem.l (a7)+,a1-a2
	rts
loc_2024ba:
	movem.l a1-a2,-(a7)
	lea (dat_20fedc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_2024e6
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_2024e0
loc_2024d8:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024d8
loc_2024e0:
	movem.l (a7)+,a1-a2
	rts

sub_2024e6:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2024ec:
	clr.l (a2)+
	dbf d0,loc_2024ec
	rts

sub_2024f4:
	tst.l ($f680).w
	beq.s loc_202548
	tst.w ($f6f8).w
	bne.s loc_202548
	movea.l ($f680).w,a0
	lea (loc_20240a).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202516
	adda.w #$a,a3
loc_202516:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202436
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
loc_202548:
	rts
loc_20254a:
	tst.w ($f6f8).w
	beq.w loc_2025e8
loc_202552:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202584

sub_202566:
	tst.w ($f6f8).w
	beq.s loc_2025e8
	tst.b ($f744).w
	bne.s loc_202552
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202584:
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
loc_2025b8:
	movea.w #$8,a5
	bsr.w sub_2023d4
	subq.w #$1,($f6f8).w
	beq.s loc_2025ea
	subq.w #$1,($f6fa).w
	bne.s loc_2025b8
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025e8:
	rts
loc_2025ea:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2025f0:
	move.l $6(a0),(a0)+
	dbf d0,loc_2025f0
	rts

sub_2025fa:
	lea (dat_20fedc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20260c:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202348
	dbf d1,loc_20260c
	rts
	.incbin 9772, 560

sub_20285c:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028b8).l,a0
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
	bra.w loc_2028e4
dat_2028b8:
	dc.b $00,$04,$00,$00,$0e,$97,$00,$00
	dc.b $03,$20,$00,$60
dat_2028c4:
	.incbin 10436, 32
loc_2028e4:
	tst.b ($ff1522).l
	beq.s loc_202904
	jsr (sub_2068ea).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202902
	moveq #$0,d0
loc_202902:
	bra.s loc_202940
loc_202904:
	lea (dat_20297c).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202926
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_2028c4).l,a1
	adda.w d0,a1
	bra.s loc_202930
loc_202926:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202930:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202940:
	subi.w #$a0,d1
	bcc.s loc_202948
	moveq #$0,d1
loc_202948:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202952
	move.w d2,d1
loc_202952:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20295e
	moveq #$0,d0
loc_20295e:
	cmp.w ($f72e).w,d0
	blt.s loc_202968
	move.w ($f72e).w,d0
loc_202968:
	move.w d0,($f704).w
	bsr.w sub_202984
	lea (dat_202980).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20297c:
	dc.b $00,$40,$02,$6c
dat_202980:
	dc.b $7f,$7f,$7f,$7f

sub_202984:
	swap d0
	lsr.l #$3,d0
	move.l d0,d2
	lsr.l #$2,d2
	add.l d2,d0
	add.l d2,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f708).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.w d1,($f718).w
	rts

sub_2029b4:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029c0
	rts
loc_2029c0:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b62
	bsr.w sub_202c02
	bsr.w sub_2034a6
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_202e8c
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_202e58
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$2,d6
	bsr.w sub_202e24
	move.w ($f704).w,d0
	lsr.w #$3,d0
	move.w d0,d1
	lsr.w #$2,d1
	add.w d1,d0
	add.w d1,d1
	add.w d1,d0
	bsr.w sub_202df4
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
	bsr.w sub_202afa
	move.w ($f708).w,d0
	neg.w d0
	moveq #$b,d6
loc_202a68:
	move.w d0,(a1)+
	dbf d6,loc_202a68
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202a76:
	move.w d0,(a1)+
	dbf d6,loc_202a76
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$27,d1
	moveq #$1d,d5
	btst.b #$0,($ff156c).l
	bne.s loc_202aac
	sub.w d3,d1
	bcs.s loc_202ab8
	cmpi.w #$1c,d1
	bcs.s loc_202aae
loc_202aac:
	moveq #$1c,d1
loc_202aae:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	bsr.w sub_202b3e
loc_202ab8:
	btst.b #$0,($ff156c).l
	bne.w loc_202af4
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$8,d2
	divs.w #$100,d2
	ext.l d2
	asl.l #$8,d2
	moveq #$0,d3
	move.w d0,d3
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
loc_202ae4:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d1,loc_202ae4
loc_202af4:
	rts
dat_202af6:
	dc.b $05,$0b,$05,$00

sub_202afa:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$6,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$2,d6
	adda.w #$30,a1
loc_202b1e:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202af6(pc,d6.w),d5
loc_202b28:
	move.w d0,-(a1)
	dbf d5,loc_202b28
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b1e
	adda.w #$30,a1
	rts

sub_202b3e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b4c(pc,d2.w)
loc_202b4a:
	move.w (a2)+,d0
loc_202b4c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b4a
	rts

sub_202b62:
	move.w ($f700).w,d4
	bsr.s sub_202b96
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b94
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b8e
	bset.b #$2,($f754).w
	rts
loc_202b8e:
	bset.b #$3,($f754).w
loc_202b94:
	rts

sub_202b96:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ba8
	bcs.s loc_202bd8
	bra.s loc_202bae
loc_202ba8:
	clr.w ($f73a).w
	rts
loc_202bae:
	cmpi.w #$10,d0
	blt.s loc_202bb8
	move.w #$10,d0
loc_202bb8:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bc6
	move.w ($f72a).w,d0
loc_202bc6:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bd8:
	cmpi.w #$fff0,d0
	bge.s loc_202be2
	move.w #$fff0,d0
loc_202be2:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bc6
	move.w ($f728).w,d0
	bra.s loc_202bc6
	.incbin 11250, 16

sub_202c02:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c16
	subq.w #$5,d0
loc_202c16:
	btst.b #$1,$22(a6)
	beq.s loc_202c36
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c82
	subi.w #$40,d0
	bcc.s loc_202c82
	tst.b ($f75c).w
	bne.s loc_202c94
	bra.s loc_202c42
loc_202c36:
	sub.w ($f73e).w,d0
	bne.s loc_202c48
	tst.b ($f75c).w
	bne.s loc_202c94
loc_202c42:
	clr.w ($f73c).w
	rts
loc_202c48:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c70
	move.w $14(a6),d1
	bpl.s loc_202c58
	neg.w d1
loc_202c58:
	cmpi.w #$800,d1
	bcc.s loc_202c82
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202ce2
	cmpi.w #$fffa,d0
	blt.s loc_202cac
	bra.s loc_202c9a
loc_202c70:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202ce2
	cmpi.w #$fffe,d0
	blt.s loc_202cac
	bra.s loc_202c9a
loc_202c82:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202ce2
	cmpi.w #$fff0,d0
	blt.s loc_202cac
	bra.s loc_202c9a
loc_202c94:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c9a:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202cec
	bra.w loc_202cb8
loc_202cac:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cb8:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d10
	cmpi.w #$ff00,d1
	bgt.s loc_202cdc
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d10
loc_202cdc:
	move.w ($f72c).w,d1
	bra.s loc_202d10
loc_202ce2:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cec:
	cmp.w ($f72e).w,d1
	blt.s loc_202d10
	subi.w #$800,d1
	bcs.s loc_202d0c
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d10
loc_202d0c:
	move.w ($f72e).w,d1
loc_202d10:
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
	bne.s loc_202d52
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d4c
	bset.b #$0,($f754).w
	rts
loc_202d4c:
	bset.b #$1,($f754).w
loc_202d52:
	rts
	.incbin 11604, 160

sub_202df4:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e22
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e1c
	bset.b #$0,($f756).w
	rts
loc_202e1c:
	bset.b #$1,($f756).w
loc_202e22:
	rts

sub_202e24:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e56
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e50
	bset.b d6,($f756).w
	bra.s loc_202e56
loc_202e50:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e56:
	rts

sub_202e58:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e8a
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e84
	bset.b d6,($f758).w
	bra.s loc_202e8a
loc_202e84:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e8a:
	rts

sub_202e8c:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ebe
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202eb8
	bset.b d6,($f75a).w
	bra.s loc_202ebe
loc_202eb8:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ebe:
	rts
	.incbin 11968, 44

sub_202eec:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202faa
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203090
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203092
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fa8
	bclr.b #$0,(a2)
	beq.s loc_202f5e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032be
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203094
loc_202f5e:
	bclr.b #$1,(a2)
	beq.s loc_202f78
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032be
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203094
loc_202f78:
	bclr.b #$2,(a2)
	beq.s loc_202f8e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032be
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ea
loc_202f8e:
	bclr.b #$3,(a2)
	beq.s loc_202fa8
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032be
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030ea
loc_202fa8:
	rts

sub_202faa:
	lea (dat_203382).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fc6
	bclr.b #$1,(a2)
	beq.s loc_203010
	move.w #$e0,d4
loc_202fc6:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203040(pc,d0.w),a3
	beq.s loc_202ff8
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032be
	movem.l (a7)+,d4-d5
	bsr.w sub_203094
	movea.l (a7)+,a0
	bra.s loc_203010
loc_202ff8:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032c0
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030c0
	movea.l (a7)+,a0
loc_203010:
	tst.b (a2)
	bne.s loc_203016
	rts
loc_203016:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20302a
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20302a:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203050
dat_203040:
	.incbin 12352, 16
loc_203050:
	moveq #$f,d6
	move.l #$800000,d7
loc_203058:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203084
	btst.b d0,(a2)
	beq.s loc_203084
	add.w d0,d0
	movea.l dat_203040(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203196
	movem.l (a7)+,d4-d5
	bsr.w sub_2032be
	bsr.w sub_203118
	movem.l (a7)+,d4-d5/a0
loc_203084:
	addi.w #$10,d4
	dbf d6,loc_203058
	clr.b (a2)
	rts

sub_203090:
	rts

sub_203092:
	rts

sub_203094:
	moveq #$15,d6

sub_203096:
	move.l #$800000,d7
	move.l d0,d1
loc_20309e:
	movem.l d4-d5,-(a7)
	bsr.w sub_203196
	move.l d1,d0
	bsr.w sub_203118
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20309e
	rts

sub_2030c0:
	move.l #$800000,d7
	move.l d0,d1
loc_2030c8:
	movem.l d4-d5,-(a7)
	bsr.w sub_203198
	move.l d1,d0
	bsr.w sub_203118
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030c8
	rts

sub_2030ea:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030f4:
	movem.l d4-d5,-(a7)
	bsr.w sub_203196
	move.l d1,d0
	bsr.w sub_203118
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030f4
	rts

sub_203118:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203154
	btst.b #$3,(a0)
	bne.s loc_203134
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203134:
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
loc_203154:
	btst.b #$3,(a0)
	bne.s loc_203176
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
loc_203176:
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

sub_203196:
	add.w (a3),d5

sub_203198:
	add.w $4(a3),d4

sub_20319c:
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
	beq.s loc_2031e6
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
loc_2031e6:
	rts
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
	dc.b $2f,$08,$49,$f8,$a0,$00
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_20319c
	bne.s loc_20324c
	movem.l (a7)+,d3-d5
	bra.s loc_203276
loc_20324c:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_20327a
	bne.s loc_203276
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2032c4
	bsr.w sub_203118
	movem.l (a7)+,d3-d5
loc_203276:
	movea.l (a7)+,a0
	rts

sub_20327a:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2032ba
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2032ba
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2032ba
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2032ba
	moveq #$0,d0
	rts
loc_2032ba:
	moveq #$1,d0
	rts

sub_2032be:
	add.w (a3),d5

sub_2032c0:
	add.w $4(a3),d4

sub_2032c4:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	dc.b $d8,$6b,$00,$04,$da,$53
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$2,d0
	swap d0
	move.w d4,d0
	rts

sub_2032f6:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20332c
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203354

sub_20332c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203330:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032be
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203096
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203330
	rts
loc_203354:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203358:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203382).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_2033d4
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203358
	rts
dat_203382:
	.incbin 13186, 66
dat_2033c4:
	.incbin 13252, 16

sub_2033d4:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033c4(pc,d0.w),a3
	beq.s loc_2033f6
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032be
	movem.l (a7)+,d4-d5
	bsr.w sub_203094
	bra.s loc_20340a
loc_2033f6:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032c0
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030c0
loc_20340a:
	rts

sub_20340c:
	moveq #$0,d0
	lea (dat_20fecc).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20235a
	movea.l (a2)+,a0
	bsr.w sub_203458
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004d8
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203456
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203456
	bsr.w sub_202488
loc_203456:
	rts

sub_203458:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203462:
	move.l d0,(a3)+
	dbf d1,loc_203462
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203478
	lea ($a040).w,a3
	moveq #$2,d1

sub_203478:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237a58).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203492:
	move.w d1,d0
	movea.l a3,a0
loc_203496:
	move.b (a1)+,(a0)+
	dbf d0,loc_203496
	lea $80(a3),a3
	dbf d2,loc_203492
	rts

sub_2034a6:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203520(pc,d0.w),d0
	jsr dat_203520(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034cc
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034cc:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034fa
	bcc.s loc_2034fc
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034f0
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034f0:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034fa:
	rts
loc_2034fc:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203514
	btst.b #$1,($d022).w
	beq.s loc_203514
	add.w d1,d1
	add.w d1,d1
loc_203514:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203520:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203540(pc,d0.w),d0
	jmp dat_203540(pc,d0.w)
dat_203540:
	dc.b $00,$06,$00,$66,$00,$6e
	cmpi.b #$1,($ff152e).l
	bne.s loc_2035a6
	cmpi.w #$1c16,($d008).w
	bcs.s loc_203566
	cmpi.w #$21c6,($d008).w
	bcc.s loc_203566
	move.w #$88,($f73e).w
loc_203566:
	move.w #$710,($f726).w
	cmpi.w #$840,($f700).w
	bcs.s loc_2035a4
	tst.b ($ff1510).l
	beq.s loc_203590
	cmpi.w #$820,($f728).w
	bcc.s loc_203590
	move.w #$820,($f728).w
	move.w #$820,($f720).w
loc_203590:
	move.w #$410,($f726).w
	cmpi.w #$e00,($f700).w
	bcs.s loc_2035a4
	move.w #$310,($f726).w
loc_2035a4:
	rts
loc_2035a6:
	move.w #$310,($f726).w
	rts
	.incbin 13742, 176
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203670(pc,d0.w),d0
	jmp dat_203670(pc,d0.w)
dat_203670:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $03,$10,$f7,$26,$4e,$75
	move.w #$e10,d0
	move.w #$1f8,d1
	bsr.w sub_2037cc
	bne.s loc_203698
	tst.b ($f7a7).w
	bne.s loc_20369a
	move.w #$320,($f726).w
loc_203698:
	rts
loc_20369a:
	move.w #$1f8,($f72e).w
	move.w #$1f8,($f726).w
	rts
	.incbin 13992, 292

sub_2037cc:
	cmp.w ($d008).w,d0
	ble.s loc_2037d6
	moveq #$0,d0
	rts
loc_2037d6:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_2037e2
	neg.w d1
loc_2037e2:
	cmpi.w #$4,d1
	bge.s loc_2037ee
	move.w ($f726).w,($f72e).w
loc_2037ee:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_20380e
	cmp.w ($f72a).w,d0
	ble.s loc_203806
	move.w ($f72a).w,d0
loc_203806:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_20380e:
	moveq #$1,d0
	rts

sub_203812:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20381a:
	move.b (a0),d0
	beq.s loc_203830
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c34).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203830:
	lea $40(a0),a0
	dbf d7,loc_20381a
	rts

sub_20383a:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203878
	bpl.s loc_20386a
	btst.b #$1,$2c(a0)
	beq.s loc_20386a
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203878
loc_20386a:
	btst.b #$2,$2c(a0)
	bne.s loc_203878
	addi.w #$38,$12(a0)
loc_203878:
	tst.w $12(a0)
	bmi.s loc_20388c
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20388c
	move.w #$1000,$12(a0)
loc_20388c:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20389c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038d8
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038d8
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038d6
	neg.w d1
loc_2038d6:
	add.w d1,d0
loc_2038d8:
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

sub_2038f2:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203962
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20397e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_20397e
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20393c
	cmpi.w #$800,d3
	bcs.s loc_20394e
	subi.w #$800,d3
	bra.s loc_20394e
loc_20393c:
	cmpi.w #$700,($f704).w
	bcs.s loc_20394e
	cmpi.w #$100,d3
	bcc.s loc_20394e
	addi.w #$800,d3
loc_20394e:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20397e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_20397e
loc_203962:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_20397e
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_20397e:
	rts
	.incbin 14720, 30

sub_20399e:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039a4:
	move.l d1,(a1)+
	dbf d0,loc_2039a4
	rts
dat_2039ac:
	.incbin 14764, 16

sub_2039bc:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039c8:
	tst.w (a4)
	beq.w loc_203a88
	moveq #$2,d6
loc_2039d0:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a80
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a36
	movea.l dat_2039ac(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a1a
	cmpi.w #$800,d2
	bcs.s loc_203a2c
	subi.w #$800,d2
	bra.s loc_203a2c
loc_203a1a:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a2c
	cmpi.w #$100,d2
	bcc.s loc_203a2c
	addi.w #$800,d2
loc_203a2c:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a58
loc_203a36:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a58
	.incbin 14912, 24
loc_203a58:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a76
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a7a
loc_203a76:
	bsr.w sub_203aaa
loc_203a7a:
	bset.b #$7,$1(a0)
loc_203a80:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039d0
loc_203a88:
	lea $80(a4),a4
	dbf d7,loc_2039c8
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203aa2
	move.l #$0,(a2)
	rts
loc_203aa2:
	move.b #$0,-$5(a2)
	rts

sub_203aaa:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203af0
	btst.l #$1,d4
	bne.w loc_203b3e
loc_203abc:
	cmpi.b #$50,d5
	beq.s loc_203aee
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
	bne.s loc_203ae8
	addq.w #$1,d0
loc_203ae8:
	move.w d0,(a2)+
	dbf d1,loc_203abc
loc_203aee:
	rts
loc_203af0:
	btst.l #$1,d4
	bne.w loc_203b84
loc_203af8:
	cmpi.b #$50,d5
	beq.s loc_203b3c
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
	bne.s loc_203b36
	addq.w #$1,d0
loc_203b36:
	move.w d0,(a2)+
	dbf d1,loc_203af8
loc_203b3c:
	rts
loc_203b3e:
	cmpi.b #$50,d5
	beq.s loc_203b82
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
	bne.s loc_203b7c
	addq.w #$1,d0
loc_203b7c:
	move.w d0,(a2)+
	dbf d1,loc_203b3e
loc_203b82:
	rts
loc_203b84:
	cmpi.b #$50,d5
	beq.s loc_203bd6
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
	bne.s loc_203bd0
	addq.w #$1,d0
loc_203bd0:
	move.w d0,(a2)+
	dbf d1,loc_203b84
loc_203bd6:
	rts
	.incbin 15320, 92
dat_203c34:
	.incbin 15412, 246

sub_203d2a:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d3c
	move.w #$0,(a1)
	rts
loc_203d3c:
	tst.w (a1)
	bne.s loc_203d46
	move.b #$1,$1(a1)
loc_203d46:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d90
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d82
	neg.w $10(a0)
loc_203d82:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205abc
loc_203d90:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203dae
	cmpa.w #$d040,a0
	beq.s loc_203dae
	tst.b ($ff1906).l
	beq.s loc_203dae
	jmp (loc_207220).l
loc_203dae:
	move.b $2a(a0),d0
	beq.s loc_203dd8
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203dca
	cmpi.b #$2d,d0
	bcs.s loc_203dd4
	move.b #$2d,d0
	bra.s loc_203dd4
loc_203dca:
	cmpi.b #$1e,d0
	bcs.s loc_203dd4
	move.b #$1e,d0
loc_203dd4:
	move.b d0,$2a(a0)
loc_203dd8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203de6(pc,d0.w),d1
	jmp dat_203de6(pc,d1.w)
dat_203de6:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203df0:
	tst.b ($d300).w
	bne.s loc_203e2e
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e2e:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e56
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e56:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e8a:
	tst.b ($ff1506).l
	bne.s loc_203ef0
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203ef0
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203ef4
	cmpi.b #$2f,d1
	bne.s loc_203ef2
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203ef0
	tst.b $2c(a0)
	beq.s loc_203ef0
	jsr (sub_207874).l
	bne.s loc_203ef0
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203ee8
	moveq #$0,d0
loc_203ee8:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203ef0:
	rts
loc_203ef2:
	rts

sub_203ef4:
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

sub_203f1a:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f26
	neg.w d0
loc_203f26:
	btst.b #$1,$2c(a0)
	beq.s loc_203f36
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f5e
loc_203f36:
	cmpi.w #$600,d0
	bcs.s loc_203f5e
	tst.w $14(a0)
	bpl.s loc_203f50
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f6c
	move.w #$e0,d1
	bra.s loc_203f6c
loc_203f50:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f6c
	move.w #$60,d1
	bra.s loc_203f6c
loc_203f5e:
	cmpi.w #$a0,d1
	beq.s loc_203f6c
	bcc.s loc_203f6a
	addq.w #$2,d1
	bra.s loc_203f6c
loc_203f6a:
	subq.w #$2,d1
loc_203f6c:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f1a
	bsr.w sub_203e8a
	tst.w ($ff1588).l
	beq.s loc_203f92
	btst.b #$4,($f605).w
	beq.s loc_203f92
	move.b #$1,($ff1906).l
	rts
loc_203f92:
	tst.b ($f7cc).w
	bne.s loc_203f9e
	move.w ($f604).w,($f602).w
loc_203f9e:
	btst.b #$0,$2c(a0)
	beq.s loc_203fc2
	cmpi.b #$6,($ff1506).l
	bne.s loc_203fbc
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203fda
loc_203fbc:
	bsr.w sub_2042a4
	bra.s loc_203fda
loc_203fc2:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204020(pc,d0.w),d1
	jsr dat_204020(pc,d1.w)
	jsr (sub_206574).l
loc_203fda:
	bsr.s sub_20402e
	bsr.w sub_2040ee
	bsr.w sub_204108
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204002
	tst.b $1c(a0)
	bne.s loc_204002
	move.b $1d(a0),$1c(a0)
loc_204002:
	bsr.w sub_2054ac
	tst.b $2c(a0)
	bmi.s loc_20401a
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20401a
	jsr (sub_206dba).l
loc_20401a:
	bsr.w sub_205362
	rts
dat_204020:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20402e:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204052
	move.w $30(a0),d0
	beq.s loc_204044
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204052
loc_204044:
	btst.b #$6,$2c(a0)
	bne.s loc_204052
	jsr (sub_2038f2).l
loc_204052:
	tst.b ($ff151f).l
	beq.s loc_204096
	tst.w $32(a0)
	beq.s loc_204096
	subq.w #$1,$32(a0)
	bne.s loc_204096
	tst.b ($ff1520).l
	bne.s loc_20408e
	tst.b ($ff1958).l
	bne.s loc_20408e
	tst.b ($ff152e).l
	bne.s loc_204088
	move.w #$e,d0
	jsr (sub_205abc).l
loc_204088:
	jsr (sub_201ab2).l
loc_20408e:
	move.b #$0,($ff151f).l
loc_204096:
	tst.b ($ff1520).l
	beq.s loc_2040ec
	tst.w $34(a0)
	beq.s loc_2040ec
	subq.w #$1,$34(a0)
	bne.s loc_2040ec
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2040e4
	tst.b ($ff1958).l
	bne.s loc_2040e4
	tst.b ($ff152e).l
	bne.s loc_2040de
	move.w #$e,d0
	jsr (sub_205abc).l
loc_2040de:
	jsr (sub_201ab2).l
loc_2040e4:
	move.b #$0,($ff1520).l
loc_2040ec:
	rts

sub_2040ee:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204108:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204114
loc_204112:
	rts
loc_204114:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204126
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204112
loc_204126:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20416a
	bset.b #$6,$22(a0)
	bne.s loc_204112
	bsr.w sub_205dc0
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204112
	bra.s loc_2041a2
loc_20416a:
	tst.w $12(a0)
	beq.s loc_204172
	bpl.s loc_204112
loc_204172:
	bclr.b #$6,$22(a0)
	beq.s loc_204112
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204112
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041a2
	move.w #$f000,$12(a0)
loc_2041a2:
	jsr (sub_207874).l
	bne.s loc_2041b6
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2041b6:
	rts

sub_2041b8:
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
	bcs.s loc_204292
	move.l #$50000,d0
loc_204292:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042a4:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042ca
	tst.b ($ff152e).l
	beq.s loc_2042c0
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042ca
loc_2042c0:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20437a
loc_2042ca:
	tst.b $2a(a0)
	bne.w loc_204388
	tst.b ($f784).w
	beq.w loc_204388
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2042e8
	neg.w d0
loc_2042e8:
	tst.w ($f786).w
	bne.s loc_2042f4
	move.w #$1,($f786).w
loc_2042f4:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20430a
	move.b #$1,($ff1502).l
	bra.w loc_205ab8
loc_20430a:
	cmpi.w #$d2,d1
	bcs.s loc_20435e
	cmpi.b #$2,($ff1522).l
	beq.s loc_20435c
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204334
	move.w #$82,d0
	jsr (sub_205abc).l
	moveq #$0,d0
loc_204334:
	add.b ($f784).w,d0
	bpl.s loc_20433e
	moveq #$0,d0
	bra.s loc_204346
loc_20433e:
	cmpi.b #$3,d0
	bcs.s loc_204346
	moveq #$2,d0
loc_204346:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041b8
	move.b #$2,($ff1522).l
loc_20435c:
	rts
loc_20435e:
	cmpi.w #$5a,d1
	bcc.s loc_204376
	cmp.w d2,d0
	bcc.w loc_203df0
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204376:
	cmp.w d2,d0
	bcc.s loc_204388
loc_20437a:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204388:
	rts
	bsr.w sub_203d2a
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043ba
	tst.b ($ff195b).l
	beq.s loc_2043a8
	cmpi.b #$79,$1a(a0)
	bne.s loc_2043e4
	bra.s loc_2043b0
loc_2043a8:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2043e4
loc_2043b0:
	bsr.w sub_204c4c
	jmp (sub_20383a).l
loc_2043ba:
	bsr.w sub_204492
	bsr.w sub_2042a4
	bsr.w sub_204d36
	bsr.w sub_204e62
	bsr.w sub_204506
	bsr.w sub_204cb8
	bsr.w sub_204c4c
	jsr (sub_20389c).l
	bsr.w sub_200bc2
	bsr.w sub_204ee0
loc_2043e4:
	rts
	tst.b ($f7c7).w
	bne.s loc_204400
	cmpi.b #$15,$1c(a0)
	beq.s loc_204400
	tst.w $12(a0)
	bmi.s loc_204400
	move.b #$0,$1c(a0)
loc_204400:
	bsr.w sub_204492
	bsr.w sub_2042a4
	bsr.w sub_204e20
	bsr.w sub_204b6c
	bsr.w sub_204c4c
	jsr (sub_20383a).l
	btst.b #$6,$22(a0)
	beq.s loc_204428
	subi.w #$28,$12(a0)
loc_204428:
	bsr.w sub_204f2a
	bsr.w sub_204f4e
	rts
	bsr.w sub_204492
	bsr.w sub_2042a4
	bsr.w sub_204d36
	bsr.w sub_204e9e
	bsr.w sub_2049a6
	bsr.w sub_204c4c
	tst.b $2a(a0)
	bne.s loc_204456
	jsr (sub_20389c).l
loc_204456:
	bsr.w sub_200bc2
	bsr.w sub_204ee0
	rts
	bsr.w sub_204492
	bsr.w sub_2042a4
	bsr.w sub_204e20
	bsr.w sub_204b6c
	bsr.w sub_204c4c
	jsr (sub_20383a).l
	btst.b #$6,$22(a0)
	beq.s loc_204488
	subi.w #$28,$12(a0)
loc_204488:
	bsr.w sub_204f2a
	bsr.w sub_204f4e
	rts

sub_204492:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2044fe
	tst.w ($ff1506).l
	bne.s loc_2044fe
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204500).l,a2
loc_2044c6:
	move.b (a2)+,d0
	bmi.s loc_2044d6
	cmp.b d0,d1
	bne.s loc_2044c6
	bset.b #$1,$2c(a0)
	rts
loc_2044d6:
	bclr.b #$1,$2c(a0)
	beq.s loc_2044fe
	tst.w $12(a0)
	bpl.s loc_2044fe
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2044fe
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044fe
	neg.w $10(a0)
loc_2044fe:
	rts
dat_204500:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204506:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204830
	tst.w $3e(a0)
	bne.w loc_2047e0
	btst.b #$2,($f602).w
	beq.s loc_20452e
	bsr.w sub_2048c0
loc_20452e:
	btst.b #$3,($f602).w
	beq.s loc_20453a
	bsr.w sub_204936
loc_20453a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2047e0
	tst.w $14(a0)
	beq.s loc_20455a
	tst.b $2a(a0)
	beq.w loc_2047e0
	bra.s loc_204566
loc_20455a:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204566:
	btst.b #$3,$22(a0)
	beq.s loc_2045b8
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204610
	cmpi.b #$1e,$0(a1)
	bne.s loc_204598
	move.b #$0,$1c(a0)
	bra.w loc_2047e0
loc_204598:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2045f4
	cmp.w d2,d1
	bge.s loc_2045e2
	bra.s loc_204610
loc_2045b8:
	jsr (sub_206b1e).l
	cmpi.w #$c,d1
	blt.s loc_204610
	move.w #$ab,d0
	jsr (sub_2022be).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2045ec
loc_2045e2:
	btst.b #$0,$22(a0)
	bne.s loc_2045fc
	bra.s loc_204606
loc_2045ec:
	cmpi.b #$3,$37(a0)
	bne.s loc_204610
loc_2045f4:
	btst.b #$0,$22(a0)
	bne.s loc_204606
loc_2045fc:
	move.b #$32,$1c(a0)
	bra.w loc_2047e0
loc_204606:
	move.b #$6,$1c(a0)
	bra.w loc_2047e0
loc_204610:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204624
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204624:
	btst.b #$7,($f788).w
	bne.w loc_204728
	btst.b #$6,($f788).w
	bne.w loc_204748
	btst.b #$1,($f602).w
	bne.w loc_204748
	andi.b #$f,($f788).w
	beq.s loc_20465c
	btst.b #$0,($f603).w
	beq.s loc_204670
	bset.b #$7,($f788).w
	bra.w loc_204804
loc_20465c:
	btst.b #$0,($f603).w
	beq.w loc_204670
	move.b #$1,($f788).w
	bra.w loc_204804
loc_204670:
	btst.b #$0,($f602).w
	beq.s loc_2046ec
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046ce
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046a0
	asr.w #$1,d2
	sub.w d2,d1
loc_2046a0:
	btst.b #$0,$22(a0)
	beq.s loc_2046ac
	neg.w d0
	neg.w d1
loc_2046ac:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046c2
	cmp.w d0,d1
	ble.s loc_2046c8
	bra.s loc_2046c6
loc_2046c2:
	cmp.w d1,d0
	ble.s loc_2046c8
loc_2046c6:
	move.w d1,d0
loc_2046c8:
	move.w d0,$14(a0)
	rts
loc_2046ce:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046e8
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022be).l
loc_2046e8:
	bra.w loc_204804
loc_2046ec:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20470c
	move.w #$ab,d0
	jsr (sub_2022be).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204748
loc_20470c:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022be).l
	bra.w loc_2047e0
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204728:
	btst.b #$0,($f602).w
	beq.s loc_204748
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204804
	addq.w #$2,($f73e).w
	bra.w loc_204804
loc_204748:
	btst.b #$6,($f788).w
	bne.w loc_2047c4
	andi.b #$f,($f788).w
	beq.s loc_20476c
	btst.b #$1,($f603).w
	beq.s loc_20477e
	bset.b #$6,($f788).w
	bra.w loc_204804
loc_20476c:
	btst.b #$1,($f603).w
	beq.s loc_20477e
	move.b #$1,($f788).w
	bra.w loc_204804
loc_20477e:
	btst.b #$1,($f602).w
	beq.s loc_2047e0
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047c2
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047c2
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047b4
	neg.w $14(a0)
loc_2047b4:
	move.w #$9c,d0
	jsr (sub_2022be).l
	bsr.w sub_204ce0
loc_2047c2:
	bra.s loc_204804
loc_2047c4:
	btst.b #$1,($f602).w
	beq.s loc_2047e0
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204804
	subq.w #$2,($f73e).w
	bra.s loc_204804
loc_2047e0:
	cmpi.w #$60,($f73e).w
	bne.s loc_2047fa
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204804
	move.b #$0,($f788).w
	bra.s loc_204804
loc_2047fa:
	bcc.s loc_204800
	addq.w #$4,($f73e).w
loc_204800:
	subq.w #$2,($f73e).w
loc_204804:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204830
	move.w $14(a0),d0
	beq.s loc_204830
	bmi.s loc_204824
	sub.w d5,d0
	bcc.s loc_20481e
	move.w #$0,d0
loc_20481e:
	move.w d0,$14(a0)
	bra.s loc_204830
loc_204824:
	add.w d5,d0
	bcc.s loc_20482c
	move.w #$0,d0
loc_20482c:
	move.w d0,$14(a0)
loc_204830:
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_20484e:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2048be
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048be
	bmi.s loc_204866
	neg.w d1
loc_204866:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2069de
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048be
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048ba
	cmpi.b #$40,d0
	beq.s loc_2048a8
	cmpi.b #$80,d0
	beq.s loc_2048a2
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048a2:
	sub.w d1,$12(a0)
	rts
loc_2048a8:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048ba:
	add.w d1,$12(a0)
loc_2048be:
	rts

sub_2048c0:
	tst.b $2a(a0)
	bne.s loc_204934
	move.w $14(a0),d0
	beq.s loc_2048ce
	bpl.s loc_2048fe
loc_2048ce:
	bset.b #$0,$22(a0)
	bne.s loc_2048e2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048e2:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2048f2
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2048f2
	move.w d1,d0
loc_2048f2:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048fe:
	sub.w d4,d0
	bcc.s loc_204906
	move.w #$ff80,d0
loc_204906:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204934
	cmpi.w #$400,d0
	blt.s loc_204934
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022be).l
loc_204934:
	rts

sub_204936:
	tst.b $2a(a0)
	bne.s loc_2049a4
	move.w $14(a0),d0
	bmi.s loc_20496e
	bclr.b #$0,$22(a0)
	beq.s loc_204956
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204956:
	cmp.w d6,d0
	bge.s loc_204962
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204962
	move.w d6,d0
loc_204962:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20496e:
	add.w d4,d0
	bcc.s loc_204976
	move.w #$80,d0
loc_204976:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049a4
	cmpi.w #$fc00,d0
	bgt.s loc_2049a4
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022be).l
loc_2049a4:
	rts

sub_2049a6:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204af0
	tst.w $3e(a0)
	bne.s loc_2049de
	btst.b #$2,($f602).w
	beq.s loc_2049d2
	bsr.w sub_204b26
loc_2049d2:
	btst.b #$3,($f602).w
	beq.s loc_2049de
	bsr.w sub_204b4a
loc_2049de:
	tst.b $2a(a0)
	beq.w loc_204a88
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2049fe
	asr.w #$1,d2
	sub.w d2,d1
loc_2049fe:
	btst.b #$0,$22(a0)
	beq.s loc_204a0a
	neg.w d0
	neg.w d1
loc_204a0a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a20
	cmp.w d0,d1
	ble.s loc_204a26
	bra.s loc_204a24
loc_204a20:
	cmp.w d1,d0
	ble.s loc_204a26
loc_204a24:
	move.w d1,d0
loc_204a26:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a5a
	rts
loc_204a34:
	move.w #$ab,d0
	jsr (sub_2022be).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204aba
loc_204a5a:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a34
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022be).l
	btst.b #$0,$22(a0)
	bne.s loc_204a80
	bsr.w sub_204b4a
	bra.s loc_204a88
loc_204a80:
	bsr.w sub_204b26
	bra.s loc_204a88
	dc.b $4e,$75
loc_204a88:
	move.w $14(a0),d0
	beq.s loc_204aaa
	bmi.s loc_204a9e
	sub.w d5,d0
	bcc.s loc_204a98
	move.w #$0,d0
loc_204a98:
	move.w d0,$14(a0)
	bra.s loc_204aaa
loc_204a9e:
	add.w d5,d0
	bcc.s loc_204aa6
	move.w #$0,d0
loc_204aa6:
	move.w d0,$14(a0)
loc_204aaa:
	tst.w $14(a0)
	bne.s loc_204af0
	move.w #$ab,d0
	jsr (sub_2022be).l
loc_204aba:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ada
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204aea
loc_204ada:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204aea:
	move.b #$5,$1c(a0)
loc_204af0:
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b14
	move.w #$1000,d1
loc_204b14:
	cmpi.w #$f000,d1
	bge.s loc_204b1e
	move.w #$f000,d1
loc_204b1e:
	move.w d1,$10(a0)
	bra.w loc_20484e

sub_204b26:
	move.w $14(a0),d0
	beq.s loc_204b2e
	bpl.s loc_204b3c
loc_204b2e:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b3c:
	sub.w d4,d0
	bcc.s loc_204b44
	move.w #$ff80,d0
loc_204b44:
	move.w d0,$14(a0)
	rts

sub_204b4a:
	move.w $14(a0),d0
	bmi.s loc_204b5e
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b5e:
	add.w d4,d0
	bcc.s loc_204b66
	move.w #$80,d0
loc_204b66:
	move.w d0,$14(a0)
	rts

sub_204b6c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204ba6
	tst.w ($ff1506).l
	bne.s loc_204ba6
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b9e
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b9e
	rts
loc_204b9e:
	btst.b #$1,$2c(a0)
	bne.s loc_204bd6
loc_204ba6:
	btst.b #$2,($f602).w
	beq.s loc_204bc0
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204bc0
	move.w d1,d0
loc_204bc0:
	btst.b #$3,($f602).w
	beq.s loc_204bd6
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204bd6
	move.w d6,d0
loc_204bd6:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204bec
	bcc.s loc_204be8
	addq.w #$4,($f73e).w
loc_204be8:
	subq.w #$2,($f73e).w
loc_204bec:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c1a
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c1a
	bmi.s loc_204c0e
	sub.w d1,d0
	bcc.s loc_204c08
	move.w #$0,d0
loc_204c08:
	move.w d0,$10(a0)
	rts
loc_204c0e:
	sub.w d1,d0
	bcs.s loc_204c16
	move.w #$0,d0
loc_204c16:
	move.w d0,$10(a0)
loc_204c1a:
	rts
	.incbin 19484, 48

sub_204c4c:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204ca0
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c7a
	addi.w #$38,d0
loc_204c7a:
	cmp.w d1,d0
	bls.s loc_204ca0
loc_204c7e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c8e
	rts
loc_204c8e:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_20704c
	move.b #$6,$24(a0)
	rts
loc_204ca0:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c7e

sub_204cb8:
	tst.b ($f7ca).w
	bne.s loc_204cde
	move.w $14(a0),d0
	bpl.s loc_204cc6
	neg.w d0
loc_204cc6:
	cmpi.w #$80,d0
	bcs.s loc_204cde
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204cde
	btst.b #$1,($f602).w
	bne.s sub_204ce0
loc_204cde:
	rts

sub_204ce0:
	btst.b #$2,$22(a0)
	beq.s loc_204cea
	bra.s loc_204d1a
loc_204cea:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d0a
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d1a
loc_204d0a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d1a:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d34
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d34
	move.w #$200,$14(a0)
loc_204d34:
	rts

sub_204d36:
	tst.b $2a(a0)
	beq.s loc_204d3e
	rts
loc_204d3e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d50
	tst.w $14(a0)
	beq.w loc_204e16
loc_204d50:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e16
	btst.b #$3,$22(a0)
	beq.s loc_204d6c
	jsr (sub_205a42).l
	beq.s loc_204d9c
loc_204d6c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206a48
	cmpi.w #$6,d1
	blt.w loc_204e16
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d92
	move.w #$380,d2
loc_204d92:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d9c:
	jsr (sub_2007c2).l
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
	jsr (sub_2022be).l
	btst.b #$2,$22(a0)
	bne.s loc_204e18
	tst.b ($ff195b).l
	beq.s loc_204dfa
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e0a
loc_204dfa:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e0a:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e16:
	rts
loc_204e18:
	bset.b #$4,$22(a0)
	rts

sub_204e20:
	tst.b $3c(a0)
	beq.s loc_204e52
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e36
	move.w #$fe00,d1
loc_204e36:
	cmp.w $12(a0),d1
	ble.s loc_204e50
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204e50
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204e50:
	rts
loc_204e52:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e60
	move.w #$f040,$12(a0)
loc_204e60:
	rts

sub_204e62:
	tst.b $2a(a0)
	bne.s loc_204e9c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e9c
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e9c
	bmi.s loc_204e98
	tst.w d0
	beq.s loc_204e96
	add.w d0,$14(a0)
loc_204e96:
	rts
loc_204e98:
	add.w d0,$14(a0)
loc_204e9c:
	rts

sub_204e9e:
	tst.b $2a(a0)
	bne.s loc_204ede
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204ede
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204ed4
	tst.w d0
	bpl.s loc_204ece
	asr.l #$2,d0
loc_204ece:
	add.w d0,$14(a0)
	rts
loc_204ed4:
	tst.w d0
	bmi.s loc_204eda
	asr.l #$2,d0
loc_204eda:
	add.w d0,$14(a0)
loc_204ede:
	rts

sub_204ee0:
	nop
	tst.b $38(a0)
	bne.s loc_204f22
	tst.w $3e(a0)
	bne.s loc_204f24
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f22
	move.w $14(a0),d0
	bpl.s loc_204f04
	neg.w d0
loc_204f04:
	cmpi.w #$280,d0
	bcc.s loc_204f22
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f22:
	rts
loc_204f24:
	subq.w #$1,$3e(a0)
	rts

sub_204f2a:
	btst.b #$1,$2c(a0)
	bne.s loc_204f4c
	move.b $26(a0),d0
	beq.s loc_204f4c
	bpl.s loc_204f42
	addq.b #$2,d0
	bcc.s loc_204f40
	moveq #$0,d0
loc_204f40:
	bra.s loc_204f48
loc_204f42:
	subq.b #$2,d0
	bcc.s loc_204f48
	moveq #$0,d0
loc_204f48:
	move.b d0,$26(a0)
loc_204f4c:
	rts

sub_204f4e:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a5a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205032
	cmpi.b #$80,d0
	beq.w loc_205094
	cmpi.b #$c0,d0
	beq.w loc_2050f0
	bsr.w sub_206d5e
	tst.w d1
	bpl.s loc_204fa0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fa0:
	bsr.w sub_206bc0
	tst.w d1
	bpl.s loc_204fb2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fb2:
	bsr.w sub_206a70
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205030
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204fd0
	cmp.b d2,d0
	blt.s loc_205030
loc_204fd0:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205152
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20500e
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205000
	asr.w $12(a0)
	bra.s loc_205022
loc_205000:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20500e:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205022
	move.w #$fc0,$12(a0)
loc_205022:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205030
	neg.w $14(a0)
loc_205030:
	rts
loc_205032:
	bsr.w sub_206d5e
	tst.w d1
	bpl.s loc_20504c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20504c:
	bsr.w sub_206c18
	tst.w d1
	bpl.s loc_205066
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205064
	move.w #$0,$12(a0)
loc_205064:
	rts
loc_205066:
	tst.w $12(a0)
	bmi.s loc_205092
	bsr.w sub_206a70
	tst.w d1
	bpl.s loc_205092
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205152
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205092:
	rts
loc_205094:
	bsr.w sub_206d5e
	tst.w d1
	bpl.s loc_2050a6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050a6:
	bsr.w sub_206bc0
	tst.w d1
	bpl.s loc_2050b8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050b8:
	bsr.w sub_206c18
	tst.w d1
	bpl.s loc_2050ee
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050d8
	move.w #$0,$12(a0)
	rts
loc_2050d8:
	move.b d3,$26(a0)
	bsr.w sub_2051c4
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2050ee
	neg.w $14(a0)
loc_2050ee:
	rts
loc_2050f0:
	bsr.w sub_206bc0
	tst.w d1
	bpl.s loc_20510a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20510a:
	bsr.w sub_206c18
	tst.w d1
	bpl.s loc_205124
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205122
	move.w #$0,$12(a0)
loc_205122:
	rts
loc_205124:
	tst.w $12(a0)
	bmi.s loc_205150
	bsr.w sub_206a70
	tst.w d1
	bpl.s loc_205150
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205152
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205150:
	rts

sub_205152:
	btst.b #$4,$22(a0)
	beq.s loc_20515c
	nop
loc_20515c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2051b6
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205196
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2051a6
loc_205196:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2051a6:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2022be).l
loc_2051b6:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2051c4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20964, 382

sub_205362:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20538a
	cmpi.b #$5,($ff1506).l
	beq.s loc_20538a
	cmpi.b #$2,($ff1506).l
	beq.s loc_20538a
	tst.b ($ff1506).l
	bne.w loc_20544c
loc_20538a:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053c8
	tst.b ($ff1506).l
	bne.w loc_20544e
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20544e
	bra.s loc_2053d0
loc_2053c8:
	cmp.b ($f7af).w,d1
	beq.w loc_20544e
loc_2053d0:
	cmp.b ($f7ac).w,d1
	beq.s loc_205400
	cmp.b ($f7ad).w,d1
	beq.s loc_2053e4
	bclr.b #$6,$1(a0)
	rts
loc_2053e4:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205466
	btst.b #$1,$22(a0)
	beq.s loc_205400
	bclr.b #$6,$1(a0)
	rts
loc_205400:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205412
	bclr.b #$6,$1(a0)
	rts
loc_205412:
	cmpi.b #$e0,d2
	bcs.s loc_205420
	bset.b #$6,$1(a0)
	rts
loc_205420:
	btst.b #$6,$1(a0)
	bne.s loc_20543c
	move.b $26(a0),d1
	beq.s loc_20544c
	cmpi.b #$80,d1
	bhi.s loc_20544c
	bset.b #$6,$1(a0)
	rts
loc_20543c:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20544c
	bclr.b #$6,$1(a0)
loc_20544c:
	rts
loc_20544e:
	btst.b #$2,$22(a0)
	bne.s loc_205460
	move.w #$9c,d0
	jsr (sub_2022be).l
loc_205460:
	jmp (sub_204ce0).l
loc_205466:
	tst.w $12(a0)
	bmi.s loc_2054aa
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20549e
	cmpi.w #$38,d1
	bcs.s loc_205496
	cmpi.w #$80,d1
	bcs.s loc_2054aa
loc_20548e:
	bclr.b #$6,$1(a0)
	rts
loc_205496:
	bset.b #$6,$1(a0)
	rts
loc_20549e:
	cmpi.w #$38,d1
	bcs.s loc_20548e
	cmpi.w #$80,d1
	bcc.s loc_205496
loc_2054aa:
	rts

sub_2054ac:
	lea (dat_20579c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054ce
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054ce:
	bsr.w sub_20573e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205546
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205514
	move.b d0,$1e(a0)

sub_2054f8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20550c
	bpl.s loc_20550c
	cmpi.b #$fd,d0
	bge.s loc_205516
loc_20550c:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205514:
	rts
loc_205516:
	addq.b #$1,d0
	bne.s loc_205526
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20550c
loc_205526:
	addq.b #$1,d0
	bne.s loc_20553a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20550c
loc_20553a:
	addq.b #$1,d0
	bne.s loc_205544
	move.b $2(a1,d1.w),$1c(a0)
loc_205544:
	rts
loc_205546:
	subq.b #$1,$1e(a0)
	bpl.s loc_205514
	addq.b #$1,d0
	bne.w loc_205600
	tst.b ($ff195b).l
	bne.w loc_2056c8
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20556e
	not.b d0
loc_20556e:
	btst.b #$1,$2c(a0)
	bne.s loc_20557c
	addi.b #$10,d0
	bra.s loc_20557e
loc_20557c:
	addq.b #$8,d0
loc_20557e:
	bpl.s loc_205582
	moveq #$3,d1
loc_205582:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205674
	move.w $14(a0),d2
	bpl.s loc_2055a0
	neg.w d2
loc_2055a0:
	btst.b #$1,$2c(a0)
	beq.s loc_2055b8
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_20599e).l,a1
	bra.s loc_2055e2
loc_2055b8:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205978).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2055e2
	lea (dat_20581c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055e2
	lea (dat_205814).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2055e2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2055f0
	moveq #$0,d2
loc_2055f0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2054f8
	add.b d3,$1a(a0)
	rts
loc_205600:
	addq.b #$1,d0
	bne.s loc_205670
	move.w $14(a0),d2
	bpl.s loc_20560c
	neg.w d2
loc_20560c:
	lea (dat_2058fa).l,a1
	tst.b ($ff195b).l
	bne.s loc_20564a
	lea (dat_20582c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20563e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20564a
	lea (dat_2059a6).l,a1
	bra.s loc_20564a
loc_20563e:
	cmpi.w #$600,d2
	bcc.s loc_20564a
	lea (dat_205824).l,a1
loc_20564a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205654
	moveq #$0,d2
loc_205654:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054f8
loc_205670:
	addq.b #$1,d0
	bne.s loc_2056b4
loc_205674:
	move.w $14(a0),d2
	bmi.s loc_20567c
	neg.w d2
loc_20567c:
	addi.w #$800,d2
	bpl.s loc_205684
	moveq #$0,d2
loc_205684:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20590c).l,a1
	tst.b ($ff195b).l
	bne.s loc_20569e
	lea (dat_205834).l,a1
loc_20569e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054f8
loc_2056b4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056c8:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056da
	not.b d0
loc_2056da:
	addi.b #$10,d0
	bpl.s loc_2056e2
	moveq #$0,d1
loc_2056e2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205710
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205600
loc_205710:
	move.w $14(a0),d2
	bpl.s loc_205718
	neg.w d2
loc_205718:
	lea (dat_2058f4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20572a
	lea (dat_2058ee).l,a1
loc_20572a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205734
	moveq #$0,d2
loc_205734:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2054f8

sub_20573e:
	tst.b ($ff195b).l
	beq.s loc_20574a
	move.b dat_20574c(pc,d0.w),d0
loc_20574a:
	rts
dat_20574c:
	.incbin 22348, 80
dat_20579c:
	.incbin 22428, 120
dat_205814:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20581c:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205824:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20582c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205834:
	.incbin 22580, 186
dat_2058ee:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2058f4:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2058fa:
	.incbin 22778, 18
dat_20590c:
	.incbin 22796, 108
dat_205978:
	.incbin 22904, 38
dat_20599e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2059a6:
	.incbin 22950, 56

sub_2059de:
	tst.b (a0)
	beq.w loc_205a40
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a40
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a40
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a12:
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
loc_205a2c:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a2c
	dbf d1,loc_205a12
loc_205a40:
	rts

sub_205a42:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ab6
	move.w #$98,d0
	jsr (sub_2022be).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a5a).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205aa4
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205aa4:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ab6:
	rts
loc_205ab8:
	move.w #$e,d0

sub_205abc:
	cmpi.w #$67,d0
	bne.s loc_205aca
	move.b #$1,($ff1958).l
loc_205aca:
	move.w d0,($a12010).l
loc_205ad0:
	move.w ($a12020).l,d0
	beq.s loc_205ad0
	cmp.w ($a12020).l,d0
	bne.s loc_205ad0
	move.w #$0,($a12010).l
loc_205ae8:
	move.w ($a12020).l,d0
	bne.s loc_205ae8
	move.w ($a12020).l,d0
	bne.s loc_205ae8
	rts
	dc.b $00,$00

sub_205afc:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b18
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b18:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b58
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b5a
loc_205b34:
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
loc_205b58:
	rts
loc_205b5a:
	addq.b #$1,d0
	bne.s loc_205b6a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b34
loc_205b6a:
	addq.b #$1,d0
	bne.s loc_205b7e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b34
loc_205b7e:
	addq.b #$1,d0
	bne.s loc_205b88
	move.b $2(a1,d1.w),$1c(a0)
loc_205b88:
	addq.b #$1,d0
	bne.s loc_205b90
	addq.b #$2,$24(a0)
loc_205b90:
	addq.b #$1,d0
	bne.s loc_205b9e
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b9e:
	addq.b #$1,d0
	bne.s loc_205ba6
	addq.b #$2,$25(a0)
loc_205ba6:
	rts
	.incbin 23464, 536

sub_205dc0:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dd0(pc,d0.w),d0
	jmp dat_205dd0(pc,d0.w)
dat_205dd0:
	.incbin 24016, 150
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e76(pc,d0.w),d0
	jmp dat_205e76(pc,d0.w)
dat_205e76:
	.incbin 24182, 1274
loc_206370:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063be
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063c0(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206394:
	move.l (a1)+,(a2)+
	dbf d0,loc_206394
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063be:
	rts
dat_2063c0:
	.incbin 25536, 436

sub_206574:
	bsr.s sub_206578
loc_206576:
	rts

sub_206578:
	tst.b ($f7a7).w
	bne.s loc_206576
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f30).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_2065d8
	bne.w loc_2067c8
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f30).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_2065d8
	bne.w loc_2067c8
	rts

sub_2065d8:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2065f0
	add.b ($ff156a).l,d1
loc_2065f0:
	add.w d1,d1
	move.w dat_206614(pc,d1.w),d1
	lea dat_206614(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206600:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206610
	addq.w #$2,d1
	dbf d6,loc_206600
	moveq #$0,d0
	rts
loc_206610:
	moveq #$1,d0
	rts
dat_206614:
	.incbin 26132, 436
loc_2067c8:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_2067e8
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_2067e8
	move.l #$20000,d0
loc_2067e8:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_2067f8
	neg.l d0
	neg.b d1
loc_2067f8:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_2069de).l
	tst.w d1
	bpl.s loc_206816
	tst.b ($ff158f).l
	beq.s loc_206812
	neg.w d1
loc_206812:
	add.w d1,$8(a0)
loc_206816:
	rts
loc_206818:
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
	bne.s loc_2068d2
	move.b ($ff1593).l,($ff195b).l
loc_2068d2:
	tst.b ($ff1522).l
	bpl.s loc_2068e8
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2068e8:
	rts

sub_2068ea:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206818
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
	bne.s loc_2069a4
	move.b ($ff1591).l,($ff195b).l
loc_2069a4:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2069c6
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2069c6:
	tst.b ($ff1522).l
	bpl.s loc_2069dc
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2069dc:
	rts

sub_2069de:
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
	bpl.s loc_206a1a
	move.b d1,d0
	bpl.s loc_206a14
	subq.b #$1,d0
loc_206a14:
	addi.b #$20,d0
	bra.s loc_206a24
loc_206a1a:
	move.b d1,d0
	bpl.s loc_206a20
	addq.b #$1,d0
loc_206a20:
	addi.b #$1f,d0
loc_206a24:
	andi.b #$c0,d0
	beq.w loc_206af4
	cmpi.b #$80,d0
	beq.w loc_206c90
	andi.b #$38,d1
	bne.s loc_206a3c
	addq.w #$8,d2
loc_206a3c:
	cmpi.b #$40,d0
	beq.w loc_206d66
	bra.w loc_206bc8

sub_206a48:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206cee
	cmpi.b #$80,d0
	beq.w sub_206c18
	cmpi.b #$c0,d0
	beq.w loc_206b58

sub_206a70:
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
	jsr (sub_201118).l
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
	jsr (sub_201118).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206ad4:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206ae2
	move.b ($f768).w,d3
	exg d0,d1
loc_206ae2:
	btst.l #$0,d3
	beq.s loc_206aea
	move.b d2,d3
loc_206aea:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206af4:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201118).l
	move.b #$0,d2
loc_206b10:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b1c
	move.b d2,d3
loc_206b1c:
	rts

sub_206b1e:
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
	jsr (sub_201118).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b56
	move.b #$0,d3
loc_206b56:
	rts
loc_206b58:
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
	jsr (sub_201288).l
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
	jsr (sub_201288).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206ad4

sub_206bc0:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bc8:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201288).l
	move.b #$c0,d2
	bra.w loc_206b10
	.incbin 27624, 32
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c16
	move.b #$c0,d3
loc_206c16:
	rts

sub_206c18:
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
	jsr (sub_201118).l
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
	jsr (sub_201118).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206ad4

sub_206c88:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c90:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201118).l
	move.b #$80,d2
	bra.w loc_206b10
	.incbin 27828, 58
loc_206cee:
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
	jsr (sub_201288).l
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
	jsr (sub_201288).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206ad4

sub_206d5e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d66:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201288).l
	move.b #$40,d2
	bra.w loc_206b10
	.incbin 28042, 48

sub_206dba:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206dde
	addi.w #$c,d3
	moveq #$a,d5
loc_206dde:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206dec:
	tst.b $1(a1)
	bpl.s loc_206df8
	move.b $20(a1),d0
	bne.s loc_206e04
loc_206df8:
	lea $40(a1),a1
	dbf d6,loc_206dec
	moveq #$0,d0
	rts
loc_206e04:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2071a2).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206e2c
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206e32
	bra.w loc_206df8
loc_206e2c:
	cmp.w d4,d0
	bhi.w loc_206df8
loc_206e32:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206e4a
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206e50
	bra.w loc_206df8
loc_206e4a:
	cmp.w d5,d0
	bhi.w loc_206df8
loc_206e50:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206ec4
	cmpi.b #$c0,d1
	beq.w loc_2070a4
	tst.b d1
	bmi.w sub_206f8e
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206e88
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206e86
	addq.b #$2,$24(a1)
loc_206e86:
	rts
loc_206e88:
	tst.w $12(a0)
	bpl.s loc_206eb2
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206ec2
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206ec2
	addq.b #$4,$25(a1)
	rts
loc_206eb2:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ec2
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206ec2:
	rts

sub_206ec4:
	tst.b ($ff1521).l
	bne.s loc_206ede
	tst.b ($ff151f).l
	bne.s loc_206ede
	cmpi.b #$2,$1c(a0)
	bne.w sub_206f8e
loc_206ede:
	tst.b $21(a1)
	beq.s loc_206f08
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206f06
	bset.b #$7,$22(a1)
loc_206f06:
	rts
loc_206f08:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206f20
	moveq #$6,d0
loc_206f20:
	move.w d0,$3e(a1)
	move.w dat_206f80(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206f3a
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206f3a:
	bsr.w sub_209bca
	move.w #$96,d0
	jsr (sub_2022be).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206f70
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206f78
	neg.w $12(a0)
	rts
loc_206f70:
	addi.w #$100,$12(a0)
	rts
loc_206f78:
	subi.w #$100,$12(a0)
	rts
dat_206f80:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206f8e:
	tst.b ($ff1521).l
	bne.s loc_206f9e
	tst.b ($ff151f).l
	beq.s loc_206fa2
loc_206f9e:
	moveq #$ffffffff,d0
	rts
loc_206fa2:
	nop
	tst.w $30(a0)
	bne.s loc_206f9e
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206fd8
	tst.w ($ff1512).l
	beq.w loc_207042
	jsr (sub_207874).l
	bne.s loc_206fd8
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206fd8:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206fee
	move.b #$0,($ff156f).l
loc_206fee:
	move.b #$4,$24(a0)
	bsr.w sub_205152
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20701e
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20701e:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_20702c
	neg.w $10(a0)
loc_20702c:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207042:
	tst.w ($ff1588).l
	bne.w loc_206fd8

sub_20704c:
	tst.w ($ff1906).l
	bne.s loc_2070a0
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205152
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022be).l
loc_2070a0:
	moveq #$ffffffff,d0
	rts
loc_2070a4:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207144
	cmpi.b #$23,d1
	beq.w loc_207144
	cmpi.b #$2e,d1
	beq.w loc_20718c
	cmpi.b #$37,d1
	beq.w loc_207144
	cmpi.b #$38,d1
	beq.w loc_20719a
	cmpi.b #$3a,d1
	beq.w loc_20718c
	cmpi.b #$3b,d1
	beq.w loc_20718c
	cmpi.b #$3c,d1
	beq.w loc_20718c
	tst.b ($f7aa).w
	beq.w loc_207142
	cmpi.b #$1,($f7aa).w
	beq.s loc_20710c
	cmpi.b #$4,($f7aa).w
	beq.s loc_20712e
	cmpi.b #$5,($f7aa).w
	beq.s loc_20713c
loc_20710c:
	cmpi.b #$3c,d1
	blt.s loc_207142
	cmpi.b #$3f,d1
	bgt.s loc_207142
	bsr.w sub_206ec4
	tst.b $20(a1)
	bne.s loc_207126
	addq.b #$3,$21(a1)
loc_207126:
	clr.b $20(a1)
	bra.w loc_207144
loc_20712e:
	cmpi.b #$3f,d1
	beq.s loc_207150
	cmpi.b #$3e,d1
	beq.s loc_20714a
	bra.s loc_207142
loc_20713c:
	cmpi.b #$3d,d1
	beq.s loc_20714a
loc_207142:
	rts
loc_207144:
	addq.b #$1,$21(a1)
	rts
loc_20714a:
	bsr.w sub_206f8e
	bra.s loc_207144
loc_207150:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20718a
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20718a
	neg.w $10(a0)
loc_20718a:
	rts
loc_20718c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207198
	addq.b #$1,$21(a1)
loc_207198:
	rts
loc_20719a:
	addq.b #$1,$21(a1)
	bra.w sub_206f8e
dat_2071a2:
	.incbin 29090, 126
loc_207220:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207236
	move.l #$4000,(dat_2073b0).l
	bra.s loc_207256
loc_207236:
	addi.l #$2000,(dat_2073b0).l
	cmpi.l #$80000,(dat_2073b0).l
	bls.s loc_207256
	move.l #$80000,(dat_2073b0).l
loc_207256:
	move.l (dat_2073b0).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207268
	sub.l d0,$c(a0)
loc_207268:
	btst.b #$1,($f604).w
	beq.s loc_207274
	add.l d0,$c(a0)
loc_207274:
	btst.b #$2,($f604).w
	beq.s loc_207280
	sub.l d0,$8(a0)
loc_207280:
	btst.b #$3,($f604).w
	beq.s loc_20728c
	add.l d0,$8(a0)
loc_20728c:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f30).l
	move.w (a1),($ff194e).l
	lea (dat_2073b4).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2072ce
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2072c8
	move.b #$0,d1
loc_2072c8:
	move.b d1,($ff1904).l
loc_2072ce:
	btst.b #$7,($f605).w
	beq.s loc_2072ee
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2072e8
	add.b (a2),d1
loc_2072e8:
	move.b d1,($ff1904).l
loc_2072ee:
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
	beq.s loc_20737a
	bsr.w sub_207874
	bne.s loc_20737a
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
loc_20737a:
	btst.b #$4,($f605).w
	beq.s loc_2073aa
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2073aa:
	jmp (sub_2038f2).l
dat_2073b0:
	dc.b $00,$00,$40,$00
dat_2073b4:
	.incbin 29620, 686

sub_207662:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207670:
	clr.l (a2)+
	dbf d0,loc_207670
	rts

sub_207678:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207686(pc,d0.w),d0
	jmp dat_207686(pc,d0.w)
dat_207686:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207926).l,a0
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
	bcc.s loc_2076c4
	moveq #$0,d6
loc_2076c4:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076cc:
	cmp.w (a0),d6
	bls.s loc_2076de
	tst.b $4(a0)
	bpl.s loc_2076da
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076da:
	addq.w #$8,a0
	bra.s loc_2076cc
loc_2076de:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2076fe
loc_2076ec:
	cmp.w (a0),d6
	bls.s loc_2076fe
	tst.b $4(a0)
	bpl.s loc_2076fa
	addq.b #$1,$1(a2)
loc_2076fa:
	addq.w #$8,a0
	bra.s loc_2076ec
loc_2076fe:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077e8
	bge.s loc_20778e
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20776a
loc_207738:
	cmp.w -$8(a0),d6
	bge.s loc_20776a
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20774e
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20774e:
	bsr.w sub_20780c
	bne.s loc_207758
	subq.w #$8,a0
	bra.s loc_207738
loc_207758:
	tst.b $4(a0)
	bpl.s loc_207768
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207768:
	addq.w #$8,a0
loc_20776a:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207776:
	cmp.w -$8(a0),d6
	bgt.s loc_207788
	tst.b -$4(a0)
	bpl.s loc_207784
	subq.b #$1,(a2)
loc_207784:
	subq.w #$8,a0
	bra.s loc_207776
loc_207788:
	move.l a0,($f770).w
	rts
loc_20778e:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077a2:
	cmp.w (a0),d6
	bls.s loc_2077c4
	tst.b $4(a0)
	bpl.s loc_2077b0
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077b0:
	bsr.w sub_20780c
	beq.s loc_2077a2
	tst.b $4(a0)
	bpl.s loc_2077c4
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077c4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077e4
loc_2077d2:
	cmp.w (a0),d6
	bls.s loc_2077e4
	tst.b $4(a0)
	bpl.s loc_2077e0
	addq.b #$1,$1(a2)
loc_2077e0:
	addq.w #$8,a0
	bra.s loc_2077d2
loc_2077e4:
	move.l a0,($f774).w
loc_2077e8:
	rts

sub_2077ea:
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

sub_20780c:
	bsr.s sub_2077ea
	beq.s loc_20781e
	tst.b $4(a0)
	bpl.s loc_207824
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207824
loc_20781e:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207824:
	bsr.w sub_207874
	bne.s loc_207872
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
	bpl.s loc_207854
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207854:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207866
	nop
	nop
	nop
	nop
loc_207866:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207872:
	rts

sub_207874:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20787c:
	tst.b (a1)
	beq.s loc_207888
	lea $40(a1),a1
	dbf d0,loc_20787c
loc_207888:
	rts

sub_20788a:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078a8
loc_20789c:
	tst.b (a1)
	beq.s loc_2078a8
	lea $40(a1),a1
	dbf d0,loc_20789c
loc_2078a8:
	rts
loc_2078aa:
	move.w $8(a0),d0
loc_2078ae:
	tst.b $1(a0)
	bmi.s loc_207918
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207918
loc_2078cc:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20790e
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207906
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2078fe
	moveq #$0,d1
	bra.s loc_207906
loc_2078fe:
	cmpi.w #$3,d1
	bcs.s loc_207906
	moveq #$2,d1
loc_207906:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20790e:
	jsr (sub_20399e).l
	moveq #$1,d0
	rts
loc_207918:
	btst.b #$7,($ff152e).l
	bne.s loc_2078cc
	moveq #$0,d0
	rts
dat_207926:
	.incbin 31014, 1886

sub_208084:
	btst.b #$3,$22(a0)
	beq.s loc_2080f4
	btst.b #$3,$22(a1)
	beq.s loc_2080f4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2080f4
	tst.b $2a(a1)
	beq.s loc_2080b6
	move.w #$ab,d0
	jsr (sub_2022be).l
loc_2080b6:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2080e2
	cmpi.b #$17,$1c(a1)
	beq.s loc_2080e2
	bclr.b #$0,$2c(a1)
loc_2080e2:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2080f4
	bclr.b #$1,$22(a1)
loc_2080f4:
	rts

sub_2080f6:
	cmpi.b #$4,$24(a1)
	bne.s loc_208108
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208108:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208168
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20812a
	bclr.b #$3,$22(a0)
	bra.w sub_208084
loc_20812a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208168
	tst.b ($ff195b).l
	beq.s loc_208152
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208162
loc_208152:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208162:
	move.b #$0,$1c(a1)
loc_208168:
	bset.b #$3,$22(a1)
	beq.s loc_20818a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2081c2
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20818a:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2081b6
	cmpi.b #$2,$24(a0)
	beq.s loc_2081bc
loc_2081b6:
	move.w $10(a1),$14(a1)
loc_2081bc:
	bclr.b #$1,$22(a1)
loc_2081c2:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2081cc:
	move.b #$1,$25(a0)
loc_2081d2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208486
	btst.b #$6,$2c(a1)
	bne.w loc_208486
	cmpi.b #$6,$24(a1)
	bcc.w loc_208486
	tst.b $0(a1)
	beq.w loc_208486
	tst.b $1(a0)
	bpl.w loc_208486
	tst.b ($ff1906).l
	bne.w loc_208486
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208486
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208486
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208240
	btst.b #$3,$22(a0)
	bne.s loc_208252
	bra.w loc_208486
loc_208240:
	cmpi.b #$1,$25(a0)
	bne.s loc_208252
	tst.w $12(a1)
	beq.s loc_208252
	bmi.w loc_208486
loc_208252:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208486
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208486
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208288
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208288:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208296
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208296:
	cmp.w d4,d5
	bcs.w loc_20832a
	cmpi.b #$1,$25(a0)
	beq.w loc_208486
	cmpi.b #$a,$0(a0)
	bne.s loc_2082b8
	btst.b #$1,$22(a1)
	bne.w loc_208486
loc_2082b8:
	cmpi.b #$4,d5
	bls.w loc_208486
	bsr.w sub_2084d6
	move.l d0,-(a7)
	bsr.w sub_208084
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2082e2
	tst.w $10(a1)
	beq.s loc_208312
	bpl.s loc_2082ea
	bra.s loc_208312
loc_2082e2:
	tst.w $10(a1)
	beq.s loc_208312
	bpl.s loc_208312
loc_2082ea:
	bsr.w sub_208496
	btst.b #$1,$22(a1)
	bne.s loc_208308
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208308:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208312:
	bsr.w sub_20854c
	bsr.w sub_208496
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20832a:
	cmpi.b #$19,$0(a0)
	bne.s loc_20833c
	btst.b #$2,$22(a1)
	bne.w loc_208486
loc_20833c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208352
	bmi.w loc_208422
loc_208352:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208364
	tst.w $12(a1)
	beq.s loc_208364
	bmi.w loc_208486
loc_208364:
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
	beq.s loc_2083b0
	bpl.s loc_208390
	neg.b d0
loc_208390:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069de).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2083b0
	tst.w $10(a0)
	bpl.s loc_2083ac
	neg.w d1
loc_2083ac:
	add.w d1,$8(a1)
loc_2083b0:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20841a
	tst.w $12(a0)
	bmi.s loc_2083ee
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a70).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2083ee
	add.w d1,$c(a1)
	bra.w loc_208486
loc_2083ee:
	tst.w $12(a0)
	bpl.s loc_20841a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c88).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20841a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20704c).l
	movem.l (a7)+,a0-a1
	bra.s loc_208486
loc_20841a:
	bsr.w sub_2080f6
	moveq #$1,d0
	rts
loc_208422:
	cmpi.b #$1,$25(a0)
	beq.s loc_208486
	cmpi.b #$9,$0(a0)
	beq.s loc_208486
	cmpi.b #$a,$0(a0)
	bne.s loc_20844c
	cmpi.b #$2,$25(a0)
	beq.s loc_20846c
	btst.b #$1,$1(a0)
	bne.s loc_20846c
	bra.s loc_208486
loc_20844c:
	btst.b #$1,$22(a1)
	bne.s loc_20846c
	tst.w $12(a0)
	beq.s loc_20846c
	bmi.s loc_20846c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20704c).l
	movem.l (a7)+,a0-a1
loc_20846c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20854c
	bsr.w sub_208084
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208486:
	bsr.w sub_20854c
	bsr.w sub_208084
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208496:
	tst.w $10(a0)
	beq.s loc_2084d4
	cmpi.b #$a,$0(a0)
	beq.s loc_2084d4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2084b0
	neg.b d0
loc_2084b0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069de).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2084d4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20704c).l
	movem.l (a7)+,a0-a1
loc_2084d4:
	rts

sub_2084d6:
	cmpi.b #$a,$0(a0)
	bne.s loc_2084e6
	move.b #$0,$20(a1)
	rts
loc_2084e6:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20853a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20854a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208508
	tst.w $10(a2)
	beq.s loc_20854a
loc_208508:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20851a
	cmp.w $8(a2),d1
	bcs.s loc_20854a
	bra.s loc_208520
loc_20851a:
	cmp.w $8(a2),d1
	bcc.s loc_20854a
loc_208520:
	cmpi.b #$15,$0(a0)
	beq.s loc_20854a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20704c).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20853a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20854a:
	rts

sub_20854c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208566
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208566
	move.b #$0,$20(a1)
loc_208566:
	rts
	.incbin 34152, 374
loc_2086de:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2086ec(pc,d0.w),d0
	jmp dat_2086ec(pc,d0.w)
dat_2086ec:
	.incbin 34540, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2086de
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208742
	tst.b $1(a0)
	bpl.s loc_20874a
loc_208742:
	move.w dat_20879c(pc,d0.w),d1
	jsr dat_20879c(pc,d1.w)
loc_20874a:
	bsr.w sub_2038f2
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20877c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20877c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20399e
	rts
dat_20879c:
	.incbin 34716, 26
	addq.b #$2,$24(a0)
	move.l #$208b1e,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20880c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208b24,$4(a0)
	bra.s loc_20884e
loc_20880c:
	btst.l #$3,d0
	beq.s loc_20883a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208b6e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c98c).l
	move.l (a7)+,d0
	bra.s loc_20884e
loc_20883a:
	btst.b #$1,$1(a0)
	beq.s loc_20884e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20884e:
	btst.l #$1,d0
	beq.s loc_20885a
	bset.b #$5,$2(a0)
loc_20885a:
	andi.w #$2,d0
	move.w dat_208866(pc,d0.w),$30(a0)
	rts
dat_208866:
	dc.b $f0,$00,$f6,$00

sub_20886a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_2081d2).l
	tst.b $1(a0)
	bpl.s loc_208886
	lea ($d000).w,a1
	bsr.s sub_20886a
	bne.s loc_208888
loc_208886:
	rts
loc_208888:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2022be).l
	.incbin 35002, 34

sub_2088dc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_2081d2).l
	tst.b $1(a0)
	bpl.s loc_2088fe
	lea ($d000).w,a1
	bsr.s sub_2088dc
	btst.b #$5,$22(a0)
	bne.s loc_208900
loc_2088fe:
	rts
loc_208900:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_20892e
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_20892e:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_208948
	move.b #$0,$1c(a1)
loc_208948:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2022be).l
	.incbin 35170, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208c0a(pc,d0.w),d1
	jmp dat_208c0a(pc,d1.w)
dat_208c0a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_208c14:
	.incbin 35860, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208c6c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208c64
	moveq #$0,d1
	bra.s loc_208c6c
loc_208c64:
	cmpi.w #$3,d1
	bcs.s loc_208c6c
	moveq #$2,d1
loc_208c6c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208c88
	moveq #$6,d1
loc_208c88:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_208c14).l,a1
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
	beq.s loc_208cd8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208cd0
	moveq #$0,d0
	bra.s loc_208cd8
loc_208cd0:
	cmpi.w #$3,d0
	bcs.s loc_208cd8
	moveq #$2,d0
loc_208cd8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208da6
	dbf d0,loc_208cd8
	bclr.b #$7,(a2)
	bra.s loc_208d2e
loc_208cea:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208d16
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208d0e
	moveq #$0,d0
	bra.s loc_208d16
loc_208d0e:
	cmpi.w #$3,d0
	bcs.s loc_208d16
	moveq #$2,d0
loc_208d16:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208da6
	dbf d0,loc_208d16
	bclr.b #$7,(a2)
	bsr.w sub_20788a
	bne.w loc_208db2
loc_208d2e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209078,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208d84
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208d84
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208d84:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208da6:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_208cea
loc_208db2:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208dd8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208dd0
	moveq #$0,d0
	bra.s loc_208dd8
loc_208dd0:
	cmpi.w #$3,d0
	bcs.s loc_208dd8
	moveq #$2,d0
loc_208dd8:
	lea $1(a2),a3
loc_208ddc:
	btst.b #$0,-(a3)
	bne.w sub_20399e
	dbf d0,loc_208ddc
	tst.b $1(a0)
	bmi.s loc_208e0c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208e86
loc_208e0c:
	tst.w ($ff190e).l
	bne.s loc_208e1c
	move.b ($ff1913).l,$1a(a0)
loc_208e1c:
	bra.w sub_2038f2
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208e8a
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208e6c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208e64
	moveq #$0,d1
	bra.s loc_208e6c
loc_208e64:
	cmpi.w #$3,d1
	bcs.s loc_208e6c
	moveq #$2,d1
loc_208e6c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209070).l,a1
	bsr.w sub_205afc
	bra.w sub_2038f2
loc_208e86:
	bra.w sub_20399e

sub_208e8a:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208eda
	bset.b #$1,($ff150d).l
	beq.s loc_208ec4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208eda
	bset.b #$2,($ff150d).l
	bne.s loc_208eda
loc_208ec4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205abc).l
loc_208eda:
	jmp (sub_2022be).l
	.incbin 36576, 400
dat_209070:
	.incbin 36976, 402
loc_209202:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209230(pc,d0.w),d0
	jsr dat_209230(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20922e
	cmpi.w #$5a,($f786).w
	bcs.s loc_209228
	btst.b #$0,($ff1505).l
	bne.s loc_20922e
loc_209228:
	jmp (sub_2038f2).l
loc_20922e:
	rts
dat_209230:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20980a,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209264
	move.b #$13,$1a(a0)
loc_209264:
	rts
loc_209266:
	tst.b ($ff0f01).l
	beq.s loc_209274
	jmp (sub_20399e).l
loc_209274:
	cmpi.b #$a,$28(a0)
	beq.w loc_209202
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209298(pc,d0.w),d0
	jsr dat_209298(pc,d0.w)
	jsr (sub_2038f2).l
	jmp (loc_2078aa).l
dat_209298:
	.incbin 37528, 282

sub_2093b2:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2093ea
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2093e2
	moveq #$0,d1
	bra.s loc_2093ea
loc_2093e2:
	cmpi.w #$3,d1
	bcs.s loc_2093ea
	moveq #$2,d1
loc_2093ea:
	add.w d1,d0
	rts

sub_2093ee:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209410
	tst.b ($ff1956).l
	beq.s loc_209408
	tst.b $29(a0)
	bne.s loc_209410
	rts
loc_209408:
	tst.b $29(a0)
	beq.s loc_209410
	rts
loc_209410:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_2081d2).l
	tst.b $28(a0)
	bne.s loc_209432
	tst.b ($ff0f01).l
	beq.s loc_209432
	jmp (loc_2078aa).l
loc_209432:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209266
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20944a(pc,d0.w),d1
	jmp dat_20944a(pc,d1.w)
dat_20944a:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20980a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209494
	tst.b $29(a0)
	bne.s loc_209494
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209494:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2093b2
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_2094c0
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_2094c0:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20951a
	move.b $25(a0),d0
	beq.s loc_2094fa
	bsr.w sub_20383a
	jsr (sub_206b1e).l
	tst.w d1
	bpl.w loc_209508
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209508
loc_2094fa:
	tst.b $1(a0)
	bpl.s loc_209508
	lea ($d000).w,a1
	bsr.w sub_2093ee
loc_209508:
	tst.w ($ff190e).l
	bne.s loc_20951a
	lea (dat_209782).l,a1
	bsr.w sub_205afc
loc_20951a:
	bsr.w sub_2038f2
	jmp (loc_2078aa).l
	.incbin 38180, 606
dat_209782:
	.incbin 38786, 586
loc_2099cc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099e0(pc,d0.w),d0
	jsr dat_2099e0(pc,d0.w)
	jmp (sub_2038f2).l
dat_2099e0:
	.incbin 39392, 146
	tst.b $28(a0)
	bmi.w loc_2099cc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a88(pc,d0.w),d0
	jmp dat_209a88(pc,d0.w)
dat_209a88:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209b22,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_209ab8
	move.b #$3,$1a(a0)
	bra.s loc_209ad8
loc_209ab8:
	tst.w ($ff1588).l
	beq.s loc_209ac6
	move.b #$2,$1a(a0)
loc_209ac6:
	tst.b $28(a0)
	beq.s loc_209ad8
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_209ad8:
	tst.b $28(a0)
	bne.s loc_209b1c
	tst.b $29(a0)
	beq.s loc_209b08
	tst.w ($ff1512).l
	beq.s loc_209af4
	bclr.b #$5,$2(a0)
	bra.s loc_209b1c
loc_209af4:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209b1c
	eori.b #$20,$2(a0)
	bra.s loc_209b1c
loc_209b08:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209b1c
	move.b #$2,$1a(a0)
loc_209b1c:
	jmp (sub_2038f2).l
	.incbin 39714, 168

sub_209bca:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_209be6
	move.l d1,(a3)
loc_209be6:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_209c10
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205abc).l
loc_209c10:
	rts
loc_209c12:
	tst.w ($ff1588).l
	beq.s loc_209c68
	bsr.w sub_209e64
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
	lea (dat_209fc4).l,a2
	moveq #$2,d6
	bsr.w sub_20a01c
	bra.w loc_209cc2
loc_209c68:
	tst.b ($ff1511).l
	beq.s loc_209c8c
	bpl.s loc_209c76
	bsr.w sub_209e0e
loc_209c76:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209efe
loc_209c8c:
	tst.b ($ff150f).l
	beq.s loc_209cc2
	bpl.s loc_209c9a
	bsr.w sub_209dfa
loc_209c9a:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209cbe
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209cbe:
	bsr.w sub_209ef4
loc_209cc2:
	tst.w ($ff1588).l
	bne.w loc_209d6e
	tst.b ($ff1510).l
	beq.w loc_209d6e
	tst.w ($f63a).w
	bne.w loc_209d6e
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209dcc
	tst.b ($f7cc).w
	bne.s loc_209d18
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209d18
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209d18
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209d18
	move.b #$9,(a1)
loc_209d18:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a00a
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a014
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209d6a
	move.w #$63,d1
loc_209d6a:
	bsr.w sub_20a014
loc_209d6e:
	tst.b ($ff150e).l
	beq.s loc_209d80
	clr.b ($ff150e).l
	bsr.w sub_209fea
loc_209d80:
	tst.b ($f7d6).w
	beq.s loc_209dca
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209da0
	move.l #$6d400001,d0
loc_209da0:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209e82
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209dc0
	move.l #$6e800001,d0
loc_209dc0:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209e82
loc_209dca:
	rts
loc_209dcc:
	btst.b #$7,($ff152e).l
	bne.s loc_209df8
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_20704c
	move.b #$1,($ff150c).l
loc_209df8:
	rts

sub_209dfa:
	move.l #$73600002,($c00004).l
	lea dat_209e60(pc),a2
	move.w #$2,d2
	bra.s loc_209e2a

sub_209e0e:
	lea ($c00000).l,a6
	bsr.w sub_209fea
	move.l #$70600002,($c00004).l
	lea dat_209e58(pc),a2
	move.w #$6,d2
loc_209e2a:
	lea (dat_2330bc).l,a1
loc_209e30:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209e4c
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209e40:
	move.l (a3)+,(a6)
	dbf d1,loc_209e40
loc_209e46:
	dbf d2,loc_209e30
	rts
loc_209e4c:
	move.l #$0,(a6)
	dbf d1,loc_209e4c
	bra.s loc_209e46
dat_209e58:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209e60:
	dc.b $ff,$ff,$00,$00

sub_209e64:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209fe0
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209fe0

sub_209e82:
	lea (dat_209fbc).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209e92:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209e96:
	sub.l d3,d1
	bcs.s loc_209e9e
	addq.w #$1,d2
	bra.s loc_209e96
loc_209e9e:
	add.l d3,d1
	tst.w d2
	beq.s loc_209ea8
	move.w #$1,d4
loc_209ea8:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209eb4
	tst.w d6
	bne.s loc_209ee6
loc_209eb4:
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
loc_209eda:
	addi.l #$400000,d0
	dbf d6,loc_209e92
	rts
loc_209ee6:
	moveq #$f,d5
loc_209ee8:
	move.l #$0,(a6)
	dbf d5,loc_209ee8
	bra.s loc_209eda

sub_209ef4:
	lea (dat_209fc4).l,a2
	moveq #$2,d6
	bra.s loc_209f06

sub_209efe:
	lea (dat_209fb8).l,a2
	moveq #$5,d6
loc_209f06:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209f0e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209f12:
	sub.l d3,d1
	bcs.s loc_209f1a
	addq.w #$1,d2
	bra.s loc_209f12
loc_209f1a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209f24
	move.w #$1,d4
loc_209f24:
	tst.w d4
	beq.s loc_209f52
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
loc_209f52:
	addi.l #$400000,d0
	dbf d6,loc_209f0e
	rts
	.incbin 40798, 90
dat_209fb8:
	dc.b $00,$01,$86,$a0
dat_209fbc:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209fc4:
	dc.b $00,$00,$00,$64
dat_209fc8:
	dc.b $00,$00,$00,$0a
dat_209fcc:
	dc.b $00,$00,$00,$01
dat_209fd0:
	.incbin 40912, 16

sub_209fe0:
	moveq #$3,d6
	lea (dat_209fd0).l,a2
	bra.s sub_20a01c

sub_209fea:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a000
	moveq #$9,d1
loc_20a000:
	lea (dat_209fcc).l,a2
	moveq #$0,d6
	bra.s sub_20a01c

sub_20a00a:
	lea (dat_209fcc).l,a2
	moveq #$0,d6
	bra.s sub_20a01c

sub_20a014:
	lea (dat_209fc8).l,a2
	moveq #$1,d6

sub_20a01c:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20a024:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a028:
	sub.l d3,d1
	bcs.s loc_20a030
	addq.w #$1,d2
	bra.s loc_20a028
loc_20a030:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a03a
	move.w #$1,d4
loc_20a03a:
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
	dbf d6,loc_20a024
	rts
	.incbin 41072, 2910
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20abdc(pc,d0.w),d0
	jmp dat_20abdc(pc,d0.w)
dat_20abdc:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b2da,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b29a).l,a2
loc_20ac2a:
	jsr (sub_207874).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b2da,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20ac7c
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20ac7c:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20ac2a
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aca4
	bge.s loc_20ac9a
	neg.w d0
loc_20ac9a:
	add.w d0,$a(a0)
	jmp (sub_2038f2).l
loc_20aca4:
	addq.b #$4,$24(a0)
	jmp (sub_2038f2).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20acc8
	bge.s loc_20acbe
	neg.w d0
loc_20acbe:
	add.w d0,$8(a0)
	jmp (sub_2038f2).l
loc_20acc8:
	addq.b #$4,$24(a0)
	jmp (sub_2038f2).l
	tst.b $1e(a0)
	beq.s loc_20ace2
	subq.b #$1,$1e(a0)
	jmp (sub_2038f2).l
loc_20ace2:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20acfc
	bge.s loc_20acf2
	neg.w d0
loc_20acf2:
	add.w d0,$a(a0)
	jmp (sub_2038f2).l
loc_20acfc:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202488).l
	tst.b $1e(a0)
	beq.s loc_20ad1e
	subq.b #$1,$1e(a0)
	jmp (sub_2038f2).l
loc_20ad1e:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ad38
	bge.s loc_20ad2e
	neg.w d0
loc_20ad2e:
	add.w d0,$8(a0)
	jmp (sub_2038f2).l
loc_20ad38:
	jmp (sub_20399e).l
	tst.l ($f680).w
	bne.s loc_20ad52
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_20399e).l
loc_20ad52:
	rts
	.incbin 44372, 1350
dat_20b29a:
	.incbin 45722, 5812

sub_20c94e:
	lea dat_20c97c(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c95a:
	cmp.w (a1)+,d0
	bcs.s loc_20c962
	addq.b #$2,d1
	bra.s loc_20c95a
loc_20c962:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c96c
	rts
loc_20c96c:
	move.b d1,($ff1574).l
	move.w dat_20c980(pc,d1.w),d0
	jmp (loc_2024ba).l
dat_20c97c:
	dc.b $18,$00,$ff,$ff
dat_20c980:
	dc.b $00,$05,$00,$06,$00,$05,$00,$02
	dc.b $00,$04,$00,$02

sub_20c98c:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9a2(pc,d0.w),d0
	jsr dat_20c9a2(pc,d0.w)
	jmp (sub_2038f2).l
dat_20c9a2:
	.incbin 51618, 36
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$40,$19(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	lea $2a(a0),a2
	moveq #$7,d1
loc_20c9ea:
	jsr (sub_207874).l
	bne.w loc_20ca68
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
	move.l #$20ce92,$4(a1)
	move.b #$8,$16(a1)
	move.b #$8,$19(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3f(a1)
	moveq #$0,d2
	move.b d1,d2
	move.b d2,$3c(a1)
	add.w d2,d2
	lea dat_20ca6e(pc,d2.w),a3
	move.w (a3)+,d2
	add.w $8(a0),d2
	move.w d2,$8(a1)
loc_20ca68:
	dbf d1,loc_20c9ea
	rts
dat_20ca6e:
	.incbin 51822, 1116
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cee8(pc,d0.w),d0
	jsr dat_20cee8(pc,d0.w)
	jsr (sub_2038f2).l
	move.w $36(a0),d0
	jmp (loc_2078ae).l
dat_20cee8:
	dc.b $00,$96,$01,$56
loc_20ceec:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2081cc).l
dat_20cefe:
	.incbin 52990, 50
dat_20cf30:
	.incbin 53040, 52
dat_20cf64:
	.incbin 53092, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20cfa0
	move.w #$4378,d0
loc_20cfa0:
	move.w d0,$2(a0)
	move.l #$20d344,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20cefe).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20cf30).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20cf64).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20d03a
	cmpi.b #$1,d1
	bne.s loc_20d006
	clr.b d2
	bsr.w sub_20d2b0
	bra.s loc_20d03a
loc_20d006:
	cmpi.b #$2,d1
	bne.s loc_20d01e
	move.b #$f0,d2
	bsr.w sub_20d2b0
	move.b #$10,d2
	bsr.w sub_20d2b0
	bra.s loc_20d03a
loc_20d01e:
	cmpi.b #$3,d1
	bne.s loc_20d03a
	move.b #$e0,d2
	bsr.w sub_20d2b0
	clr.b d2
	bsr.w sub_20d2b0
	move.b #$20,d2
	bsr.w sub_20d2b0
loc_20d03a:
	bra.w loc_20d03e
loc_20d03e:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20d05c(pc,d0.w),d0
	jsr dat_20d05c(pc,d0.w)
	bsr.w sub_20d26c
	bsr.w sub_20d2e0
	bra.w loc_20ceec
dat_20d05c:
	.incbin 53340, 50
	bset.b #$7,$3f(a0)
	rts
	bset.b #$7,$3f(a0)
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20d22c
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20d0b6
	neg.w d0
loc_20d0b6:
	move.w d0,$10(a0)
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	rts
	.incbin 53448, 356

sub_20d22c:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20d252
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20d26a
	move.b #$ff,$3c(a0)
	bra.s loc_20d26a
loc_20d252:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20d26a
	clr.b $3c(a0)
loc_20d26a:
	rts

sub_20d26c:
	btst.b #$7,$3f(a0)
	beq.s loc_20d2ae
	btst.b #$3,$22(a0)
	bne.s loc_20d288
	tst.b $3e(a0)
	beq.s loc_20d2ae
	subq.b #$8,$3e(a0)
	bra.s loc_20d294
loc_20d288:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20d2ae
	addq.b #$8,$3e(a0)
loc_20d294:
	move.b $3e(a0),d0
	jsr (sub_2007c2).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20d2ae:
	rts

sub_20d2b0:
	jsr (sub_207874).l
	bne.s loc_20d2de
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20d2de:
	rts

sub_20d2e0:
	btst.b #$0,$3f(a0)
	beq.s loc_20d342
	btst.b #$3,$22(a0)
	beq.s loc_20d342
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20d342
	btst.b #$3,$22(a1)
	beq.s loc_20d342
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20d342
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20d334
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20d334
	move.l #$20000,d0
loc_20d334:
	tst.b ($ff158f).l
	beq.s loc_20d33e
	neg.l d0
loc_20d33e:
	add.l d0,$8(a1)
loc_20d342:
	rts
	.incbin 54084, 2838
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2414,$2(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.b #$35,$20(a0)
	lea dat_20e0b8(pc),a1
	lea dat_20e0ac(pc),a2
	move.l #$fff80000,d0
	tst.b $28(a0)
	beq.s loc_20deaa
	lea dat_20e158(pc),a1
	lea dat_20e0b2(pc),a2
	move.l #$fffb0000,d0
loc_20deaa:
	move.l a1,$4(a0)
	move.l a2,$2c(a0)
	move.l d0,$30(a0)
	tst.b $29(a0)
	beq.s loc_20dec8
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20dec8:
	addq.b #$2,$24(a0)
	bra.s loc_20dee2
	.incbin 57038, 20
loc_20dee2:
	addi.l #$4000,$34(a0)
	move.l $34(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206b1e).l
	tst.w d1
	bpl.s loc_20df0e
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	addq.w #$8,$c(a0)
loc_20df0e:
	rts
	.incbin 57104, 412
dat_20e0ac:
	dc.b $00,$02,$07,$01,$02,$ff
dat_20e0b2:
	dc.b $00,$02,$0f,$01,$02,$ff
dat_20e0b8:
	.incbin 57528, 160
dat_20e158:
	.incbin 57688, 370
loc_20e2ca:
	jsr (sub_207874).l
	bne.s loc_20e334
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
	dbf d6,loc_20e2ca
loc_20e334:
	move.b #$18,$0(a0)
	move.b #$0,$24(a0)
	move.b #$1,$25(a0)
	clr.w $20(a0)
	tst.b $1(a0)
	bpl.s loc_20e35a
	move.w #$9e,d0
	jmp (sub_2022be).l
loc_20e35a:
	rts
	.incbin 58204, 1368
	tst.b $29(a0)
	bne.w loc_20ea1c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8ca(pc,d0.w),d0
	jmp dat_20e8ca(pc,d0.w)
dat_20e8ca:
	dc.b $00,$08,$00,$52,$00,$90,$00,$aa
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$20ea84,$4(a0)
	move.b #$3,$18(a0)
	move.b #$11,$16(a0)
	move.w #$4350,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e902
	move.w #$43a0,d0
loc_20e902:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	lea ($d000).w,a1
	jsr (sub_2081cc).l
	beq.s loc_20e94e
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20e940
	neg.w d0
loc_20e940:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_2022be).l
loc_20e94e:
	jsr (sub_2038f2).l
	jmp (loc_2078aa).l
	.incbin 59738, 194
loc_20ea1c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea2a(pc,d0.w),d0
	jmp dat_20ea2a(pc,d0.w)
dat_20ea2a:
	.incbin 59946, 5276

sub_20fec6:
	jmp (loc_206370).l
dat_20fecc:
	.incbin 65228, 16
dat_20fedc:
	.incbin 65244, 65828
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 9596
dat_235638:
	.incbin 218680, 256
dat_235738:
	.incbin 218936, 4096
dat_236738:
	.incbin 223032, 4896
dat_237a58:
	.incbin 227928, 34216
