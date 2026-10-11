; R51D__.MMD
; disassembled from the disc; code only, data comes from data/R51D__.MMD at build time
	.file "R51D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$d2
	jmp (loc_201c02).l
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
	bsr.w sub_20220e
	bsr.w sub_2021b6
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
	bsr.w sub_2025d4
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
	bsr.w sub_2025d4
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
	bsr.w sub_2025d4
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
	bsr.w sub_2025d4
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
	lea (dat_235534).l,a2
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
	lea (dat_235634).l,a2
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
	lea (dat_235534).l,a2
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
	lea (dat_235634).l,a2
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
	lea (dat_235534).l,a2
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
	lea (dat_236634).l,a2
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
	lea (dat_235534).l,a2
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
	lea (dat_236634).l,a2
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
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20148c
	tst.b ($ff0f01).l
	bne.s loc_20148c
	move.b #$1,($ff156a).l
loc_20148c:
	clr.b ($f62a).w
	clr.b ($ff158f).l
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_2014fa
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2079d4
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014fa
	move.b #$1,($ff1508).l
loc_2014fa:
	bset.b #$7,($f600).w
	bsr.w sub_2025c6
	tst.b ($ff156e).l
	bne.s loc_201520
	btst.b #$7,($ff152e).l
	beq.s loc_201556
	bset.b #$0,($ff151d).l
	beq.s loc_20152c
loc_201520:
	bsr.w sub_20044a
	bclr.b #$0,($ff151d).l
loc_20152c:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015c6
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201554
	bclr.b #$7,($ff152e).l
loc_201554:
	rts
loc_201556:
	bset.b #$0,($ff151d).l
	beq.s loc_201564
	bsr.w sub_20031e
loc_201564:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201580
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015a8
loc_201580:
	tst.b ($ff1508).l
	bne.s loc_2015c6
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015a8:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015b0:
	move.l #$0,(a1)+
	dbf d6,loc_2015b0
	move.b #$c,($f62a).w
	bsr.w sub_2007b6
	rts
loc_2015c6:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015de
	move.w #$0,($f78e).w
	move.b #$0,($ff151d).l
	rts
loc_2015de:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015f4
	btst.b #$7,($ff152e).l
	beq.s loc_2015fa
loc_2015f4:
	move.l #$eee0eee,d0
loc_2015fa:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201602:
	move.l d0,(a1)+
	dbf d6,loc_201602
loc_201608:
	move.b #$c,($f62a).w
	bsr.w sub_2007b6
	bsr.w sub_2025d4
	bne.s loc_201608
	tst.l ($f680).w
	bne.s loc_201608
	bsr.w sub_201abc
	moveq #$0,d0
	lea (dat_20f9de).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201634
	bsr.w sub_2026da
loc_201634:
	moveq #$1,d0
	bsr.w sub_2026da
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201650:
	move.l d0,(a1)+
	dbf d1,loc_201650
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201662:
	move.l d0,(a1)+
	dbf d1,loc_201662
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201672:
	move.l d0,(a1)+
	dbf d1,loc_201672
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201682:
	move.l d0,(a1)+
	dbf d1,loc_201682
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201692:
	move.l d0,(a1)+
	dbf d1,loc_201692
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2022b0
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
	bsr.w sub_2029d2
	bsr.w sub_202b2a
	bset.b #$2,($f754).w
	bsr.w sub_2035e6
	bsr.w sub_2034d0
	jsr (sub_2013d8).l
	bsr.w sub_2019f6
loc_201712:
	move.b #$c,($f62a).w
	bsr.w sub_2007b6
	bsr.w sub_2025d4
	bne.s loc_201712
	tst.l ($f680).w
	bne.s loc_201712
	bsr.w sub_201982
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b1c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201776
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201776:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017b8
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017b8:
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
	jsr (sub_20f9d8).l
	jsr (sub_20292a).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20184e
loc_201848:
	bsr.w sub_20039c
	bra.s loc_20185c
loc_20184e:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201848
	bsr.w sub_20027c
loc_20185c:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20186a:
	move.b #$8,($f62a).w
	bsr.w sub_2007b6
	tst.b ($f7cc).w
	bne.s loc_201888
	btst.b #$7,($f605).w
	beq.s loc_201888
	eori.b #$1,($f63a).w
loc_201888:
	btst.b #$0,($f63a).w
	beq.w loc_201908
	bsr.w sub_201b80
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018ec
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20186a
	subq.b #$1,($ff1508).l
	bpl.s loc_2018ba
	clr.b ($ff1508).l
loc_2018ba:
	move.w #$e,d0
	jsr (sub_205c96).l
	bsr.w sub_2079d4
	clr.b ($ff1522).l
	jsr (sub_202336).l
	move.b #$1,($a01c3e).l
	jsr (sub_202352).l
	move.w #$1,($ff1502).l
	bra.s loc_2018fa
loc_2018ec:
	andi.b #$70,d0
	beq.w loc_20186a
	clr.b ($ff1508).l
loc_2018fa:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	bra.w loc_201978
loc_201908:
	bsr.w sub_201bc6
	addq.w #$1,($ff1504).l
	jsr (sub_2079ea).l
	jsr (sub_2039ec).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201978
	tst.w ($ff1502).l
	bne.w loc_201978
	tst.w ($ff1906).l
	bne.s loc_201950
	cmpi.b #$6,($d024).w
	bcs.s loc_201950
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201954
loc_201950:
	bsr.w sub_202b2a
loc_201954:
	jsr (sub_203b96).l
	tst.w ($ff190e).l
	bne.s loc_201966
	bsr.w sub_200184
loc_201966:
	jsr (sub_20c44a).l
	bsr.w sub_2025d4
	bsr.w sub_201a28
	bra.w loc_20186a
loc_201978:
	clr.b ($ff156c).l
	bra.w loc_201472

sub_201982:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20199a
	move.w #$78,$30(a1)
loc_20199a:
	rts
	.incbin 6556, 90

sub_2019f6:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a08(pc,d0.w),($f796).w
	rts
dat_201a08:
	.incbin 6664, 32

sub_201a28:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a46
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a46:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a64
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a64:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a8c
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a8c
	move.b #$0,($ff1915).l
loc_201a8c:
	tst.b ($ff1916).l
	beq.s loc_201aba
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201aba:
	rts

sub_201abc:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201ade
	cmpi.b #$2,d0
	bne.s loc_201ade
	add.b ($ff156a).l,d0
loc_201ade:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201af6(pc,d1.w),d0
	jmp (sub_205c96).l
dat_201af6:
	.incbin 6902, 38

sub_201b1c:
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

sub_201b80:
	move.w #$ab,d0
	jsr (sub_20239e).l
	bset.b #$7,($f63a).w
	bne.s loc_201bc4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201baa
loc_201ba0:
	move.w #$d5,d0
	jmp (sub_205c96).l
loc_201baa:
	tst.b ($ff151f).l
	bne.s loc_201ba0
	tst.b ($ff1520).l
	bne.s loc_201ba0
	move.w #$90,d0
	jmp (sub_205c96).l
loc_201bc4:
	rts

sub_201bc6:
	bclr.b #$7,($f63a).w
	beq.s loc_201c00
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201be6
loc_201bdc:
	move.w #$d6,d0
	jmp (sub_205c96).l
loc_201be6:
	tst.b ($ff151f).l
	bne.s loc_201bdc
	tst.b ($ff1520).l
	bne.s loc_201bdc
	move.w #$91,d0
	jmp (sub_205c96).l
loc_201c00:
	rts
loc_201c02:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c8e
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c3e
	move.w #$700,d0
loc_201c3a:
	dbf d0,loc_201c3a
loc_201c3e:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c74(pc,d0.w),d0
	jsr dat_201c74(pc,d0.w)
loc_201c54:
	jsr (sub_2023c2).l
	tst.b ($f63a).w
	bne.s loc_201c68
	bsr.w sub_202176
	bsr.w sub_202164
loc_201c68:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c74:
	.incbin 7284, 26
loc_201c8e:
	tst.b ($ff1957).l
	beq.w loc_201c54
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c54
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cbc
	move.w #$700,d0
loc_201cb8:
	dbf d0,loc_201cb8
loc_201cbc:
	move.w #$1,($f6fc).w
	jsr (sub_202336).l
	tst.b ($f64e).w
	bne.s loc_201cf4
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d18
loc_201cf4:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d18:
	move.w ($f624).w,(a5)
	jsr (sub_202352).l
	bra.w loc_201c54
	.incbin 7462, 60
	jsr (sub_202336).l
	bsr.w sub_2021d2
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
	bsr.w sub_205bb8
	tst.b ($f767).w
	beq.s loc_201e10
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e10:
	tst.w ($ff190e).l
	bne.s loc_201e1e
	jsr (sub_20f9d8).l
loc_201e1e:
	jsr (sub_202352).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030c6
	jsr (sub_20292a).l
	bsr.w sub_202646
	jmp (loc_20ac44).l
	dc.b $4e,$75
	jsr (sub_202336).l
	bsr.w sub_2021d2
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
	bsr.w sub_205bb8
	tst.b ($f767).w
	beq.s loc_201f04
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f04:
	jsr (sub_202352).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030c6
	bra.w loc_20262a
	.incbin 7982, 16
	bsr.w sub_20202a
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f60
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f60:
	move.w ($f624).w,(a5)
	bra.w loc_20262a
	dc.b $4e,$b9,$00,$20,$23,$36,$61,$00
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
	jsr (sub_202352).l
	lea ($d000).w,a0
	bsr.w sub_205bb8
	tst.b ($f767).w
	beq.s loc_20201c
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_20201c:
	tst.w ($f614).w
	beq.w loc_202028
	subq.w #$1,($f614).w
loc_202028:
	rts

sub_20202a:
	jsr (sub_202336).l
	bsr.w sub_2021d2
	tst.b ($f64e).w
	bne.s loc_202060
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202084
loc_202060:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202084:
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
	jmp (sub_202352).l
	.incbin 8402, 146

sub_202164:
	tst.b ($d02a).w
	bne.s loc_202174
	tst.w ($f786).w
	beq.s loc_202174
	addq.w #$1,($f786).w
loc_202174:
	rts

sub_202176:
	tst.w ($f780).w
	beq.s loc_202180
	addq.w #$1,($f780).w
loc_202180:
	tst.w ($f782).w
	beq.s loc_20218a
	addq.w #$1,($f782).w
loc_20218a:
	rts
	.incbin 8588, 42

sub_2021b6:
	bsr.w sub_202336
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202352

sub_2021d2:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2021e0
	addq.w #$2,a1

sub_2021e0:
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

sub_20220e:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20228a).l,a2
	moveq #$12,d7
loc_202222:
	move.w (a2)+,(a0)
	dbf d7,loc_202222
	move.w (dat_20228c).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202248:
	move.w d0,(a1)
	dbf d7,loc_202248
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20227a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20227a
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20228a:
	dc.b $80,$04
dat_20228c:
	.incbin 8844, 36

sub_2022b0:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2022d2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022d2
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202300:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202300
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20231e:
	move.l d0,(a1)+
	dbf d1,loc_20231e
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20232e:
	move.l d0,(a1)+
	dbf d1,loc_20232e
	rts

sub_202336:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202346:
	btst.b #$0,($a11100).l
	bne.s loc_202346
	rts

sub_202352:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9056, 62

sub_20239e:
	tst.b ($f00a).w
	bne.s loc_2023aa
	move.b d0,($f00a).w
	rts
loc_2023aa:
	tst.b ($f00b).w
	bne.s loc_2023b6
	move.b d0,($f00b).w
	rts
loc_2023b6:
	tst.b ($f00c).w
	bne.s loc_2023c0
	move.b d0,($f00c).w
loc_2023c0:
	rts

sub_2023c2:
	jsr (sub_202336).l
	tst.b ($f00a).w
	beq.s loc_2023dc
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2023dc:
	tst.b ($f00b).w
	beq.s loc_2023f0
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2023f0:
	tst.b ($f00c).w
	beq.s loc_202404
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202404:
	bra.w sub_202352
	.incbin 9224, 32

sub_202428:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2024ea).l,a3
	lea ($c00000).l,a4
	bra.s loc_202444

sub_20243a:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202500).l,a3
loc_202444:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202452
	adda.w #$a,a3
loc_202452:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202516
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202472
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202472:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2024be
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20249a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20249a:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2024a8:
	lsr.w #$4,d0
loc_2024aa:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2024b8
	jmp (a3)

sub_2024b4:
	moveq #$0,d4
	moveq #$8,d3
loc_2024b8:
	dbf d0,loc_2024aa
	bra.s sub_202472
loc_2024be:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2024cc
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2024cc:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2024a8
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2024a8
loc_2024ea:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2024b4
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2024b4
	rts
dat_202500:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2024b4
	rts

sub_202516:
	move.b (a0)+,d0
loc_202518:
	cmpi.b #$ff,d0
	bne.s loc_202520
	rts
loc_202520:
	move.w d0,d7
loc_202522:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202518
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
	bne.s loc_202550
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202522
loc_202550:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20255c:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20255c
	bra.s loc_202522

sub_202568:
	movem.l a1-a2,-(a7)
	lea (dat_20f9ee).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202580:
	tst.l (a2)
	beq.s loc_202588
	addq.w #$6,a2
	bra.s loc_202580
loc_202588:
	move.w (a1)+,d0
	bmi.s loc_202594
loc_20258c:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20258c
loc_202594:
	movem.l (a7)+,a1-a2

sub_202598:
	rts
loc_20259a:
	movem.l a1-a2,-(a7)
	lea (dat_20f9ee).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_2025c6
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_2025c0
loc_2025b8:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2025b8
loc_2025c0:
	movem.l (a7)+,a1-a2
	rts

sub_2025c6:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2025cc:
	clr.l (a2)+
	dbf d0,loc_2025cc
	rts

sub_2025d4:
	tst.l ($f680).w
	beq.s loc_202628
	tst.w ($f6f8).w
	bne.s loc_202628
	movea.l ($f680).w,a0
	lea (loc_2024ea).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2025f6
	adda.w #$a,a3
loc_2025f6:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202516
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
loc_202628:
	rts
loc_20262a:
	tst.w ($f6f8).w
	beq.w loc_2026c8
loc_202632:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202664

sub_202646:
	tst.w ($f6f8).w
	beq.s loc_2026c8
	tst.b ($f744).w
	bne.s loc_202632
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202664:
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
loc_202698:
	movea.w #$8,a5
	bsr.w sub_2024b4
	subq.w #$1,($f6f8).w
	beq.s loc_2026ca
	subq.w #$1,($f6fa).w
	bne.s loc_202698
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2026c8:
	rts
loc_2026ca:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2026d0:
	move.l $6(a0),(a0)+
	dbf d0,loc_2026d0
	rts

sub_2026da:
	lea (dat_20f9ee).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2026ec:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202428
	dbf d1,loc_2026ec
	rts
	.incbin 9996, 542

sub_20292a:
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
loc_202946:
	move.w dat_2029aa(pc,d0.w),d1
	bmi.s loc_202958
	cmp.w $8(a6),d1
	bcc.s loc_202958
	addq.w #$2,d0
	addq.b #$1,d2
	bra.s loc_202946
loc_202958:
	cmp.b ($ff156c).l,d2
	bne.s loc_202964
loc_202960:
	movea.l (a7)+,a6
	rts
loc_202964:
	move.b d2,($ff156c).l
	clr.l ($f680).w
	clr.w ($f6f8).w
	moveq #$0,d1
	move.b dat_2029bc(pc,d2.w),d1
	moveq #$0,d0
	move.b d1,d0
	lsr.b #$2,d0
	move.w d0,d2
	addi.b #$e,d0
	bsr.w sub_202568
	move.w d2,d0
	addq.b #$4,d0
	move.w d0,d2
	jsr (sub_2004f4).l
	move.w d2,d0
	jsr (sub_2004d8).l
	lea ($a040).w,a3
	bsr.w sub_203652
	bsr.w sub_2034ea
	bra.s loc_202960
dat_2029aa:
	.incbin 10666, 18
dat_2029bc:
	.incbin 10684, 22

sub_2029d2:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202a2e).l,a0
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
	bra.w loc_202a5a
dat_202a2e:
	dc.b $00,$04,$00,$00,$2a,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202a3a:
	.incbin 10810, 32
loc_202a5a:
	tst.b ($ff1522).l
	beq.s loc_202a7a
	jsr (sub_206ac4).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a78
	moveq #$0,d0
loc_202a78:
	bra.s loc_202ab6
loc_202a7a:
	lea (dat_202af2).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202a9c
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202a3a).l,a1
	adda.w d0,a1
	bra.s loc_202aa6
loc_202a9c:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202aa6:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202ab6:
	subi.w #$a0,d1
	bcc.s loc_202abe
	moveq #$0,d1
loc_202abe:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202ac8
	move.w d2,d1
loc_202ac8:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202ad4
	moveq #$0,d0
loc_202ad4:
	cmp.w ($f72e).w,d0
	blt.s loc_202ade
	move.w ($f72e).w,d0
loc_202ade:
	move.w d0,($f704).w
	bsr.w sub_202afa
	lea (dat_202af6).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202af2:
	dc.b $00,$40,$02,$6c
dat_202af6:
	dc.b $7f,$7f,$18,$62

sub_202afa:
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

sub_202b2a:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202b36
	rts
loc_202b36:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202d3c
	bsr.w sub_202ddc
	bsr.w sub_203680
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_203066
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_203032
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$2,d6
	bsr.w sub_202ffe
	move.w ($f704).w,d0
	lsr.w #$3,d0
	move.w d0,d1
	lsr.w #$2,d1
	add.w d1,d0
	add.w d1,d1
	add.w d1,d0
	bsr.w sub_202fce
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
	beq.w loc_202bf4
	move.w ($f710).w,d0
	neg.w d0
	moveq #$a,d6
loc_202be6:
	move.w d0,(a1)+
	dbf d6,loc_202be6
	bsr.w sub_202cd6
	bra.w loc_202c14
loc_202bf4:
	bsr.w sub_202c92
	move.w ($f708).w,d0
	neg.w d0
	moveq #$b,d6
loc_202c00:
	move.w d0,(a1)+
	dbf d6,loc_202c00
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202c0e:
	move.w d0,(a1)+
	dbf d6,loc_202c0e
loc_202c14:
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
	bne.s loc_202c44
	sub.w d3,d1
	bcs.s loc_202c50
	cmpi.w #$1c,d1
	bcs.s loc_202c46
loc_202c44:
	moveq #$1c,d1
loc_202c46:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	bsr.w sub_202d18
loc_202c50:
	btst.b #$0,($ff156c).l
	bne.w loc_202c8c
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
loc_202c7c:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d1,loc_202c7c
loc_202c8c:
	rts
dat_202c8e:
	dc.b $05,$0b,$05,$00

sub_202c92:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$6,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$2,d6
	adda.w #$30,a1
loc_202cb6:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202c8e(pc,d6.w),d5
loc_202cc0:
	move.w d0,-(a1)
	dbf d5,loc_202cc0
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202cb6
	adda.w #$30,a1
	rts

sub_202cd6:
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
	moveq #$5,d6
loc_202cf6:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d12(pc,d6.w),d5
loc_202d00:
	move.w d0,(a1)+
	dbf d5,loc_202d00
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202cf6
	rts
dat_202d12:
	dc.b $0d,$07,$05,$03,$03,$00

sub_202d18:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202d26(pc,d2.w)
loc_202d24:
	move.w (a2)+,d0
loc_202d26:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202d24
	rts

sub_202d3c:
	move.w ($f700).w,d4
	bsr.s sub_202d70
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d6e
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d68
	bset.b #$2,($f754).w
	rts
loc_202d68:
	bset.b #$3,($f754).w
loc_202d6e:
	rts

sub_202d70:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d82
	bcs.s loc_202db2
	bra.s loc_202d88
loc_202d82:
	clr.w ($f73a).w
	rts
loc_202d88:
	cmpi.w #$10,d0
	blt.s loc_202d92
	move.w #$10,d0
loc_202d92:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202da0
	move.w ($f72a).w,d0
loc_202da0:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202db2:
	cmpi.w #$fff0,d0
	bge.s loc_202dbc
	move.w #$fff0,d0
loc_202dbc:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202da0
	move.w ($f728).w,d0
	bra.s loc_202da0
	.incbin 11724, 16

sub_202ddc:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202df0
	subq.w #$5,d0
loc_202df0:
	btst.b #$1,$22(a6)
	beq.s loc_202e10
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e5c
	subi.w #$40,d0
	bcc.s loc_202e5c
	tst.b ($f75c).w
	bne.s loc_202e6e
	bra.s loc_202e1c
loc_202e10:
	sub.w ($f73e).w,d0
	bne.s loc_202e22
	tst.b ($f75c).w
	bne.s loc_202e6e
loc_202e1c:
	clr.w ($f73c).w
	rts
loc_202e22:
	cmpi.w #$60,($f73e).w
	bne.s loc_202e4a
	move.w $14(a6),d1
	bpl.s loc_202e32
	neg.w d1
loc_202e32:
	cmpi.w #$800,d1
	bcc.s loc_202e5c
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202ebc
	cmpi.w #$fffa,d0
	blt.s loc_202e86
	bra.s loc_202e74
loc_202e4a:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202ebc
	cmpi.w #$fffe,d0
	blt.s loc_202e86
	bra.s loc_202e74
loc_202e5c:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202ebc
	cmpi.w #$fff0,d0
	blt.s loc_202e86
	bra.s loc_202e74
loc_202e6e:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e74:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ec6
	bra.w loc_202e92
loc_202e86:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e92:
	cmp.w ($f72c).w,d1
	bgt.s loc_202eea
	cmpi.w #$ff00,d1
	bgt.s loc_202eb6
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202eea
loc_202eb6:
	move.w ($f72c).w,d1
	bra.s loc_202eea
loc_202ebc:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ec6:
	cmp.w ($f72e).w,d1
	blt.s loc_202eea
	subi.w #$800,d1
	bcs.s loc_202ee6
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202eea
loc_202ee6:
	move.w ($f72e).w,d1
loc_202eea:
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
	bne.s loc_202f2c
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202f26
	bset.b #$0,($f754).w
	rts
loc_202f26:
	bset.b #$1,($f754).w
loc_202f2c:
	rts
	.incbin 12078, 68
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f96
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f90
	bset.b #$0,($f756).w
	rts
loc_202f90:
	bset.b #$1,($f756).w
loc_202f96:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fcc
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202fc6
	bset.b #$4,($f756).w
	rts
loc_202fc6:
	bset.b #$5,($f756).w
loc_202fcc:
	rts

sub_202fce:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202ffc
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202ff6
	bset.b #$0,($f756).w
	rts
loc_202ff6:
	bset.b #$1,($f756).w
loc_202ffc:
	rts

sub_202ffe:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_203030
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_20302a
	bset.b d6,($f756).w
	bra.s loc_203030
loc_20302a:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_203030:
	rts

sub_203032:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203064
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_20305e
	bset.b d6,($f758).w
	bra.s loc_203064
loc_20305e:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203064:
	rts

sub_203066:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203098
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203092
	bset.b d6,($f75a).w
	bra.s loc_203098
loc_203092:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203098:
	rts
	.incbin 12442, 44

sub_2030c6:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203184
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20326a
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20326c
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203182
	bclr.b #$0,(a2)
	beq.s loc_203138
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203498
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20326e
loc_203138:
	bclr.b #$1,(a2)
	beq.s loc_203152
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203498
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20326e
loc_203152:
	bclr.b #$2,(a2)
	beq.s loc_203168
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203498
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032c4
loc_203168:
	bclr.b #$3,(a2)
	beq.s loc_203182
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203498
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032c4
loc_203182:
	rts

sub_203184:
	lea (dat_20355c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_2031a0
	bclr.b #$1,(a2)
	beq.s loc_2031ea
	move.w #$e0,d4
loc_2031a0:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20321a(pc,d0.w),a3
	beq.s loc_2031d2
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203498
	movem.l (a7)+,d4-d5
	bsr.w sub_20326e
	movea.l (a7)+,a0
	bra.s loc_2031ea
loc_2031d2:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20349a
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20329a
	movea.l (a7)+,a0
loc_2031ea:
	tst.b (a2)
	bne.s loc_2031f0
	rts
loc_2031f0:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203204
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203204:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20322a
dat_20321a:
	.incbin 12826, 16
loc_20322a:
	moveq #$f,d6
	move.l #$800000,d7
loc_203232:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20325e
	btst.b d0,(a2)
	beq.s loc_20325e
	add.w d0,d0
	movea.l dat_20321a(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203370
	movem.l (a7)+,d4-d5
	bsr.w sub_203498
	bsr.w sub_2032f2
	movem.l (a7)+,d4-d5/a0
loc_20325e:
	addi.w #$10,d4
	dbf d6,loc_203232
	clr.b (a2)
	rts

sub_20326a:
	rts

sub_20326c:
	rts

sub_20326e:
	moveq #$15,d6

sub_203270:
	move.l #$800000,d7
	move.l d0,d1
loc_203278:
	movem.l d4-d5,-(a7)
	bsr.w sub_203370
	move.l d1,d0
	bsr.w sub_2032f2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203278
	rts

sub_20329a:
	move.l #$800000,d7
	move.l d0,d1
loc_2032a2:
	movem.l d4-d5,-(a7)
	bsr.w sub_203372
	move.l d1,d0
	bsr.w sub_2032f2
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2032a2
	rts

sub_2032c4:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2032ce:
	movem.l d4-d5,-(a7)
	bsr.w sub_203370
	move.l d1,d0
	bsr.w sub_2032f2
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2032ce
	rts

sub_2032f2:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20332e
	btst.b #$3,(a0)
	bne.s loc_20330e
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20330e:
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
loc_20332e:
	btst.b #$3,(a0)
	bne.s loc_203350
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
loc_203350:
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

sub_203370:
	add.w (a3),d5

sub_203372:
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
	beq.s loc_2033c0
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
loc_2033c0:
	rts
	.incbin 13250, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20349e
	bsr.w sub_2032f2
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 13396, 68

sub_203498:
	add.w (a3),d5

sub_20349a:
	add.w $4(a3),d4

sub_20349e:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13492, 28

sub_2034d0:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203506

sub_2034ea:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20352e

sub_203506:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20350a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203498
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203270
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20350a
	rts
loc_20352e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203532:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20355c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_2035ae
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203532
	rts
dat_20355c:
	.incbin 13660, 66
dat_20359e:
	.incbin 13726, 16

sub_2035ae:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20359e(pc,d0.w),a3
	beq.s loc_2035d0
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203498
	movem.l (a7)+,d4-d5
	bsr.w sub_20326e
	bra.s loc_2035e4
loc_2035d0:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20349a
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20329a
loc_2035e4:
	rts

sub_2035e6:
	moveq #$0,d0
	lea (dat_20f9de).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20243a
	movea.l (a2)+,a0
	bsr.w sub_203632
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004d8
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203630
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203630
	bsr.w sub_202568
loc_203630:
	rts

sub_203632:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20363c:
	move.l d0,(a3)+
	dbf d1,loc_20363c
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203652
	lea ($a040).w,a3
	moveq #$2,d1

sub_203652:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237954).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20366c:
	move.w d1,d0
	movea.l a3,a0
loc_203670:
	move.b (a1)+,(a0)+
	dbf d0,loc_203670
	lea $80(a3),a3
	dbf d2,loc_20366c
	rts

sub_203680:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036fa(pc,d0.w),d0
	jsr dat_2036fa(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2036a6
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2036a6:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036d4
	bcc.s loc_2036d6
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036ca
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036ca:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036d4:
	rts
loc_2036d6:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036ee
	btst.b #$1,($d022).w
	beq.s loc_2036ee
	add.w d1,d1
	add.w d1,d1
loc_2036ee:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036fa:
	.incbin 14074, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20384a(pc,d0.w),d0
	jmp dat_20384a(pc,d0.w)
dat_20384a:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$310,($f726).w
	rts
	.incbin 14424, 404

sub_2039ec:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039f4:
	move.b (a0),d0
	beq.s loc_203a0a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203e0e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203a0a:
	lea $40(a0),a0
	dbf d7,loc_2039f4
	rts

sub_203a14:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a52
	bpl.s loc_203a44
	btst.b #$1,$2c(a0)
	beq.s loc_203a44
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a52
loc_203a44:
	btst.b #$2,$2c(a0)
	bne.s loc_203a52
	addi.w #$38,$12(a0)
loc_203a52:
	tst.w $12(a0)
	bmi.s loc_203a66
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a66
	move.w #$1000,$12(a0)
loc_203a66:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a76:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203ab2
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203ab2
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203ab0
	neg.w d1
loc_203ab0:
	add.w d1,d0
loc_203ab2:
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

sub_203acc:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b3c
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b58
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b58
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203b16
	cmpi.w #$800,d3
	bcs.s loc_203b28
	subi.w #$800,d3
	bra.s loc_203b28
loc_203b16:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b28
	cmpi.w #$100,d3
	bcc.s loc_203b28
	addi.w #$800,d3
loc_203b28:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b58
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b58
loc_203b3c:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b58

sub_203b52:
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b58:
	rts
	.incbin 15194, 30

sub_203b78:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b7e:
	move.l d1,(a1)+
	dbf d0,loc_203b7e
	rts
dat_203b86:
	.incbin 15238, 16

sub_203b96:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203ba2:
	tst.w (a4)
	beq.w loc_203c62
	moveq #$2,d6
loc_203baa:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c5a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203c10
	movea.l dat_203b86(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bf4
	cmpi.w #$800,d2
	bcs.s loc_203c06
	subi.w #$800,d2
	bra.s loc_203c06
loc_203bf4:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203c06
	cmpi.w #$100,d2
	bcc.s loc_203c06
	addi.w #$800,d2
loc_203c06:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c32
loc_203c10:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c32
	.incbin 15386, 24
loc_203c32:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c50
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c54
loc_203c50:
	bsr.w sub_203c84
loc_203c54:
	bset.b #$7,$1(a0)
loc_203c5a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203baa
loc_203c62:
	lea $80(a4),a4
	dbf d7,loc_203ba2
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c7c
	move.l #$0,(a2)
	rts
loc_203c7c:
	move.b #$0,-$5(a2)
	rts

sub_203c84:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203cca
	btst.l #$1,d4
	bne.w loc_203d18
loc_203c96:
	cmpi.b #$50,d5
	beq.s loc_203cc8
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
	bne.s loc_203cc2
	addq.w #$1,d0
loc_203cc2:
	move.w d0,(a2)+
	dbf d1,loc_203c96
loc_203cc8:
	rts
loc_203cca:
	btst.l #$1,d4
	bne.w loc_203d5e
loc_203cd2:
	cmpi.b #$50,d5
	beq.s loc_203d16
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
	bne.s loc_203d10
	addq.w #$1,d0
loc_203d10:
	move.w d0,(a2)+
	dbf d1,loc_203cd2
loc_203d16:
	rts
loc_203d18:
	cmpi.b #$50,d5
	beq.s loc_203d5c
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
	bne.s loc_203d56
	addq.w #$1,d0
loc_203d56:
	move.w d0,(a2)+
	dbf d1,loc_203d18
loc_203d5c:
	rts
loc_203d5e:
	cmpi.b #$50,d5
	beq.s loc_203db0
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
	bne.s loc_203daa
	addq.w #$1,d0
loc_203daa:
	move.w d0,(a2)+
	dbf d1,loc_203d5e
loc_203db0:
	rts
	.incbin 15794, 92
dat_203e0e:
	.incbin 15886, 246

sub_203f04:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f16
	move.w #$0,(a1)
	rts
loc_203f16:
	tst.w (a1)
	bne.s loc_203f20
	move.b #$1,$1(a1)
loc_203f20:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f6a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f5c
	neg.w $10(a0)
loc_203f5c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205c96
loc_203f6a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203f88
	cmpa.w #$d040,a0
	beq.s loc_203f88
	tst.b ($ff1906).l
	beq.s loc_203f88
	jmp (loc_2073fa).l
loc_203f88:
	move.b $2a(a0),d0
	beq.s loc_203fb2
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fa4
	cmpi.b #$2d,d0
	bcs.s loc_203fae
	move.b #$2d,d0
	bra.s loc_203fae
loc_203fa4:
	cmpi.b #$1e,d0
	bcs.s loc_203fae
	move.b #$1e,d0
loc_203fae:
	move.b d0,$2a(a0)
loc_203fb2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203fc0(pc,d0.w),d1
	jmp dat_203fc0(pc,d1.w)
dat_203fc0:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203fca:
	tst.b ($d300).w
	bne.s loc_204008
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204008:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204030
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204030:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204064:
	tst.b ($ff1506).l
	bne.s loc_2040ca
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040ca
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2040ce
	cmpi.b #$2f,d1
	bne.s loc_2040cc
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040ca
	tst.b $2c(a0)
	beq.s loc_2040ca
	jsr (sub_207be6).l
	bne.s loc_2040ca
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040c2
	moveq #$0,d0
loc_2040c2:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040ca:
	rts
loc_2040cc:
	rts

sub_2040ce:
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

sub_2040f4:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204100
	neg.w d0
loc_204100:
	btst.b #$1,$2c(a0)
	beq.s loc_204110
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204138
loc_204110:
	cmpi.w #$600,d0
	bcs.s loc_204138
	tst.w $14(a0)
	bpl.s loc_20412a
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204146
	move.w #$e0,d1
	bra.s loc_204146
loc_20412a:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204146
	move.w #$60,d1
	bra.s loc_204146
loc_204138:
	cmpi.w #$a0,d1
	beq.s loc_204146
	bcc.s loc_204144
	addq.w #$2,d1
	bra.s loc_204146
loc_204144:
	subq.w #$2,d1
loc_204146:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_2040f4
	bsr.w sub_204064
	tst.w ($ff1588).l
	beq.s loc_20416c
	btst.b #$4,($f605).w
	beq.s loc_20416c
	move.b #$1,($ff1906).l
	rts
loc_20416c:
	tst.b ($f7cc).w
	bne.s loc_204178
	move.w ($f604).w,($f602).w
loc_204178:
	btst.b #$0,$2c(a0)
	beq.s loc_20419c
	cmpi.b #$6,($ff1506).l
	bne.s loc_204196
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041b4
loc_204196:
	bsr.w sub_20447e
	bra.s loc_2041b4
loc_20419c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2041fa(pc,d0.w),d1
	jsr dat_2041fa(pc,d1.w)
	jsr (sub_20674e).l
loc_2041b4:
	bsr.s sub_204208
	bsr.w sub_2042c8
	bsr.w sub_2042e2
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2041dc
	tst.b $1c(a0)
	bne.s loc_2041dc
	move.b $1d(a0),$1c(a0)
loc_2041dc:
	bsr.w sub_205686
	tst.b $2c(a0)
	bmi.s loc_2041f4
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2041f4
	jsr (sub_206f94).l
loc_2041f4:
	bsr.w sub_20553c
	rts
dat_2041fa:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204208:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20422c
	move.w $30(a0),d0
	beq.s loc_20421e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20422c
loc_20421e:
	btst.b #$6,$2c(a0)
	bne.s loc_20422c
	jsr (sub_203acc).l
loc_20422c:
	tst.b ($ff151f).l
	beq.s loc_204270
	tst.w $32(a0)
	beq.s loc_204270
	subq.w #$1,$32(a0)
	bne.s loc_204270
	tst.b ($ff1520).l
	bne.s loc_204268
	tst.b ($ff1958).l
	bne.s loc_204268
	tst.b ($ff152e).l
	bne.s loc_204262
	move.w #$e,d0
	jsr (sub_205c96).l
loc_204262:
	jsr (sub_201abc).l
loc_204268:
	move.b #$0,($ff151f).l
loc_204270:
	tst.b ($ff1520).l
	beq.s loc_2042c6
	tst.w $34(a0)
	beq.s loc_2042c6
	subq.w #$1,$34(a0)
	bne.s loc_2042c6
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042be
	tst.b ($ff1958).l
	bne.s loc_2042be
	tst.b ($ff152e).l
	bne.s loc_2042b8
	move.w #$e,d0
	jsr (sub_205c96).l
loc_2042b8:
	jsr (sub_201abc).l
loc_2042be:
	move.b #$0,($ff1520).l
loc_2042c6:
	rts

sub_2042c8:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2042e2:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2042ee
loc_2042ec:
	rts
loc_2042ee:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204300
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2042ec
loc_204300:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204344
	bset.b #$6,$22(a0)
	bne.s loc_2042ec
	bsr.w sub_205f9a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2042ec
	bra.s loc_20437c
loc_204344:
	tst.w $12(a0)
	beq.s loc_20434c
	bpl.s loc_2042ec
loc_20434c:
	bclr.b #$6,$22(a0)
	beq.s loc_2042ec
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2042ec
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20437c
	move.w #$f000,$12(a0)
loc_20437c:
	jsr (sub_207be6).l
	bne.s loc_204390
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204390:
	rts

sub_204392:
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
	bcs.s loc_20446c
	move.l #$50000,d0
loc_20446c:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20447e:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044a4
	tst.b ($ff152e).l
	beq.s loc_20449a
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044a4
loc_20449a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204554
loc_2044a4:
	tst.b $2a(a0)
	bne.w loc_204562
	tst.b ($f784).w
	beq.w loc_204562
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044c2
	neg.w d0
loc_2044c2:
	tst.w ($f786).w
	bne.s loc_2044ce
	move.w #$1,($f786).w
loc_2044ce:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2044e4
	move.b #$1,($ff1502).l
	bra.w loc_205c92
loc_2044e4:
	cmpi.w #$d2,d1
	bcs.s loc_204538
	cmpi.b #$2,($ff1522).l
	beq.s loc_204536
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20450e
	move.w #$82,d0
	jsr (sub_205c96).l
	moveq #$0,d0
loc_20450e:
	add.b ($f784).w,d0
	bpl.s loc_204518
	moveq #$0,d0
	bra.s loc_204520
loc_204518:
	cmpi.b #$3,d0
	bcs.s loc_204520
	moveq #$2,d0
loc_204520:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204392
	move.b #$2,($ff1522).l
loc_204536:
	rts
loc_204538:
	cmpi.w #$5a,d1
	bcc.s loc_204550
	cmp.w d2,d0
	bcc.w loc_203fca
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204550:
	cmp.w d2,d0
	bcc.s loc_204562
loc_204554:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204562:
	rts
	bsr.w sub_203f04
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204594
	tst.b ($ff195b).l
	beq.s loc_204582
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045be
	bra.s loc_20458a
loc_204582:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045be
loc_20458a:
	bsr.w sub_204e26
	jmp (sub_203a14).l
loc_204594:
	bsr.w sub_20466c
	bsr.w sub_20447e
	bsr.w sub_204f10
	bsr.w sub_20503c
	bsr.w sub_2046e0
	bsr.w sub_204e92
	bsr.w sub_204e26
	jsr (sub_203a76).l
	bsr.w sub_200bc2
	bsr.w sub_2050ba
loc_2045be:
	rts
	tst.b ($f7c7).w
	bne.s loc_2045da
	cmpi.b #$15,$1c(a0)
	beq.s loc_2045da
	tst.w $12(a0)
	bmi.s loc_2045da
	move.b #$0,$1c(a0)
loc_2045da:
	bsr.w sub_20466c
	bsr.w sub_20447e
	bsr.w sub_204ffa
	bsr.w sub_204d46
	bsr.w sub_204e26
	jsr (sub_203a14).l
	btst.b #$6,$22(a0)
	beq.s loc_204602
	subi.w #$28,$12(a0)
loc_204602:
	bsr.w sub_205104
	bsr.w sub_205128
	rts
	bsr.w sub_20466c
	bsr.w sub_20447e
	bsr.w sub_204f10
	bsr.w sub_205078
	bsr.w sub_204b80
	bsr.w sub_204e26
	tst.b $2a(a0)
	bne.s loc_204630
	jsr (sub_203a76).l
loc_204630:
	bsr.w sub_200bc2
	bsr.w sub_2050ba
	rts
	bsr.w sub_20466c
	bsr.w sub_20447e
	bsr.w sub_204ffa
	bsr.w sub_204d46
	bsr.w sub_204e26
	jsr (sub_203a14).l
	btst.b #$6,$22(a0)
	beq.s loc_204662
	subi.w #$28,$12(a0)
loc_204662:
	bsr.w sub_205104
	bsr.w sub_205128
	rts

sub_20466c:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2046d8
	tst.w ($ff1506).l
	bne.s loc_2046d8
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2046da).l,a2
loc_2046a0:
	move.b (a2)+,d0
	bmi.s loc_2046b0
	cmp.b d0,d1
	bne.s loc_2046a0
	bset.b #$1,$2c(a0)
	rts
loc_2046b0:
	bclr.b #$1,$2c(a0)
	beq.s loc_2046d8
	tst.w $12(a0)
	bpl.s loc_2046d8
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2046d8
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046d8
	neg.w $10(a0)
loc_2046d8:
	rts
dat_2046da:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2046e0:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a0a
	tst.w $3e(a0)
	bne.w loc_2049ba
	btst.b #$2,($f602).w
	beq.s loc_204708
	bsr.w sub_204a9a
loc_204708:
	btst.b #$3,($f602).w
	beq.s loc_204714
	bsr.w sub_204b10
loc_204714:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049ba
	tst.w $14(a0)
	beq.s loc_204734
	tst.b $2a(a0)
	beq.w loc_2049ba
	bra.s loc_204740
loc_204734:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204740:
	btst.b #$3,$22(a0)
	beq.s loc_204792
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2047ea
	cmpi.b #$1e,$0(a1)
	bne.s loc_204772
	move.b #$0,$1c(a0)
	bra.w loc_2049ba
loc_204772:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2047ce
	cmp.w d2,d1
	bge.s loc_2047bc
	bra.s loc_2047ea
loc_204792:
	jsr (sub_206cf8).l
	cmpi.w #$c,d1
	blt.s loc_2047ea
	move.w #$ab,d0
	jsr (sub_20239e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047c6
loc_2047bc:
	btst.b #$0,$22(a0)
	bne.s loc_2047d6
	bra.s loc_2047e0
loc_2047c6:
	cmpi.b #$3,$37(a0)
	bne.s loc_2047ea
loc_2047ce:
	btst.b #$0,$22(a0)
	bne.s loc_2047e0
loc_2047d6:
	move.b #$32,$1c(a0)
	bra.w loc_2049ba
loc_2047e0:
	move.b #$6,$1c(a0)
	bra.w loc_2049ba
loc_2047ea:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2047fe
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2047fe:
	btst.b #$7,($f788).w
	bne.w loc_204902
	btst.b #$6,($f788).w
	bne.w loc_204922
	btst.b #$1,($f602).w
	bne.w loc_204922
	andi.b #$f,($f788).w
	beq.s loc_204836
	btst.b #$0,($f603).w
	beq.s loc_20484a
	bset.b #$7,($f788).w
	bra.w loc_2049de
loc_204836:
	btst.b #$0,($f603).w
	beq.w loc_20484a
	move.b #$1,($f788).w
	bra.w loc_2049de
loc_20484a:
	btst.b #$0,($f602).w
	beq.s loc_2048c6
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048a8
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20487a
	asr.w #$1,d2
	sub.w d2,d1
loc_20487a:
	btst.b #$0,$22(a0)
	beq.s loc_204886
	neg.w d0
	neg.w d1
loc_204886:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20489c
	cmp.w d0,d1
	ble.s loc_2048a2
	bra.s loc_2048a0
loc_20489c:
	cmp.w d1,d0
	ble.s loc_2048a2
loc_2048a0:
	move.w d1,d0
loc_2048a2:
	move.w d0,$14(a0)
	rts
loc_2048a8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048c2
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20239e).l
loc_2048c2:
	bra.w loc_2049de
loc_2048c6:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2048e6
	move.w #$ab,d0
	jsr (sub_20239e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204922
loc_2048e6:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20239e).l
	bra.w loc_2049ba
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204902:
	btst.b #$0,($f602).w
	beq.s loc_204922
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2049de
	addq.w #$2,($f73e).w
	bra.w loc_2049de
loc_204922:
	btst.b #$6,($f788).w
	bne.w loc_20499e
	andi.b #$f,($f788).w
	beq.s loc_204946
	btst.b #$1,($f603).w
	beq.s loc_204958
	bset.b #$6,($f788).w
	bra.w loc_2049de
loc_204946:
	btst.b #$1,($f603).w
	beq.s loc_204958
	move.b #$1,($f788).w
	bra.w loc_2049de
loc_204958:
	btst.b #$1,($f602).w
	beq.s loc_2049ba
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20499c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20499c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20498e
	neg.w $14(a0)
loc_20498e:
	move.w #$9c,d0
	jsr (sub_20239e).l
	bsr.w sub_204eba
loc_20499c:
	bra.s loc_2049de
loc_20499e:
	btst.b #$1,($f602).w
	beq.s loc_2049ba
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2049de
	subq.w #$2,($f73e).w
	bra.s loc_2049de
loc_2049ba:
	cmpi.w #$60,($f73e).w
	bne.s loc_2049d4
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2049de
	move.b #$0,($f788).w
	bra.s loc_2049de
loc_2049d4:
	bcc.s loc_2049da
	addq.w #$4,($f73e).w
loc_2049da:
	subq.w #$2,($f73e).w
loc_2049de:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a0a
	move.w $14(a0),d0
	beq.s loc_204a0a
	bmi.s loc_2049fe
	sub.w d5,d0
	bcc.s loc_2049f8
	move.w #$0,d0
loc_2049f8:
	move.w d0,$14(a0)
	bra.s loc_204a0a
loc_2049fe:
	add.w d5,d0
	bcc.s loc_204a06
	move.w #$0,d0
loc_204a06:
	move.w d0,$14(a0)
loc_204a0a:
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a28:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204a98
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204a98
	bmi.s loc_204a40
	neg.w d1
loc_204a40:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206bb8
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204a98
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204a94
	cmpi.b #$40,d0
	beq.s loc_204a82
	cmpi.b #$80,d0
	beq.s loc_204a7c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a7c:
	sub.w d1,$12(a0)
	rts
loc_204a82:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a94:
	add.w d1,$12(a0)
loc_204a98:
	rts

sub_204a9a:
	tst.b $2a(a0)
	bne.s loc_204b0e
	move.w $14(a0),d0
	beq.s loc_204aa8
	bpl.s loc_204ad8
loc_204aa8:
	bset.b #$0,$22(a0)
	bne.s loc_204abc
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204abc:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204acc
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204acc
	move.w d1,d0
loc_204acc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ad8:
	sub.w d4,d0
	bcc.s loc_204ae0
	move.w #$ff80,d0
loc_204ae0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b0e
	cmpi.w #$400,d0
	blt.s loc_204b0e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20239e).l
loc_204b0e:
	rts

sub_204b10:
	tst.b $2a(a0)
	bne.s loc_204b7e
	move.w $14(a0),d0
	bmi.s loc_204b48
	bclr.b #$0,$22(a0)
	beq.s loc_204b30
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b30:
	cmp.w d6,d0
	bge.s loc_204b3c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b3c
	move.w d6,d0
loc_204b3c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b48:
	add.w d4,d0
	bcc.s loc_204b50
	move.w #$80,d0
loc_204b50:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b7e
	cmpi.w #$fc00,d0
	bgt.s loc_204b7e
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20239e).l
loc_204b7e:
	rts

sub_204b80:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204cca
	tst.w $3e(a0)
	bne.s loc_204bb8
	btst.b #$2,($f602).w
	beq.s loc_204bac
	bsr.w sub_204d00
loc_204bac:
	btst.b #$3,($f602).w
	beq.s loc_204bb8
	bsr.w sub_204d24
loc_204bb8:
	tst.b $2a(a0)
	beq.w loc_204c62
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204bd8
	asr.w #$1,d2
	sub.w d2,d1
loc_204bd8:
	btst.b #$0,$22(a0)
	beq.s loc_204be4
	neg.w d0
	neg.w d1
loc_204be4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204bfa
	cmp.w d0,d1
	ble.s loc_204c00
	bra.s loc_204bfe
loc_204bfa:
	cmp.w d1,d0
	ble.s loc_204c00
loc_204bfe:
	move.w d1,d0
loc_204c00:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c34
	rts
loc_204c0e:
	move.w #$ab,d0
	jsr (sub_20239e).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204c94
loc_204c34:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c0e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20239e).l
	btst.b #$0,$22(a0)
	bne.s loc_204c5a
	bsr.w sub_204d24
	bra.s loc_204c62
loc_204c5a:
	bsr.w sub_204d00
	bra.s loc_204c62
	dc.b $4e,$75
loc_204c62:
	move.w $14(a0),d0
	beq.s loc_204c84
	bmi.s loc_204c78
	sub.w d5,d0
	bcc.s loc_204c72
	move.w #$0,d0
loc_204c72:
	move.w d0,$14(a0)
	bra.s loc_204c84
loc_204c78:
	add.w d5,d0
	bcc.s loc_204c80
	move.w #$0,d0
loc_204c80:
	move.w d0,$14(a0)
loc_204c84:
	tst.w $14(a0)
	bne.s loc_204cca
	move.w #$ab,d0
	jsr (sub_20239e).l
loc_204c94:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cb4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204cc4
loc_204cb4:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204cc4:
	move.b #$5,$1c(a0)
loc_204cca:
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204cee
	move.w #$1000,d1
loc_204cee:
	cmpi.w #$f000,d1
	bge.s loc_204cf8
	move.w #$f000,d1
loc_204cf8:
	move.w d1,$10(a0)
	bra.w loc_204a28

sub_204d00:
	move.w $14(a0),d0
	beq.s loc_204d08
	bpl.s loc_204d16
loc_204d08:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d16:
	sub.w d4,d0
	bcc.s loc_204d1e
	move.w #$ff80,d0
loc_204d1e:
	move.w d0,$14(a0)
	rts

sub_204d24:
	move.w $14(a0),d0
	bmi.s loc_204d38
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d38:
	add.w d4,d0
	bcc.s loc_204d40
	move.w #$80,d0
loc_204d40:
	move.w d0,$14(a0)
	rts

sub_204d46:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d80
	tst.w ($ff1506).l
	bne.s loc_204d80
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d78
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d78
	rts
loc_204d78:
	btst.b #$1,$2c(a0)
	bne.s loc_204db0
loc_204d80:
	btst.b #$2,($f602).w
	beq.s loc_204d9a
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204d9a
	move.w d1,d0
loc_204d9a:
	btst.b #$3,($f602).w
	beq.s loc_204db0
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204db0
	move.w d6,d0
loc_204db0:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204dc6
	bcc.s loc_204dc2
	addq.w #$4,($f73e).w
loc_204dc2:
	subq.w #$2,($f73e).w
loc_204dc6:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204df4
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204df4
	bmi.s loc_204de8
	sub.w d1,d0
	bcc.s loc_204de2
	move.w #$0,d0
loc_204de2:
	move.w d0,$10(a0)
	rts
loc_204de8:
	sub.w d1,d0
	bcs.s loc_204df0
	move.w #$0,d0
loc_204df0:
	move.w d0,$10(a0)
loc_204df4:
	rts
	.incbin 19958, 48

sub_204e26:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e7a
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e54
	addi.w #$38,d0
loc_204e54:
	cmp.w d1,d0
	bls.s loc_204e7a
loc_204e58:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e68
	rts
loc_204e68:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207226
	move.b #$6,$24(a0)
	rts
loc_204e7a:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e58

sub_204e92:
	tst.b ($f7ca).w
	bne.s loc_204eb8
	move.w $14(a0),d0
	bpl.s loc_204ea0
	neg.w d0
loc_204ea0:
	cmpi.w #$80,d0
	bcs.s loc_204eb8
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204eb8
	btst.b #$1,($f602).w
	bne.s sub_204eba
loc_204eb8:
	rts

sub_204eba:
	btst.b #$2,$22(a0)
	beq.s loc_204ec4
	bra.s loc_204ef4
loc_204ec4:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ee4
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ef4
loc_204ee4:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ef4:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f0e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f0e
	move.w #$200,$14(a0)
loc_204f0e:
	rts

sub_204f10:
	tst.b $2a(a0)
	beq.s loc_204f18
	rts
loc_204f18:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f2a
	tst.w $14(a0)
	beq.w loc_204ff0
loc_204f2a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204ff0
	btst.b #$3,$22(a0)
	beq.s loc_204f46
	jsr (sub_205c1c).l
	beq.s loc_204f76
loc_204f46:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206c22
	cmpi.w #$6,d1
	blt.w loc_204ff0
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f6c
	move.w #$380,d2
loc_204f6c:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f76:
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
	jsr (sub_20239e).l
	btst.b #$2,$22(a0)
	bne.s loc_204ff2
	tst.b ($ff195b).l
	beq.s loc_204fd4
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204fe4
loc_204fd4:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204fe4:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204ff0:
	rts
loc_204ff2:
	bset.b #$4,$22(a0)
	rts

sub_204ffa:
	tst.b $3c(a0)
	beq.s loc_20502c
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205010
	move.w #$fe00,d1
loc_205010:
	cmp.w $12(a0),d1
	ble.s loc_20502a
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20502a
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20502a:
	rts
loc_20502c:
	cmpi.w #$f040,$12(a0)
	bge.s loc_20503a
	move.w #$f040,$12(a0)
loc_20503a:
	rts

sub_20503c:
	tst.b $2a(a0)
	bne.s loc_205076
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205076
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205076
	bmi.s loc_205072
	tst.w d0
	beq.s loc_205070
	add.w d0,$14(a0)
loc_205070:
	rts
loc_205072:
	add.w d0,$14(a0)
loc_205076:
	rts

sub_205078:
	tst.b $2a(a0)
	bne.s loc_2050b8
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050b8
	move.b $26(a0),d0
	jsr (sub_2007c2).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050ae
	tst.w d0
	bpl.s loc_2050a8
	asr.l #$2,d0
loc_2050a8:
	add.w d0,$14(a0)
	rts
loc_2050ae:
	tst.w d0
	bmi.s loc_2050b4
	asr.l #$2,d0
loc_2050b4:
	add.w d0,$14(a0)
loc_2050b8:
	rts

sub_2050ba:
	nop
	tst.b $38(a0)
	bne.s loc_2050fc
	tst.w $3e(a0)
	bne.s loc_2050fe
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2050fc
	move.w $14(a0),d0
	bpl.s loc_2050de
	neg.w d0
loc_2050de:
	cmpi.w #$280,d0
	bcc.s loc_2050fc
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2050fc:
	rts
loc_2050fe:
	subq.w #$1,$3e(a0)
	rts

sub_205104:
	btst.b #$1,$2c(a0)
	bne.s loc_205126
	move.b $26(a0),d0
	beq.s loc_205126
	bpl.s loc_20511c
	addq.b #$2,d0
	bcc.s loc_20511a
	moveq #$0,d0
loc_20511a:
	bra.s loc_205122
loc_20511c:
	subq.b #$2,d0
	bcc.s loc_205122
	moveq #$0,d0
loc_205122:
	move.b d0,$26(a0)
loc_205126:
	rts

sub_205128:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a5a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20520c
	cmpi.b #$80,d0
	beq.w loc_20526e
	cmpi.b #$c0,d0
	beq.w loc_2052ca
	bsr.w sub_206f38
	tst.w d1
	bpl.s loc_20517a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20517a:
	bsr.w sub_206d9a
	tst.w d1
	bpl.s loc_20518c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20518c:
	bsr.w sub_206c4a
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20520a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051aa
	cmp.b d2,d0
	blt.s loc_20520a
loc_2051aa:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20532c
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2051e8
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2051da
	asr.w $12(a0)
	bra.s loc_2051fc
loc_2051da:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2051e8:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2051fc
	move.w #$fc0,$12(a0)
loc_2051fc:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20520a
	neg.w $14(a0)
loc_20520a:
	rts
loc_20520c:
	bsr.w sub_206f38
	tst.w d1
	bpl.s loc_205226
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205226:
	bsr.w sub_206df2
	tst.w d1
	bpl.s loc_205240
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20523e
	move.w #$0,$12(a0)
loc_20523e:
	rts
loc_205240:
	tst.w $12(a0)
	bmi.s loc_20526c
	bsr.w sub_206c4a
	tst.w d1
	bpl.s loc_20526c
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20532c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20526c:
	rts
loc_20526e:
	bsr.w sub_206f38
	tst.w d1
	bpl.s loc_205280
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205280:
	bsr.w sub_206d9a
	tst.w d1
	bpl.s loc_205292
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205292:
	bsr.w sub_206df2
	tst.w d1
	bpl.s loc_2052c8
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052b2
	move.w #$0,$12(a0)
	rts
loc_2052b2:
	move.b d3,$26(a0)
	bsr.w sub_20539e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052c8
	neg.w $14(a0)
loc_2052c8:
	rts
loc_2052ca:
	bsr.w sub_206d9a
	tst.w d1
	bpl.s loc_2052e4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2052e4:
	bsr.w sub_206df2
	tst.w d1
	bpl.s loc_2052fe
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2052fc
	move.w #$0,$12(a0)
loc_2052fc:
	rts
loc_2052fe:
	tst.w $12(a0)
	bmi.s loc_20532a
	bsr.w sub_206c4a
	tst.w d1
	bpl.s loc_20532a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20532c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20532a:
	rts

sub_20532c:
	btst.b #$4,$22(a0)
	beq.s loc_205336
	nop
loc_205336:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205390
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205370
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205380
loc_205370:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205380:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20239e).l
loc_205390:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20539e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21438, 382

sub_20553c:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205564
	cmpi.b #$5,($ff1506).l
	beq.s loc_205564
	cmpi.b #$2,($ff1506).l
	beq.s loc_205564
	tst.b ($ff1506).l
	bne.w loc_205626
loc_205564:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055a2
	tst.b ($ff1506).l
	bne.w loc_205628
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205628
	bra.s loc_2055aa
loc_2055a2:
	cmp.b ($f7af).w,d1
	beq.w loc_205628
loc_2055aa:
	cmp.b ($f7ac).w,d1
	beq.s loc_2055da
	cmp.b ($f7ad).w,d1
	beq.s loc_2055be
	bclr.b #$6,$1(a0)
	rts
loc_2055be:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205640
	btst.b #$1,$22(a0)
	beq.s loc_2055da
	bclr.b #$6,$1(a0)
	rts
loc_2055da:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2055ec
	bclr.b #$6,$1(a0)
	rts
loc_2055ec:
	cmpi.b #$e0,d2
	bcs.s loc_2055fa
	bset.b #$6,$1(a0)
	rts
loc_2055fa:
	btst.b #$6,$1(a0)
	bne.s loc_205616
	move.b $26(a0),d1
	beq.s loc_205626
	cmpi.b #$80,d1
	bhi.s loc_205626
	bset.b #$6,$1(a0)
	rts
loc_205616:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205626
	bclr.b #$6,$1(a0)
loc_205626:
	rts
loc_205628:
	btst.b #$2,$22(a0)
	bne.s loc_20563a
	move.w #$9c,d0
	jsr (sub_20239e).l
loc_20563a:
	jmp (sub_204eba).l
loc_205640:
	tst.w $12(a0)
	bmi.s loc_205684
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205678
	cmpi.w #$38,d1
	bcs.s loc_205670
	cmpi.w #$80,d1
	bcs.s loc_205684
loc_205668:
	bclr.b #$6,$1(a0)
	rts
loc_205670:
	bset.b #$6,$1(a0)
	rts
loc_205678:
	cmpi.w #$38,d1
	bcs.s loc_205668
	cmpi.w #$80,d1
	bcc.s loc_205670
loc_205684:
	rts

sub_205686:
	lea (dat_205976).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056a8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056a8:
	bsr.w sub_205918
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205720
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2056ee
	move.b d0,$1e(a0)

sub_2056d2:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2056e6
	bpl.s loc_2056e6
	cmpi.b #$fd,d0
	bge.s loc_2056f0
loc_2056e6:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2056ee:
	rts
loc_2056f0:
	addq.b #$1,d0
	bne.s loc_205700
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2056e6
loc_205700:
	addq.b #$1,d0
	bne.s loc_205714
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2056e6
loc_205714:
	addq.b #$1,d0
	bne.s loc_20571e
	move.b $2(a1,d1.w),$1c(a0)
loc_20571e:
	rts
loc_205720:
	subq.b #$1,$1e(a0)
	bpl.s loc_2056ee
	addq.b #$1,d0
	bne.w loc_2057da
	tst.b ($ff195b).l
	bne.w loc_2058a2
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205748
	not.b d0
loc_205748:
	btst.b #$1,$2c(a0)
	bne.s loc_205756
	addi.b #$10,d0
	bra.s loc_205758
loc_205756:
	addq.b #$8,d0
loc_205758:
	bpl.s loc_20575c
	moveq #$3,d1
loc_20575c:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20584e
	move.w $14(a0),d2
	bpl.s loc_20577a
	neg.w d2
loc_20577a:
	btst.b #$1,$2c(a0)
	beq.s loc_205792
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b78).l,a1
	bra.s loc_2057bc
loc_205792:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b52).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057bc
	lea (dat_2059f6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057bc
	lea (dat_2059ee).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057bc:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057ca
	moveq #$0,d2
loc_2057ca:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2056d2
	add.b d3,$1a(a0)
	rts
loc_2057da:
	addq.b #$1,d0
	bne.s loc_20584a
	move.w $14(a0),d2
	bpl.s loc_2057e6
	neg.w d2
loc_2057e6:
	lea (dat_205ad4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205824
	lea (dat_205a06).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205818
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205824
	lea (dat_205b80).l,a1
	bra.s loc_205824
loc_205818:
	cmpi.w #$600,d2
	bcc.s loc_205824
	lea (dat_2059fe).l,a1
loc_205824:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20582e
	moveq #$0,d2
loc_20582e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056d2
loc_20584a:
	addq.b #$1,d0
	bne.s loc_20588e
loc_20584e:
	move.w $14(a0),d2
	bmi.s loc_205856
	neg.w d2
loc_205856:
	addi.w #$800,d2
	bpl.s loc_20585e
	moveq #$0,d2
loc_20585e:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205ae6).l,a1
	tst.b ($ff195b).l
	bne.s loc_205878
	lea (dat_205a0e).l,a1
loc_205878:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056d2
loc_20588e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058a2:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058b4
	not.b d0
loc_2058b4:
	addi.b #$10,d0
	bpl.s loc_2058bc
	moveq #$0,d1
loc_2058bc:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2058ea
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2057da
loc_2058ea:
	move.w $14(a0),d2
	bpl.s loc_2058f2
	neg.w d2
loc_2058f2:
	lea (dat_205ace).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205904
	lea (dat_205ac8).l,a1
loc_205904:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20590e
	moveq #$0,d2
loc_20590e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2056d2

sub_205918:
	tst.b ($ff195b).l
	beq.s loc_205924
	move.b dat_205926(pc,d0.w),d0
loc_205924:
	rts
dat_205926:
	.incbin 22822, 80
dat_205976:
	.incbin 22902, 120
dat_2059ee:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2059f6:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2059fe:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a06:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a0e:
	.incbin 23054, 186
dat_205ac8:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205ace:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205ad4:
	.incbin 23252, 18
dat_205ae6:
	.incbin 23270, 108
dat_205b52:
	.incbin 23378, 38
dat_205b78:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b80:
	.incbin 23424, 56

sub_205bb8:
	tst.b (a0)
	beq.w loc_205c1a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c1a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c1a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205bec:
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
loc_205c06:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c06
	dbf d1,loc_205bec
loc_205c1a:
	rts

sub_205c1c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205c90
	move.w #$98,d0
	jsr (sub_20239e).l
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
	bne.s loc_205c7e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c7e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205c90:
	rts
loc_205c92:
	move.w #$e,d0

sub_205c96:
	cmpi.w #$67,d0
	bne.s loc_205ca4
	move.b #$1,($ff1958).l
loc_205ca4:
	move.w d0,($a12010).l
loc_205caa:
	move.w ($a12020).l,d0
	beq.s loc_205caa
	cmp.w ($a12020).l,d0
	bne.s loc_205caa
	move.w #$0,($a12010).l
loc_205cc2:
	move.w ($a12020).l,d0
	bne.s loc_205cc2
	move.w ($a12020).l,d0
	bne.s loc_205cc2
	rts
	dc.b $00,$00

sub_205cd6:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205cf2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205cf2:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d32
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d34
loc_205d0e:
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
loc_205d32:
	rts
loc_205d34:
	addq.b #$1,d0
	bne.s loc_205d44
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d0e
loc_205d44:
	addq.b #$1,d0
	bne.s loc_205d58
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d0e
loc_205d58:
	addq.b #$1,d0
	bne.s loc_205d62
	move.b $2(a1,d1.w),$1c(a0)
loc_205d62:
	addq.b #$1,d0
	bne.s loc_205d6a
	addq.b #$2,$24(a0)
loc_205d6a:
	addq.b #$1,d0
	bne.s loc_205d78
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d78:
	addq.b #$1,d0
	bne.s loc_205d80
	addq.b #$2,$25(a0)
loc_205d80:
	rts
	.incbin 23938, 536

sub_205f9a:
	rts
	.incbin 24476, 1078
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2063e0(pc,d0.w),d1
	jmp dat_2063e0(pc,d1.w)
dat_2063e0:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23be48,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_206422
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_206422
	addq.b #$2,$24(a0)
loc_206422:
	rts
	.incbin 25636, 120
	tst.b ($ff1521).l
	bne.s loc_2064aa
	jmp (sub_203b78).l
loc_2064aa:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2064c8
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2064c8
	andi.b #$7f,$2(a0)
loc_2064c8:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_2064da
	subq.b #$4,d1
loc_2064da:
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
	bcs.s loc_2064f6
	moveq #$0,d1
loc_2064f6:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23bd20).l,a1
	jsr (sub_205cd6).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_20652e
	rts
loc_20652e:
	cmp.b $24(a0),d0
	beq.s loc_206544
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206544:
	jmp (sub_203acc).l
loc_20654a:
	bclr.b #$7,($ff156b).l
	beq.s loc_206598
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20659a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20656e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20656e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206598:
	rts
dat_20659a:
	.incbin 26010, 436

sub_20674e:
	bsr.s sub_206752
loc_206750:
	rts

sub_206752:
	tst.b ($f7a7).w
	bne.s loc_206750
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
	bsr.s sub_2067b2
	bne.w loc_2069a2
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
	bsr.s sub_2067b2
loc_2067ac:
	bne.w loc_2069a2
	rts

sub_2067b2:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2067ca
	add.b ($ff156a).l,d1
loc_2067ca:
	add.w d1,d1
	move.w dat_2067ee(pc,d1.w),d1
	lea dat_2067ee(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2067da:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2067ea
	addq.w #$2,d1
	dbf d6,loc_2067da
	moveq #$0,d0
	rts
loc_2067ea:
	moveq #$1,d0
	rts
dat_2067ee:
	.incbin 26606, 436
loc_2069a2:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_2069c2
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_2069c2
	move.l #$20000,d0
loc_2069c2:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_2069d2
	neg.l d0
	neg.b d1
loc_2069d2:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_206bb8).l
	tst.w d1
	bpl.s loc_2069f0
	tst.b ($ff158f).l
	beq.s loc_2069ec
	neg.w d1
loc_2069ec:
	add.w d1,$8(a0)
loc_2069f0:
	rts
loc_2069f2:
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
	bne.s loc_206aac
	move.b ($ff1593).l,($ff195b).l
loc_206aac:
	tst.b ($ff1522).l
	bpl.s loc_206ac2
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ac2:
	rts

sub_206ac4:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2069f2
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
	bne.s loc_206b7e
	move.b ($ff1591).l,($ff195b).l
loc_206b7e:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206ba0
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206ba0:
	tst.b ($ff1522).l
	bpl.s loc_206bb6
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206bb6:
	rts

sub_206bb8:
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
	bpl.s loc_206bf4
	move.b d1,d0
	bpl.s loc_206bee
	subq.b #$1,d0
loc_206bee:
	addi.b #$20,d0
	bra.s loc_206bfe
loc_206bf4:
	move.b d1,d0
	bpl.s loc_206bfa
	addq.b #$1,d0
loc_206bfa:
	addi.b #$1f,d0
loc_206bfe:
	andi.b #$c0,d0
	beq.w loc_206cce
	cmpi.b #$80,d0
	beq.w loc_206e6a
	andi.b #$38,d1
	bne.s loc_206c16
	addq.w #$8,d2
loc_206c16:
	cmpi.b #$40,d0
	beq.w loc_206f40
	bra.w loc_206da2

sub_206c22:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206ec8
	cmpi.b #$80,d0
	beq.w sub_206df2
	cmpi.b #$c0,d0
	beq.w loc_206d32

sub_206c4a:
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
loc_206cae:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206cbc
	move.b ($f768).w,d3
	exg d0,d1
loc_206cbc:
	btst.l #$0,d3
	beq.s loc_206cc4
	move.b d2,d3
loc_206cc4:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206cce:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201118).l
	move.b #$0,d2
loc_206cea:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206cf6
	move.b d2,d3
loc_206cf6:
	rts

sub_206cf8:
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
	beq.s loc_206d30
	move.b #$0,d3
loc_206d30:
	rts
loc_206d32:
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
	bra.w loc_206cae

sub_206d9a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206da2:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201288).l
	move.b #$c0,d2
	bra.w loc_206cea
	.incbin 28098, 48

sub_206df2:
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
	bra.w loc_206cae

sub_206e62:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e6a:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201118).l
	move.b #$80,d2
	bra.w loc_206cea
	.incbin 28302, 58
loc_206ec8:
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
	bra.w loc_206cae

sub_206f38:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f40:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201288).l
	move.b #$40,d2
	bra.w loc_206cea
	.incbin 28516, 48

sub_206f94:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206fb8
	addi.w #$c,d3
	moveq #$a,d5
loc_206fb8:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206fc6:
	tst.b $1(a1)
	bpl.s loc_206fd2
	move.b $20(a1),d0
	bne.s loc_206fde
loc_206fd2:
	lea $40(a1),a1
	dbf d6,loc_206fc6
	moveq #$0,d0
	rts
loc_206fde:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20737c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_207006
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_20700c
	bra.w loc_206fd2
loc_207006:
	cmp.w d4,d0
	bhi.w loc_206fd2
loc_20700c:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_207024
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_20702a
	bra.w loc_206fd2
loc_207024:
	cmp.w d5,d0
	bhi.w loc_206fd2
loc_20702a:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20709e
	cmpi.b #$c0,d1
	beq.w loc_20727e
	tst.b d1
	bmi.w sub_207168
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207062
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207060
	addq.b #$2,$24(a1)
loc_207060:
	rts
loc_207062:
	tst.w $12(a0)
	bpl.s loc_20708c
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20709c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20709c
	addq.b #$4,$25(a1)
	rts
loc_20708c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20709c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20709c:
	rts

sub_20709e:
	tst.b ($ff1521).l
	bne.s loc_2070b8
	tst.b ($ff151f).l
	bne.s loc_2070b8
	cmpi.b #$2,$1c(a0)
	bne.w sub_207168
loc_2070b8:
	tst.b $21(a1)
	beq.s loc_2070e2
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2070e0
	bset.b #$7,$22(a1)
loc_2070e0:
	rts
loc_2070e2:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2070fa
	moveq #$6,d0
loc_2070fa:
	move.w d0,$3e(a1)
	move.w dat_20715a(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207114
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207114:
	bsr.w sub_20abfc
	move.w #$96,d0
	jsr (sub_20239e).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_20714a
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207152
	neg.w $12(a0)
	rts
loc_20714a:
	addi.w #$100,$12(a0)
	rts
loc_207152:
	subi.w #$100,$12(a0)
	rts
dat_20715a:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207168:
	tst.b ($ff1521).l
	bne.s loc_207178
	tst.b ($ff151f).l
	beq.s loc_20717c
loc_207178:
	moveq #$ffffffff,d0
	rts
loc_20717c:
	nop
	tst.w $30(a0)
	bne.s loc_207178
	movea.l a1,a2

sub_207186:
	tst.b ($ff151e).l
	bne.s loc_2071b2
	tst.w ($ff1512).l
	beq.w loc_20721c
	jsr (sub_207be6).l
	bne.s loc_2071b2
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2071b2:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2071c8
	move.b #$0,($ff156f).l
loc_2071c8:
	move.b #$4,$24(a0)
	bsr.w sub_20532c
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2071f8
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2071f8:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207206
	neg.w $10(a0)
loc_207206:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_20721c:
	tst.w ($ff1588).l
	bne.w loc_2071b2

sub_207226:
	tst.w ($ff1906).l
	bne.s loc_20727a
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20532c
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20239e).l
loc_20727a:
	moveq #$ffffffff,d0
	rts
loc_20727e:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_20731e
	cmpi.b #$23,d1
	beq.w loc_20731e
	cmpi.b #$2e,d1
	beq.w loc_207366
	cmpi.b #$37,d1
	beq.w loc_20731e
	cmpi.b #$38,d1
	beq.w loc_207374
	cmpi.b #$3a,d1
	beq.w loc_207366
	cmpi.b #$3b,d1
	beq.w loc_207366
	cmpi.b #$3c,d1
	beq.w loc_207366
	tst.b ($f7aa).w
	beq.w loc_20731c
	cmpi.b #$1,($f7aa).w
	beq.s loc_2072e6
	cmpi.b #$4,($f7aa).w
	beq.s loc_207308
	cmpi.b #$5,($f7aa).w
	beq.s loc_207316
loc_2072e6:
	cmpi.b #$3c,d1
	blt.s loc_20731c
	cmpi.b #$3f,d1
	bgt.s loc_20731c
	bsr.w sub_20709e
	tst.b $20(a1)
	bne.s loc_207300
	addq.b #$3,$21(a1)
loc_207300:
	clr.b $20(a1)
	bra.w loc_20731e
loc_207308:
	cmpi.b #$3f,d1
	beq.s loc_20732a
	cmpi.b #$3e,d1
	beq.s loc_207324
	bra.s loc_20731c
loc_207316:
	cmpi.b #$3d,d1
	beq.s loc_207324
loc_20731c:
	rts
loc_20731e:
	addq.b #$1,$21(a1)
	rts
loc_207324:
	bsr.w sub_207168
	bra.s loc_20731e
loc_20732a:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207364
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207364
	neg.w $10(a0)
loc_207364:
	rts
loc_207366:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207372
	addq.b #$1,$21(a1)
loc_207372:
	rts
loc_207374:
	addq.b #$1,$21(a1)
	bra.w sub_207168
dat_20737c:
	.incbin 29564, 126
loc_2073fa:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207410
	move.l #$4000,(dat_20758a).l
	bra.s loc_207430
loc_207410:
	addi.l #$2000,(dat_20758a).l
	cmpi.l #$80000,(dat_20758a).l
	bls.s loc_207430
	move.l #$80000,(dat_20758a).l
loc_207430:
	move.l (dat_20758a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207442
	sub.l d0,$c(a0)
loc_207442:
	btst.b #$1,($f604).w
	beq.s loc_20744e
	add.l d0,$c(a0)
loc_20744e:
	btst.b #$2,($f604).w
	beq.s loc_20745a
	sub.l d0,$8(a0)
loc_20745a:
	btst.b #$3,($f604).w
	beq.s loc_207466
	add.l d0,$8(a0)
loc_207466:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f30).l
	move.w (a1),($ff194e).l
	lea (dat_20758e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2074a8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2074a2
	move.b #$0,d1
loc_2074a2:
	move.b d1,($ff1904).l
loc_2074a8:
	btst.b #$7,($f605).w
	beq.s loc_2074c8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2074c2
	add.b (a2),d1
loc_2074c2:
	move.b d1,($ff1904).l
loc_2074c8:
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
	beq.s loc_207554
	bsr.w sub_207be6
	bne.s loc_207554
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
loc_207554:
	btst.b #$4,($f605).w
	beq.s loc_207584
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207584:
	jmp (sub_203acc).l
dat_20758a:
	dc.b $00,$00,$40,$00
dat_20758e:
	.incbin 30094, 790
loc_2078a4:
	btst.l d0,d1
	.incbin 30886, 302

sub_2079d4:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2079e2:
	clr.l (a2)+
	dbf d0,loc_2079e2
	rts

sub_2079ea:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2079f8(pc,d0.w),d0
	jmp dat_2079f8(pc,d0.w)
dat_2079f8:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207c98).l,a0
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
	bcc.s loc_207a36
	moveq #$0,d6
loc_207a36:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207a3e:
	cmp.w (a0),d6
	bls.s loc_207a50
	tst.b $4(a0)
	bpl.s loc_207a4c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a4c:
	addq.w #$8,a0
	bra.s loc_207a3e
loc_207a50:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207a70
loc_207a5e:
	cmp.w (a0),d6
	bls.s loc_207a70
	tst.b $4(a0)
	bpl.s loc_207a6c
	addq.b #$1,$1(a2)
loc_207a6c:
	addq.w #$8,a0
	bra.s loc_207a5e
loc_207a70:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207b5a
	bge.s loc_207b00
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207adc
loc_207aaa:
	cmp.w -$8(a0),d6
	bge.s loc_207adc
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207ac0
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207ac0:
	bsr.w sub_207b7e
	bne.s loc_207aca
	subq.w #$8,a0
	bra.s loc_207aaa
loc_207aca:
	tst.b $4(a0)
	bpl.s loc_207ada
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207ada:
	addq.w #$8,a0
loc_207adc:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207ae8:
	cmp.w -$8(a0),d6
	bgt.s loc_207afa
	tst.b -$4(a0)
	bpl.s loc_207af6
	subq.b #$1,(a2)
loc_207af6:
	subq.w #$8,a0
	bra.s loc_207ae8
loc_207afa:
	move.l a0,($f770).w
	rts
loc_207b00:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207b14:
	cmp.w (a0),d6
	bls.s loc_207b36
	tst.b $4(a0)
	bpl.s loc_207b22
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207b22:
	bsr.w sub_207b7e
	beq.s loc_207b14
	tst.b $4(a0)
	bpl.s loc_207b36
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207b36:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207b56
loc_207b44:
	cmp.w (a0),d6
	bls.s loc_207b56
	tst.b $4(a0)
	bpl.s loc_207b52
	addq.b #$1,$1(a2)
loc_207b52:
	addq.w #$8,a0
	bra.s loc_207b44
loc_207b56:
	move.l a0,($f774).w
loc_207b5a:
	rts

sub_207b5c:
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

sub_207b7e:
	bsr.s sub_207b5c
	beq.s loc_207b90
	tst.b $4(a0)
	bpl.s loc_207b96
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207b96
loc_207b90:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207b96:
	bsr.w sub_207be6
	bne.s loc_207be4
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
	bpl.s loc_207bc6
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207bc6:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207bd8
	nop
	nop
	nop
	nop
loc_207bd8:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207be4:
	rts

sub_207be6:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207bee:
	tst.b (a1)
	beq.s loc_207bfa
	lea $40(a1),a1
	dbf d0,loc_207bee
loc_207bfa:
	rts

sub_207bfc:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207c1a
loc_207c0e:
	tst.b (a1)
	beq.s loc_207c1a
	lea $40(a1),a1
	dbf d0,loc_207c0e
loc_207c1a:
	rts
loc_207c1c:
	move.w $8(a0),d0
loc_207c20:
	tst.b $1(a0)
	bmi.s loc_207c8a
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207c8a
loc_207c3e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207c80
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207c78
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207c70
	moveq #$0,d1
	bra.s loc_207c78
loc_207c70:
	cmpi.w #$3,d1
	bcs.s loc_207c78
	moveq #$2,d1
loc_207c78:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207c80:
	jsr (sub_203b78).l
	moveq #$1,d0
	rts
loc_207c8a:
	btst.b #$7,($ff152e).l
	bne.s loc_207c3e
	moveq #$0,d0
	rts
dat_207c98:
	.incbin 31896, 5150

sub_2090b6:
	btst.b #$3,$22(a0)
	beq.s loc_209126
	btst.b #$3,$22(a1)
	beq.s loc_209126
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_209126
	tst.b $2a(a1)
	beq.s loc_2090e8
	move.w #$ab,d0
	jsr (sub_20239e).l
loc_2090e8:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_209114
	cmpi.b #$17,$1c(a1)
	beq.s loc_209114
	bclr.b #$0,$2c(a1)
loc_209114:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209126
	bclr.b #$1,$22(a1)
loc_209126:
	rts

sub_209128:
	cmpi.b #$4,$24(a1)
	bne.s loc_20913a
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_20913a:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20919a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20915c
	bclr.b #$3,$22(a0)
	bra.w sub_2090b6
loc_20915c:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20919a
	tst.b ($ff195b).l
	beq.s loc_209184
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_209194
loc_209184:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_209194:
	move.b #$0,$1c(a1)
loc_20919a:
	bset.b #$3,$22(a1)
	beq.s loc_2091bc
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2091f4
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2091bc:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2091e8
	cmpi.b #$2,$24(a0)
	beq.s loc_2091ee
loc_2091e8:
	move.w $10(a1),$14(a1)
loc_2091ee:
	bclr.b #$1,$22(a1)
loc_2091f4:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_2091fe:
	move.b #$1,$25(a0)

sub_209204:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2094b8
	btst.b #$6,$2c(a1)
	bne.w loc_2094b8
	cmpi.b #$6,$24(a1)
	bcc.w loc_2094b8
	tst.b $0(a1)
	beq.w loc_2094b8
	tst.b $1(a0)
	bpl.w loc_2094b8
	tst.b ($ff1906).l
	bne.w loc_2094b8
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2094b8
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2094b8
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209272
	btst.b #$3,$22(a0)
	bne.s loc_209284
	bra.w loc_2094b8
loc_209272:
	cmpi.b #$1,$25(a0)
	bne.s loc_209284
	tst.w $12(a1)
	beq.s loc_209284
	bmi.w loc_2094b8
loc_209284:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2094b8
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2094b8
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2092ba
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2092ba:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2092c8
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2092c8:
	cmp.w d4,d5
	bcs.w loc_20935c
	cmpi.b #$1,$25(a0)
	beq.w loc_2094b8
	cmpi.b #$a,$0(a0)
	bne.s loc_2092ea
	btst.b #$1,$22(a1)
	bne.w loc_2094b8
loc_2092ea:
	cmpi.b #$4,d5
	bls.w loc_2094b8
	bsr.w sub_209508
	move.l d0,-(a7)
	bsr.w sub_2090b6
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_209314
	tst.w $10(a1)
	beq.s loc_209344
	bpl.s loc_20931c
	bra.s loc_209344
loc_209314:
	tst.w $10(a1)
	beq.s loc_209344
	bpl.s loc_209344
loc_20931c:
	bsr.w sub_2094c8
	btst.b #$1,$22(a1)
	bne.s loc_20933a
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_20933a:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_209344:
	bsr.w sub_20957e
	bsr.w sub_2094c8
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20935c:
	cmpi.b #$19,$0(a0)
	bne.s loc_20936e
	btst.b #$2,$22(a1)
	bne.w loc_2094b8
loc_20936e:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209384
	bmi.w loc_209454
loc_209384:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_209396
	tst.w $12(a1)
	beq.s loc_209396
	bmi.w loc_2094b8
loc_209396:
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
	beq.s loc_2093e2
	bpl.s loc_2093c2
	neg.b d0
loc_2093c2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206bb8).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2093e2
	tst.w $10(a0)
	bpl.s loc_2093de
	neg.w d1
loc_2093de:
	add.w d1,$8(a1)
loc_2093e2:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20944c
	tst.w $12(a0)
	bmi.s loc_209420
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c4a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209420
	add.w d1,$c(a1)
	bra.w loc_2094b8
loc_209420:
	tst.w $12(a0)
	bpl.s loc_20944c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e62).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20944c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207226).l
	movem.l (a7)+,a0-a1
	bra.s loc_2094b8
loc_20944c:
	bsr.w sub_209128
	moveq #$1,d0
	rts
loc_209454:
	cmpi.b #$1,$25(a0)
	beq.s loc_2094b8
	cmpi.b #$9,$0(a0)
	beq.s loc_2094b8
	cmpi.b #$a,$0(a0)
	bne.s loc_20947e
	cmpi.b #$2,$25(a0)
	beq.s loc_20949e
	btst.b #$1,$1(a0)
	bne.s loc_20949e
	bra.s loc_2094b8
loc_20947e:
	btst.b #$1,$22(a1)
	bne.s loc_20949e
	tst.w $12(a0)
	beq.s loc_20949e
	bmi.s loc_20949e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207226).l
	movem.l (a7)+,a0-a1
loc_20949e:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20957e
	bsr.w sub_2090b6
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2094b8:
	bsr.w sub_20957e
	bsr.w sub_2090b6
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2094c8:
	tst.w $10(a0)
	beq.s loc_209506
	cmpi.b #$a,$0(a0)
	beq.s loc_209506
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2094e2
	neg.b d0
loc_2094e2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206bb8).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209506
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207226).l
	movem.l (a7)+,a0-a1
loc_209506:
	rts

sub_209508:
	cmpi.b #$a,$0(a0)
	bne.s loc_209518
	move.b #$0,$20(a1)
	rts
loc_209518:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20956c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20957c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20953a
	tst.w $10(a2)
	beq.s loc_20957c
loc_20953a:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20954c
	cmp.w $8(a2),d1
	bcs.s loc_20957c
	bra.s loc_209552
loc_20954c:
	cmp.w $8(a2),d1
	bcc.s loc_20957c
loc_209552:
	cmpi.b #$15,$0(a0)
	beq.s loc_20957c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207226).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20956c:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20957c:
	rts

sub_20957e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209598
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209598
	move.b #$0,$20(a1)
loc_209598:
	rts
	.incbin 38298, 374
loc_209710:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20971e(pc,d0.w),d0
	jmp dat_20971e(pc,d0.w)
dat_20971e:
	.incbin 38686, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209710
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209774
	tst.b $1(a0)
	bpl.s loc_20977c
loc_209774:
	move.w dat_2097ce(pc,d0.w),d1
	jsr dat_2097ce(pc,d1.w)
loc_20977c:
	bsr.w sub_203acc
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2097ae
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2097ae:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b78
	rts
dat_2097ce:
	.incbin 38862, 26
	addq.b #$2,$24(a0)
	move.l #$209b50,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20983e
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209b56,$4(a0)
	bra.s loc_209880
loc_20983e:
	btst.l #$3,d0
	beq.s loc_20986c
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209ba0,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c498).l
	move.l (a7)+,d0
	bra.s loc_209880
loc_20986c:
	btst.b #$1,$1(a0)
	beq.s loc_209880
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209880:
	btst.l #$1,d0
	beq.s loc_20988c
	bset.b #$5,$2(a0)
loc_20988c:
	andi.w #$2,d0
	move.w dat_209898(pc,d0.w),$30(a0)
	rts
dat_209898:
	.incbin 39064, 118

sub_20990e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209204).l
	tst.b $1(a0)
	bpl.s loc_209930
	lea ($d000).w,a1
	bsr.s sub_20990e
	btst.b #$5,$22(a0)
	bne.s loc_209932
loc_209930:
	rts
loc_209932:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209960
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209960:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20997a
	move.b #$0,$1c(a1)
loc_20997a:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20239e).l
	.incbin 39316, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209c3c(pc,d0.w),d1
	jmp dat_209c3c(pc,d1.w)
dat_209c3c:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209c46:
	.incbin 40006, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209c9e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209c96
	moveq #$0,d1
	bra.s loc_209c9e
loc_209c96:
	cmpi.w #$3,d1
	bcs.s loc_209c9e
	moveq #$2,d1
loc_209c9e:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209cba
	moveq #$6,d1
loc_209cba:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209c46).l,a1
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
	beq.s loc_209d0a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209d02
	moveq #$0,d0
	bra.s loc_209d0a
loc_209d02:
	cmpi.w #$3,d0
	bcs.s loc_209d0a
	moveq #$2,d0
loc_209d0a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209dd8
	dbf d0,loc_209d0a
	bclr.b #$7,(a2)
	bra.s loc_209d60
loc_209d1c:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209d48
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209d40
	moveq #$0,d0
	bra.s loc_209d48
loc_209d40:
	cmpi.w #$3,d0
	bcs.s loc_209d48
	moveq #$2,d0
loc_209d48:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209dd8
	dbf d0,loc_209d48
	bclr.b #$7,(a2)
	bsr.w sub_207bfc
	bne.w loc_209de4
loc_209d60:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a0aa,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209db6
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209db6
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209db6:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209dd8:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209d1c
loc_209de4:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209e0a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209e02
	moveq #$0,d0
	bra.s loc_209e0a
loc_209e02:
	cmpi.w #$3,d0
	bcs.s loc_209e0a
	moveq #$2,d0
loc_209e0a:
	lea $1(a2),a3
loc_209e0e:
	btst.b #$0,-(a3)
	bne.w sub_203b78
	dbf d0,loc_209e0e
	tst.b $1(a0)
	bmi.s loc_209e3e
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209eb8
loc_209e3e:
	tst.w ($ff190e).l
	bne.s loc_209e4e
	move.b ($ff1913).l,$1a(a0)
loc_209e4e:
	bra.w sub_203acc
	.incbin 40530, 102
loc_209eb8:
	bra.w sub_203b78
	.incbin 40636, 136
loc_209f44:
	bsr.w sub_207be6
	bne.w loc_20a002
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a0aa,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209faa
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209faa
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209faa:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209ff2
	move.w d4,d0
	jsr (sub_2007c2).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209ff2
	subi.w #$80,d4
	bcc.s loc_209ff2
	move.w #$288,d4
loc_209ff2:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209f44
loc_20a002:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20239e).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203a76
	addi.w #$18,$12(a0)
	bmi.s loc_20a062
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a062
	jsr (sub_206cf8).l
	tst.w d1
	bpl.s loc_20a062
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a062:
	tst.b ($ff1916).l
	beq.s loc_20a09e
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a09e
	bra.w sub_203acc
	.incbin 41084, 34
loc_20a09e:
	bra.w sub_203b78
	.incbin 41122, 402
loc_20a234:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a262(pc,d0.w),d0
	jsr dat_20a262(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a260
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a25a
	btst.b #$0,($ff1505).l
	bne.s loc_20a260
loc_20a25a:
	jmp (sub_203acc).l
loc_20a260:
	rts
dat_20a262:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a83c,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a296
	move.b #$13,$1a(a0)
loc_20a296:
	rts
loc_20a298:
	tst.b ($ff0f01).l
	beq.s loc_20a2a6
	jmp (sub_203b78).l
loc_20a2a6:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a234
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2ca(pc,d0.w),d0
	jsr dat_20a2ca(pc,d0.w)
	jsr (sub_203acc).l
	jmp (loc_207c1c).l
dat_20a2ca:
	.incbin 41674, 390
	tst.b $28(a0)
	bne.s loc_20a464
	tst.b ($ff0f01).l
	beq.s loc_20a464
	jmp (loc_207c1c).l
loc_20a464:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a298
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a47c(pc,d0.w),d1
	jmp dat_20a47c(pc,d1.w)
dat_20a47c:
	.incbin 42108, 1410
loc_20a9fe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa12(pc,d0.w),d0
	jsr dat_20aa12(pc,d0.w)
	jmp (sub_203acc).l
dat_20aa12:
	.incbin 43538, 146
	tst.b $28(a0)
	bmi.w loc_20a9fe
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aaba(pc,d0.w),d0
	jmp dat_20aaba(pc,d0.w)
dat_20aaba:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ab54,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20aaea
	move.b #$3,$1a(a0)
	bra.s loc_20ab0a
loc_20aaea:
	tst.w ($ff1588).l
	beq.s loc_20aaf8
	move.b #$2,$1a(a0)
loc_20aaf8:
	tst.b $28(a0)
	beq.s loc_20ab0a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ab0a:
	tst.b $28(a0)
	bne.s loc_20ab4e
	tst.b $29(a0)
	beq.s loc_20ab3a
	tst.w ($ff1512).l
	beq.s loc_20ab26
	bclr.b #$5,$2(a0)
	bra.s loc_20ab4e
loc_20ab26:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ab4e
	eori.b #$20,$2(a0)
	bra.s loc_20ab4e
loc_20ab3a:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ab4e
	move.b #$2,$1a(a0)
loc_20ab4e:
	jmp (sub_203acc).l
	.incbin 43860, 168

sub_20abfc:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ac18
	move.l d1,(a3)
loc_20ac18:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ac42
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205c96).l
loc_20ac42:
	rts
loc_20ac44:
	tst.w ($ff1588).l
	beq.s loc_20ac9a
	bsr.w sub_20ae96
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
	lea (dat_20aff6).l,a2
	moveq #$2,d6
	bsr.w sub_20b04e
	bra.w loc_20acf4
loc_20ac9a:
	tst.b ($ff1511).l
	beq.s loc_20acbe
	bpl.s loc_20aca8
	bsr.w sub_20ae40
loc_20aca8:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20af30
loc_20acbe:
	tst.b ($ff150f).l
	beq.s loc_20acf4
	bpl.s loc_20accc
	bsr.w sub_20ae2c
loc_20accc:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20acf0
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20acf0:
	bsr.w sub_20af26
loc_20acf4:
	tst.w ($ff1588).l
	bne.w loc_20ada0
	tst.b ($ff1510).l
	beq.w loc_20ada0
	tst.w ($f63a).w
	bne.w loc_20ada0
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20adfe
	tst.b ($f7cc).w
	bne.s loc_20ad4a
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ad4a
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ad4a
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ad4a
	move.b #$9,(a1)
loc_20ad4a:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b03c
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b046
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ad9c
	move.w #$63,d1
loc_20ad9c:
	bsr.w sub_20b046
loc_20ada0:
	tst.b ($ff150e).l
	beq.s loc_20adb2
	clr.b ($ff150e).l
	bsr.w sub_20b01c
loc_20adb2:
	tst.b ($f7d6).w
	beq.s loc_20adfc
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20add2
	move.l #$6d400001,d0
loc_20add2:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20aeb4
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20adf2
	move.l #$6e800001,d0
loc_20adf2:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20aeb4
loc_20adfc:
	rts
loc_20adfe:
	btst.b #$7,($ff152e).l
	bne.s loc_20ae2a
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207226
	move.b #$1,($ff150c).l
loc_20ae2a:
	rts

sub_20ae2c:
	move.l #$73600002,($c00004).l
	lea dat_20ae92(pc),a2
	move.w #$2,d2
	bra.s loc_20ae5c

sub_20ae40:
	lea ($c00000).l,a6
	bsr.w sub_20b01c
	move.l #$70600002,($c00004).l
	lea dat_20ae8a(pc),a2
	move.w #$6,d2
loc_20ae5c:
	lea (dat_2330bc).l,a1
loc_20ae62:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ae7e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ae72:
	move.l (a3)+,(a6)
	dbf d1,loc_20ae72
loc_20ae78:
	dbf d2,loc_20ae62
	rts
loc_20ae7e:
	move.l #$0,(a6)
	dbf d1,loc_20ae7e
	bra.s loc_20ae78
dat_20ae8a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ae92:
	dc.b $ff,$ff,$00,$00

sub_20ae96:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b012
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b012

sub_20aeb4:
	lea (dat_20afee).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aec4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aec8:
	sub.l d3,d1
	bcs.s loc_20aed0
	addq.w #$1,d2
	bra.s loc_20aec8
loc_20aed0:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aeda
	move.w #$1,d4
loc_20aeda:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20aee6
	tst.w d6
	bne.s loc_20af18
loc_20aee6:
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
loc_20af0c:
	addi.l #$400000,d0
	dbf d6,loc_20aec4
	rts
loc_20af18:
	moveq #$f,d5
loc_20af1a:
	move.l #$0,(a6)
	dbf d5,loc_20af1a
	bra.s loc_20af0c

sub_20af26:
	lea (dat_20aff6).l,a2
	moveq #$2,d6
	bra.s loc_20af38

sub_20af30:
	lea (dat_20afea).l,a2
	moveq #$5,d6
loc_20af38:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20af40:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af44:
	sub.l d3,d1
	bcs.s loc_20af4c
	addq.w #$1,d2
	bra.s loc_20af44
loc_20af4c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af56
	move.w #$1,d4
loc_20af56:
	tst.w d4
	beq.s loc_20af84
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
loc_20af84:
	addi.l #$400000,d0
	dbf d6,loc_20af40
	rts
	.incbin 44944, 32
loc_20afb0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20afb4:
	sub.l d3,d1
	bcs.s loc_20afbc
	addq.w #$1,d2
	bra.s loc_20afb4
loc_20afbc:
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
	dbf d6,loc_20afb0
	rts
dat_20afea:
	dc.b $00,$01,$86,$a0
dat_20afee:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aff6:
	dc.b $00,$00,$00,$64
dat_20affa:
	dc.b $00,$00,$00,$0a
dat_20affe:
	dc.b $00,$00,$00,$01
dat_20b002:
	.incbin 45058, 16

sub_20b012:
	moveq #$3,d6
	lea (dat_20b002).l,a2
	bra.s sub_20b04e

sub_20b01c:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b032
	moveq #$9,d1
loc_20b032:
	lea (dat_20affe).l,a2
	moveq #$0,d6
	bra.s sub_20b04e

sub_20b03c:
	lea (dat_20affe).l,a2
	moveq #$0,d6
	bra.s sub_20b04e

sub_20b046:
	lea (dat_20affa).l,a2
	moveq #$1,d6

sub_20b04e:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b056:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b05a:
	sub.l d3,d1
	bcs.s loc_20b062
	addq.w #$1,d2
	bra.s loc_20b05a
loc_20b062:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b06c
	move.w #$1,d4
loc_20b06c:
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
	dbf d6,loc_20b056
	rts
	.incbin 45218, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20baf2(pc,d0.w),d0
	jmp dat_20baf2(pc,d0.w)
dat_20baf2:
	.incbin 47858, 270
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bc0e(pc,d0.w),d0
	jmp dat_20bc0e(pc,d0.w)
dat_20bc0e:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c30c,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c2cc).l,a2
loc_20bc5c:
	jsr (sub_207be6).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c30c,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bcae
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bcae:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20bc5c
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bcd6
	bge.s loc_20bccc
	neg.w d0
loc_20bccc:
	add.w d0,$a(a0)
	jmp (sub_203acc).l
loc_20bcd6:
	addq.b #$4,$24(a0)
	jmp (sub_203acc).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bcfa
	bge.s loc_20bcf0
	neg.w d0
loc_20bcf0:
	add.w d0,$8(a0)
	jmp (sub_203acc).l
loc_20bcfa:
	addq.b #$4,$24(a0)
	jmp (sub_203acc).l
	tst.b $1e(a0)
	beq.s loc_20bd14
	subq.b #$1,$1e(a0)
	jmp (sub_203acc).l
loc_20bd14:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bd2e
	bge.s loc_20bd24
	neg.w d0
loc_20bd24:
	add.w d0,$a(a0)
	jmp (sub_203acc).l
loc_20bd2e:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202568).l
	tst.b $1e(a0)
	beq.s loc_20bd50
	subq.b #$1,$1e(a0)
	jmp (sub_203acc).l
loc_20bd50:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bd6a
	bge.s loc_20bd60
	neg.w d0
loc_20bd60:
	add.w d0,$8(a0)
	jmp (sub_203acc).l
loc_20bd6a:
	jmp (sub_203b78).l
	tst.l ($f680).w
	bne.s loc_20bd84
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b78).l
loc_20bd84:
	rts
	.incbin 48518, 1350
dat_20c2cc:
	.incbin 49868, 382

sub_20c44a:
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	beq.s loc_20c458
	rts
loc_20c458:
	lea dat_20c486(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c464:
	cmp.w (a1)+,d0
	bcs.s loc_20c46c
	addq.b #$2,d1
	bra.s loc_20c464
loc_20c46c:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c476
	rts
loc_20c476:
	move.b d1,($ff1574).l
	move.w dat_20c48c(pc,d1.w),d0
	jmp (loc_20259a).l
dat_20c486:
	dc.b $15,$e0,$1b,$00,$ff,$ff
dat_20c48c:
	dc.b $00,$05,$00,$06,$00,$05,$00,$02
	dc.b $00,$04,$00,$02

sub_20c498:
	move.w #$4f2,$2(a0)
	rts
	.incbin 50336, 1340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9fa(pc,d0.w),d0
	jsr dat_20c9fa(pc,d0.w)
	jsr (sub_203acc).l
	move.w $36(a0),d0
	jmp (loc_207c20).l
dat_20c9fa:
	dc.b $00,$96,$01,$56
loc_20c9fe:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_2091fe).l
dat_20ca10:
	.incbin 51728, 50
dat_20ca42:
	.incbin 51778, 52
dat_20ca76:
	.incbin 51830, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20cab2
	move.w #$4378,d0
loc_20cab2:
	move.w d0,$2(a0)
	move.l #$20ce56,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20ca10).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20ca42).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20ca76).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20cb4c
	cmpi.b #$1,d1
	bne.s loc_20cb18
	clr.b d2
	bsr.w sub_20cdc2
	bra.s loc_20cb4c
loc_20cb18:
	cmpi.b #$2,d1
	bne.s loc_20cb30
	move.b #$f0,d2
	bsr.w sub_20cdc2
	move.b #$10,d2
	bsr.w sub_20cdc2
	bra.s loc_20cb4c
loc_20cb30:
	cmpi.b #$3,d1
	bne.s loc_20cb4c
	move.b #$e0,d2
	bsr.w sub_20cdc2
	clr.b d2
	bsr.w sub_20cdc2
	move.b #$20,d2
	bsr.w sub_20cdc2
loc_20cb4c:
	bra.w loc_20cb50
loc_20cb50:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20cb6e(pc,d0.w),d0
	jsr dat_20cb6e(pc,d0.w)
	bsr.w sub_20cd7e
	bsr.w sub_20cdf2
	bra.w loc_20c9fe
dat_20cb6e:
	.incbin 52078, 108
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20cd3e
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20cbf4
	neg.w d0
loc_20cbf4:
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts
	.incbin 52222, 320

sub_20cd3e:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20cd64
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20cd7c
	move.b #$ff,$3c(a0)
	bra.s loc_20cd7c
loc_20cd64:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20cd7c
	clr.b $3c(a0)
loc_20cd7c:
	rts

sub_20cd7e:
	btst.b #$7,$3f(a0)
	beq.s loc_20cdc0
	btst.b #$3,$22(a0)
	bne.s loc_20cd9a
	tst.b $3e(a0)
	beq.s loc_20cdc0
	subq.b #$8,$3e(a0)
	bra.s loc_20cda6
loc_20cd9a:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20cdc0
	addq.b #$8,$3e(a0)
loc_20cda6:
	move.b $3e(a0),d0
	jsr (sub_2007c2).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20cdc0:
	rts

sub_20cdc2:
	jsr (sub_207be6).l
	bne.s loc_20cdf0
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20cdf0:
	rts

sub_20cdf2:
	btst.b #$0,$3f(a0)
	beq.s loc_20ce54
	btst.b #$3,$22(a0)
	beq.s loc_20ce54
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20ce54
	btst.b #$3,$22(a1)
	beq.s loc_20ce54
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20ce54
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20ce46
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20ce46
	move.l #$20000,d0
loc_20ce46:
	tst.b ($ff158f).l
	beq.s loc_20ce50
	neg.l d0
loc_20ce50:
	add.l d0,$8(a1)
loc_20ce54:
	rts
	.incbin 52822, 2784
	tst.b $28(a0)
	bmi.w loc_20db44
	jsr (sub_20ed02).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d95e(pc,d0.w),d0
	jsr dat_20d95e(pc,d0.w)
	jsr (sub_203acc).l
	jmp (loc_207c1c).l
dat_20d95e:
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
	lea dat_20dbca(pc),a1
	lea dat_20dbbe(pc),a2
	move.l #$fff80000,d0
	tst.b $28(a0)
	beq.s loc_20d9bc
	lea dat_20dc6a(pc),a1
	lea dat_20dbc4(pc),a2
	move.l #$fffb0000,d0
loc_20d9bc:
	move.l a1,$4(a0)
	move.l a2,$2c(a0)
	move.l d0,$30(a0)
	tst.b $29(a0)
	beq.s loc_20d9da
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d9da:
	addq.b #$2,$24(a0)
	bra.s loc_20d9f4
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
	subq.w #$8,$c(a0)
	move.l $30(a0),$34(a0)
loc_20d9f4:
	addi.l #$4000,$34(a0)
	move.l $34(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206cf8).l
	tst.w d1
	bpl.s loc_20da20
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	addq.w #$8,$c(a0)
loc_20da20:
	rts
	addq.b #$2,$24(a0)
	move.b #$36,$20(a0)
	move.w #$b4,$2a(a0)
	tst.b $28(a0)
	bne.s loc_20da54
	lea ($d000).w,a1
	bsr.s sub_20da68
	tst.b d6
	beq.s loc_20da54
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$3c,$2a(a0)
	rts
loc_20da54:
	subq.w #$1,$2a(a0)
	bne.s loc_20da5e
	subq.b #$6,$24(a0)
loc_20da5e:
	movea.l $2c(a0),a1
	jmp (sub_205cd6).l

sub_20da68:
	moveq #$0,d6
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20daae
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
	bcc.s loc_20daae
	tst.w d0
	smi d0
	btst.b #$0,$1(a0)
	seq d1
	eor.b d1,d0
	bne.s loc_20daae
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	moveq #$ffffffff,d6
loc_20daae:
	rts
	.incbin 55984, 148
loc_20db44:
	tst.w $2a(a0)
	bne.s loc_20db84
	tst.b $21(a0)
	beq.s loc_20db70
	clr.b $21(a0)
	lea ($d000).w,a1
	cmpi.b #$4,$24(a1)
	beq.s loc_20db70
	cmpi.b #$6,$24(a1)
	beq.s loc_20db70
	tst.w $30(a1)
	bne.s loc_20db70
	bra.s loc_20db7a
loc_20db70:
	move.l $34(a0),d0
	add.l d0,$8(a0)
	bra.s loc_20dba8
loc_20db7a:
	move.w a1,$2c(a0)
	move.w #$78,$2a(a0)
loc_20db84:
	subq.w #$1,$2a(a0)
	bne.s loc_20db90
	jmp (sub_203b78).l
loc_20db90:
	movea.w $2c(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	clr.w $10(a1)
	clr.w $14(a1)
loc_20dba8:
	lea dat_20dcfa(pc),a1
	jsr (sub_205cd6).l
	jsr (sub_203acc).l
	jmp (loc_207c1c).l
dat_20dbbe:
	dc.b $00,$02,$07,$01,$02,$ff
dat_20dbc4:
	dc.b $00,$02,$0f,$01,$02,$ff
dat_20dbca:
	.incbin 56266, 160
dat_20dc6a:
	.incbin 56426, 144
dat_20dcfa:
	.incbin 56570, 22
	tst.b $28(a0)
	bmi.w loc_20de9e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd32(pc,d0.w),d0
	jsr dat_20dd32(pc,d0.w)
	jsr (sub_203acc).l
	jmp (loc_207c1c).l
dat_20dd32:
	dc.b $00,$06,$00,$3c,$00,$80
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$4332,$2(a0)
	move.l #$20ded6,$4(a0)
	tst.b $28(a0)
	beq.s loc_20dd86
	lea ($d000).w,a1
	bsr.s sub_20dd90
	bcc.s loc_20dd86
	addq.b #$2,$24(a0)
	move.b #$f8,$20(a0)
loc_20dd86:
	lea ($d000).w,a1
	jmp (sub_209204).l

sub_20dd90:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subq.w #$8,d0
	subi.w #$58,d0
	bcc.s loc_20ddb0
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fff8,d0
	subi.w #$10,d0
loc_20ddb0:
	rts
	.incbin 56754, 236
loc_20de9e:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	jsr (sub_203acc).l
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	bgt.s loc_20ded4
	jmp (sub_203b78).l
loc_20ded4:
	rts
	.incbin 57046, 422
dat_20e07c:
	dc.b $12,$0c,$00,$12,$0c,$83,$0a,$0e
	dc.b $82,$0a,$0e,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$44b,d0
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20e206,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20e07c(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20e142(pc)
	tst.b $1a(a0)
	beq.s loc_20e0ec
	lea ($d000).w,a1
	jmp (sub_209204).l
loc_20e0ec:
	lea ($d000).w,a1
	jsr (sub_209204).l
	beq.s loc_20e140
	btst.b #$3,$22(a0)
	beq.s loc_20e140
	tst.b ($ff1521).l
	bne.s loc_20e140
	tst.b ($ff151f).l
	bne.s loc_20e140
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20e13e
	tst.w $30(a0)
	bne.s loc_20e13e
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207186).l
loc_20e13e:
	movea.l (a7)+,a0
loc_20e140:
	rts

sub_20e142:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20e15c
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20e15e(pc,d0.w),d0
	jmp dat_20e15e(pc,d0.w)
loc_20e15c:
	rts
dat_20e15e:
	.incbin 57694, 1880
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.b #$3,$18(a0)
	move.w #$358,$2(a0)
	move.l #$20eab8,$4(a0)
	lea dat_20eada(pc),a1
	move.b $28(a0),d0
	andi.w #$fffe,d0
	add.w d0,d0
	adda.w d0,a1
	move.w (a1)+,$36(a0)
	move.w (a1),$30(a0)
	move.w #$100,$34(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e914
	neg.l $2e(a0)
	neg.l $32(a0)
loc_20e914:
	lea $38(a0),a6
	move.w $36(a0),d6
loc_20e91c:
	jsr (sub_207bfc).l
	bne.w loc_20ea72
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
	dbf d6,loc_20e91c
	move.b #$ff,$29(a1)
	move.l $2a(a0),d6
	add.l $32(a0),d6
	move.l $2e(a0),d5
	beq.s loc_20e988
	move.l d6,d1
	move.l d5,d0
	bpl.s loc_20e976
	neg.l d1
	neg.l d0
loc_20e976:
	tst.l d1
	bge.s loc_20e97e
	moveq #$0,d6
	bra.s loc_20e984
loc_20e97e:
	cmp.l d0,d1
	ble.s loc_20e988
	move.l d5,d6
loc_20e984:
	neg.l $32(a0)
loc_20e988:
	move.l d6,$2a(a0)
	lea $38(a0),a6
	move.w $36(a0),d6
	subq.w #$1,d6
	move.l $8(a0),d5
	move.l $c(a0),d4
	moveq #$0,d1
	moveq #$0,d0
	move.b $2c(a0),d0
	jsr (sub_2007c2).l
	swap d1
	swap d0
	asr.l #$4,d1
	asr.l #$4,d0
loc_20e9b4:
	moveq #$ffffffff,d2
	move.b (a6)+,d2
	lsl.w #$6,d2
	movea.w d2,a1
	add.l d1,d5
	add.l d0,d4
	move.l d5,$8(a1)
	move.l d4,$c(a1)
	dbf d6,loc_20e9b4
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
	jsr (sub_203acc).l
	jmp (loc_207c1c).l
	.incbin 59896, 122
loc_20ea72:
	jmp (sub_203b78).l
	.incbin 60024, 98
dat_20eada:
	.incbin 60122, 552

sub_20ed02:
	tst.b ($ff156a).l
	beq.s loc_20ed48
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ed1a
	tst.b $28(a0)
	beq.s loc_20ed48
loc_20ed1a:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b78).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20ed46
	move.w #$9e,d0
	jsr (sub_20239e).l
loc_20ed46:
	addq.l #$4,a7
loc_20ed48:
	rts

sub_20ed4a:
	tst.b $28(a0)
	bmi.s loc_20ed7a
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ed6a
	tst.b ($ff156d).l
	bne.s loc_20ed7a
	addq.l #$4,a7
	jmp (loc_207c1c).l
loc_20ed6a:
	tst.b ($ff156a).l
	bne.s loc_20ed7a
	addq.l #$4,a7
	jmp (sub_203b78).l
loc_20ed7a:
	rts
	jsr (sub_20ed4a).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ee9e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed9c(pc,d0.w),d0
	jmp dat_20ed9c(pc,d0.w)
dat_20ed9c:
	.incbin 60828, 258
loc_20ee9e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eeac(pc,d0.w),d0
	jmp dat_20eeac(pc,d0.w)
dat_20eeac:
	.incbin 61100, 2860

sub_20f9d8:
	jmp (loc_20654a).l
dat_20f9de:
	.incbin 63966, 16
dat_20f9ee:
	.incbin 63982, 830
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
	.incbin 209084, 9336
dat_235534:
	.incbin 218420, 256
dat_235634:
	.incbin 218676, 4096
dat_236634:
	.incbin 222772, 4896
dat_237954:
	.incbin 227668, 17356
dat_23bd20:
	.incbin 245024, 17120
