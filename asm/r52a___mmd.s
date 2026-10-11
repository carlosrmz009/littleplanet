; R52A__.MMD
; disassembled from the disc; code only, data comes from data/R52A__.MMD at build time
	.file "R52A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$ec
	jmp (loc_201c1c).l
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
	bsr.w sub_202228
	bsr.w sub_2021d0
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20148c

sub_200184:
	lea ($f7b7).w,a4
	lea ($f7b0).w,a5
	bsr.s sub_2001aa
	btst.b #$0,($ff156c).l
	beq.s loc_2001a2
	lea (dat_200292).l,a1
	bra.w loc_2001ba
loc_2001a2:
	lea (dat_200216).l,a1
	bra.s loc_2001ba

sub_2001aa:
	lea dat_200200(pc),a1
	tst.b ($ff158f).l
	beq.s loc_2001ba
	lea dat_2002a8(pc),a1
loc_2001ba:
	subq.b #$1,(a4)
	bpl.s loc_2001f6
	move.b $3(a1),(a4)
	moveq #$0,d0
	move.b (a5),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_2001d0
	moveq #$0,d0
loc_2001d0:
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
loc_2001f0:
	move.w (a1)+,(a2)+
	dbf d1,loc_2001f0
loc_2001f6:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200200:
	.incbin 512, 22
dat_200216:
	.incbin 534, 124
dat_200292:
	.incbin 658, 22
dat_2002a8:
	.incbin 680, 22

sub_2002be:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2002d0:
	move.w d1,(a0)+
	dbf d0,loc_2002d0
	move.w #$15,d4
loc_2002da:
	move.b #$12,($f62a).w
	bsr.w sub_2007d0
	bsr.s sub_2002f0
	bsr.w sub_2025ee
	dbf d4,loc_2002da
	rts

sub_2002f0:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200306:
	bsr.s sub_200334
	dbf d0,loc_200306
	cmpi.b #$1,($ff1506).l
	bne.s loc_200332
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20032c:
	bsr.s sub_200334
	dbf d0,loc_20032c
loc_200332:
	rts

sub_200334:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20035c
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20034a
	move.w d1,(a0)+
	rts
loc_20034a:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200358
	move.w d1,(a0)+
	rts
loc_200358:
	addq.w #$2,(a0)+
	rts
loc_20035c:
	addq.w #$2,a0
	rts

sub_200360:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20036a:
	move.b #$12,($f62a).w
	bsr.w sub_2007d0
	bsr.s sub_200380
	bsr.w sub_2025ee
	dbf d4,loc_20036a
	rts

sub_200380:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200390:
	bsr.s sub_2003ae
	dbf d0,loc_200390
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003a6:
	bsr.s sub_2003ae
	dbf d0,loc_2003a6
	rts

sub_2003ae:
	move.w (a0),d2
	beq.s loc_2003da
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003be
	subq.w #$2,(a0)+
	rts
loc_2003be:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_2003cc
	subi.w #$20,(a0)+
	rts
loc_2003cc:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_2003da
	subi.w #$200,(a0)+
	rts
loc_2003da:
	addq.w #$2,a0
	rts

sub_2003de:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003f8:
	move.w d1,(a0)+
	dbf d0,loc_2003f8
	move.w #$15,d4
loc_200402:
	move.b #$12,($f62a).w
	bsr.w sub_2007d0
	bsr.s sub_200418
	bsr.w sub_2025ee
	dbf d4,loc_200402
	rts

sub_200418:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20042e:
	bsr.s sub_20045c
	dbf d0,loc_20042e
	cmpi.b #$1,($ff1506).l
	bne.s loc_20045a
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200454:
	bsr.s sub_20045c
	dbf d0,loc_200454
loc_20045a:
	rts

sub_20045c:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200488
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200474
	cmp.w d2,d1
	bcs.s loc_200474
	move.w d1,(a0)+
	rts
loc_200474:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200484
	cmp.w d2,d1
	bcs.s loc_200484
	move.w d1,(a0)+
	rts
loc_200484:
	subq.w #$2,(a0)+
	rts
loc_200488:
	addq.w #$2,a0
	rts

sub_20048c:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200496:
	move.b #$12,($f62a).w
	bsr.w sub_2007d0
	bsr.s sub_2004ac
	bsr.w sub_2025ee
	dbf d4,loc_200496
	rts

sub_2004ac:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004bc:
	bsr.s sub_2004da
	dbf d0,loc_2004bc
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004d2:
	bsr.s sub_2004da
	dbf d0,loc_2004d2
	rts

sub_2004da:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200516
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_2004f2
	addq.w #$2,(a0)+
	rts
loc_2004f2:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200504
	addi.w #$20,(a0)+
	rts
loc_200504:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200516
	addi.w #$200,(a0)+
	rts
loc_200516:
	addq.w #$2,a0
	rts

sub_20051a:
	lea (dat_200586).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_20052e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20052e
	rts

sub_200536:
	lea (dat_200586).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200546:
	move.l (a2)+,(a3)+
	dbf d7,loc_200546
	rts
	dc.b $43,$f9,$00,$20,$05,$86
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200562:
	move.l (a2)+,(a3)+
	dbf d7,loc_200562
	rts
	dc.b $43,$f9,$00,$20,$05,$86
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_20057e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20057e
	rts
dat_200586:
	.incbin 1414, 586

sub_2007d0:
	move.w #$2300,sr
loc_2007d4:
	tst.b ($f62a).w
	bne.s loc_2007d4
	rts

sub_2007dc:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007f4(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007f4(pc,d0.w),d0
	rts
dat_2007f4:
	.incbin 2036, 640

sub_200a74:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200ad0
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a8e
	neg.w d3
loc_200a8e:
	tst.w d4
	bpl.w loc_200a96
	neg.w d4
loc_200a96:
	cmp.w d3,d4
	bcc.w loc_200aa8
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200ada(pc,d4.w),d0
	bra.s loc_200ab2
loc_200aa8:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200ada(pc,d3.w),d0
loc_200ab2:
	tst.w d1
	bpl.w loc_200abe
	neg.w d0
	addi.w #$80,d0
loc_200abe:
	tst.w d2
	bpl.w loc_200aca
	neg.w d0
	addi.w #$100,d0
loc_200aca:
	movem.l (a7)+,d3-d4
	rts
loc_200ad0:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200ada:
	.incbin 2778, 258

sub_200bdc:
	btst.b #$3,$22(a0)
	beq.s loc_200bf0
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200bf0:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c12
	move.b $26(a0),d0
	bpl.s loc_200c0c
	subq.b #$1,d0
loc_200c0c:
	addi.b #$20,d0
	bra.s loc_200c1e
loc_200c12:
	move.b $26(a0),d0
	bpl.s loc_200c1a
	addq.b #$1,d0
loc_200c1a:
	addi.b #$1f,d0
loc_200c1e:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200ea8
	cmpi.b #$80,d0
	beq.w loc_200e06
	cmpi.b #$c0,d0
	beq.w loc_200d6a
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
	bsr.w sub_201132
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
	bsr.w sub_201132
	move.w (a7)+,d0
	bsr.w sub_200d3e
	tst.w d1
	beq.s loc_200cac
	bpl.s loc_200cae
	cmpi.w #$fff2,d1
	blt.s loc_200cd4
	add.w d1,$c(a0)
loc_200cac:
	rts
loc_200cae:
	cmpi.w #$e,d1
	bgt.s loc_200cba
loc_200cb4:
	add.w d1,$c(a0)
	rts
loc_200cba:
	tst.b $38(a0)
	bne.s loc_200cb4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cd4:
	rts
	.incbin 3286, 34
loc_200cf8:
	rts
	.incbin 3322, 68

sub_200d3e:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d4c
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d4c:
	btst.l #$0,d2
	bne.s loc_200d58
	move.b d2,$26(a0)
	rts
loc_200d58:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d6a:
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
	bsr.w sub_2012a2
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
	bsr.w sub_2012a2
	move.w (a7)+,d0
	bsr.w sub_200d3e
	tst.w d1
	beq.s loc_200dde
	bpl.s loc_200de0
	cmpi.w #$fff2,d1
	blt.w loc_200cf8
	add.w d1,$8(a0)
loc_200dde:
	rts
loc_200de0:
	cmpi.w #$e,d1
	bgt.s loc_200dec
loc_200de6:
	add.w d1,$8(a0)
	rts
loc_200dec:
	tst.b $38(a0)
	bne.s loc_200de6
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e06:
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
	bsr.w sub_201132
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
	bsr.w sub_201132
	move.w (a7)+,d0
	bsr.w sub_200d3e
	tst.w d1
	beq.s loc_200e80
	bpl.s loc_200e82
	cmpi.w #$fff2,d1
	blt.w loc_200cd4
	sub.w d1,$c(a0)
loc_200e80:
	rts
loc_200e82:
	cmpi.w #$e,d1
	bgt.s loc_200e8e
loc_200e88:
	sub.w d1,$c(a0)
	rts
loc_200e8e:
	tst.b $38(a0)
	bne.s loc_200e88
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200ea8:
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
	bsr.w sub_2012a2
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
	bsr.w sub_2012a2
	move.w (a7)+,d0
	bsr.w sub_200d3e
	tst.w d1
	beq.s loc_200f22
	bpl.s loc_200f24
	cmpi.w #$fff2,d1
	blt.w loc_200cf8
	sub.w d1,$8(a0)
loc_200f22:
	rts
loc_200f24:
	cmpi.w #$e,d1
	bgt.s loc_200f30
loc_200f2a:
	sub.w d1,$8(a0)
	rts
loc_200f30:
	tst.b $38(a0)
	bne.s loc_200f2a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f4a:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f60
	andi.w #$380,d0
loc_200f60:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fc0
	bmi.s loc_200fc4
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f90
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f96
loc_200f90:
	andi.w #$7fff,$2(a0)
loc_200f96:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fa6
	bclr.b #$6,$1(a0)
loc_200fa6:
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
loc_200fc0:
	movea.l d1,a1
	rts
loc_200fc4:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20102c
	btst.b #$6,$1(a0)
	bne.s loc_200ff2
	cmpi.b #$14,d1
	bne.w loc_201116
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201116
loc_200ff2:
	cmpi.b #$15,d1
	bne.s loc_201000
	move.w #$60,d1
	bra.w loc_201116
loc_201000:
	cmpi.b #$1e,d1
	bne.s loc_20100e
	move.w #$61,d1
	bra.w loc_201116
loc_20100e:
	cmpi.b #$1f,d1
	bne.s loc_20101c
	move.w #$62,d1
	bra.w loc_201116
loc_20101c:
	cmpi.b #$32,d1
	bne.w loc_201116
	move.w #$63,d1
	bra.w loc_201116
loc_20102c:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201092
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20107c
	cmpi.b #$6,d1
	beq.s loc_20107c
	tst.b ($ff1956).l
	beq.w loc_201116
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_20108c
	cmpi.b #$3c,d1
	beq.s loc_20108c
	cmpi.b #$37,d1
	beq.s loc_20108c
	cmpi.b #$2f,d1
	beq.s loc_20108c
	cmpi.b #$16,d1
	beq.s loc_20108c
	bra.w loc_201116
loc_20107c:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201116
loc_20108c:
	addq.b #$1,d1
	bra.w loc_201116
loc_201092:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201102
	cmpi.b #$3,$0(a0)
	bcc.w loc_201116
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201116
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010c6
	move.w #$6a,d1
	bra.s loc_201116
loc_2010c6:
	cmpi.b #$48,d1
	bne.s loc_2010d2
	move.w #$6b,d1
	bra.s loc_201116
loc_2010d2:
	cmpi.b #$4a,d1
	bne.s loc_2010de
	move.w #$6c,d1
	bra.s loc_201116
loc_2010de:
	cmpi.b #$10,d1
	bne.s loc_2010ea
	move.w #$6d,d1
	bra.s loc_201116
loc_2010ea:
	cmpi.b #$63,d1
	bne.s loc_2010f6
	move.w #$6e,d1
	bra.s loc_201116
loc_2010f6:
	cmpi.b #$43,d1
	bne.s loc_201116
	move.w #$6f,d1
	bra.s loc_201116
loc_201102:
	btst.b #$6,$1(a0)
	beq.s loc_201116
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201116
	move.w #$51,d1
loc_201116:
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

sub_201132:
	bsr.w sub_200f4a
	cmpi.l #$210000,d1
	beq.s loc_20114c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20114c
	btst.l d5,d4
	bne.s loc_20115a
loc_20114c:
	add.w a3,d2
	bsr.w sub_2011f2
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20115a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20114c
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201180
	not.w d1
	neg.b (a4)
loc_201180:
	btst.l #$c,d4
	beq.s loc_201190
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201190:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011ac
	neg.w d0
loc_2011ac:
	tst.w d0
	beq.s loc_20114c
	bmi.s loc_2011c8
	cmpi.b #$10,d0
	beq.s loc_2011e4
loc_2011b8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011c8:
	cmpa.w #$10,a3
	bne.s loc_2011d8
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011b8
loc_2011d8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20114c
loc_2011e4:
	sub.w a3,d2
	bsr.w sub_2011f2
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011f2:
	bsr.w sub_200f4a
	cmpi.l #$210000,d1
	beq.s loc_20120c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20120c
	btst.l d5,d4
	bne.s loc_20121a
loc_20120c:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20121a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20120c
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201240
	not.w d1
	neg.b (a4)
loc_201240:
	btst.l #$c,d4
	beq.s loc_201250
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201250:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20126c
	neg.w d0
loc_20126c:
	tst.w d0
	beq.s loc_20120c
	bmi.s loc_201282
loc_201272:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201282:
	cmpa.w #$10,a3
	bne.s loc_201292
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201272
loc_201292:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20120c
	not.w d1
	rts

sub_2012a2:
	bsr.w sub_200f4a
	cmpi.l #$210000,d1
	beq.s loc_2012bc
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012bc
	btst.l d5,d4
	bne.s loc_2012ca
loc_2012bc:
	add.w a3,d3
	bsr.w sub_201352
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012ca:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012bc
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012f8
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012f8:
	btst.l #$b,d4
	beq.s loc_201300
	neg.b (a4)
loc_201300:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20131c
	neg.w d0
loc_20131c:
	tst.w d0
	beq.s loc_2012bc
	bmi.s loc_201338
	cmpi.b #$10,d0
	beq.s loc_201344
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201338:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012bc
loc_201344:
	sub.w a3,d3
	bsr.w sub_201352
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201352:
	bsr.w sub_200f4a
	cmpi.l #$210000,d1
	beq.s loc_20136c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20136c
	btst.l d5,d4
	bne.s loc_20137a
loc_20136c:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20137a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20136c
	lea (dat_235534).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2013a8
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013a8:
	btst.l #$b,d4
	beq.s loc_2013b0
	neg.b (a4)
loc_2013b0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_236634).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013cc
	neg.w d0
loc_2013cc:
	tst.w d0
	beq.s loc_20136c
	bmi.s loc_2013e2
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013e2:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20136c
	not.w d1
	rts

sub_2013f2:
	rts
	.incbin 5108, 152
loc_20148c:
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014a6
	tst.b ($ff0f01).l
	bne.s loc_2014a6
	move.b #$1,($ff156a).l
loc_2014a6:
	clr.b ($f62a).w
	clr.b ($ff158f).l
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201514
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207ac6
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201514
	move.b #$1,($ff1508).l
loc_201514:
	bset.b #$7,($f600).w
	bsr.w sub_2025e0
	tst.b ($ff156e).l
	bne.s loc_20153a
	btst.b #$7,($ff152e).l
	beq.s loc_201570
	bset.b #$0,($ff151d).l
	beq.s loc_201546
loc_20153a:
	bsr.w sub_20048c
	bclr.b #$0,($ff151d).l
loc_201546:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015e0
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20156e
	bclr.b #$7,($ff152e).l
loc_20156e:
	rts
loc_201570:
	bset.b #$0,($ff151d).l
	beq.s loc_20157e
	bsr.w sub_200360
loc_20157e:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20159a
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015c2
loc_20159a:
	tst.b ($ff1508).l
	bne.s loc_2015e0
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015c2:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015ca:
	move.l #$0,(a1)+
	dbf d6,loc_2015ca
	move.b #$c,($f62a).w
	bsr.w sub_2007d0
	rts
loc_2015e0:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015f8
	move.w #$0,($f78e).w
	move.b #$0,($ff151d).l
	rts
loc_2015f8:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20160e
	btst.b #$7,($ff152e).l
	beq.s loc_201614
loc_20160e:
	move.l #$eee0eee,d0
loc_201614:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20161c:
	move.l d0,(a1)+
	dbf d6,loc_20161c
loc_201622:
	move.b #$c,($f62a).w
	bsr.w sub_2007d0
	bsr.w sub_2025ee
	bne.s loc_201622
	tst.l ($f680).w
	bne.s loc_201622
	bsr.w sub_201ad6
	moveq #$0,d0
	lea (dat_20f8ba).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20164e
	bsr.w sub_2026f4
loc_20164e:
	moveq #$1,d0
	bsr.w sub_2026f4
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20166a:
	move.l d0,(a1)+
	dbf d1,loc_20166a
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20167c:
	move.l d0,(a1)+
	dbf d1,loc_20167c
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20168c:
	move.l d0,(a1)+
	dbf d1,loc_20168c
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20169c:
	move.l d0,(a1)+
	dbf d1,loc_20169c
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016ac:
	move.l d0,(a1)+
	dbf d1,loc_2016ac
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2022ca
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
	bsr.w sub_200536
	moveq #$3,d0
	bsr.w sub_20051a
	bsr.w sub_2029f8
	bsr.w sub_202b62
	bset.b #$2,($f754).w
	bsr.w sub_2036d8
	bsr.w sub_20357e
	jsr (sub_2013f2).l
	bsr.w sub_201a10
loc_20172c:
	move.b #$c,($f62a).w
	bsr.w sub_2007d0
	bsr.w sub_2025ee
	bne.s loc_20172c
	tst.l ($f680).w
	bne.s loc_20172c
	bsr.w sub_20199c
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b36
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201790
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201790:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017d2
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017d2:
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
	jsr (sub_20f8b4).l
	jsr (sub_202944).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201868
loc_201862:
	bsr.w sub_2003de
	bra.s loc_201876
loc_201868:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201862
	bsr.w sub_2002be
loc_201876:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201884:
	move.b #$8,($f62a).w
	bsr.w sub_2007d0
	tst.b ($f7cc).w
	bne.s loc_2018a2
	btst.b #$7,($f605).w
	beq.s loc_2018a2
	eori.b #$1,($f63a).w
loc_2018a2:
	btst.b #$0,($f63a).w
	beq.w loc_201922
	bsr.w sub_201b9a
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201906
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201884
	subq.b #$1,($ff1508).l
	bpl.s loc_2018d4
	clr.b ($ff1508).l
loc_2018d4:
	move.w #$e,d0
	jsr (sub_205d88).l
	bsr.w sub_207ac6
	clr.b ($ff1522).l
	jsr (sub_202350).l
	move.b #$1,($a01c3e).l
	jsr (sub_20236c).l
	move.w #$1,($ff1502).l
	bra.s loc_201914
loc_201906:
	andi.b #$70,d0
	beq.w loc_201884
	clr.b ($ff1508).l
loc_201914:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	bra.w loc_201992
loc_201922:
	bsr.w sub_201be0
	addq.w #$1,($ff1504).l
	jsr (sub_207adc).l
	jsr (sub_203ade).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201992
	tst.w ($ff1502).l
	bne.w loc_201992
	tst.w ($ff1906).l
	bne.s loc_20196a
	cmpi.b #$6,($d024).w
	bcs.s loc_20196a
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_20196e
loc_20196a:
	bsr.w sub_202b62
loc_20196e:
	jsr (sub_203c88).l
	tst.w ($ff190e).l
	bne.s loc_201980
	bsr.w sub_200184
loc_201980:
	jsr (sub_20c32c).l
	bsr.w sub_2025ee
	bsr.w sub_201a42
	bra.w loc_201884
loc_201992:
	clr.b ($ff156c).l
	bra.w loc_20148c

sub_20199c:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019b4
	move.w #$78,$30(a1)
loc_2019b4:
	rts
	dc.b $43,$f9,$00,$ff,$19,$00,$70,$00
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.b $0(a1,d0.w),d0
	beq.s loc_201a0e
	subq.b #$1,d0
	lea ($d800).w,a2
	moveq #$0,d1
loc_2019d6:
	move.b #$1f,$0(a2)
	move.w d1,d2
	add.w d2,d2
	add.w d2,d2
	moveq #$0,d3
	move.b ($ff152e).l,d3
	bclr.l #$7,d3
	lsl.w #$8,d3
	add.w d3,d2
	lea ($ff1600).l,a3
	move.w $0(a3,d2.w),$8(a2)
	move.w $2(a3,d2.w),$c(a2)
	adda.w #$40,a2
	addq.b #$1,d1
	dbf d0,loc_2019d6
loc_201a0e:
	rts

sub_201a10:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a22(pc,d0.w),($f796).w
	rts
dat_201a22:
	.incbin 6690, 32

sub_201a42:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a60
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a60:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a7e
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a7e:
	subq.b #$1,($ff1914).l
	bpl.s loc_201aa6
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201aa6
	move.b #$0,($ff1915).l
loc_201aa6:
	tst.b ($ff1916).l
	beq.s loc_201ad4
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201ad4:
	rts

sub_201ad6:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201af8
	cmpi.b #$2,d0
	bne.s loc_201af8
	add.b ($ff156a).l,d0
loc_201af8:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b10(pc,d1.w),d0
	jmp (sub_205d88).l
dat_201b10:
	.incbin 6928, 38

sub_201b36:
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

sub_201b9a:
	move.w #$ab,d0
	jsr (sub_2023b8).l
	bset.b #$7,($f63a).w
	bne.s loc_201bde
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bc4
loc_201bba:
	move.w #$d5,d0
	jmp (sub_205d88).l
loc_201bc4:
	tst.b ($ff151f).l
	bne.s loc_201bba
	tst.b ($ff1520).l
	bne.s loc_201bba
	move.w #$90,d0
	jmp (sub_205d88).l
loc_201bde:
	rts

sub_201be0:
	bclr.b #$7,($f63a).w
	beq.s loc_201c1a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c00
loc_201bf6:
	move.w #$d6,d0
	jmp (sub_205d88).l
loc_201c00:
	tst.b ($ff151f).l
	bne.s loc_201bf6
	tst.b ($ff1520).l
	bne.s loc_201bf6
	move.w #$91,d0
	jmp (sub_205d88).l
loc_201c1a:
	rts
loc_201c1c:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201ca8
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c58
	move.w #$700,d0
loc_201c54:
	dbf d0,loc_201c54
loc_201c58:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c8e(pc,d0.w),d0
	jsr dat_201c8e(pc,d0.w)
loc_201c6e:
	jsr (sub_2023dc).l
	tst.b ($f63a).w
	bne.s loc_201c82
	bsr.w sub_202190
	bsr.w sub_20217e
loc_201c82:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c8e:
	.incbin 7310, 26
loc_201ca8:
	tst.b ($ff1957).l
	beq.w loc_201c6e
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c6e
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cd6
	move.w #$700,d0
loc_201cd2:
	dbf d0,loc_201cd2
loc_201cd6:
	move.w #$1,($f6fc).w
	jsr (sub_202350).l
	tst.b ($f64e).w
	bne.s loc_201d0e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d32
loc_201d0e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d32:
	move.w ($f624).w,(a5)
	jsr (sub_20236c).l
	bra.w loc_201c6e
	.incbin 7488, 60
	jsr (sub_202350).l
	bsr.w sub_2021ec
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
	bsr.w sub_205caa
	tst.b ($f767).w
	beq.s loc_201e2a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e2a:
	tst.w ($ff190e).l
	bne.s loc_201e38
	jsr (sub_20f8b4).l
loc_201e38:
	jsr (sub_20236c).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203164
	jsr (sub_202944).l
	bsr.w sub_202660
	jmp (loc_20ab26).l
	dc.b $4e,$75
	jsr (sub_202350).l
	bsr.w sub_2021ec
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
	bsr.w sub_205caa
	tst.b ($f767).w
	beq.s loc_201f1e
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f1e:
	jsr (sub_20236c).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203164
	bra.w loc_202644
	.incbin 8008, 16
	bsr.w sub_202044
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f7a
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f7a:
	move.w ($f624).w,(a5)
	bra.w loc_202644
	dc.b $4e,$b9,$00,$20,$23,$50,$61,$00
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
	jsr (sub_20236c).l
	lea ($d000).w,a0
	bsr.w sub_205caa
	tst.b ($f767).w
	beq.s loc_202036
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202036:
	tst.w ($f614).w
	beq.w loc_202042
	subq.w #$1,($f614).w
loc_202042:
	rts

sub_202044:
	jsr (sub_202350).l
	bsr.w sub_2021ec
	tst.b ($f64e).w
	bne.s loc_20207a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20209e
loc_20207a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20209e:
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
	jmp (sub_20236c).l
	.incbin 8428, 146

sub_20217e:
	tst.b ($d02a).w
	bne.s loc_20218e
	tst.w ($f786).w
	beq.s loc_20218e
	addq.w #$1,($f786).w
loc_20218e:
	rts

sub_202190:
	tst.w ($f780).w
	beq.s loc_20219a
	addq.w #$1,($f780).w
loc_20219a:
	tst.w ($f782).w
	beq.s loc_2021a4
	addq.w #$1,($f782).w
loc_2021a4:
	rts
	.incbin 8614, 42

sub_2021d0:
	bsr.w sub_202350
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20236c

sub_2021ec:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2021fa
	addq.w #$2,a1

sub_2021fa:
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

sub_202228:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2022a4).l,a2
	moveq #$12,d7
loc_20223c:
	move.w (a2)+,(a0)
	dbf d7,loc_20223c
	move.w (dat_2022a6).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202262:
	move.w d0,(a1)
	dbf d7,loc_202262
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202294:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202294
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2022a4:
	dc.b $80,$04
dat_2022a6:
	.incbin 8870, 36

sub_2022ca:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2022ec:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022ec
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20231a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20231a
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202338:
	move.l d0,(a1)+
	dbf d1,loc_202338
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202348:
	move.l d0,(a1)+
	dbf d1,loc_202348
	rts

sub_202350:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202360:
	btst.b #$0,($a11100).l
	bne.s loc_202360
	rts

sub_20236c:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9082, 62

sub_2023b8:
	tst.b ($f00a).w
	bne.s loc_2023c4
	move.b d0,($f00a).w
	rts
loc_2023c4:
	tst.b ($f00b).w
	bne.s loc_2023d0
	move.b d0,($f00b).w
	rts
loc_2023d0:
	tst.b ($f00c).w
	bne.s loc_2023da
	move.b d0,($f00c).w
loc_2023da:
	rts

sub_2023dc:
	jsr (sub_202350).l
	tst.b ($f00a).w
	beq.s loc_2023f6
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2023f6:
	tst.b ($f00b).w
	beq.s loc_20240a
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20240a:
	tst.b ($f00c).w
	beq.s loc_20241e
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20241e:
	bra.w sub_20236c
	.incbin 9250, 32

sub_202442:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202504).l,a3
	lea ($c00000).l,a4
	bra.s loc_20245e

sub_202454:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20251a).l,a3
loc_20245e:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20246c
	adda.w #$a,a3
loc_20246c:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202530
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20248c
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20248c:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2024d8
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2024b4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2024b4:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2024c2:
	lsr.w #$4,d0
loc_2024c4:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2024d2
	jmp (a3)

sub_2024ce:
	moveq #$0,d4
	moveq #$8,d3
loc_2024d2:
	dbf d0,loc_2024c4
	bra.s sub_20248c
loc_2024d8:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2024e6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2024e6:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2024c2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2024c2
loc_202504:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2024ce
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2024ce
	rts
dat_20251a:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2024ce
	rts

sub_202530:
	move.b (a0)+,d0
loc_202532:
	cmpi.b #$ff,d0
	bne.s loc_20253a
	rts
loc_20253a:
	move.w d0,d7
loc_20253c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202532
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
	bne.s loc_20256a
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20253c
loc_20256a:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202576:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202576
	bra.s loc_20253c

sub_202582:
	movem.l a1-a2,-(a7)
	lea (dat_20f8ca).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20259a:
	tst.l (a2)
	beq.s loc_2025a2
	addq.w #$6,a2
	bra.s loc_20259a
loc_2025a2:
	move.w (a1)+,d0
	bmi.s loc_2025ae
loc_2025a6:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2025a6
loc_2025ae:
	movem.l (a7)+,a1-a2
	rts
loc_2025b4:
	movem.l a1-a2,-(a7)
	lea (dat_20f8ca).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_2025e0
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_2025da
loc_2025d2:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2025d2
loc_2025da:
	movem.l (a7)+,a1-a2
	rts

sub_2025e0:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2025e6:
	clr.l (a2)+
	dbf d0,loc_2025e6
	rts

sub_2025ee:
	tst.l ($f680).w
	beq.s loc_202642
	tst.w ($f6f8).w
	bne.s loc_202642
	movea.l ($f680).w,a0
	lea (loc_202504).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202610
	adda.w #$a,a3
loc_202610:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202530
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
loc_202642:
	rts
loc_202644:
	tst.w ($f6f8).w
	beq.w loc_2026e2
loc_20264c:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20267e

sub_202660:
	tst.w ($f6f8).w
	beq.s loc_2026e2
	tst.b ($f744).w
	bne.s loc_20264c
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20267e:
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
loc_2026b2:
	movea.w #$8,a5
	bsr.w sub_2024ce
	subq.w #$1,($f6f8).w
	beq.s loc_2026e4
	subq.w #$1,($f6fa).w
	bne.s loc_2026b2
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2026e2:
	rts
loc_2026e4:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2026ea:
	move.l $6(a0),(a0)+
	dbf d0,loc_2026ea
	rts

sub_2026f4:
	lea (dat_20f8ca).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202706:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202442
	dbf d1,loc_202706
	rts
	.incbin 10022, 542

sub_202944:
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
loc_202960:
	move.w dat_2029d0(pc,d0.w),d1
	bmi.s loc_202972
	cmp.w $8(a6),d1
	bcc.s loc_202972
	addq.w #$2,d0
	addq.b #$1,d2
	bra.s loc_202960
loc_202972:
	cmp.b ($ff156c).l,d2
	bne.s loc_20297e
loc_20297a:
	movea.l (a7)+,a6
	rts
loc_20297e:
	move.b d2,($ff156c).l
	clr.l ($f680).w
	clr.w ($f6f8).w
	moveq #$0,d1
	move.b dat_2029e2(pc,d2.w),d1
	moveq #$0,d0
	move.b d1,d0
	lsr.b #$2,d0
	move.w d0,d2
	addi.b #$e,d0
	bsr.w sub_202582
	move.w d2,d0
	addq.b #$4,d0
	move.w d0,d2
	jsr (sub_200536).l
	move.w d2,d0
	jsr (sub_20051a).l
	lea ($a040).w,a3
	bsr.w sub_203744
	move.w ($f704).w,d0
	move.w ($f700).w,d1
	bsr.w sub_202b20
	bsr.w sub_203598
	bra.s loc_20297a
dat_2029d0:
	.incbin 10704, 18
dat_2029e2:
	.incbin 10722, 22

sub_2029f8:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202a54).l,a0
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
	bra.w loc_202a80
dat_202a54:
	dc.b $00,$04,$00,$00,$2a,$97,$00,$00
	dc.b $03,$20,$00,$60
dat_202a60:
	.incbin 10848, 32
loc_202a80:
	tst.b ($ff1522).l
	beq.s loc_202aa0
	jsr (sub_206bb6).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a9e
	moveq #$0,d0
loc_202a9e:
	bra.s loc_202adc
loc_202aa0:
	lea (dat_202b18).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202ac2
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202a60).l,a1
	adda.w d0,a1
	bra.s loc_202acc
loc_202ac2:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202acc:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202adc:
	subi.w #$a0,d1
	bcc.s loc_202ae4
	moveq #$0,d1
loc_202ae4:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202aee
	move.w d2,d1
loc_202aee:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202afa
	moveq #$0,d0
loc_202afa:
	cmp.w ($f72e).w,d0
	blt.s loc_202b04
	move.w ($f72e).w,d0
loc_202b04:
	move.w d0,($f704).w
	bsr.w sub_202b20
	lea (dat_202b1c).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202b18:
	dc.b $00,$40,$01,$6c
dat_202b1c:
	dc.b $7f,$7f,$15,$5b

sub_202b20:
	swap d0
	btst.b #$0,($ff156c).l
	beq.s loc_202b30
	lsr.l #$2,d0
	bra.s loc_202b3c
loc_202b30:
	lsr.l #$1,d0
	move.l d0,d2
	lsr.l #$2,d2
	add.l d2,d0
	lsr.l #$1,d2
	add.l d2,d0
loc_202b3c:
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	move.l d1,d2
	lsr.l #$2,d2
	add.l d1,d2
	move.w d2,($f708).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.w d1,($f718).w
	rts

sub_202b62:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202b6e
	rts
loc_202b6e:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202dda
	bsr.w sub_202e7a
	bsr.w sub_203772
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_203104
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_2030d0
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asl.l #$2,d4
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_20309c
	move.w ($f704).w,d0
	btst.b #$0,($ff156c).l
	beq.s loc_202bdc
	lsr.w #$2,d0
	bra.s loc_202be8
loc_202bdc:
	lsr.w #$1,d0
	move.w d0,d2
	lsr.w #$2,d2
	add.w d2,d0
	lsr.w #$1,d2
	add.w d2,d0
loc_202be8:
	bsr.w sub_20306c
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
	beq.s loc_202c34
	bsr.w sub_202d08
	bsr.w sub_202d58
	bra.w loc_202c5c
loc_202c34:
	move.w ($f708).w,d0
	neg.w d0
	move.w #$7,d6
loc_202c3e:
	move.w d0,(a1)+
	dbf d6,loc_202c3e
	bsr.w sub_202c7a
	bsr.w sub_202cc4
	move.w ($f708).w,d0
	neg.w d0
	move.w #$7,d6
loc_202c56:
	move.w d0,(a1)+
	dbf d6,loc_202c56
loc_202c5c:
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202d98

sub_202c7a:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$5,d6
	adda.w #$44,a1
loc_202c9e:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202cbe(pc,d6.w),d5
loc_202ca8:
	move.w d0,-(a1)
	dbf d5,loc_202ca8
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c9e
	adda.w #$44,a1
	rts
dat_202cbe:
	dc.b $0d,$0b,$01,$01,$01,$01

sub_202cc4:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$e,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$6,d6
loc_202ce4:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d00(pc,d6.w),d5
loc_202cee:
	move.w d0,(a1)+
	dbf d5,loc_202cee
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202ce4
	rts
dat_202d00:
	dc.b $0f,$13,$01,$01,$01,$01,$01,$00

sub_202d08:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$16,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$a,d6
	adda.w #$2c,a1
loc_202d2c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d4c(pc,d6.w),d5
loc_202d36:
	move.w d0,-(a1)
	dbf d5,loc_202d36
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d2c
	adda.w #$2c,a1
	rts
dat_202d4c:
	dc.b $01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$00

sub_202d58:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$c,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$2,d6
loc_202d78:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d94(pc,d6.w),d5
loc_202d82:
	move.w d0,(a1)+
	dbf d5,loc_202d82
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d78
	rts
dat_202d94:
	dc.b $1f,$03,$05,$00
loc_202d98:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202da6(pc,d2.w)
loc_202da4:
	move.w (a2)+,d0
loc_202da6:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202da4
	rts
	.incbin 11708, 30

sub_202dda:
	move.w ($f700).w,d4
	bsr.s sub_202e0e
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202e0c
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202e06
	bset.b #$2,($f754).w
	rts
loc_202e06:
	bset.b #$3,($f754).w
loc_202e0c:
	rts

sub_202e0e:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202e20
	bcs.s loc_202e50
	bra.s loc_202e26
loc_202e20:
	clr.w ($f73a).w
	rts
loc_202e26:
	cmpi.w #$10,d0
	blt.s loc_202e30
	move.w #$10,d0
loc_202e30:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202e3e
	move.w ($f72a).w,d0
loc_202e3e:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202e50:
	cmpi.w #$fff0,d0
	bge.s loc_202e5a
	move.w #$fff0,d0
loc_202e5a:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202e3e
	move.w ($f728).w,d0
	bra.s loc_202e3e
	.incbin 11882, 16

sub_202e7a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202e8e
	subq.w #$5,d0
loc_202e8e:
	btst.b #$1,$22(a6)
	beq.s loc_202eae
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202efa
	subi.w #$40,d0
	bcc.s loc_202efa
	tst.b ($f75c).w
	bne.s loc_202f0c
	bra.s loc_202eba
loc_202eae:
	sub.w ($f73e).w,d0
	bne.s loc_202ec0
	tst.b ($f75c).w
	bne.s loc_202f0c
loc_202eba:
	clr.w ($f73c).w
	rts
loc_202ec0:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ee8
	move.w $14(a6),d1
	bpl.s loc_202ed0
	neg.w d1
loc_202ed0:
	cmpi.w #$800,d1
	bcc.s loc_202efa
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202f5a
	cmpi.w #$fffa,d0
	blt.s loc_202f24
	bra.s loc_202f12
loc_202ee8:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202f5a
	cmpi.w #$fffe,d0
	blt.s loc_202f24
	bra.s loc_202f12
loc_202efa:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202f5a
	cmpi.w #$fff0,d0
	blt.s loc_202f24
	bra.s loc_202f12
loc_202f0c:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202f12:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202f64
	bra.w loc_202f30
loc_202f24:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f30:
	cmp.w ($f72c).w,d1
	bgt.s loc_202f88
	cmpi.w #$ff00,d1
	bgt.s loc_202f54
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f88
loc_202f54:
	move.w ($f72c).w,d1
	bra.s loc_202f88
loc_202f5a:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f64:
	cmp.w ($f72e).w,d1
	blt.s loc_202f88
	subi.w #$800,d1
	bcs.s loc_202f84
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f88
loc_202f84:
	move.w ($f72e).w,d1
loc_202f88:
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
	bne.s loc_202fca
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202fc4
	bset.b #$0,($f754).w
	rts
loc_202fc4:
	bset.b #$1,($f754).w
loc_202fca:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_203000
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202ffa
	bset.b #$2,($f756).w
	bra.s loc_203000
loc_202ffa:
	bset.b #$3,($f756).w
loc_203000:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_203034
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_20302e
	bset.b #$0,($f756).w
	rts
loc_20302e:
	bset.b #$1,($f756).w
loc_203034:
	rts
	.incbin 12342, 54

sub_20306c:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20309a
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_203094
	bset.b #$0,($f756).w
	rts
loc_203094:
	bset.b #$1,($f756).w
loc_20309a:
	rts

sub_20309c:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030ce
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030c8
	bset.b d6,($f756).w
	bra.s loc_2030ce
loc_2030c8:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_2030ce:
	rts

sub_2030d0:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203102
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_2030fc
	bset.b d6,($f758).w
	bra.s loc_203102
loc_2030fc:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203102:
	rts

sub_203104:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203136
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203130
	bset.b d6,($f75a).w
	bra.s loc_203136
loc_203130:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203136:
	rts
	.incbin 12600, 44

sub_203164:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203222
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203318
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20331a
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203220
	bclr.b #$0,(a2)
	beq.s loc_2031d6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331c
loc_2031d6:
	bclr.b #$1,(a2)
	beq.s loc_2031f0
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331c
loc_2031f0:
	bclr.b #$2,(a2)
	beq.s loc_203206
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203372
loc_203206:
	bclr.b #$3,(a2)
	beq.s loc_203220
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203372
loc_203220:
	rts

sub_203222:
	lea (dat_20361a).l,a0
	btst.b #$0,($ff156c).l
	beq.s loc_203238
	lea (dat_20365c).l,a0
loc_203238:
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20324e
	bclr.b #$1,(a2)
	beq.s loc_203298
	move.w #$e0,d4
loc_20324e:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2032c8(pc,d0.w),a3
	beq.s loc_203280
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203546
	movem.l (a7)+,d4-d5
	bsr.w sub_20331c
	movea.l (a7)+,a0
	bra.s loc_203298
loc_203280:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203548
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203348
	movea.l (a7)+,a0
loc_203298:
	tst.b (a2)
	bne.s loc_20329e
	rts
loc_20329e:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2032b2
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2032b2:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2032d8
dat_2032c8:
	.incbin 13000, 16
loc_2032d8:
	moveq #$f,d6
	move.l #$800000,d7
loc_2032e0:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20330c
	btst.b d0,(a2)
	beq.s loc_20330c
	add.w d0,d0
	movea.l dat_2032c8(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	movem.l (a7)+,d4-d5
	bsr.w sub_203546
	bsr.w sub_2033a0
	movem.l (a7)+,d4-d5/a0
loc_20330c:
	addi.w #$10,d4
	dbf d6,loc_2032e0
	clr.b (a2)
	rts

sub_203318:
	rts

sub_20331a:
	rts

sub_20331c:
	moveq #$15,d6

sub_20331e:
	move.l #$800000,d7
	move.l d0,d1
loc_203326:
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	move.l d1,d0
	bsr.w sub_2033a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203326
	rts

sub_203348:
	move.l #$800000,d7
	move.l d0,d1
loc_203350:
	movem.l d4-d5,-(a7)
	bsr.w sub_203420
	move.l d1,d0
	bsr.w sub_2033a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203350
	rts

sub_203372:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20337c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	move.l d1,d0
	bsr.w sub_2033a0
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20337c
	rts

sub_2033a0:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033dc
	btst.b #$3,(a0)
	bne.s loc_2033bc
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033bc:
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
loc_2033dc:
	btst.b #$3,(a0)
	bne.s loc_2033fe
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
loc_2033fe:
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

sub_20341e:
	add.w (a3),d5

sub_203420:
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
	beq.s loc_20346e
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
loc_20346e:
	rts
	.incbin 13424, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20354c
	bsr.w sub_2033a0
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 13570, 68

sub_203546:
	add.w (a3),d5

sub_203548:
	add.w $4(a3),d4

sub_20354c:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13666, 28

sub_20357e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2035b4

sub_203598:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2035dc

sub_2035b4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035b8:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203546
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20331e
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2035b8
	rts
loc_2035dc:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035e0:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20361a).l,a0
	btst.b #$0,($ff156c).l
	beq.s loc_2035fa
	lea (dat_20365c).l,a0
loc_2035fa:
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	bsr.w sub_20369e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2035e0
	rts
dat_20361a:
	.incbin 13850, 66
dat_20365c:
	.incbin 13916, 50
dat_20368e:
	.incbin 13966, 16

sub_20369e:
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20368e(pc,d0.w),a3
	beq.s loc_2036c2
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203546
	movem.l (a7)+,d4-d5
	bsr.w sub_20331c
	bra.s loc_2036d6
loc_2036c2:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203548
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203348
loc_2036d6:
	rts

sub_2036d8:
	moveq #$0,d0
	lea (dat_20f8ba).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202454
	movea.l (a2)+,a0
	bsr.w sub_203724
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20051a
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203722
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203722
	bsr.w sub_202582
loc_203722:
	rts

sub_203724:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20372e:
	move.l d0,(a3)+
	dbf d1,loc_20372e
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203744
	lea ($a040).w,a3
	moveq #$2,d1

sub_203744:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237954).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20375e:
	move.w d1,d0
	movea.l a3,a0
loc_203762:
	move.b (a1)+,(a0)+
	dbf d0,loc_203762
	lea $80(a3),a3
	dbf d2,loc_20375e
	rts

sub_203772:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2037ec(pc,d0.w),d0
	jsr dat_2037ec(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203798
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203798:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2037c6
	bcc.s loc_2037c8
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2037bc
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2037bc:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2037c6:
	rts
loc_2037c8:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2037e0
	btst.b #$1,($d022).w
	beq.s loc_2037e0
	add.w d1,d1
	add.w d1,d1
loc_2037e0:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2037ec:
	.incbin 14316, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20393c(pc,d0.w),d0
	jmp dat_20393c(pc,d0.w)
dat_20393c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$310,($f726).w
	rts
	.incbin 14666, 404

sub_203ade:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203ae6:
	move.b (a0),d0
	beq.s loc_203afc
	add.w d0,d0
	add.w d0,d0
	lea (dat_203f00).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203afc:
	lea $40(a0),a0
	dbf d7,loc_203ae6
	rts

sub_203b06:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203b44
	bpl.s loc_203b36
	btst.b #$1,$2c(a0)
	beq.s loc_203b36
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203b44
loc_203b36:
	btst.b #$2,$2c(a0)
	bne.s loc_203b44
	addi.w #$38,$12(a0)
loc_203b44:
	tst.w $12(a0)
	bmi.s loc_203b58
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203b58

sub_203b52:
	move.w #$1000,$12(a0)
loc_203b58:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203b68:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203ba4
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203ba4
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203ba2
	neg.w d1
loc_203ba2:
	add.w d1,d0
loc_203ba4:
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

sub_203bbe:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203c2e
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203c4a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203c4a
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203c08
	cmpi.w #$800,d3
	bcs.s loc_203c1a
	subi.w #$800,d3
	bra.s loc_203c1a
loc_203c08:
	cmpi.w #$700,($f704).w
	bcs.s loc_203c1a
	cmpi.w #$100,d3
	bcc.s loc_203c1a
	addi.w #$800,d3
loc_203c1a:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203c4a
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203c4a
loc_203c2e:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203c4a
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203c4a:
	rts
	.incbin 15436, 30

sub_203c6a:
	movea.l a0,a1

sub_203c6c:
	moveq #$0,d1
	moveq #$f,d0
loc_203c70:
	move.l d1,(a1)+
	dbf d0,loc_203c70
	rts
dat_203c78:
	.incbin 15480, 16

sub_203c88:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203c94:
	tst.w (a4)
	beq.w loc_203d54
	moveq #$2,d6
loc_203c9c:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203d4c
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203d02
	movea.l dat_203c78(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203ce6
	cmpi.w #$800,d2
	bcs.s loc_203cf8
	subi.w #$800,d2
	bra.s loc_203cf8
loc_203ce6:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203cf8
	cmpi.w #$100,d2
	bcc.s loc_203cf8
	addi.w #$800,d2
loc_203cf8:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203d24
loc_203d02:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203d24
	.incbin 15628, 24
loc_203d24:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203d42
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203d46
loc_203d42:
	bsr.w sub_203d76
loc_203d46:
	bset.b #$7,$1(a0)
loc_203d4c:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203c9c
loc_203d54:
	lea $80(a4),a4
	dbf d7,loc_203c94
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203d6e
	move.l #$0,(a2)
	rts
loc_203d6e:
	move.b #$0,-$5(a2)
	rts

sub_203d76:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203dbc
	btst.l #$1,d4
	bne.w loc_203e0a
loc_203d88:
	cmpi.b #$50,d5
	beq.s loc_203dba
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
	bne.s loc_203db4
	addq.w #$1,d0
loc_203db4:
	move.w d0,(a2)+
	dbf d1,loc_203d88
loc_203dba:
	rts
loc_203dbc:
	btst.l #$1,d4
	bne.w loc_203e50
loc_203dc4:
	cmpi.b #$50,d5
	beq.s loc_203e08
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
	bne.s loc_203e02
	addq.w #$1,d0
loc_203e02:
	move.w d0,(a2)+
	dbf d1,loc_203dc4
loc_203e08:
	rts
loc_203e0a:
	cmpi.b #$50,d5
	beq.s loc_203e4e
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
	bne.s loc_203e48
	addq.w #$1,d0
loc_203e48:
	move.w d0,(a2)+
	dbf d1,loc_203e0a
loc_203e4e:
	rts
loc_203e50:
	cmpi.b #$50,d5
	beq.s loc_203ea2
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
	bne.s loc_203e9c
	addq.w #$1,d0
loc_203e9c:
	move.w d0,(a2)+
	dbf d1,loc_203e50
loc_203ea2:
	rts
	.incbin 16036, 92
dat_203f00:
	.incbin 16128, 246

sub_203ff6:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_204008
	move.w #$0,(a1)
	rts
loc_204008:
	tst.w (a1)
	bne.s loc_204012
	move.b #$1,$1(a1)
loc_204012:
	cmpi.w #$2a30,(a1)
	bcs.s loc_20405c
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20404e
	neg.w $10(a0)
loc_20404e:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205d88
loc_20405c:
	rts
	tst.b ($ff0f01).l
	bne.s loc_20407a
	cmpa.w #$d040,a0
	beq.s loc_20407a
	tst.b ($ff1906).l
	beq.s loc_20407a
	jmp (loc_2074ec).l
loc_20407a:
	move.b $2a(a0),d0
	beq.s loc_2040a4
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_204096
	cmpi.b #$2d,d0
	bcs.s loc_2040a0
	move.b #$2d,d0
	bra.s loc_2040a0
loc_204096:
	cmpi.b #$1e,d0
	bcs.s loc_2040a0
	move.b #$1e,d0
loc_2040a0:
	move.b d0,$2a(a0)
loc_2040a4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2040b2(pc,d0.w),d1
	jmp dat_2040b2(pc,d1.w)
dat_2040b2:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_2040bc:
	tst.b ($d300).w
	bne.s loc_2040fa
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_2040fa:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204122
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204122:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204156:
	tst.b ($ff1506).l
	bne.s loc_2041bc
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2041bc
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2041c0
	cmpi.b #$2f,d1
	bne.s loc_2041be
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2041bc
	tst.b $2c(a0)
	beq.s loc_2041bc
	jsr (sub_207cd8).l
	bne.s loc_2041bc
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2041b4
	moveq #$0,d0
loc_2041b4:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2041bc:
	rts
loc_2041be:
	rts

sub_2041c0:
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

sub_2041e6:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_2041f2
	neg.w d0
loc_2041f2:
	btst.b #$1,$2c(a0)
	beq.s loc_204202
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20422a
loc_204202:
	cmpi.w #$600,d0
	bcs.s loc_20422a
	tst.w $14(a0)
	bpl.s loc_20421c
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204238
	move.w #$e0,d1
	bra.s loc_204238
loc_20421c:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204238
	move.w #$60,d1
	bra.s loc_204238
loc_20422a:
	cmpi.w #$a0,d1
	beq.s loc_204238
	bcc.s loc_204236
	addq.w #$2,d1
	bra.s loc_204238
loc_204236:
	subq.w #$2,d1
loc_204238:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_2041e6
	bsr.w sub_204156
	tst.w ($ff1588).l
	beq.s loc_20425e
	btst.b #$4,($f605).w
	beq.s loc_20425e
	move.b #$1,($ff1906).l
	rts
loc_20425e:
	tst.b ($f7cc).w
	bne.s loc_20426a
	move.w ($f604).w,($f602).w
loc_20426a:
	btst.b #$0,$2c(a0)
	beq.s loc_20428e
	cmpi.b #$6,($ff1506).l
	bne.s loc_204288
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2042a6
loc_204288:
	bsr.w sub_204570
	bra.s loc_2042a6
loc_20428e:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2042ec(pc,d0.w),d1
	jsr dat_2042ec(pc,d1.w)
	jsr (sub_206840).l
loc_2042a6:
	bsr.s sub_2042fa
	bsr.w sub_2043ba
	bsr.w sub_2043d4
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2042ce
	tst.b $1c(a0)
	bne.s loc_2042ce
	move.b $1d(a0),$1c(a0)
loc_2042ce:
	bsr.w sub_205778
	tst.b $2c(a0)
	bmi.s loc_2042e6
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2042e6
	jsr (sub_207086).l
loc_2042e6:
	bsr.w sub_20562e
	rts
dat_2042ec:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2042fa:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20431e
	move.w $30(a0),d0
	beq.s loc_204310
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20431e
loc_204310:
	btst.b #$6,$2c(a0)
	bne.s loc_20431e
	jsr (sub_203bbe).l
loc_20431e:
	tst.b ($ff151f).l
	beq.s loc_204362
	tst.w $32(a0)
	beq.s loc_204362
	subq.w #$1,$32(a0)
	bne.s loc_204362
	tst.b ($ff1520).l
	bne.s loc_20435a
	tst.b ($ff1958).l
	bne.s loc_20435a
	tst.b ($ff152e).l
	bne.s loc_204354
	move.w #$e,d0
	jsr (sub_205d88).l
loc_204354:
	jsr (sub_201ad6).l
loc_20435a:
	move.b #$0,($ff151f).l
loc_204362:
	tst.b ($ff1520).l
	beq.s loc_2043b8
	tst.w $34(a0)
	beq.s loc_2043b8
	subq.w #$1,$34(a0)
	bne.s loc_2043b8
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2043b0
	tst.b ($ff1958).l
	bne.s loc_2043b0
	tst.b ($ff152e).l
	bne.s loc_2043aa
	move.w #$e,d0
	jsr (sub_205d88).l
loc_2043aa:
	jsr (sub_201ad6).l
loc_2043b0:
	move.b #$0,($ff1520).l
loc_2043b8:
	rts

sub_2043ba:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2043d4:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2043e0
loc_2043de:
	rts
loc_2043e0:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2043f2
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2043de
loc_2043f2:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204436
	bset.b #$6,$22(a0)
	bne.s loc_2043de
	bsr.w sub_20608c
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2043de
	bra.s loc_20446e
loc_204436:
	tst.w $12(a0)
	beq.s loc_20443e
	bpl.s loc_2043de
loc_20443e:
	bclr.b #$6,$22(a0)
	beq.s loc_2043de
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2043de
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20446e
	move.w #$f000,$12(a0)
loc_20446e:
	jsr (sub_207cd8).l
	bne.s loc_204482
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204482:
	rts

sub_204484:
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
	bcs.s loc_20455e
	move.l #$50000,d0
loc_20455e:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204570:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204596
	tst.b ($ff152e).l
	beq.s loc_20458c
	cmpi.b #$2,($ff152e).l
	bne.s loc_204596
loc_20458c:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204646
loc_204596:
	tst.b $2a(a0)
	bne.w loc_204654
	tst.b ($f784).w
	beq.w loc_204654
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2045b4
	neg.w d0
loc_2045b4:
	tst.w ($f786).w
	bne.s loc_2045c0
	move.w #$1,($f786).w
loc_2045c0:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045d6
	move.b #$1,($ff1502).l
	bra.w loc_205d84
loc_2045d6:
	cmpi.w #$d2,d1
	bcs.s loc_20462a
	cmpi.b #$2,($ff1522).l
	beq.s loc_204628
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204600
	move.w #$82,d0
	jsr (sub_205d88).l
	moveq #$0,d0
loc_204600:
	add.b ($f784).w,d0
	bpl.s loc_20460a
	moveq #$0,d0
	bra.s loc_204612
loc_20460a:
	cmpi.b #$3,d0
	bcs.s loc_204612
	moveq #$2,d0
loc_204612:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204484
	move.b #$2,($ff1522).l
loc_204628:
	rts
loc_20462a:
	cmpi.w #$5a,d1
	bcc.s loc_204642
	cmp.w d2,d0
	bcc.w loc_2040bc
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204642:
	cmp.w d2,d0
	bcc.s loc_204654
loc_204646:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204654:
	rts
	bsr.w sub_203ff6
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204686
	tst.b ($ff195b).l
	beq.s loc_204674
	cmpi.b #$79,$1a(a0)
	bne.s loc_2046b0
	bra.s loc_20467c
loc_204674:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2046b0
loc_20467c:
	bsr.w sub_204f18
	jmp (sub_203b06).l
loc_204686:
	bsr.w sub_20475e
	bsr.w sub_204570
	bsr.w sub_205002
	bsr.w sub_20512e
	bsr.w sub_2047d2
	bsr.w sub_204f84
	bsr.w sub_204f18
	jsr (sub_203b68).l
	bsr.w sub_200bdc
	bsr.w sub_2051ac
loc_2046b0:
	rts
	tst.b ($f7c7).w
	bne.s loc_2046cc
	cmpi.b #$15,$1c(a0)
	beq.s loc_2046cc
	tst.w $12(a0)
	bmi.s loc_2046cc
	move.b #$0,$1c(a0)
loc_2046cc:
	bsr.w sub_20475e
	bsr.w sub_204570
	bsr.w sub_2050ec
	bsr.w sub_204e38
	bsr.w sub_204f18
	jsr (sub_203b06).l
	btst.b #$6,$22(a0)
	beq.s loc_2046f4
	subi.w #$28,$12(a0)
loc_2046f4:
	bsr.w sub_2051f6
	bsr.w sub_20521a
	rts
	bsr.w sub_20475e
	bsr.w sub_204570
	bsr.w sub_205002
	bsr.w sub_20516a
	bsr.w sub_204c72
	bsr.w sub_204f18
	tst.b $2a(a0)
	bne.s loc_204722
	jsr (sub_203b68).l
loc_204722:
	bsr.w sub_200bdc
	bsr.w sub_2051ac
	rts
	bsr.w sub_20475e
	bsr.w sub_204570
	bsr.w sub_2050ec
	bsr.w sub_204e38
	bsr.w sub_204f18
	jsr (sub_203b06).l
	btst.b #$6,$22(a0)
	beq.s loc_204754
	subi.w #$28,$12(a0)
loc_204754:
	bsr.w sub_2051f6
	bsr.w sub_20521a
	rts

sub_20475e:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2047ca
	tst.w ($ff1506).l
	bne.s loc_2047ca
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2047cc).l,a2
loc_204792:
	move.b (a2)+,d0
	bmi.s loc_2047a2
	cmp.b d0,d1
	bne.s loc_204792
	bset.b #$1,$2c(a0)
	rts
loc_2047a2:
	bclr.b #$1,$2c(a0)
	beq.s loc_2047ca
	tst.w $12(a0)
	bpl.s loc_2047ca
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2047ca
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047ca
	neg.w $10(a0)
loc_2047ca:
	rts
dat_2047cc:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2047d2:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204afc
	tst.w $3e(a0)
	bne.w loc_204aac
	btst.b #$2,($f602).w
	beq.s loc_2047fa
	bsr.w sub_204b8c
loc_2047fa:
	btst.b #$3,($f602).w
	beq.s loc_204806
	bsr.w sub_204c02
loc_204806:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204aac
	tst.w $14(a0)
	beq.s loc_204826
	tst.b $2a(a0)
	beq.w loc_204aac
	bra.s loc_204832
loc_204826:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204832:
	btst.b #$3,$22(a0)
	beq.s loc_204884
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2048dc
	cmpi.b #$1e,$0(a1)
	bne.s loc_204864
	move.b #$0,$1c(a0)
	bra.w loc_204aac
loc_204864:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2048c0
	cmp.w d2,d1
	bge.s loc_2048ae
	bra.s loc_2048dc
loc_204884:
	jsr (sub_206dea).l
	cmpi.w #$c,d1
	blt.s loc_2048dc
	move.w #$ab,d0
	jsr (sub_2023b8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2048b8
loc_2048ae:
	btst.b #$0,$22(a0)
	bne.s loc_2048c8
	bra.s loc_2048d2
loc_2048b8:
	cmpi.b #$3,$37(a0)
	bne.s loc_2048dc
loc_2048c0:
	btst.b #$0,$22(a0)
	bne.s loc_2048d2
loc_2048c8:
	move.b #$32,$1c(a0)
	bra.w loc_204aac
loc_2048d2:
	move.b #$6,$1c(a0)
	bra.w loc_204aac
loc_2048dc:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2048f0
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2048f0:
	btst.b #$7,($f788).w
	bne.w loc_2049f4
	btst.b #$6,($f788).w
	bne.w loc_204a14
	btst.b #$1,($f602).w
	bne.w loc_204a14
	andi.b #$f,($f788).w
	beq.s loc_204928
	btst.b #$0,($f603).w
	beq.s loc_20493c
	bset.b #$7,($f788).w
	bra.w loc_204ad0
loc_204928:
	btst.b #$0,($f603).w
	beq.w loc_20493c
	move.b #$1,($f788).w
	bra.w loc_204ad0
loc_20493c:
	btst.b #$0,($f602).w
	beq.s loc_2049b8
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20499a
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20496c
	asr.w #$1,d2
	sub.w d2,d1
loc_20496c:
	btst.b #$0,$22(a0)
	beq.s loc_204978
	neg.w d0
	neg.w d1
loc_204978:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20498e
	cmp.w d0,d1
	ble.s loc_204994
	bra.s loc_204992
loc_20498e:
	cmp.w d1,d0
	ble.s loc_204994
loc_204992:
	move.w d1,d0
loc_204994:
	move.w d0,$14(a0)
	rts
loc_20499a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049b4
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2023b8).l
loc_2049b4:
	bra.w loc_204ad0
loc_2049b8:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2049d8
	move.w #$ab,d0
	jsr (sub_2023b8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204a14
loc_2049d8:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023b8).l
	bra.w loc_204aac
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2049f4:
	btst.b #$0,($f602).w
	beq.s loc_204a14
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204ad0
	addq.w #$2,($f73e).w
	bra.w loc_204ad0
loc_204a14:
	btst.b #$6,($f788).w
	bne.w loc_204a90
	andi.b #$f,($f788).w
	beq.s loc_204a38
	btst.b #$1,($f603).w
	beq.s loc_204a4a
	bset.b #$6,($f788).w
	bra.w loc_204ad0
loc_204a38:
	btst.b #$1,($f603).w
	beq.s loc_204a4a
	move.b #$1,($f788).w
	bra.w loc_204ad0
loc_204a4a:
	btst.b #$1,($f602).w
	beq.s loc_204aac
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204a8e
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a8e
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204a80
	neg.w $14(a0)
loc_204a80:
	move.w #$9c,d0
	jsr (sub_2023b8).l
	bsr.w sub_204fac
loc_204a8e:
	bra.s loc_204ad0
loc_204a90:
	btst.b #$1,($f602).w
	beq.s loc_204aac
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204ad0
	subq.w #$2,($f73e).w
	bra.s loc_204ad0
loc_204aac:
	cmpi.w #$60,($f73e).w
	bne.s loc_204ac6
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204ad0
	move.b #$0,($f788).w
	bra.s loc_204ad0
loc_204ac6:
	bcc.s loc_204acc
	addq.w #$4,($f73e).w
loc_204acc:
	subq.w #$2,($f73e).w
loc_204ad0:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204afc
	move.w $14(a0),d0
	beq.s loc_204afc
	bmi.s loc_204af0
	sub.w d5,d0
	bcc.s loc_204aea
	move.w #$0,d0
loc_204aea:
	move.w d0,$14(a0)
	bra.s loc_204afc
loc_204af0:
	add.w d5,d0
	bcc.s loc_204af8
	move.w #$0,d0
loc_204af8:
	move.w d0,$14(a0)
loc_204afc:
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204b1a:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204b8a
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204b8a
	bmi.s loc_204b32
	neg.w d1
loc_204b32:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206caa
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204b8a
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204b86
	cmpi.b #$40,d0
	beq.s loc_204b74
	cmpi.b #$80,d0
	beq.s loc_204b6e
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b6e:
	sub.w d1,$12(a0)
	rts
loc_204b74:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b86:
	add.w d1,$12(a0)
loc_204b8a:
	rts

sub_204b8c:
	tst.b $2a(a0)
	bne.s loc_204c00
	move.w $14(a0),d0
	beq.s loc_204b9a
	bpl.s loc_204bca
loc_204b9a:
	bset.b #$0,$22(a0)
	bne.s loc_204bae
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204bae:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204bbe
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204bbe
	move.w d1,d0
loc_204bbe:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204bca:
	sub.w d4,d0
	bcc.s loc_204bd2
	move.w #$ff80,d0
loc_204bd2:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c00
	cmpi.w #$400,d0
	blt.s loc_204c00
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023b8).l
loc_204c00:
	rts

sub_204c02:
	tst.b $2a(a0)
	bne.s loc_204c70
	move.w $14(a0),d0
	bmi.s loc_204c3a
	bclr.b #$0,$22(a0)
	beq.s loc_204c22
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c22:
	cmp.w d6,d0
	bge.s loc_204c2e
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c2e
	move.w d6,d0
loc_204c2e:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c3a:
	add.w d4,d0
	bcc.s loc_204c42
	move.w #$80,d0
loc_204c42:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c70
	cmpi.w #$fc00,d0
	bgt.s loc_204c70
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023b8).l
loc_204c70:
	rts

sub_204c72:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204dbc
	tst.w $3e(a0)
	bne.s loc_204caa
	btst.b #$2,($f602).w
	beq.s loc_204c9e
	bsr.w sub_204df2
loc_204c9e:
	btst.b #$3,($f602).w
	beq.s loc_204caa
	bsr.w sub_204e16
loc_204caa:
	tst.b $2a(a0)
	beq.w loc_204d54
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204cca
	asr.w #$1,d2
	sub.w d2,d1
loc_204cca:
	btst.b #$0,$22(a0)
	beq.s loc_204cd6
	neg.w d0
	neg.w d1
loc_204cd6:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204cec
	cmp.w d0,d1
	ble.s loc_204cf2
	bra.s loc_204cf0
loc_204cec:
	cmp.w d1,d0
	ble.s loc_204cf2
loc_204cf0:
	move.w d1,d0
loc_204cf2:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204d26
	rts
loc_204d00:
	move.w #$ab,d0
	jsr (sub_2023b8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204d86
loc_204d26:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204d00
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023b8).l
	btst.b #$0,$22(a0)
	bne.s loc_204d4c
	bsr.w sub_204e16
	bra.s loc_204d54
loc_204d4c:
	bsr.w sub_204df2
	bra.s loc_204d54
	dc.b $4e,$75
loc_204d54:
	move.w $14(a0),d0
	beq.s loc_204d76
	bmi.s loc_204d6a
	sub.w d5,d0
	bcc.s loc_204d64
	move.w #$0,d0
loc_204d64:
	move.w d0,$14(a0)
	bra.s loc_204d76
loc_204d6a:
	add.w d5,d0
	bcc.s loc_204d72
	move.w #$0,d0
loc_204d72:
	move.w d0,$14(a0)
loc_204d76:
	tst.w $14(a0)
	bne.s loc_204dbc
	move.w #$ab,d0
	jsr (sub_2023b8).l
loc_204d86:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204da6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204db6
loc_204da6:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204db6:
	move.b #$5,$1c(a0)
loc_204dbc:
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204de0
	move.w #$1000,d1
loc_204de0:
	cmpi.w #$f000,d1
	bge.s loc_204dea
	move.w #$f000,d1
loc_204dea:
	move.w d1,$10(a0)
	bra.w loc_204b1a

sub_204df2:
	move.w $14(a0),d0
	beq.s loc_204dfa
	bpl.s loc_204e08
loc_204dfa:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e08:
	sub.w d4,d0
	bcc.s loc_204e10
	move.w #$ff80,d0
loc_204e10:
	move.w d0,$14(a0)
	rts

sub_204e16:
	move.w $14(a0),d0
	bmi.s loc_204e2a
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e2a:
	add.w d4,d0
	bcc.s loc_204e32
	move.w #$80,d0
loc_204e32:
	move.w d0,$14(a0)
	rts

sub_204e38:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204e72
	tst.w ($ff1506).l
	bne.s loc_204e72
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204e6a
	cmpi.w #$840,$8(a0)
	bcc.s loc_204e6a
	rts
loc_204e6a:
	btst.b #$1,$2c(a0)
	bne.s loc_204ea2
loc_204e72:
	btst.b #$2,($f602).w
	beq.s loc_204e8c
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204e8c
	move.w d1,d0
loc_204e8c:
	btst.b #$3,($f602).w
	beq.s loc_204ea2
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204ea2
	move.w d6,d0
loc_204ea2:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204eb8
	bcc.s loc_204eb4
	addq.w #$4,($f73e).w
loc_204eb4:
	subq.w #$2,($f73e).w
loc_204eb8:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204ee6
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204ee6
	bmi.s loc_204eda
	sub.w d1,d0
	bcc.s loc_204ed4
	move.w #$0,d0
loc_204ed4:
	move.w d0,$10(a0)
	rts
loc_204eda:
	sub.w d1,d0
	bcs.s loc_204ee2
	move.w #$0,d0
loc_204ee2:
	move.w d0,$10(a0)
loc_204ee6:
	rts
	.incbin 20200, 48

sub_204f18:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204f6c
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204f46
	addi.w #$38,d0
loc_204f46:
	cmp.w d1,d0
	bls.s loc_204f6c
loc_204f4a:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204f5a
	rts
loc_204f5a:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207318
	move.b #$6,$24(a0)
	rts
loc_204f6c:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204f4a

sub_204f84:
	tst.b ($f7ca).w
	bne.s loc_204faa
	move.w $14(a0),d0
	bpl.s loc_204f92
	neg.w d0
loc_204f92:
	cmpi.w #$80,d0
	bcs.s loc_204faa
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204faa
	btst.b #$1,($f602).w
	bne.s sub_204fac
loc_204faa:
	rts

sub_204fac:
	btst.b #$2,$22(a0)
	beq.s loc_204fb6
	bra.s loc_204fe6
loc_204fb6:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204fd6
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204fe6
loc_204fd6:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204fe6:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_205000
	cmpi.w #$200,$14(a0)
	bcc.s loc_205000
	move.w #$200,$14(a0)
loc_205000:
	rts

sub_205002:
	tst.b $2a(a0)
	beq.s loc_20500a
	rts
loc_20500a:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_20501c
	tst.w $14(a0)
	beq.w loc_2050e2
loc_20501c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2050e2
	btst.b #$3,$22(a0)
	beq.s loc_205038
	jsr (sub_205d0e).l
	beq.s loc_205068
loc_205038:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206d14
	cmpi.w #$6,d1
	blt.w loc_2050e2
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_20505e
	move.w #$380,d2
loc_20505e:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_205068:
	jsr (sub_2007dc).l
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
	jsr (sub_2023b8).l
	btst.b #$2,$22(a0)
	bne.s loc_2050e4
	tst.b ($ff195b).l
	beq.s loc_2050c6
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_2050d6
loc_2050c6:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2050d6:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_2050e2:
	rts
loc_2050e4:
	bset.b #$4,$22(a0)
	rts

sub_2050ec:
	tst.b $3c(a0)
	beq.s loc_20511e
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205102
	move.w #$fe00,d1
loc_205102:
	cmp.w $12(a0),d1
	ble.s loc_20511c
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20511c
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20511c:
	rts
loc_20511e:
	cmpi.w #$f040,$12(a0)
	bge.s loc_20512c
	move.w #$f040,$12(a0)
loc_20512c:
	rts

sub_20512e:
	tst.b $2a(a0)
	bne.s loc_205168
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205168
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205168
	bmi.s loc_205164
	tst.w d0
	beq.s loc_205162
	add.w d0,$14(a0)
loc_205162:
	rts
loc_205164:
	add.w d0,$14(a0)
loc_205168:
	rts

sub_20516a:
	tst.b $2a(a0)
	bne.s loc_2051aa
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2051aa
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2051a0
	tst.w d0
	bpl.s loc_20519a
	asr.l #$2,d0
loc_20519a:
	add.w d0,$14(a0)
	rts
loc_2051a0:
	tst.w d0
	bmi.s loc_2051a6
	asr.l #$2,d0
loc_2051a6:
	add.w d0,$14(a0)
loc_2051aa:
	rts

sub_2051ac:
	nop
	tst.b $38(a0)
	bne.s loc_2051ee
	tst.w $3e(a0)
	bne.s loc_2051f0
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2051ee
	move.w $14(a0),d0
	bpl.s loc_2051d0
	neg.w d0
loc_2051d0:
	cmpi.w #$280,d0
	bcc.s loc_2051ee
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2051ee:
	rts
loc_2051f0:
	subq.w #$1,$3e(a0)
	rts

sub_2051f6:
	btst.b #$1,$2c(a0)
	bne.s loc_205218
	move.b $26(a0),d0
	beq.s loc_205218
	bpl.s loc_20520e
	addq.b #$2,d0
	bcc.s loc_20520c
	moveq #$0,d0
loc_20520c:
	bra.s loc_205214
loc_20520e:
	subq.b #$2,d0
	bcc.s loc_205214
	moveq #$0,d0
loc_205214:
	move.b d0,$26(a0)
loc_205218:
	rts

sub_20521a:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a74).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2052fe
	cmpi.b #$80,d0
	beq.w loc_205360
	cmpi.b #$c0,d0
	beq.w loc_2053bc
	bsr.w sub_20702a
	tst.w d1
	bpl.s loc_20526c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20526c:
	bsr.w sub_206e8c
	tst.w d1
	bpl.s loc_20527e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20527e:
	bsr.w sub_206d3c
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2052fc
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20529c
	cmp.b d2,d0
	blt.s loc_2052fc
loc_20529c:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20541e
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052da
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2052cc
	asr.w $12(a0)
	bra.s loc_2052ee
loc_2052cc:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2052da:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2052ee
	move.w #$fc0,$12(a0)
loc_2052ee:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052fc
	neg.w $14(a0)
loc_2052fc:
	rts
loc_2052fe:
	bsr.w sub_20702a
	tst.w d1
	bpl.s loc_205318
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205318:
	bsr.w sub_206ee4
	tst.w d1
	bpl.s loc_205332
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205330
	move.w #$0,$12(a0)
loc_205330:
	rts
loc_205332:
	tst.w $12(a0)
	bmi.s loc_20535e
	bsr.w sub_206d3c
	tst.w d1
	bpl.s loc_20535e
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20541e
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20535e:
	rts
loc_205360:
	bsr.w sub_20702a
	tst.w d1
	bpl.s loc_205372
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205372:
	bsr.w sub_206e8c
	tst.w d1
	bpl.s loc_205384
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205384:
	bsr.w sub_206ee4
	tst.w d1
	bpl.s loc_2053ba
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2053a4
	move.w #$0,$12(a0)
	rts
loc_2053a4:
	move.b d3,$26(a0)
	bsr.w sub_205490
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2053ba
	neg.w $14(a0)
loc_2053ba:
	rts
loc_2053bc:
	bsr.w sub_206e8c
	tst.w d1
	bpl.s loc_2053d6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053d6:
	bsr.w sub_206ee4
	tst.w d1
	bpl.s loc_2053f0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2053ee
	move.w #$0,$12(a0)
loc_2053ee:
	rts
loc_2053f0:
	tst.w $12(a0)
	bmi.s loc_20541c
	bsr.w sub_206d3c
	tst.w d1
	bpl.s loc_20541c
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20541e
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20541c:
	rts

sub_20541e:
	btst.b #$4,$22(a0)
	beq.s loc_205428
	nop
loc_205428:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205482
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205462
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205472
loc_205462:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205472:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2023b8).l
loc_205482:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205490:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203b68).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2054ca
	subi.w #$20,$12(a0)
loc_2054ca:
	jsr (sub_206840).l
	bsr.w sub_2054e6
	bsr.w sub_204f18
	bsr.w sub_2043ba
	bsr.w sub_205778
	jmp (sub_203bbe).l

sub_2054e6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_207318
	bsr.w sub_20521a
	btst.b #$1,$22(a0)
	bne.s loc_205520
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205520:
	rts
	.incbin 21794, 268

sub_20562e:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205656
	cmpi.b #$5,($ff1506).l
	beq.s loc_205656
	cmpi.b #$2,($ff1506).l
	beq.s loc_205656
	tst.b ($ff1506).l
	bne.w loc_205718
loc_205656:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205694
	tst.b ($ff1506).l
	bne.w loc_20571a
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20571a
	bra.s loc_20569c
loc_205694:
	cmp.b ($f7af).w,d1
	beq.w loc_20571a
loc_20569c:
	cmp.b ($f7ac).w,d1
	beq.s loc_2056cc
	cmp.b ($f7ad).w,d1
	beq.s loc_2056b0
	bclr.b #$6,$1(a0)
	rts
loc_2056b0:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205732
	btst.b #$1,$22(a0)
	beq.s loc_2056cc
	bclr.b #$6,$1(a0)
	rts
loc_2056cc:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2056de
	bclr.b #$6,$1(a0)
	rts
loc_2056de:
	cmpi.b #$e0,d2
	bcs.s loc_2056ec
	bset.b #$6,$1(a0)
	rts
loc_2056ec:
	btst.b #$6,$1(a0)
	bne.s loc_205708
	move.b $26(a0),d1
	beq.s loc_205718
	cmpi.b #$80,d1
	bhi.s loc_205718
	bset.b #$6,$1(a0)
	rts
loc_205708:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205718
	bclr.b #$6,$1(a0)
loc_205718:
	rts
loc_20571a:
	btst.b #$2,$22(a0)
	bne.s loc_20572c
	move.w #$9c,d0
	jsr (sub_2023b8).l
loc_20572c:
	jmp (sub_204fac).l
loc_205732:
	tst.w $12(a0)
	bmi.s loc_205776
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20576a
	cmpi.w #$38,d1
	bcs.s loc_205762
	cmpi.w #$80,d1
	bcs.s loc_205776
loc_20575a:
	bclr.b #$6,$1(a0)
	rts
loc_205762:
	bset.b #$6,$1(a0)
	rts
loc_20576a:
	cmpi.w #$38,d1
	bcs.s loc_20575a
	cmpi.w #$80,d1
	bcc.s loc_205762
loc_205776:
	rts

sub_205778:
	lea (dat_205a68).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20579a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20579a:
	bsr.w sub_205a0a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205812
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2057e0
	move.b d0,$1e(a0)

sub_2057c4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2057d8
	bpl.s loc_2057d8
	cmpi.b #$fd,d0
	bge.s loc_2057e2
loc_2057d8:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2057e0:
	rts
loc_2057e2:
	addq.b #$1,d0
	bne.s loc_2057f2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2057d8
loc_2057f2:
	addq.b #$1,d0
	bne.s loc_205806
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2057d8
loc_205806:
	addq.b #$1,d0
	bne.s loc_205810
	move.b $2(a1,d1.w),$1c(a0)
loc_205810:
	rts
loc_205812:
	subq.b #$1,$1e(a0)
	bpl.s loc_2057e0
	addq.b #$1,d0
	bne.w loc_2058cc
	tst.b ($ff195b).l
	bne.w loc_205994
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20583a
	not.b d0
loc_20583a:
	btst.b #$1,$2c(a0)
	bne.s loc_205848
	addi.b #$10,d0
	bra.s loc_20584a
loc_205848:
	addq.b #$8,d0
loc_20584a:
	bpl.s loc_20584e
	moveq #$3,d1
loc_20584e:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205940
	move.w $14(a0),d2
	bpl.s loc_20586c
	neg.w d2
loc_20586c:
	btst.b #$1,$2c(a0)
	beq.s loc_205884
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205c6a).l,a1
	bra.s loc_2058ae
loc_205884:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c44).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2058ae
	lea (dat_205ae8).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2058ae
	lea (dat_205ae0).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2058ae:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058bc
	moveq #$0,d2
loc_2058bc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2057c4
	add.b d3,$1a(a0)
	rts
loc_2058cc:
	addq.b #$1,d0
	bne.s loc_20593c
	move.w $14(a0),d2
	bpl.s loc_2058d8
	neg.w d2
loc_2058d8:
	lea (dat_205bc6).l,a1
	tst.b ($ff195b).l
	bne.s loc_205916
	lea (dat_205af8).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20590a
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205916
	lea (dat_205c72).l,a1
	bra.s loc_205916
loc_20590a:
	cmpi.w #$600,d2
	bcc.s loc_205916
	lea (dat_205af0).l,a1
loc_205916:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205920
	moveq #$0,d2
loc_205920:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057c4
loc_20593c:
	addq.b #$1,d0
	bne.s loc_205980
loc_205940:
	move.w $14(a0),d2
	bmi.s loc_205948
	neg.w d2
loc_205948:
	addi.w #$800,d2
	bpl.s loc_205950
	moveq #$0,d2
loc_205950:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205bd8).l,a1
	tst.b ($ff195b).l
	bne.s loc_20596a
	lea (dat_205b00).l,a1
loc_20596a:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057c4
loc_205980:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205994:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2059a6
	not.b d0
loc_2059a6:
	addi.b #$10,d0
	bpl.s loc_2059ae
	moveq #$0,d1
loc_2059ae:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2059dc
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2058cc
loc_2059dc:
	move.w $14(a0),d2
	bpl.s loc_2059e4
	neg.w d2
loc_2059e4:
	lea (dat_205bc0).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2059f6
	lea (dat_205bba).l,a1
loc_2059f6:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a00
	moveq #$0,d2
loc_205a00:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2057c4

sub_205a0a:
	tst.b ($ff195b).l
	beq.s loc_205a16
	move.b dat_205a18(pc,d0.w),d0
loc_205a16:
	rts
dat_205a18:
	.incbin 23064, 80
dat_205a68:
	.incbin 23144, 120
dat_205ae0:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205ae8:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205af0:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205af8:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b00:
	.incbin 23296, 186
dat_205bba:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205bc0:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205bc6:
	.incbin 23494, 18
dat_205bd8:
	.incbin 23512, 108
dat_205c44:
	.incbin 23620, 38
dat_205c6a:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205c72:
	.incbin 23666, 56

sub_205caa:
	tst.b (a0)
	beq.w loc_205d0c
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205d0c
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205d0c
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205cde:
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
loc_205cf8:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205cf8
	dbf d1,loc_205cde
loc_205d0c:
	rts

sub_205d0e:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205d82
	move.w #$98,d0
	jsr (sub_2023b8).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a74).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205d70
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205d70:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205d82:
	rts
loc_205d84:
	move.w #$e,d0

sub_205d88:
	cmpi.w #$67,d0
	bne.s loc_205d96
	move.b #$1,($ff1958).l
loc_205d96:
	move.w d0,($a12010).l
loc_205d9c:
	move.w ($a12020).l,d0
	beq.s loc_205d9c
	cmp.w ($a12020).l,d0
	bne.s loc_205d9c
	move.w #$0,($a12010).l
loc_205db4:
	move.w ($a12020).l,d0
	bne.s loc_205db4
	move.w ($a12020).l,d0
	bne.s loc_205db4
	rts
	dc.b $00,$00

sub_205dc8:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205de4
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205de4:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e24
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e26
loc_205e00:
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
loc_205e24:
	rts
loc_205e26:
	addq.b #$1,d0
	bne.s loc_205e36
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e00
loc_205e36:
	addq.b #$1,d0
	bne.s loc_205e4a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e00
loc_205e4a:
	addq.b #$1,d0
	bne.s loc_205e54
	move.b $2(a1,d1.w),$1c(a0)
loc_205e54:
	addq.b #$1,d0
	bne.s loc_205e5c
	addq.b #$2,$24(a0)
loc_205e5c:
	addq.b #$1,d0
	bne.s loc_205e6a
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205e6a:
	addq.b #$1,d0
	bne.s loc_205e72
	addq.b #$2,$25(a0)
loc_205e72:
	rts

sub_205e74:
	move.b ($ff1522).l,($ff1523).l
	move.w ($d008).w,($ff1524).l
	move.w ($d00c).w,($ff1526).l
	move.b ($f64d).w,($ff1543).l
	move.w ($f72e).w,($ff1530).l
	move.w ($f700).w,($ff1532).l
	move.w ($f704).w,($ff1534).l
	move.w ($f708).w,($ff1536).l
	move.w ($f70c).w,($ff1538).l
	move.w ($f710).w,($ff153a).l
	move.w ($f714).w,($ff153c).l
	move.w ($f718).w,($ff153e).l
	move.w ($f71c).w,($ff1540).l
	move.w ($f648).w,($ff1542).l
	move.b ($f64d).w,($ff1543).l
	move.b ($f64e).w,($ff1544).l
	move.l ($ff1514).l,d0
	cmpi.l #$50000,d0
	bcs.s loc_205f0a
	move.l #$50000,d0
loc_205f0a:
	move.l d0,($ff152a).l
	move.b ($ff195b).l,($ff1591).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f36(pc,d0.w),d0
	jsr dat_205f36(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_205f36:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$23c292,$4(a0)
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_205f7c
	move.b #$1,$2e(a0)
	bra.s loc_205f82
loc_205f7c:
	move.b #$e3,$20(a0)
loc_205f82:
	jsr (sub_207cd8).l
	bne.s loc_205ff4
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205f9e
	addq.b #$2,$24(a1)
loc_205f9e:
	move.l #$23c292,$4(a1)
	move.w #$6cb,$2(a1)
	move.b #$4,$1(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$3,$18(a1)
	move.b #$1,$1a(a1)
	move.l a0,$30(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$20,$c(a1)
	move.w $8(a0),$2a(a1)
	move.w $c(a0),$2c(a1)
	subi.w #$18,$2c(a1)
	rts
loc_205ff4:
	jmp (sub_203c6a).l
	tst.b $2e(a0)
	bne.s loc_20602e
	tst.b $21(a0)
	beq.s loc_20602e
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205e74
	move.w #$ae,d0
	jmp (sub_2023b8).l
loc_20602e:
	rts
	tst.b $2e(a0)
	bne.s loc_206046
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_206080
	move.b #$1,$2e(a0)
loc_206046:
	addq.b #$8,$34(a0)
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_2007dc).l
	muls.w #$8,d0
	lsr.l #$8,d0
	move.w $2a(a0),$8(a0)
	add.w d0,$8(a0)
	muls.w #$fff8,d1
	lsr.l #$8,d1
	move.w $2c(a0),$c(a0)
	add.w d1,$c(a0)
	tst.b $34(a0)
	bne.s loc_206080
	addq.b #$2,$24(a0)
loc_206080:
	rts
	lea (dat_23c28c).l,a1
	bra.w sub_205dc8

sub_20608c:
	rts
	.incbin 24718, 116

sub_206102:
	tst.b $25(a0)
	bne.s loc_206132
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207cd8).l
	bne.s loc_206132
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206132:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206142(pc,d0.w),d0
	jmp dat_206142(pc,d0.w)
dat_206142:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_20616a
	andi.b #$7f,$2(a0)
loc_20616a:
	move.l #$23c0fa,$4(a0)
	bsr.s sub_206102
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206198
	move.w #$100,$1c(a0)
loc_206198:
	lea (dat_23c0e6).l,a1
	bsr.w sub_205dc8
	jmp (sub_203bbe).l
	tst.b $25(a0)
	beq.s loc_2061b4
	jmp (sub_203c6a).l
loc_2061b4:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061d6(pc,d0.w),d0
	jsr dat_2061d6(pc,d0.w)
	jmp (sub_203bbe).l
dat_2061d6:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_206204
	andi.b #$7f,$2(a0)
loc_206204:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_20622a
	bsr.w sub_206296
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_20628c
loc_20622a:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206dea).l
	tst.w d1
	bpl.s loc_206288
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206272
	bsr.w sub_206296
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2062bc
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206272:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_20628c
loc_206288:
	addq.w #$2,$c(a0)
loc_20628c:
	lea (dat_2336bc).l,a1
	bra.w sub_205dc8

sub_206296:
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

sub_2062bc:
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
	bra.s loc_20628c
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_20628c
	.incbin 25336, 86
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206368(pc,d0.w),d0
	jsr dat_206368(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_206368:
	.incbin 25448, 348
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2064d2(pc,d0.w),d1
	jmp dat_2064d2(pc,d1.w)
dat_2064d2:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23bf0e,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_206514
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_206514
	addq.b #$2,$24(a0)
loc_206514:
	rts
	tst.b ($ff151e).l
	beq.s loc_206570
	tst.b ($ff1521).l
	bne.s loc_20656e
	tst.b ($ff151f).l
	bne.s loc_20656e
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20655e
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20655e
	andi.b #$7f,$2(a0)
loc_20655e:
	lea (dat_23bde6).l,a1
	jsr (sub_205dc8).l
	bra.w loc_20660e
loc_20656e:
	rts
loc_206570:
	jmp (sub_203c6a).l
	.incbin 25974, 24
	tst.b ($ff1521).l
	bne.s loc_20659c
	jmp (sub_203c6a).l
loc_20659c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2065ba
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2065ba
	andi.b #$7f,$2(a0)
loc_2065ba:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_2065cc
	subq.b #$4,d1
loc_2065cc:
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
	bcs.s loc_2065e8
	moveq #$0,d1
loc_2065e8:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23bde6).l,a1
	jsr (sub_205dc8).l
loc_20660e:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_206620
	rts
loc_206620:
	cmp.b $24(a0),d0
	beq.s loc_206636
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206636:
	jmp (sub_203bbe).l
loc_20663c:
	bclr.b #$7,($ff156b).l
	beq.s loc_20668a
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20668c(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206660:
	move.l (a1)+,(a2)+
	dbf d0,loc_206660
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20668a:
	rts
dat_20668c:
	.incbin 26252, 236
loc_206778:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206786:
	bset.b #$2,$22(a1)
	bne.s loc_2067a4
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2067a4:
	rts
	dc.b $12,$38,$f6,$04,$0c,$28
loc_2067ac:
	ori.b #$28,d4
	beq.s loc_2067f2
	cmpi.b #$2,$28(a0)
	bne.s loc_2067c2
	tst.w $12(a1)
	bpl.s loc_206786
	bra.s loc_2067c8
loc_2067c2:
	tst.w $12(a1)
	bmi.s loc_206786
loc_2067c8:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2067da
	btst.l #$2,d1
	beq.s loc_206786
	neg.w d0
loc_2067da:
	cmpi.b #$2,$28(a0)
	beq.s loc_2067e8
	bset.b #$1,$22(a1)
loc_2067e8:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206786
loc_2067f2:
	tst.w $10(a1)
	bmi.s loc_206786
	btst.l #$0,d1
	beq.w loc_206786
	move.w #$f600,d0
	bra.w loc_206778
	.incbin 26632, 56

sub_206840:
	bsr.s sub_206844
loc_206842:
	rts

sub_206844:
	tst.b ($f7a7).w
	bne.s loc_206842
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f4a).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_2068a4
	bne.w loc_206a94
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f4a).l
	move.w (a1),d0
	andi.w #$7ff,d0
	bsr.s sub_2068a4
	bne.w loc_206a94
	rts

sub_2068a4:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2068bc
	add.b ($ff156a).l,d1
loc_2068bc:
	add.w d1,d1
	move.w dat_2068e0(pc,d1.w),d1
	lea dat_2068e0(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2068cc:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068dc
	addq.w #$2,d1
	dbf d6,loc_2068cc
	moveq #$0,d0
	rts
loc_2068dc:
	moveq #$1,d0
	rts
dat_2068e0:
	.incbin 26848, 436
loc_206a94:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_206ab4
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_206ab4
	move.l #$20000,d0
loc_206ab4:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_206ac4
	neg.l d0
	neg.b d1
loc_206ac4:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_206caa).l
	tst.w d1
	bpl.s loc_206ae2
	tst.b ($ff158f).l
	beq.s loc_206ade
	neg.w d1
loc_206ade:
	add.w d1,$8(a0)
loc_206ae2:
	rts
loc_206ae4:
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
	bne.s loc_206b9e
	move.b ($ff1593).l,($ff195b).l
loc_206b9e:
	tst.b ($ff1522).l
	bpl.s loc_206bb4
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206bb4:
	rts

sub_206bb6:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ae4
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
	bne.s loc_206c70
	move.b ($ff1591).l,($ff195b).l
loc_206c70:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c92
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c92:
	tst.b ($ff1522).l
	bpl.s loc_206ca8
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206ca8:
	rts

sub_206caa:
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
	bpl.s loc_206ce6
	move.b d1,d0
	bpl.s loc_206ce0
	subq.b #$1,d0
loc_206ce0:
	addi.b #$20,d0
	bra.s loc_206cf0
loc_206ce6:
	move.b d1,d0
	bpl.s loc_206cec
	addq.b #$1,d0
loc_206cec:
	addi.b #$1f,d0
loc_206cf0:
	andi.b #$c0,d0
	beq.w loc_206dc0
	cmpi.b #$80,d0
	beq.w loc_206f5c
	andi.b #$38,d1
	bne.s loc_206d08
	addq.w #$8,d2
loc_206d08:
	cmpi.b #$40,d0
	beq.w loc_207032
	bra.w loc_206e94

sub_206d14:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206fba
	cmpi.b #$80,d0
	beq.w sub_206ee4
	cmpi.b #$c0,d0
	beq.w loc_206e24

sub_206d3c:
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
	jsr (sub_201132).l
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
	jsr (sub_201132).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206da0:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206dae
	move.b ($f768).w,d3
	exg d0,d1
loc_206dae:
	btst.l #$0,d3
	beq.s loc_206db6
	move.b d2,d3
loc_206db6:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206dc0:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201132).l
	move.b #$0,d2
loc_206ddc:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206de8
	move.b d2,d3
loc_206de8:
	rts

sub_206dea:
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
	jsr (sub_201132).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e22
	move.b #$0,d3
loc_206e22:
	rts
loc_206e24:
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
	jsr (sub_2012a2).l
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
	jsr (sub_2012a2).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206da0

sub_206e8c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e94:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012a2).l
	move.b #$c0,d2
	bra.w loc_206ddc
	dc.b $d6,$68,$00,$08,$34,$28,$00,$0c
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012a2).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ee2
	move.b #$c0,d3
loc_206ee2:
	rts

sub_206ee4:
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
	jsr (sub_201132).l
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
	jsr (sub_201132).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206da0

sub_206f54:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f5c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201132).l
	move.b #$80,d2
	bra.w loc_206ddc
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
	jsr (sub_201132).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206fb8
	move.b #$80,d3
loc_206fb8:
	rts
loc_206fba:
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
	jsr (sub_2012a2).l
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
	jsr (sub_2012a2).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206da0

sub_20702a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207032:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012a2).l
	move.b #$40,d2
	bra.w loc_206ddc
	.incbin 28758, 48

sub_207086:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_2070aa
	addi.w #$c,d3
	moveq #$a,d5
loc_2070aa:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2070b8:
	tst.b $1(a1)
	bpl.s loc_2070c4
	move.b $20(a1),d0
	bne.s loc_2070d0
loc_2070c4:
	lea $40(a1),a1
	dbf d6,loc_2070b8
	moveq #$0,d0
	rts
loc_2070d0:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20746e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070f8
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070fe
	bra.w loc_2070c4
loc_2070f8:
	cmp.w d4,d0
	bhi.w loc_2070c4
loc_2070fe:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_207116
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_20711c
	bra.w loc_2070c4
loc_207116:
	cmp.w d5,d0
	bhi.w loc_2070c4
loc_20711c:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207190
	cmpi.b #$c0,d1
	beq.w loc_207370
	tst.b d1
	bmi.w sub_20725a
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207154
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207152
	addq.b #$2,$24(a1)
loc_207152:
	rts
loc_207154:
	tst.w $12(a0)
	bpl.s loc_20717e
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20718e
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20718e
	addq.b #$4,$25(a1)
	rts
loc_20717e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20718e
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20718e:
	rts

sub_207190:
	tst.b ($ff1521).l
	bne.s loc_2071aa
	tst.b ($ff151f).l
	bne.s loc_2071aa
	cmpi.b #$2,$1c(a0)
	bne.w sub_20725a
loc_2071aa:
	tst.b $21(a1)
	beq.s loc_2071d4
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071d2
	bset.b #$7,$22(a1)
loc_2071d2:
	rts
loc_2071d4:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071ec
	moveq #$6,d0
loc_2071ec:
	move.w d0,$3e(a1)
	move.w dat_20724c(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207206
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207206:
	bsr.w sub_20aade
	move.w #$96,d0
	jsr (sub_2023b8).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_20723c
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207244
	neg.w $12(a0)
	rts
loc_20723c:
	addi.w #$100,$12(a0)
	rts
loc_207244:
	subi.w #$100,$12(a0)
	rts
dat_20724c:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20725a:
	tst.b ($ff1521).l
	bne.s loc_20726a
	tst.b ($ff151f).l
	beq.s loc_20726e
loc_20726a:
	moveq #$ffffffff,d0
	rts
loc_20726e:
	nop
	tst.w $30(a0)
	bne.s loc_20726a
	movea.l a1,a2

sub_207278:
	tst.b ($ff151e).l
	bne.s loc_2072a4
	tst.w ($ff1512).l
	beq.w loc_20730e
	jsr (sub_207cd8).l
	bne.s loc_2072a4
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2072a4:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2072ba
	move.b #$0,($ff156f).l
loc_2072ba:
	move.b #$4,$24(a0)
	bsr.w sub_20541e
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072ea
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072ea:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072f8
	neg.w $10(a0)
loc_2072f8:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_20730e:
	tst.w ($ff1588).l
	bne.w loc_2072a4

sub_207318:
	tst.w ($ff1906).l
	bne.s loc_20736c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20541e
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2023b8).l
loc_20736c:
	moveq #$ffffffff,d0
	rts
loc_207370:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207410
	cmpi.b #$23,d1
	beq.w loc_207410
	cmpi.b #$2e,d1
	beq.w loc_207458
	cmpi.b #$37,d1
	beq.w loc_207410
	cmpi.b #$38,d1
	beq.w loc_207466
	cmpi.b #$3a,d1
	beq.w loc_207458
	cmpi.b #$3b,d1
	beq.w loc_207458
	cmpi.b #$3c,d1
	beq.w loc_207458
	tst.b ($f7aa).w
	beq.w loc_20740e
	cmpi.b #$1,($f7aa).w
	beq.s loc_2073d8
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073fa
	cmpi.b #$5,($f7aa).w
	beq.s loc_207408
loc_2073d8:
	cmpi.b #$3c,d1
	blt.s loc_20740e
	cmpi.b #$3f,d1
	bgt.s loc_20740e
	bsr.w sub_207190
	tst.b $20(a1)
	bne.s loc_2073f2
	addq.b #$3,$21(a1)
loc_2073f2:
	clr.b $20(a1)
	bra.w loc_207410
loc_2073fa:
	cmpi.b #$3f,d1
	beq.s loc_20741c
	cmpi.b #$3e,d1
	beq.s loc_207416
	bra.s loc_20740e
loc_207408:
	cmpi.b #$3d,d1
	beq.s loc_207416
loc_20740e:
	rts
loc_207410:
	addq.b #$1,$21(a1)
	rts
loc_207416:
	bsr.w sub_20725a
	bra.s loc_207410
loc_20741c:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207456
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207456
	neg.w $10(a0)
loc_207456:
	rts
loc_207458:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207464
	addq.b #$1,$21(a1)
loc_207464:
	rts
loc_207466:
	addq.b #$1,$21(a1)
	bra.w sub_20725a
dat_20746e:
	.incbin 29806, 126
loc_2074ec:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207502
	move.l #$4000,(dat_20767c).l
	bra.s loc_207522
loc_207502:
	addi.l #$2000,(dat_20767c).l
	cmpi.l #$80000,(dat_20767c).l
	bls.s loc_207522
	move.l #$80000,(dat_20767c).l
loc_207522:
	move.l (dat_20767c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207534
	sub.l d0,$c(a0)
loc_207534:
	btst.b #$1,($f604).w
	beq.s loc_207540
	add.l d0,$c(a0)
loc_207540:
	btst.b #$2,($f604).w
	beq.s loc_20754c
	sub.l d0,$8(a0)
loc_20754c:
	btst.b #$3,($f604).w
	beq.s loc_207558
	add.l d0,$8(a0)
loc_207558:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f4a).l
	move.w (a1),($ff194e).l
	lea (dat_207680).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20759a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207594
	move.b #$0,d1
loc_207594:
	move.b d1,($ff1904).l
loc_20759a:
	btst.b #$7,($f605).w
	beq.s loc_2075ba
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2075b4
	add.b (a2),d1
loc_2075b4:
	move.b d1,($ff1904).l
loc_2075ba:
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
	beq.s loc_207646
	bsr.w sub_207cd8
	bne.s loc_207646
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
loc_207646:
	btst.b #$4,($f605).w
	beq.s loc_207676
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207676:
	jmp (sub_203bbe).l
dat_20767c:
	dc.b $00,$00,$40,$00
dat_207680:
	.incbin 30336, 548
loc_2078a4:
	neg.l d7
	btst.l d0,d2
	.incbin 30888, 542

sub_207ac6:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207ad4:
	clr.l (a2)+
	dbf d0,loc_207ad4
	rts

sub_207adc:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207aea(pc,d0.w),d0
	jmp dat_207aea(pc,d0.w)
dat_207aea:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207d8a).l,a0
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
	bcc.s loc_207b28
	moveq #$0,d6
loc_207b28:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207b30:
	cmp.w (a0),d6
	bls.s loc_207b42
	tst.b $4(a0)
	bpl.s loc_207b3e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207b3e:
	addq.w #$8,a0
	bra.s loc_207b30
loc_207b42:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207b62
loc_207b50:
	cmp.w (a0),d6
	bls.s loc_207b62
	tst.b $4(a0)
	bpl.s loc_207b5e
	addq.b #$1,$1(a2)
loc_207b5e:
	addq.w #$8,a0
	bra.s loc_207b50
loc_207b62:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207c4c
	bge.s loc_207bf2
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207bce
loc_207b9c:
	cmp.w -$8(a0),d6
	bge.s loc_207bce
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207bb2
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207bb2:
	bsr.w sub_207c70
	bne.s loc_207bbc
	subq.w #$8,a0
	bra.s loc_207b9c
loc_207bbc:
	tst.b $4(a0)
	bpl.s loc_207bcc
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207bcc:
	addq.w #$8,a0
loc_207bce:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207bda:
	cmp.w -$8(a0),d6
	bgt.s loc_207bec
	tst.b -$4(a0)
	bpl.s loc_207be8
	subq.b #$1,(a2)
loc_207be8:
	subq.w #$8,a0
	bra.s loc_207bda
loc_207bec:
	move.l a0,($f770).w
	rts
loc_207bf2:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207c06:
	cmp.w (a0),d6
	bls.s loc_207c28
	tst.b $4(a0)
	bpl.s loc_207c14
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207c14:
	bsr.w sub_207c70
	beq.s loc_207c06
	tst.b $4(a0)
	bpl.s loc_207c28
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207c28:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207c48
loc_207c36:
	cmp.w (a0),d6
	bls.s loc_207c48
	tst.b $4(a0)
	bpl.s loc_207c44
	addq.b #$1,$1(a2)
loc_207c44:
	addq.w #$8,a0
	bra.s loc_207c36
loc_207c48:
	move.l a0,($f774).w
loc_207c4c:
	rts

sub_207c4e:
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

sub_207c70:
	bsr.s sub_207c4e
	beq.s loc_207c82
	tst.b $4(a0)
	bpl.s loc_207c88
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207c88
loc_207c82:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207c88:
	bsr.w sub_207cd8
	bne.s loc_207cd6
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
	bpl.s loc_207cb8
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207cb8:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207cca
	nop
	nop
	nop
	nop
loc_207cca:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207cd6:
	rts

sub_207cd8:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207ce0:
	tst.b (a1)
	beq.s loc_207cec
	lea $40(a1),a1
	dbf d0,loc_207ce0
loc_207cec:
	rts

sub_207cee:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207d0c
loc_207d00:
	tst.b (a1)
	beq.s loc_207d0c
	lea $40(a1),a1
	dbf d0,loc_207d00
loc_207d0c:
	rts
loc_207d0e:
	move.w $8(a0),d0
loc_207d12:
	tst.b $1(a0)
	bmi.s loc_207d7c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207d7c
loc_207d30:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207d72
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207d6a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207d62
	moveq #$0,d1
	bra.s loc_207d6a
loc_207d62:
	cmpi.w #$3,d1
	bcs.s loc_207d6a
	moveq #$2,d1
loc_207d6a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207d72:
	jsr (sub_203c6a).l
	moveq #$1,d0
	rts
loc_207d7c:
	btst.b #$7,($ff152e).l
	bne.s loc_207d30
	moveq #$0,d0
	rts
dat_207d8a:
	.incbin 32138, 3146
	btst.b #$7,($ff152e).l
	beq.s loc_208a1e
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208a1e
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
	bpl.s loc_208a0e
	moveq #$0,d1
	bra.s loc_208a16
loc_208a0e:
	cmpi.w #$3,d1
	bcs.s loc_208a16
	moveq #$2,d1
loc_208a16:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208a1e:
	tst.b $28(a0)
	bpl.s loc_208a40
	beq.s loc_208a40
	tst.b ($ff158f).l
	bne.s loc_208a38
	btst.b #$0,$28(a0)
	beq.s loc_208a40
	bra.s loc_208a6a
loc_208a38:
	btst.b #$0,$28(a0)
	beq.s loc_208a6a
loc_208a40:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208a70
	cmpi.b #$6,$24(a6)
	bcc.s loc_208a70
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208a72(pc,d0.w),d1
	jsr dat_208a72(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208a70
loc_208a6a:
	jmp (loc_207d0e).l
loc_208a70:
	rts
dat_208a72:
	dc.b $00,$08,$00,$40,$00,$d0,$00,$e4
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208c5e(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$10,d0
	cmpi.w #$20,d0
	bcc.s loc_208b40
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$10,d1
	cmpi.w #$20,d1
	bcc.w loc_208b40
	tst.b $2c(a6)
	bne.w loc_208b40
	cmpi.b #$4,$24(a6)
	bne.s loc_208af2
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208af2:
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
	jsr (sub_2023b8).l
loc_208b40:
	rts
	.incbin 35650, 284
dat_208c5e:
	.incbin 35934, 826

sub_208f98:
	btst.b #$3,$22(a0)
	beq.s loc_209008
	btst.b #$3,$22(a1)
	beq.s loc_209008
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_209008
	tst.b $2a(a1)
	beq.s loc_208fca
	move.w #$ab,d0
	jsr (sub_2023b8).l
loc_208fca:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208ff6
	cmpi.b #$17,$1c(a1)
	beq.s loc_208ff6
	bclr.b #$0,$2c(a1)
loc_208ff6:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209008
	bclr.b #$1,$22(a1)
loc_209008:
	rts

sub_20900a:
	cmpi.b #$4,$24(a1)
	bne.s loc_20901c
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_20901c:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20907c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20903e
	bclr.b #$3,$22(a0)
	bra.w sub_208f98
loc_20903e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20907c
	tst.b ($ff195b).l
	beq.s loc_209066
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_209076
loc_209066:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_209076:
	move.b #$0,$1c(a1)
loc_20907c:
	bset.b #$3,$22(a1)
	beq.s loc_20909e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2090d6
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20909e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2090ca
	cmpi.b #$2,$24(a0)
	beq.s loc_2090d0
loc_2090ca:
	move.w $10(a1),$14(a1)
loc_2090d0:
	bclr.b #$1,$22(a1)
loc_2090d6:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2090e0:
	move.b #$1,$25(a0)

sub_2090e6:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20939a
	btst.b #$6,$2c(a1)
	bne.w loc_20939a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20939a
	tst.b $0(a1)
	beq.w loc_20939a
	tst.b $1(a0)
	bpl.w loc_20939a
	tst.b ($ff1906).l
	bne.w loc_20939a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20939a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20939a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209154
	btst.b #$3,$22(a0)
	bne.s loc_209166
	bra.w loc_20939a
loc_209154:
	cmpi.b #$1,$25(a0)
	bne.s loc_209166
	tst.w $12(a1)
	beq.s loc_209166
	bmi.w loc_20939a
loc_209166:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20939a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20939a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_20919c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_20919c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2091aa
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2091aa:
	cmp.w d4,d5
	bcs.w loc_20923e
	cmpi.b #$1,$25(a0)
	beq.w loc_20939a
	cmpi.b #$a,$0(a0)
	bne.s loc_2091cc
	btst.b #$1,$22(a1)
	bne.w loc_20939a
loc_2091cc:
	cmpi.b #$4,d5
	bls.w loc_20939a
	bsr.w sub_2093ea
	move.l d0,-(a7)
	bsr.w sub_208f98
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2091f6
	tst.w $10(a1)
	beq.s loc_209226
	bpl.s loc_2091fe
	bra.s loc_209226
loc_2091f6:
	tst.w $10(a1)
	beq.s loc_209226
	bpl.s loc_209226
loc_2091fe:
	bsr.w sub_2093aa
	btst.b #$1,$22(a1)
	bne.s loc_20921c
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_20921c:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_209226:
	bsr.w sub_209460
	bsr.w sub_2093aa
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20923e:
	cmpi.b #$19,$0(a0)
	bne.s loc_209250
	btst.b #$2,$22(a1)
	bne.w loc_20939a
loc_209250:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209266
	bmi.w loc_209336
loc_209266:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_209278
	tst.w $12(a1)
	beq.s loc_209278
	bmi.w loc_20939a
loc_209278:
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
	beq.s loc_2092c4
	bpl.s loc_2092a4
	neg.b d0
loc_2092a4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206caa).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2092c4
	tst.w $10(a0)
	bpl.s loc_2092c0
	neg.w d1
loc_2092c0:
	add.w d1,$8(a1)
loc_2092c4:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20932e
	tst.w $12(a0)
	bmi.s loc_209302
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d3c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209302
	add.w d1,$c(a1)
	bra.w loc_20939a
loc_209302:
	tst.w $12(a0)
	bpl.s loc_20932e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f54).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20932e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207318).l
	movem.l (a7)+,a0-a1
	bra.s loc_20939a
loc_20932e:
	bsr.w sub_20900a
	moveq #$1,d0
	rts
loc_209336:
	cmpi.b #$1,$25(a0)
	beq.s loc_20939a
	cmpi.b #$9,$0(a0)
	beq.s loc_20939a
	cmpi.b #$a,$0(a0)
	bne.s loc_209360
	cmpi.b #$2,$25(a0)
	beq.s loc_209380
	btst.b #$1,$1(a0)
	bne.s loc_209380
	bra.s loc_20939a
loc_209360:
	btst.b #$1,$22(a1)
	bne.s loc_209380
	tst.w $12(a0)
	beq.s loc_209380
	bmi.s loc_209380
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207318).l
	movem.l (a7)+,a0-a1
loc_209380:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209460
	bsr.w sub_208f98
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20939a:
	bsr.w sub_209460
	bsr.w sub_208f98
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2093aa:
	tst.w $10(a0)
	beq.s loc_2093e8
	cmpi.b #$a,$0(a0)
	beq.s loc_2093e8
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2093c4
	neg.b d0
loc_2093c4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206caa).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2093e8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207318).l
	movem.l (a7)+,a0-a1
loc_2093e8:
	rts

sub_2093ea:
	cmpi.b #$a,$0(a0)
	bne.s loc_2093fa
	move.b #$0,$20(a1)
	rts
loc_2093fa:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20944e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20945e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20941c
	tst.w $10(a2)
	beq.s loc_20945e
loc_20941c:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20942e
	cmp.w $8(a2),d1
	bcs.s loc_20945e
	bra.s loc_209434
loc_20942e:
	cmp.w $8(a2),d1
	bcc.s loc_20945e
loc_209434:
	cmpi.b #$15,$0(a0)
	beq.s loc_20945e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207318).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20944e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20945e:
	rts

sub_209460:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20947a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20947a
	move.b #$0,$20(a1)
loc_20947a:
	rts
	.incbin 38012, 374
loc_2095f2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209600(pc,d0.w),d0
	jmp dat_209600(pc,d0.w)
dat_209600:
	.incbin 38400, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2095f2
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209656
	tst.b $1(a0)
	bpl.s loc_20965e
loc_209656:
	move.w dat_2096b0(pc,d0.w),d1
	jsr dat_2096b0(pc,d1.w)
loc_20965e:
	bsr.w sub_203bbe
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209690
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209690:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203c6a
	rts
dat_2096b0:
	.incbin 38576, 26
	addq.b #$2,$24(a0)
	move.l #$209a32,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209720
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209a38,$4(a0)
	bra.s loc_209762
loc_209720:
	btst.l #$3,d0
	beq.s loc_20974e
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209a82,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c374).l
	move.l (a7)+,d0
	bra.s loc_209762
loc_20974e:
	btst.b #$1,$1(a0)
	beq.s loc_209762
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209762:
	btst.l #$1,d0
	beq.s loc_20976e
	bset.b #$5,$2(a0)
loc_20976e:
	andi.w #$2,d0
	move.w dat_20977a(pc,d0.w),$30(a0)
	rts
dat_20977a:
	dc.b $f0,$00,$f6,$00

sub_20977e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2090e6).l
	tst.b $1(a0)
	bpl.s loc_20979a
	lea ($d000).w,a1
	bsr.s sub_20977e
	bne.s loc_20979c
loc_20979a:
	rts
loc_20979c:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2023b8).l
	lea (dat_209a24).l,a1
	bra.w sub_205dc8
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2097f0:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2090e6).l
	tst.b $1(a0)
	bpl.s loc_209812
	lea ($d000).w,a1
	bsr.s sub_2097f0
	btst.b #$5,$22(a0)
	bne.s loc_209814
loc_209812:
	rts
loc_209814:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209842
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209842:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20985c
	move.b #$0,$1c(a1)
loc_20985c:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2023b8).l
	.incbin 39030, 134
	tst.b $1(a0)
	bpl.s loc_209914
	lea ($d000).w,a1
	bsr.w sub_20977e
	bne.s loc_209916
	btst.b #$5,$22(a0)
	bne.s loc_209916
loc_209914:
	rts
loc_209916:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_2007dc).l
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
	beq.s loc_209954
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_209954:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_209976
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_209976:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_2023b8).l
	lea (dat_209a24).l,a1
	bra.w sub_205dc8
	.incbin 39336, 124
dat_209a24:
	.incbin 39460, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209b1e(pc,d0.w),d1
	jmp dat_209b1e(pc,d1.w)
dat_209b1e:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209b28:
	.incbin 39720, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209b80
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b78
	moveq #$0,d1
	bra.s loc_209b80
loc_209b78:
	cmpi.w #$3,d1
	bcs.s loc_209b80
	moveq #$2,d1
loc_209b80:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209b9c
	moveq #$6,d1
loc_209b9c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209b28).l,a1
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
	beq.s loc_209bec
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209be4
	moveq #$0,d0
	bra.s loc_209bec
loc_209be4:
	cmpi.w #$3,d0
	bcs.s loc_209bec
	moveq #$2,d0
loc_209bec:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209cba
	dbf d0,loc_209bec
	bclr.b #$7,(a2)
	bra.s loc_209c42
loc_209bfe:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209c2a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209c22
	moveq #$0,d0
	bra.s loc_209c2a
loc_209c22:
	cmpi.w #$3,d0
	bcs.s loc_209c2a
	moveq #$2,d0
loc_209c2a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209cba
	dbf d0,loc_209c2a
	bclr.b #$7,(a2)
	bsr.w sub_207cee
	bne.w loc_209cc6
loc_209c42:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209f8c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c98
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209c98
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209c98:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209cba:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209bfe
loc_209cc6:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209cec
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ce4
	moveq #$0,d0
	bra.s loc_209cec
loc_209ce4:
	cmpi.w #$3,d0
	bcs.s loc_209cec
	moveq #$2,d0
loc_209cec:
	lea $1(a2),a3
loc_209cf0:
	btst.b #$0,-(a3)
	bne.w sub_203c6a
	dbf d0,loc_209cf0
	tst.b $1(a0)
	bmi.s loc_209d20
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209d9a
loc_209d20:
	tst.w ($ff190e).l
	bne.s loc_209d30
	move.b ($ff1913).l,$1a(a0)
loc_209d30:
	bra.w sub_203bbe
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209d9e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209d80
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209d78
	moveq #$0,d1
	bra.s loc_209d80
loc_209d78:
	cmpi.w #$3,d1
	bcs.s loc_209d80
	moveq #$2,d1
loc_209d80:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209f84).l,a1
	bsr.w sub_205dc8
	bra.w sub_203bbe
loc_209d9a:
	bra.w sub_203c6a

sub_209d9e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209dee
	bset.b #$1,($ff150d).l
	beq.s loc_209dd8
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209dee
	bset.b #$2,($ff150d).l
	bne.s loc_209dee
loc_209dd8:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d88).l
loc_209dee:
	jmp (sub_2023b8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e02(pc,d0.w),d1
	jmp dat_209e02(pc,d1.w)
dat_209e02:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209e1e
	move.w d0,d5
loc_209e1e:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209e2e
loc_209e26:
	bsr.w sub_207cd8
	bne.w loc_209ee4
loc_209e2e:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209f8c,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e8c
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209e8c
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209e8c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209ed4
	move.w d4,d0
	jsr (sub_2007dc).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209ed4
	subi.w #$80,d4
	bcc.s loc_209ed4
	move.w #$288,d4
loc_209ed4:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209e26
loc_209ee4:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2023b8).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203b68
	addi.w #$18,$12(a0)
	bmi.s loc_209f44
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209f44
	jsr (sub_206dea).l
	tst.w d1
	bpl.s loc_209f44
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209f44:
	tst.b ($ff1916).l
	beq.s loc_209f80
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209f80
	bra.w sub_203bbe
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209d9e
	lea (dat_209f84).l,a1
	bsr.w sub_205dc8
	bra.w sub_203bbe
loc_209f80:
	bra.w sub_203c6a
dat_209f84:
	.incbin 40836, 402
loc_20a116:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a144(pc,d0.w),d0
	jsr dat_20a144(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a142
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a13c
	btst.b #$0,($ff1505).l
	bne.s loc_20a142
loc_20a13c:
	jmp (sub_203bbe).l
loc_20a142:
	rts
dat_20a144:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a71e,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a178
	move.b #$13,$1a(a0)
loc_20a178:
	rts
loc_20a17a:
	tst.b ($ff0f01).l
	beq.s loc_20a188
	jmp (sub_203c6a).l
loc_20a188:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a116
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a1ac(pc,d0.w),d0
	jsr dat_20a1ac(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20a1ac:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a71e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1fa
	tst.b $29(a0)
	bne.s loc_20a1fa
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a1fa:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a2c6
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a222
	addq.b #$2,$1a(a0)
loc_20a222:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a236
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a236:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a29c
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a268
	tst.b $29(a0)
	beq.s loc_20a260
	tst.b ($ff1956).l
	beq.s loc_20a29c
	bra.s loc_20a268
loc_20a260:
	tst.b ($ff1956).l
	bne.s loc_20a29c
loc_20a268:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a2c6
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a296
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a296:
	jsr (sub_205d88).l
loc_20a29c:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a2ae
	lea (dat_20a696).l,a1
	bra.w sub_205dc8
loc_20a2ae:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a2c4
	addq.b #$2,$1a(a0)
loc_20a2c4:
	rts

sub_20a2c6:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a2fe
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a2f6
	moveq #$0,d1
	bra.s loc_20a2fe
loc_20a2f6:
	cmpi.w #$3,d1
	bcs.s loc_20a2fe
	moveq #$2,d1
loc_20a2fe:
	add.w d1,d0
	rts

sub_20a302:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a324
	tst.b ($ff1956).l
	beq.s loc_20a31c
	tst.b $29(a0)
	bne.s loc_20a324
	rts
loc_20a31c:
	tst.b $29(a0)
	beq.s loc_20a324
	rts
loc_20a324:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2090e6).l
	tst.b $28(a0)
	bne.s loc_20a346
	tst.b ($ff0f01).l
	beq.s loc_20a346
	jmp (loc_207d0e).l
loc_20a346:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a17a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a35e(pc,d0.w),d1
	jmp dat_20a35e(pc,d1.w)
dat_20a35e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a71e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3a8
	tst.b $29(a0)
	bne.s loc_20a3a8
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a3a8:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a2c6
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a3d4
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a3d4:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a42e
	move.b $25(a0),d0
	beq.s loc_20a40e
	bsr.w sub_203b06
	jsr (sub_206dea).l
	tst.w d1
	bpl.w loc_20a41c
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a41c
loc_20a40e:
	tst.b $1(a0)
	bpl.s loc_20a41c
	lea ($d000).w,a1
	bsr.w sub_20a302
loc_20a41c:
	tst.w ($ff190e).l
	bne.s loc_20a42e
	lea (dat_20a696).l,a1
	bsr.w sub_205dc8
loc_20a42e:
	bsr.w sub_203bbe
	jmp (loc_207d0e).l
	move.w #$96,d0
	jsr (sub_2023b8).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207cd8
	bne.s loc_20a470
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a470:
	bsr.w sub_207cd8
	bne.s loc_20a49a
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a49a:
	bsr.w sub_20a2c6
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203bbe
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4c0(pc,d0.w),d1
	jsr dat_20a4c0(pc,d1.w)
	bra.w sub_203bbe
dat_20a4c0:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a4dc
	andi.b #$7f,$2(a0)
loc_20a4dc:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a71e,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a524
	bsr.w sub_203b68
	addi.w #$18,$12(a0)
	rts
loc_20a524:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a54a
loc_20a534:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d88).l
loc_20a54a:
	cmpi.b #$1,d0
	bne.s loc_20a596
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a58c
	bset.b #$1,($ff150d).l
	beq.w loc_20a534
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a58c
	bset.b #$2,($ff150d).l
	beq.w loc_20a534
loc_20a58c:
	move.w #$95,d0
	jmp (sub_2023b8).l
loc_20a596:
	cmpi.b #$2,d0
	bne.s loc_20a5b4

sub_20a59c:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_2023b8).l
loc_20a5b4:
	cmpi.b #$3,d0
	bne.s loc_20a616

sub_20a5ba:
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
	bne.s loc_20a60a
	move.w #$82,d0
	jsr (sub_205d88).l
loc_20a60a:
	move.w #$6d,d0
	jmp (sub_205d88).l
	dc.b $4e,$75
loc_20a616:
	cmpi.b #$4,d0
	bne.s loc_20a658
loc_20a61c:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a64e
	move.w #$82,d0
	jsr (sub_205d88).l
loc_20a64e:
	move.w #$6c,d0
	jmp (sub_205d88).l
loc_20a658:
	cmpi.b #$5,d0
	bne.s loc_20a668
	move.w #$12c,($ff190e).l
	rts
loc_20a668:
	cmpi.b #$6,d0
	bne.s loc_20a682
	move.w #$9d,d0
	jsr (sub_2023b8).l
	move.b #$1,($ff156f).l
	rts
loc_20a682:
	bsr.w sub_20a59c
	bsr.w sub_20a5ba
	bra.s loc_20a61c
	subq.w #$1,$1e(a0)
	bmi.w sub_203c6a
	rts
dat_20a696:
	.incbin 42646, 586
loc_20a8e0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8f4(pc,d0.w),d0
	jsr dat_20a8f4(pc,d0.w)
	jmp (sub_203bbe).l
dat_20a8f4:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a934,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a92e
	jmp (sub_203c6a).l
loc_20a92e:
	subq.w #$2,$c(a0)
	rts
	.incbin 43316, 82
	tst.b $28(a0)
	bmi.w loc_20a8e0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a99c(pc,d0.w),d0
	jmp dat_20a99c(pc,d0.w)
dat_20a99c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20aa36,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a9cc
	move.b #$3,$1a(a0)
	bra.s loc_20a9ec
loc_20a9cc:
	tst.w ($ff1588).l
	beq.s loc_20a9da
	move.b #$2,$1a(a0)
loc_20a9da:
	tst.b $28(a0)
	beq.s loc_20a9ec
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a9ec:
	tst.b $28(a0)
	bne.s loc_20aa30
	tst.b $29(a0)
	beq.s loc_20aa1c
	tst.w ($ff1512).l
	beq.s loc_20aa08
	bclr.b #$5,$2(a0)
	bra.s loc_20aa30
loc_20aa08:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20aa30
	eori.b #$20,$2(a0)
	bra.s loc_20aa30
loc_20aa1c:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20aa30
	move.b #$2,$1a(a0)
loc_20aa30:
	jmp (sub_203bbe).l
	.incbin 43574, 168

sub_20aade:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20aafa
	move.l d1,(a3)
loc_20aafa:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ab24
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d88).l
loc_20ab24:
	rts
loc_20ab26:
	tst.w ($ff1588).l
	beq.s loc_20ab7c
	bsr.w sub_20ad78
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
	lea (dat_20aed8).l,a2
	moveq #$2,d6
	bsr.w sub_20af30
	bra.w loc_20abd6
loc_20ab7c:
	tst.b ($ff1511).l
	beq.s loc_20aba0
	bpl.s loc_20ab8a
	bsr.w sub_20ad22
loc_20ab8a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ae12
loc_20aba0:
	tst.b ($ff150f).l
	beq.s loc_20abd6
	bpl.s loc_20abae
	bsr.w sub_20ad0e
loc_20abae:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20abd2
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20abd2:
	bsr.w sub_20ae08
loc_20abd6:
	tst.w ($ff1588).l
	bne.w loc_20ac82
	tst.b ($ff1510).l
	beq.w loc_20ac82
	tst.w ($f63a).w
	bne.w loc_20ac82
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ace0
	tst.b ($f7cc).w
	bne.s loc_20ac2c
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac2c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac2c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ac2c
	move.b #$9,(a1)
loc_20ac2c:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20af1e
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20af28
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ac7e
	move.w #$63,d1
loc_20ac7e:
	bsr.w sub_20af28
loc_20ac82:
	tst.b ($ff150e).l
	beq.s loc_20ac94
	clr.b ($ff150e).l
	bsr.w sub_20aefe
loc_20ac94:
	tst.b ($f7d6).w
	beq.s loc_20acde
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20acb4
	move.l #$6d400001,d0
loc_20acb4:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ad96
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20acd4
	move.l #$6e800001,d0
loc_20acd4:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ad96
loc_20acde:
	rts
loc_20ace0:
	btst.b #$7,($ff152e).l
	bne.s loc_20ad0c
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207318
	move.b #$1,($ff150c).l
loc_20ad0c:
	rts

sub_20ad0e:
	move.l #$73600002,($c00004).l
	lea dat_20ad74(pc),a2
	move.w #$2,d2
	bra.s loc_20ad3e

sub_20ad22:
	lea ($c00000).l,a6
	bsr.w sub_20aefe
	move.l #$70600002,($c00004).l
	lea dat_20ad6c(pc),a2
	move.w #$6,d2
loc_20ad3e:
	lea (dat_2330bc).l,a1
loc_20ad44:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ad60
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ad54:
	move.l (a3)+,(a6)
	dbf d1,loc_20ad54
loc_20ad5a:
	dbf d2,loc_20ad44
	rts
loc_20ad60:
	move.l #$0,(a6)
	dbf d1,loc_20ad60
	bra.s loc_20ad5a
dat_20ad6c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ad74:
	dc.b $ff,$ff,$00,$00

sub_20ad78:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20aef4
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20aef4

sub_20ad96:
	lea (dat_20aed0).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ada6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20adaa:
	sub.l d3,d1
	bcs.s loc_20adb2
	addq.w #$1,d2
	bra.s loc_20adaa
loc_20adb2:
	add.l d3,d1
	tst.w d2
	beq.s loc_20adbc
	move.w #$1,d4
loc_20adbc:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20adc8
	tst.w d6
	bne.s loc_20adfa
loc_20adc8:
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
loc_20adee:
	addi.l #$400000,d0
	dbf d6,loc_20ada6
	rts
loc_20adfa:
	moveq #$f,d5
loc_20adfc:
	move.l #$0,(a6)
	dbf d5,loc_20adfc
	bra.s loc_20adee

sub_20ae08:
	lea (dat_20aed8).l,a2
	moveq #$2,d6
	bra.s loc_20ae1a

sub_20ae12:
	lea (dat_20aecc).l,a2
	moveq #$5,d6
loc_20ae1a:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ae22:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae26:
	sub.l d3,d1
	bcs.s loc_20ae2e
	addq.w #$1,d2
	bra.s loc_20ae26
loc_20ae2e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae38
	move.w #$1,d4
loc_20ae38:
	tst.w d4
	beq.s loc_20ae66
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
loc_20ae66:
	addi.l #$400000,d0
	dbf d6,loc_20ae22
	rts
	.incbin 44658, 32
loc_20ae92:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae96:
	sub.l d3,d1
	bcs.s loc_20ae9e
	addq.w #$1,d2
	bra.s loc_20ae96
loc_20ae9e:
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
	dbf d6,loc_20ae92
	rts
dat_20aecc:
	dc.b $00,$01,$86,$a0
dat_20aed0:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aed8:
	dc.b $00,$00,$00,$64
dat_20aedc:
	dc.b $00,$00,$00,$0a
dat_20aee0:
	dc.b $00,$00,$00,$01
dat_20aee4:
	.incbin 44772, 16

sub_20aef4:
	moveq #$3,d6
	lea (dat_20aee4).l,a2
	bra.s sub_20af30

sub_20aefe:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20af14
	moveq #$9,d1
loc_20af14:
	lea (dat_20aee0).l,a2
	moveq #$0,d6
	bra.s sub_20af30

sub_20af1e:
	lea (dat_20aee0).l,a2
	moveq #$0,d6
	bra.s sub_20af30

sub_20af28:
	lea (dat_20aedc).l,a2
	moveq #$1,d6

sub_20af30:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20af38:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af3c:
	sub.l d3,d1
	bcs.s loc_20af44
	addq.w #$1,d2
	bra.s loc_20af3c
loc_20af44:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af4e
	move.w #$1,d4
loc_20af4e:
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
	dbf d6,loc_20af38
	rts
	.incbin 44932, 2910
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20baf0(pc,d0.w),d0
	jmp dat_20baf0(pc,d0.w)
dat_20baf0:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c1ee,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c1ae).l,a2
loc_20bb3e:
	jsr (sub_207cd8).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c1ee,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bb90
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bb90:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20bb3e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bbb8
	bge.s loc_20bbae
	neg.w d0
loc_20bbae:
	add.w d0,$a(a0)
	jmp (sub_203bbe).l
loc_20bbb8:
	addq.b #$4,$24(a0)
	jmp (sub_203bbe).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bbdc
	bge.s loc_20bbd2
	neg.w d0
loc_20bbd2:
	add.w d0,$8(a0)
	jmp (sub_203bbe).l
loc_20bbdc:
	addq.b #$4,$24(a0)
	jmp (sub_203bbe).l
	tst.b $1e(a0)
	beq.s loc_20bbf6
	subq.b #$1,$1e(a0)
	jmp (sub_203bbe).l
loc_20bbf6:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bc10
	bge.s loc_20bc06
	neg.w d0
loc_20bc06:
	add.w d0,$a(a0)
	jmp (sub_203bbe).l
loc_20bc10:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202582).l
	tst.b $1e(a0)
	beq.s loc_20bc32
	subq.b #$1,$1e(a0)
	jmp (sub_203bbe).l
loc_20bc32:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bc4c
	bge.s loc_20bc42
	neg.w d0
loc_20bc42:
	add.w d0,$8(a0)
	jmp (sub_203bbe).l
loc_20bc4c:
	jmp (sub_203c6a).l
	tst.l ($f680).w
	bne.s loc_20bc66
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203c6a).l
loc_20bc66:
	rts
	.incbin 48232, 1350
dat_20c1ae:
	.incbin 49582, 382

sub_20c32c:
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	beq.s loc_20c33a
	rts
loc_20c33a:
	lea dat_20c368(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c346:
	cmp.w (a1)+,d0
	bcs.s loc_20c34e
	addq.b #$2,d1
	bra.s loc_20c346
loc_20c34e:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c358
	rts
loc_20c358:
	move.b d1,($ff1574).l
	move.w dat_20c36c(pc,d1.w),d0
	jmp (loc_2025b4).l
dat_20c368:
	dc.b $04,$00,$ff,$ff
dat_20c36c:
	dc.b $00,$05,$00,$06,$00,$02,$00,$04

sub_20c374:
	move.w #$4f2,$2(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c390(pc,d0.w),d0
	jsr dat_20c390(pc,d0.w)
	jmp (sub_203bbe).l
dat_20c390:
	dc.b $00,$06,$00,$f6,$00,$dc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4300,$2(a0)
	move.l #$20c880,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$40,$19(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	lea $2a(a0),a2
	moveq #$7,d1
loc_20c3d8:
	jsr (sub_207cd8).l
	bne.w loc_20c456
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
	move.l #$20c880,$4(a1)
	move.b #$8,$16(a1)
	move.b #$8,$19(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3f(a1)
	moveq #$0,d2
	move.b d1,d2
	move.b d2,$3c(a1)
	add.w d2,d2
	lea dat_20c45c(pc,d2.w),a3
	move.w (a3)+,d2
	add.w $8(a0),d2
	move.w d2,$8(a1)
loc_20c456:
	dbf d1,loc_20c3d8
	rts
dat_20c45c:
	.incbin 50268, 16
	movea.w $34(a0),a1
	cmpi.b #$2f,$0(a1)
	bne.s loc_20c480
	tst.b $3f(a1)
	bne.s loc_20c480
	rts
loc_20c480:
	jmp (sub_203c6a).l
	clr.b $3d(a0)
	bsr.w sub_20c7e6
	beq.s loc_20c494
	bsr.w sub_20c4ce
loc_20c494:
	tst.b $3d(a0)
	beq.w loc_20c4ba
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	beq.s loc_20c4aa
	addq.b #$4,$3a(a0)
loc_20c4aa:
	bsr.w sub_20c52e
	tst.b $3d(a0)
	beq.s loc_20c4b8
	bsr.w sub_20c502
loc_20c4b8:
	bra.s loc_20c4c8
loc_20c4ba:
	tst.b $3a(a0)
	beq.s loc_20c4c8
	subq.b #$4,$3a(a0)
	bsr.w sub_20c52e
loc_20c4c8:
	jmp (loc_207d0e).l

sub_20c4ce:
	lea ($d000).w,a1
	moveq #$8,d1
	lsl.w #$3,d1
	move.w d1,d2
	addq.w #$8,d1
	add.w d2,d2
	btst.b #$1,$22(a1)
	bne.s loc_20c4f4
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20c4f4
	cmp.w d2,d0
	bcs.s loc_20c4fa
loc_20c4f4:
	clr.b $3d(a0)
	rts
loc_20c4fa:
	lsr.w #$4,d0
	move.b d0,$3d(a0)
	rts

sub_20c502:
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

sub_20c52e:
	moveq #$0,d3
	move.b $3d(a0),d3
	move.b $3a(a0),d0
	jsr (sub_2007dc).l
	move.w d0,d4
	lea (dat_20c6e6).l,a4
	moveq #$8,d0
	lsl.w #$4,d0
	move.w d3,d2
	add.w d0,d3
	moveq #$0,d5
	lea (dat_20c5d6).l,a5
	move.b $0(a5,d3.w),d5
	andi.w #$f,d3
	lsl.w #$4,d3
	lea $0(a4,d3.w),a3
	lea $2a(a0),a2
loc_20c568:
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
	dbf d2,loc_20c568
	moveq #$0,d3
	move.b $3d(a0),d3
	moveq #$8,d0
	addq.b #$1,d3
	sub.b d0,d3
	neg.b d3
	bmi.s loc_20c5d4
	move.w d3,d2
	lsl.w #$4,d3
	lea $0(a4,d3.w),a3
	adda.w d2,a3
	subq.w #$1,d2
	bcs.s loc_20c5d4
loc_20c5ac:
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
	dbf d2,loc_20c5ac
loc_20c5d4:
	rts
dat_20c5d6:
	.incbin 50646, 272
dat_20c6e6:
	.incbin 50918, 256

sub_20c7e6:
	lea ($d000).w,a1
	cmpi.b #$6,$24(a1)
	beq.w loc_20c860
	tst.b ($ff1906).l
	bne.s loc_20c860
	moveq #$8,d1
	lsl.w #$3,d1
	move.w d1,d2
	addq.w #$8,d1
	add.w d2,d2
	tst.w $12(a1)
	bmi.w loc_20c860
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20c860
	cmp.w d2,d0
	bcc.w loc_20c860
	move.w $c(a0),d0
	subq.w #$8,d0
	move.w $c(a1),d2
	move.b $16(a1),d1
	ext.w d1
	add.w d2,d1
	addq.w #$4,d1
	sub.w d1,d0
	bhi.w loc_20c860
	cmpi.w #$fff0,d0
	bcs.w loc_20c860
	cmpi.b #$6,$24(a1)
	bcc.w loc_20c860
	add.w d0,d2
	addq.w #$3,d2
	move.w d2,$c(a1)
	jsr (sub_20900a).l
	moveq #$ffffffff,d0
	rts
loc_20c860:
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20c87c
	clr.b $38(a1)
	bclr.b #$3,$22(a1)
loc_20c87c:
	moveq #$0,d0
	rts
	.incbin 51328, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c8d6(pc,d0.w),d0
	jsr dat_20c8d6(pc,d0.w)
	jsr (sub_203bbe).l
	move.w $36(a0),d0
	jmp (loc_207d12).l
dat_20c8d6:
	dc.b $00,$96,$01,$56
loc_20c8da:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2090e0).l
dat_20c8ec:
	.incbin 51436, 50
dat_20c91e:
	.incbin 51486, 52
dat_20c952:
	.incbin 51538, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20c98e
	move.w #$4378,d0
loc_20c98e:
	move.w d0,$2(a0)
	move.l #$20cd32,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20c8ec).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20c91e).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20c952).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20ca28
	cmpi.b #$1,d1
	bne.s loc_20c9f4
	clr.b d2
	bsr.w sub_20cc9e
	bra.s loc_20ca28
loc_20c9f4:
	cmpi.b #$2,d1
	bne.s loc_20ca0c
	move.b #$f0,d2
	bsr.w sub_20cc9e
	move.b #$10,d2
	bsr.w sub_20cc9e
	bra.s loc_20ca28
loc_20ca0c:
	cmpi.b #$3,d1
	bne.s loc_20ca28
	move.b #$e0,d2
	bsr.w sub_20cc9e
	clr.b d2
	bsr.w sub_20cc9e
	move.b #$20,d2
	bsr.w sub_20cc9e
loc_20ca28:
	bra.w loc_20ca2c
loc_20ca2c:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20ca4a(pc,d0.w),d0
	jsr dat_20ca4a(pc,d0.w)
	bsr.w sub_20cc5a
	bsr.w sub_20ccce
	bra.w loc_20c8da
dat_20ca4a:
	.incbin 51786, 50
	bset.b #$7,$3f(a0)
	rts
	bset.b #$7,$3f(a0)
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20cc1a
loc_20ca98:
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20caa4
	neg.w d0
loc_20caa4:
	move.w d0,$10(a0)
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	rts
	.incbin 51894, 36
	bset.b #$7,$3f(a0)
	move.w #$4,$30(a0)
	move.w #$20,d4
	bsr.w sub_20cc1a
	bra.w loc_20ca98
	tst.b $3d(a0)
	bne.s loc_20cb14
	bset.b #$7,$3f(a0)
	btst.b #$3,$22(a0)
	bne.s loc_20cb08
	rts
loc_20cb08:
	move.b #$1e,$3b(a0)
	move.b #$1,$3d(a0)
loc_20cb14:
	tst.b $3b(a0)
	beq.s loc_20cb26
	subq.b #$1,$3b(a0)
	bne.s loc_20cb82
	bclr.b #$7,$3f(a0)
loc_20cb26:
	move.b #$10,$16(a0)
	cmpi.w #$200,$12(a0)
	bcs.s loc_20cb48
	move.b #$12,$16(a0)
	cmpi.w #$300,$12(a0)
	bcs.s loc_20cb48
	move.b #$14,$16(a0)
loc_20cb48:
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20cb58
	addi.w #$20,$12(a0)
loc_20cb58:
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20cb82
	lea ($d000).w,a1
	jsr (sub_208f98).l
	jmp (sub_203c6a).l
loc_20cb82:
	rts
	dc.b $10,$28,$00,$3d,$02,$40,$00,$ff
	move.w dat_20cb94(pc,d0.w),d0
	jmp dat_20cb94(pc,d0.w)
dat_20cb94:
	.incbin 52116, 134

sub_20cc1a:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20cc40
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20cc58
	move.b #$ff,$3c(a0)
	bra.s loc_20cc58
loc_20cc40:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20cc58
	clr.b $3c(a0)
loc_20cc58:
	rts

sub_20cc5a:
	btst.b #$7,$3f(a0)
	beq.s loc_20cc9c
	btst.b #$3,$22(a0)
	bne.s loc_20cc76
	tst.b $3e(a0)
	beq.s loc_20cc9c
	subq.b #$8,$3e(a0)
	bra.s loc_20cc82
loc_20cc76:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20cc9c
	addq.b #$8,$3e(a0)
loc_20cc82:
	move.b $3e(a0),d0
	jsr (sub_2007dc).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20cc9c:
	rts

sub_20cc9e:
	jsr (sub_207cd8).l
	bne.s loc_20cccc
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20cccc:
	rts

sub_20ccce:
	btst.b #$0,$3f(a0)
	beq.s loc_20cd30
	btst.b #$3,$22(a0)
	beq.s loc_20cd30
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20cd30
	btst.b #$3,$22(a1)
	beq.s loc_20cd30
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20cd30
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20cd22
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20cd22
	move.l #$20000,d0
loc_20cd22:
	tst.b ($ff158f).l
	beq.s loc_20cd2c
	neg.l d0
loc_20cd2c:
	add.l d0,$8(a1)
loc_20cd30:
	rts
	.incbin 52530, 188
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce08(pc,d0.w),d0
	jsr dat_20ce08(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20ce08:
	dc.b $00,$08,$00,$4a,$00,$b4,$00,$f2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$4797,$2(a0)
	move.l #$20cf34,$4(a0)
	btst.b #$0,($ff158f).l
	beq.s loc_20ce4a
	move.b #$2,$1a(a0)
loc_20ce4a:
	move.b ($ff158f).l,$3c(a0)
	tst.b ($ff1906).l
	bne.s loc_20cea0
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20ce6a
	neg.w d0
loc_20ce6a:
	cmpi.w #$10,d0
	bcc.s loc_20cea0
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20ce7c
	neg.w d0
loc_20ce7c:
	cmpi.w #$8,d0
	bcc.s loc_20cea0
	bchg.b #$0,($ff158f).l
	addq.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20ce9e
	move.w #$bf,d0
	jsr (sub_2023b8).l
loc_20ce9e:
	rts
loc_20cea0:
	move.b ($ff158f).l,d0
	cmp.b $3c(a0),d0
	beq.s loc_20ceb6
	move.b #$ff,$3d(a0)
	addq.b #$2,$24(a0)
loc_20ceb6:
	move.b d0,$3c(a0)
	rts
	.incbin 52924, 162
	tst.b $28(a0)
	bmi.w loc_20d104
	jsr (sub_20ebde).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cf8a(pc,d0.w),d0
	jsr dat_20cf8a(pc,d0.w)
	jsr (sub_203bbe).l
	move.w $2a(a0),d0
	jmp (loc_207d12).l
dat_20cf8a:
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
	lea dat_20d144(pc),a1
	tst.b $28(a0)
	beq.s loc_20cfda
	lea dat_20d1b4(pc),a1
loc_20cfda:
	move.l a1,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206dea).l
	tst.w d1
	bpl.s loc_20cff8
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20cff8:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20d00e
	neg.w d0
loc_20d00e:
	cmpi.w #$50,d0
	bge.w loc_20d0ce
	jsr (sub_206dea).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.w loc_20d0ce
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.w loc_20d0c4
	lea ($d000).w,a6
	bsr.w sub_20d0e0
	bcc.w loc_20d0a8
	move.b #$1,$1c(a0)
	tst.w $3e(a0)
	bne.w loc_20d0c4
	jsr (sub_207cd8).l
	bne.s loc_20d0c4
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $29(a0),$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$ffec,$c(a1)
	move.w $2(a0),$2(a1)
	move.l #$20d1d4,$4(a1)
	move.b #$b0,$20(a1)
	move.w a0,$3e(a1)
	move.w a1,$3e(a0)
	tst.b $1(a0)
	bpl.s loc_20d0a6
	move.w #$b7,d0
	jsr (sub_2023b8).l
loc_20d0a6:
	bra.s loc_20d0c4
loc_20d0a8:
	move.b #$0,$1c(a0)
	tst.w $3e(a0)
	beq.s loc_20d0c4
	movea.w $3e(a0),a1
	jsr (sub_203c6c).l
	move.w #$0,$3e(a0)
loc_20d0c4:
	lea dat_20d138(pc),a1
	jmp (sub_205dc8).l
loc_20d0ce:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20d0e0:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20d102
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20d102:
	rts
loc_20d104:
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20d132
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.s loc_20d132
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	addi.w #$ffec,$c(a0)
	jmp (sub_203bbe).l
loc_20d132:
	jmp (sub_203c6a).l
dat_20d138:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $1d,$02,$03,$ff
dat_20d144:
	.incbin 53572, 112
dat_20d1b4:
	.incbin 53684, 36
	tst.b $29(a0)
	beq.s loc_20d1e6
	bpl.w loc_20d4d6
	bra.w loc_20d4d6
loc_20d1e6:
	jsr (sub_20ebde).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d214(pc,d0.w),d0
	jsr dat_20d214(pc,d0.w)
	lea dat_20d50c(pc),a1
	jsr (sub_205dc8).l
	jsr (sub_203bbe).l
	move.w $2a(a0),d0
	jmp (loc_207d12).l
dat_20d214:
	.incbin 53780, 22
	addq.b #$2,$24(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.b #$31,$20(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20d512(pc),a1
	move.l #$ffff0000,d0
	move.w #$3,d1
	tst.b $28(a0)
	beq.s loc_20d274
	lea dat_20d54a(pc),a1
	move.l #$ffff8000,d0
	move.w #$7,d1
loc_20d274:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	move.w d1,$32(a0)
	movea.w a0,a1
	bra.s loc_20d2a0

sub_20d284:
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $18(a0),$18(a1)
	move.w a0,$2a(a1)
loc_20d2a0:
	ori.b #$4,$1(a1)
	move.w #$23b6,$2(a1)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206dea).l
	tst.w d1
	bpl.s loc_20d2fe
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	jsr (sub_207cee).l
	bne.w loc_20d4d0
	move.w a1,$30(a0)
	move.b #$1,$29(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$10,$16(a1)
	move.l #$20d582,$4(a1)
	move.b $28(a0),$1a(a1)
	bsr.s sub_20d284
	subq.b #$1,$18(a1)
loc_20d2fe:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20d314
	neg.w d0
loc_20d314:
	cmpi.w #$50,d0
	bge.s loc_20d36a
	jsr (sub_206dea).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20d36a
	add.w d1,$c(a0)
	movea.w $30(a0),a1
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w $32(a0),d0
	add.w d0,$8(a1)
	addi.w #$fff0,$c(a1)
	lea ($d000).w,a1
	bsr.s sub_20d398
	bcs.s loc_20d356
	rts
loc_20d356:
	addq.b #$2,$24(a0)
	tst.w d0
	smi d0
	tst.b $2c(a0)
	smi d1
	eor.b d1,d0
	bne.s loc_20d36a
	rts
loc_20d36a:
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

sub_20d398:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffd8,d0
	subi.w #$50,d0
	bcc.s loc_20d3bc
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20d3bc:
	rts
	addq.b #$2,$24(a0)
	move.w #$1e,$34(a0)
	movea.w $30(a0),a1
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w $32(a0),d0
	add.w d0,$8(a1)
	addi.w #$fff0,$c(a1)
	subq.w #$1,$34(a0)
	bne.s loc_20d408
	addq.b #$2,$24(a0)
	movea.w $30(a0),a1
	subq.w #$5,$c(a1)
	move.w #$5,d0
	tst.b $2c(a0)
	bmi.s loc_20d404
	neg.w d0
loc_20d404:
	add.w d0,$8(a1)
loc_20d408:
	rts
	addq.b #$2,$24(a0)
	move.w #$a,$34(a0)
	subq.w #$1,$34(a0)
	bne.s loc_20d488
	addq.b #$2,$24(a0)
	tst.b $28(a0)
	bne.s loc_20d488
	jsr (sub_207cd8).l
	bne.s loc_20d488
	move.b #$ff,$29(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$10,$16(a1)
	move.b #$b2,$20(a1)
	move.l #$20d598,$4(a1)
	bsr.w sub_20d284
	addi.w #$ffe8,$c(a1)
	move.w #$fffc,d0
	move.l #$fffd0000,d1
	tst.b $2c(a0)
	bmi.s loc_20d470
	neg.w d0
	neg.l d1
loc_20d470:
	add.w d0,$8(a1)
	move.l d1,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20d488
	move.w #$a0,d0
	jsr (sub_2023b8).l
loc_20d488:
	rts
	addq.b #$2,$24(a0)
	move.w #$1e,$34(a0)
	subq.w #$1,$34(a0)
	bne.s loc_20d4b6
	addq.b #$2,$24(a0)
	movea.w $30(a0),a1
	addq.w #$5,$c(a1)
	move.w #$5,d0
	tst.b $2c(a0)
	bmi.s loc_20d4b2
	neg.w d0
loc_20d4b2:
	sub.w d0,$8(a1)
loc_20d4b6:
	rts
	.incbin 54456, 24
loc_20d4d0:
	jmp (sub_203c6a).l
loc_20d4d6:
	movea.w $2a(a0),a1
	cmpi.b #$21,$0(a1)
	bne.s loc_20d4d0
	tst.b $29(a0)
	bmi.s loc_20d4ee
	jmp (sub_203bbe).l
loc_20d4ee:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	lea dat_20d592(pc),a1
	jsr (sub_205dc8).l
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20d50c:
	dc.b $00,$02,$1d,$00,$01,$ff
dat_20d512:
	.incbin 54546, 56
dat_20d54a:
	.incbin 54602, 72
dat_20d592:
	.incbin 54674, 22
	tst.b $29(a0)
	bne.s loc_20d5b4
	jsr (sub_20ebde).l
loc_20d5b4:
	tst.b $24(a0)
	beq.s loc_20d5d8
	movem.w $3a(a0),a1-a3
	cmpi.b #$22,$0(a1)
	bne.s loc_20d608
	cmpi.b #$22,$0(a2)
	bne.s loc_20d608
	cmpi.b #$22,$0(a3)
	bne.s loc_20d608
loc_20d5d8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d5fe(pc,d0.w),d0
	jsr dat_20d5fe(pc,d0.w)
	jsr (sub_203bbe).l
	tst.b $29(a0)
	bne.s loc_20d5fc
	move.w $34(a0),d0
	jmp (loc_207d12).l
loc_20d5fc:
	rts
dat_20d5fe:
	dc.b $00,$10,$01,$1a,$01,$42,$01,$6a
	dc.b $01,$8c
loc_20d608:
	jmp (sub_203c6a).l
	move.w #$3,$2a(a0)
	move.b #$1,$1a(a0)
	move.b #$c,$16(a0)
	move.b #$33,$20(a0)
	movea.w a0,a1
	bsr.w sub_20d6e4
	tst.b $28(a0)
	bne.s loc_20d63c
	move.w #$24,d0
	move.w #$6,d1
	bra.s loc_20d644
loc_20d63c:
	move.w #$24,d0
	move.w #$c,d1
loc_20d644:
	move.w d0,$2c(a0)
	move.w d1,$30(a0)
	lea $3a(a0),a6
	move.w #$2,d6
	move.w $8(a0),d5
	tst.b $28(a0)
	bne.s loc_20d666
	moveq #$2,d4
	moveq #$b,d3
	moveq #$ffffffb4,d2
	bra.s loc_20d66c
loc_20d666:
	moveq #$3,d4
	moveq #$7,d3
	moveq #$33,d2
loc_20d66c:
	jsr (sub_207cee).l
	bne.s loc_20d608
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
	bsr.s sub_20d6e4
	dbf d6,loc_20d66c
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

sub_20d6e4:
	move.b #$2,$24(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.w #$23fe,$2(a1)
	move.l #$20d7f2,$4(a1)
	move.w $8(a0),$34(a1)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206dea).l
	tst.w d1
	bpl.s loc_20d73e
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	movea.w a0,a1
	tst.b $29(a0)
	beq.s loc_20d73a
	movea.w $3a(a0),a1
loc_20d73a:
	addq.w #$1,$36(a1)
loc_20d73e:
	rts
	tst.b $29(a0)
	bne.s loc_20d766
	cmpi.w #$4,$36(a0)
	bne.s loc_20d766
	movem.w $3a(a0),a1-a3
	addq.b #$2,$24(a0)
	addq.b #$2,$24(a1)
	addq.b #$2,$24(a2)
	addq.b #$2,$24(a3)
	bra.s loc_20d768
loc_20d766:
	rts
loc_20d768:
	addq.b #$2,$24(a0)
	eori.w #$3,$2a(a0)
	move.w $2c(a0),$2e(a0)
	move.w $30(a0),$32(a0)
	tst.b $29(a0)
	bne.s loc_20d78a
	eori.b #$1,$1a(a0)
loc_20d78a:
	move.w $2a(a0),d0
	sub.w d0,$32(a0)
	bne.s loc_20d7c2
	move.w $30(a0),$32(a0)
	bsr.s sub_20d7de
	move.w $34(a0),d0
	sub.w $8(a0),d0
	bpl.s loc_20d7a8
	neg.w d0
loc_20d7a8:
	cmpi.w #$50,d0
	bge.s loc_20d7ce
	jsr (sub_206dea).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20d7ce
	add.w d1,$c(a0)
loc_20d7c2:
	subq.w #$1,$2e(a0)
	bne.s loc_20d7cc
	subq.b #$2,$24(a0)
loc_20d7cc:
	rts
loc_20d7ce:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bsr.s sub_20d7de
	bra.s loc_20d78a

sub_20d7de:
	btst.b #$0,$1(a0)
	bne.s loc_20d7ec
	subq.w #$1,$8(a0)
	bra.s loc_20d7f0
loc_20d7ec:
	addq.w #$1,$8(a0)
loc_20d7f0:
	rts
	.incbin 55282, 32
	tst.b $28(a0)
	bmi.w loc_20da20
	jsr (sub_20ebde).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d83a(pc,d0.w),d0
	jsr dat_20d83a(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20d83a:
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
	lea dat_20daa6(pc),a1
	lea dat_20da9a(pc),a2
	move.l #$fff80000,d0
	tst.b $28(a0)
	beq.s loc_20d898
	lea dat_20db46(pc),a1
	lea dat_20daa0(pc),a2
	move.l #$fffb0000,d0
loc_20d898:
	move.l a1,$4(a0)
	move.l a2,$2c(a0)
	move.l d0,$30(a0)
	tst.b $29(a0)
	beq.s loc_20d8b6
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d8b6:
	addq.b #$2,$24(a0)
	bra.s loc_20d8d0
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
	subq.w #$8,$c(a0)
	move.l $30(a0),$34(a0)
loc_20d8d0:
	addi.l #$4000,$34(a0)
	move.l $34(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206dea).l
	tst.w d1
	bpl.s loc_20d8fc
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	addq.w #$8,$c(a0)
loc_20d8fc:
	rts
	addq.b #$2,$24(a0)
	move.b #$36,$20(a0)
	move.w #$b4,$2a(a0)
	tst.b $28(a0)
	bne.s loc_20d930
	lea ($d000).w,a1
	bsr.s sub_20d944
	tst.b d6
	beq.s loc_20d930
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$3c,$2a(a0)
	rts
loc_20d930:
	subq.w #$1,$2a(a0)
	bne.s loc_20d93a
	subq.b #$6,$24(a0)
loc_20d93a:
	movea.l $2c(a0),a1
	jmp (sub_205dc8).l

sub_20d944:
	moveq #$0,d6
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20d98a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
	bcc.s loc_20d98a
	tst.w d0
	smi d0
	btst.b #$0,$1(a0)
	seq d1
	eor.b d1,d0
	bne.s loc_20d98a
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	moveq #$ffffffff,d6
loc_20d98a:
	rts
	subq.w #$1,$2a(a0)
	bne.s loc_20d996
	addq.b #$2,$24(a0)
loc_20d996:
	rts
	jsr (sub_207cd8).l
	bne.s loc_20da18
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
	move.l #$20dbdc,$4(a1)
	move.w #$18,d0
	move.l #$30000,d1
	btst.b #$0,$1(a1)
	beq.s loc_20da00
	neg.w d0
	neg.l d1
loc_20da00:
	add.w d0,$8(a1)
	move.l d1,$34(a1)
	tst.b $1(a0)
	bpl.s loc_20da18
	move.w #$a0,d0
	jsr (sub_2023b8).l
loc_20da18:
	subi.b #$a,$24(a0)
	rts
loc_20da20:
	tst.w $2a(a0)
	bne.s loc_20da60
	tst.b $21(a0)
	beq.s loc_20da4c
	clr.b $21(a0)
	lea ($d000).w,a1
	cmpi.b #$4,$24(a1)
	beq.s loc_20da4c
	cmpi.b #$6,$24(a1)
	beq.s loc_20da4c
	tst.w $30(a1)
	bne.s loc_20da4c
	bra.s loc_20da56
loc_20da4c:
	move.l $34(a0),d0
	add.l d0,$8(a0)
	bra.s loc_20da84
loc_20da56:
	move.w a1,$2c(a0)
	move.w #$78,$2a(a0)
loc_20da60:
	subq.w #$1,$2a(a0)
	bne.s loc_20da6c
	jmp (sub_203c6a).l
loc_20da6c:
	movea.w $2c(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	clr.w $10(a1)
	clr.w $14(a1)
loc_20da84:
	lea dat_20dbd6(pc),a1
	jsr (sub_205dc8).l
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20da9a:
	dc.b $00,$02,$07,$01,$02,$ff
dat_20daa0:
	dc.b $00,$02,$0f,$01,$02,$ff
dat_20daa6:
	.incbin 55974, 160
dat_20db46:
	.incbin 56134, 144
dat_20dbd6:
	.incbin 56278, 22
	tst.b $28(a0)
	bmi.w loc_20dd7a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dc0e(pc,d0.w),d0
	jsr dat_20dc0e(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20dc0e:
	dc.b $00,$06,$00,$3c,$00,$80
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$4332,$2(a0)
	move.l #$20ddb2,$4(a0)
	tst.b $28(a0)
	beq.s loc_20dc62
	lea ($d000).w,a1
	bsr.s sub_20dc6c
	bcc.s loc_20dc62
	addq.b #$2,$24(a0)
	move.b #$f8,$20(a0)
loc_20dc62:
	lea ($d000).w,a1
	jmp (sub_2090e6).l

sub_20dc6c:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subq.w #$8,d0
	subi.w #$58,d0
	bcc.s loc_20dc8c
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fff8,d0
	subi.w #$10,d0
loc_20dc8c:
	rts
	tst.b $21(a0)
	bne.s loc_20dcb2
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	addi.l #$4000,$2e(a0)
	jsr (sub_206dea).l
	tst.w d1
	bmi.s loc_20dcb2
	bra.w loc_20dd98
loc_20dcb2:
	lea dat_20dd4a(pc),a6
	moveq #$3,d6
loc_20dcb8:
	jsr (sub_207cd8).l
	bne.s loc_20dd22
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
	dbf d6,loc_20dcb8
loc_20dd22:
	move.b #$18,$0(a0)
	move.b #$0,$24(a0)
	move.b #$1,$25(a0)
	clr.w $20(a0)
	tst.b $1(a0)
	bpl.s loc_20dd48
	move.w #$9e,d0
	jmp (sub_2023b8).l
loc_20dd48:
	rts
dat_20dd4a:
	.incbin 56650, 48
loc_20dd7a:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	jsr (sub_203bbe).l
loc_20dd98:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	bgt.s loc_20ddb0
	jmp (sub_203c6a).l
loc_20ddb0:
	rts
	.incbin 56754, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de04(pc,d0.w),d0
	jsr dat_20de04(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20de04:
	.incbin 56836, 240
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20df54(pc,d0.w),d0
	jsr dat_20df54(pc,d0.w)
	jsr (sub_203bbe).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20df32
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20df32:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20df50
	rts
loc_20df50:
	bra.w loc_20e102
dat_20df54:
	dc.b $00,$10,$00,$60
dat_20df58:
	dc.b $12,$0c,$00,$12,$0c,$83,$0a,$0e
	dc.b $82,$0a,$0e,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$44b,d0
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20e0e2,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20df58(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20e01e(pc)
	tst.b $1a(a0)
	beq.s loc_20dfc8
	lea ($d000).w,a1
	jmp (sub_2090e6).l
loc_20dfc8:
	lea ($d000).w,a1
	jsr (sub_2090e6).l
	beq.s loc_20e01c
	btst.b #$3,$22(a0)
	beq.s loc_20e01c
	tst.b ($ff1521).l
	bne.s loc_20e01c
	tst.b ($ff151f).l
	bne.s loc_20e01c
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20e01a
	tst.w $30(a0)
	bne.s loc_20e01a
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207278).l
loc_20e01a:
	movea.l (a7)+,a0
loc_20e01c:
	rts

sub_20e01e:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20e038
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20e03a(pc,d0.w),d0
	jmp dat_20e03a(pc,d0.w)
loc_20e038:
	rts
dat_20e03a:
	.incbin 57402, 200
loc_20e102:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20e126
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20e126:
	jmp (sub_203c6a).l
	.incbin 57644, 374
	tst.b $29(a0)
	bne.w loc_20e40a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e2b8(pc,d0.w),d0
	jmp dat_20e2b8(pc,d0.w)
dat_20e2b8:
	dc.b $00,$08,$00,$52,$00,$90,$00,$aa
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$20e472,$4(a0)
	move.b #$3,$18(a0)
	move.b #$11,$16(a0)
	move.w #$4350,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e2f0
	move.w #$43a0,d0
loc_20e2f0:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	lea ($d000).w,a1
	jsr (sub_2090e0).l
	beq.s loc_20e33c
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20e32e
	neg.w d0
loc_20e32e:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_2023b8).l
loc_20e33c:
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
	lea ($d000).w,a1
	jsr (sub_2090e0).l
	subq.w #$1,$2a(a0)
	bpl.s loc_20e35c
	addq.b #$2,$24(a0)
loc_20e35c:
	jmp (sub_203bbe).l
	movem.l (a0),a2-a5
	moveq #$ffffffff,d1
	moveq #$8,d2
	moveq #$0,d3
	move.b $28(a0),d3
	subq.w #$1,d3
	asl.w #$3,d3
	tst.w $2c(a0)
	bmi.s loc_20e37c
	neg.w d3
loc_20e37c:
	jsr (sub_207cd8).l
	bne.w loc_20e3c2
	movem.l a2-a5,(a1)
	move.b d1,$29(a1)
	sub.w d2,$c(a1)
	add.w d3,$8(a1)
	move.w #$4,$2a(a1)
	move.b #$8,$1a(a1)
	jsr (sub_207cd8).l
	bne.w loc_20e3c2
	movem.l a2-a5,(a1)
	move.b d1,$29(a1)
	add.w d2,$c(a1)
	add.w d3,$8(a1)
	move.b #$9,$1a(a1)
loc_20e3c2:
	lea ($d000).w,a1
	jsr (sub_2090e0).l
	beq.s loc_20e3d4
	jsr (sub_208f98).l
loc_20e3d4:
	subq.b #$1,$28(a0)
	ble.w loc_20e46c
	subq.b #$2,$24(a0)
	subq.b #$1,$1a(a0)
	subq.b #$8,$17(a0)
	subq.b #$8,$19(a0)
	move.w #$7,$2a(a0)
	move.w $2c(a0),d0
	add.w d0,$8(a0)
	lea ($d000).w,a1
	jsr (sub_2090e0).l
	jmp (sub_203bbe).l
loc_20e40a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e418(pc,d0.w),d0
	jmp dat_20e418(pc,d0.w)
dat_20e418:
	dc.b $00,$06,$00,$18,$00,$28
	addq.b #$2,$24(a0)
	move.l #$8080308,$16(a0)
	jmp (sub_203bbe).l
	subq.w #$1,$2a(a0)
	bpl.s loc_20e43a
	addq.b #$2,$24(a0)
loc_20e43a:
	jmp (sub_203bbe).l
	tst.b $1(a0)
	bpl.s loc_20e46c
	move.l $2c(a0),d0
	addi.l #$4000,d0
	cmpi.l #$160000,d0
	ble.s loc_20e45e
	move.l #$160000,d0
loc_20e45e:
	move.l d0,$2c(a0)
	add.l d0,$c(a0)
	jmp (sub_203bbe).l
loc_20e46c:
	jmp (sub_203c6a).l
	.incbin 58482, 778
	tst.b $29(a0)
	beq.s loc_20e78a
	bpl.w loc_20e8d4
	bra.w loc_20e906
loc_20e78a:
	tst.b $24(a0)
	bne.w loc_20e83a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.b #$3,$18(a0)
	move.w #$358,$2(a0)
	move.l #$20e994,$4(a0)
	lea dat_20e9b6(pc),a1
	move.b $28(a0),d0
	andi.w #$fffe,d0
	add.w d0,d0
	adda.w d0,a1
	move.w (a1)+,$36(a0)
	move.w (a1),$30(a0)
	move.w #$100,$34(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e7f0
	neg.l $2e(a0)
	neg.l $32(a0)
loc_20e7f0:
	lea $38(a0),a6
	move.w $36(a0),d6
loc_20e7f8:
	jsr (sub_207cee).l
	bne.w loc_20e94e
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
	dbf d6,loc_20e7f8
	move.b #$ff,$29(a1)
loc_20e83a:
	move.l $2a(a0),d6
	add.l $32(a0),d6
	move.l $2e(a0),d5
	beq.s loc_20e864
	move.l d6,d1
	move.l d5,d0
	bpl.s loc_20e852
	neg.l d1
	neg.l d0
loc_20e852:
	tst.l d1
	bge.s loc_20e85a
	moveq #$0,d6
	bra.s loc_20e860
loc_20e85a:
	cmp.l d0,d1
	ble.s loc_20e864
	move.l d5,d6
loc_20e860:
	neg.l $32(a0)
loc_20e864:
	move.l d6,$2a(a0)
	lea $38(a0),a6
	move.w $36(a0),d6
	subq.w #$1,d6
	move.l $8(a0),d5
	move.l $c(a0),d4
	moveq #$0,d1
	moveq #$0,d0
	move.b $2c(a0),d0
	jsr (sub_2007dc).l
	swap d1
	swap d0
	asr.l #$4,d1
	asr.l #$4,d0
loc_20e890:
	moveq #$ffffffff,d2
	move.b (a6)+,d2
	lsl.w #$6,d2
	movea.w d2,a1
	add.l d1,d5
	add.l d0,d4
	move.l d5,$8(a1)
	move.l d4,$c(a1)
	dbf d6,loc_20e890
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
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
loc_20e8d4:
	tst.b $24(a0)
	bne.w loc_20e93c
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.b #$3,$18(a0)
	move.w #$358,$2(a0)
	rts
loc_20e906:
	tst.b $24(a0)
	bne.s loc_20e934
	addq.b #$2,$24(a0)
	move.b #$2,$1a(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	move.b #$2,$18(a0)
	move.w #$431c,$2(a0)
loc_20e934:
	lea ($d000).w,a1
	bsr.w sub_20e954
loc_20e93c:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.s loc_20e94e
	jmp (sub_203bbe).l
loc_20e94e:
	jmp (sub_203c6a).l

sub_20e954:
	move.w $10(a0),-(a7)
	move.w #$0,$10(a0)
	move.b #$a,$16(a0)
	jsr (sub_2090e0).l
	sne d0
	move.w (a7)+,$10(a0)
	move.b #$8,$16(a0)
	tst.b d0
	beq.s loc_20e992
	jsr (sub_2090e0).l
	beq.s loc_20e992
	moveq #$2,d0
	tst.b ($ff158f).l
	beq.s loc_20e98e
	neg.w d0
loc_20e98e:
	add.w d0,$8(a1)
loc_20e992:
	rts
	.incbin 59796, 34
dat_20e9b6:
	dc.b $00,$05,$00,$00,$00,$05,$80,$00
	dc.b $00,$07,$40,$00
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9dc(pc,d0.w),d0
	jsr dat_20e9dc(pc,d0.w)
	jsr (sub_203bbe).l
	jmp (loc_207d0e).l
dat_20e9dc:
	dc.b $00,$06,$00,$3c,$00,$f6
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$30,$16(a0)
	move.b #$ee,$20(a0)
	move.w #$446b,$2(a0)
	move.l #$20eb08,$4(a0)
	move.b $21(a0),d6
	beq.s loc_20ea3e
	clr.b $21(a0)
	lea ($d000).w,a1
	asr.w $10(a1)
	asr.w $14(a1)
	jsr (sub_2090e6).l
	beq.s loc_20ea3c
	jsr (sub_208f98).l
loc_20ea3c:
	bra.s loc_20ea48
loc_20ea3e:
	lea ($d000).w,a1
	jmp (sub_2090e6).l
loc_20ea48:
	move.w #$b0,d0
	jsr (sub_2023b8).l
	addq.b #$2,$24(a0)
	clr.b $20(a0)
	lea dat_20eb7e(pc),a6
	lea dat_20eb9e(pc),a5
	lea dat_20eb76(pc),a4
	moveq #$7,d6
	movea.w a0,a1
	bra.s loc_20eaa4
loc_20ea6c:
	jsr (sub_207cd8).l
	bne.s loc_20ead2
	move.b $0(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
loc_20eaa4:
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
	dbf d6,loc_20ea6c
loc_20ead2:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	ble.s loc_20eb02
	jmp (sub_203bbe).l
loc_20eb02:
	jmp (sub_203c6a).l
	.incbin 60168, 110
dat_20eb76:
	dc.b $02,$05,$03,$05,$04,$05,$07,$05
dat_20eb7e:
	.incbin 60286, 32
dat_20eb9e:
	.incbin 60318, 64

sub_20ebde:
	tst.b ($ff156a).l
	beq.s loc_20ec24
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ebf6
	tst.b $28(a0)
	beq.s loc_20ec24
loc_20ebf6:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203c6a).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20ec22
	move.w #$9e,d0
	jsr (sub_2023b8).l
loc_20ec22:
	addq.l #$4,a7
loc_20ec24:
	rts

sub_20ec26:
	tst.b $28(a0)
	bmi.s loc_20ec56
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ec46
	tst.b ($ff156d).l
	bne.s loc_20ec56
	addq.l #$4,a7
	jmp (loc_207d0e).l
loc_20ec46:
	tst.b ($ff156a).l
	bne.s loc_20ec56
	addq.l #$4,a7
	jmp (sub_203c6a).l
loc_20ec56:
	rts
	jsr (sub_20ec26).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ed7a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ec78(pc,d0.w),d0
	jmp dat_20ec78(pc,d0.w)
dat_20ec78:
	.incbin 60536, 258
loc_20ed7a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed88(pc,d0.w),d0
	jmp dat_20ed88(pc,d0.w)
dat_20ed88:
	.incbin 60808, 994
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$3b6,$2(a0)
	move.l #$20f1fe,$4(a0)
	moveq #$8,d0
	moveq #$4,d1
	moveq #$0,d2
	tst.b $28(a0)
	bmi.s loc_20f19a
	moveq #$14,d0
	moveq #$18,d1
	moveq #$1,d2
loc_20f19a:
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
	lea dat_20f1ba(pc),a1
	jsr (sub_205dc8).l
	jmp (sub_203bbe).l
dat_20f1ba:
	.incbin 61882, 174
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f28c(pc,d0.w),d0
	jsr dat_20f28c(pc,d0.w)
	jsr (sub_203bbe).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f28a
	jmp (loc_207d0e).l
loc_20f28a:
	rts
dat_20f28c:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20f6ba(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20f43c,$4(a0)
	move.l #$20f67a,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20f300
	addq.b #$2,d0
loc_20f300:
	tst.b ($ff152e).l
	bne.s loc_20f30a
	addq.b #$1,d0
loc_20f30a:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20f32a
	tst.b ($ff152e).l
	bne.s loc_20f32a
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20f32a:
	tst.b ($ff156a).l
	bne.s loc_20f392
	tst.b ($ff152e).l
	bne.s loc_20f392
	bsr.w sub_20f40e
	tst.b $21(a0)
	beq.s loc_20f37e
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20aade).l
	lea ($d000).w,a1
	jsr (sub_2090e6).l
	beq.s loc_20f37c
	jsr (sub_208f98).l
loc_20f37c:
	rts
loc_20f37e:
	lea ($d000).w,a1
	jsr (sub_2090e6).l
	lea dat_20f434(pc),a1
	jmp (sub_205dc8).l
loc_20f392:
	rts
	.incbin 62356, 122

sub_20f40e:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20f424
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20f424:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20f432
	neg.w $32(a0)
loc_20f432:
	rts
dat_20f434:
	.incbin 62516, 646
dat_20f6ba:
	.incbin 63162, 506

sub_20f8b4:
	jmp (loc_20663c).l
dat_20f8ba:
	.incbin 63674, 16
dat_20f8ca:
	.incbin 63690, 1122
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
	.incbin 227668, 17554
dat_23bde6:
	.incbin 245222, 768
dat_23c0e6:
	.incbin 245990, 422
dat_23c28c:
	.incbin 246412, 15732
