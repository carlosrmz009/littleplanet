; R71D__.MMD
; disassembled from the disc; code only, data comes from data/R71D__.MMD at build time
	.file "R71D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$88
	jmp (loc_201bfe).l
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
	bsr.w sub_202134
	bsr.w sub_2020dc
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201478

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200240).l,a1
	lea (dat_20024e).l,a2
	bsr.w sub_2001f6
	lea (dat_200256).l,a1
	lea (dat_20025e).l,a2
	bsr.w sub_2001f6
	lea (dat_20026a).l,a1
	lea (dat_200272).l,a2
	bsr.w sub_2001f6
	lea (dat_20027e).l,a1
	lea (dat_200286).l,a2
	bsr.w sub_2001f6
	lea (dat_2002a0).l,a1
	lea (dat_2002b2).l,a2
	bsr.w sub_2001f6
	lea (dat_2002c2).l,a1
	tst.b ($ff1507).l
	bne.s loc_2001f0
	lea (dat_2002e4).l,a1
loc_2001f0:
	lea (dat_2002d4).l,a2

sub_2001f6:
	subq.b #$1,(a5)
	bpl.s loc_200236
	moveq #$0,d0
	moveq #$0,d1
	move.b (a1)+,d0
	move.b (a1)+,d1
	add.w d0,d0
	lea ($fb00).w,a3
	lea $0(a3,d0.w),a3
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b d1,d0
	bcs.s loc_200218
	moveq #$0,d0
loc_200218:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
	add.w d1,d1
	add.w d0,d1
	move.w $0(a2,d1.w),-$80(a3)
loc_200236:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200240:
	dc.b $27,$06,$05,$00,$23,$01,$05,$00
	dc.b $05,$01,$0a,$00,$64,$01
dat_20024e:
	dc.b $04,$8e,$00,$00,$04,$8e,$00,$00
dat_200256:
	dc.b $2d,$03,$04,$00,$04,$01,$04,$02
dat_20025e:
	dc.b $08,$8c,$04,$4c,$00,$06,$08,$8c
	dc.b $04,$4c,$00,$06
dat_20026a:
	dc.b $2e,$03,$04,$00,$04,$01,$04,$02
dat_200272:
	dc.b $04,$4c,$00,$06,$08,$8c,$04,$4c
	dc.b $00,$06,$08,$8c
dat_20027e:
	dc.b $2f,$03,$04,$00,$04,$01,$04,$02
dat_200286:
	.incbin 646, 26
dat_2002a0:
	.incbin 672, 18
dat_2002b2:
	.incbin 690, 16
dat_2002c2:
	.incbin 706, 18
dat_2002d4:
	.incbin 724, 16
dat_2002e4:
	.incbin 740, 18

sub_2002f6:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200308:
	move.w d1,(a0)+
	dbf d0,loc_200308
	move.w #$15,d4
loc_200312:
	move.b #$12,($f62a).w
	bsr.w sub_2007bc
	bsr.s sub_200328
	bsr.w sub_2024fa
	dbf d4,loc_200312
	rts

sub_200328:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20033e:
	bsr.s sub_20036c
	dbf d0,loc_20033e
	cmpi.b #$1,($ff1506).l
	bne.s loc_20036a
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200364:
	bsr.s sub_20036c
	dbf d0,loc_200364
loc_20036a:
	rts

sub_20036c:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200394
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_200382
	move.w d1,(a0)+
	rts
loc_200382:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200390
	move.w d1,(a0)+
	rts
loc_200390:
	addq.w #$2,(a0)+
	rts
loc_200394:
	addq.w #$2,a0
	rts

sub_200398:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003a2:
	move.b #$12,($f62a).w
	bsr.w sub_2007bc
	bsr.s sub_2003b8
	bsr.w sub_2024fa
	dbf d4,loc_2003a2
	rts

sub_2003b8:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003c8:
	bsr.s sub_2003e6
	dbf d0,loc_2003c8
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003de:
	bsr.s sub_2003e6
	dbf d0,loc_2003de
	rts

sub_2003e6:
	move.w (a0),d2
	beq.s loc_200412
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003f6
	subq.w #$2,(a0)+
	rts
loc_2003f6:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200404
	subi.w #$20,(a0)+
	rts
loc_200404:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200412
	subi.w #$200,(a0)+
	rts
loc_200412:
	addq.w #$2,a0
	rts

sub_200416:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200430:
	move.w d1,(a0)+
	dbf d0,loc_200430
	move.w #$15,d4
loc_20043a:
	move.b #$12,($f62a).w
	bsr.w sub_2007bc
	bsr.s sub_200450
	bsr.w sub_2024fa
	dbf d4,loc_20043a
	rts

sub_200450:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200466:
	bsr.s sub_200494
	dbf d0,loc_200466
	cmpi.b #$1,($ff1506).l
	bne.s loc_200492
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20048c:
	bsr.s sub_200494
	dbf d0,loc_20048c
loc_200492:
	rts

sub_200494:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004c0
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004ac
	cmp.w d2,d1
	bcs.s loc_2004ac
	move.w d1,(a0)+
	rts
loc_2004ac:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004bc
	cmp.w d2,d1
	bcs.s loc_2004bc
	move.w d1,(a0)+
	rts
loc_2004bc:
	subq.w #$2,(a0)+
	rts
loc_2004c0:
	addq.w #$2,a0
	rts

sub_2004c4:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004ce:
	move.b #$12,($f62a).w
	bsr.w sub_2007bc
	bsr.s sub_2004e4
	bsr.w sub_2024fa
	dbf d4,loc_2004ce
	rts

sub_2004e4:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004f4:
	bsr.s sub_200512
	dbf d0,loc_2004f4
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20050a:
	bsr.s sub_200512
	dbf d0,loc_20050a
	rts

sub_200512:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20054e
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20052a
	addq.w #$2,(a0)+
	rts
loc_20052a:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20053c
	addi.w #$20,(a0)+
	rts
loc_20053c:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20054e
	addi.w #$200,(a0)+
	rts
loc_20054e:
	addq.w #$2,a0
	rts

sub_200552:
	lea (dat_2005be).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200566:
	move.l (a2)+,(a3)+
	dbf d7,loc_200566
	rts

sub_20056e:
	lea (dat_2005be).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20057e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20057e
	rts
	.incbin 1414, 56
dat_2005be:
	.incbin 1470, 510

sub_2007bc:
	move.w #$2300,sr
loc_2007c0:
	tst.b ($f62a).w
	bne.s loc_2007c0
	rts

sub_2007c8:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007e0(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007e0(pc,d0.w),d0
	rts
dat_2007e0:
	.incbin 2016, 640

sub_200a60:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200abc
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a7a
	neg.w d3
loc_200a7a:
	tst.w d4
	bpl.w loc_200a82
	neg.w d4
loc_200a82:
	cmp.w d3,d4
	bcc.w loc_200a94
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200ac6(pc,d4.w),d0
	bra.s loc_200a9e
loc_200a94:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200ac6(pc,d3.w),d0
loc_200a9e:
	tst.w d1
	bpl.w loc_200aaa
	neg.w d0
	addi.w #$80,d0
loc_200aaa:
	tst.w d2
	bpl.w loc_200ab6
	neg.w d0
	addi.w #$100,d0
loc_200ab6:
	movem.l (a7)+,d3-d4
	rts
loc_200abc:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200ac6:
	.incbin 2758, 258

sub_200bc8:
	btst.b #$3,$22(a0)
	beq.s loc_200bdc
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200bdc:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200bfe
	move.b $26(a0),d0
	bpl.s loc_200bf8
	subq.b #$1,d0
loc_200bf8:
	addi.b #$20,d0
	bra.s loc_200c0a
loc_200bfe:
	move.b $26(a0),d0
	bpl.s loc_200c06
	addq.b #$1,d0
loc_200c06:
	addi.b #$1f,d0
loc_200c0a:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e94
	cmpi.b #$80,d0
	beq.w loc_200df2
	cmpi.b #$c0,d0
	beq.w loc_200d56
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
	bsr.w sub_20111e
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
	bsr.w sub_20111e
	move.w (a7)+,d0
	bsr.w sub_200d2a
	tst.w d1
	beq.s loc_200c98
	bpl.s loc_200c9a
	cmpi.w #$fff2,d1
	blt.s loc_200cc0
	add.w d1,$c(a0)
loc_200c98:
	rts
loc_200c9a:
	cmpi.w #$e,d1
	bgt.s loc_200ca6
loc_200ca0:
	add.w d1,$c(a0)
	rts
loc_200ca6:
	tst.b $38(a0)
	bne.s loc_200ca0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cc0:
	rts
	.incbin 3266, 34
loc_200ce4:
	rts
	.incbin 3302, 68

sub_200d2a:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d38
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d38:
	btst.l #$0,d2
	bne.s loc_200d44
	move.b d2,$26(a0)
	rts
loc_200d44:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d56:
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
	bsr.w sub_20128e
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
	bsr.w sub_20128e
	move.w (a7)+,d0
	bsr.w sub_200d2a
	tst.w d1
	beq.s loc_200dca
	bpl.s loc_200dcc
	cmpi.w #$fff2,d1
	blt.w loc_200ce4
	add.w d1,$8(a0)
loc_200dca:
	rts
loc_200dcc:
	cmpi.w #$e,d1
	bgt.s loc_200dd8
loc_200dd2:
	add.w d1,$8(a0)
	rts
loc_200dd8:
	tst.b $38(a0)
	bne.s loc_200dd2
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200df2:
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
	bsr.w sub_20111e
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
	bsr.w sub_20111e
	move.w (a7)+,d0
	bsr.w sub_200d2a
	tst.w d1
	beq.s loc_200e6c
	bpl.s loc_200e6e
	cmpi.w #$fff2,d1
	blt.w loc_200cc0
	sub.w d1,$c(a0)
loc_200e6c:
	rts
loc_200e6e:
	cmpi.w #$e,d1
	bgt.s loc_200e7a
loc_200e74:
	sub.w d1,$c(a0)
	rts
loc_200e7a:
	tst.b $38(a0)
	bne.s loc_200e74
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e94:
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
	bsr.w sub_20128e
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
	bsr.w sub_20128e
	move.w (a7)+,d0
	bsr.w sub_200d2a
	tst.w d1
	beq.s loc_200f0e
	bpl.s loc_200f10
	cmpi.w #$fff2,d1
	blt.w loc_200ce4
	sub.w d1,$8(a0)
loc_200f0e:
	rts
loc_200f10:
	cmpi.w #$e,d1
	bgt.s loc_200f1c
loc_200f16:
	sub.w d1,$8(a0)
	rts
loc_200f1c:
	tst.b $38(a0)
	bne.s loc_200f16
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f36:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f4c
	andi.w #$380,d0
loc_200f4c:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fac
	bmi.s loc_200fb0
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f7c
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f82
loc_200f7c:
	andi.w #$7fff,$2(a0)
loc_200f82:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f92
	bclr.b #$6,$1(a0)
loc_200f92:
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
loc_200fac:
	movea.l d1,a1
	rts
loc_200fb0:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201018
	btst.b #$6,$1(a0)
	bne.s loc_200fde
	cmpi.b #$14,d1
	bne.w loc_201102
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201102
loc_200fde:
	cmpi.b #$15,d1
	bne.s loc_200fec
	move.w #$60,d1
	bra.w loc_201102
loc_200fec:
	cmpi.b #$1e,d1
	bne.s loc_200ffa
	move.w #$61,d1
	bra.w loc_201102
loc_200ffa:
	cmpi.b #$1f,d1
	bne.s loc_201008
	move.w #$62,d1
	bra.w loc_201102
loc_201008:
	cmpi.b #$32,d1
	bne.w loc_201102
	move.w #$63,d1
	bra.w loc_201102
loc_201018:
	cmpi.b #$5,($ff1506).l
	bne.w loc_20107e
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201068
	cmpi.b #$6,d1
	beq.s loc_201068
	tst.b ($ff1956).l
	beq.w loc_201102
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201078
	cmpi.b #$3c,d1
	beq.s loc_201078
	cmpi.b #$37,d1
	beq.s loc_201078
	cmpi.b #$2f,d1
	beq.s loc_201078
	cmpi.b #$16,d1
	beq.s loc_201078
	bra.w loc_201102
loc_201068:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201102
loc_201078:
	addq.b #$1,d1
	bra.w loc_201102
loc_20107e:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010ee
	cmpi.b #$3,$0(a0)
	bcc.w loc_201102
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201102
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010b2
	move.w #$6a,d1
	bra.s loc_201102
loc_2010b2:
	cmpi.b #$48,d1
	bne.s loc_2010be
	move.w #$6b,d1
	bra.s loc_201102
loc_2010be:
	cmpi.b #$4a,d1
	bne.s loc_2010ca
	move.w #$6c,d1
	bra.s loc_201102
loc_2010ca:
	cmpi.b #$10,d1
	bne.s loc_2010d6
	move.w #$6d,d1
	bra.s loc_201102
loc_2010d6:
	cmpi.b #$63,d1
	bne.s loc_2010e2
	move.w #$6e,d1
	bra.s loc_201102
loc_2010e2:
	cmpi.b #$43,d1
	bne.s loc_201102
	move.w #$6f,d1
	bra.s loc_201102
loc_2010ee:
	btst.b #$6,$1(a0)
	beq.s loc_201102
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201102
	move.w #$51,d1
loc_201102:
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

sub_20111e:
	bsr.w sub_200f36
	cmpi.l #$210000,d1
	beq.s loc_201138
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201138
	btst.l d5,d4
	bne.s loc_201146
loc_201138:
	add.w a3,d2
	bsr.w sub_2011de
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201146:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201138
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20116c
	not.w d1
	neg.b (a4)
loc_20116c:
	btst.l #$c,d4
	beq.s loc_20117c
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20117c:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201198
	neg.w d0
loc_201198:
	tst.w d0
	beq.s loc_201138
	bmi.s loc_2011b4
	cmpi.b #$10,d0
	beq.s loc_2011d0
loc_2011a4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011b4:
	cmpa.w #$10,a3
	bne.s loc_2011c4
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011a4
loc_2011c4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201138
loc_2011d0:
	sub.w a3,d2
	bsr.w sub_2011de
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011de:
	bsr.w sub_200f36
	cmpi.l #$210000,d1
	beq.s loc_2011f8
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011f8
	btst.l d5,d4
	bne.s loc_201206
loc_2011f8:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201206:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011f8
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20122c
	not.w d1
	neg.b (a4)
loc_20122c:
	btst.l #$c,d4
	beq.s loc_20123c
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20123c:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201258
	neg.w d0
loc_201258:
	tst.w d0
	beq.s loc_2011f8
	bmi.s loc_20126e
loc_20125e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20126e:
	cmpa.w #$10,a3
	bne.s loc_20127e
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20125e
loc_20127e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011f8
	not.w d1
	rts

sub_20128e:
	bsr.w sub_200f36
	cmpi.l #$210000,d1
	beq.s loc_2012a8
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012a8
	btst.l d5,d4
	bne.s loc_2012b6
loc_2012a8:
	add.w a3,d3
	bsr.w sub_20133e
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012b6:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012a8
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012e4
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012e4:
	btst.l #$b,d4
	beq.s loc_2012ec
	neg.b (a4)
loc_2012ec:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201308
	neg.w d0
loc_201308:
	tst.w d0
	beq.s loc_2012a8
	bmi.s loc_201324
	cmpi.b #$10,d0
	beq.s loc_201330
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201324:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012a8
loc_201330:
	sub.w a3,d3
	bsr.w sub_20133e
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_20133e:
	bsr.w sub_200f36
	cmpi.l #$210000,d1
	beq.s loc_201358
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201358
	btst.l d5,d4
	bne.s loc_201366
loc_201358:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201366:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201358
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201394
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201394:
	btst.l #$b,d4
	beq.s loc_20139c
	neg.b (a4)
loc_20139c:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013b8
	neg.w d0
loc_2013b8:
	tst.w d0
	beq.s loc_201358
	bmi.s loc_2013ce
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013ce:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201358
	not.w d1
	rts

sub_2013de:
	rts
	.incbin 5088, 152
loc_201478:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201498
	tst.b ($ff0f01).l
	bne.s loc_201498
	move.b #$1,($ff156a).l
loc_201498:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014fe
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2076e0
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014fe
	move.b #$1,($ff1508).l
loc_2014fe:
	bset.b #$7,($f600).w
	bsr.w sub_2024ec
	tst.b ($ff156e).l
	bne.s loc_201524
	btst.b #$7,($ff152e).l
	beq.s loc_20155a
	bset.b #$0,($ff151d).l
	beq.s loc_201530
loc_201524:
	bsr.w sub_2004c4
	bclr.b #$0,($ff151d).l
loc_201530:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2015ca
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201558
	bclr.b #$7,($ff152e).l
loc_201558:
	rts
loc_20155a:
	bset.b #$0,($ff151d).l
	beq.s loc_201568
	bsr.w sub_200398
loc_201568:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201584
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015ac
loc_201584:
	tst.b ($ff1508).l
	bne.s loc_2015ca
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015ac:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015b4:
	move.l #$0,(a1)+
	dbf d6,loc_2015b4
	move.b #$c,($f62a).w
	bsr.w sub_2007bc
	rts
loc_2015ca:
	cmpi.w #$800,($f78e).w
	bne.s loc_2015e8
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2015e8:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015fe
	btst.b #$7,($ff152e).l
	beq.s loc_201604
loc_2015fe:
	move.l #$eee0eee,d0
loc_201604:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20160c:
	move.l d0,(a1)+
	dbf d6,loc_20160c
loc_201612:
	move.b #$c,($f62a).w
	bsr.w sub_2007bc
	bsr.w sub_2024fa
	bne.s loc_201612
	tst.l ($f680).w
	bsr.w sub_201ab8
	moveq #$0,d0
	lea (dat_20f8ea).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20163c
	bsr.w sub_202600
loc_20163c:
	moveq #$1,d0
	bsr.w sub_202600
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201658:
	move.l d0,(a1)+
	dbf d1,loc_201658
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20166a:
	move.l d0,(a1)+
	dbf d1,loc_20166a
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20167a:
	move.l d0,(a1)+
	dbf d1,loc_20167a
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
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
	bsr.w sub_2021d6
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
	bsr.w sub_20056e
	moveq #$3,d0
	bsr.w sub_200552
	bsr.w sub_202850
	bsr.w sub_20296a
	bset.b #$2,($f754).w
	bsr.w sub_2033e6
	bsr.w sub_2032dc
	jsr (sub_2013de).l
	bsr.w sub_2019f2
loc_20172c:
	move.b #$c,($f62a).w
	bsr.w sub_2007bc
	bsr.w sub_2024fa
	bne.s loc_20172c
	tst.l ($f680).w
	bne.s loc_20172c
	bsr.w sub_20197e
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b18
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
	jsr (sub_20f8e4).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201862
loc_20185c:
	bsr.w sub_200416
	bra.s loc_201870
loc_201862:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20185c
	bsr.w sub_2002f6
loc_201870:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20187e:
	move.b #$8,($f62a).w
	bsr.w sub_2007bc
	tst.b ($f7cc).w
	bne.s loc_20189c
	btst.b #$7,($f605).w
	beq.s loc_20189c
	eori.b #$1,($f63a).w
loc_20189c:
	btst.b #$0,($f63a).w
	beq.w loc_20190e
	bsr.w sub_201b7c
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018ec
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20187e
	subq.b #$1,($ff1508).l
	bpl.s loc_2018ce
	clr.b ($ff1508).l
loc_2018ce:
	move.w #$e,d0
	jsr (sub_205a96).l
	bsr.w sub_2076e0
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018fa
loc_2018ec:
	andi.b #$70,d0
	beq.w loc_20187e
	clr.b ($ff1508).l
loc_2018fa:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201478
loc_20190e:
	bsr.w sub_201bc2
	addq.w #$1,($ff1504).l
	jsr (sub_2076f6).l
	jsr (sub_2037ec).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201478
	tst.w ($ff1502).l
	bne.w loc_201478
	tst.w ($ff1906).l
	bne.s loc_201956
	cmpi.b #$6,($d024).w
	bcs.s loc_201956
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_20195a
loc_201956:
	bsr.w sub_20296a
loc_20195a:
	jsr (sub_203996).l
	tst.w ($ff190e).l
	bne.s loc_20196c
	bsr.w sub_200184
loc_20196c:
	jsr (sub_20ce4c).l
	bsr.w sub_2024fa
	bsr.w sub_201a24
	bra.w loc_20187e

sub_20197e:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201996
	move.w #$78,$30(a1)
loc_201996:
	rts
	.incbin 6552, 90

sub_2019f2:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a04(pc,d0.w),($f796).w
	rts
dat_201a04:
	.incbin 6660, 32

sub_201a24:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a42
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a42:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a60
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a60:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a88
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a88
	move.b #$0,($ff1915).l
loc_201a88:
	tst.b ($ff1916).l
	beq.s loc_201ab6
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201ab6:
	rts

sub_201ab8:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201ada
	cmpi.b #$2,d0
	bne.s loc_201ada
	add.b ($ff156a).l,d0
loc_201ada:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201af2(pc,d1.w),d0
	jmp (sub_205a96).l
dat_201af2:
	.incbin 6898, 38

sub_201b18:
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

sub_201b7c:
	move.w #$ab,d0
	jsr (sub_2022c4).l
	bset.b #$7,($f63a).w
	bne.s loc_201bc0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ba6
loc_201b9c:
	move.w #$d5,d0
	jmp (sub_205a96).l
loc_201ba6:
	tst.b ($ff151f).l
	bne.s loc_201b9c
	tst.b ($ff1520).l
	bne.s loc_201b9c
	move.w #$90,d0
	jmp (sub_205a96).l
loc_201bc0:
	rts

sub_201bc2:
	bclr.b #$7,($f63a).w
	beq.s loc_201bfc
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201be2
loc_201bd8:
	move.w #$d6,d0
	jmp (sub_205a96).l
loc_201be2:
	tst.b ($ff151f).l
	bne.s loc_201bd8
	tst.b ($ff1520).l
	bne.s loc_201bd8
	move.w #$91,d0
	jmp (sub_205a96).l
loc_201bfc:
	rts
loc_201bfe:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c8a
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c3a
	move.w #$700,d0
loc_201c36:
	dbf d0,loc_201c36
loc_201c3a:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c70(pc,d0.w),d0
	jsr dat_201c70(pc,d0.w)
loc_201c50:
	jsr (sub_2022e8).l
	tst.b ($f63a).w
	bne.s loc_201c64
	bsr.w sub_20209c
	bsr.w sub_20208a
loc_201c64:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c70:
	.incbin 7280, 26
loc_201c8a:
	tst.b ($ff1957).l
	beq.w loc_201c50
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c50
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cb8
	move.w #$700,d0
loc_201cb4:
	dbf d0,loc_201cb4
loc_201cb8:
	move.w #$1,($f6fc).w
	jsr (sub_20225c).l
	tst.b ($f64e).w
	bne.s loc_201cf0
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d14
loc_201cf0:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d14:
	move.w ($f624).w,(a5)
	jsr (sub_202278).l
	bra.w loc_201c50
	.incbin 7458, 60
	jsr (sub_20225c).l
	bsr.w sub_2020f8
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
	bsr.w sub_2059b8
	tst.b ($f767).w
	beq.s loc_201e0c
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e0c:
	jsr (sub_20f8e4).l
	jsr (sub_202278).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202ed2
	bsr.w sub_20256c
	jmp (loc_20a94c).l
	dc.b $4e,$75
	jsr (sub_20225c).l
	bsr.w sub_2020f8
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
	jsr (sub_202278).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202ed2
	bra.w loc_202550
	.incbin 7908, 16
	bsr.w sub_201fe0
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f16
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f16:
	move.w ($f624).w,(a5)
	bra.w loc_202550
	dc.b $4e,$b9,$00,$20,$22,$5c,$61,$00
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
	jsr (sub_202278).l
	lea ($d000).w,a0
	bsr.w sub_2059b8
	tst.b ($f767).w
	beq.s loc_201fd2
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201fd2:
	tst.w ($f614).w
	beq.w loc_201fde
	subq.w #$1,($f614).w
loc_201fde:
	rts

sub_201fe0:
	jsr (sub_20225c).l
	bsr.w sub_2020f8
	tst.b ($f64e).w
	bne.s loc_202016
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20203a
loc_202016:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20203a:
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
	jmp (sub_202278).l
	dc.b $4e,$73

sub_20208a:
	tst.b ($d02a).w
	bne.s loc_20209a
	tst.w ($f786).w
	beq.s loc_20209a
	addq.w #$1,($f786).w
loc_20209a:
	rts

sub_20209c:
	tst.w ($f780).w
	beq.s loc_2020a6
	addq.w #$1,($f780).w
loc_2020a6:
	tst.w ($f782).w
	beq.s loc_2020b0
	addq.w #$1,($f782).w
loc_2020b0:
	rts
	.incbin 8370, 42

sub_2020dc:
	bsr.w sub_20225c
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202278

sub_2020f8:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202106
	addq.w #$2,a1

sub_202106:
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

sub_202134:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021b0).l,a2
	moveq #$12,d7
loc_202148:
	move.w (a2)+,(a0)
	dbf d7,loc_202148
	move.w (dat_2021b2).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_20216e:
	move.w d0,(a1)
	dbf d7,loc_20216e
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021a0:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021a0
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021b0:
	dc.b $80,$04
dat_2021b2:
	.incbin 8626, 36

sub_2021d6:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021f8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021f8
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202226:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202226
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202244:
	move.l d0,(a1)+
	dbf d1,loc_202244
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202254:
	move.l d0,(a1)+
	dbf d1,loc_202254
	rts

sub_20225c:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20226c:
	btst.b #$0,($a11100).l
	bne.s loc_20226c
	rts

sub_202278:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8838, 62

sub_2022c4:
	tst.b ($f00a).w
	bne.s loc_2022d0
	move.b d0,($f00a).w
	rts
loc_2022d0:
	tst.b ($f00b).w
	bne.s loc_2022dc
	move.b d0,($f00b).w
	rts
loc_2022dc:
	tst.b ($f00c).w
	bne.s loc_2022e6
	move.b d0,($f00c).w
loc_2022e6:
	rts

sub_2022e8:
	jsr (sub_20225c).l
	tst.b ($f00a).w
	beq.s loc_202302
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202302:
	tst.b ($f00b).w
	beq.s loc_202316
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202316:
	tst.b ($f00c).w
	beq.s loc_20232a
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20232a:
	bra.w sub_202278
	.incbin 9006, 32

sub_20234e:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202410).l,a3
	lea ($c00000).l,a4
	bra.s loc_20236a

sub_202360:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202426).l,a3
loc_20236a:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202378
	adda.w #$a,a3
loc_202378:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_20243c
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202398
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202398:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2023e4
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023c0
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023c0:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2023ce:
	lsr.w #$4,d0
loc_2023d0:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2023de
	jmp (a3)

sub_2023da:
	moveq #$0,d4
	moveq #$8,d3
loc_2023de:
	dbf d0,loc_2023d0
	bra.s sub_202398
loc_2023e4:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2023f2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023f2:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2023ce
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2023ce
loc_202410:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023da
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023da
	rts
dat_202426:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2023da
	rts

sub_20243c:
	move.b (a0)+,d0
loc_20243e:
	cmpi.b #$ff,d0
	bne.s loc_202446
	rts
loc_202446:
	move.w d0,d7
loc_202448:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_20243e
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
	bne.s loc_202476
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202448
loc_202476:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202482:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202482
	bra.s loc_202448

sub_20248e:
	movem.l a1-a2,-(a7)
	lea (dat_20f8fa).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024a6:
	tst.l (a2)
	beq.s loc_2024ae
	addq.w #$6,a2
	bra.s loc_2024a6
loc_2024ae:
	move.w (a1)+,d0
	bmi.s loc_2024ba
loc_2024b2:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024b2
loc_2024ba:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9408, 44

sub_2024ec:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2024f2:
	clr.l (a2)+
	dbf d0,loc_2024f2
	rts

sub_2024fa:
	tst.l ($f680).w
	beq.s loc_20254e
	tst.w ($f6f8).w
	bne.s loc_20254e
	movea.l ($f680).w,a0
	lea (loc_202410).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20251c
	adda.w #$a,a3
loc_20251c:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_20243c
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
loc_20254e:
	rts
loc_202550:
	tst.w ($f6f8).w
	beq.w loc_2025ee
loc_202558:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20258a

sub_20256c:
	tst.w ($f6f8).w
	beq.s loc_2025ee
	tst.b ($f744).w
	bne.s loc_202558
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20258a:
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
loc_2025be:
	movea.w #$8,a5
	bsr.w sub_2023da
	subq.w #$1,($f6f8).w
	beq.s loc_2025f0
	subq.w #$1,($f6fa).w
	bne.s loc_2025be
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2025ee:
	rts
loc_2025f0:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2025f6:
	move.l $6(a0),(a0)+
	dbf d0,loc_2025f6
	rts

sub_202600:
	lea (dat_20f8fa).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202612:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_20234e
	dbf d1,loc_202612
	rts
	.incbin 9778, 542

sub_202850:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028ac).l,a0
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
	bra.w loc_2028b8
dat_2028ac:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_2028b8:
	tst.b ($ff1522).l
	beq.s loc_2028d8
	jsr (sub_2067c8).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028d6
	moveq #$0,d0
loc_2028d6:
	bra.s loc_2028ee
loc_2028d8:
	lea (dat_20292a).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028ee:
	subi.w #$a0,d1
	bcc.s loc_2028f6
	moveq #$0,d1
loc_2028f6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202900
	move.w d2,d1
loc_202900:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20290c
	moveq #$0,d0
loc_20290c:
	cmp.w ($f72e).w,d0
	blt.s loc_202916
	move.w ($f72e).w,d0
loc_202916:
	move.w d0,($f704).w
	bsr.w sub_202932
	lea (dat_20292e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20292a:
	dc.b $00,$40,$01,$8c
dat_20292e:
	dc.b $84,$86,$7f,$7f

sub_202932:
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	lsr.w #$1,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.l d1,d2
	lsr.l #$1,d2
	add.l d1,d2
	move.w d2,($f718).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_20296a:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202976
	rts
loc_202976:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b48
	bsr.w sub_202be8
	bsr.w sub_203480
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	asr.l #$1,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202e72
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e3e
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e0a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	move.w d0,d1
	lsr.w #$1,d1
	add.w d1,d0
	bsr.w sub_202dda
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
	bsr.w sub_202a86
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a26:
	move.w d0,(a1)+
	dbf d6,loc_202a26
	bsr.w sub_202aca
	move.w ($f718).w,d0
	neg.w d0
	moveq #$f,d6
loc_202a38:
	move.w d0,(a1)+
	dbf d6,loc_202a38
	move.w ($f710).w,d0
	neg.w d0
	moveq #$11,d6
loc_202a46:
	move.w d0,(a1)+
	dbf d6,loc_202a46
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b06
dat_202a6a:
	.incbin 10858, 16
dat_202a7a:
	dc.b $01,$01,$01,$01,$01,$00,$00,$00
	dc.b $00,$00,$00,$00

sub_202a86:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$10,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$f,d6
	adda.w #$4c,a1
loc_202aaa:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a6a(pc,d6.w),d5
loc_202ab4:
	move.w d0,-(a1)
	dbf d5,loc_202ab4
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202aaa
	adda.w #$4c,a1
	rts

sub_202aca:
	move.w ($f708).w,d0
	move.w ($f718).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w #$b,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$a,d6
loc_202aea:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a7a(pc,d6.w),d5
loc_202af4:
	move.w d0,(a1)+
	dbf d5,loc_202af4
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202aea
	rts
loc_202b06:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b14(pc,d2.w)
loc_202b12:
	move.w (a2)+,d0
loc_202b14:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b12
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
	dbf d1,loc_202b12
	rts

sub_202b48:
	move.w ($f700).w,d4
	bsr.s sub_202b7c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b7a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b74
	bset.b #$2,($f754).w
	rts
loc_202b74:
	bset.b #$3,($f754).w
loc_202b7a:
	rts

sub_202b7c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b8e
	bcs.s loc_202bbe
	bra.s loc_202b94
loc_202b8e:
	clr.w ($f73a).w
	rts
loc_202b94:
	cmpi.w #$10,d0
	blt.s loc_202b9e
	move.w #$10,d0
loc_202b9e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bac
	move.w ($f72a).w,d0
loc_202bac:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bbe:
	cmpi.w #$fff0,d0
	bge.s loc_202bc8
	move.w #$fff0,d0
loc_202bc8:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bac
	move.w ($f728).w,d0
	bra.s loc_202bac
	.incbin 11224, 16

sub_202be8:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202bfc
	subq.w #$5,d0
loc_202bfc:
	btst.b #$1,$22(a6)
	beq.s loc_202c1c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c68
	subi.w #$40,d0
	bcc.s loc_202c68
	tst.b ($f75c).w
	bne.s loc_202c7a
	bra.s loc_202c28
loc_202c1c:
	sub.w ($f73e).w,d0
	bne.s loc_202c2e
	tst.b ($f75c).w
	bne.s loc_202c7a
loc_202c28:
	clr.w ($f73c).w
	rts
loc_202c2e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c56
	move.w $14(a6),d1
	bpl.s loc_202c3e
	neg.w d1
loc_202c3e:
	cmpi.w #$800,d1
	bcc.s loc_202c68
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202cc8
	cmpi.w #$fffa,d0
	blt.s loc_202c92
	bra.s loc_202c80
loc_202c56:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202cc8
	cmpi.w #$fffe,d0
	blt.s loc_202c92
	bra.s loc_202c80
loc_202c68:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202cc8
	cmpi.w #$fff0,d0
	blt.s loc_202c92
	bra.s loc_202c80
loc_202c7a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c80:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202cd2
	bra.w loc_202c9e
loc_202c92:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c9e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202cf6
	cmpi.w #$ff00,d1
	bgt.s loc_202cc2
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cf6
loc_202cc2:
	move.w ($f72c).w,d1
	bra.s loc_202cf6
loc_202cc8:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cd2:
	cmp.w ($f72e).w,d1
	blt.s loc_202cf6
	subi.w #$800,d1
	bcs.s loc_202cf2
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cf6
loc_202cf2:
	move.w ($f72e).w,d1
loc_202cf6:
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
	bne.s loc_202d38
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d32
	bset.b #$0,($f754).w
	rts
loc_202d32:
	bset.b #$1,($f754).w
loc_202d38:
	rts
	.incbin 11578, 122
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dd8
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dd2
	bset.b #$4,($f756).w
	rts
loc_202dd2:
	bset.b #$5,($f756).w
loc_202dd8:
	rts

sub_202dda:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e08
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e02
	bset.b #$0,($f756).w
	rts
loc_202e02:
	bset.b #$1,($f756).w
loc_202e08:
	rts

sub_202e0a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e3c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e36
	bset.b d6,($f756).w
	bra.s loc_202e3c
loc_202e36:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e3c:
	rts

sub_202e3e:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e70
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e6a
	bset.b d6,($f758).w
	bra.s loc_202e70
loc_202e6a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e70:
	rts

sub_202e72:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ea4
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e9e
	bset.b d6,($f75a).w
	bra.s loc_202ea4
loc_202e9e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ea4:
	rts
	.incbin 11942, 20
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f90
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_203076

sub_202ed2:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f90
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203076
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203078
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f8e
	bclr.b #$0,(a2)
	beq.s loc_202f44
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032a4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20307a
loc_202f44:
	bclr.b #$1,(a2)
	beq.s loc_202f5e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032a4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20307a
loc_202f5e:
	bclr.b #$2,(a2)
	beq.s loc_202f74
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032a4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030d0
loc_202f74:
	bclr.b #$3,(a2)
	beq.s loc_202f8e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032a4
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030d0
loc_202f8e:
	rts

sub_202f90:
	lea (dat_20335c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fac
	bclr.b #$1,(a2)
	beq.s loc_202ff6
	move.w #$e0,d4
loc_202fac:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203026(pc,d0.w),a3
	beq.s loc_202fde
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032a4
	movem.l (a7)+,d4-d5
	bsr.w sub_20307a
	movea.l (a7)+,a0
	bra.s loc_202ff6
loc_202fde:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032a6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030a6
	movea.l (a7)+,a0
loc_202ff6:
	tst.b (a2)
	bne.s loc_202ffc
	rts
loc_202ffc:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203010
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203010:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203036
dat_203026:
	.incbin 12326, 16
loc_203036:
	moveq #$f,d6
	move.l #$800000,d7
loc_20303e:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20306a
	btst.b d0,(a2)
	beq.s loc_20306a
	add.w d0,d0
	movea.l dat_203026(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20317c
	movem.l (a7)+,d4-d5
	bsr.w sub_2032a4
	bsr.w sub_2030fe
	movem.l (a7)+,d4-d5/a0
loc_20306a:
	addi.w #$10,d4
	dbf d6,loc_20303e
	clr.b (a2)
	rts

sub_203076:
	rts

sub_203078:
	rts

sub_20307a:
	moveq #$15,d6

sub_20307c:
	move.l #$800000,d7
	move.l d0,d1
loc_203084:
	movem.l d4-d5,-(a7)
	bsr.w sub_20317c
	move.l d1,d0
	bsr.w sub_2030fe
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203084
	rts

sub_2030a6:
	move.l #$800000,d7
	move.l d0,d1
loc_2030ae:
	movem.l d4-d5,-(a7)
	bsr.w sub_20317e
	move.l d1,d0
	bsr.w sub_2030fe
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030ae
	rts

sub_2030d0:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030da:
	movem.l d4-d5,-(a7)
	bsr.w sub_20317c
	move.l d1,d0
	bsr.w sub_2030fe
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030da
	rts

sub_2030fe:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20313a
	btst.b #$3,(a0)
	bne.s loc_20311a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20311a:
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
loc_20313a:
	btst.b #$3,(a0)
	bne.s loc_20315c
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
loc_20315c:
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

sub_20317c:
	add.w (a3),d5

sub_20317e:
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
	beq.s loc_2031cc
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
loc_2031cc:
	rts
	.incbin 12750, 214

sub_2032a4:
	add.w (a3),d5

sub_2032a6:
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
	.incbin 12992, 28

sub_2032dc:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203306
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20332e

sub_203306:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20330a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032a4
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20307c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20330a
	rts
loc_20332e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203332:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20335c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033ae
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203332
	rts
dat_20335c:
	.incbin 13148, 66
dat_20339e:
	.incbin 13214, 16

sub_2033ae:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20339e(pc,d0.w),a3
	beq.s loc_2033d0
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032a4
	movem.l (a7)+,d4-d5
	bsr.w sub_20307a
	bra.s loc_2033e4
loc_2033d0:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032a6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030a6
loc_2033e4:
	rts

sub_2033e6:
	moveq #$0,d0
	lea (dat_20f8ea).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202360
	movea.l (a2)+,a0
	bsr.w sub_203432
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200552
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203430
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203430
	bsr.w sub_20248e
loc_203430:
	rts

sub_203432:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20343c:
	move.l d0,(a3)+
	dbf d1,loc_20343c
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203452
	lea ($a040).w,a3
	moveq #$2,d1

sub_203452:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2368a4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20346c:
	move.w d1,d0
	movea.l a3,a0
loc_203470:
	move.b (a1)+,(a0)+
	dbf d0,loc_203470
	lea $80(a3),a3
	dbf d2,loc_20346c
	rts

sub_203480:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2034fa(pc,d0.w),d0
	jsr dat_2034fa(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034a6
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034a6:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034d4
	bcc.s loc_2034d6
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034ca
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034ca:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034d4:
	rts
loc_2034d6:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034ee
	btst.b #$1,($d022).w
	beq.s loc_2034ee
	add.w d1,d1
	add.w d1,d1
loc_2034ee:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2034fa:
	.incbin 13562, 578
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20374e(pc,d0.w),d0
	jmp dat_20374e(pc,d0.w)
dat_20374e:
	dc.b $00,$06,$00,$0e,$00,$16
	move.w #$510,($f726).w
	rts
	move.w #$710,($f726).w
	rts
	.incbin 14180, 136

sub_2037ec:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2037f4:
	move.b (a0),d0
	beq.s loc_20380a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c0e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20380a:
	lea $40(a0),a0
	dbf d7,loc_2037f4
	rts

sub_203814:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203852
	bpl.s loc_203844
	btst.b #$1,$2c(a0)
	beq.s loc_203844
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203852
loc_203844:
	btst.b #$2,$2c(a0)
	bne.s loc_203852
	addi.w #$38,$12(a0)
loc_203852:
	tst.w $12(a0)
	bmi.s loc_203866
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203866
	move.w #$1000,$12(a0)
loc_203866:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203876:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038b2
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038b2
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038b0
	neg.w d1
loc_2038b0:
	add.w d1,d0
loc_2038b2:
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

sub_2038cc:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20393c
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203958
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203958
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203916
	cmpi.w #$800,d3
	bcs.s loc_203928
	subi.w #$800,d3
	bra.s loc_203928
loc_203916:
	cmpi.w #$700,($f704).w
	bcs.s loc_203928
	cmpi.w #$100,d3
	bcc.s loc_203928
	addi.w #$800,d3
loc_203928:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203958
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203958
loc_20393c:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203958
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203958:
	rts
	.incbin 14682, 30

sub_203978:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20397e:
	move.l d1,(a1)+
	dbf d0,loc_20397e
	rts
dat_203986:
	.incbin 14726, 16

sub_203996:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039a2:
	tst.w (a4)
	beq.w loc_203a62
	moveq #$2,d6
loc_2039aa:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a5a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a10
	movea.l dat_203986(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2039f4
	cmpi.w #$800,d2
	bcs.s loc_203a06
	subi.w #$800,d2
	bra.s loc_203a06
loc_2039f4:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a06
	cmpi.w #$100,d2
	bcc.s loc_203a06
	addi.w #$800,d2
loc_203a06:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a32
loc_203a10:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a32
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203a5a
	cmpi.w #$180,d2
	bcc.s loc_203a5a
loc_203a32:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a50
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a54
loc_203a50:
	bsr.w sub_203a84
loc_203a54:
	bset.b #$7,$1(a0)
loc_203a5a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039aa
loc_203a62:
	lea $80(a4),a4
	dbf d7,loc_2039a2
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a7c
	move.l #$0,(a2)
	rts
loc_203a7c:
	move.b #$0,-$5(a2)
	rts

sub_203a84:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203aca
	btst.l #$1,d4
	bne.w loc_203b18
loc_203a96:
	cmpi.b #$50,d5
	beq.s loc_203ac8
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
	bne.s loc_203ac2
	addq.w #$1,d0
loc_203ac2:
	move.w d0,(a2)+
	dbf d1,loc_203a96
loc_203ac8:
	rts
loc_203aca:
	btst.l #$1,d4
	bne.w loc_203b5e
loc_203ad2:
	cmpi.b #$50,d5
	beq.s loc_203b16
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
	bne.s loc_203b10
	addq.w #$1,d0
loc_203b10:
	move.w d0,(a2)+
	dbf d1,loc_203ad2
loc_203b16:
	rts
loc_203b18:
	cmpi.b #$50,d5
	beq.s loc_203b5c
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
	bne.s loc_203b56
	addq.w #$1,d0
loc_203b56:
	move.w d0,(a2)+
	dbf d1,loc_203b18
loc_203b5c:
	rts
loc_203b5e:
	cmpi.b #$50,d5
	beq.s loc_203bb0
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
	bne.s loc_203baa
	addq.w #$1,d0
loc_203baa:
	move.w d0,(a2)+
	dbf d1,loc_203b5e
loc_203bb0:
	rts
	.incbin 15282, 92
dat_203c0e:
	.incbin 15374, 246

sub_203d04:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d16
	move.w #$0,(a1)
	rts
loc_203d16:
	tst.w (a1)
	bne.s loc_203d20
	move.b #$1,$1(a1)
loc_203d20:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d6a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d5c
	neg.w $10(a0)
loc_203d5c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a96
loc_203d6a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d88
	cmpa.w #$d040,a0
	beq.s loc_203d88
	tst.b ($ff1906).l
	beq.s loc_203d88
	jmp (loc_2070fa).l
loc_203d88:
	move.b $2a(a0),d0
	beq.s loc_203db2
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203da4
	cmpi.b #$2d,d0
	bcs.s loc_203dae
	move.b #$2d,d0
	bra.s loc_203dae
loc_203da4:
	cmpi.b #$1e,d0
	bcs.s loc_203dae
	move.b #$1e,d0
loc_203dae:
	move.b d0,$2a(a0)
loc_203db2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203dc0(pc,d0.w),d1
	jmp dat_203dc0(pc,d1.w)
dat_203dc0:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203dca:
	tst.b ($d300).w
	bne.s loc_203e08
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e08:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e30
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e30:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e64:
	tst.b ($ff1506).l
	bne.s loc_203eca
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203eca
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203ece
	cmpi.b #$2f,d1
	bne.s loc_203ecc
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203eca
	tst.b $2c(a0)
	beq.s loc_203eca
	jsr (sub_2078f2).l
	bne.s loc_203eca
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203ec2
	moveq #$0,d0
loc_203ec2:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203eca:
	rts
loc_203ecc:
	rts

sub_203ece:
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

sub_203ef4:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f00
	neg.w d0
loc_203f00:
	btst.b #$1,$2c(a0)
	beq.s loc_203f10
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f38
loc_203f10:
	cmpi.w #$600,d0
	bcs.s loc_203f38
	tst.w $14(a0)
	bpl.s loc_203f2a
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f46
	move.w #$e0,d1
	bra.s loc_203f46
loc_203f2a:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f46
	move.w #$60,d1
	bra.s loc_203f46
loc_203f38:
	cmpi.w #$a0,d1
	beq.s loc_203f46
	bcc.s loc_203f44
	addq.w #$2,d1
	bra.s loc_203f46
loc_203f44:
	subq.w #$2,d1
loc_203f46:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203ef4
	bsr.w sub_203e64
	tst.w ($ff1588).l
	beq.s loc_203f6c
	btst.b #$4,($f605).w
	beq.s loc_203f6c
	move.b #$1,($ff1906).l
	rts
loc_203f6c:
	tst.b ($f7cc).w
	bne.s loc_203f78
	move.w ($f604).w,($f602).w
loc_203f78:
	btst.b #$0,$2c(a0)
	beq.s loc_203f9c
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f96
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203fb4
loc_203f96:
	bsr.w sub_20427e
	bra.s loc_203fb4
loc_203f9c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203ffa(pc,d0.w),d1
	jsr dat_203ffa(pc,d1.w)
	jsr (sub_20654e).l
loc_203fb4:
	bsr.s sub_204008
	bsr.w sub_2040c8
	bsr.w sub_2040e2
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203fdc
	tst.b $1c(a0)
	bne.s loc_203fdc
	move.b $1d(a0),$1c(a0)
loc_203fdc:
	bsr.w sub_205486
	tst.b $2c(a0)
	bmi.s loc_203ff4
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203ff4
	jsr (sub_206c98).l
loc_203ff4:
	bsr.w sub_20533c
	rts
dat_203ffa:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204008:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20402c
	move.w $30(a0),d0
	beq.s loc_20401e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20402c
loc_20401e:
	btst.b #$6,$2c(a0)
	bne.s loc_20402c
	jsr (sub_2038cc).l
loc_20402c:
	tst.b ($ff151f).l
	beq.s loc_204070
	tst.w $32(a0)
	beq.s loc_204070
	subq.w #$1,$32(a0)
	bne.s loc_204070
	tst.b ($ff1520).l
	bne.s loc_204068
	tst.b ($ff1958).l
	bne.s loc_204068
	tst.b ($ff152e).l
	bne.s loc_204062
	move.w #$e,d0
	jsr (sub_205a96).l
loc_204062:
	jsr (sub_201ab8).l
loc_204068:
	move.b #$0,($ff151f).l
loc_204070:
	tst.b ($ff1520).l
	beq.s loc_2040c6
	tst.w $34(a0)
	beq.s loc_2040c6
	subq.w #$1,$34(a0)
	bne.s loc_2040c6
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2040be
	tst.b ($ff1958).l
	bne.s loc_2040be
	tst.b ($ff152e).l
	bne.s loc_2040b8
	move.w #$e,d0
	jsr (sub_205a96).l
loc_2040b8:
	jsr (sub_201ab8).l
loc_2040be:
	move.b #$0,($ff1520).l
loc_2040c6:
	rts

sub_2040c8:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2040e2:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2040ee
loc_2040ec:
	rts
loc_2040ee:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204100
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2040ec
loc_204100:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204144
	bset.b #$6,$22(a0)
	bne.s loc_2040ec
	bsr.w sub_205d9a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2040ec
	bra.s loc_20417c
loc_204144:
	tst.w $12(a0)
	beq.s loc_20414c
	bpl.s loc_2040ec
loc_20414c:
	bclr.b #$6,$22(a0)
	beq.s loc_2040ec
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2040ec
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20417c
	move.w #$f000,$12(a0)
loc_20417c:
	jsr (sub_2078f2).l
	bne.s loc_204190
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204190:
	rts

sub_204192:
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
	bcs.s loc_20426c
	move.l #$50000,d0
loc_20426c:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20427e:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042a4
	tst.b ($ff152e).l
	beq.s loc_20429a
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042a4
loc_20429a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204354
loc_2042a4:
	tst.b $2a(a0)
	bne.w loc_204362
	tst.b ($f784).w
	beq.w loc_204362
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2042c2
	neg.w d0
loc_2042c2:
	tst.w ($f786).w
	bne.s loc_2042ce
	move.w #$1,($f786).w
loc_2042ce:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2042e4
	move.b #$1,($ff1502).l
	bra.w loc_205a92
loc_2042e4:
	cmpi.w #$d2,d1
	bcs.s loc_204338
	cmpi.b #$2,($ff1522).l
	beq.s loc_204336
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20430e
	move.w #$82,d0
	jsr (sub_205a96).l
	moveq #$0,d0
loc_20430e:
	add.b ($f784).w,d0
	bpl.s loc_204318
	moveq #$0,d0
	bra.s loc_204320
loc_204318:
	cmpi.b #$3,d0
	bcs.s loc_204320
	moveq #$2,d0
loc_204320:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204192
	move.b #$2,($ff1522).l
loc_204336:
	rts
loc_204338:
	cmpi.w #$5a,d1
	bcc.s loc_204350
	cmp.w d2,d0
	bcc.w loc_203dca
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204350:
	cmp.w d2,d0
	bcc.s loc_204362
loc_204354:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204362:
	rts
	bsr.w sub_203d04
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204394
	tst.b ($ff195b).l
	beq.s loc_204382
	cmpi.b #$79,$1a(a0)
	bne.s loc_2043be
	bra.s loc_20438a
loc_204382:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2043be
loc_20438a:
	bsr.w sub_204c26
	jmp (sub_203814).l
loc_204394:
	bsr.w sub_20446c
	bsr.w sub_20427e
	bsr.w sub_204d10
	bsr.w sub_204e3c
	bsr.w sub_2044e0
	bsr.w sub_204c92
	bsr.w sub_204c26
	jsr (sub_203876).l
	bsr.w sub_200bc8
	bsr.w sub_204eba
loc_2043be:
	rts
	tst.b ($f7c7).w
	bne.s loc_2043da
	cmpi.b #$15,$1c(a0)
	beq.s loc_2043da
	tst.w $12(a0)
	bmi.s loc_2043da
	move.b #$0,$1c(a0)
loc_2043da:
	bsr.w sub_20446c
	bsr.w sub_20427e
	bsr.w sub_204dfa
	bsr.w sub_204b46
	bsr.w sub_204c26
	jsr (sub_203814).l
	btst.b #$6,$22(a0)
	beq.s loc_204402
	subi.w #$28,$12(a0)
loc_204402:
	bsr.w sub_204f04
	bsr.w sub_204f28
	rts
	bsr.w sub_20446c
	bsr.w sub_20427e
	bsr.w sub_204d10
	bsr.w sub_204e78
	bsr.w sub_204980
	bsr.w sub_204c26
	tst.b $2a(a0)
	bne.s loc_204430
	jsr (sub_203876).l
loc_204430:
	bsr.w sub_200bc8
	bsr.w sub_204eba
	rts
	bsr.w sub_20446c
	bsr.w sub_20427e
	bsr.w sub_204dfa
	bsr.w sub_204b46
	bsr.w sub_204c26
	jsr (sub_203814).l
	btst.b #$6,$22(a0)
	beq.s loc_204462
	subi.w #$28,$12(a0)
loc_204462:
	bsr.w sub_204f04
	bsr.w sub_204f28
	rts

sub_20446c:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2044d8
	tst.w ($ff1506).l
	bne.s loc_2044d8
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2044da).l,a2
loc_2044a0:
	move.b (a2)+,d0
	bmi.s loc_2044b0
	cmp.b d0,d1
	bne.s loc_2044a0
	bset.b #$1,$2c(a0)
	rts
loc_2044b0:
	bclr.b #$1,$2c(a0)
	beq.s loc_2044d8
	tst.w $12(a0)
	bpl.s loc_2044d8
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2044d8
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044d8
	neg.w $10(a0)
loc_2044d8:
	rts
dat_2044da:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2044e0:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20480a
	tst.w $3e(a0)
	bne.w loc_2047ba
	btst.b #$2,($f602).w
	beq.s loc_204508
	bsr.w sub_20489a
loc_204508:
	btst.b #$3,($f602).w
	beq.s loc_204514
	bsr.w sub_204910
loc_204514:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2047ba
	tst.w $14(a0)
	beq.s loc_204534
	tst.b $2a(a0)
	beq.w loc_2047ba
	bra.s loc_204540
loc_204534:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204540:
	btst.b #$3,$22(a0)
	beq.s loc_204592
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2045ea
	cmpi.b #$1e,$0(a1)
	bne.s loc_204572
	move.b #$0,$1c(a0)
	bra.w loc_2047ba
loc_204572:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2045ce
	cmp.w d2,d1
	bge.s loc_2045bc
	bra.s loc_2045ea
loc_204592:
	jsr (sub_2069fc).l
	cmpi.w #$c,d1
	blt.s loc_2045ea
	move.w #$ab,d0
	jsr (sub_2022c4).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2045c6
loc_2045bc:
	btst.b #$0,$22(a0)
	bne.s loc_2045d6
	bra.s loc_2045e0
loc_2045c6:
	cmpi.b #$3,$37(a0)
	bne.s loc_2045ea
loc_2045ce:
	btst.b #$0,$22(a0)
	bne.s loc_2045e0
loc_2045d6:
	move.b #$32,$1c(a0)
	bra.w loc_2047ba
loc_2045e0:
	move.b #$6,$1c(a0)
	bra.w loc_2047ba
loc_2045ea:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2045fe
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2045fe:
	btst.b #$7,($f788).w
	bne.w loc_204702
	btst.b #$6,($f788).w
	bne.w loc_204722
	btst.b #$1,($f602).w
	bne.w loc_204722
	andi.b #$f,($f788).w
	beq.s loc_204636
	btst.b #$0,($f603).w
	beq.s loc_20464a
	bset.b #$7,($f788).w
	bra.w loc_2047de
loc_204636:
	btst.b #$0,($f603).w
	beq.w loc_20464a
	move.b #$1,($f788).w
	bra.w loc_2047de
loc_20464a:
	btst.b #$0,($f602).w
	beq.s loc_2046c6
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046a8
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20467a
	asr.w #$1,d2
	sub.w d2,d1
loc_20467a:
	btst.b #$0,$22(a0)
	beq.s loc_204686
	neg.w d0
	neg.w d1
loc_204686:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20469c
	cmp.w d0,d1
	ble.s loc_2046a2
	bra.s loc_2046a0
loc_20469c:
	cmp.w d1,d0
	ble.s loc_2046a2
loc_2046a0:
	move.w d1,d0
loc_2046a2:
	move.w d0,$14(a0)
	rts
loc_2046a8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046c2
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022c4).l
loc_2046c2:
	bra.w loc_2047de
loc_2046c6:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2046e6
	move.w #$ab,d0
	jsr (sub_2022c4).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204722
loc_2046e6:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c4).l
	bra.w loc_2047ba
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204702:
	btst.b #$0,($f602).w
	beq.s loc_204722
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2047de
	addq.w #$2,($f73e).w
	bra.w loc_2047de
loc_204722:
	btst.b #$6,($f788).w
	bne.w loc_20479e
	andi.b #$f,($f788).w
	beq.s loc_204746
	btst.b #$1,($f603).w
	beq.s loc_204758
	bset.b #$6,($f788).w
	bra.w loc_2047de
loc_204746:
	btst.b #$1,($f603).w
	beq.s loc_204758
	move.b #$1,($f788).w
	bra.w loc_2047de
loc_204758:
	btst.b #$1,($f602).w
	beq.s loc_2047ba
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20479c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20479c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20478e
	neg.w $14(a0)
loc_20478e:
	move.w #$9c,d0
	jsr (sub_2022c4).l
	bsr.w sub_204cba
loc_20479c:
	bra.s loc_2047de
loc_20479e:
	btst.b #$1,($f602).w
	beq.s loc_2047ba
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2047de
	subq.w #$2,($f73e).w
	bra.s loc_2047de
loc_2047ba:
	cmpi.w #$60,($f73e).w
	bne.s loc_2047d4
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2047de
	move.b #$0,($f788).w
	bra.s loc_2047de
loc_2047d4:
	bcc.s loc_2047da
	addq.w #$4,($f73e).w
loc_2047da:
	subq.w #$2,($f73e).w
loc_2047de:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20480a
	move.w $14(a0),d0
	beq.s loc_20480a
	bmi.s loc_2047fe
	sub.w d5,d0
	bcc.s loc_2047f8
	move.w #$0,d0
loc_2047f8:
	move.w d0,$14(a0)
	bra.s loc_20480a
loc_2047fe:
	add.w d5,d0
	bcc.s loc_204806
	move.w #$0,d0
loc_204806:
	move.w d0,$14(a0)
loc_20480a:
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204828:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204898
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204898
	bmi.s loc_204840
	neg.w d1
loc_204840:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2068bc
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204898
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204894
	cmpi.b #$40,d0
	beq.s loc_204882
	cmpi.b #$80,d0
	beq.s loc_20487c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20487c:
	sub.w d1,$12(a0)
	rts
loc_204882:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204894:
	add.w d1,$12(a0)
loc_204898:
	rts

sub_20489a:
	tst.b $2a(a0)
	bne.s loc_20490e
	move.w $14(a0),d0
	beq.s loc_2048a8
	bpl.s loc_2048d8
loc_2048a8:
	bset.b #$0,$22(a0)
	bne.s loc_2048bc
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048bc:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2048cc
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2048cc
	move.w d1,d0
loc_2048cc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048d8:
	sub.w d4,d0
	bcc.s loc_2048e0
	move.w #$ff80,d0
loc_2048e0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20490e
	cmpi.w #$400,d0
	blt.s loc_20490e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c4).l
loc_20490e:
	rts

sub_204910:
	tst.b $2a(a0)
	bne.s loc_20497e
	move.w $14(a0),d0
	bmi.s loc_204948
	bclr.b #$0,$22(a0)
	beq.s loc_204930
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204930:
	cmp.w d6,d0
	bge.s loc_20493c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20493c
	move.w d6,d0
loc_20493c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204948:
	add.w d4,d0
	bcc.s loc_204950
	move.w #$80,d0
loc_204950:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20497e
	cmpi.w #$fc00,d0
	bgt.s loc_20497e
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c4).l
loc_20497e:
	rts

sub_204980:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204aca
	tst.w $3e(a0)
	bne.s loc_2049b8
	btst.b #$2,($f602).w
	beq.s loc_2049ac
	bsr.w sub_204b00
loc_2049ac:
	btst.b #$3,($f602).w
	beq.s loc_2049b8
	bsr.w sub_204b24
loc_2049b8:
	tst.b $2a(a0)
	beq.w loc_204a62
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2049d8
	asr.w #$1,d2
	sub.w d2,d1
loc_2049d8:
	btst.b #$0,$22(a0)
	beq.s loc_2049e4
	neg.w d0
	neg.w d1
loc_2049e4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2049fa
	cmp.w d0,d1
	ble.s loc_204a00
	bra.s loc_2049fe
loc_2049fa:
	cmp.w d1,d0
	ble.s loc_204a00
loc_2049fe:
	move.w d1,d0
loc_204a00:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a34
	rts
loc_204a0e:
	move.w #$ab,d0
	jsr (sub_2022c4).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a94
loc_204a34:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a0e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c4).l
	btst.b #$0,$22(a0)
	bne.s loc_204a5a
	bsr.w sub_204b24
	bra.s loc_204a62
loc_204a5a:
	bsr.w sub_204b00
	bra.s loc_204a62
	dc.b $4e,$75
loc_204a62:
	move.w $14(a0),d0
	beq.s loc_204a84
	bmi.s loc_204a78
	sub.w d5,d0
	bcc.s loc_204a72
	move.w #$0,d0
loc_204a72:
	move.w d0,$14(a0)
	bra.s loc_204a84
loc_204a78:
	add.w d5,d0
	bcc.s loc_204a80
	move.w #$0,d0
loc_204a80:
	move.w d0,$14(a0)
loc_204a84:
	tst.w $14(a0)
	bne.s loc_204aca
	move.w #$ab,d0
	jsr (sub_2022c4).l
loc_204a94:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ab4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204ac4
loc_204ab4:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204ac4:
	move.b #$5,$1c(a0)
loc_204aca:
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204aee
	move.w #$1000,d1
loc_204aee:
	cmpi.w #$f000,d1
	bge.s loc_204af8
	move.w #$f000,d1
loc_204af8:
	move.w d1,$10(a0)
	bra.w loc_204828

sub_204b00:
	move.w $14(a0),d0
	beq.s loc_204b08
	bpl.s loc_204b16
loc_204b08:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b16:
	sub.w d4,d0
	bcc.s loc_204b1e
	move.w #$ff80,d0
loc_204b1e:
	move.w d0,$14(a0)
	rts

sub_204b24:
	move.w $14(a0),d0
	bmi.s loc_204b38
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b38:
	add.w d4,d0
	bcc.s loc_204b40
	move.w #$80,d0
loc_204b40:
	move.w d0,$14(a0)
	rts

sub_204b46:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b80
	tst.w ($ff1506).l
	bne.s loc_204b80
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b78
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b78
	rts
loc_204b78:
	btst.b #$1,$2c(a0)
	bne.s loc_204bb0
loc_204b80:
	btst.b #$2,($f602).w
	beq.s loc_204b9a
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b9a
	move.w d1,d0
loc_204b9a:
	btst.b #$3,($f602).w
	beq.s loc_204bb0
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204bb0
	move.w d6,d0
loc_204bb0:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204bc6
	bcc.s loc_204bc2
	addq.w #$4,($f73e).w
loc_204bc2:
	subq.w #$2,($f73e).w
loc_204bc6:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204bf4
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204bf4
	bmi.s loc_204be8
	sub.w d1,d0
	bcc.s loc_204be2
	move.w #$0,d0
loc_204be2:
	move.w d0,$10(a0)
	rts
loc_204be8:
	sub.w d1,d0
	bcs.s loc_204bf0
	move.w #$0,d0
loc_204bf0:
	move.w d0,$10(a0)
loc_204bf4:
	rts
	.incbin 19446, 48

sub_204c26:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c7a
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c54
	addi.w #$38,d0
loc_204c54:
	cmp.w d1,d0
	bls.s loc_204c7a
loc_204c58:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c68
	rts
loc_204c68:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206f2a
	move.b #$6,$24(a0)
	rts
loc_204c7a:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c58

sub_204c92:
	tst.b ($f7ca).w
	bne.s loc_204cb8
	move.w $14(a0),d0
	bpl.s loc_204ca0
	neg.w d0
loc_204ca0:
	cmpi.w #$80,d0
	bcs.s loc_204cb8
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204cb8
	btst.b #$1,($f602).w
	bne.s sub_204cba
loc_204cb8:
	rts

sub_204cba:
	btst.b #$2,$22(a0)
	beq.s loc_204cc4
	bra.s loc_204cf4
loc_204cc4:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ce4
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204cf4
loc_204ce4:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204cf4:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d0e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d0e
	move.w #$200,$14(a0)
loc_204d0e:
	rts

sub_204d10:
	tst.b $2a(a0)
	beq.s loc_204d18
	rts
loc_204d18:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d2a
	tst.w $14(a0)
	beq.w loc_204df0
loc_204d2a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204df0
	btst.b #$3,$22(a0)
	beq.s loc_204d46
	jsr (sub_205a1c).l
	beq.s loc_204d76
loc_204d46:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206926
	cmpi.w #$6,d1
	blt.w loc_204df0
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d6c
	move.w #$380,d2
loc_204d6c:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d76:
	jsr (sub_2007c8).l
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
	jsr (sub_2022c4).l
	btst.b #$2,$22(a0)
	bne.s loc_204df2
	tst.b ($ff195b).l
	beq.s loc_204dd4
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204de4
loc_204dd4:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204de4:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204df0:
	rts
loc_204df2:
	bset.b #$4,$22(a0)
	rts

sub_204dfa:
	tst.b $3c(a0)
	beq.s loc_204e2c
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e10
	move.w #$fe00,d1
loc_204e10:
	cmp.w $12(a0),d1
	ble.s loc_204e2a
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204e2a
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204e2a:
	rts
loc_204e2c:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e3a
	move.w #$f040,$12(a0)
loc_204e3a:
	rts

sub_204e3c:
	tst.b $2a(a0)
	bne.s loc_204e76
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e76
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e76
	bmi.s loc_204e72
	tst.w d0
	beq.s loc_204e70
	add.w d0,$14(a0)
loc_204e70:
	rts
loc_204e72:
	add.w d0,$14(a0)
loc_204e76:
	rts

sub_204e78:
	tst.b $2a(a0)
	bne.s loc_204eb8
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204eb8
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204eae
	tst.w d0
	bpl.s loc_204ea8
	asr.l #$2,d0
loc_204ea8:
	add.w d0,$14(a0)
	rts
loc_204eae:
	tst.w d0
	bmi.s loc_204eb4
	asr.l #$2,d0
loc_204eb4:
	add.w d0,$14(a0)
loc_204eb8:
	rts

sub_204eba:
	nop
	tst.b $38(a0)
	bne.s loc_204efc
	tst.w $3e(a0)
	bne.s loc_204efe
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204efc
	move.w $14(a0),d0
	bpl.s loc_204ede
	neg.w d0
loc_204ede:
	cmpi.w #$280,d0
	bcc.s loc_204efc
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204efc:
	rts
loc_204efe:
	subq.w #$1,$3e(a0)
	rts

sub_204f04:
	btst.b #$1,$2c(a0)
	bne.s loc_204f26
	move.b $26(a0),d0
	beq.s loc_204f26
	bpl.s loc_204f1c
	addq.b #$2,d0
	bcc.s loc_204f1a
	moveq #$0,d0
loc_204f1a:
	bra.s loc_204f22
loc_204f1c:
	subq.b #$2,d0
	bcc.s loc_204f22
	moveq #$0,d0
loc_204f22:
	move.b d0,$26(a0)
loc_204f26:
	rts

sub_204f28:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a60).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20500c
	cmpi.b #$80,d0
	beq.w loc_20506e
	cmpi.b #$c0,d0
	beq.w loc_2050ca
	bsr.w sub_206c3c
	tst.w d1
	bpl.s loc_204f7a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f7a:
	bsr.w sub_206a9e
	tst.w d1
	bpl.s loc_204f8c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f8c:
	bsr.w sub_20694e
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20500a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204faa
	cmp.b d2,d0
	blt.s loc_20500a
loc_204faa:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20512c
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204fe8
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204fda
	asr.w $12(a0)
	bra.s loc_204ffc
loc_204fda:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204fe8:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204ffc
	move.w #$fc0,$12(a0)
loc_204ffc:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20500a
	neg.w $14(a0)
loc_20500a:
	rts
loc_20500c:
	bsr.w sub_206c3c
	tst.w d1
	bpl.s loc_205026
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205026:
	bsr.w sub_206af6
	tst.w d1
	bpl.s loc_205040
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20503e
	move.w #$0,$12(a0)
loc_20503e:
	rts
loc_205040:
	tst.w $12(a0)
	bmi.s loc_20506c
	bsr.w sub_20694e
	tst.w d1
	bpl.s loc_20506c
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20512c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20506c:
	rts
loc_20506e:
	bsr.w sub_206c3c
	tst.w d1
	bpl.s loc_205080
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205080:
	bsr.w sub_206a9e
	tst.w d1
	bpl.s loc_205092
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205092:
	bsr.w sub_206af6
	tst.w d1
	bpl.s loc_2050c8
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050b2
	move.w #$0,$12(a0)
	rts
loc_2050b2:
	move.b d3,$26(a0)
	bsr.w sub_20519e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2050c8
	neg.w $14(a0)
loc_2050c8:
	rts
loc_2050ca:
	bsr.w sub_206a9e
	tst.w d1
	bpl.s loc_2050e4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050e4:
	bsr.w sub_206af6
	tst.w d1
	bpl.s loc_2050fe
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050fc
	move.w #$0,$12(a0)
loc_2050fc:
	rts
loc_2050fe:
	tst.w $12(a0)
	bmi.s loc_20512a
	bsr.w sub_20694e
	tst.w d1
	bpl.s loc_20512a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20512c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20512a:
	rts

sub_20512c:
	btst.b #$4,$22(a0)
	beq.s loc_205136
	nop
loc_205136:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205190
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205170
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205180
loc_205170:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205180:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2022c4).l
loc_205190:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20519e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20926, 114
	bsr.w sub_205248
	jsr (sub_203814).l
	bsr.w sub_2040c8
	bsr.w sub_205486
	jmp (sub_2038cc).l

sub_205248:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_2052b6
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_20527c
	clr.b ($ff1508).l
loc_20527c:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205296
	tst.b ($ff0f01).l
	beq.s loc_205296
	move.b #$0,($ff1508).l
	bra.s loc_2052b0
loc_205296:
	jsr (sub_2078f2).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_2052b6
loc_2052b0:
	move.w #$3c,$3a(a0)
loc_2052b6:
	rts
	tst.w $3a(a0)
	beq.w loc_20533a
	subq.w #$1,$3a(a0)
	bne.w loc_20533a
	move.w #$1,($ff1502).l
	jsr (sub_20225c).l
	move.b #$1,($a01c3e).l
	jsr (sub_202278).l
	bsr.w sub_2076e0
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205308
	cmpi.b #$1,($ff152e).l
	bne.s loc_205308
	bclr.b #$1,($ff151c).l
loc_205308:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205336
	cmpi.b #$1,($ff152e).l
	bne.s loc_205330
	tst.b ($ff158e).l
	beq.s loc_205336
	move.b #$1,($ff1522).l
	bra.s loc_205336
loc_205330:
	clr.b ($ff1522).l
loc_205336:
	bra.w sub_205a96
loc_20533a:
	rts

sub_20533c:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205364
	cmpi.b #$5,($ff1506).l
	beq.s loc_205364
	cmpi.b #$2,($ff1506).l
	beq.s loc_205364
	tst.b ($ff1506).l
	bne.w loc_205426
loc_205364:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053a2
	tst.b ($ff1506).l
	bne.w loc_205428
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205428
	bra.s loc_2053aa
loc_2053a2:
	cmp.b ($f7af).w,d1
	beq.w loc_205428
loc_2053aa:
	cmp.b ($f7ac).w,d1
	beq.s loc_2053da
	cmp.b ($f7ad).w,d1
	beq.s loc_2053be
	bclr.b #$6,$1(a0)
	rts
loc_2053be:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205440
	btst.b #$1,$22(a0)
	beq.s loc_2053da
	bclr.b #$6,$1(a0)
	rts
loc_2053da:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2053ec
	bclr.b #$6,$1(a0)
	rts
loc_2053ec:
	cmpi.b #$e0,d2
	bcs.s loc_2053fa
	bset.b #$6,$1(a0)
	rts
loc_2053fa:
	btst.b #$6,$1(a0)
	bne.s loc_205416
	move.b $26(a0),d1
	beq.s loc_205426
	cmpi.b #$80,d1
	bhi.s loc_205426
	bset.b #$6,$1(a0)
	rts
loc_205416:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205426
	bclr.b #$6,$1(a0)
loc_205426:
	rts
loc_205428:
	btst.b #$2,$22(a0)
	bne.s loc_20543a
	move.w #$9c,d0
	jsr (sub_2022c4).l
loc_20543a:
	jmp (sub_204cba).l
loc_205440:
	tst.w $12(a0)
	bmi.s loc_205484
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205478
	cmpi.w #$38,d1
	bcs.s loc_205470
	cmpi.w #$80,d1
	bcs.s loc_205484
loc_205468:
	bclr.b #$6,$1(a0)
	rts
loc_205470:
	bset.b #$6,$1(a0)
	rts
loc_205478:
	cmpi.w #$38,d1
	bcs.s loc_205468
	cmpi.w #$80,d1
	bcc.s loc_205470
loc_205484:
	rts

sub_205486:
	lea (dat_205776).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054a8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054a8:
	bsr.w sub_205718
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205520
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2054ee
	move.b d0,$1e(a0)

sub_2054d2:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2054e6
	bpl.s loc_2054e6
	cmpi.b #$fd,d0
	bge.s loc_2054f0
loc_2054e6:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2054ee:
	rts
loc_2054f0:
	addq.b #$1,d0
	bne.s loc_205500
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2054e6
loc_205500:
	addq.b #$1,d0
	bne.s loc_205514
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2054e6
loc_205514:
	addq.b #$1,d0
	bne.s loc_20551e
	move.b $2(a1,d1.w),$1c(a0)
loc_20551e:
	rts
loc_205520:
	subq.b #$1,$1e(a0)
	bpl.s loc_2054ee
	addq.b #$1,d0
	bne.w loc_2055da
	tst.b ($ff195b).l
	bne.w loc_2056a2
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205548
	not.b d0
loc_205548:
	btst.b #$1,$2c(a0)
	bne.s loc_205556
	addi.b #$10,d0
	bra.s loc_205558
loc_205556:
	addq.b #$8,d0
loc_205558:
	bpl.s loc_20555c
	moveq #$3,d1
loc_20555c:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20564e
	move.w $14(a0),d2
	bpl.s loc_20557a
	neg.w d2
loc_20557a:
	btst.b #$1,$2c(a0)
	beq.s loc_205592
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205978).l,a1
	bra.s loc_2055bc
loc_205592:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205952).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2055bc
	lea (dat_2057f6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055bc
	lea (dat_2057ee).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2055bc:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2055ca
	moveq #$0,d2
loc_2055ca:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2054d2
	add.b d3,$1a(a0)
	rts
loc_2055da:
	addq.b #$1,d0
	bne.s loc_20564a
	move.w $14(a0),d2
	bpl.s loc_2055e6
	neg.w d2
loc_2055e6:
	lea (dat_2058d4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205624
	lea (dat_205806).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205618
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205624
	lea (dat_205980).l,a1
	bra.s loc_205624
loc_205618:
	cmpi.w #$600,d2
	bcc.s loc_205624
	lea (dat_2057fe).l,a1
loc_205624:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20562e
	moveq #$0,d2
loc_20562e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054d2
loc_20564a:
	addq.b #$1,d0
	bne.s loc_20568e
loc_20564e:
	move.w $14(a0),d2
	bmi.s loc_205656
	neg.w d2
loc_205656:
	addi.w #$800,d2
	bpl.s loc_20565e
	moveq #$0,d2
loc_20565e:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2058e6).l,a1
	tst.b ($ff195b).l
	bne.s loc_205678
	lea (dat_20580e).l,a1
loc_205678:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054d2
loc_20568e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056a2:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056b4
	not.b d0
loc_2056b4:
	addi.b #$10,d0
	bpl.s loc_2056bc
	moveq #$0,d1
loc_2056bc:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2056ea
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2055da
loc_2056ea:
	move.w $14(a0),d2
	bpl.s loc_2056f2
	neg.w d2
loc_2056f2:
	lea (dat_2058ce).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205704
	lea (dat_2058c8).l,a1
loc_205704:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20570e
	moveq #$0,d2
loc_20570e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2054d2

sub_205718:
	tst.b ($ff195b).l
	beq.s loc_205724
	move.b dat_205726(pc,d0.w),d0
loc_205724:
	rts
dat_205726:
	.incbin 22310, 80
dat_205776:
	.incbin 22390, 120
dat_2057ee:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2057f6:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2057fe:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205806:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20580e:
	.incbin 22542, 186
dat_2058c8:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2058ce:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2058d4:
	.incbin 22740, 18
dat_2058e6:
	.incbin 22758, 108
dat_205952:
	.incbin 22866, 38
dat_205978:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205980:
	.incbin 22912, 56

sub_2059b8:
	tst.b (a0)
	beq.w loc_205a1a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a1a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a1a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2059ec:
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
loc_205a06:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a06
	dbf d1,loc_2059ec
loc_205a1a:
	rts

sub_205a1c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a90
	move.w #$98,d0
	jsr (sub_2022c4).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a60).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205a7e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a7e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a90:
	rts
loc_205a92:
	move.w #$e,d0

sub_205a96:
	cmpi.w #$67,d0
	bne.s loc_205aa4
	move.b #$1,($ff1958).l
loc_205aa4:
	move.w d0,($a12010).l
loc_205aaa:
	move.w ($a12020).l,d0
	beq.s loc_205aaa
	cmp.w ($a12020).l,d0
	bne.s loc_205aaa
	move.w #$0,($a12010).l
loc_205ac2:
	move.w ($a12020).l,d0
	bne.s loc_205ac2
	move.w ($a12020).l,d0
	bne.s loc_205ac2
	rts
	dc.b $00,$00

sub_205ad6:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205af2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205af2:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b32
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b34
loc_205b0e:
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
loc_205b32:
	rts
loc_205b34:
	addq.b #$1,d0
	bne.s loc_205b44
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b0e
loc_205b44:
	addq.b #$1,d0
	bne.s loc_205b58
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b0e
loc_205b58:
	addq.b #$1,d0
	bne.s loc_205b62
	move.b $2(a1,d1.w),$1c(a0)
loc_205b62:
	addq.b #$1,d0
	bne.s loc_205b6a
	addq.b #$2,$24(a0)
loc_205b6a:
	addq.b #$1,d0
	bne.s loc_205b78
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b78:
	addq.b #$1,d0
	bne.s loc_205b80
	addq.b #$2,$25(a0)
loc_205b80:
	rts
	.incbin 23426, 536

sub_205d9a:
	rts
	.incbin 23964, 116

sub_205e10:
	tst.b $25(a0)
	bne.s loc_205e40
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2078f2).l
	bne.s loc_205e40
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205e40:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e50(pc,d0.w),d0
	jmp dat_205e50(pc,d0.w)
dat_205e50:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e78
	andi.b #$7f,$2(a0)
loc_205e78:
	move.l #$23b8ba,$4(a0)
	bsr.s sub_205e10
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205ea6
	move.w #$100,$1c(a0)
loc_205ea6:
	lea (dat_23b8a6).l,a1
	bsr.w sub_205ad6
	jmp (sub_2038cc).l
	tst.b $25(a0)
	beq.s loc_205ec2
	jmp (sub_203978).l
loc_205ec2:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 24272, 770
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061e0(pc,d0.w),d1
	jmp dat_2061e0(pc,d1.w)
dat_2061e0:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23b6ce,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_206222
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_206222
	addq.b #$2,$24(a0)
loc_206222:
	rts
	tst.b ($ff151e).l
	beq.s loc_20627e
	tst.b ($ff1521).l
	bne.s loc_20627c
	tst.b ($ff151f).l
	bne.s loc_20627c
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20626c
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20626c
	andi.b #$7f,$2(a0)
loc_20626c:
	lea (dat_23b5a6).l,a1
	jsr (sub_205ad6).l
	bra.w loc_20631c
loc_20627c:
	rts
loc_20627e:
	jmp (sub_203978).l
	.incbin 25220, 152
loc_20631c:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_20632e
	rts
loc_20632e:
	cmp.b $24(a0),d0
	beq.s loc_206344
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206344:
	jmp (sub_2038cc).l
loc_20634a:
	bclr.b #$7,($ff156b).l
	beq.s loc_206398
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20639a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20636e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20636e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206398:
	rts
dat_20639a:
	.incbin 25498, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2063d0(pc,d0.w),d0
	jsr dat_2063d0(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2063ca
	jsr (sub_2038cc).l
loc_2063ca:
	jmp (loc_207928).l
dat_2063d0:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23b6ce,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2064b2
	cmpi.b #$6,$24(a1)
	bcc.w loc_2064b2
	bsr.w sub_206516
	beq.w loc_2064b2
	tst.b $28(a0)
	bne.s loc_206464
	move.w $10(a1),d0
	bpl.s loc_206424
	neg.w d0
loc_206424:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206436
	move.w #$d00,d1
loc_206436:
	cmp.w d1,d0
	bcc.s loc_20643c
	move.w d1,d0
loc_20643c:
	tst.w $10(a1)
	bpl.s loc_206444
	neg.w d0
loc_206444:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206494
	neg.w $14(a1)
	bra.s loc_206494
loc_206464:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2064b4
	move.w $12(a1),d0
	bpl.s loc_206474
	neg.w d0
loc_206474:
	cmpi.w #$d00,d0
	bcc.s loc_20647e
	move.w #$d00,d0
loc_20647e:
	tst.w $12(a1)
	bpl.s loc_206486
	neg.w d0
loc_206486:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206494:
	bset.b #$2,$22(a1)
	bne.s loc_2064b2
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2064b2:
	rts
loc_2064b4:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206500
	cmpi.b #$2,$28(a0)
	bne.s loc_2064d0
	tst.w $12(a1)
	bpl.s loc_206494
	bra.s loc_2064d6
loc_2064d0:
	tst.w $12(a1)
	bmi.s loc_206494
loc_2064d6:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2064e8
	btst.l #$2,d1
	beq.s loc_206494
	neg.w d0
loc_2064e8:
	cmpi.b #$2,$28(a0)
	beq.s loc_2064f6
	bset.b #$1,$22(a1)
loc_2064f6:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206494
loc_206500:
	tst.w $10(a1)
	bmi.s loc_206494
	btst.l #$0,d1
	beq.w loc_206494
	move.w #$f600,d0
	bra.w loc_206486

sub_206516:
	tst.b ($ff1906).l
	bne.s loc_20654a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20654a
	cmpi.w #$50,d0
	bcc.s loc_20654a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20654a
	cmpi.w #$50,d0
	bcc.s loc_20654a
	moveq #$1,d0
	rts
loc_20654a:
	moveq #$0,d0
	rts

sub_20654e:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_2065aa
	move.w $10(a0),d0
	bpl.s loc_206562
	neg.w d0
loc_206562:
	cmpi.w #$a00,d0
	bcs.s loc_2065aa
	move.w $c(a0),d2
	move.w $8(a0),d3
	addq.w #$8,d2
	jsr (sub_200f36).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206596
	add.b ($ff156a).l,d1
loc_206596:
	add.w d1,d1
	move.w dat_2065ac(pc,d1.w),d1
	lea dat_2065ac(pc,d1.w),a1
loc_2065a0:
	move.w (a1)+,d1
	bmi.s loc_2065aa
	cmp.w d1,d0
	bne.s loc_2065a0
	bra.s loc_2065ec
loc_2065aa:
	rts
dat_2065ac:
	.incbin 26028, 64
loc_2065ec:
	jsr (sub_2078f2).l
	bne.s loc_20661c
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_20661c
	bset.b #$0,$22(a1)
loc_20661c:
	rts
	.incbin 26142, 216
loc_2066f6:
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
	bne.s loc_2067b0
	move.b ($ff1593).l,($ff195b).l
loc_2067b0:
	tst.b ($ff1522).l
	bpl.s loc_2067c6
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2067c6:
	rts

sub_2067c8:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2066f6
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
	bne.s loc_206882
	move.b ($ff1591).l,($ff195b).l
loc_206882:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2068a4
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2068a4:
	tst.b ($ff1522).l
	bpl.s loc_2068ba
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2068ba:
	rts

sub_2068bc:
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
	bpl.s loc_2068f8
	move.b d1,d0
	bpl.s loc_2068f2
	subq.b #$1,d0
loc_2068f2:
	addi.b #$20,d0
	bra.s loc_206902
loc_2068f8:
	move.b d1,d0
	bpl.s loc_2068fe
	addq.b #$1,d0
loc_2068fe:
	addi.b #$1f,d0
loc_206902:
	andi.b #$c0,d0
	beq.w loc_2069d2
	cmpi.b #$80,d0
	beq.w loc_206b6e
	andi.b #$38,d1
	bne.s loc_20691a
	addq.w #$8,d2
loc_20691a:
	cmpi.b #$40,d0
	beq.w loc_206c44
	bra.w loc_206aa6

sub_206926:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206bcc
	cmpi.b #$80,d0
	beq.w sub_206af6
	cmpi.b #$c0,d0
	beq.w loc_206a36

sub_20694e:
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
	jsr (sub_20111e).l
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
	jsr (sub_20111e).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_2069b2:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2069c0
	move.b ($f768).w,d3
	exg d0,d1
loc_2069c0:
	btst.l #$0,d3
	beq.s loc_2069c8
	move.b d2,d3
loc_2069c8:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2069d2:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20111e).l
	move.b #$0,d2
loc_2069ee:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2069fa
	move.b d2,d3
loc_2069fa:
	rts

sub_2069fc:
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
	jsr (sub_20111e).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a34
	move.b #$0,d3
loc_206a34:
	rts
loc_206a36:
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
	jsr (sub_20128e).l
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
	jsr (sub_20128e).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_2069b2

sub_206a9e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206aa6:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20128e).l
	move.b #$c0,d2
	bra.w loc_2069ee
	.incbin 27334, 48

sub_206af6:
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
	jsr (sub_20111e).l
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
	jsr (sub_20111e).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_2069b2

sub_206b66:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b6e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20111e).l
	move.b #$80,d2
	bra.w loc_2069ee
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
	jsr (sub_20111e).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bca
	move.b #$80,d3
loc_206bca:
	rts
loc_206bcc:
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
	jsr (sub_20128e).l
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
	jsr (sub_20128e).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_2069b2

sub_206c3c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c44:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20128e).l
	move.b #$40,d2
	bra.w loc_2069ee
	.incbin 27752, 48

sub_206c98:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206cbc
	addi.w #$c,d3
	moveq #$a,d5
loc_206cbc:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206cca:
	tst.b $1(a1)
	bpl.s loc_206cd6
	move.b $20(a1),d0
	bne.s loc_206ce2
loc_206cd6:
	lea $40(a1),a1
	dbf d6,loc_206cca
	moveq #$0,d0
	rts
loc_206ce2:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20707c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d0a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206d10
	bra.w loc_206cd6
loc_206d0a:
	cmp.w d4,d0
	bhi.w loc_206cd6
loc_206d10:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206d28
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206d2e
	bra.w loc_206cd6
loc_206d28:
	cmp.w d5,d0
	bhi.w loc_206cd6
loc_206d2e:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206da2
	cmpi.b #$c0,d1
	beq.w loc_206f82
	tst.b d1
	bmi.w sub_206e6c
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206d66
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206d64
	addq.b #$2,$24(a1)
loc_206d64:
	rts
loc_206d66:
	tst.w $12(a0)
	bpl.s loc_206d90
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206da0
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206da0
	addq.b #$4,$25(a1)
	rts
loc_206d90:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206da0
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206da0:
	rts

sub_206da2:
	tst.b ($ff1521).l
	bne.s loc_206dbc
	tst.b ($ff151f).l
	bne.s loc_206dbc
	cmpi.b #$2,$1c(a0)
	bne.w sub_206e6c
loc_206dbc:
	tst.b $21(a1)
	beq.s loc_206de6
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206de4
	bset.b #$7,$22(a1)
loc_206de4:
	rts
loc_206de6:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206dfe
	moveq #$6,d0
loc_206dfe:
	move.w d0,$3e(a1)
	move.w dat_206e5e(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206e18
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206e18:
	bsr.w sub_20a904
	move.w #$96,d0
	jsr (sub_2022c4).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206e4e
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206e56
	neg.w $12(a0)
	rts
loc_206e4e:
	addi.w #$100,$12(a0)
	rts
loc_206e56:
	subi.w #$100,$12(a0)
	rts
dat_206e5e:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206e6c:
	tst.b ($ff1521).l
	bne.s loc_206e7c
	tst.b ($ff151f).l
	beq.s loc_206e80
loc_206e7c:
	moveq #$ffffffff,d0
	rts
loc_206e80:
	nop
	tst.w $30(a0)
	bne.s loc_206e7c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206eb6
	tst.w ($ff1512).l
	beq.w loc_206f20
	jsr (sub_2078f2).l
	bne.s loc_206eb6
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206eb6:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206ecc
	move.b #$0,($ff156f).l
loc_206ecc:
	move.b #$4,$24(a0)
	bsr.w sub_20512c
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206efc
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206efc:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f0a
	neg.w $10(a0)
loc_206f0a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206f20:
	tst.w ($ff1588).l
	bne.w loc_206eb6

sub_206f2a:
	tst.w ($ff1906).l
	bne.s loc_206f7e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20512c
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022c4).l
loc_206f7e:
	moveq #$ffffffff,d0
	rts
loc_206f82:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_20701a
	cmpi.b #$23,d1
	beq.w loc_20701a
	cmpi.b #$2d,d1
	beq.w loc_207070
	cmpi.b #$31,d1
	beq.w loc_207070
	cmpi.b #$35,d1
	beq.w loc_207062
	cmpi.b #$3a,d1
	beq.w loc_207062
	cmpi.b #$3b,d1
	beq.w loc_207062
	tst.b ($f7aa).w
	beq.w loc_207018
	cmpi.b #$1,($f7aa).w
	beq.s loc_206fe2
	cmpi.b #$4,($f7aa).w
	beq.s loc_207004
	cmpi.b #$5,($f7aa).w
	beq.s loc_207012
loc_206fe2:
	cmpi.b #$3c,d1
	blt.s loc_207018
	cmpi.b #$3f,d1
	bgt.s loc_207018
	bsr.w sub_206da2
	tst.b $20(a1)
	bne.s loc_206ffc
	addq.b #$3,$21(a1)
loc_206ffc:
	clr.b $20(a1)
	bra.w loc_20701a
loc_207004:
	cmpi.b #$3f,d1
	beq.s loc_207026
	cmpi.b #$3e,d1
	beq.s loc_207020
	bra.s loc_207018
loc_207012:
	cmpi.b #$3d,d1
	beq.s loc_207020
loc_207018:
	rts
loc_20701a:
	addq.b #$1,$21(a1)
	rts
loc_207020:
	bsr.w sub_206e6c
	bra.s loc_20701a
loc_207026:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207060
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207060
	neg.w $10(a0)
loc_207060:
	rts
loc_207062:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20706e
	addq.b #$1,$21(a1)
loc_20706e:
	rts
loc_207070:
	btst.b #$2,$22(a0)
	beq.w sub_206da2
	bra.s loc_20701a
dat_20707c:
	.incbin 28796, 126
loc_2070fa:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207110
	move.l #$4000,(dat_20728a).l
	bra.s loc_207130
loc_207110:
	addi.l #$2000,(dat_20728a).l
	cmpi.l #$80000,(dat_20728a).l
	bls.s loc_207130
	move.l #$80000,(dat_20728a).l
loc_207130:
	move.l (dat_20728a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207142
	sub.l d0,$c(a0)
loc_207142:
	btst.b #$1,($f604).w
	beq.s loc_20714e
	add.l d0,$c(a0)
loc_20714e:
	btst.b #$2,($f604).w
	beq.s loc_20715a
	sub.l d0,$8(a0)
loc_20715a:
	btst.b #$3,($f604).w
	beq.s loc_207166
	add.l d0,$8(a0)
loc_207166:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f36).l
	move.w (a1),($ff194e).l
	lea (dat_20728e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2071a8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2071a2
	move.b #$0,d1
loc_2071a2:
	move.b d1,($ff1904).l
loc_2071a8:
	btst.b #$7,($f605).w
	beq.s loc_2071c8
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2071c2
	add.b (a2),d1
loc_2071c2:
	move.b d1,($ff1904).l
loc_2071c8:
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
	beq.s loc_207254
	bsr.w sub_2078f2
	bne.s loc_207254
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
loc_207254:
	btst.b #$4,($f605).w
	beq.s loc_207284
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207284:
	jmp (sub_2038cc).l
dat_20728a:
	dc.b $00,$00,$40,$00
dat_20728e:
	.incbin 29326, 1106

sub_2076e0:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076ee:
	clr.l (a2)+
	dbf d0,loc_2076ee
	rts

sub_2076f6:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207704(pc,d0.w),d0
	jmp dat_207704(pc,d0.w)
dat_207704:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2079a4).l,a0
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
	bcc.s loc_207742
	moveq #$0,d6
loc_207742:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20774a:
	cmp.w (a0),d6
	bls.s loc_20775c
	tst.b $4(a0)
	bpl.s loc_207758
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207758:
	addq.w #$8,a0
	bra.s loc_20774a
loc_20775c:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20777c
loc_20776a:
	cmp.w (a0),d6
	bls.s loc_20777c
	tst.b $4(a0)
	bpl.s loc_207778
	addq.b #$1,$1(a2)
loc_207778:
	addq.w #$8,a0
	bra.s loc_20776a
loc_20777c:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207866
	bge.s loc_20780c
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077e8
loc_2077b6:
	cmp.w -$8(a0),d6
	bge.s loc_2077e8
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077cc
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077cc:
	bsr.w sub_20788a
	bne.s loc_2077d6
	subq.w #$8,a0
	bra.s loc_2077b6
loc_2077d6:
	tst.b $4(a0)
	bpl.s loc_2077e6
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077e6:
	addq.w #$8,a0
loc_2077e8:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077f4:
	cmp.w -$8(a0),d6
	bgt.s loc_207806
	tst.b -$4(a0)
	bpl.s loc_207802
	subq.b #$1,(a2)
loc_207802:
	subq.w #$8,a0
	bra.s loc_2077f4
loc_207806:
	move.l a0,($f770).w
	rts
loc_20780c:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207820:
	cmp.w (a0),d6
	bls.s loc_207842
	tst.b $4(a0)
	bpl.s loc_20782e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20782e:
	bsr.w sub_20788a
	beq.s loc_207820
	tst.b $4(a0)
	bpl.s loc_207842
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207842:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207862
loc_207850:
	cmp.w (a0),d6
	bls.s loc_207862
	tst.b $4(a0)
	bpl.s loc_20785e
	addq.b #$1,$1(a2)
loc_20785e:
	addq.w #$8,a0
	bra.s loc_207850
loc_207862:
	move.l a0,($f774).w
loc_207866:
	rts

sub_207868:
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

sub_20788a:
	bsr.s sub_207868
	beq.s loc_20789c
	tst.b $4(a0)
	bpl.s loc_2078a2
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078a2
loc_20789c:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078a2:
	bsr.w sub_2078f2
	bne.s loc_2078f0
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
	bpl.s loc_2078d2
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078d2:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078e4
	nop
	nop
	nop
	nop
loc_2078e4:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078f0:
	rts

sub_2078f2:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078fa:
	tst.b (a1)
	beq.s loc_207906
	lea $40(a1),a1
	dbf d0,loc_2078fa
loc_207906:
	rts

sub_207908:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207926
loc_20791a:
	tst.b (a1)
	beq.s loc_207926
	lea $40(a1),a1
	dbf d0,loc_20791a
loc_207926:
	rts
loc_207928:
	move.w $8(a0),d0
loc_20792c:
	tst.b $1(a0)
	bmi.s loc_207996
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207996
loc_20794a:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20798c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207984
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20797c
	moveq #$0,d1
	bra.s loc_207984
loc_20797c:
	cmpi.w #$3,d1
	bcs.s loc_207984
	moveq #$2,d1
loc_207984:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20798c:
	jsr (sub_203978).l
	moveq #$1,d0
	rts
loc_207996:
	btst.b #$7,($ff152e).l
	bne.s loc_20794a
	moveq #$0,d0
	rts
dat_2079a4:
	.incbin 31140, 5146

sub_208dbe:
	btst.b #$3,$22(a0)
	beq.s loc_208e2e
	btst.b #$3,$22(a1)
	beq.s loc_208e2e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208e2e
	tst.b $2a(a1)
	beq.s loc_208df0
	move.w #$ab,d0
	jsr (sub_2022c4).l
loc_208df0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208e1c
	cmpi.b #$17,$1c(a1)
	beq.s loc_208e1c
	bclr.b #$0,$2c(a1)
loc_208e1c:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e2e
	bclr.b #$1,$22(a1)
loc_208e2e:
	rts

sub_208e30:
	cmpi.b #$4,$24(a1)
	bne.s loc_208e42
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208e42:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208ea2
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e64
	bclr.b #$3,$22(a0)
	bra.w sub_208dbe
loc_208e64:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208ea2
	tst.b ($ff195b).l
	beq.s loc_208e8c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208e9c
loc_208e8c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208e9c:
	move.b #$0,$1c(a1)
loc_208ea2:
	bset.b #$3,$22(a1)
	beq.s loc_208ec4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208efc
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208ec4:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208ef0
	cmpi.b #$2,$24(a0)
	beq.s loc_208ef6
loc_208ef0:
	move.w $10(a1),$14(a1)
loc_208ef6:
	bclr.b #$1,$22(a1)
loc_208efc:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_208f0c:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2091c0
	btst.b #$6,$2c(a1)
	bne.w loc_2091c0
	cmpi.b #$6,$24(a1)
	bcc.w loc_2091c0
	tst.b $0(a1)
	beq.w loc_2091c0
	tst.b $1(a0)
	bpl.w loc_2091c0
	tst.b ($ff1906).l
	bne.w loc_2091c0
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2091c0
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2091c0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f7a
	btst.b #$3,$22(a0)
	bne.s loc_208f8c
	bra.w loc_2091c0
loc_208f7a:
	cmpi.b #$1,$25(a0)
	bne.s loc_208f8c
	tst.w $12(a1)
	beq.s loc_208f8c
	bmi.w loc_2091c0
loc_208f8c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2091c0
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2091c0
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208fc2
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208fc2:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208fd0
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208fd0:
	cmp.w d4,d5
	bcs.w loc_209064
	cmpi.b #$1,$25(a0)
	beq.w loc_2091c0
	cmpi.b #$a,$0(a0)
	bne.s loc_208ff2
	btst.b #$1,$22(a1)
	bne.w loc_2091c0
loc_208ff2:
	cmpi.b #$4,d5
	bls.w loc_2091c0
	bsr.w sub_209210
	move.l d0,-(a7)
	bsr.w sub_208dbe
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20901c
	tst.w $10(a1)
	beq.s loc_20904c
	bpl.s loc_209024
	bra.s loc_20904c
loc_20901c:
	tst.w $10(a1)
	beq.s loc_20904c
	bpl.s loc_20904c
loc_209024:
	bsr.w sub_2091d0
	btst.b #$1,$22(a1)
	bne.s loc_209042
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209042:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20904c:
	bsr.w sub_209286
	bsr.w sub_2091d0
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209064:
	cmpi.b #$19,$0(a0)
	bne.s loc_209076
	btst.b #$2,$22(a1)
	bne.w loc_2091c0
loc_209076:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20908c
	bmi.w loc_20915c
loc_20908c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20909e
	tst.w $12(a1)
	beq.s loc_20909e
	bmi.w loc_2091c0
loc_20909e:
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
	beq.s loc_2090ea
	bpl.s loc_2090ca
	neg.b d0
loc_2090ca:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068bc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090ea
	tst.w $10(a0)
	bpl.s loc_2090e6
	neg.w d1
loc_2090e6:
	add.w d1,$8(a1)
loc_2090ea:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209154
	tst.w $12(a0)
	bmi.s loc_209128
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20694e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209128
	add.w d1,$c(a1)
	bra.w loc_2091c0
loc_209128:
	tst.w $12(a0)
	bpl.s loc_209154
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b66).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209154
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2a).l
	movem.l (a7)+,a0-a1
	bra.s loc_2091c0
loc_209154:
	bsr.w sub_208e30
	moveq #$1,d0
	rts
loc_20915c:
	cmpi.b #$1,$25(a0)
	beq.s loc_2091c0
	cmpi.b #$9,$0(a0)
	beq.s loc_2091c0
	cmpi.b #$a,$0(a0)
	bne.s loc_209186
	cmpi.b #$2,$25(a0)
	beq.s loc_2091a6
	btst.b #$1,$1(a0)
	bne.s loc_2091a6
	bra.s loc_2091c0
loc_209186:
	btst.b #$1,$22(a1)
	bne.s loc_2091a6
	tst.w $12(a0)
	beq.s loc_2091a6
	bmi.s loc_2091a6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2a).l
	movem.l (a7)+,a0-a1
loc_2091a6:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209286
	bsr.w sub_208dbe
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2091c0:
	bsr.w sub_209286
	bsr.w sub_208dbe
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2091d0:
	tst.w $10(a0)
	beq.s loc_20920e
	cmpi.b #$a,$0(a0)
	beq.s loc_20920e
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2091ea
	neg.b d0
loc_2091ea:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068bc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20920e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2a).l
	movem.l (a7)+,a0-a1
loc_20920e:
	rts

sub_209210:
	cmpi.b #$a,$0(a0)
	bne.s loc_209220
	move.b #$0,$20(a1)
	rts
loc_209220:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209274
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209284
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209242
	tst.w $10(a2)
	beq.s loc_209284
loc_209242:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209254
	cmp.w $8(a2),d1
	bcs.s loc_209284
	bra.s loc_20925a
loc_209254:
	cmp.w $8(a2),d1
	bcc.s loc_209284
loc_20925a:
	cmpi.b #$15,$0(a0)
	beq.s loc_209284
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f2a).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209274:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209284:
	rts

sub_209286:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2092a0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2092a0
	move.b #$0,$20(a1)
loc_2092a0:
	rts
	.incbin 37538, 90
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208f0c).l
	.incbin 37642, 270
loc_209418:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209426(pc,d0.w),d0
	jmp dat_209426(pc,d0.w)
dat_209426:
	.incbin 37926, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209418
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20947c
	tst.b $1(a0)
	bpl.s loc_209484
loc_20947c:
	move.w dat_2094d6(pc,d0.w),d1
	jsr dat_2094d6(pc,d1.w)
loc_209484:
	bsr.w sub_2038cc
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2094b6
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2094b6:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203978
	rts
dat_2094d6:
	.incbin 38102, 26
	addq.b #$2,$24(a0)
	move.l #$209858,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209546
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20985e,$4(a0)
	bra.s loc_209588
loc_209546:
	btst.l #$3,d0
	beq.s loc_209574
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2098a8,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ce4e).l
	move.l (a7)+,d0
	bra.s loc_209588
loc_209574:
	btst.b #$1,$1(a0)
	beq.s loc_209588
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209588:
	btst.l #$1,d0
	beq.s loc_209594
	bset.b #$5,$2(a0)
loc_209594:
	andi.w #$2,d0
	move.w dat_2095a0(pc,d0.w),$30(a0)
	rts
dat_2095a0:
	.incbin 38304, 368
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38690, 532
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209944(pc,d0.w),d1
	jmp dat_209944(pc,d1.w)
dat_209944:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20994e:
	.incbin 39246, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2099a6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20999e
	moveq #$0,d1
	bra.s loc_2099a6
loc_20999e:
	cmpi.w #$3,d1
	bcs.s loc_2099a6
	moveq #$2,d1
loc_2099a6:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2099c2
	moveq #$6,d1
loc_2099c2:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20994e).l,a1
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
	beq.s loc_209a12
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a0a
	moveq #$0,d0
	bra.s loc_209a12
loc_209a0a:
	cmpi.w #$3,d0
	bcs.s loc_209a12
	moveq #$2,d0
loc_209a12:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209ae0
	dbf d0,loc_209a12
	bclr.b #$7,(a2)
	bra.s loc_209a68
loc_209a24:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209a50
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a48
	moveq #$0,d0
	bra.s loc_209a50
loc_209a48:
	cmpi.w #$3,d0
	bcs.s loc_209a50
	moveq #$2,d0
loc_209a50:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209ae0
	dbf d0,loc_209a50
	bclr.b #$7,(a2)
	bsr.w sub_207908
	bne.w loc_209aec
loc_209a68:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209db2,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209abe
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209abe
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209abe:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209ae0:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209a24
loc_209aec:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209b12
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b0a
	moveq #$0,d0
	bra.s loc_209b12
loc_209b0a:
	cmpi.w #$3,d0
	bcs.s loc_209b12
	moveq #$2,d0
loc_209b12:
	lea $1(a2),a3
loc_209b16:
	btst.b #$0,-(a3)
	bne.w sub_203978
	dbf d0,loc_209b16
	tst.b $1(a0)
	bmi.s loc_209b46
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209bc0
loc_209b46:
	tst.w ($ff190e).l
	bne.s loc_209b56
	move.b ($ff1913).l,$1a(a0)
loc_209b56:
	bra.w sub_2038cc
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209bc4
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209ba6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b9e
	moveq #$0,d1
	bra.s loc_209ba6
loc_209b9e:
	cmpi.w #$3,d1
	bcs.s loc_209ba6
	moveq #$2,d1
loc_209ba6:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209daa).l,a1
	bsr.w sub_205ad6
	bra.w sub_2038cc
loc_209bc0:
	bra.w sub_203978

sub_209bc4:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c14
	bset.b #$1,($ff150d).l
	beq.s loc_209bfe
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c14
	bset.b #$2,($ff150d).l
	bne.s loc_209c14
loc_209bfe:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a96).l
loc_209c14:
	jmp (sub_2022c4).l
	.incbin 39962, 400
dat_209daa:
	.incbin 40362, 402
loc_209f3c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f6a(pc,d0.w),d0
	jsr dat_209f6a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209f68
	cmpi.w #$5a,($f786).w
	bcs.s loc_209f62
	btst.b #$0,($ff1505).l
	bne.s loc_209f68
loc_209f62:
	jmp (sub_2038cc).l
loc_209f68:
	rts
dat_209f6a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a544,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209f9e
	move.b #$13,$1a(a0)
loc_209f9e:
	rts
loc_209fa0:
	tst.b ($ff0f01).l
	beq.s loc_209fae
	jmp (sub_203978).l
loc_209fae:
	cmpi.b #$a,$28(a0)
	beq.w loc_209f3c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fd2(pc,d0.w),d0
	jsr dat_209fd2(pc,d0.w)
	jsr (sub_2038cc).l
	jmp (loc_207928).l
dat_209fd2:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a544,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a020
	tst.b $29(a0)
	bne.s loc_20a020
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a020:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a0ec
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a048
	addq.b #$2,$1a(a0)
loc_20a048:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a05c
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a05c:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a0c2
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a08e
	tst.b $29(a0)
	beq.s loc_20a086
	tst.b ($ff1956).l
	beq.s loc_20a0c2
	bra.s loc_20a08e
loc_20a086:
	tst.b ($ff1956).l
	bne.s loc_20a0c2
loc_20a08e:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a0ec
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a0bc
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a0bc:
	jsr (sub_205a96).l
loc_20a0c2:
	rts
	.incbin 41156, 40

sub_20a0ec:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a124
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a11c
	moveq #$0,d1
	bra.s loc_20a124
loc_20a11c:
	cmpi.w #$3,d1
	bcs.s loc_20a124
	moveq #$2,d1
loc_20a124:
	add.w d1,d0
	rts

sub_20a128:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a14a
	tst.b ($ff1956).l
	beq.s loc_20a142
	tst.b $29(a0)
	bne.s loc_20a14a
	rts
loc_20a142:
	tst.b $29(a0)
	beq.s loc_20a14a
	rts
loc_20a14a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208f0c).l
	tst.b $28(a0)
	bne.s loc_20a16c
	tst.b ($ff0f01).l
	beq.s loc_20a16c
	jmp (loc_207928).l
loc_20a16c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209fa0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a184(pc,d0.w),d1
	jmp dat_20a184(pc,d1.w)
dat_20a184:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a544,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1ce
	tst.b $29(a0)
	bne.s loc_20a1ce
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a1ce:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a0ec
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a1fa
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a1fa:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a254
	move.b $25(a0),d0
	beq.s loc_20a234
	bsr.w sub_203814
	jsr (sub_2069fc).l
	tst.w d1
	bpl.w loc_20a242
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a242
loc_20a234:
	tst.b $1(a0)
	bpl.s loc_20a242
	lea ($d000).w,a1
	bsr.w sub_20a128
loc_20a242:
	tst.w ($ff190e).l
	bne.s loc_20a254
	lea (dat_20a4bc).l,a1
	bsr.w sub_205ad6
loc_20a254:
	bsr.w sub_2038cc
	jmp (loc_207928).l
	.incbin 41566, 606
dat_20a4bc:
	.incbin 42172, 586
loc_20a706:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a71a(pc,d0.w),d0
	jsr dat_20a71a(pc,d0.w)
	jmp (sub_2038cc).l
dat_20a71a:
	.incbin 42778, 146
	tst.b $28(a0)
	bmi.w loc_20a706
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a7c2(pc,d0.w),d0
	jmp dat_20a7c2(pc,d0.w)
dat_20a7c2:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a85c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a7f2
	move.b #$3,$1a(a0)
	bra.s loc_20a812
loc_20a7f2:
	tst.w ($ff1588).l
	beq.s loc_20a800
	move.b #$2,$1a(a0)
loc_20a800:
	tst.b $28(a0)
	beq.s loc_20a812
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a812:
	tst.b $28(a0)
	bne.s loc_20a856
	tst.b $29(a0)
	beq.s loc_20a842
	tst.w ($ff1512).l
	beq.s loc_20a82e
	bclr.b #$5,$2(a0)
	bra.s loc_20a856
loc_20a82e:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a856
	eori.b #$20,$2(a0)
	bra.s loc_20a856
loc_20a842:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a856
	move.b #$2,$1a(a0)
loc_20a856:
	jmp (sub_2038cc).l
	.incbin 43100, 168

sub_20a904:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a920
	move.l d1,(a3)
loc_20a920:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a94a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a96).l
loc_20a94a:
	rts
loc_20a94c:
	tst.w ($ff1588).l
	beq.s loc_20a9a2
	bsr.w sub_20ab9e
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
	lea (dat_20acfe).l,a2
	moveq #$2,d6
	bsr.w sub_20ad56
	bra.w loc_20a9fc
loc_20a9a2:
	tst.b ($ff1511).l
	beq.s loc_20a9c6
	bpl.s loc_20a9b0
	bsr.w sub_20ab48
loc_20a9b0:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ac38
loc_20a9c6:
	tst.b ($ff150f).l
	beq.s loc_20a9fc
	bpl.s loc_20a9d4
	bsr.w sub_20ab34
loc_20a9d4:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a9f8
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a9f8:
	bsr.w sub_20ac2e
loc_20a9fc:
	tst.w ($ff1588).l
	bne.w loc_20aaa8
	tst.b ($ff1510).l
	beq.w loc_20aaa8
	tst.w ($f63a).w
	bne.w loc_20aaa8
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ab06
	tst.b ($f7cc).w
	bne.s loc_20aa52
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa52
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa52
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20aa52
	move.b #$9,(a1)
loc_20aa52:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ad44
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ad4e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20aaa4
	move.w #$63,d1
loc_20aaa4:
	bsr.w sub_20ad4e
loc_20aaa8:
	tst.b ($ff150e).l
	beq.s loc_20aaba
	clr.b ($ff150e).l
	bsr.w sub_20ad24
loc_20aaba:
	tst.b ($f7d6).w
	beq.s loc_20ab04
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aada
	move.l #$6d400001,d0
loc_20aada:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20abbc
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aafa
	move.l #$6e800001,d0
loc_20aafa:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20abbc
loc_20ab04:
	rts
loc_20ab06:
	btst.b #$7,($ff152e).l
	bne.s loc_20ab32
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206f2a
	move.b #$1,($ff150c).l
loc_20ab32:
	rts

sub_20ab34:
	move.l #$73600002,($c00004).l
	lea dat_20ab9a(pc),a2
	move.w #$2,d2
	bra.s loc_20ab64

sub_20ab48:
	lea ($c00000).l,a6
	bsr.w sub_20ad24
	move.l #$70600002,($c00004).l
	lea dat_20ab92(pc),a2
	move.w #$6,d2
loc_20ab64:
	lea (dat_2330bc).l,a1
loc_20ab6a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ab86
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ab7a:
	move.l (a3)+,(a6)
	dbf d1,loc_20ab7a
loc_20ab80:
	dbf d2,loc_20ab6a
	rts
loc_20ab86:
	move.l #$0,(a6)
	dbf d1,loc_20ab86
	bra.s loc_20ab80
dat_20ab92:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ab9a:
	dc.b $ff,$ff,$00,$00

sub_20ab9e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ad1a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ad1a

sub_20abbc:
	lea (dat_20acf6).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20abcc:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20abd0:
	sub.l d3,d1
	bcs.s loc_20abd8
	addq.w #$1,d2
	bra.s loc_20abd0
loc_20abd8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abe2
	move.w #$1,d4
loc_20abe2:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20abee
	tst.w d6
	bne.s loc_20ac20
loc_20abee:
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
loc_20ac14:
	addi.l #$400000,d0
	dbf d6,loc_20abcc
	rts
loc_20ac20:
	moveq #$f,d5
loc_20ac22:
	move.l #$0,(a6)
	dbf d5,loc_20ac22
	bra.s loc_20ac14

sub_20ac2e:
	lea (dat_20acfe).l,a2
	moveq #$2,d6
	bra.s loc_20ac40

sub_20ac38:
	lea (dat_20acf2).l,a2
	moveq #$5,d6
loc_20ac40:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac48:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac4c:
	sub.l d3,d1
	bcs.s loc_20ac54
	addq.w #$1,d2
	bra.s loc_20ac4c
loc_20ac54:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac5e
	move.w #$1,d4
loc_20ac5e:
	tst.w d4
	beq.s loc_20ac8c
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
loc_20ac8c:
	addi.l #$400000,d0
	dbf d6,loc_20ac48
	rts
	.incbin 44184, 32
loc_20acb8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20acbc:
	sub.l d3,d1
	bcs.s loc_20acc4
	addq.w #$1,d2
	bra.s loc_20acbc
loc_20acc4:
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
	dbf d6,loc_20acb8
	rts
dat_20acf2:
	dc.b $00,$01,$86,$a0
dat_20acf6:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20acfe:
	dc.b $00,$00,$00,$64
dat_20ad02:
	dc.b $00,$00,$00,$0a
dat_20ad06:
	dc.b $00,$00,$00,$01
dat_20ad0a:
	.incbin 44298, 16

sub_20ad1a:
	moveq #$3,d6
	lea (dat_20ad0a).l,a2
	bra.s sub_20ad56

sub_20ad24:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ad3a
	moveq #$9,d1
loc_20ad3a:
	lea (dat_20ad06).l,a2
	moveq #$0,d6
	bra.s sub_20ad56

sub_20ad44:
	lea (dat_20ad06).l,a2
	moveq #$0,d6
	bra.s sub_20ad56

sub_20ad4e:
	lea (dat_20ad02).l,a2
	moveq #$1,d6

sub_20ad56:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ad5e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad62:
	sub.l d3,d1
	bcs.s loc_20ad6a
	addq.w #$1,d2
	bra.s loc_20ad62
loc_20ad6a:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ad74
	move.w #$1,d4
loc_20ad74:
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
	dbf d6,loc_20ad5e
	rts
	.incbin 44458, 2656
	ori.b #$4,$1(a0)
	move.w #$42f8,$2(a0)
	move.l #$20b838,$4(a0)
	addq.b #$2,$24(a0)
	move.b #$4,$18(a0)
	tst.b ($ff1956).l
	beq.s loc_20b836
	move.b #$0,$18(a0)
loc_20b836:
	rts
	.incbin 47160, 1950
loc_20bfd6:
	cmpi.b #$4,$24(a2)
	bne.s loc_20bfe8
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20bfe8:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20c030
	cmpi.b #$6,$24(a2)
	bcc.s loc_20c030
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20c030
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c030
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20c030
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c030
	moveq #$1,d0
	rts
loc_20c030:
	moveq #$0,d0
	rts
	.incbin 49204, 618
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c2b8(pc,d0.w),d0
	jsr dat_20c2b8(pc,d0.w)
	jsr (sub_2038cc).l
	jmp (loc_207928).l
dat_20c2b8:
	dc.b $00,$08,$00,$4c,$00,$50,$00,$7e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c450,$4(a0)
	move.b #$20,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$1a(a0)
	tst.b $28(a0)
	beq.s loc_20c304
	move.b #$0,$1a(a0)
	move.w #$f800,$12(a0)
	move.b #$6,$24(a0)
	bra.s loc_20c336
loc_20c304:
	bra.w loc_20c358
	.incbin 49928, 46
loc_20c336:
	addi.w #$40,$12(a0)
	jsr (sub_203876).l
	move.w ($f704).w,d0
	addi.w #$e8,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c356
	jmp (sub_203978).l
loc_20c356:
	rts
loc_20c358:
	tst.b ($ff1906).l
	bne.s loc_20c36a
	lea ($d000).w,a2
	bsr.s sub_20c36c
	bne.w loc_20c384
loc_20c36a:
	rts

sub_20c36c:
	btst.b #$1,$22(a2)
	beq.s loc_20c378
	moveq #$0,d0
	rts
loc_20c378:
	move.w #$20,d2
	move.w #$10,d3
	bra.w loc_20bfd6
loc_20c384:
	clr.b ($d02c).w
	jsr (sub_2078f2).l
	bne.s loc_20c3c8
	move.b #$8,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	movea.l a1,a3
	jsr (sub_2078f2).l
	bne.s loc_20c3c8
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$6,$c(a1)
loc_20c3c8:
	move.w #$ce,d0
	jsr (sub_2022c4).l
	addq.b #$2,$24(a0)
	move.w $8(a0),$2c(a0)
	move.b #$6,$2a(a0)
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcc.s loc_20c418
	move.w #$f000,$10(a2)
	bset.b #$0,$22(a1)
	move.w #$200,$10(a3)
	addi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$800,$10(a0)
	bset.b #$0,$22(a2)
	rts
loc_20c418:
	move.w #$1000,$10(a2)
	bclr.b #$0,$22(a1)
	move.w #$fe00,$10(a3)
	subi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$f800,$10(a0)
	bclr.b #$0,$22(a2)
	rts
	.incbin 50244, 94
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c4b6(pc,d0.w),d0
	jsr dat_20c4b6(pc,d0.w)
	jmp (sub_2038cc).l
dat_20c4b6:
	.incbin 50358, 362
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c62e(pc,d0.w),d0
	jmp dat_20c62e(pc,d0.w)
dat_20c62e:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20cd2c,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ccec).l,a2
loc_20c67c:
	jsr (sub_2078f2).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20cd2c,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c6ce
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c6ce:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c67c
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c6f6
	bge.s loc_20c6ec
	neg.w d0
loc_20c6ec:
	add.w d0,$a(a0)
	jmp (sub_2038cc).l
loc_20c6f6:
	addq.b #$4,$24(a0)
	jmp (sub_2038cc).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c71a
	bge.s loc_20c710
	neg.w d0
loc_20c710:
	add.w d0,$8(a0)
	jmp (sub_2038cc).l
loc_20c71a:
	addq.b #$4,$24(a0)
	jmp (sub_2038cc).l
	tst.b $1e(a0)
	beq.s loc_20c734
	subq.b #$1,$1e(a0)
	jmp (sub_2038cc).l
loc_20c734:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c74e
	bge.s loc_20c744
	neg.w d0
loc_20c744:
	add.w d0,$a(a0)
	jmp (sub_2038cc).l
loc_20c74e:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20248e).l
	tst.b $1e(a0)
	beq.s loc_20c770
	subq.b #$1,$1e(a0)
	jmp (sub_2038cc).l
loc_20c770:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c78a
	bge.s loc_20c780
	neg.w d0
loc_20c780:
	add.w d0,$8(a0)
	jmp (sub_2038cc).l
loc_20c78a:
	jmp (sub_203978).l
	tst.l ($f680).w
	bne.s loc_20c7a4
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203978).l
loc_20c7a4:
	rts
	.incbin 51110, 1350
dat_20ccec:
	.incbin 52460, 352

sub_20ce4c:
	rts

sub_20ce4e:
	move.w #$4f2,$2(a0)
	rts
	.incbin 52822, 34

sub_20ce78:
	lea ($d000).w,a1
	move.b #$8,$16(a0)
	jsr (sub_208f0c).l
	bne.s loc_20ce98
	move.b #$c,$16(a0)
	jsr (sub_208f0c).l
	beq.s loc_20cec2
loc_20ce98:
	move.b #$8,$16(a0)
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcs.s loc_20cec2
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20cec2:
	move.b #$8,$16(a0)
	rts
dat_20ceca:
	.incbin 52938, 64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d06c,$4(a0)
	move.w #$366,$2(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20cfa2
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d1
	moveq #$0,d2
	move.b $28(a0),d1
	andi.w #$f,d1
	move.b d1,$2f(a0)
	move.b d1,d2
	subq.b #$1,d2
loc_20cf5a:
	jsr (sub_2078f2).l
	bne.s loc_20cf9c
	move.b #$20,$0(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
	move.b $28(a0),$28(a1)
	move.b $2f(a0),$2f(a1)
	move.b d1,$3c(a1)
	move.b #$2,$1a(a1)
	cmp.b $2f(a0),d1
	bne.s loc_20cf9c
	move.b #$1,$1a(a1)
	move.b #$a9,$20(a1)
loc_20cf9c:
	subq.b #$1,d1
	dbf d2,loc_20cf5a
loc_20cfa2:
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$f0,d0
	lsr.b #$1,d0
	lea dat_20ceca(pc),a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$3a(a0)
	move.w (a1)+,$3e(a0)
	move.w (a1)+,$34(a0)
	move.w (a1)+,$38(a0)
	move.l $8(a0),d0
	move.l $c(a0),d1
	movem.l d0-d1,-(a7)
	bsr.w sub_20d002
	movem.l (a7)+,d0-d1
	move.b $2f(a0),d4
	cmp.b $3c(a0),d4
	bne.s loc_20d000
	move.l $8(a0),d2
	move.l $c(a0),d3
	sub.l d0,d2
	sub.l d1,d3
	asr.l #$8,d2
	asr.l #$8,d3
	move.w d2,$10(a0)
	move.w d3,$12(a0)
	bsr.w sub_20ce78
loc_20d000:
	rts

sub_20d002:
	tst.b $3d(a0)
	bne.s loc_20d022
	move.w $30(a0),d0
	add.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $34(a0),d0
	seq $3d(a0)
	bra.s loc_20d03c
loc_20d022:
	move.w $30(a0),d0
	sub.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $38(a0),d0
	bne.s loc_20d03c
	clr.b $3d(a0)
loc_20d03c:
	move.b $3a(a0),d0
	jsr (sub_2007c8).l
	move.b $3c(a0),d2
	ext.w d2
	asl.w #$4,d2
	mulu.w d2,d0
	mulu.w d2,d1
	asr.l #$4,d0
	asr.w #$4,d0
	asr.l #$4,d1
	asr.w #$4,d1
	add.w $32(a0),d1
	add.w $36(a0),d0
	move.w d1,$c(a0)
	move.w d0,$8(a0)
	rts
	.incbin 53356, 4796
	tst.b $24(a0)
	bne.s loc_20e36c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4376,$2(a0)
	move.l #$20e38e,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e382(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e36c:
	lea ($d000).w,a1
	jsr (sub_208f0c).l
	jsr (sub_2038cc).l
	jmp (loc_207928).l
dat_20e382:
	.incbin 58242, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e40a(pc,d0.w),d0
	jsr dat_20e40a(pc,d0.w)
	jsr (sub_2038cc).l
	move.w $2a(a0),d0
	jmp (loc_20792c).l
dat_20e40a:
	dc.b $00,$06,$00,$8c,$00,$ba
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e4d6,$4(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20e514(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2e(a0)
	lea dat_20e4e4(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	lsl.w #$4,d0
	moveq #$0,d1
	move.b $28(a0),d1
	lsl.w #$3,d1
	add.w d1,d0
	adda.w d0,a1
	moveq #$0,d0
	moveq #$0,d1
	move.w (a1)+,d0
	move.w (a1)+,d1
	lsl.l #$8,d0
	lsl.l #$8,d1
	move.l d0,$32(a0)
	move.l d1,$36(a0)
	move.w (a1)+,$2c(a0)
	move.w (a1),$30(a0)
	move.l $32(a0),d0
	move.l $36(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	subq.w #$1,$30(a0)
	bne.s loc_20e4c2
	addq.b #$2,$24(a0)
	move.w $2e(a0),$30(a0)
	neg.l $32(a0)
	neg.l $36(a0)
	tst.b $1(a0)
loc_20e4c2:
	rts
	subq.w #$1,$30(a0)
	bne.s loc_20e4d4
	subq.b #$2,$24(a0)
	move.w $2c(a0),$30(a0)
loc_20e4d4:
	rts
	dc.b $00,$02,$02,$f0,$0d,$00,$00,$f0
	dc.b $00,$0d,$10,$00,$f0,$00
dat_20e4e4:
	.incbin 58596, 48
dat_20e514:
	dc.b $00,$3c,$00,$28,$00,$14
	tst.b $29(a0)
	bne.w loc_20e5a2
	tst.b $24(a0)
	bne.s loc_20e564
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$38e,$2(a0)
	move.l #$20e6a2,$4(a0)
	move.b $28(a0),$1a(a0)
	move.w #$96,$2a(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
loc_20e564:
	subq.w #$1,$2a(a0)
	bne.s loc_20e596
	move.w #$96,$2a(a0)
	jsr (sub_2078f2).l
	bne.s loc_20e596
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20e596:
	jsr (sub_2038cc).l
	jmp (loc_207928).l
loc_20e5a2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e5b6(pc,d0.w),d0
	jsr dat_20e5b6(pc,d0.w)
	jmp (sub_2038cc).l
dat_20e5b6:
	dc.b $00,$08,$00,$7c,$00,$98,$00,$c4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e6d6,$4(a0)
	move.w #$20,$2e(a0)
	move.l #$8000,d0
	btst.b #$0,$28(a0)
	seq $3f(a0)
	bne.s loc_20e60e
	neg.l d0
loc_20e60e:
	move.l d0,$30(a0)
	lea $8(a0),a1
	move.w $8(a0),d0
	cmpi.b #$2,$28(a0)
	bge.s loc_20e62a
	lea $c(a0),a1
	move.w $c(a0),d0
loc_20e62a:
	move.w a1,$2a(a0)
	move.w d0,$2c(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	subq.w #$1,$2e(a0)
	bne.s loc_20e64c
	addq.b #$2,$24(a0)
	move.w #$1e,$2e(a0)
loc_20e64c:
	rts
	subq.w #$1,$2e(a0)
	bne.s loc_20e678
	addq.b #$2,$24(a0)
	move.l #$60000,d0
	move.l #$ffffc000,d1
	btst.b #$0,$28(a0)
	bne.s loc_20e670
	neg.l d0
	neg.l d1
loc_20e670:
	move.l d0,$30(a0)
	move.l d1,$34(a0)
loc_20e678:
	rts
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	move.w (a1),d0
	sub.w $2c(a0),d0
	smi d0
	cmp.b $3f(a0),d0
	beq.s loc_20e6a0
	jmp (sub_203978).l
loc_20e6a0:
	rts
	.incbin 59042, 138

sub_20e72c:
	tst.b $28(a0)
	bmi.s loc_20e75c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e74c
	tst.b ($ff156d).l
	bne.s loc_20e75c
	addq.l #$4,a7
	jmp (loc_207928).l
loc_20e74c:
	tst.b ($ff156a).l
	bne.s loc_20e75c
	addq.l #$4,a7
	jmp (sub_203978).l
loc_20e75c:
	rts
	jsr (sub_20e72c).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e874
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e77e(pc,d0.w),d0
	jmp dat_20e77e(pc,d0.w)
dat_20e77e:
	.incbin 59262, 246
loc_20e874:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e882(pc,d0.w),d0
	jmp dat_20e882(pc,d0.w)
dat_20e882:
	.incbin 59522, 3394
	tst.b $24(a0)
	bne.s loc_20f5ee
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20f62e,$4(a0)
loc_20f5ee:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20f60e
	lea ($d000).w,a1
	jsr (sub_208f0c).l
	sne $2a(a0)
	bra.s loc_20f622
loc_20f60e:
	tst.b $2a(a0)
	beq.s loc_20f622
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_208dbe).l
loc_20f622:
	jsr (sub_2038cc).l
	jmp (loc_207928).l
	.incbin 63022, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f656(pc,d0.w),d0
	jsr dat_20f656(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_20792c).l
dat_20f656:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20f84a,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20f6ba
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20f6ba
	addi.w #$2000,$2(a0)
loc_20f6ba:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20f708(pc,d0.w),d0
	jsr dat_20f708(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20f6f6
	cmp.b $30(a0),d0
	bne.s loc_20f6f4
	jsr (sub_2038cc).l
loc_20f6f4:
	rts
loc_20f6f6:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20f706
	jsr (sub_2038cc).l
loc_20f706:
	rts
dat_20f708:
	.incbin 63240, 76
loc_20f754:
	tst.b $3a(a0)
	bne.s loc_20f79a
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a2,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,d1
	move.b (a2)+,d0
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
	tst.b d1
	beq.s loc_20f79a
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20f79a:
	subq.b #$1,$3a(a0)
	bne.s loc_20f7b2
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20f7b2
	clr.b $3c(a0)
loc_20f7b2:
	rts
	lea dat_20f7c2(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20f754
dat_20f7c2:
	.incbin 63426, 32
	lea dat_20f7f0(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20f754
dat_20f7f0:
	.incbin 63472, 62
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20f838
	moveq #$0,d0
loc_20f838:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 63562, 154

sub_20f8e4:
	jmp (loc_20634a).l
dat_20f8ea:
	.incbin 63722, 16
dat_20f8fa:
	.incbin 63738, 1320
	moveq #$0,d0
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
loc_20fe48:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe48
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
	.incbin 65126, 26
	subq.b #$1,(a2)
	bpl.w loc_20feb8
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe96
	moveq #$0,d0
loc_20fe96:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fea6:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fea6
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20feb8:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
	.incbin 65220, 65852
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 4840
dat_2343a4:
	.incbin 213924, 256
dat_2344a4:
	.incbin 214180, 4096
dat_2354a4:
	.incbin 218276, 5120
dat_2368a4:
	.incbin 223396, 19714
dat_23b5a6:
	.incbin 243110, 768
dat_23b8a6:
	.incbin 243878, 18266
