; R51A__.MMD
; disassembled from the disc; code only, data comes from data/R51A__.MMD at build time
	.file "R51A__.MMD", 262144

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
	bsr.w sub_207ab0
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
	lea (dat_20faba).l,a2
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
	bsr.w sub_2029e2
	bsr.w sub_202b4c
	bset.b #$2,($f754).w
	bsr.w sub_2036c2
	bsr.w sub_203568
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
	jsr (sub_20fab4).l
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
	jsr (sub_205d72).l
	bsr.w sub_207ab0
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
	jsr (sub_207ac6).l
	jsr (sub_203ac8).l
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
	bsr.w sub_202b4c
loc_20196e:
	jsr (sub_203c72).l
	tst.w ($ff190e).l
	bne.s loc_201980
	bsr.w sub_200184
loc_201980:
	jsr (sub_20c526).l
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
	jmp (sub_205d72).l
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
	jmp (sub_205d72).l
loc_201bc4:
	tst.b ($ff151f).l
	bne.s loc_201bba
	tst.b ($ff1520).l
	bne.s loc_201bba
	move.w #$90,d0
	jmp (sub_205d72).l
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
	jmp (sub_205d72).l
loc_201c00:
	tst.b ($ff151f).l
	bne.s loc_201bf6
	tst.b ($ff1520).l
	bne.s loc_201bf6
	move.w #$91,d0
	jmp (sub_205d72).l
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
	bsr.w sub_205c94
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
	jsr (sub_20fab4).l
loc_201e38:
	jsr (sub_20236c).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20314e
	jsr (sub_202944).l
	bsr.w sub_202660
	jmp (loc_20ad20).l
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
	bsr.w sub_205c94
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
	bsr.w sub_20314e
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
	bsr.w sub_205c94
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
	lea (dat_20faca).l,a1
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
	lea (dat_20faca).l,a1
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
	lea (dat_20faca).l,a1
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
	moveq #$0,d2
	lea (dat_2029ba).l,a0
loc_20294e:
	move.w (a0)+,d1
	bmi.s loc_20295c
	cmp.w ($d008).w,d1
	bcc.s loc_20295c
	addq.b #$1,d2
	bra.s loc_20294e
loc_20295c:
	cmp.b ($ff156c).l,d2
	bne.s loc_202968
loc_202964:
	movea.l (a7)+,a6
	rts
loc_202968:
	move.b d2,($ff156c).l
	clr.l ($f680).w
	clr.w ($f6f8).w
	moveq #$0,d1
	move.b dat_2029cc(pc,d2.w),d1
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
	bsr.w sub_20372e
	move.w ($f704).w,d0
	move.w ($f700).w,d1
	bsr.w sub_202b0a
	bsr.w sub_203582
	bra.s loc_202964
dat_2029ba:
	.incbin 10682, 18
dat_2029cc:
	.incbin 10700, 22

sub_2029e2:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202a3e).l,a0
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
	bra.w loc_202a6a
dat_202a3e:
	dc.b $00,$04,$00,$00,$2a,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202a4a:
	.incbin 10826, 32
loc_202a6a:
	tst.b ($ff1522).l
	beq.s loc_202a8a
	jsr (sub_206ba0).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a88
	moveq #$0,d0
loc_202a88:
	bra.s loc_202ac6
loc_202a8a:
	lea (dat_202b02).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202aac
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202a4a).l,a1
	adda.w d0,a1
	bra.s loc_202ab6
loc_202aac:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202ab6:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202ac6:
	subi.w #$a0,d1
	bcc.s loc_202ace
	moveq #$0,d1
loc_202ace:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202ad8
	move.w d2,d1
loc_202ad8:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202ae4
	moveq #$0,d0
loc_202ae4:
	cmp.w ($f72e).w,d0
	blt.s loc_202aee
	move.w ($f72e).w,d0
loc_202aee:
	move.w d0,($f704).w
	bsr.w sub_202b0a
	lea (dat_202b06).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202b02:
	dc.b $00,$40,$02,$6c
dat_202b06:
	dc.b $7f,$7f,$15,$5b

sub_202b0a:
	swap d0
	btst.b #$0,($ff156c).l
	beq.s loc_202b1a
	lsr.l #$2,d0
	bra.s loc_202b26
loc_202b1a:
	lsr.l #$1,d0
	move.l d0,d2
	lsr.l #$2,d2
	add.l d2,d0
	lsr.l #$1,d2
	add.l d2,d0
loc_202b26:
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

sub_202b4c:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202b58
	rts
loc_202b58:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202dc4
	bsr.w sub_202e64
	bsr.w sub_20375c
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_2030ee
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_2030ba
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asl.l #$2,d4
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_203086
	move.w ($f704).w,d0
	btst.b #$0,($ff156c).l
	beq.s loc_202bc6
	lsr.w #$2,d0
	bra.s loc_202bd2
loc_202bc6:
	lsr.w #$1,d0
	move.w d0,d2
	lsr.w #$2,d2
	add.w d2,d0
	lsr.w #$2,d2
	add.w d2,d0
loc_202bd2:
	bsr.w sub_203056
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
	beq.s loc_202c1e
	bsr.w sub_202cf2
	bsr.w sub_202d42
	bra.w loc_202c46
loc_202c1e:
	move.w ($f708).w,d0
	neg.w d0
	move.w #$7,d6
loc_202c28:
	move.w d0,(a1)+
	dbf d6,loc_202c28
	bsr.w sub_202c64
	bsr.w sub_202cae
	move.w ($f708).w,d0
	neg.w d0
	move.w #$7,d6
loc_202c40:
	move.w d0,(a1)+
	dbf d6,loc_202c40
loc_202c46:
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202d82

sub_202c64:
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
loc_202c88:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202ca8(pc,d6.w),d5
loc_202c92:
	move.w d0,-(a1)
	dbf d5,loc_202c92
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c88
	adda.w #$44,a1
	rts
dat_202ca8:
	dc.b $0d,$0b,$01,$01,$01,$01

sub_202cae:
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
loc_202cce:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202cea(pc,d6.w),d5
loc_202cd8:
	move.w d0,(a1)+
	dbf d5,loc_202cd8
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202cce
	rts
dat_202cea:
	dc.b $0f,$13,$01,$01,$01,$01,$01,$00

sub_202cf2:
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
loc_202d16:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d36(pc,d6.w),d5
loc_202d20:
	move.w d0,-(a1)
	dbf d5,loc_202d20
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d16
	adda.w #$2c,a1
	rts
dat_202d36:
	dc.b $01,$01,$01,$01,$01,$01,$01,$01
	dc.b $01,$01,$01,$00

sub_202d42:
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
loc_202d62:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d7e(pc,d6.w),d5
loc_202d6c:
	move.w d0,(a1)+
	dbf d5,loc_202d6c
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d62
	rts
dat_202d7e:
	dc.b $1f,$03,$05,$00
loc_202d82:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202d90(pc,d2.w)
loc_202d8e:
	move.w (a2)+,d0
loc_202d90:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202d8e
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
	dbf d1,loc_202d8e
	rts

sub_202dc4:
	move.w ($f700).w,d4
	bsr.s sub_202df8
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202df6
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202df0
	bset.b #$2,($f754).w
	rts
loc_202df0:
	bset.b #$3,($f754).w
loc_202df6:
	rts

sub_202df8:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202e0a
	bcs.s loc_202e3a
	bra.s loc_202e10
loc_202e0a:
	clr.w ($f73a).w
	rts
loc_202e10:
	cmpi.w #$10,d0
	blt.s loc_202e1a
	move.w #$10,d0
loc_202e1a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202e28
	move.w ($f72a).w,d0
loc_202e28:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202e3a:
	cmpi.w #$fff0,d0
	bge.s loc_202e44
	move.w #$fff0,d0
loc_202e44:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202e28
	move.w ($f728).w,d0
	bra.s loc_202e28
	.incbin 11860, 16

sub_202e64:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202e78
	subq.w #$5,d0
loc_202e78:
	btst.b #$1,$22(a6)
	beq.s loc_202e98
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ee4
	subi.w #$40,d0
	bcc.s loc_202ee4
	tst.b ($f75c).w
	bne.s loc_202ef6
	bra.s loc_202ea4
loc_202e98:
	sub.w ($f73e).w,d0
	bne.s loc_202eaa
	tst.b ($f75c).w
	bne.s loc_202ef6
loc_202ea4:
	clr.w ($f73c).w
	rts
loc_202eaa:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ed2
	move.w $14(a6),d1
	bpl.s loc_202eba
	neg.w d1
loc_202eba:
	cmpi.w #$800,d1
	bcc.s loc_202ee4
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202f44
	cmpi.w #$fffa,d0
	blt.s loc_202f0e
	bra.s loc_202efc
loc_202ed2:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202f44
	cmpi.w #$fffe,d0
	blt.s loc_202f0e
	bra.s loc_202efc
loc_202ee4:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202f44
	cmpi.w #$fff0,d0
	blt.s loc_202f0e
	bra.s loc_202efc
loc_202ef6:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202efc:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202f4e
	bra.w loc_202f1a
loc_202f0e:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f1a:
	cmp.w ($f72c).w,d1
	bgt.s loc_202f72
	cmpi.w #$ff00,d1
	bgt.s loc_202f3e
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f72
loc_202f3e:
	move.w ($f72c).w,d1
	bra.s loc_202f72
loc_202f44:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f4e:
	cmp.w ($f72e).w,d1
	blt.s loc_202f72
	subi.w #$800,d1
	bcs.s loc_202f6e
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f72
loc_202f6e:
	move.w ($f72e).w,d1
loc_202f72:
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
	bne.s loc_202fb4
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202fae
	bset.b #$0,($f754).w
	rts
loc_202fae:
	bset.b #$1,($f754).w
loc_202fb4:
	rts
	.incbin 12214, 160

sub_203056:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_203084
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_20307e
	bset.b #$0,($f756).w
	rts
loc_20307e:
	bset.b #$1,($f756).w
loc_203084:
	rts

sub_203086:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030b8
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030b2
	bset.b d6,($f756).w
	bra.s loc_2030b8
loc_2030b2:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_2030b8:
	rts

sub_2030ba:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_2030ec
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_2030e6
	bset.b d6,($f758).w
	bra.s loc_2030ec
loc_2030e6:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_2030ec:
	rts

sub_2030ee:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203120
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20311a
	bset.b d6,($f75a).w
	bra.s loc_203120
loc_20311a:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203120:
	rts
	.incbin 12578, 44

sub_20314e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20320c
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203302
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203304
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20320a
	bclr.b #$0,(a2)
	beq.s loc_2031c0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203530
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203306
loc_2031c0:
	bclr.b #$1,(a2)
	beq.s loc_2031da
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203530
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203306
loc_2031da:
	bclr.b #$2,(a2)
	beq.s loc_2031f0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203530
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20335c
loc_2031f0:
	bclr.b #$3,(a2)
	beq.s loc_20320a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203530
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20335c
loc_20320a:
	rts

sub_20320c:
	lea (dat_203604).l,a0
	btst.b #$0,($ff156c).l
	beq.s loc_203222
	lea (dat_203646).l,a0
loc_203222:
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203238
	bclr.b #$1,(a2)
	beq.s loc_203282
	move.w #$e0,d4
loc_203238:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2032b2(pc,d0.w),a3
	beq.s loc_20326a
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203530
	movem.l (a7)+,d4-d5
	bsr.w sub_203306
	movea.l (a7)+,a0
	bra.s loc_203282
loc_20326a:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203532
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203332
	movea.l (a7)+,a0
loc_203282:
	tst.b (a2)
	bne.s loc_203288
	rts
loc_203288:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20329c
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20329c:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2032c2
dat_2032b2:
	.incbin 12978, 16
loc_2032c2:
	moveq #$f,d6
	move.l #$800000,d7
loc_2032ca:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2032f6
	btst.b d0,(a2)
	beq.s loc_2032f6
	add.w d0,d0
	movea.l dat_2032b2(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203408
	movem.l (a7)+,d4-d5
	bsr.w sub_203530
	bsr.w sub_20338a
	movem.l (a7)+,d4-d5/a0
loc_2032f6:
	addi.w #$10,d4
	dbf d6,loc_2032ca
	clr.b (a2)
	rts

sub_203302:
	rts

sub_203304:
	rts

sub_203306:
	moveq #$15,d6

sub_203308:
	move.l #$800000,d7
	move.l d0,d1
loc_203310:
	movem.l d4-d5,-(a7)
	bsr.w sub_203408
	move.l d1,d0
	bsr.w sub_20338a
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203310
	rts

sub_203332:
	move.l #$800000,d7
	move.l d0,d1
loc_20333a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20340a
	move.l d1,d0
	bsr.w sub_20338a
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20333a
	rts

sub_20335c:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203366:
	movem.l d4-d5,-(a7)
	bsr.w sub_203408
	move.l d1,d0
	bsr.w sub_20338a
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203366
	rts

sub_20338a:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033c6
	btst.b #$3,(a0)
	bne.s loc_2033a6
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033a6:
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
loc_2033c6:
	btst.b #$3,(a0)
	bne.s loc_2033e8
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
loc_2033e8:
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

sub_203408:
	add.w (a3),d5

sub_20340a:
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
	beq.s loc_203458
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
loc_203458:
	rts
	.incbin 13402, 214

sub_203530:
	add.w (a3),d5

sub_203532:
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

sub_203568:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20359e

sub_203582:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2035c6

sub_20359e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035a2:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203530
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203308
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2035a2
	rts
loc_2035c6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035ca:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203604).l,a0
	btst.b #$0,($ff156c).l
	beq.s loc_2035e4
	lea (dat_203646).l,a0
loc_2035e4:
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	bsr.w sub_203688
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2035ca
	rts
dat_203604:
	.incbin 13828, 66
dat_203646:
	.incbin 13894, 50
dat_203678:
	.incbin 13944, 16

sub_203688:
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203678(pc,d0.w),a3
	beq.s loc_2036ac
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203530
	movem.l (a7)+,d4-d5
	bsr.w sub_203306
	bra.s loc_2036c0
loc_2036ac:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203532
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203332
loc_2036c0:
	rts

sub_2036c2:
	moveq #$0,d0
	lea (dat_20faba).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202454
	movea.l (a2)+,a0
	bsr.w sub_20370e
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20051a
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_20370c
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20370c
	bsr.w sub_202582
loc_20370c:
	rts

sub_20370e:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203718:
	move.l d0,(a3)+
	dbf d1,loc_203718
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20372e
	lea ($a040).w,a3
	moveq #$2,d1

sub_20372e:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237954).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203748:
	move.w d1,d0
	movea.l a3,a0
loc_20374c:
	move.b (a1)+,(a0)+
	dbf d0,loc_20374c
	lea $80(a3),a3
	dbf d2,loc_203748
	rts

sub_20375c:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2037d6(pc,d0.w),d0
	jsr dat_2037d6(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203782
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203782:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2037b0
	bcc.s loc_2037b2
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2037a6
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2037a6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2037b0:
	rts
loc_2037b2:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2037ca
	btst.b #$1,($d022).w
	beq.s loc_2037ca
	add.w d1,d1
	add.w d1,d1
loc_2037ca:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2037d6:
	.incbin 14294, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203926(pc,d0.w),d0
	jmp dat_203926(pc,d0.w)
dat_203926:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$310,($f726).w
	rts
	.incbin 14644, 404

sub_203ac8:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203ad0:
	move.b (a0),d0
	beq.s loc_203ae6
	add.w d0,d0
	add.w d0,d0
	lea (dat_203eea).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203ae6:
	lea $40(a0),a0
	dbf d7,loc_203ad0
	rts

sub_203af0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203b2e
	bpl.s loc_203b20
	btst.b #$1,$2c(a0)
	beq.s loc_203b20
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203b2e
loc_203b20:
	btst.b #$2,$2c(a0)
	bne.s loc_203b2e
	addi.w #$38,$12(a0)
loc_203b2e:
	tst.w $12(a0)
	bmi.s loc_203b42
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203b42
	move.w #$1000,$12(a0)
loc_203b42:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203b52:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203b8e
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203b8e
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203b8c
	neg.w d1
loc_203b8c:
	add.w d1,d0
loc_203b8e:
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

sub_203ba8:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203c18
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203c34
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203c34
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203bf2
	cmpi.w #$800,d3
	bcs.s loc_203c04
	subi.w #$800,d3
	bra.s loc_203c04
loc_203bf2:
	cmpi.w #$700,($f704).w
	bcs.s loc_203c04
	cmpi.w #$100,d3
	bcc.s loc_203c04
	addi.w #$800,d3
loc_203c04:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203c34
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203c34
loc_203c18:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203c34
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203c34:
	rts
	.incbin 15414, 30

sub_203c54:
	movea.l a0,a1

sub_203c56:
	moveq #$0,d1
	moveq #$f,d0
loc_203c5a:
	move.l d1,(a1)+
	dbf d0,loc_203c5a
	rts
dat_203c62:
	.incbin 15458, 16

sub_203c72:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203c7e:
	tst.w (a4)
	beq.w loc_203d3e
	moveq #$2,d6
loc_203c86:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203d36
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203cec
	movea.l dat_203c62(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203cd0
	cmpi.w #$800,d2
	bcs.s loc_203ce2
	subi.w #$800,d2
	bra.s loc_203ce2
loc_203cd0:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203ce2
	cmpi.w #$100,d2
	bcc.s loc_203ce2
	addi.w #$800,d2
loc_203ce2:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203d0e
loc_203cec:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203d0e
	.incbin 15606, 24
loc_203d0e:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203d2c
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203d30
loc_203d2c:
	bsr.w sub_203d60
loc_203d30:
	bset.b #$7,$1(a0)
loc_203d36:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203c86
loc_203d3e:
	lea $80(a4),a4
	dbf d7,loc_203c7e
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203d58
	move.l #$0,(a2)
	rts
loc_203d58:
	move.b #$0,-$5(a2)
	rts

sub_203d60:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203da6
	btst.l #$1,d4
	bne.w loc_203df4
loc_203d72:
	cmpi.b #$50,d5
	beq.s loc_203da4
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
	bne.s loc_203d9e
	addq.w #$1,d0
loc_203d9e:
	move.w d0,(a2)+
	dbf d1,loc_203d72
loc_203da4:
	rts
loc_203da6:
	btst.l #$1,d4
	bne.w loc_203e3a
loc_203dae:
	cmpi.b #$50,d5
	beq.s loc_203df2
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
	bne.s loc_203dec
	addq.w #$1,d0
loc_203dec:
	move.w d0,(a2)+
	dbf d1,loc_203dae
loc_203df2:
	rts
loc_203df4:
	cmpi.b #$50,d5
	beq.s loc_203e38
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
	bne.s loc_203e32
	addq.w #$1,d0
loc_203e32:
	move.w d0,(a2)+
	dbf d1,loc_203df4
loc_203e38:
	rts
loc_203e3a:
	cmpi.b #$50,d5
	beq.s loc_203e8c
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
	bne.s loc_203e86
	addq.w #$1,d0
loc_203e86:
	move.w d0,(a2)+
	dbf d1,loc_203e3a
loc_203e8c:
	rts
	.incbin 16014, 92
dat_203eea:
	.incbin 16106, 246

sub_203fe0:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ff2
	move.w #$0,(a1)
	rts
loc_203ff2:
	tst.w (a1)
	bne.s loc_203ffc
	move.b #$1,$1(a1)
loc_203ffc:
	cmpi.w #$2a30,(a1)
	bcs.s loc_204046
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204038
	neg.w $10(a0)
loc_204038:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205d72
loc_204046:
	rts
	tst.b ($ff0f01).l
	bne.s loc_204064
	cmpa.w #$d040,a0
	beq.s loc_204064
	tst.b ($ff1906).l
	beq.s loc_204064
	jmp (loc_2074d6).l
loc_204064:
	move.b $2a(a0),d0
	beq.s loc_20408e
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_204080
	cmpi.b #$2d,d0
	bcs.s loc_20408a
	move.b #$2d,d0
	bra.s loc_20408a
loc_204080:
	cmpi.b #$1e,d0
	bcs.s loc_20408a
	move.b #$1e,d0
loc_20408a:
	move.b d0,$2a(a0)
loc_20408e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20409c(pc,d0.w),d1
	jmp dat_20409c(pc,d1.w)
dat_20409c:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_2040a6:
	tst.b ($d300).w
	bne.s loc_2040e4
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_2040e4:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_20410c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_20410c:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204140:
	tst.b ($ff1506).l
	bne.s loc_2041a6
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2041a6
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2041aa
	cmpi.b #$2f,d1
	bne.s loc_2041a8
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2041a6
	tst.b $2c(a0)
	beq.s loc_2041a6
	jsr (sub_207cc2).l
	bne.s loc_2041a6
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_20419e
	moveq #$0,d0
loc_20419e:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2041a6:
	rts
loc_2041a8:
	rts

sub_2041aa:
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

sub_2041d0:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_2041dc
	neg.w d0
loc_2041dc:
	btst.b #$1,$2c(a0)
	beq.s loc_2041ec
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204214
loc_2041ec:
	cmpi.w #$600,d0
	bcs.s loc_204214
	tst.w $14(a0)
	bpl.s loc_204206
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204222
	move.w #$e0,d1
	bra.s loc_204222
loc_204206:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204222
	move.w #$60,d1
	bra.s loc_204222
loc_204214:
	cmpi.w #$a0,d1
	beq.s loc_204222
	bcc.s loc_204220
	addq.w #$2,d1
	bra.s loc_204222
loc_204220:
	subq.w #$2,d1
loc_204222:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_2041d0
	bsr.w sub_204140
	tst.w ($ff1588).l
	beq.s loc_204248
	btst.b #$4,($f605).w
	beq.s loc_204248
	move.b #$1,($ff1906).l
	rts
loc_204248:
	tst.b ($f7cc).w
	bne.s loc_204254
	move.w ($f604).w,($f602).w
loc_204254:
	btst.b #$0,$2c(a0)
	beq.s loc_204278
	cmpi.b #$6,($ff1506).l
	bne.s loc_204272
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204290
loc_204272:
	bsr.w sub_20455a
	bra.s loc_204290
loc_204278:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2042d6(pc,d0.w),d1
	jsr dat_2042d6(pc,d1.w)
	jsr (sub_20682a).l
loc_204290:
	bsr.s sub_2042e4
	bsr.w sub_2043a4
	bsr.w sub_2043be
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2042b8
	tst.b $1c(a0)
	bne.s loc_2042b8
	move.b $1d(a0),$1c(a0)
loc_2042b8:
	bsr.w sub_205762
	tst.b $2c(a0)
	bmi.s loc_2042d0
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2042d0
	jsr (sub_207070).l
loc_2042d0:
	bsr.w sub_205618
	rts
dat_2042d6:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2042e4:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204308
	move.w $30(a0),d0
	beq.s loc_2042fa
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204308
loc_2042fa:
	btst.b #$6,$2c(a0)
	bne.s loc_204308
	jsr (sub_203ba8).l
loc_204308:
	tst.b ($ff151f).l
	beq.s loc_20434c
	tst.w $32(a0)
	beq.s loc_20434c
	subq.w #$1,$32(a0)
	bne.s loc_20434c
	tst.b ($ff1520).l
	bne.s loc_204344
	tst.b ($ff1958).l
	bne.s loc_204344
	tst.b ($ff152e).l
	bne.s loc_20433e
	move.w #$e,d0
	jsr (sub_205d72).l
loc_20433e:
	jsr (sub_201ad6).l
loc_204344:
	move.b #$0,($ff151f).l
loc_20434c:
	tst.b ($ff1520).l
	beq.s loc_2043a2
	tst.w $34(a0)
	beq.s loc_2043a2
	subq.w #$1,$34(a0)
	bne.s loc_2043a2
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20439a
	tst.b ($ff1958).l
	bne.s loc_20439a
	tst.b ($ff152e).l
	bne.s loc_204394
	move.w #$e,d0
	jsr (sub_205d72).l
loc_204394:
	jsr (sub_201ad6).l
loc_20439a:
	move.b #$0,($ff1520).l
loc_2043a2:
	rts

sub_2043a4:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2043be:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2043ca
loc_2043c8:
	rts
loc_2043ca:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2043dc
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2043c8
loc_2043dc:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204420
	bset.b #$6,$22(a0)
	bne.s loc_2043c8
	bsr.w sub_206076
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2043c8
	bra.s loc_204458
loc_204420:
	tst.w $12(a0)
	beq.s loc_204428
	bpl.s loc_2043c8
loc_204428:
	bclr.b #$6,$22(a0)
	beq.s loc_2043c8
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2043c8
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204458
	move.w #$f000,$12(a0)
loc_204458:
	jsr (sub_207cc2).l
	bne.s loc_20446c
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20446c:
	rts

sub_20446e:
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
	bcs.s loc_204548
	move.l #$50000,d0
loc_204548:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20455a:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204580
	tst.b ($ff152e).l
	beq.s loc_204576
	cmpi.b #$2,($ff152e).l
	bne.s loc_204580
loc_204576:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204630
loc_204580:
	tst.b $2a(a0)
	bne.w loc_20463e
	tst.b ($f784).w
	beq.w loc_20463e
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20459e
	neg.w d0
loc_20459e:
	tst.w ($f786).w
	bne.s loc_2045aa
	move.w #$1,($f786).w
loc_2045aa:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045c0
	move.b #$1,($ff1502).l
	bra.w loc_205d6e
loc_2045c0:
	cmpi.w #$d2,d1
	bcs.s loc_204614
	cmpi.b #$2,($ff1522).l
	beq.s loc_204612
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2045ea
	move.w #$82,d0
	jsr (sub_205d72).l
	moveq #$0,d0
loc_2045ea:
	add.b ($f784).w,d0
	bpl.s loc_2045f4
	moveq #$0,d0
	bra.s loc_2045fc
loc_2045f4:
	cmpi.b #$3,d0
	bcs.s loc_2045fc
	moveq #$2,d0
loc_2045fc:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20446e
	move.b #$2,($ff1522).l
loc_204612:
	rts
loc_204614:
	cmpi.w #$5a,d1
	bcc.s loc_20462c
	cmp.w d2,d0
	bcc.w loc_2040a6
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20462c:
	cmp.w d2,d0
	bcc.s loc_20463e
loc_204630:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20463e:
	rts
	bsr.w sub_203fe0
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204670
	tst.b ($ff195b).l
	beq.s loc_20465e
	cmpi.b #$79,$1a(a0)
	bne.s loc_20469a
	bra.s loc_204666
loc_20465e:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20469a
loc_204666:
	bsr.w sub_204f02
	jmp (sub_203af0).l
loc_204670:
	bsr.w sub_204748
	bsr.w sub_20455a
	bsr.w sub_204fec
	bsr.w sub_205118
	bsr.w sub_2047bc
	bsr.w sub_204f6e
	bsr.w sub_204f02
	jsr (sub_203b52).l
	bsr.w sub_200bdc
	bsr.w sub_205196
loc_20469a:
	rts
	tst.b ($f7c7).w
	bne.s loc_2046b6
	cmpi.b #$15,$1c(a0)
	beq.s loc_2046b6
	tst.w $12(a0)
	bmi.s loc_2046b6
	move.b #$0,$1c(a0)
loc_2046b6:
	bsr.w sub_204748
	bsr.w sub_20455a
	bsr.w sub_2050d6
	bsr.w sub_204e22
	bsr.w sub_204f02
	jsr (sub_203af0).l
	btst.b #$6,$22(a0)
	beq.s loc_2046de
	subi.w #$28,$12(a0)
loc_2046de:
	bsr.w sub_2051e0
	bsr.w sub_205204
	rts
	bsr.w sub_204748
	bsr.w sub_20455a
	bsr.w sub_204fec
	bsr.w sub_205154
	bsr.w sub_204c5c
	bsr.w sub_204f02
	tst.b $2a(a0)
	bne.s loc_20470c
	jsr (sub_203b52).l
loc_20470c:
	bsr.w sub_200bdc
	bsr.w sub_205196
	rts
	bsr.w sub_204748
	bsr.w sub_20455a
	bsr.w sub_2050d6
	bsr.w sub_204e22
	bsr.w sub_204f02
	jsr (sub_203af0).l
	btst.b #$6,$22(a0)
	beq.s loc_20473e
	subi.w #$28,$12(a0)
loc_20473e:
	bsr.w sub_2051e0
	bsr.w sub_205204
	rts

sub_204748:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2047b4
	tst.w ($ff1506).l
	bne.s loc_2047b4
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2047b6).l,a2
loc_20477c:
	move.b (a2)+,d0
	bmi.s loc_20478c
	cmp.b d0,d1
	bne.s loc_20477c
	bset.b #$1,$2c(a0)
	rts
loc_20478c:
	bclr.b #$1,$2c(a0)
	beq.s loc_2047b4
	tst.w $12(a0)
	bpl.s loc_2047b4
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2047b4
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047b4
	neg.w $10(a0)
loc_2047b4:
	rts
dat_2047b6:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2047bc:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204ae6
	tst.w $3e(a0)
	bne.w loc_204a96
	btst.b #$2,($f602).w
	beq.s loc_2047e4
	bsr.w sub_204b76
loc_2047e4:
	btst.b #$3,($f602).w
	beq.s loc_2047f0
	bsr.w sub_204bec
loc_2047f0:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204a96
	tst.w $14(a0)
	beq.s loc_204810
	tst.b $2a(a0)
	beq.w loc_204a96
	bra.s loc_20481c
loc_204810:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20481c:
	btst.b #$3,$22(a0)
	beq.s loc_20486e
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2048c6
	cmpi.b #$1e,$0(a1)
	bne.s loc_20484e
	move.b #$0,$1c(a0)
	bra.w loc_204a96
loc_20484e:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2048aa
	cmp.w d2,d1
	bge.s loc_204898
	bra.s loc_2048c6
loc_20486e:
	jsr (sub_206dd4).l
	cmpi.w #$c,d1
	blt.s loc_2048c6
	move.w #$ab,d0
	jsr (sub_2023b8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2048a2
loc_204898:
	btst.b #$0,$22(a0)
	bne.s loc_2048b2
	bra.s loc_2048bc
loc_2048a2:
	cmpi.b #$3,$37(a0)
	bne.s loc_2048c6
loc_2048aa:
	btst.b #$0,$22(a0)
	bne.s loc_2048bc
loc_2048b2:
	move.b #$32,$1c(a0)
	bra.w loc_204a96
loc_2048bc:
	move.b #$6,$1c(a0)
	bra.w loc_204a96
loc_2048c6:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2048da
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2048da:
	btst.b #$7,($f788).w
	bne.w loc_2049de
	btst.b #$6,($f788).w
	bne.w loc_2049fe
	btst.b #$1,($f602).w
	bne.w loc_2049fe
	andi.b #$f,($f788).w
	beq.s loc_204912
	btst.b #$0,($f603).w
	beq.s loc_204926
	bset.b #$7,($f788).w
	bra.w loc_204aba
loc_204912:
	btst.b #$0,($f603).w
	beq.w loc_204926
	move.b #$1,($f788).w
	bra.w loc_204aba
loc_204926:
	btst.b #$0,($f602).w
	beq.s loc_2049a2
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204984
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204956
	asr.w #$1,d2
	sub.w d2,d1
loc_204956:
	btst.b #$0,$22(a0)
	beq.s loc_204962
	neg.w d0
	neg.w d1
loc_204962:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204978
	cmp.w d0,d1
	ble.s loc_20497e
	bra.s loc_20497c
loc_204978:
	cmp.w d1,d0
	ble.s loc_20497e
loc_20497c:
	move.w d1,d0
loc_20497e:
	move.w d0,$14(a0)
	rts
loc_204984:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20499e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2023b8).l
loc_20499e:
	bra.w loc_204aba
loc_2049a2:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2049c2
	move.w #$ab,d0
	jsr (sub_2023b8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2049fe
loc_2049c2:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023b8).l
	bra.w loc_204a96
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2049de:
	btst.b #$0,($f602).w
	beq.s loc_2049fe
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204aba
	addq.w #$2,($f73e).w
	bra.w loc_204aba
loc_2049fe:
	btst.b #$6,($f788).w
	bne.w loc_204a7a
	andi.b #$f,($f788).w
	beq.s loc_204a22
	btst.b #$1,($f603).w
	beq.s loc_204a34
	bset.b #$6,($f788).w
	bra.w loc_204aba
loc_204a22:
	btst.b #$1,($f603).w
	beq.s loc_204a34
	move.b #$1,($f788).w
	bra.w loc_204aba
loc_204a34:
	btst.b #$1,($f602).w
	beq.s loc_204a96
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204a78
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a78
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204a6a
	neg.w $14(a0)
loc_204a6a:
	move.w #$9c,d0
	jsr (sub_2023b8).l
	bsr.w sub_204f96
loc_204a78:
	bra.s loc_204aba
loc_204a7a:
	btst.b #$1,($f602).w
	beq.s loc_204a96
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204aba
	subq.w #$2,($f73e).w
	bra.s loc_204aba
loc_204a96:
	cmpi.w #$60,($f73e).w
	bne.s loc_204ab0
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204aba
	move.b #$0,($f788).w
	bra.s loc_204aba
loc_204ab0:
	bcc.s loc_204ab6
	addq.w #$4,($f73e).w
loc_204ab6:
	subq.w #$2,($f73e).w
loc_204aba:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ae6
	move.w $14(a0),d0
	beq.s loc_204ae6
	bmi.s loc_204ada
	sub.w d5,d0
	bcc.s loc_204ad4
	move.w #$0,d0
loc_204ad4:
	move.w d0,$14(a0)
	bra.s loc_204ae6
loc_204ada:
	add.w d5,d0
	bcc.s loc_204ae2
	move.w #$0,d0
loc_204ae2:
	move.w d0,$14(a0)
loc_204ae6:
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204b04:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204b74
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204b74
	bmi.s loc_204b1c
	neg.w d1
loc_204b1c:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c94
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204b74
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204b70
	cmpi.b #$40,d0
	beq.s loc_204b5e
	cmpi.b #$80,d0
	beq.s loc_204b58
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b58:
	sub.w d1,$12(a0)
	rts
loc_204b5e:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b70:
	add.w d1,$12(a0)
loc_204b74:
	rts

sub_204b76:
	tst.b $2a(a0)
	bne.s loc_204bea
	move.w $14(a0),d0
	beq.s loc_204b84
	bpl.s loc_204bb4
loc_204b84:
	bset.b #$0,$22(a0)
	bne.s loc_204b98
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b98:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204ba8
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204ba8
	move.w d1,d0
loc_204ba8:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204bb4:
	sub.w d4,d0
	bcc.s loc_204bbc
	move.w #$ff80,d0
loc_204bbc:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204bea
	cmpi.w #$400,d0
	blt.s loc_204bea
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023b8).l
loc_204bea:
	rts

sub_204bec:
	tst.b $2a(a0)
	bne.s loc_204c5a
	move.w $14(a0),d0
	bmi.s loc_204c24
	bclr.b #$0,$22(a0)
	beq.s loc_204c0c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c0c:
	cmp.w d6,d0
	bge.s loc_204c18
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c18
	move.w d6,d0
loc_204c18:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c24:
	add.w d4,d0
	bcc.s loc_204c2c
	move.w #$80,d0
loc_204c2c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c5a
	cmpi.w #$fc00,d0
	bgt.s loc_204c5a
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023b8).l
loc_204c5a:
	rts

sub_204c5c:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204da6
	tst.w $3e(a0)
	bne.s loc_204c94
	btst.b #$2,($f602).w
	beq.s loc_204c88
	bsr.w sub_204ddc
loc_204c88:
	btst.b #$3,($f602).w
	beq.s loc_204c94
	bsr.w sub_204e00
loc_204c94:
	tst.b $2a(a0)
	beq.w loc_204d3e
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204cb4
	asr.w #$1,d2
	sub.w d2,d1
loc_204cb4:
	btst.b #$0,$22(a0)
	beq.s loc_204cc0
	neg.w d0
	neg.w d1
loc_204cc0:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204cd6
	cmp.w d0,d1
	ble.s loc_204cdc
	bra.s loc_204cda
loc_204cd6:
	cmp.w d1,d0
	ble.s loc_204cdc
loc_204cda:
	move.w d1,d0
loc_204cdc:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204d10
	rts
loc_204cea:
	move.w #$ab,d0
	jsr (sub_2023b8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204d70
loc_204d10:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204cea
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023b8).l
	btst.b #$0,$22(a0)
	bne.s loc_204d36
	bsr.w sub_204e00
	bra.s loc_204d3e
loc_204d36:
	bsr.w sub_204ddc
	bra.s loc_204d3e
	dc.b $4e,$75
loc_204d3e:
	move.w $14(a0),d0
	beq.s loc_204d60
	bmi.s loc_204d54
	sub.w d5,d0
	bcc.s loc_204d4e
	move.w #$0,d0
loc_204d4e:
	move.w d0,$14(a0)
	bra.s loc_204d60
loc_204d54:
	add.w d5,d0
	bcc.s loc_204d5c
	move.w #$0,d0
loc_204d5c:
	move.w d0,$14(a0)
loc_204d60:
	tst.w $14(a0)
	bne.s loc_204da6
	move.w #$ab,d0
	jsr (sub_2023b8).l
loc_204d70:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d90
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204da0
loc_204d90:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204da0:
	move.b #$5,$1c(a0)
loc_204da6:
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204dca
	move.w #$1000,d1
loc_204dca:
	cmpi.w #$f000,d1
	bge.s loc_204dd4
	move.w #$f000,d1
loc_204dd4:
	move.w d1,$10(a0)
	bra.w loc_204b04

sub_204ddc:
	move.w $14(a0),d0
	beq.s loc_204de4
	bpl.s loc_204df2
loc_204de4:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204df2:
	sub.w d4,d0
	bcc.s loc_204dfa
	move.w #$ff80,d0
loc_204dfa:
	move.w d0,$14(a0)
	rts

sub_204e00:
	move.w $14(a0),d0
	bmi.s loc_204e14
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e14:
	add.w d4,d0
	bcc.s loc_204e1c
	move.w #$80,d0
loc_204e1c:
	move.w d0,$14(a0)
	rts

sub_204e22:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204e5c
	tst.w ($ff1506).l
	bne.s loc_204e5c
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204e54
	cmpi.w #$840,$8(a0)
	bcc.s loc_204e54
	rts
loc_204e54:
	btst.b #$1,$2c(a0)
	bne.s loc_204e8c
loc_204e5c:
	btst.b #$2,($f602).w
	beq.s loc_204e76
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204e76
	move.w d1,d0
loc_204e76:
	btst.b #$3,($f602).w
	beq.s loc_204e8c
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204e8c
	move.w d6,d0
loc_204e8c:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204ea2
	bcc.s loc_204e9e
	addq.w #$4,($f73e).w
loc_204e9e:
	subq.w #$2,($f73e).w
loc_204ea2:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204ed0
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204ed0
	bmi.s loc_204ec4
	sub.w d1,d0
	bcc.s loc_204ebe
	move.w #$0,d0
loc_204ebe:
	move.w d0,$10(a0)
	rts
loc_204ec4:
	sub.w d1,d0
	bcs.s loc_204ecc
	move.w #$0,d0
loc_204ecc:
	move.w d0,$10(a0)
loc_204ed0:
	rts
	.incbin 20178, 48

sub_204f02:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204f56
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204f30
	addi.w #$38,d0
loc_204f30:
	cmp.w d1,d0
	bls.s loc_204f56
loc_204f34:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204f44
	rts
loc_204f44:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207302
	move.b #$6,$24(a0)
	rts
loc_204f56:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204f34

sub_204f6e:
	tst.b ($f7ca).w
	bne.s loc_204f94
	move.w $14(a0),d0
	bpl.s loc_204f7c
	neg.w d0
loc_204f7c:
	cmpi.w #$80,d0
	bcs.s loc_204f94
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204f94
	btst.b #$1,($f602).w
	bne.s sub_204f96
loc_204f94:
	rts

sub_204f96:
	btst.b #$2,$22(a0)
	beq.s loc_204fa0
	bra.s loc_204fd0
loc_204fa0:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204fc0
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204fd0
loc_204fc0:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204fd0:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204fea
	cmpi.w #$200,$14(a0)
	bcc.s loc_204fea
	move.w #$200,$14(a0)
loc_204fea:
	rts

sub_204fec:
	tst.b $2a(a0)
	beq.s loc_204ff4
	rts
loc_204ff4:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205006
	tst.w $14(a0)
	beq.w loc_2050cc
loc_205006:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2050cc
	btst.b #$3,$22(a0)
	beq.s loc_205022
	jsr (sub_205cf8).l
	beq.s loc_205052
loc_205022:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206cfe
	cmpi.w #$6,d1
	blt.w loc_2050cc
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_205048
	move.w #$380,d2
loc_205048:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_205052:
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
	bne.s loc_2050ce
	tst.b ($ff195b).l
	beq.s loc_2050b0
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_2050c0
loc_2050b0:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2050c0:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_2050cc:
	rts
loc_2050ce:
	bset.b #$4,$22(a0)
	rts

sub_2050d6:
	tst.b $3c(a0)
	beq.s loc_205108
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_2050ec
	move.w #$fe00,d1
loc_2050ec:
	cmp.w $12(a0),d1
	ble.s loc_205106
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205106
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205106:
	rts
loc_205108:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205116
	move.w #$f040,$12(a0)
loc_205116:
	rts

sub_205118:
	tst.b $2a(a0)
	bne.s loc_205152
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205152
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205152
	bmi.s loc_20514e
	tst.w d0
	beq.s loc_20514c
	add.w d0,$14(a0)
loc_20514c:
	rts
loc_20514e:
	add.w d0,$14(a0)
loc_205152:
	rts

sub_205154:
	tst.b $2a(a0)
	bne.s loc_205194
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205194
	move.b $26(a0),d0
	jsr (sub_2007dc).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_20518a
	tst.w d0
	bpl.s loc_205184
	asr.l #$2,d0
loc_205184:
	add.w d0,$14(a0)
	rts
loc_20518a:
	tst.w d0
	bmi.s loc_205190
	asr.l #$2,d0
loc_205190:
	add.w d0,$14(a0)
loc_205194:
	rts

sub_205196:
	nop
	tst.b $38(a0)
	bne.s loc_2051d8
	tst.w $3e(a0)
	bne.s loc_2051da
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2051d8
	move.w $14(a0),d0
	bpl.s loc_2051ba
	neg.w d0
loc_2051ba:
	cmpi.w #$280,d0
	bcc.s loc_2051d8
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2051d8:
	rts
loc_2051da:
	subq.w #$1,$3e(a0)
	rts

sub_2051e0:
	btst.b #$1,$2c(a0)
	bne.s loc_205202
	move.b $26(a0),d0
	beq.s loc_205202
	bpl.s loc_2051f8
	addq.b #$2,d0
	bcc.s loc_2051f6
	moveq #$0,d0
loc_2051f6:
	bra.s loc_2051fe
loc_2051f8:
	subq.b #$2,d0
	bcc.s loc_2051fe
	moveq #$0,d0
loc_2051fe:
	move.b d0,$26(a0)
loc_205202:
	rts

sub_205204:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a74).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2052e8
	cmpi.b #$80,d0
	beq.w loc_20534a
	cmpi.b #$c0,d0
	beq.w loc_2053a6
	bsr.w sub_207014
	tst.w d1
	bpl.s loc_205256
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205256:
	bsr.w sub_206e76
	tst.w d1
	bpl.s loc_205268
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205268:
	bsr.w sub_206d26
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2052e6
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205286
	cmp.b d2,d0
	blt.s loc_2052e6
loc_205286:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205408
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052c4
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2052b6
	asr.w $12(a0)
	bra.s loc_2052d8
loc_2052b6:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2052c4:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2052d8
	move.w #$fc0,$12(a0)
loc_2052d8:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052e6
	neg.w $14(a0)
loc_2052e6:
	rts
loc_2052e8:
	bsr.w sub_207014
	tst.w d1
	bpl.s loc_205302
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205302:
	bsr.w sub_206ece
	tst.w d1
	bpl.s loc_20531c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20531a
	move.w #$0,$12(a0)
loc_20531a:
	rts
loc_20531c:
	tst.w $12(a0)
	bmi.s loc_205348
	bsr.w sub_206d26
	tst.w d1
	bpl.s loc_205348
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205408
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205348:
	rts
loc_20534a:
	bsr.w sub_207014
	tst.w d1
	bpl.s loc_20535c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20535c:
	bsr.w sub_206e76
	tst.w d1
	bpl.s loc_20536e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20536e:
	bsr.w sub_206ece
	tst.w d1
	bpl.s loc_2053a4
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20538e
	move.w #$0,$12(a0)
	rts
loc_20538e:
	move.b d3,$26(a0)
	bsr.w sub_20547a
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2053a4
	neg.w $14(a0)
loc_2053a4:
	rts
loc_2053a6:
	bsr.w sub_206e76
	tst.w d1
	bpl.s loc_2053c0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053c0:
	bsr.w sub_206ece
	tst.w d1
	bpl.s loc_2053da
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2053d8
	move.w #$0,$12(a0)
loc_2053d8:
	rts
loc_2053da:
	tst.w $12(a0)
	bmi.s loc_205406
	bsr.w sub_206d26
	tst.w d1
	bpl.s loc_205406
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205408
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205406:
	rts

sub_205408:
	btst.b #$4,$22(a0)
	beq.s loc_205412
	nop
loc_205412:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20546c
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20544c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20545c
loc_20544c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20545c:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2023b8).l
loc_20546c:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20547a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203b52).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2054b4
	subi.w #$20,$12(a0)
loc_2054b4:
	jsr (sub_20682a).l
	bsr.w sub_2054d0
	bsr.w sub_204f02
	bsr.w sub_2043a4
	bsr.w sub_205762
	jmp (sub_203ba8).l

sub_2054d0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_207302
	bsr.w sub_205204
	btst.b #$1,$22(a0)
	bne.s loc_20550a
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20550a:
	rts
	bsr.w sub_205524
	jsr (sub_203af0).l
	bsr.w sub_2043a4
	bsr.w sub_205762
	jmp (sub_203ba8).l

sub_205524:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205592
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205558
	clr.b ($ff1508).l
loc_205558:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205572
	tst.b ($ff0f01).l
	beq.s loc_205572
	move.b #$0,($ff1508).l
	bra.s loc_20558c
loc_205572:
	jsr (sub_207cc2).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205592
loc_20558c:
	move.w #$3c,$3a(a0)
loc_205592:
	rts
	tst.w $3a(a0)
	beq.w loc_205616
	subq.w #$1,$3a(a0)
	bne.w loc_205616
	move.w #$1,($ff1502).l
	jsr (sub_202350).l
	move.b #$1,($a01c3e).l
	jsr (sub_20236c).l
	bsr.w sub_207ab0
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2055e4
	cmpi.b #$1,($ff152e).l
	bne.s loc_2055e4
	bclr.b #$1,($ff151c).l
loc_2055e4:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205612
	cmpi.b #$1,($ff152e).l
	bne.s loc_20560c
	tst.b ($ff158e).l
	beq.s loc_205612
	move.b #$1,($ff1522).l
	bra.s loc_205612
loc_20560c:
	clr.b ($ff1522).l
loc_205612:
	bra.w sub_205d72
loc_205616:
	rts

sub_205618:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205640
	cmpi.b #$5,($ff1506).l
	beq.s loc_205640
	cmpi.b #$2,($ff1506).l
	beq.s loc_205640
	tst.b ($ff1506).l
	bne.w loc_205702
loc_205640:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20567e
	tst.b ($ff1506).l
	bne.w loc_205704
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205704
	bra.s loc_205686
loc_20567e:
	cmp.b ($f7af).w,d1
	beq.w loc_205704
loc_205686:
	cmp.b ($f7ac).w,d1
	beq.s loc_2056b6
	cmp.b ($f7ad).w,d1
	beq.s loc_20569a
	bclr.b #$6,$1(a0)
	rts
loc_20569a:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20571c
	btst.b #$1,$22(a0)
	beq.s loc_2056b6
	bclr.b #$6,$1(a0)
	rts
loc_2056b6:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2056c8
	bclr.b #$6,$1(a0)
	rts
loc_2056c8:
	cmpi.b #$e0,d2
	bcs.s loc_2056d6
	bset.b #$6,$1(a0)
	rts
loc_2056d6:
	btst.b #$6,$1(a0)
	bne.s loc_2056f2
	move.b $26(a0),d1
	beq.s loc_205702
	cmpi.b #$80,d1
	bhi.s loc_205702
	bset.b #$6,$1(a0)
	rts
loc_2056f2:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205702
	bclr.b #$6,$1(a0)
loc_205702:
	rts
loc_205704:
	btst.b #$2,$22(a0)
	bne.s loc_205716
	move.w #$9c,d0
	jsr (sub_2023b8).l
loc_205716:
	jmp (sub_204f96).l
loc_20571c:
	tst.w $12(a0)
	bmi.s loc_205760
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205754
	cmpi.w #$38,d1
	bcs.s loc_20574c
	cmpi.w #$80,d1
	bcs.s loc_205760
loc_205744:
	bclr.b #$6,$1(a0)
	rts
loc_20574c:
	bset.b #$6,$1(a0)
	rts
loc_205754:
	cmpi.w #$38,d1
	bcs.s loc_205744
	cmpi.w #$80,d1
	bcc.s loc_20574c
loc_205760:
	rts

sub_205762:
	lea (dat_205a52).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205784
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205784:
	bsr.w sub_2059f4
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2057fc
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2057ca
	move.b d0,$1e(a0)

sub_2057ae:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2057c2
	bpl.s loc_2057c2
	cmpi.b #$fd,d0
	bge.s loc_2057cc
loc_2057c2:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2057ca:
	rts
loc_2057cc:
	addq.b #$1,d0
	bne.s loc_2057dc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2057c2
loc_2057dc:
	addq.b #$1,d0
	bne.s loc_2057f0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2057c2
loc_2057f0:
	addq.b #$1,d0
	bne.s loc_2057fa
	move.b $2(a1,d1.w),$1c(a0)
loc_2057fa:
	rts
loc_2057fc:
	subq.b #$1,$1e(a0)
	bpl.s loc_2057ca
	addq.b #$1,d0
	bne.w loc_2058b6
	tst.b ($ff195b).l
	bne.w loc_20597e
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205824
	not.b d0
loc_205824:
	btst.b #$1,$2c(a0)
	bne.s loc_205832
	addi.b #$10,d0
	bra.s loc_205834
loc_205832:
	addq.b #$8,d0
loc_205834:
	bpl.s loc_205838
	moveq #$3,d1
loc_205838:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20592a
	move.w $14(a0),d2
	bpl.s loc_205856
	neg.w d2
loc_205856:
	btst.b #$1,$2c(a0)
	beq.s loc_20586e
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205c54).l,a1
	bra.s loc_205898
loc_20586e:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c2e).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205898
	lea (dat_205ad2).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205898
	lea (dat_205aca).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205898:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2058a6
	moveq #$0,d2
loc_2058a6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2057ae
	add.b d3,$1a(a0)
	rts
loc_2058b6:
	addq.b #$1,d0
	bne.s loc_205926
	move.w $14(a0),d2
	bpl.s loc_2058c2
	neg.w d2
loc_2058c2:
	lea (dat_205bb0).l,a1
	tst.b ($ff195b).l
	bne.s loc_205900
	lea (dat_205ae2).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2058f4
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205900
	lea (dat_205c5c).l,a1
	bra.s loc_205900
loc_2058f4:
	cmpi.w #$600,d2
	bcc.s loc_205900
	lea (dat_205ada).l,a1
loc_205900:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20590a
	moveq #$0,d2
loc_20590a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057ae
loc_205926:
	addq.b #$1,d0
	bne.s loc_20596a
loc_20592a:
	move.w $14(a0),d2
	bmi.s loc_205932
	neg.w d2
loc_205932:
	addi.w #$800,d2
	bpl.s loc_20593a
	moveq #$0,d2
loc_20593a:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205bc2).l,a1
	tst.b ($ff195b).l
	bne.s loc_205954
	lea (dat_205aea).l,a1
loc_205954:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057ae
loc_20596a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20597e:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205990
	not.b d0
loc_205990:
	addi.b #$10,d0
	bpl.s loc_205998
	moveq #$0,d1
loc_205998:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2059c6
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2058b6
loc_2059c6:
	move.w $14(a0),d2
	bpl.s loc_2059ce
	neg.w d2
loc_2059ce:
	lea (dat_205baa).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2059e0
	lea (dat_205ba4).l,a1
loc_2059e0:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2059ea
	moveq #$0,d2
loc_2059ea:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2057ae

sub_2059f4:
	tst.b ($ff195b).l
	beq.s loc_205a00
	move.b dat_205a02(pc,d0.w),d0
loc_205a00:
	rts
dat_205a02:
	.incbin 23042, 80
dat_205a52:
	.incbin 23122, 120
dat_205aca:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205ad2:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205ada:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205ae2:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205aea:
	.incbin 23274, 186
dat_205ba4:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205baa:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205bb0:
	.incbin 23472, 18
dat_205bc2:
	.incbin 23490, 108
dat_205c2e:
	.incbin 23598, 38
dat_205c54:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205c5c:
	.incbin 23644, 56

sub_205c94:
	tst.b (a0)
	beq.w loc_205cf6
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205cf6
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205cf6
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205cc8:
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
loc_205ce2:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205ce2
	dbf d1,loc_205cc8
loc_205cf6:
	rts

sub_205cf8:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205d6c
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
	bne.s loc_205d5a
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205d5a:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205d6c:
	rts
loc_205d6e:
	move.w #$e,d0

sub_205d72:
	cmpi.w #$67,d0
	bne.s loc_205d80
	move.b #$1,($ff1958).l
loc_205d80:
	move.w d0,($a12010).l
loc_205d86:
	move.w ($a12020).l,d0
	beq.s loc_205d86
	cmp.w ($a12020).l,d0
	bne.s loc_205d86
	move.w #$0,($a12010).l
loc_205d9e:
	move.w ($a12020).l,d0
	bne.s loc_205d9e
	move.w ($a12020).l,d0
	bne.s loc_205d9e
	rts
	dc.b $00,$00

sub_205db2:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205dce
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205dce:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e0e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e10
loc_205dea:
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
loc_205e0e:
	rts
loc_205e10:
	addq.b #$1,d0
	bne.s loc_205e20
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205dea
loc_205e20:
	addq.b #$1,d0
	bne.s loc_205e34
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205dea
loc_205e34:
	addq.b #$1,d0
	bne.s loc_205e3e
	move.b $2(a1,d1.w),$1c(a0)
loc_205e3e:
	addq.b #$1,d0
	bne.s loc_205e46
	addq.b #$2,$24(a0)
loc_205e46:
	addq.b #$1,d0
	bne.s loc_205e54
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205e54:
	addq.b #$1,d0
	bne.s loc_205e5c
	addq.b #$2,$25(a0)
loc_205e5c:
	rts

sub_205e5e:
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
	bcs.s loc_205ef4
	move.l #$50000,d0
loc_205ef4:
	move.l d0,($ff152a).l
	move.b ($ff195b).l,($ff1591).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f20(pc,d0.w),d0
	jsr dat_205f20(pc,d0.w)
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_205f20:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$23c294,$4(a0)
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_205f66
	move.b #$1,$2e(a0)
	bra.s loc_205f6c
loc_205f66:
	move.b #$e3,$20(a0)
loc_205f6c:
	jsr (sub_207cc2).l
	bne.s loc_205fde
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205f88
	addq.b #$2,$24(a1)
loc_205f88:
	move.l #$23c294,$4(a1)
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
loc_205fde:
	jmp (sub_203c54).l
	tst.b $2e(a0)
	bne.s loc_206018
	tst.b $21(a0)
	beq.s loc_206018
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205e5e
	move.w #$ae,d0
	jmp (sub_2023b8).l
loc_206018:
	rts
	tst.b $2e(a0)
	bne.s loc_206030
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_20606a
	move.b #$1,$2e(a0)
loc_206030:
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
	bne.s loc_20606a
	addq.b #$2,$24(a0)
loc_20606a:
	rts
	dc.b $43,$f9,$00,$23,$c2,$8e,$60,$00
	dc.b $fd,$3e

sub_206076:
	rts
	.incbin 24696, 116

sub_2060ec:
	tst.b $25(a0)
	bne.s loc_20611c
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207cc2).l
	bne.s loc_20611c
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_20611c:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20612c(pc,d0.w),d0
	jmp dat_20612c(pc,d0.w)
dat_20612c:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206154
	andi.b #$7f,$2(a0)
loc_206154:
	move.l #$23c0fc,$4(a0)
	bsr.s sub_2060ec
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206182
	move.w #$100,$1c(a0)
loc_206182:
	lea (dat_23c0e8).l,a1
	bsr.w sub_205db2
	jmp (sub_203ba8).l
	tst.b $25(a0)
	beq.s loc_20619e
	jmp (sub_203c54).l
loc_20619e:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061c0(pc,d0.w),d0
	jsr dat_2061c0(pc,d0.w)
	jmp (sub_203ba8).l
dat_2061c0:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_2061ee
	andi.b #$7f,$2(a0)
loc_2061ee:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_206214
	bsr.w sub_206280
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206276
loc_206214:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206dd4).l
	tst.w d1
	bpl.s loc_206272
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_20625c
	bsr.w sub_206280
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2062a6
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_20625c:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206276
loc_206272:
	addq.w #$2,$c(a0)
loc_206276:
	lea (dat_2336bc).l,a1
	bra.w sub_205db2

sub_206280:
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

sub_2062a6:
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
	bra.s loc_206276
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206276
	.incbin 25314, 460
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2064bc(pc,d0.w),d1
	jmp dat_2064bc(pc,d1.w)
dat_2064bc:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23bf10,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_2064fe
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_2064fe
	addq.b #$2,$24(a0)
loc_2064fe:
	rts
	tst.b ($ff151e).l
	beq.s loc_20655a
	tst.b ($ff1521).l
	bne.s loc_206558
	tst.b ($ff151f).l
	bne.s loc_206558
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_206548
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_206548
	andi.b #$7f,$2(a0)
loc_206548:
	lea (dat_23bde8).l,a1
	jsr (sub_205db2).l
	bra.w loc_2065f8
loc_206558:
	rts
loc_20655a:
	jmp (sub_203c54).l
	.incbin 25952, 24
	tst.b ($ff1521).l
	bne.s loc_206586
	jmp (sub_203c54).l
loc_206586:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2065a4
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2065a4
	andi.b #$7f,$2(a0)
loc_2065a4:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_2065b6
	subq.b #$4,d1
loc_2065b6:
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
	bcs.s loc_2065d2
	moveq #$0,d1
loc_2065d2:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23bde8).l,a1
	jsr (sub_205db2).l
loc_2065f8:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_20660a
	rts
loc_20660a:
	cmp.b $24(a0),d0
	beq.s loc_206620
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206620:
	jmp (sub_203ba8).l
loc_206626:
	bclr.b #$7,($ff156b).l
	beq.s loc_206674
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206676(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20664a:
	move.l (a1)+,(a2)+
	dbf d0,loc_20664a
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206674:
	rts
dat_206676:
	.incbin 26230, 250
loc_206770:
	bset.b #$2,$22(a1)
	bne.s loc_20678e
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20678e:
	rts
	.incbin 26512, 28
loc_2067ac:
	tst.w $12(a1)
	bmi.s loc_206770
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2067c4
	btst.l #$2,d1
	beq.s loc_206770
	neg.w d0
loc_2067c4:
	cmpi.b #$2,$28(a0)
	beq.s loc_2067d2
	bset.b #$1,$22(a1)
loc_2067d2:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206770
	.incbin 26588, 78

sub_20682a:
	bsr.s sub_20682e
loc_20682c:
	rts

sub_20682e:
	tst.b ($f7a7).w
	bne.s loc_20682c
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
	bsr.s sub_20688e
	bne.w loc_206a7e
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
	bsr.s sub_20688e
	bne.w loc_206a7e
	rts

sub_20688e:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2068a6
	add.b ($ff156a).l,d1
loc_2068a6:
	add.w d1,d1
	move.w dat_2068ca(pc,d1.w),d1
	lea dat_2068ca(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2068b6:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2068c6
	addq.w #$2,d1
	dbf d6,loc_2068b6
	moveq #$0,d0
	rts
loc_2068c6:
	moveq #$1,d0
	rts
dat_2068ca:
	.incbin 26826, 436
loc_206a7e:
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_206a9e
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_206a9e
	move.l #$20000,d0
loc_206a9e:
	move.b #$c0,d1
	tst.b ($ff158f).l
	beq.s loc_206aae
	neg.l d0
	neg.b d1
loc_206aae:
	add.l d0,$8(a0)
	move.b d1,d0
	jsr (sub_206c94).l
	tst.w d1
	bpl.s loc_206acc
	tst.b ($ff158f).l
	beq.s loc_206ac8
	neg.w d1
loc_206ac8:
	add.w d1,$8(a0)
loc_206acc:
	rts
loc_206ace:
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
	bne.s loc_206b88
	move.b ($ff1593).l,($ff195b).l
loc_206b88:
	tst.b ($ff1522).l
	bpl.s loc_206b9e
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b9e:
	rts

sub_206ba0:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ace
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
	bne.s loc_206c5a
	move.b ($ff1591).l,($ff195b).l
loc_206c5a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c7c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c7c:
	tst.b ($ff1522).l
	bpl.s loc_206c92
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c92:
	rts

sub_206c94:
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
	bpl.s loc_206cd0
	move.b d1,d0
	bpl.s loc_206cca
	subq.b #$1,d0
loc_206cca:
	addi.b #$20,d0
	bra.s loc_206cda
loc_206cd0:
	move.b d1,d0
	bpl.s loc_206cd6
	addq.b #$1,d0
loc_206cd6:
	addi.b #$1f,d0
loc_206cda:
	andi.b #$c0,d0
	beq.w loc_206daa
	cmpi.b #$80,d0
	beq.w loc_206f46
	andi.b #$38,d1
	bne.s loc_206cf2
	addq.w #$8,d2
loc_206cf2:
	cmpi.b #$40,d0
	beq.w loc_20701c
	bra.w loc_206e7e

sub_206cfe:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206fa4
	cmpi.b #$80,d0
	beq.w sub_206ece
	cmpi.b #$c0,d0
	beq.w loc_206e0e

sub_206d26:
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
loc_206d8a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d98
	move.b ($f768).w,d3
	exg d0,d1
loc_206d98:
	btst.l #$0,d3
	beq.s loc_206da0
	move.b d2,d3
loc_206da0:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206daa:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201132).l
	move.b #$0,d2
loc_206dc6:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dd2
	move.b d2,d3
loc_206dd2:
	rts

sub_206dd4:
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
	beq.s loc_206e0c
	move.b #$0,d3
loc_206e0c:
	rts
loc_206e0e:
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
	bra.w loc_206d8a

sub_206e76:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e7e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012a2).l
	move.b #$c0,d2
	bra.w loc_206dc6
	.incbin 28318, 48

sub_206ece:
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
	bra.w loc_206d8a

sub_206f3e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f46:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201132).l
	move.b #$80,d2
	bra.w loc_206dc6
	.incbin 28522, 58
loc_206fa4:
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
	bra.w loc_206d8a

sub_207014:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20701c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012a2).l
	move.b #$40,d2
	bra.w loc_206dc6
	.incbin 28736, 48

sub_207070:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207094
	addi.w #$c,d3
	moveq #$a,d5
loc_207094:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2070a2:
	tst.b $1(a1)
	bpl.s loc_2070ae
	move.b $20(a1),d0
	bne.s loc_2070ba
loc_2070ae:
	lea $40(a1),a1
	dbf d6,loc_2070a2
	moveq #$0,d0
	rts
loc_2070ba:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207458).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070e2
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070e8
	bra.w loc_2070ae
loc_2070e2:
	cmp.w d4,d0
	bhi.w loc_2070ae
loc_2070e8:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_207100
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207106
	bra.w loc_2070ae
loc_207100:
	cmp.w d5,d0
	bhi.w loc_2070ae
loc_207106:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20717a
	cmpi.b #$c0,d1
	beq.w loc_20735a
	tst.b d1
	bmi.w sub_207244
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20713e
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20713c
	addq.b #$2,$24(a1)
loc_20713c:
	rts
loc_20713e:
	tst.w $12(a0)
	bpl.s loc_207168
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207178
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207178
	addq.b #$4,$25(a1)
	rts
loc_207168:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207178
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207178:
	rts

sub_20717a:
	tst.b ($ff1521).l
	bne.s loc_207194
	tst.b ($ff151f).l
	bne.s loc_207194
	cmpi.b #$2,$1c(a0)
	bne.w sub_207244
loc_207194:
	tst.b $21(a1)
	beq.s loc_2071be
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071bc
	bset.b #$7,$22(a1)
loc_2071bc:
	rts
loc_2071be:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071d6
	moveq #$6,d0
loc_2071d6:
	move.w d0,$3e(a1)
	move.w dat_207236(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071f0
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071f0:
	bsr.w sub_20acd8
	move.w #$96,d0
	jsr (sub_2023b8).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207226
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20722e
	neg.w $12(a0)
	rts
loc_207226:
	addi.w #$100,$12(a0)
	rts
loc_20722e:
	subi.w #$100,$12(a0)
	rts
dat_207236:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207244:
	tst.b ($ff1521).l
	bne.s loc_207254
	tst.b ($ff151f).l
	beq.s loc_207258
loc_207254:
	moveq #$ffffffff,d0
	rts
loc_207258:
	nop
	tst.w $30(a0)
	bne.s loc_207254
	movea.l a1,a2

sub_207262:
	tst.b ($ff151e).l
	bne.s loc_20728e
	tst.w ($ff1512).l
	beq.w loc_2072f8
	jsr (sub_207cc2).l
	bne.s loc_20728e
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20728e:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2072a4
	move.b #$0,($ff156f).l
loc_2072a4:
	move.b #$4,$24(a0)
	bsr.w sub_205408
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072d4
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072d4:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072e2
	neg.w $10(a0)
loc_2072e2:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072f8:
	tst.w ($ff1588).l
	bne.w loc_20728e

sub_207302:
	tst.w ($ff1906).l
	bne.s loc_207356
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205408
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
loc_207356:
	moveq #$ffffffff,d0
	rts
loc_20735a:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073fa
	cmpi.b #$23,d1
	beq.w loc_2073fa
	cmpi.b #$2e,d1
	beq.w loc_207442
	cmpi.b #$37,d1
	beq.w loc_2073fa
	cmpi.b #$38,d1
	beq.w loc_207450
	cmpi.b #$3a,d1
	beq.w loc_207442
	cmpi.b #$3b,d1
	beq.w loc_207442
	cmpi.b #$3c,d1
	beq.w loc_207442
	tst.b ($f7aa).w
	beq.w loc_2073f8
	cmpi.b #$1,($f7aa).w
	beq.s loc_2073c2
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073e4
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073f2
loc_2073c2:
	cmpi.b #$3c,d1
	blt.s loc_2073f8
	cmpi.b #$3f,d1
	bgt.s loc_2073f8
	bsr.w sub_20717a
	tst.b $20(a1)
	bne.s loc_2073dc
	addq.b #$3,$21(a1)
loc_2073dc:
	clr.b $20(a1)
	bra.w loc_2073fa
loc_2073e4:
	cmpi.b #$3f,d1
	beq.s loc_207406
	cmpi.b #$3e,d1
	beq.s loc_207400
	bra.s loc_2073f8
loc_2073f2:
	cmpi.b #$3d,d1
	beq.s loc_207400
loc_2073f8:
	rts
loc_2073fa:
	addq.b #$1,$21(a1)
	rts
loc_207400:
	bsr.w sub_207244
	bra.s loc_2073fa
loc_207406:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207440
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207440
	neg.w $10(a0)
loc_207440:
	rts
loc_207442:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20744e
	addq.b #$1,$21(a1)
loc_20744e:
	rts
loc_207450:
	addq.b #$1,$21(a1)
	bra.w sub_207244
dat_207458:
	.incbin 29784, 126
loc_2074d6:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074ec
	move.l #$4000,(dat_207666).l
	bra.s loc_20750c
loc_2074ec:
	addi.l #$2000,(dat_207666).l
	cmpi.l #$80000,(dat_207666).l
	bls.s loc_20750c
	move.l #$80000,(dat_207666).l
loc_20750c:
	move.l (dat_207666).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20751e
	sub.l d0,$c(a0)
loc_20751e:
	btst.b #$1,($f604).w
	beq.s loc_20752a
	add.l d0,$c(a0)
loc_20752a:
	btst.b #$2,($f604).w
	beq.s loc_207536
	sub.l d0,$8(a0)
loc_207536:
	btst.b #$3,($f604).w
	beq.s loc_207542
	add.l d0,$8(a0)
loc_207542:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f4a).l
	move.w (a1),($ff194e).l
	lea (dat_20766a).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207584
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20757e
	move.b #$0,d1
loc_20757e:
	move.b d1,($ff1904).l
loc_207584:
	btst.b #$7,($f605).w
	beq.s loc_2075a4
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20759e
	add.b (a2),d1
loc_20759e:
	move.b d1,($ff1904).l
loc_2075a4:
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
	beq.s loc_207630
	bsr.w sub_207cc2
	bne.s loc_207630
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
loc_207630:
	btst.b #$4,($f605).w
	beq.s loc_207660
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207660:
	jmp (sub_203ba8).l
dat_207666:
	dc.b $00,$00,$40,$00
dat_20766a:
	.incbin 30314, 570
loc_2078a4:
	roxr.w d3,d2
	.incbin 30886, 522

sub_207ab0:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207abe:
	clr.l (a2)+
	dbf d0,loc_207abe
	rts

sub_207ac6:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207ad4(pc,d0.w),d0
	jmp dat_207ad4(pc,d0.w)
dat_207ad4:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207d74).l,a0
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
	bcc.s loc_207b12
	moveq #$0,d6
loc_207b12:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207b1a:
	cmp.w (a0),d6
	bls.s loc_207b2c
	tst.b $4(a0)
	bpl.s loc_207b28
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207b28:
	addq.w #$8,a0
	bra.s loc_207b1a
loc_207b2c:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207b4c
loc_207b3a:
	cmp.w (a0),d6
	bls.s loc_207b4c
	tst.b $4(a0)
	bpl.s loc_207b48
	addq.b #$1,$1(a2)
loc_207b48:
	addq.w #$8,a0
	bra.s loc_207b3a
loc_207b4c:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207c36
	bge.s loc_207bdc
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207bb8
loc_207b86:
	cmp.w -$8(a0),d6
	bge.s loc_207bb8
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207b9c
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207b9c:
	bsr.w sub_207c5a
	bne.s loc_207ba6
	subq.w #$8,a0
	bra.s loc_207b86
loc_207ba6:
	tst.b $4(a0)
	bpl.s loc_207bb6
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207bb6:
	addq.w #$8,a0
loc_207bb8:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207bc4:
	cmp.w -$8(a0),d6
	bgt.s loc_207bd6
	tst.b -$4(a0)
	bpl.s loc_207bd2
	subq.b #$1,(a2)
loc_207bd2:
	subq.w #$8,a0
	bra.s loc_207bc4
loc_207bd6:
	move.l a0,($f770).w
	rts
loc_207bdc:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207bf0:
	cmp.w (a0),d6
	bls.s loc_207c12
	tst.b $4(a0)
	bpl.s loc_207bfe
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207bfe:
	bsr.w sub_207c5a
	beq.s loc_207bf0
	tst.b $4(a0)
	bpl.s loc_207c12
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207c12:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207c32
loc_207c20:
	cmp.w (a0),d6
	bls.s loc_207c32
	tst.b $4(a0)
	bpl.s loc_207c2e
	addq.b #$1,$1(a2)
loc_207c2e:
	addq.w #$8,a0
	bra.s loc_207c20
loc_207c32:
	move.l a0,($f774).w
loc_207c36:
	rts

sub_207c38:
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

sub_207c5a:
	bsr.s sub_207c38
	beq.s loc_207c6c
	tst.b $4(a0)
	bpl.s loc_207c72
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207c72
loc_207c6c:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207c72:
	bsr.w sub_207cc2
	bne.s loc_207cc0
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
	bpl.s loc_207ca2
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207ca2:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207cb4
	nop
	nop
	nop
	nop
loc_207cb4:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207cc0:
	rts

sub_207cc2:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207cca:
	tst.b (a1)
	beq.s loc_207cd6
	lea $40(a1),a1
	dbf d0,loc_207cca
loc_207cd6:
	rts

sub_207cd8:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207cf6
loc_207cea:
	tst.b (a1)
	beq.s loc_207cf6
	lea $40(a1),a1
	dbf d0,loc_207cea
loc_207cf6:
	rts
loc_207cf8:
	move.w $8(a0),d0
loc_207cfc:
	tst.b $1(a0)
	bmi.s loc_207d66
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207d66
loc_207d1a:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207d5c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207d54
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207d4c
	moveq #$0,d1
	bra.s loc_207d54
loc_207d4c:
	cmpi.w #$3,d1
	bcs.s loc_207d54
	moveq #$2,d1
loc_207d54:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207d5c:
	jsr (sub_203c54).l
	moveq #$1,d0
	rts
loc_207d66:
	btst.b #$7,($ff152e).l
	bne.s loc_207d1a
	moveq #$0,d0
	rts
dat_207d74:
	.incbin 32116, 3674
	btst.b #$7,($ff152e).l
	beq.s loc_208c18
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208c18
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
	bpl.s loc_208c08
	moveq #$0,d1
	bra.s loc_208c10
loc_208c08:
	cmpi.w #$3,d1
	bcs.s loc_208c10
	moveq #$2,d1
loc_208c10:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208c18:
	tst.b $28(a0)
	bpl.s loc_208c3a
	beq.s loc_208c3a
	tst.b ($ff158f).l
	bne.s loc_208c32
	btst.b #$0,$28(a0)
	beq.s loc_208c3a
	bra.s loc_208c64
loc_208c32:
	btst.b #$0,$28(a0)
	beq.s loc_208c64
loc_208c3a:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208c6a
	cmpi.b #$6,$24(a6)
	bcc.s loc_208c6a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208c6c(pc,d0.w),d1
	jsr dat_208c6c(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208c6a
loc_208c64:
	jmp (loc_207cf8).l
loc_208c6a:
	rts
dat_208c6c:
	dc.b $00,$08,$00,$40,$00,$d0,$00,$e4
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208e58(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$10,d0
	cmpi.w #$20,d0
	bcc.s loc_208d3a
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$10,d1
	cmpi.w #$20,d1
	bcc.w loc_208d3a
	tst.b $2c(a6)
	bne.w loc_208d3a
	cmpi.b #$4,$24(a6)
	bne.s loc_208cec
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208cec:
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
loc_208d3a:
	rts
	.incbin 36156, 284
dat_208e58:
	.incbin 36440, 826

sub_209192:
	btst.b #$3,$22(a0)
	beq.s loc_209202
	btst.b #$3,$22(a1)
	beq.s loc_209202
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_209202
	tst.b $2a(a1)
	beq.s loc_2091c4
	move.w #$ab,d0
	jsr (sub_2023b8).l
loc_2091c4:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2091f0
	cmpi.b #$17,$1c(a1)
	beq.s loc_2091f0
	bclr.b #$0,$2c(a1)
loc_2091f0:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209202
	bclr.b #$1,$22(a1)
loc_209202:
	rts

sub_209204:
	cmpi.b #$4,$24(a1)
	bne.s loc_209216
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209216:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_209276
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209238
	bclr.b #$3,$22(a0)
	bra.w sub_209192
loc_209238:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_209276
	tst.b ($ff195b).l
	beq.s loc_209260
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_209270
loc_209260:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_209270:
	move.b #$0,$1c(a1)
loc_209276:
	bset.b #$3,$22(a1)
	beq.s loc_209298
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2092d0
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_209298:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2092c4
	cmpi.b #$2,$24(a0)
	beq.s loc_2092ca
loc_2092c4:
	move.w $10(a1),$14(a1)
loc_2092ca:
	bclr.b #$1,$22(a1)
loc_2092d0:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2092da:
	move.b #$1,$25(a0)

sub_2092e0:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209594
	btst.b #$6,$2c(a1)
	bne.w loc_209594
	cmpi.b #$6,$24(a1)
	bcc.w loc_209594
	tst.b $0(a1)
	beq.w loc_209594
	tst.b $1(a0)
	bpl.w loc_209594
	tst.b ($ff1906).l
	bne.w loc_209594
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209594
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209594
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20934e
	btst.b #$3,$22(a0)
	bne.s loc_209360
	bra.w loc_209594
loc_20934e:
	cmpi.b #$1,$25(a0)
	bne.s loc_209360
	tst.w $12(a1)
	beq.s loc_209360
	bmi.w loc_209594
loc_209360:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209594
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209594
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_209396
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_209396:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2093a4
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2093a4:
	cmp.w d4,d5
	bcs.w loc_209438
	cmpi.b #$1,$25(a0)
	beq.w loc_209594
	cmpi.b #$a,$0(a0)
	bne.s loc_2093c6
	btst.b #$1,$22(a1)
	bne.w loc_209594
loc_2093c6:
	cmpi.b #$4,d5
	bls.w loc_209594
	bsr.w sub_2095e4
	move.l d0,-(a7)
	bsr.w sub_209192
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2093f0
	tst.w $10(a1)
	beq.s loc_209420
	bpl.s loc_2093f8
	bra.s loc_209420
loc_2093f0:
	tst.w $10(a1)
	beq.s loc_209420
	bpl.s loc_209420
loc_2093f8:
	bsr.w sub_2095a4
	btst.b #$1,$22(a1)
	bne.s loc_209416
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209416:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_209420:
	bsr.w sub_20965a
	bsr.w sub_2095a4
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209438:
	cmpi.b #$19,$0(a0)
	bne.s loc_20944a
	btst.b #$2,$22(a1)
	bne.w loc_209594
loc_20944a:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209460
	bmi.w loc_209530
loc_209460:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_209472
	tst.w $12(a1)
	beq.s loc_209472
	bmi.w loc_209594
loc_209472:
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
	beq.s loc_2094be
	bpl.s loc_20949e
	neg.b d0
loc_20949e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c94).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2094be
	tst.w $10(a0)
	bpl.s loc_2094ba
	neg.w d1
loc_2094ba:
	add.w d1,$8(a1)
loc_2094be:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209528
	tst.w $12(a0)
	bmi.s loc_2094fc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d26).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2094fc
	add.w d1,$c(a1)
	bra.w loc_209594
loc_2094fc:
	tst.w $12(a0)
	bpl.s loc_209528
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f3e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209528
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207302).l
	movem.l (a7)+,a0-a1
	bra.s loc_209594
loc_209528:
	bsr.w sub_209204
	moveq #$1,d0
	rts
loc_209530:
	cmpi.b #$1,$25(a0)
	beq.s loc_209594
	cmpi.b #$9,$0(a0)
	beq.s loc_209594
	cmpi.b #$a,$0(a0)
	bne.s loc_20955a
	cmpi.b #$2,$25(a0)
	beq.s loc_20957a
	btst.b #$1,$1(a0)
	bne.s loc_20957a
	bra.s loc_209594
loc_20955a:
	btst.b #$1,$22(a1)
	bne.s loc_20957a
	tst.w $12(a0)
	beq.s loc_20957a
	bmi.s loc_20957a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207302).l
	movem.l (a7)+,a0-a1
loc_20957a:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20965a
	bsr.w sub_209192
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209594:
	bsr.w sub_20965a
	bsr.w sub_209192
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2095a4:
	tst.w $10(a0)
	beq.s loc_2095e2
	cmpi.b #$a,$0(a0)
	beq.s loc_2095e2
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2095be
	neg.b d0
loc_2095be:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c94).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2095e2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207302).l
	movem.l (a7)+,a0-a1
loc_2095e2:
	rts

sub_2095e4:
	cmpi.b #$a,$0(a0)
	bne.s loc_2095f4
	move.b #$0,$20(a1)
	rts
loc_2095f4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209648
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209658
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209616
	tst.w $10(a2)
	beq.s loc_209658
loc_209616:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209628
	cmp.w $8(a2),d1
	bcs.s loc_209658
	bra.s loc_20962e
loc_209628:
	cmp.w $8(a2),d1
	bcc.s loc_209658
loc_20962e:
	cmpi.b #$15,$0(a0)
	beq.s loc_209658
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207302).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209648:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209658:
	rts

sub_20965a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209674
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209674
	move.b #$0,$20(a1)
loc_209674:
	rts
	.incbin 38518, 374
loc_2097ec:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2097fa(pc,d0.w),d0
	jmp dat_2097fa(pc,d0.w)
dat_2097fa:
	.incbin 38906, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2097ec
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209850
	tst.b $1(a0)
	bpl.s loc_209858
loc_209850:
	move.w dat_2098aa(pc,d0.w),d1
	jsr dat_2098aa(pc,d1.w)
loc_209858:
	bsr.w sub_203ba8
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20988a
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20988a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203c54
	rts
dat_2098aa:
	.incbin 39082, 26
	addq.b #$2,$24(a0)
	move.l #$209c2c,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20991a
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209c32,$4(a0)
	bra.s loc_20995c
loc_20991a:
	btst.l #$3,d0
	beq.s loc_209948
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209c7c,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c574).l
	move.l (a7)+,d0
	bra.s loc_20995c
loc_209948:
	btst.b #$1,$1(a0)
	beq.s loc_20995c
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20995c:
	btst.l #$1,d0
	beq.s loc_209968
	bset.b #$5,$2(a0)
loc_209968:
	andi.w #$2,d0
	move.w dat_209974(pc,d0.w),$30(a0)
	rts
dat_209974:
	dc.b $f0,$00,$f6,$00

sub_209978:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2092e0).l
	.incbin 39302, 100

sub_2099ea:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2092e0).l
	tst.b $1(a0)
	bpl.s loc_209a0c
	lea ($d000).w,a1
	bsr.s sub_2099ea
	btst.b #$5,$22(a0)
	bne.s loc_209a0e
loc_209a0c:
	rts
loc_209a0e:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209a3c
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209a3c:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209a56
	move.b #$0,$1c(a1)
loc_209a56:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2023b8).l
	.incbin 39536, 134
	tst.b $1(a0)
	bpl.s loc_209b0e
	lea ($d000).w,a1
	bsr.w sub_209978
	bne.s loc_209b10
	btst.b #$5,$22(a0)
	bne.s loc_209b10
loc_209b0e:
	rts
loc_209b10:
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
	beq.s loc_209b4e
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_209b4e:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_209b70
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_209b70:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_2023b8).l
	lea (dat_209c1e).l,a1
	bra.w sub_205db2
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 39860, 106
dat_209c1e:
	.incbin 39966, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d18(pc,d0.w),d1
	jmp dat_209d18(pc,d1.w)
dat_209d18:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209d22:
	.incbin 40226, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209d7a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209d72
	moveq #$0,d1
	bra.s loc_209d7a
loc_209d72:
	cmpi.w #$3,d1
	bcs.s loc_209d7a
	moveq #$2,d1
loc_209d7a:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209d96
	moveq #$6,d1
loc_209d96:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209d22).l,a1
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
	beq.s loc_209de6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209dde
	moveq #$0,d0
	bra.s loc_209de6
loc_209dde:
	cmpi.w #$3,d0
	bcs.s loc_209de6
	moveq #$2,d0
loc_209de6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209eb4
	dbf d0,loc_209de6
	bclr.b #$7,(a2)
	bra.s loc_209e3c
loc_209df8:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209e24
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209e1c
	moveq #$0,d0
	bra.s loc_209e24
loc_209e1c:
	cmpi.w #$3,d0
	bcs.s loc_209e24
	moveq #$2,d0
loc_209e24:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209eb4
	dbf d0,loc_209e24
	bclr.b #$7,(a2)
	bsr.w sub_207cd8
	bne.w loc_209ec0
loc_209e3c:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a186,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e92
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209e92
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209e92:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209eb4:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209df8
loc_209ec0:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ee6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ede
	moveq #$0,d0
	bra.s loc_209ee6
loc_209ede:
	cmpi.w #$3,d0
	bcs.s loc_209ee6
	moveq #$2,d0
loc_209ee6:
	lea $1(a2),a3
loc_209eea:
	btst.b #$0,-(a3)
	bne.w sub_203c54
	dbf d0,loc_209eea
	tst.b $1(a0)
	bmi.s loc_209f1a
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209f94
loc_209f1a:
	tst.w ($ff190e).l
	bne.s loc_209f2a
	move.b ($ff1913).l,$1a(a0)
loc_209f2a:
	bra.w sub_203ba8
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209f98
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209f7a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209f72
	moveq #$0,d1
	bra.s loc_209f7a
loc_209f72:
	cmpi.w #$3,d1
	bcs.s loc_209f7a
	moveq #$2,d1
loc_209f7a:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a17e).l,a1
	bsr.w sub_205db2
	bra.w sub_203ba8
loc_209f94:
	bra.w sub_203c54

sub_209f98:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209fe8
	bset.b #$1,($ff150d).l
	beq.s loc_209fd2
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209fe8
	bset.b #$2,($ff150d).l
	bne.s loc_209fe8
loc_209fd2:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d72).l
loc_209fe8:
	jmp (sub_2023b8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ffc(pc,d0.w),d1
	jmp dat_209ffc(pc,d1.w)
dat_209ffc:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a018
	move.w d0,d5
loc_20a018:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a028
loc_20a020:
	bsr.w sub_207cc2
	bne.w loc_20a0de
loc_20a028:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a186,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a086
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a086
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a086:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a0ce
	move.w d4,d0
	jsr (sub_2007dc).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a0ce
	subi.w #$80,d4
	bcc.s loc_20a0ce
	move.w #$288,d4
loc_20a0ce:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a020
loc_20a0de:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2023b8).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203b52
	addi.w #$18,$12(a0)
	bmi.s loc_20a13e
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a13e
	jsr (sub_206dd4).l
	tst.w d1
	bpl.s loc_20a13e
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a13e:
	tst.b ($ff1916).l
	beq.s loc_20a17a
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a17a
	bra.w sub_203ba8
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209f98
	lea (dat_20a17e).l,a1
	bsr.w sub_205db2
	bra.w sub_203ba8
loc_20a17a:
	bra.w sub_203c54
dat_20a17e:
	.incbin 41342, 402
loc_20a310:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a33e(pc,d0.w),d0
	jsr dat_20a33e(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a33c
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a336
	btst.b #$0,($ff1505).l
	bne.s loc_20a33c
loc_20a336:
	jmp (sub_203ba8).l
loc_20a33c:
	rts
dat_20a33e:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a918,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a372
	move.b #$13,$1a(a0)
loc_20a372:
	rts
loc_20a374:
	tst.b ($ff0f01).l
	beq.s loc_20a382
	jmp (sub_203c54).l
loc_20a382:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a310
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a3a6(pc,d0.w),d0
	jsr dat_20a3a6(pc,d0.w)
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20a3a6:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a918,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3f4
	tst.b $29(a0)
	bne.s loc_20a3f4
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a3f4:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a4c0
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a41c
	addq.b #$2,$1a(a0)
loc_20a41c:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a430
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a430:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a496
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a462
	tst.b $29(a0)
	beq.s loc_20a45a
	tst.b ($ff1956).l
	beq.s loc_20a496
	bra.s loc_20a462
loc_20a45a:
	tst.b ($ff1956).l
	bne.s loc_20a496
loc_20a462:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a4c0
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a490
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a490:
	jsr (sub_205d72).l
loc_20a496:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a4a8
	lea (dat_20a890).l,a1
	bra.w sub_205db2
loc_20a4a8:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a4be
	addq.b #$2,$1a(a0)
loc_20a4be:
	rts

sub_20a4c0:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a4f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a4f0
	moveq #$0,d1
	bra.s loc_20a4f8
loc_20a4f0:
	cmpi.w #$3,d1
	bcs.s loc_20a4f8
	moveq #$2,d1
loc_20a4f8:
	add.w d1,d0
	rts

sub_20a4fc:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a51e
	tst.b ($ff1956).l
	beq.s loc_20a516
	tst.b $29(a0)
	bne.s loc_20a51e
	rts
loc_20a516:
	tst.b $29(a0)
	beq.s loc_20a51e
	rts
loc_20a51e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2092e0).l
	tst.b $28(a0)
	bne.s loc_20a540
	tst.b ($ff0f01).l
	beq.s loc_20a540
	jmp (loc_207cf8).l
loc_20a540:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a374
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a558(pc,d0.w),d1
	jmp dat_20a558(pc,d1.w)
dat_20a558:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a918,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5a2
	tst.b $29(a0)
	bne.s loc_20a5a2
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a5a2:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a4c0
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a5ce
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a5ce:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a628
	move.b $25(a0),d0
	beq.s loc_20a608
	bsr.w sub_203af0
	jsr (sub_206dd4).l
	tst.w d1
	bpl.w loc_20a616
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a616
loc_20a608:
	tst.b $1(a0)
	bpl.s loc_20a616
	lea ($d000).w,a1
	bsr.w sub_20a4fc
loc_20a616:
	tst.w ($ff190e).l
	bne.s loc_20a628
	lea (dat_20a890).l,a1
	bsr.w sub_205db2
loc_20a628:
	bsr.w sub_203ba8
	jmp (loc_207cf8).l
	move.w #$96,d0
	jsr (sub_2023b8).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207cc2
	bne.s loc_20a66a
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a66a:
	bsr.w sub_207cc2
	bne.s loc_20a694
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a694:
	bsr.w sub_20a4c0
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203ba8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6ba(pc,d0.w),d1
	jsr dat_20a6ba(pc,d1.w)
	bra.w sub_203ba8
dat_20a6ba:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a6d6
	andi.b #$7f,$2(a0)
loc_20a6d6:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a918,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a71e
	bsr.w sub_203b52
	addi.w #$18,$12(a0)
	rts
loc_20a71e:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a744
loc_20a72e:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d72).l
loc_20a744:
	cmpi.b #$1,d0
	bne.s loc_20a790
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a786
	bset.b #$1,($ff150d).l
	beq.w loc_20a72e
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a786
	bset.b #$2,($ff150d).l
	beq.w loc_20a72e
loc_20a786:
	move.w #$95,d0
	jmp (sub_2023b8).l
loc_20a790:
	cmpi.b #$2,d0
	bne.s loc_20a7ae

sub_20a796:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_2023b8).l
loc_20a7ae:
	cmpi.b #$3,d0
	bne.s loc_20a810

sub_20a7b4:
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
	bne.s loc_20a804
	move.w #$82,d0
	jsr (sub_205d72).l
loc_20a804:
	move.w #$6d,d0
	jmp (sub_205d72).l
	dc.b $4e,$75
loc_20a810:
	cmpi.b #$4,d0
	bne.s loc_20a852
loc_20a816:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a848
	move.w #$82,d0
	jsr (sub_205d72).l
loc_20a848:
	move.w #$6c,d0
	jmp (sub_205d72).l
loc_20a852:
	cmpi.b #$5,d0
	bne.s loc_20a862
	move.w #$12c,($ff190e).l
	rts
loc_20a862:
	cmpi.b #$6,d0
	bne.s loc_20a87c
	move.w #$9d,d0
	jsr (sub_2023b8).l
	move.b #$1,($ff156f).l
	rts
loc_20a87c:
	bsr.w sub_20a796
	bsr.w sub_20a7b4
	bra.s loc_20a816
	subq.w #$1,$1e(a0)
	bmi.w sub_203c54
	rts
dat_20a890:
	.incbin 43152, 586
loc_20aada:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aaee(pc,d0.w),d0
	jsr dat_20aaee(pc,d0.w)
	jmp (sub_203ba8).l
dat_20aaee:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20ab2e,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20ab28
	jmp (sub_203c54).l
loc_20ab28:
	subq.w #$2,$c(a0)
	rts
	.incbin 43822, 82
	tst.b $28(a0)
	bmi.w loc_20aada
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab96(pc,d0.w),d0
	jmp dat_20ab96(pc,d0.w)
dat_20ab96:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ac30,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20abc6
	move.b #$3,$1a(a0)
	bra.s loc_20abe6
loc_20abc6:
	tst.w ($ff1588).l
	beq.s loc_20abd4
	move.b #$2,$1a(a0)
loc_20abd4:
	tst.b $28(a0)
	beq.s loc_20abe6
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20abe6:
	tst.b $28(a0)
	bne.s loc_20ac2a
	tst.b $29(a0)
	beq.s loc_20ac16
	tst.w ($ff1512).l
	beq.s loc_20ac02
	bclr.b #$5,$2(a0)
	bra.s loc_20ac2a
loc_20ac02:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ac2a
	eori.b #$20,$2(a0)
	bra.s loc_20ac2a
loc_20ac16:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ac2a
	move.b #$2,$1a(a0)
loc_20ac2a:
	jmp (sub_203ba8).l
	.incbin 44080, 168

sub_20acd8:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20acf4
	move.l d1,(a3)
loc_20acf4:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ad1e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d72).l
loc_20ad1e:
	rts
loc_20ad20:
	tst.w ($ff1588).l
	beq.s loc_20ad76
	bsr.w sub_20af72
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
	lea (dat_20b0d2).l,a2
	moveq #$2,d6
	bsr.w sub_20b12a
	bra.w loc_20add0
loc_20ad76:
	tst.b ($ff1511).l
	beq.s loc_20ad9a
	bpl.s loc_20ad84
	bsr.w sub_20af1c
loc_20ad84:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b00c
loc_20ad9a:
	tst.b ($ff150f).l
	beq.s loc_20add0
	bpl.s loc_20ada8
	bsr.w sub_20af08
loc_20ada8:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20adcc
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20adcc:
	bsr.w sub_20b002
loc_20add0:
	tst.w ($ff1588).l
	bne.w loc_20ae7c
	tst.b ($ff1510).l
	beq.w loc_20ae7c
	tst.w ($f63a).w
	bne.w loc_20ae7c
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20aeda
	tst.b ($f7cc).w
	bne.s loc_20ae26
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ae26
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ae26
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ae26
	move.b #$9,(a1)
loc_20ae26:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b118
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b122
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ae78
	move.w #$63,d1
loc_20ae78:
	bsr.w sub_20b122
loc_20ae7c:
	tst.b ($ff150e).l
	beq.s loc_20ae8e
	clr.b ($ff150e).l
	bsr.w sub_20b0f8
loc_20ae8e:
	tst.b ($f7d6).w
	beq.s loc_20aed8
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aeae
	move.l #$6d400001,d0
loc_20aeae:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20af90
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aece
	move.l #$6e800001,d0
loc_20aece:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20af90
loc_20aed8:
	rts
loc_20aeda:
	btst.b #$7,($ff152e).l
	bne.s loc_20af06
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207302
	move.b #$1,($ff150c).l
loc_20af06:
	rts

sub_20af08:
	move.l #$73600002,($c00004).l
	lea dat_20af6e(pc),a2
	move.w #$2,d2
	bra.s loc_20af38

sub_20af1c:
	lea ($c00000).l,a6
	bsr.w sub_20b0f8
	move.l #$70600002,($c00004).l
	lea dat_20af66(pc),a2
	move.w #$6,d2
loc_20af38:
	lea (dat_2330bc).l,a1
loc_20af3e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20af5a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20af4e:
	move.l (a3)+,(a6)
	dbf d1,loc_20af4e
loc_20af54:
	dbf d2,loc_20af3e
	rts
loc_20af5a:
	move.l #$0,(a6)
	dbf d1,loc_20af5a
	bra.s loc_20af54
dat_20af66:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20af6e:
	dc.b $ff,$ff,$00,$00

sub_20af72:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b0ee
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b0ee

sub_20af90:
	lea (dat_20b0ca).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20afa0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20afa4:
	sub.l d3,d1
	bcs.s loc_20afac
	addq.w #$1,d2
	bra.s loc_20afa4
loc_20afac:
	add.l d3,d1
	tst.w d2
	beq.s loc_20afb6
	move.w #$1,d4
loc_20afb6:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20afc2
	tst.w d6
	bne.s loc_20aff4
loc_20afc2:
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
loc_20afe8:
	addi.l #$400000,d0
	dbf d6,loc_20afa0
	rts
loc_20aff4:
	moveq #$f,d5
loc_20aff6:
	move.l #$0,(a6)
	dbf d5,loc_20aff6
	bra.s loc_20afe8

sub_20b002:
	lea (dat_20b0d2).l,a2
	moveq #$2,d6
	bra.s loc_20b014

sub_20b00c:
	lea (dat_20b0c6).l,a2
	moveq #$5,d6
loc_20b014:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b01c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b020:
	sub.l d3,d1
	bcs.s loc_20b028
	addq.w #$1,d2
	bra.s loc_20b020
loc_20b028:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b032
	move.w #$1,d4
loc_20b032:
	tst.w d4
	beq.s loc_20b060
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
loc_20b060:
	addi.l #$400000,d0
	dbf d6,loc_20b01c
	rts
	.incbin 45164, 90
dat_20b0c6:
	dc.b $00,$01,$86,$a0
dat_20b0ca:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b0d2:
	dc.b $00,$00,$00,$64
dat_20b0d6:
	dc.b $00,$00,$00,$0a
dat_20b0da:
	dc.b $00,$00,$00,$01
dat_20b0de:
	.incbin 45278, 16

sub_20b0ee:
	moveq #$3,d6
	lea (dat_20b0de).l,a2
	bra.s sub_20b12a

sub_20b0f8:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b10e
	moveq #$9,d1
loc_20b10e:
	lea (dat_20b0da).l,a2
	moveq #$0,d6
	bra.s sub_20b12a

sub_20b118:
	lea (dat_20b0da).l,a2
	moveq #$0,d6
	bra.s sub_20b12a

sub_20b122:
	lea (dat_20b0d6).l,a2
	moveq #$1,d6

sub_20b12a:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b132:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b136:
	sub.l d3,d1
	bcs.s loc_20b13e
	addq.w #$1,d2
	bra.s loc_20b136
loc_20b13e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b148
	move.w #$1,d4
loc_20b148:
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
	dbf d6,loc_20b132
	rts
	.incbin 45438, 954
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b55c(pc,d0.w),d0
	jsr dat_20b55c(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20b556
	jsr (sub_203ba8).l
loc_20b556:
	jmp (loc_207cf8).l
dat_20b55c:
	.incbin 46428, 1636
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bbce(pc,d0.w),d0
	jmp dat_20bbce(pc,d0.w)
dat_20bbce:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205d72).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20bca4,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20bc2a
	tst.b ($ff1508).l
	beq.s loc_20bc32
	move.l #$20bca8,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20bc32
loc_20bc2a:
	tst.b ($ff1508).l
	bne.s loc_20bc42
loc_20bc32:
	bset.b #$7,($ff156b).l
	jsr (sub_207cc2).l
	beq.s loc_20bc48
loc_20bc42:
	jmp (sub_203c54).l
loc_20bc48:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20bc8a
	move.w #$6e,d0
	jmp (sub_205d72).l
loc_20bc8a:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bc9e
	bge.s loc_20bc9a
	neg.w d0
loc_20bc9a:
	add.w d0,$8(a0)
loc_20bc9e:
	jmp (sub_203ba8).l
	.incbin 48292, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bcea(pc,d0.w),d0
	jmp dat_20bcea(pc,d0.w)
dat_20bcea:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c3e8,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c3a8).l,a2
loc_20bd38:
	jsr (sub_207cc2).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c3e8,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bd8a
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bd8a:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20bd38
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bdb2
	bge.s loc_20bda8
	neg.w d0
loc_20bda8:
	add.w d0,$a(a0)
	jmp (sub_203ba8).l
loc_20bdb2:
	addq.b #$4,$24(a0)
	jmp (sub_203ba8).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bdd6
	bge.s loc_20bdcc
	neg.w d0
loc_20bdcc:
	add.w d0,$8(a0)
	jmp (sub_203ba8).l
loc_20bdd6:
	addq.b #$4,$24(a0)
	jmp (sub_203ba8).l
	tst.b $1e(a0)
	beq.s loc_20bdf0
	subq.b #$1,$1e(a0)
	jmp (sub_203ba8).l
loc_20bdf0:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20be0a
	bge.s loc_20be00
	neg.w d0
loc_20be00:
	add.w d0,$a(a0)
	jmp (sub_203ba8).l
loc_20be0a:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202582).l
	tst.b $1e(a0)
	beq.s loc_20be2c
	subq.b #$1,$1e(a0)
	jmp (sub_203ba8).l
loc_20be2c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20be46
	bge.s loc_20be3c
	neg.w d0
loc_20be3c:
	add.w d0,$8(a0)
	jmp (sub_203ba8).l
loc_20be46:
	jmp (sub_203c54).l
	tst.l ($f680).w
	bne.s loc_20be60
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203c54).l
loc_20be60:
	rts
	.incbin 48738, 1350
dat_20c3a8:
	.incbin 50088, 382

sub_20c526:
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	beq.s loc_20c534
	rts
loc_20c534:
	lea dat_20c562(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c540:
	cmp.w (a1)+,d0
	bcs.s loc_20c548
	addq.b #$2,d1
	bra.s loc_20c540
loc_20c548:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c552
	rts
loc_20c552:
	move.b d1,($ff1574).l
	move.w dat_20c568(pc,d1.w),d0
	jmp (loc_2025b4).l
dat_20c562:
	dc.b $15,$e0,$1b,$00,$ff,$ff
dat_20c568:
	dc.b $00,$05,$00,$06,$00,$05,$00,$02
	dc.b $00,$04,$00,$02

sub_20c574:
	move.w #$4f2,$2(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c590(pc,d0.w),d0
	jsr dat_20c590(pc,d0.w)
	jmp (sub_203ba8).l
dat_20c590:
	dc.b $00,$06,$00,$f6,$00,$dc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4300,$2(a0)
	move.l #$20ca80,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$40,$19(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	lea $2a(a0),a2
	moveq #$7,d1
loc_20c5d8:
	jsr (sub_207cc2).l
	bne.w loc_20c656
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
	move.l #$20ca80,$4(a1)
	move.b #$8,$16(a1)
	move.b #$8,$19(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3f(a1)
	moveq #$0,d2
	move.b d1,d2
	move.b d2,$3c(a1)
	add.w d2,d2
	lea dat_20c65c(pc,d2.w),a3
	move.w (a3)+,d2
	add.w $8(a0),d2
	move.w d2,$8(a1)
loc_20c656:
	dbf d1,loc_20c5d8
	rts
dat_20c65c:
	.incbin 50780, 16
	movea.w $34(a0),a1
	cmpi.b #$2f,$0(a1)
	bne.s loc_20c680
	tst.b $3f(a1)
	bne.s loc_20c680
	rts
loc_20c680:
	jmp (sub_203c54).l
	clr.b $3d(a0)
	bsr.w sub_20c9e6
	beq.s loc_20c694
	bsr.w sub_20c6ce
loc_20c694:
	tst.b $3d(a0)
	beq.w loc_20c6ba
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	beq.s loc_20c6aa
	addq.b #$4,$3a(a0)
loc_20c6aa:
	bsr.w sub_20c72e
	tst.b $3d(a0)
	beq.s loc_20c6b8
	bsr.w sub_20c702
loc_20c6b8:
	bra.s loc_20c6c8
loc_20c6ba:
	tst.b $3a(a0)
	beq.s loc_20c6c8
	subq.b #$4,$3a(a0)
	bsr.w sub_20c72e
loc_20c6c8:
	jmp (loc_207cf8).l

sub_20c6ce:
	lea ($d000).w,a1
	moveq #$8,d1
	lsl.w #$3,d1
	move.w d1,d2
	addq.w #$8,d1
	add.w d2,d2
	btst.b #$1,$22(a1)
	bne.s loc_20c6f4
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20c6f4
	cmp.w d2,d0
	bcs.s loc_20c6fa
loc_20c6f4:
	clr.b $3d(a0)
	rts
loc_20c6fa:
	lsr.w #$4,d0
	move.b d0,$3d(a0)
	rts

sub_20c702:
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

sub_20c72e:
	moveq #$0,d3
	move.b $3d(a0),d3
	move.b $3a(a0),d0
	jsr (sub_2007dc).l
	move.w d0,d4
	lea (dat_20c8e6).l,a4
	moveq #$8,d0
	lsl.w #$4,d0
	move.w d3,d2
	add.w d0,d3
	moveq #$0,d5
	lea (dat_20c7d6).l,a5
	move.b $0(a5,d3.w),d5
	andi.w #$f,d3
	lsl.w #$4,d3
	lea $0(a4,d3.w),a3
	lea $2a(a0),a2
loc_20c768:
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
	dbf d2,loc_20c768
	moveq #$0,d3
	move.b $3d(a0),d3
	moveq #$8,d0
	addq.b #$1,d3
	sub.b d0,d3
	neg.b d3
	bmi.s loc_20c7d4
	move.w d3,d2
	lsl.w #$4,d3
	lea $0(a4,d3.w),a3
	adda.w d2,a3
	subq.w #$1,d2
	bcs.s loc_20c7d4
loc_20c7ac:
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
	dbf d2,loc_20c7ac
loc_20c7d4:
	rts
dat_20c7d6:
	.incbin 51158, 272
dat_20c8e6:
	.incbin 51430, 256

sub_20c9e6:
	lea ($d000).w,a1
	cmpi.b #$6,$24(a1)
	beq.w loc_20ca60
	tst.b ($ff1906).l
	bne.s loc_20ca60
	moveq #$8,d1
	lsl.w #$3,d1
	move.w d1,d2
	addq.w #$8,d1
	add.w d2,d2
	tst.w $12(a1)
	bmi.w loc_20ca60
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20ca60
	cmp.w d2,d0
	bcc.w loc_20ca60
	move.w $c(a0),d0
	subq.w #$8,d0
	move.w $c(a1),d2
	move.b $16(a1),d1
	ext.w d1
	add.w d2,d1
	addq.w #$4,d1
	sub.w d1,d0
	bhi.w loc_20ca60
	cmpi.w #$fff0,d0
	bcs.w loc_20ca60
	cmpi.b #$6,$24(a1)
	bcc.w loc_20ca60
	add.w d0,d2
	addq.w #$3,d2
	move.w d2,$c(a1)
	jsr (sub_209204).l
	moveq #$ffffffff,d0
	rts
loc_20ca60:
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20ca7c
	clr.b $38(a1)
	bclr.b #$3,$22(a1)
loc_20ca7c:
	moveq #$0,d0
	rts
	.incbin 51840, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cad6(pc,d0.w),d0
	jsr dat_20cad6(pc,d0.w)
	jsr (sub_203ba8).l
	move.w $36(a0),d0
	jmp (loc_207cfc).l
dat_20cad6:
	dc.b $00,$96,$01,$56
loc_20cada:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2092da).l
dat_20caec:
	.incbin 51948, 50
dat_20cb1e:
	.incbin 51998, 52
dat_20cb52:
	.incbin 52050, 26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4304,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20cb8e
	move.w #$4378,d0
loc_20cb8e:
	move.w d0,$2(a0)
	move.l #$20cf32,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$16(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$1f,d0
	move.b d0,d1
	add.b d1,d1
	lea (dat_20caec).l,a2
	lea $0(a2,d1.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$19(a0)
	lea (dat_20cb1e).l,a2
	move.b $0(a2,d0.w),$3f(a0)
	lea (dat_20cb52).l,a2
	move.b $0(a2,d0.w),d1
	beq.s loc_20cc28
	cmpi.b #$1,d1
	bne.s loc_20cbf4
	clr.b d2
	bsr.w sub_20ce9e
	bra.s loc_20cc28
loc_20cbf4:
	cmpi.b #$2,d1
	bne.s loc_20cc0c
	move.b #$f0,d2
	bsr.w sub_20ce9e
	move.b #$10,d2
	bsr.w sub_20ce9e
	bra.s loc_20cc28
loc_20cc0c:
	cmpi.b #$3,d1
	bne.s loc_20cc28
	move.b #$e0,d2
	bsr.w sub_20ce9e
	clr.b d2
	bsr.w sub_20ce9e
	move.b #$20,d2
	bsr.w sub_20ce9e
loc_20cc28:
	bra.w loc_20cc2c
loc_20cc2c:
	move.b $28(a0),d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w dat_20cc4a(pc,d0.w),d0
	jsr dat_20cc4a(pc,d0.w)
	bsr.w sub_20ce5a
	bsr.w sub_20cece
	bra.w loc_20cada
dat_20cc4a:
	.incbin 52298, 50
	bset.b #$7,$3f(a0)
	rts
	bset.b #$7,$3f(a0)
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20ce1a
loc_20cc98:
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20cca4
	neg.w d0
loc_20cca4:
	move.w d0,$10(a0)
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	rts
	move.w #$4,$30(a0)
	move.w #$30,d4
	bsr.w sub_20ce1a
	move.w $2e(a0),d0
	tst.b $28(a0)
	bpl.s loc_20ccd0
	neg.w d0
loc_20ccd0:
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts
	bset.b #$7,$3f(a0)
	move.w #$4,$30(a0)
	move.w #$20,d4
	bsr.w sub_20ce1a
	bra.w loc_20cc98
	.incbin 52466, 296

sub_20ce1a:
	move.w $30(a0),d2
	tst.b $3c(a0)
	bne.s loc_20ce40
	move.w $2e(a0),d0
	add.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bhi.s loc_20ce58
	move.b #$ff,$3c(a0)
	bra.s loc_20ce58
loc_20ce40:
	move.w $2e(a0),d0
	sub.w d2,d0
	move.w d0,$2e(a0)
	add.w d0,$2c(a0)
	cmp.b $2c(a0),d4
	bls.s loc_20ce58
	clr.b $3c(a0)
loc_20ce58:
	rts

sub_20ce5a:
	btst.b #$7,$3f(a0)
	beq.s loc_20ce9c
	btst.b #$3,$22(a0)
	bne.s loc_20ce76
	tst.b $3e(a0)
	beq.s loc_20ce9c
	subq.b #$8,$3e(a0)
	bra.s loc_20ce82
loc_20ce76:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20ce9c
	addq.b #$8,$3e(a0)
loc_20ce82:
	move.b $3e(a0),d0
	jsr (sub_2007dc).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20ce9c:
	rts

sub_20ce9e:
	jsr (sub_207cc2).l
	bne.s loc_20cecc
	move.b #$a,$0(a1)
	move.w $c(a0),$c(a1)
	move.w $8(a0),$8(a1)
	move.b d2,$38(a1)
	move.b #$e8,$39(a1)
	move.w a0,$34(a1)
	move.b #$2,$28(a1)
loc_20cecc:
	rts

sub_20cece:
	btst.b #$0,$3f(a0)
	beq.s loc_20cf30
	btst.b #$3,$22(a0)
	beq.s loc_20cf30
	lea ($d000).w,a1
	tst.b $0(a1)
	beq.s loc_20cf30
	btst.b #$3,$22(a1)
	beq.s loc_20cf30
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20cf30
	move.b ($ff152e).l,d1
	move.l #$8000,d0
	tst.b d1
	beq.s loc_20cf22
	move.l #$10000,d0
	subq.b #$1,d1
	beq.s loc_20cf22
	move.l #$20000,d0
loc_20cf22:
	tst.b ($ff158f).l
	beq.s loc_20cf2c
	neg.l d0
loc_20cf2c:
	add.l d0,$8(a1)
loc_20cf30:
	rts
	.incbin 53042, 188
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d008(pc,d0.w),d0
	jsr dat_20d008(pc,d0.w)
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20d008:
	dc.b $00,$08,$00,$4a,$00,$b4,$00,$f2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$4797,$2(a0)
	move.l #$20d134,$4(a0)
	btst.b #$0,($ff158f).l
	beq.s loc_20d04a
	move.b #$2,$1a(a0)
loc_20d04a:
	move.b ($ff158f).l,$3c(a0)
	tst.b ($ff1906).l
	bne.s loc_20d0a0
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20d06a
	neg.w d0
loc_20d06a:
	cmpi.w #$10,d0
	bcc.s loc_20d0a0
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d07c
	neg.w d0
loc_20d07c:
	cmpi.w #$8,d0
	bcc.s loc_20d0a0
	bchg.b #$0,($ff158f).l
	addq.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20d09e
	move.w #$bf,d0
	jsr (sub_2023b8).l
loc_20d09e:
	rts
loc_20d0a0:
	move.b ($ff158f).l,d0
	cmp.b $3c(a0),d0
	beq.s loc_20d0b6
	move.b #$ff,$3d(a0)
	addq.b #$2,$24(a0)
loc_20d0b6:
	move.b d0,$3c(a0)
	rts
	.incbin 53436, 162
	tst.b $28(a0)
	bmi.w loc_20d304
	jsr (sub_20efc2).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d18a(pc,d0.w),d0
	jsr dat_20d18a(pc,d0.w)
	jsr (sub_203ba8).l
	move.w $2a(a0),d0
	jmp (loc_207cfc).l
dat_20d18a:
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
	lea dat_20d344(pc),a1
	tst.b $28(a0)
	beq.s loc_20d1da
	lea dat_20d3b4(pc),a1
loc_20d1da:
	move.l a1,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206dd4).l
	tst.w d1
	bpl.s loc_20d1f8
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20d1f8:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20d20e
	neg.w d0
loc_20d20e:
	cmpi.w #$50,d0
	bge.w loc_20d2ce
	jsr (sub_206dd4).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.w loc_20d2ce
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.w loc_20d2c4
	lea ($d000).w,a6
	bsr.w sub_20d2e0
	bcc.w loc_20d2a8
	move.b #$1,$1c(a0)
	tst.w $3e(a0)
	bne.w loc_20d2c4
	jsr (sub_207cc2).l
	bne.s loc_20d2c4
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $29(a0),$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$ffec,$c(a1)
	move.w $2(a0),$2(a1)
	move.l #$20d3d4,$4(a1)
	move.b #$b0,$20(a1)
	move.w a0,$3e(a1)
	move.w a1,$3e(a0)
	tst.b $1(a0)
	bpl.s loc_20d2a6
	move.w #$b7,d0
	jsr (sub_2023b8).l
loc_20d2a6:
	bra.s loc_20d2c4
loc_20d2a8:
	move.b #$0,$1c(a0)
	tst.w $3e(a0)
	beq.s loc_20d2c4
	movea.w $3e(a0),a1
	jsr (sub_203c56).l
	move.w #$0,$3e(a0)
loc_20d2c4:
	lea dat_20d338(pc),a1
	jmp (sub_205db2).l
loc_20d2ce:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20d2e0:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20d302
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20d302:
	rts
loc_20d304:
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20d332
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.s loc_20d332
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	addi.w #$ffec,$c(a0)
	jmp (sub_203ba8).l
loc_20d332:
	jmp (sub_203c54).l
dat_20d338:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $1d,$02,$03,$ff
dat_20d344:
	.incbin 54084, 112
dat_20d3b4:
	.incbin 54196, 36
	tst.b $29(a0)
	beq.s loc_20d3e6
	bpl.w loc_20d6d6
	bra.w loc_20d6d6
loc_20d3e6:
	jsr (sub_20efc2).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d414(pc,d0.w),d0
	jsr dat_20d414(pc,d0.w)
	lea dat_20d70c(pc),a1
	jsr (sub_205db2).l
	jsr (sub_203ba8).l
	move.w $2a(a0),d0
	jmp (loc_207cfc).l
dat_20d414:
	.incbin 54292, 22
	addq.b #$2,$24(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.b #$31,$20(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20d712(pc),a1
	move.l #$ffff0000,d0
	move.w #$3,d1
	tst.b $28(a0)
	beq.s loc_20d474
	lea dat_20d74a(pc),a1
	move.l #$ffff8000,d0
	move.w #$7,d1
loc_20d474:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	move.w d1,$32(a0)
	movea.w a0,a1
	bra.s loc_20d4a0

sub_20d484:
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $18(a0),$18(a1)
	move.w a0,$2a(a1)
loc_20d4a0:
	ori.b #$4,$1(a1)
	move.w #$23b6,$2(a1)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206dd4).l
	tst.w d1
	bpl.s loc_20d4fe
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	jsr (sub_207cd8).l
	bne.w loc_20d6d0
	move.w a1,$30(a0)
	move.b #$1,$29(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$10,$16(a1)
	move.l #$20d782,$4(a1)
	move.b $28(a0),$1a(a1)
	bsr.s sub_20d484
	subq.b #$1,$18(a1)
loc_20d4fe:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20d514
	neg.w d0
loc_20d514:
	cmpi.w #$50,d0
	bge.s loc_20d56a
	jsr (sub_206dd4).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20d56a
	add.w d1,$c(a0)
	movea.w $30(a0),a1
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w $32(a0),d0
	add.w d0,$8(a1)
	addi.w #$fff0,$c(a1)
	lea ($d000).w,a1
	bsr.s sub_20d598
	bcs.s loc_20d556
	rts
loc_20d556:
	addq.b #$2,$24(a0)
	tst.w d0
	smi d0
	tst.b $2c(a0)
	smi d1
	eor.b d1,d0
	bne.s loc_20d56a
	rts
loc_20d56a:
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

sub_20d598:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffd8,d0
	subi.w #$50,d0
	bcc.s loc_20d5bc
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20d5bc:
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
	bne.s loc_20d608
	addq.b #$2,$24(a0)
	movea.w $30(a0),a1
	subq.w #$5,$c(a1)
	move.w #$5,d0
	tst.b $2c(a0)
	bmi.s loc_20d604
	neg.w d0
loc_20d604:
	add.w d0,$8(a1)
loc_20d608:
	rts
	addq.b #$2,$24(a0)
	move.w #$a,$34(a0)
	subq.w #$1,$34(a0)
	bne.s loc_20d688
	addq.b #$2,$24(a0)
	tst.b $28(a0)
	bne.s loc_20d688
	jsr (sub_207cc2).l
	bne.s loc_20d688
	move.b #$ff,$29(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$10,$16(a1)
	move.b #$b2,$20(a1)
	move.l #$20d798,$4(a1)
	bsr.w sub_20d484
	addi.w #$ffe8,$c(a1)
	move.w #$fffc,d0
	move.l #$fffd0000,d1
	tst.b $2c(a0)
	bmi.s loc_20d670
	neg.w d0
	neg.l d1
loc_20d670:
	add.w d0,$8(a1)
	move.l d1,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20d688
	move.w #$a0,d0
	jsr (sub_2023b8).l
loc_20d688:
	rts
	addq.b #$2,$24(a0)
	move.w #$1e,$34(a0)
	subq.w #$1,$34(a0)
	bne.s loc_20d6b6
	addq.b #$2,$24(a0)
	movea.w $30(a0),a1
	addq.w #$5,$c(a1)
	move.w #$5,d0
	tst.b $2c(a0)
	bmi.s loc_20d6b2
	neg.w d0
loc_20d6b2:
	sub.w d0,$8(a1)
loc_20d6b6:
	rts
	addq.b #$2,$24(a0)
	move.w #$1e,$34(a0)
	subq.w #$1,$34(a0)
	bne.s loc_20d6ce
	move.b #$4,$24(a0)
loc_20d6ce:
	rts
loc_20d6d0:
	jmp (sub_203c54).l
loc_20d6d6:
	movea.w $2a(a0),a1
	cmpi.b #$21,$0(a1)
	bne.s loc_20d6d0
	tst.b $29(a0)
	bmi.s loc_20d6ee
	jmp (sub_203ba8).l
loc_20d6ee:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	lea dat_20d792(pc),a1
	jsr (sub_205db2).l
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20d70c:
	dc.b $00,$02,$1d,$00,$01,$ff
dat_20d712:
	.incbin 55058, 56
dat_20d74a:
	.incbin 55114, 72
dat_20d792:
	.incbin 55186, 22
	tst.b $29(a0)
	bne.s loc_20d7b4
	jsr (sub_20efc2).l
loc_20d7b4:
	tst.b $24(a0)
	beq.s loc_20d7d8
	movem.w $3a(a0),a1-a3
	cmpi.b #$22,$0(a1)
	bne.s loc_20d808
	cmpi.b #$22,$0(a2)
	bne.s loc_20d808
	cmpi.b #$22,$0(a3)
	bne.s loc_20d808
loc_20d7d8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d7fe(pc,d0.w),d0
	jsr dat_20d7fe(pc,d0.w)
	jsr (sub_203ba8).l
	tst.b $29(a0)
	bne.s loc_20d7fc
	move.w $34(a0),d0
	jmp (loc_207cfc).l
loc_20d7fc:
	rts
dat_20d7fe:
	dc.b $00,$10,$01,$1a,$01,$42,$01,$6a
	dc.b $01,$8c
loc_20d808:
	jmp (sub_203c54).l
	move.w #$3,$2a(a0)
	move.b #$1,$1a(a0)
	move.b #$c,$16(a0)
	move.b #$33,$20(a0)
	movea.w a0,a1
	bsr.w sub_20d8e4
	tst.b $28(a0)
	bne.s loc_20d83c
	move.w #$24,d0
	move.w #$6,d1
	bra.s loc_20d844
loc_20d83c:
	move.w #$24,d0
	move.w #$c,d1
loc_20d844:
	move.w d0,$2c(a0)
	move.w d1,$30(a0)
	lea $3a(a0),a6
	move.w #$2,d6
	move.w $8(a0),d5
	tst.b $28(a0)
	bne.s loc_20d866
	moveq #$2,d4
	moveq #$b,d3
	moveq #$ffffffb4,d2
	bra.s loc_20d86c
loc_20d866:
	moveq #$3,d4
	moveq #$7,d3
	moveq #$33,d2
loc_20d86c:
	jsr (sub_207cd8).l
	bne.s loc_20d808
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
	bsr.s sub_20d8e4
	dbf d6,loc_20d86c
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

sub_20d8e4:
	move.b #$2,$24(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.w #$23fe,$2(a1)
	move.l #$20d9f2,$4(a1)
	move.w $8(a0),$34(a1)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_206dd4).l
	tst.w d1
	bpl.s loc_20d93e
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	movea.w a0,a1
	tst.b $29(a0)
	beq.s loc_20d93a
	movea.w $3a(a0),a1
loc_20d93a:
	addq.w #$1,$36(a1)
loc_20d93e:
	rts
	tst.b $29(a0)
	bne.s loc_20d966
	cmpi.w #$4,$36(a0)
	bne.s loc_20d966
	movem.w $3a(a0),a1-a3
	addq.b #$2,$24(a0)
	addq.b #$2,$24(a1)
	addq.b #$2,$24(a2)
	addq.b #$2,$24(a3)
	bra.s loc_20d968
loc_20d966:
	rts
loc_20d968:
	addq.b #$2,$24(a0)
	eori.w #$3,$2a(a0)
	move.w $2c(a0),$2e(a0)
	move.w $30(a0),$32(a0)
	tst.b $29(a0)
	bne.s loc_20d98a
	eori.b #$1,$1a(a0)
loc_20d98a:
	move.w $2a(a0),d0
	sub.w d0,$32(a0)
	bne.s loc_20d9c2
	move.w $30(a0),$32(a0)
	bsr.s sub_20d9de
	move.w $34(a0),d0
	sub.w $8(a0),d0
	bpl.s loc_20d9a8
	neg.w d0
loc_20d9a8:
	cmpi.w #$50,d0
	bge.s loc_20d9ce
	jsr (sub_206dd4).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20d9ce
	add.w d1,$c(a0)
loc_20d9c2:
	subq.w #$1,$2e(a0)
	bne.s loc_20d9cc
	subq.b #$2,$24(a0)
loc_20d9cc:
	rts
loc_20d9ce:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bsr.s sub_20d9de
	bra.s loc_20d98a

sub_20d9de:
	btst.b #$0,$1(a0)
	bne.s loc_20d9ec
	subq.w #$1,$8(a0)
	bra.s loc_20d9f0
loc_20d9ec:
	addq.w #$1,$8(a0)
loc_20d9f0:
	rts
	.incbin 55794, 32
	tst.b $28(a0)
	bmi.w loc_20dc20
	jsr (sub_20efc2).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20da3a(pc,d0.w),d0
	jsr dat_20da3a(pc,d0.w)
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20da3a:
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
	lea dat_20dca6(pc),a1
	lea dat_20dc9a(pc),a2
	move.l #$fff80000,d0
	tst.b $28(a0)
	beq.s loc_20da98
	lea dat_20dd46(pc),a1
	lea dat_20dca0(pc),a2
	move.l #$fffb0000,d0
loc_20da98:
	move.l a1,$4(a0)
	move.l a2,$2c(a0)
	move.l d0,$30(a0)
	tst.b $29(a0)
	beq.s loc_20dab6
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20dab6:
	addq.b #$2,$24(a0)
	bra.s loc_20dad0
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
	subq.w #$8,$c(a0)
	move.l $30(a0),$34(a0)
loc_20dad0:
	addi.l #$4000,$34(a0)
	move.l $34(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206dd4).l
	tst.w d1
	bpl.s loc_20dafc
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	addq.w #$8,$c(a0)
loc_20dafc:
	rts
	addq.b #$2,$24(a0)
	move.b #$36,$20(a0)
	move.w #$b4,$2a(a0)
	tst.b $28(a0)
	bne.s loc_20db30
	lea ($d000).w,a1
	bsr.s sub_20db44
	tst.b d6
	beq.s loc_20db30
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$3c,$2a(a0)
	rts
loc_20db30:
	subq.w #$1,$2a(a0)
	bne.s loc_20db3a
	subq.b #$6,$24(a0)
loc_20db3a:
	movea.l $2c(a0),a1
	jmp (sub_205db2).l

sub_20db44:
	moveq #$0,d6
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20db8a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
	bcc.s loc_20db8a
	tst.w d0
	smi d0
	btst.b #$0,$1(a0)
	seq d1
	eor.b d1,d0
	bne.s loc_20db8a
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	moveq #$ffffffff,d6
loc_20db8a:
	rts
	.incbin 56204, 148
loc_20dc20:
	tst.w $2a(a0)
	bne.s loc_20dc60
	tst.b $21(a0)
	beq.s loc_20dc4c
	clr.b $21(a0)
	lea ($d000).w,a1
	cmpi.b #$4,$24(a1)
	beq.s loc_20dc4c
	cmpi.b #$6,$24(a1)
	beq.s loc_20dc4c
	tst.w $30(a1)
	bne.s loc_20dc4c
	bra.s loc_20dc56
loc_20dc4c:
	move.l $34(a0),d0
	add.l d0,$8(a0)
	bra.s loc_20dc84
loc_20dc56:
	move.w a1,$2c(a0)
	move.w #$78,$2a(a0)
loc_20dc60:
	subq.w #$1,$2a(a0)
	bne.s loc_20dc6c
	jmp (sub_203c54).l
loc_20dc6c:
	movea.w $2c(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	clr.w $10(a1)
	clr.w $14(a1)
loc_20dc84:
	lea dat_20ddd6(pc),a1
	jsr (sub_205db2).l
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20dc9a:
	dc.b $00,$02,$07,$01,$02,$ff
dat_20dca0:
	dc.b $00,$02,$0f,$01,$02,$ff
dat_20dca6:
	.incbin 56486, 160
dat_20dd46:
	.incbin 56646, 144
dat_20ddd6:
	.incbin 56790, 22
	tst.b $28(a0)
	bmi.w loc_20df7a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de0e(pc,d0.w),d0
	jsr dat_20de0e(pc,d0.w)
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20de0e:
	dc.b $00,$06,$00,$3c,$00,$80
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$4332,$2(a0)
	move.l #$20dfb2,$4(a0)
	tst.b $28(a0)
	beq.s loc_20de62
	lea ($d000).w,a1
	bsr.s sub_20de6c
	bcc.s loc_20de62
	addq.b #$2,$24(a0)
	move.b #$f8,$20(a0)
loc_20de62:
	lea ($d000).w,a1
	jmp (sub_2092e0).l

sub_20de6c:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subq.w #$8,d0
	subi.w #$58,d0
	bcc.s loc_20de8c
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fff8,d0
	subi.w #$10,d0
loc_20de8c:
	rts
	tst.b $21(a0)
	bne.s loc_20deb2
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	addi.l #$4000,$2e(a0)
	jsr (sub_206dd4).l
	tst.w d1
	bmi.s loc_20deb2
	bra.w loc_20df98
loc_20deb2:
	lea dat_20df4a(pc),a6
	moveq #$3,d6
loc_20deb8:
	jsr (sub_207cc2).l
	bne.s loc_20df22
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
	dbf d6,loc_20deb8
loc_20df22:
	move.b #$18,$0(a0)
	move.b #$0,$24(a0)
	move.b #$1,$25(a0)
	clr.w $20(a0)
	tst.b $1(a0)
	bpl.s loc_20df48
	move.w #$9e,d0
	jmp (sub_2023b8).l
loc_20df48:
	rts
dat_20df4a:
	.incbin 57162, 48
loc_20df7a:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	jsr (sub_203ba8).l
loc_20df98:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	bgt.s loc_20dfb0
	jmp (sub_203c54).l
loc_20dfb0:
	rts
	.incbin 57266, 322
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e154(pc,d0.w),d0
	jsr dat_20e154(pc,d0.w)
	jsr (sub_203ba8).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20e132
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20e132:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20e150
	rts
loc_20e150:
	bra.w loc_20e302
dat_20e154:
	dc.b $00,$10,$00,$60
dat_20e158:
	dc.b $12,$0c,$00,$12,$0c,$83,$0a,$0e
	dc.b $82,$0a,$0e,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$44b,d0
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20e2e2,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20e158(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20e21e(pc)
	tst.b $1a(a0)
	beq.s loc_20e1c8
	lea ($d000).w,a1
	jmp (sub_2092e0).l
loc_20e1c8:
	lea ($d000).w,a1
	jsr (sub_2092e0).l
	beq.s loc_20e21c
	btst.b #$3,$22(a0)
	beq.s loc_20e21c
	tst.b ($ff1521).l
	bne.s loc_20e21c
	tst.b ($ff151f).l
	bne.s loc_20e21c
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20e21a
	tst.w $30(a0)
	bne.s loc_20e21a
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207262).l
loc_20e21a:
	movea.l (a7)+,a0
loc_20e21c:
	rts

sub_20e21e:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20e238
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20e23a(pc,d0.w),d0
	jmp dat_20e23a(pc,d0.w)
loc_20e238:
	rts
dat_20e23a:
	.incbin 57914, 200
loc_20e302:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20e326
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20e326:
	jmp (sub_203c54).l
	.incbin 58156, 374
	tst.b $29(a0)
	bne.w loc_20e60a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e4b8(pc,d0.w),d0
	jmp dat_20e4b8(pc,d0.w)
dat_20e4b8:
	dc.b $00,$08,$00,$52,$00,$90,$00,$aa
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$20e672,$4(a0)
	move.b #$3,$18(a0)
	move.b #$11,$16(a0)
	move.w #$4350,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e4f0
	move.w #$43a0,d0
loc_20e4f0:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	lea ($d000).w,a1
	jsr (sub_2092da).l
	beq.s loc_20e53c
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20e52e
	neg.w d0
loc_20e52e:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_2023b8).l
loc_20e53c:
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
	.incbin 58696, 194
loc_20e60a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e618(pc,d0.w),d0
	jmp dat_20e618(pc,d0.w)
dat_20e618:
	.incbin 58904, 1450
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ebdc(pc,d0.w),d0
	jsr dat_20ebdc(pc,d0.w)
	jsr (sub_203ba8).l
	jmp (loc_207cf8).l
dat_20ebdc:
	dc.b $00,$06,$00,$3c,$00,$f6
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$30,$16(a0)
	move.b #$ee,$20(a0)
	move.w #$446b,$2(a0)
	move.l #$20ed08,$4(a0)
	move.b $21(a0),d6
	beq.s loc_20ec3e
	clr.b $21(a0)
	lea ($d000).w,a1
	asr.w $10(a1)
	asr.w $14(a1)
	jsr (sub_2092e0).l
	beq.s loc_20ec3c
	jsr (sub_209192).l
loc_20ec3c:
	bra.s loc_20ec48
loc_20ec3e:
	lea ($d000).w,a1
	jmp (sub_2092e0).l
loc_20ec48:
	move.w #$b0,d0
	jsr (sub_2023b8).l
	addq.b #$2,$24(a0)
	clr.b $20(a0)
	lea dat_20ed7e(pc),a6
	lea dat_20ed9e(pc),a5
	lea dat_20ed76(pc),a4
	moveq #$7,d6
	movea.w a0,a1
	bra.s loc_20eca4
loc_20ec6c:
	jsr (sub_207cc2).l
	bne.s loc_20ecd2
	move.b $0(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
loc_20eca4:
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
	dbf d6,loc_20ec6c
loc_20ecd2:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	ble.s loc_20ed02
	jmp (sub_203ba8).l
loc_20ed02:
	jmp (sub_203c54).l
	.incbin 60680, 110
dat_20ed76:
	dc.b $02,$05,$03,$05,$04,$05,$07,$05
dat_20ed7e:
	.incbin 60798, 32
dat_20ed9e:
	.incbin 60830, 548

sub_20efc2:
	tst.b ($ff156a).l
	beq.s loc_20f008
	cmpi.b #$1,($ff152e).l
	bne.s loc_20efda
	tst.b $28(a0)
	beq.s loc_20f008
loc_20efda:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203c54).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20f006
	move.w #$9e,d0
	jsr (sub_2023b8).l
loc_20f006:
	addq.l #$4,a7
loc_20f008:
	rts

sub_20f00a:
	tst.b $28(a0)
	bmi.s loc_20f03a
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f02a
	tst.b ($ff156d).l
	bne.s loc_20f03a
	addq.l #$4,a7
	jmp (loc_207cf8).l
loc_20f02a:
	tst.b ($ff156a).l
	bne.s loc_20f03a
	addq.l #$4,a7
	jmp (sub_203c54).l
loc_20f03a:
	rts
	jsr (sub_20f00a).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20f15e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f05c(pc,d0.w),d0
	jmp dat_20f05c(pc,d0.w)
dat_20f05c:
	.incbin 61532, 258
loc_20f15e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f16c(pc,d0.w),d0
	jmp dat_20f16c(pc,d0.w)
dat_20f16c:
	.incbin 61804, 1248
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f670(pc,d0.w),d0
	jsr dat_20f670(pc,d0.w)
	jsr (sub_203ba8).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f66e
	jmp (loc_207cf8).l
loc_20f66e:
	rts
dat_20f670:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20fa9e(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20f820,$4(a0)
	move.l #$20fa5e,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20f6e4
	addq.b #$2,d0
loc_20f6e4:
	tst.b ($ff152e).l
	bne.s loc_20f6ee
	addq.b #$1,d0
loc_20f6ee:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20f70e
	tst.b ($ff152e).l
	bne.s loc_20f70e
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20f70e:
	tst.b ($ff156a).l
	bne.s loc_20f776
	tst.b ($ff152e).l
	bne.s loc_20f776
	bsr.w sub_20f7f2
	tst.b $21(a0)
	beq.s loc_20f762
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20acd8).l
	lea ($d000).w,a1
	jsr (sub_2092e0).l
	beq.s loc_20f760
	jsr (sub_209192).l
loc_20f760:
	rts
loc_20f762:
	lea ($d000).w,a1
	jsr (sub_2092e0).l
	lea dat_20f818(pc),a1
	jmp (sub_205db2).l
loc_20f776:
	rts
	.incbin 63352, 122

sub_20f7f2:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20f808
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20f808:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20f816
	neg.w $32(a0)
loc_20f816:
	rts
dat_20f818:
	.incbin 63512, 646
dat_20fa9e:
	.incbin 64158, 22

sub_20fab4:
	jmp (loc_206626).l
dat_20faba:
	.incbin 64186, 16
dat_20faca:
	.incbin 64202, 610
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
	.incbin 227668, 17556
dat_23bde8:
	.incbin 245224, 768
dat_23c0e8:
	.incbin 245992, 16152
