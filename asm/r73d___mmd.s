; R73D__.MMD
; disassembled from the disc; code only, data comes from data/R73D__.MMD at build time
	.file "R73D__.MMD", 262144

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
	bsr.w sub_207592
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
	lea (dat_20f4ca).l,a2
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
	bsr.w sub_20296c
	bset.b #$2,($f754).w
	bsr.w sub_2033f4
	bsr.w sub_2032ea
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
	jsr (sub_20f4c4).l
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
	jsr (sub_205aa4).l
	bsr.w sub_207592
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
	jsr (sub_2075a8).l
	jsr (sub_2037fa).l
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
	bsr.w sub_20296c
loc_20195a:
	jsr (sub_2039a4).l
	tst.w ($ff190e).l
	bne.s loc_20196c
	bsr.w sub_200184
loc_20196c:
	jsr (sub_20bb6e).l
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
	jmp (sub_205aa4).l
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
	jmp (sub_205aa4).l
loc_201ba6:
	tst.b ($ff151f).l
	bne.s loc_201b9c
	tst.b ($ff1520).l
	bne.s loc_201b9c
	move.w #$90,d0
	jmp (sub_205aa4).l
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
	jmp (sub_205aa4).l
loc_201be2:
	tst.b ($ff151f).l
	bne.s loc_201bd8
	tst.b ($ff1520).l
	bne.s loc_201bd8
	move.w #$91,d0
	jmp (sub_205aa4).l
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
	bsr.w sub_2059c6
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
	jsr (sub_20f4c4).l
	jsr (sub_202278).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202ee0
	bsr.w sub_20256c
	jmp (loc_209676).l
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
	bsr.w sub_202ee0
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
	bsr.w sub_2059c6
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
	lea (dat_20f4da).l,a1
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
	lea (dat_20f4da).l,a1
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
	dc.b $00,$04,$00,$00,$3e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_2028b8:
	tst.b ($ff1522).l
	beq.s loc_2028d8
	jsr (sub_2067d6).l
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
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$2,d1
	move.l d1,d2
	lsr.l #$2,d2
	add.l d1,d2
	move.w d2,($f710).w
	lsr.l #$1,d1
	move.l d1,d2
	lsr.l #$1,d2
	add.l d1,d2
	lsr.l #$1,d2
	add.l d1,d2
	move.w d2,($f718).w
	lsr.l #$1,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_20296c:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202978
	rts
loc_202978:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b56
	bsr.w sub_202bf6
	bsr.w sub_20348e
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	move.l d4,d3
	add.l d3,d3
	add.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202e80
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202e4c
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e18
	move.w ($f704).w,d0
	bsr.w sub_202de8
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
	bsr.w sub_202a80
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202a2c:
	move.w d0,(a1)+
	dbf d6,loc_202a2c
	bsr.w sub_202ac6
	move.w ($f718).w,d0
	neg.w d0
	moveq #$f,d6
loc_202a3e:
	move.w d0,(a1)+
	dbf d6,loc_202a3e
	move.w ($f710).w,d0
	neg.w d0
	moveq #$11,d6
loc_202a4c:
	move.w d0,(a1)+
	dbf d6,loc_202a4c
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b14
dat_202a70:
	.incbin 10864, 16

sub_202a80:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	add.w d2,d2
	sub.w d0,d2
	ext.l d2
	moveq #$5,d1
	asl.l d1,d2
	divu.w #$10,d2
	ext.l d2
	moveq #$b,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$f,d6
	adda.w #$4c,a1
loc_202aa6:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a70(pc,d6.w),d5
loc_202ab0:
	move.w d0,-(a1)
	dbf d5,loc_202ab0
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202aa6
	adda.w #$4c,a1
	rts

sub_202ac6:
	move.w ($f708).w,d0
	move.w ($f718).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$5,d1
	asl.l d1,d2
	divu.w #$b,d2
	ext.l d2
	moveq #$b,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	swap d3
	add.l d2,d3
	swap d3
	moveq #$a,d6
loc_202aec:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202b08(pc,d6.w),d5
loc_202af6:
	move.w d0,(a1)+
	dbf d5,loc_202af6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202aec
	rts
dat_202b08:
	dc.b $01,$01,$01,$01,$01,$00,$00,$00
	dc.b $00,$00,$00,$00
loc_202b14:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b22(pc,d2.w)
loc_202b20:
	move.w (a2)+,d0
loc_202b22:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b20
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
	dbf d1,loc_202b20
	rts

sub_202b56:
	move.w ($f700).w,d4
	bsr.s sub_202b8a
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b88
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b82
	bset.b #$2,($f754).w
	rts
loc_202b82:
	bset.b #$3,($f754).w
loc_202b88:
	rts

sub_202b8a:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b9c
	bcs.s loc_202bcc
	bra.s loc_202ba2
loc_202b9c:
	clr.w ($f73a).w
	rts
loc_202ba2:
	cmpi.w #$10,d0
	blt.s loc_202bac
	move.w #$10,d0
loc_202bac:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bba
	move.w ($f72a).w,d0
loc_202bba:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bcc:
	cmpi.w #$fff0,d0
	bge.s loc_202bd6
	move.w #$fff0,d0
loc_202bd6:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bba
	move.w ($f728).w,d0
	bra.s loc_202bba
	.incbin 11238, 16

sub_202bf6:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c0a
	subq.w #$5,d0
loc_202c0a:
	btst.b #$1,$22(a6)
	beq.s loc_202c2a
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c76
	subi.w #$40,d0
	bcc.s loc_202c76
	tst.b ($f75c).w
	bne.s loc_202c88
	bra.s loc_202c36
loc_202c2a:
	sub.w ($f73e).w,d0
	bne.s loc_202c3c
	tst.b ($f75c).w
	bne.s loc_202c88
loc_202c36:
	clr.w ($f73c).w
	rts
loc_202c3c:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c64
	move.w $14(a6),d1
	bpl.s loc_202c4c
	neg.w d1
loc_202c4c:
	cmpi.w #$800,d1
	bcc.s loc_202c76
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202cd6
	cmpi.w #$fffa,d0
	blt.s loc_202ca0
	bra.s loc_202c8e
loc_202c64:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202cd6
	cmpi.w #$fffe,d0
	blt.s loc_202ca0
	bra.s loc_202c8e
loc_202c76:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202cd6
	cmpi.w #$fff0,d0
	blt.s loc_202ca0
	bra.s loc_202c8e
loc_202c88:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c8e:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ce0
	bra.w loc_202cac
loc_202ca0:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cac:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d04
	cmpi.w #$ff00,d1
	bgt.s loc_202cd0
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d04
loc_202cd0:
	move.w ($f72c).w,d1
	bra.s loc_202d04
loc_202cd6:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ce0:
	cmp.w ($f72e).w,d1
	blt.s loc_202d04
	subi.w #$800,d1
	bcs.s loc_202d00
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d04
loc_202d00:
	move.w ($f72e).w,d1
loc_202d04:
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
	bne.s loc_202d46
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d40
	bset.b #$0,($f754).w
	rts
loc_202d40:
	bset.b #$1,($f754).w
loc_202d46:
	rts
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d7c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d76
	bset.b #$2,($f756).w
	bra.s loc_202d7c
loc_202d76:
	bset.b #$3,($f756).w
loc_202d7c:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202db0
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202daa
	bset.b #$0,($f756).w
	rts
loc_202daa:
	bset.b #$1,($f756).w
loc_202db0:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202de6
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202de0
	bset.b #$4,($f756).w
	rts
loc_202de0:
	bset.b #$5,($f756).w
loc_202de6:
	rts

sub_202de8:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e16
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e10
	bset.b #$0,($f756).w
	rts
loc_202e10:
	bset.b #$1,($f756).w
loc_202e16:
	rts

sub_202e18:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e4a
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e44
	bset.b d6,($f756).w
	bra.s loc_202e4a
loc_202e44:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e4a:
	rts

sub_202e4c:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e7e
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e78
	bset.b d6,($f758).w
	bra.s loc_202e7e
loc_202e78:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e7e:
	rts

sub_202e80:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202eb2
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202eac
	bset.b d6,($f75a).w
	bra.s loc_202eb2
loc_202eac:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202eb2:
	rts
	.incbin 11956, 44

sub_202ee0:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f9e
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203084
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203086
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f9c
	bclr.b #$0,(a2)
	beq.s loc_202f52
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032b2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203088
loc_202f52:
	bclr.b #$1,(a2)
	beq.s loc_202f6c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032b2
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203088
loc_202f6c:
	bclr.b #$2,(a2)
	beq.s loc_202f82
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032b2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030de
loc_202f82:
	bclr.b #$3,(a2)
	beq.s loc_202f9c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032b2
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030de
loc_202f9c:
	rts

sub_202f9e:
	lea (dat_20336a).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fba
	bclr.b #$1,(a2)
	beq.s loc_203004
	move.w #$e0,d4
loc_202fba:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203034(pc,d0.w),a3
	beq.s loc_202fec
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b2
	movem.l (a7)+,d4-d5
	bsr.w sub_203088
	movea.l (a7)+,a0
	bra.s loc_203004
loc_202fec:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b4
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030b4
	movea.l (a7)+,a0
loc_203004:
	tst.b (a2)
	bne.s loc_20300a
	rts
loc_20300a:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20301e
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20301e:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203044
dat_203034:
	.incbin 12340, 16
loc_203044:
	moveq #$f,d6
	move.l #$800000,d7
loc_20304c:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203078
	btst.b d0,(a2)
	beq.s loc_203078
	add.w d0,d0
	movea.l dat_203034(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20318a
	movem.l (a7)+,d4-d5
	bsr.w sub_2032b2
	bsr.w sub_20310c
	movem.l (a7)+,d4-d5/a0
loc_203078:
	addi.w #$10,d4
	dbf d6,loc_20304c
	clr.b (a2)
	rts

sub_203084:
	rts

sub_203086:
	rts

sub_203088:
	moveq #$15,d6

sub_20308a:
	move.l #$800000,d7
	move.l d0,d1
loc_203092:
	movem.l d4-d5,-(a7)
	bsr.w sub_20318a
	move.l d1,d0
	bsr.w sub_20310c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203092
	rts

sub_2030b4:
	move.l #$800000,d7
	move.l d0,d1
loc_2030bc:
	movem.l d4-d5,-(a7)
	bsr.w sub_20318c
	move.l d1,d0
	bsr.w sub_20310c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030bc
	rts

sub_2030de:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030e8:
	movem.l d4-d5,-(a7)
	bsr.w sub_20318a
	move.l d1,d0
	bsr.w sub_20310c
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030e8
	rts

sub_20310c:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203148
	btst.b #$3,(a0)
	bne.s loc_203128
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203128:
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
loc_203148:
	btst.b #$3,(a0)
	bne.s loc_20316a
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
loc_20316a:
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

sub_20318a:
	add.w (a3),d5

sub_20318c:
	add.w $4(a3),d4

sub_203190:
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
	beq.s loc_2031da
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
loc_2031da:
	rts
	.incbin 12764, 30
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
	bsr.w sub_203190
	bne.s loc_203240
	movem.l (a7)+,d3-d5
	bra.s loc_20326a
loc_203240:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_20326e
	bne.s loc_20326a
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2032b8
	bsr.w sub_20310c
	movem.l (a7)+,d3-d5
loc_20326a:
	movea.l (a7)+,a0
	rts

sub_20326e:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2032ae
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2032ae
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2032ae
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2032ae
	moveq #$0,d0
	rts
loc_2032ae:
	moveq #$1,d0
	rts

sub_2032b2:
	add.w (a3),d5

sub_2032b4:
	add.w $4(a3),d4

sub_2032b8:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13006, 28

sub_2032ea:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203314
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20333c

sub_203314:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203318:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032b2
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20308a
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203318
	rts
loc_20333c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203340:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20336a).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033bc
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203340
	rts
dat_20336a:
	.incbin 13162, 66
dat_2033ac:
	.incbin 13228, 16

sub_2033bc:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033ac(pc,d0.w),a3
	beq.s loc_2033de
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b2
	movem.l (a7)+,d4-d5
	bsr.w sub_203088
	bra.s loc_2033f2
loc_2033de:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032b4
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030b4
loc_2033f2:
	rts

sub_2033f4:
	moveq #$0,d0
	lea (dat_20f4ca).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202360
	movea.l (a2)+,a0
	bsr.w sub_203440
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200552
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_20343e
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20343e
	bsr.w sub_20248e
loc_20343e:
	rts

sub_203440:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20344a:
	move.l d0,(a3)+
	dbf d1,loc_20344a
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203460
	lea ($a040).w,a3
	moveq #$2,d1

sub_203460:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2368a4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20347a:
	move.w d1,d0
	movea.l a3,a0
loc_20347e:
	move.b (a1)+,(a0)+
	dbf d0,loc_20347e
	lea $80(a3),a3
	dbf d2,loc_20347a
	rts

sub_20348e:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203508(pc,d0.w),d0
	jsr dat_203508(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034b4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034b4:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034e2
	bcc.s loc_2034e4
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034d8
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034d8:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034e2:
	rts
loc_2034e4:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034fc
	btst.b #$1,($d022).w
	beq.s loc_2034fc
	add.w d1,d1
	add.w d1,d1
loc_2034fc:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203508:
	.incbin 13576, 316
	rts
	.incbin 13894, 260
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20375c(pc,d0.w),d0
	jmp dat_20375c(pc,d0.w)
dat_20375c:
	dc.b $00,$06,$00,$0e,$00,$16,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	move.w #$710,($f726).w
	rts
	lea ($d000).w,a1
	cmpi.w #$930,$8(a1)
	bge.s loc_203786
	move.w #$210,($f726).w
	rts
loc_203786:
	cmpi.w #$dc0,$8(a1)
	blt.s loc_203796
	move.w #$210,($f726).w
	rts
loc_203796:
	move.w #$120,d0
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_2037a8
	neg.w d1
loc_2037a8:
	cmpi.w #$4,d1
	bge.s loc_2037b2
	move.w d0,($f72e).w
loc_2037b2:
	rts
	.incbin 14260, 70

sub_2037fa:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203802:
	move.b (a0),d0
	beq.s loc_203818
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c1c).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203818:
	lea $40(a0),a0
	dbf d7,loc_203802
	rts

sub_203822:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203860
	bpl.s loc_203852
	btst.b #$1,$2c(a0)
	beq.s loc_203852
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203860
loc_203852:
	btst.b #$2,$2c(a0)
	bne.s loc_203860
	addi.w #$38,$12(a0)
loc_203860:
	tst.w $12(a0)
	bmi.s loc_203874
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203874
	move.w #$1000,$12(a0)
loc_203874:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203884:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038c0
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038c0
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038be
	neg.w d1
loc_2038be:
	add.w d1,d0
loc_2038c0:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	ext.l d0

sub_2038cc:
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038da:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20394a
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203966
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203966
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203924
	cmpi.w #$800,d3
	bcs.s loc_203936
	subi.w #$800,d3
	bra.s loc_203936
loc_203924:
	cmpi.w #$700,($f704).w
	bcs.s loc_203936
	cmpi.w #$100,d3
	bcc.s loc_203936
	addi.w #$800,d3
loc_203936:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203966
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203966
loc_20394a:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203966
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203966:
	rts
	.incbin 14696, 30

sub_203986:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20398c:
	move.l d1,(a1)+
	dbf d0,loc_20398c
	rts
dat_203994:
	.incbin 14740, 16

sub_2039a4:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039b0:
	tst.w (a4)
	beq.w loc_203a70
	moveq #$2,d6
loc_2039b8:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a68
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a1e
	movea.l dat_203994(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a02
	cmpi.w #$800,d2
	bcs.s loc_203a14
	subi.w #$800,d2
	bra.s loc_203a14
loc_203a02:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a14
	cmpi.w #$100,d2
	bcc.s loc_203a14
	addi.w #$800,d2
loc_203a14:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a40
loc_203a1e:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a40
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203a68
	cmpi.w #$180,d2
	bcc.s loc_203a68
loc_203a40:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a5e
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a62
loc_203a5e:
	bsr.w sub_203a92
loc_203a62:
	bset.b #$7,$1(a0)
loc_203a68:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039b8
loc_203a70:
	lea $80(a4),a4
	dbf d7,loc_2039b0
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a8a
	move.l #$0,(a2)
	rts
loc_203a8a:
	move.b #$0,-$5(a2)
	rts

sub_203a92:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203ad8
	btst.l #$1,d4
	bne.w loc_203b26
loc_203aa4:
	cmpi.b #$50,d5
	beq.s loc_203ad6
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
	bne.s loc_203ad0
	addq.w #$1,d0
loc_203ad0:
	move.w d0,(a2)+
	dbf d1,loc_203aa4
loc_203ad6:
	rts
loc_203ad8:
	btst.l #$1,d4
	bne.w loc_203b6c
loc_203ae0:
	cmpi.b #$50,d5
	beq.s loc_203b24
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
	bne.s loc_203b1e
	addq.w #$1,d0
loc_203b1e:
	move.w d0,(a2)+
	dbf d1,loc_203ae0
loc_203b24:
	rts
loc_203b26:
	cmpi.b #$50,d5
	beq.s loc_203b6a
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
	bne.s loc_203b64
	addq.w #$1,d0
loc_203b64:
	move.w d0,(a2)+
	dbf d1,loc_203b26
loc_203b6a:
	rts
loc_203b6c:
	cmpi.b #$50,d5
	beq.s loc_203bbe
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
	bne.s loc_203bb8
	addq.w #$1,d0
loc_203bb8:
	move.w d0,(a2)+
	dbf d1,loc_203b6c
loc_203bbe:
	rts
	.incbin 15296, 92
dat_203c1c:
	.incbin 15388, 246

sub_203d12:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d24
	move.w #$0,(a1)
	rts
loc_203d24:
	tst.w (a1)
	bne.s loc_203d2e
	move.b #$1,$1(a1)
loc_203d2e:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d78
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d6a
	neg.w $10(a0)
loc_203d6a:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205aa4
loc_203d78:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d96
	cmpa.w #$d040,a0
	beq.s loc_203d96
	tst.b ($ff1906).l
	beq.s loc_203d96
	jmp (loc_207108).l
loc_203d96:
	move.b $2a(a0),d0
	beq.s loc_203dc0
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203db2
	cmpi.b #$2d,d0
	bcs.s loc_203dbc
	move.b #$2d,d0
	bra.s loc_203dbc
loc_203db2:
	cmpi.b #$1e,d0
	bcs.s loc_203dbc
	move.b #$1e,d0
loc_203dbc:
	move.b d0,$2a(a0)
loc_203dc0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203dce(pc,d0.w),d1
	jmp dat_203dce(pc,d1.w)
dat_203dce:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203dd8:
	tst.b ($d300).w
	bne.s loc_203e16
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e16:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e3e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e3e:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e72:
	tst.b ($ff1506).l
	bne.s loc_203ed8
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203ed8
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203edc
	cmpi.b #$2f,d1
	bne.s loc_203eda
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203ed8
	tst.b $2c(a0)
	beq.s loc_203ed8
	jsr (sub_2077a4).l
	bne.s loc_203ed8
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203ed0
	moveq #$0,d0
loc_203ed0:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203ed8:
	rts
loc_203eda:
	rts

sub_203edc:
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

sub_203f02:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f0e
	neg.w d0
loc_203f0e:
	btst.b #$1,$2c(a0)
	beq.s loc_203f1e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f46
loc_203f1e:
	cmpi.w #$600,d0
	bcs.s loc_203f46
	tst.w $14(a0)
	bpl.s loc_203f38
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f54
	move.w #$e0,d1
	bra.s loc_203f54
loc_203f38:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f54
	move.w #$60,d1
	bra.s loc_203f54
loc_203f46:
	cmpi.w #$a0,d1
	beq.s loc_203f54
	bcc.s loc_203f52
	addq.w #$2,d1
	bra.s loc_203f54
loc_203f52:
	subq.w #$2,d1
loc_203f54:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f02
	bsr.w sub_203e72
	tst.w ($ff1588).l
	beq.s loc_203f7a
	btst.b #$4,($f605).w
	beq.s loc_203f7a
	move.b #$1,($ff1906).l
	rts
loc_203f7a:
	tst.b ($f7cc).w
	bne.s loc_203f86
	move.w ($f604).w,($f602).w
loc_203f86:
	btst.b #$0,$2c(a0)
	beq.s loc_203faa
	cmpi.b #$6,($ff1506).l
	bne.s loc_203fa4
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203fc2
loc_203fa4:
	bsr.w sub_20428c
	bra.s loc_203fc2
loc_203faa:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204008(pc,d0.w),d1
	jsr dat_204008(pc,d1.w)
	jsr (sub_20655c).l
loc_203fc2:
	bsr.s sub_204016
	bsr.w sub_2040d6
	bsr.w sub_2040f0
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203fea
	tst.b $1c(a0)
	bne.s loc_203fea
	move.b $1d(a0),$1c(a0)
loc_203fea:
	bsr.w sub_205494
	tst.b $2c(a0)
	bmi.s loc_204002
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204002
	jsr (sub_206ca6).l
loc_204002:
	bsr.w sub_20534a
	rts
dat_204008:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204016:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20403a
	move.w $30(a0),d0
	beq.s loc_20402c
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20403a
loc_20402c:
	btst.b #$6,$2c(a0)
	bne.s loc_20403a
	jsr (sub_2038da).l
loc_20403a:
	tst.b ($ff151f).l
	beq.s loc_20407e
	tst.w $32(a0)
	beq.s loc_20407e
	subq.w #$1,$32(a0)
	bne.s loc_20407e
	tst.b ($ff1520).l
	bne.s loc_204076
	tst.b ($ff1958).l
	bne.s loc_204076
	tst.b ($ff152e).l
	bne.s loc_204070
	move.w #$e,d0
	jsr (sub_205aa4).l
loc_204070:
	jsr (sub_201ab8).l
loc_204076:
	move.b #$0,($ff151f).l
loc_20407e:
	tst.b ($ff1520).l
	beq.s loc_2040d4
	tst.w $34(a0)
	beq.s loc_2040d4
	subq.w #$1,$34(a0)
	bne.s loc_2040d4
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2040cc
	tst.b ($ff1958).l
	bne.s loc_2040cc
	tst.b ($ff152e).l
	bne.s loc_2040c6
	move.w #$e,d0
	jsr (sub_205aa4).l
loc_2040c6:
	jsr (sub_201ab8).l
loc_2040cc:
	move.b #$0,($ff1520).l
loc_2040d4:
	rts

sub_2040d6:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2040f0:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2040fc
loc_2040fa:
	rts
loc_2040fc:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20410e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2040fa
loc_20410e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204152
	bset.b #$6,$22(a0)
	bne.s loc_2040fa
	bsr.w sub_205da8
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2040fa
	bra.s loc_20418a
loc_204152:
	tst.w $12(a0)
	beq.s loc_20415a
	bpl.s loc_2040fa
loc_20415a:
	bclr.b #$6,$22(a0)
	beq.s loc_2040fa
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2040fa
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20418a
	move.w #$f000,$12(a0)
loc_20418a:
	jsr (sub_2077a4).l
	bne.s loc_20419e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20419e:
	rts

sub_2041a0:
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
	bcs.s loc_20427a
	move.l #$50000,d0
loc_20427a:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20428c:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042b2
	tst.b ($ff152e).l
	beq.s loc_2042a8
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042b2
loc_2042a8:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204362
loc_2042b2:
	tst.b $2a(a0)
	bne.w loc_204370
	tst.b ($f784).w
	beq.w loc_204370
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2042d0
	neg.w d0
loc_2042d0:
	tst.w ($f786).w
	bne.s loc_2042dc
	move.w #$1,($f786).w
loc_2042dc:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2042f2
	move.b #$1,($ff1502).l
	bra.w loc_205aa0
loc_2042f2:
	cmpi.w #$d2,d1
	bcs.s loc_204346
	cmpi.b #$2,($ff1522).l
	beq.s loc_204344
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20431c
	move.w #$82,d0
	jsr (sub_205aa4).l
	moveq #$0,d0
loc_20431c:
	add.b ($f784).w,d0
	bpl.s loc_204326
	moveq #$0,d0
	bra.s loc_20432e
loc_204326:
	cmpi.b #$3,d0
	bcs.s loc_20432e
	moveq #$2,d0
loc_20432e:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041a0
	move.b #$2,($ff1522).l
loc_204344:
	rts
loc_204346:
	cmpi.w #$5a,d1
	bcc.s loc_20435e
	cmp.w d2,d0
	bcc.w loc_203dd8
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20435e:
	cmp.w d2,d0
	bcc.s loc_204370
loc_204362:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204370:
	rts
	bsr.w sub_203d12
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043a2
	tst.b ($ff195b).l
	beq.s loc_204390
	cmpi.b #$79,$1a(a0)
	bne.s loc_2043cc
	bra.s loc_204398
loc_204390:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2043cc
loc_204398:
	bsr.w sub_204c34
	jmp (sub_203822).l
loc_2043a2:
	bsr.w sub_20447a
	bsr.w sub_20428c
	bsr.w sub_204d1e
	bsr.w sub_204e4a
	bsr.w sub_2044ee
	bsr.w sub_204ca0
	bsr.w sub_204c34
	jsr (sub_203884).l
	bsr.w sub_200bc8
	bsr.w sub_204ec8
loc_2043cc:
	rts
	.incbin 17358, 172

sub_20447a:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2044e6
	tst.w ($ff1506).l
	bne.s loc_2044e6
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2044e8).l,a2
loc_2044ae:
	move.b (a2)+,d0
	bmi.s loc_2044be
	cmp.b d0,d1
	bne.s loc_2044ae
	bset.b #$1,$2c(a0)
	rts
loc_2044be:
	bclr.b #$1,$2c(a0)
	beq.s loc_2044e6
	tst.w $12(a0)
	bpl.s loc_2044e6
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2044e6
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044e6
	neg.w $10(a0)
loc_2044e6:
	rts
dat_2044e8:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2044ee:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204818
	tst.w $3e(a0)
	bne.w loc_2047c8
	btst.b #$2,($f602).w
	beq.s loc_204516
	bsr.w sub_2048a8
loc_204516:
	btst.b #$3,($f602).w
	beq.s loc_204522
	bsr.w sub_20491e
loc_204522:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2047c8
	tst.w $14(a0)
	beq.s loc_204542
	tst.b $2a(a0)
	beq.w loc_2047c8
	bra.s loc_20454e
loc_204542:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20454e:
	btst.b #$3,$22(a0)
	beq.s loc_2045a0
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2045f8
	cmpi.b #$1e,$0(a1)
	bne.s loc_204580
	move.b #$0,$1c(a0)
	bra.w loc_2047c8
loc_204580:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2045dc
	cmp.w d2,d1
	bge.s loc_2045ca
	bra.s loc_2045f8
loc_2045a0:
	jsr (sub_206a0a).l
	cmpi.w #$c,d1
	blt.s loc_2045f8
	move.w #$ab,d0
	jsr (sub_2022c4).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2045d4
loc_2045ca:
	btst.b #$0,$22(a0)
	bne.s loc_2045e4
	bra.s loc_2045ee
loc_2045d4:
	cmpi.b #$3,$37(a0)
	bne.s loc_2045f8
loc_2045dc:
	btst.b #$0,$22(a0)
	bne.s loc_2045ee
loc_2045e4:
	move.b #$32,$1c(a0)
	bra.w loc_2047c8
loc_2045ee:
	move.b #$6,$1c(a0)
	bra.w loc_2047c8
loc_2045f8:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20460c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20460c:
	btst.b #$7,($f788).w
	bne.w loc_204710
	btst.b #$6,($f788).w
	bne.w loc_204730
	btst.b #$1,($f602).w
	bne.w loc_204730
	andi.b #$f,($f788).w
	beq.s loc_204644
	btst.b #$0,($f603).w
	beq.s loc_204658
	bset.b #$7,($f788).w
	bra.w loc_2047ec
loc_204644:
	btst.b #$0,($f603).w
	beq.w loc_204658
	move.b #$1,($f788).w
	bra.w loc_2047ec
loc_204658:
	btst.b #$0,($f602).w
	beq.s loc_2046d4
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046b6
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204688
	asr.w #$1,d2
	sub.w d2,d1
loc_204688:
	btst.b #$0,$22(a0)
	beq.s loc_204694
	neg.w d0
	neg.w d1
loc_204694:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046aa
	cmp.w d0,d1
	ble.s loc_2046b0
	bra.s loc_2046ae
loc_2046aa:
	cmp.w d1,d0
	ble.s loc_2046b0
loc_2046ae:
	move.w d1,d0
loc_2046b0:
	move.w d0,$14(a0)
	rts
loc_2046b6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046d0
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022c4).l
loc_2046d0:
	bra.w loc_2047ec
loc_2046d4:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2046f4
	move.w #$ab,d0
	jsr (sub_2022c4).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204730
loc_2046f4:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022c4).l
	bra.w loc_2047c8
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204710:
	btst.b #$0,($f602).w
	beq.s loc_204730
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2047ec
	addq.w #$2,($f73e).w
	bra.w loc_2047ec
loc_204730:
	btst.b #$6,($f788).w
	bne.w loc_2047ac
	andi.b #$f,($f788).w
	beq.s loc_204754
	btst.b #$1,($f603).w
	beq.s loc_204766
	bset.b #$6,($f788).w
	bra.w loc_2047ec
loc_204754:
	btst.b #$1,($f603).w
	beq.s loc_204766
	move.b #$1,($f788).w
	bra.w loc_2047ec
loc_204766:
	btst.b #$1,($f602).w
	beq.s loc_2047c8
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047aa
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047aa
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20479c
	neg.w $14(a0)
loc_20479c:
	move.w #$9c,d0
	jsr (sub_2022c4).l
	bsr.w sub_204cc8
loc_2047aa:
	bra.s loc_2047ec
loc_2047ac:
	btst.b #$1,($f602).w
	beq.s loc_2047c8
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2047ec
	subq.w #$2,($f73e).w
	bra.s loc_2047ec
loc_2047c8:
	cmpi.w #$60,($f73e).w
	bne.s loc_2047e2
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2047ec
	move.b #$0,($f788).w
	bra.s loc_2047ec
loc_2047e2:
	bcc.s loc_2047e8
	addq.w #$4,($f73e).w
loc_2047e8:
	subq.w #$2,($f73e).w
loc_2047ec:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204818
	move.w $14(a0),d0
	beq.s loc_204818
	bmi.s loc_20480c
	sub.w d5,d0
	bcc.s loc_204806
	move.w #$0,d0
loc_204806:
	move.w d0,$14(a0)
	bra.s loc_204818
loc_20480c:
	add.w d5,d0
	bcc.s loc_204814
	move.w #$0,d0
loc_204814:
	move.w d0,$14(a0)
loc_204818:
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204836:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2048a6
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048a6
	bmi.s loc_20484e
	neg.w d1
loc_20484e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2068ca
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048a6
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048a2
	cmpi.b #$40,d0
	beq.s loc_204890
	cmpi.b #$80,d0
	beq.s loc_20488a
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20488a:
	sub.w d1,$12(a0)
	rts
loc_204890:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048a2:
	add.w d1,$12(a0)
loc_2048a6:
	rts

sub_2048a8:
	tst.b $2a(a0)
	bne.s loc_20491c
	move.w $14(a0),d0
	beq.s loc_2048b6
	bpl.s loc_2048e6
loc_2048b6:
	bset.b #$0,$22(a0)
	bne.s loc_2048ca
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048ca:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2048da
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2048da
	move.w d1,d0
loc_2048da:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048e6:
	sub.w d4,d0
	bcc.s loc_2048ee
	move.w #$ff80,d0
loc_2048ee:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20491c
	cmpi.w #$400,d0
	blt.s loc_20491c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c4).l
loc_20491c:
	rts

sub_20491e:
	tst.b $2a(a0)
	bne.s loc_20498c
	move.w $14(a0),d0
	bmi.s loc_204956
	bclr.b #$0,$22(a0)
	beq.s loc_20493e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20493e:
	cmp.w d6,d0
	bge.s loc_20494a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20494a
	move.w d6,d0
loc_20494a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204956:
	add.w d4,d0
	bcc.s loc_20495e
	move.w #$80,d0
loc_20495e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20498c
	cmpi.w #$fc00,d0
	bgt.s loc_20498c
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022c4).l
loc_20498c:
	rts
	.incbin 18830, 236
	bcc.s loc_204a80
	move.w #$0,d0
loc_204a80:
	move.w d0,$14(a0)
	bra.s loc_204a92
	dc.b $d0,$45,$64,$04,$30,$3c,$00,$00
	dc.b $31,$40,$00,$14
loc_204a92:
	tst.w $14(a0)
	bne.s loc_204ad8
	move.w #$ab,d0
	jsr (sub_2022c4).l
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ac2
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204ad2
loc_204ac2:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204ad2:
	move.b #$5,$1c(a0)
loc_204ad8:
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204afc
	move.w #$1000,d1
loc_204afc:
	cmpi.w #$f000,d1
	bge.s loc_204b06
	move.w #$f000,d1
loc_204b06:
	move.w d1,$10(a0)
	bra.w loc_204836
	.incbin 19214, 294

sub_204c34:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c88
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c62
	addi.w #$38,d0
loc_204c62:
	cmp.w d1,d0
	bls.s loc_204c88
loc_204c66:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c76
	rts
loc_204c76:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206f38
	move.b #$6,$24(a0)
	rts
loc_204c88:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c66

sub_204ca0:
	tst.b ($f7ca).w
	bne.s loc_204cc6
	move.w $14(a0),d0
	bpl.s loc_204cae
	neg.w d0
loc_204cae:
	cmpi.w #$80,d0
	bcs.s loc_204cc6
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204cc6
	btst.b #$1,($f602).w
	bne.s sub_204cc8
loc_204cc6:
	rts

sub_204cc8:
	btst.b #$2,$22(a0)
	beq.s loc_204cd2
	bra.s loc_204d02
loc_204cd2:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cf2
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d02
loc_204cf2:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d02:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d1c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d1c
	move.w #$200,$14(a0)
loc_204d1c:
	rts

sub_204d1e:
	tst.b $2a(a0)
	beq.s loc_204d26
	rts
loc_204d26:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d38
	tst.w $14(a0)
	beq.w loc_204dfe
loc_204d38:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204dfe
	btst.b #$3,$22(a0)
	beq.s loc_204d54
	jsr (sub_205a2a).l
	beq.s loc_204d84
loc_204d54:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206934
	cmpi.w #$6,d1
	blt.w loc_204dfe
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d7a
	move.w #$380,d2
loc_204d7a:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d84:
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
	bne.s loc_204e00
	tst.b ($ff195b).l
	beq.s loc_204de2
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204df2
loc_204de2:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204df2:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204dfe:
	rts
loc_204e00:
	bset.b #$4,$22(a0)
	rts
	.incbin 19976, 66

sub_204e4a:
	tst.b $2a(a0)
	bne.s loc_204e84
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e84
	move.b $26(a0),d0
	jsr (sub_2007c8).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e84
	bmi.s loc_204e80
	tst.w d0
	beq.s loc_204e7e
	add.w d0,$14(a0)
loc_204e7e:
	rts
loc_204e80:
	add.w d0,$14(a0)
loc_204e84:
	rts
	.incbin 20102, 66

sub_204ec8:
	nop
	tst.b $38(a0)
	bne.s loc_204f0a
	tst.w $3e(a0)
	bne.s loc_204f0c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f0a
	move.w $14(a0),d0
	bpl.s loc_204eec
	neg.w d0
loc_204eec:
	cmpi.w #$280,d0
	bcc.s loc_204f0a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f0a:
	rts
loc_204f0c:
	subq.w #$1,$3e(a0)
	rts
	.incbin 20242, 552

sub_20513a:
	btst.b #$4,$22(a0)
	beq.s loc_205144
	nop
loc_205144:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20519e
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20517e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20518e
loc_20517e:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20518e:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2022c4).l
loc_20519e:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20908, 414

sub_20534a:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205372
	cmpi.b #$5,($ff1506).l
	beq.s loc_205372
	cmpi.b #$2,($ff1506).l
	beq.s loc_205372
	tst.b ($ff1506).l
	bne.w loc_205434
loc_205372:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053b0
	tst.b ($ff1506).l
	bne.w loc_205436
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205436
	bra.s loc_2053b8
loc_2053b0:
	cmp.b ($f7af).w,d1
	beq.w loc_205436
loc_2053b8:
	cmp.b ($f7ac).w,d1
	beq.s loc_2053e8
	cmp.b ($f7ad).w,d1
	beq.s loc_2053cc
	bclr.b #$6,$1(a0)
	rts
loc_2053cc:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20544e
	btst.b #$1,$22(a0)
	beq.s loc_2053e8
	bclr.b #$6,$1(a0)
	rts
loc_2053e8:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2053fa
	bclr.b #$6,$1(a0)
	rts
loc_2053fa:
	cmpi.b #$e0,d2
	bcs.s loc_205408
	bset.b #$6,$1(a0)
	rts
loc_205408:
	btst.b #$6,$1(a0)
	bne.s loc_205424
	move.b $26(a0),d1
	beq.s loc_205434
	cmpi.b #$80,d1
	bhi.s loc_205434
	bset.b #$6,$1(a0)
	rts
loc_205424:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205434
	bclr.b #$6,$1(a0)
loc_205434:
	rts
loc_205436:
	btst.b #$2,$22(a0)
	bne.s loc_205448
	move.w #$9c,d0
	jsr (sub_2022c4).l
loc_205448:
	jmp (sub_204cc8).l
loc_20544e:
	tst.w $12(a0)
	bmi.s loc_205492
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205486
	cmpi.w #$38,d1
	bcs.s loc_20547e
	cmpi.w #$80,d1
	bcs.s loc_205492
loc_205476:
	bclr.b #$6,$1(a0)
	rts
loc_20547e:
	bset.b #$6,$1(a0)
	rts
loc_205486:
	cmpi.w #$38,d1
	bcs.s loc_205476
	cmpi.w #$80,d1
	bcc.s loc_20547e
loc_205492:
	rts

sub_205494:
	lea (dat_205784).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054b6
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054b6:
	bsr.w sub_205726
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20552e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2054fc
	move.b d0,$1e(a0)

sub_2054e0:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2054f4
	bpl.s loc_2054f4
	cmpi.b #$fd,d0
	bge.s loc_2054fe
loc_2054f4:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2054fc:
	rts
loc_2054fe:
	addq.b #$1,d0
	bne.s loc_20550e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2054f4
loc_20550e:
	addq.b #$1,d0
	bne.s loc_205522
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2054f4
loc_205522:
	addq.b #$1,d0
	bne.s loc_20552c
	move.b $2(a1,d1.w),$1c(a0)
loc_20552c:
	rts
loc_20552e:
	subq.b #$1,$1e(a0)
	bpl.s loc_2054fc
	addq.b #$1,d0
	bne.w loc_2055e8
	tst.b ($ff195b).l
	bne.w loc_2056b0
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205556
	not.b d0
loc_205556:
	btst.b #$1,$2c(a0)
	bne.s loc_205564
	addi.b #$10,d0
	bra.s loc_205566
loc_205564:
	addq.b #$8,d0
loc_205566:
	bpl.s loc_20556a
	moveq #$3,d1
loc_20556a:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20565c
	move.w $14(a0),d2
	bpl.s loc_205588
	neg.w d2
loc_205588:
	btst.b #$1,$2c(a0)
	beq.s loc_2055a0
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205986).l,a1
	bra.s loc_2055ca
loc_2055a0:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205960).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2055ca
	lea (dat_205804).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055ca
	lea (dat_2057fc).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2055ca:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2055d8
	moveq #$0,d2
loc_2055d8:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2054e0
	add.b d3,$1a(a0)
	rts
loc_2055e8:
	addq.b #$1,d0
	bne.s loc_205658
	move.w $14(a0),d2
	bpl.s loc_2055f4
	neg.w d2
loc_2055f4:
	lea (dat_2058e2).l,a1
	tst.b ($ff195b).l
	bne.s loc_205632
	lea (dat_205814).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205626
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205632
	lea (dat_20598e).l,a1
	bra.s loc_205632
loc_205626:
	cmpi.w #$600,d2
	bcc.s loc_205632
	lea (dat_20580c).l,a1
loc_205632:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20563c
	moveq #$0,d2
loc_20563c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054e0
loc_205658:
	addq.b #$1,d0
	bne.s loc_20569c
loc_20565c:
	move.w $14(a0),d2
	bmi.s loc_205664
	neg.w d2
loc_205664:
	addi.w #$800,d2
	bpl.s loc_20566c
	moveq #$0,d2
loc_20566c:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2058f4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205686
	lea (dat_20581c).l,a1
loc_205686:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054e0
loc_20569c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056b0:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056c2
	not.b d0
loc_2056c2:
	addi.b #$10,d0
	bpl.s loc_2056ca
	moveq #$0,d1
loc_2056ca:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2056f8
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2055e8
loc_2056f8:
	move.w $14(a0),d2
	bpl.s loc_205700
	neg.w d2
loc_205700:
	lea (dat_2058dc).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205712
	lea (dat_2058d6).l,a1
loc_205712:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20571c
	moveq #$0,d2
loc_20571c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2054e0

sub_205726:
	tst.b ($ff195b).l
	beq.s loc_205732
	move.b dat_205734(pc,d0.w),d0
loc_205732:
	rts
dat_205734:
	.incbin 22324, 80
dat_205784:
	.incbin 22404, 120
dat_2057fc:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205804:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20580c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205814:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20581c:
	.incbin 22556, 186
dat_2058d6:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2058dc:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2058e2:
	.incbin 22754, 18
dat_2058f4:
	.incbin 22772, 108
dat_205960:
	.incbin 22880, 38
dat_205986:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20598e:
	.incbin 22926, 56

sub_2059c6:
	tst.b (a0)
	beq.w loc_205a28
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a28
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a28
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2059fa:
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
loc_205a14:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a14
	dbf d1,loc_2059fa
loc_205a28:
	rts

sub_205a2a:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a9e
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
	bne.s loc_205a8c
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a8c:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a9e:
	rts
loc_205aa0:
	move.w #$e,d0

sub_205aa4:
	cmpi.w #$67,d0
	bne.s loc_205ab2
	move.b #$1,($ff1958).l
loc_205ab2:
	move.w d0,($a12010).l
loc_205ab8:
	move.w ($a12020).l,d0
	beq.s loc_205ab8
	cmp.w ($a12020).l,d0
	bne.s loc_205ab8
	move.w #$0,($a12010).l
loc_205ad0:
	move.w ($a12020).l,d0
	bne.s loc_205ad0
	move.w ($a12020).l,d0
	bne.s loc_205ad0
	rts
	dc.b $00,$00

sub_205ae4:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b00
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b00:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b40
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b42
loc_205b1c:
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
loc_205b40:
	rts
loc_205b42:
	addq.b #$1,d0
	bne.s loc_205b52
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b1c
loc_205b52:
	addq.b #$1,d0
	bne.s loc_205b66
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b1c
loc_205b66:
	addq.b #$1,d0
	bne.s loc_205b70
	move.b $2(a1,d1.w),$1c(a0)
loc_205b70:
	addq.b #$1,d0
	bne.s loc_205b78
	addq.b #$2,$24(a0)
loc_205b78:
	addq.b #$1,d0
	bne.s loc_205b86
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b86:
	addq.b #$1,d0
	bne.s loc_205b8e
	addq.b #$2,$25(a0)
loc_205b8e:
	rts
	.incbin 23440, 536

sub_205da8:
	rts
	.incbin 23978, 164
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e5e(pc,d0.w),d0
	jmp dat_205e5e(pc,d0.w)
dat_205e5e:
	.incbin 24158, 1260
loc_20634a:
	bset.b #$7,($ff156b).l
	jmp (sub_2038da).l
loc_206358:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063a6
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063a8(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20637c:
	move.l (a1)+,(a2)+
	dbf d0,loc_20637c
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063a6:
	rts
dat_2063a8:
	.incbin 25512, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2063de(pc,d0.w),d0
	jsr dat_2063de(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_2063d8
	jsr (sub_2038da).l
loc_2063d8:
	jmp (loc_2077da).l
dat_2063de:
	.incbin 25566, 382

sub_20655c:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_2065b8
	move.w $10(a0),d0
	bpl.s loc_206570
	neg.w d0
loc_206570:
	cmpi.w #$a00,d0
	bcs.s loc_2065b8
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
	bne.s loc_2065a4
	add.b ($ff156a).l,d1
loc_2065a4:
	add.w d1,d1
	move.w dat_2065ba(pc,d1.w),d1
	lea dat_2065ba(pc,d1.w),a1
loc_2065ae:
	move.w (a1)+,d1
	bmi.s loc_2065b8
	cmp.w d1,d0
	bne.s loc_2065ae
	bra.s loc_2065fa
loc_2065b8:
	rts
dat_2065ba:
	.incbin 26042, 64
loc_2065fa:
	jsr (sub_2077a4).l
	bne.s loc_20662a
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_20662a
	bset.b #$0,$22(a1)
loc_20662a:
	rts
	.incbin 26156, 216
loc_206704:
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
	bne.s loc_2067be
	move.b ($ff1593).l,($ff195b).l
loc_2067be:
	tst.b ($ff1522).l
	bpl.s loc_2067d4
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2067d4:
	rts

sub_2067d6:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206704
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
	bne.s loc_206890
	move.b ($ff1591).l,($ff195b).l
loc_206890:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2068b2
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2068b2:
	tst.b ($ff1522).l
	bpl.s loc_2068c8
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2068c8:
	rts

sub_2068ca:
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
	bpl.s loc_206906
	move.b d1,d0
	bpl.s loc_206900
	subq.b #$1,d0
loc_206900:
	addi.b #$20,d0
	bra.s loc_206910
loc_206906:
	move.b d1,d0
	bpl.s loc_20690c
	addq.b #$1,d0
loc_20690c:
	addi.b #$1f,d0
loc_206910:
	andi.b #$c0,d0
	beq.w loc_2069e0
	cmpi.b #$80,d0
	beq.w loc_206b7c
	andi.b #$38,d1
	bne.s loc_206928
	addq.w #$8,d2
loc_206928:
	cmpi.b #$40,d0
	beq.w loc_206c52
	bra.w loc_206ab4

sub_206934:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206bda
	cmpi.b #$80,d0
	beq.w loc_206b04
	cmpi.b #$c0,d0
	beq.w loc_206a44

sub_20695c:
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
loc_2069c0:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2069ce
	move.b ($f768).w,d3
	exg d0,d1
loc_2069ce:
	btst.l #$0,d3
	beq.s loc_2069d6
	move.b d2,d3
loc_2069d6:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2069e0:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20111e).l
	move.b #$0,d2
loc_2069fc:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a08
	move.b d2,d3
loc_206a08:
	rts

sub_206a0a:
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
	beq.s loc_206a42
	move.b #$0,d3
loc_206a42:
	rts
loc_206a44:
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
	bra.w loc_2069c0
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206ab4:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20128e).l
	move.b #$c0,d2
	bra.w loc_2069fc
	.incbin 27348, 48
loc_206b04:
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
	bra.w loc_2069c0

sub_206b74:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b7c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20111e).l
	move.b #$80,d2
	bra.w loc_2069fc
	.incbin 27552, 58
loc_206bda:
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
	bra.w loc_2069c0
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c52:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20128e).l
	move.b #$40,d2
	bra.w loc_2069fc
	.incbin 27766, 48

sub_206ca6:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206cca
	addi.w #$c,d3
	moveq #$a,d5
loc_206cca:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206cd8:
	tst.b $1(a1)
	bpl.s loc_206ce4
	move.b $20(a1),d0
	bne.s loc_206cf0
loc_206ce4:
	lea $40(a1),a1
	dbf d6,loc_206cd8
	moveq #$0,d0
	rts
loc_206cf0:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20708a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206d18
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206d1e
	bra.w loc_206ce4
loc_206d18:
	cmp.w d4,d0
	bhi.w loc_206ce4
loc_206d1e:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206d36
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206d3c
	bra.w loc_206ce4
loc_206d36:
	cmp.w d5,d0
	bhi.w loc_206ce4
loc_206d3c:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206db0
	cmpi.b #$c0,d1
	beq.w loc_206f90
	tst.b d1
	bmi.w sub_206e7a
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206d74
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206d72
	addq.b #$2,$24(a1)
loc_206d72:
	rts
loc_206d74:
	tst.w $12(a0)
	bpl.s loc_206d9e
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206dae
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206dae
	addq.b #$4,$25(a1)
	rts
loc_206d9e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206dae
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206dae:
	rts

sub_206db0:
	tst.b ($ff1521).l
	bne.s loc_206dca
	tst.b ($ff151f).l
	bne.s loc_206dca
	cmpi.b #$2,$1c(a0)
	bne.w sub_206e7a
loc_206dca:
	tst.b $21(a1)
	beq.s loc_206df4
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206df2
	bset.b #$7,$22(a1)
loc_206df2:
	rts
loc_206df4:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206e0c
	moveq #$6,d0
loc_206e0c:
	move.w d0,$3e(a1)
	move.w dat_206e6c(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206e26
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206e26:
	bsr.w sub_20962e
	move.w #$96,d0
	jsr (sub_2022c4).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206e5c
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206e64
	neg.w $12(a0)
	rts
loc_206e5c:
	addi.w #$100,$12(a0)
	rts
loc_206e64:
	subi.w #$100,$12(a0)
	rts
dat_206e6c:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206e7a:
	tst.b ($ff1521).l
	bne.s loc_206e8a
	tst.b ($ff151f).l
	beq.s loc_206e8e
loc_206e8a:
	moveq #$ffffffff,d0
	rts
loc_206e8e:
	nop
	tst.w $30(a0)
	bne.s loc_206e8a
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206ec4
	tst.w ($ff1512).l
	beq.w loc_206f2e
	jsr (sub_2077a4).l
	bne.s loc_206ec4
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206ec4:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206eda
	move.b #$0,($ff156f).l
loc_206eda:
	move.b #$4,$24(a0)
	bsr.w sub_20513a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206f0a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206f0a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206f18
	neg.w $10(a0)
loc_206f18:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206f2e:
	tst.w ($ff1588).l
	bne.w loc_206ec4

sub_206f38:
	tst.w ($ff1906).l
	bne.s loc_206f8c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20513a
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
loc_206f8c:
	moveq #$ffffffff,d0
	rts
loc_206f90:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207028
	cmpi.b #$23,d1
	beq.w loc_207028
	cmpi.b #$2d,d1
	beq.w loc_20707e
	cmpi.b #$31,d1
	beq.w loc_20707e
	cmpi.b #$35,d1
	beq.w loc_207070
	cmpi.b #$3a,d1
	beq.w loc_207070
	cmpi.b #$3b,d1
	beq.w loc_207070
	tst.b ($f7aa).w
	beq.w loc_207026
	cmpi.b #$1,($f7aa).w
	beq.s loc_206ff0
	cmpi.b #$4,($f7aa).w
	beq.s loc_207012
	cmpi.b #$5,($f7aa).w
	beq.s loc_207020
loc_206ff0:
	cmpi.b #$3c,d1
	blt.s loc_207026
	cmpi.b #$3f,d1
	bgt.s loc_207026
	bsr.w sub_206db0
	tst.b $20(a1)
	bne.s loc_20700a
	addq.b #$3,$21(a1)
loc_20700a:
	clr.b $20(a1)
	bra.w loc_207028
loc_207012:
	cmpi.b #$3f,d1
	beq.s loc_207034
	cmpi.b #$3e,d1
	beq.s loc_20702e
	bra.s loc_207026
loc_207020:
	cmpi.b #$3d,d1
	beq.s loc_20702e
loc_207026:
	rts
loc_207028:
	addq.b #$1,$21(a1)
	rts
loc_20702e:
	bsr.w sub_206e7a
	bra.s loc_207028
loc_207034:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20706e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20706e
	neg.w $10(a0)
loc_20706e:
	rts
loc_207070:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20707c
	addq.b #$1,$21(a1)
loc_20707c:
	rts
loc_20707e:
	btst.b #$2,$22(a0)
	beq.w sub_206db0
	bra.s loc_207028
dat_20708a:
	.incbin 28810, 126
loc_207108:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20711e
	move.l #$4000,(dat_207298).l
	bra.s loc_20713e
loc_20711e:
	addi.l #$2000,(dat_207298).l
	cmpi.l #$80000,(dat_207298).l
	bls.s loc_20713e
	move.l #$80000,(dat_207298).l
loc_20713e:
	move.l (dat_207298).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207150
	sub.l d0,$c(a0)
loc_207150:
	btst.b #$1,($f604).w
	beq.s loc_20715c
	add.l d0,$c(a0)
loc_20715c:
	btst.b #$2,($f604).w
	beq.s loc_207168
	sub.l d0,$8(a0)
loc_207168:
	btst.b #$3,($f604).w
	beq.s loc_207174
	add.l d0,$8(a0)
loc_207174:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f36).l
	move.w (a1),($ff194e).l
	lea (dat_20729c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2071b6
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2071b0
	move.b #$0,d1
loc_2071b0:
	move.b d1,($ff1904).l
loc_2071b6:
	btst.b #$7,($f605).w
	beq.s loc_2071d6
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2071d0
	add.b (a2),d1
loc_2071d0:
	move.b d1,($ff1904).l
loc_2071d6:
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
	beq.s loc_207262
	bsr.w sub_2077a4
	bne.s loc_207262
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
loc_207262:
	btst.b #$4,($f605).w
	beq.s loc_207292
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207292:
	jmp (sub_2038da).l
dat_207298:
	dc.b $00,$00,$40,$00
dat_20729c:
	.incbin 29340, 758

sub_207592:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2075a0:
	clr.l (a2)+
	dbf d0,loc_2075a0
	rts

sub_2075a8:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2075b6(pc,d0.w),d0
	jmp dat_2075b6(pc,d0.w)
dat_2075b6:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207856).l,a0
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
	bcc.s loc_2075f4
	moveq #$0,d6
loc_2075f4:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2075fc:
	cmp.w (a0),d6
	bls.s loc_20760e
	tst.b $4(a0)
	bpl.s loc_20760a
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20760a:
	addq.w #$8,a0
	bra.s loc_2075fc
loc_20760e:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20762e
loc_20761c:
	cmp.w (a0),d6
	bls.s loc_20762e
	tst.b $4(a0)
	bpl.s loc_20762a
	addq.b #$1,$1(a2)
loc_20762a:
	addq.w #$8,a0
	bra.s loc_20761c
loc_20762e:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207718
	bge.s loc_2076be
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20769a
loc_207668:
	cmp.w -$8(a0),d6
	bge.s loc_20769a
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20767e
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20767e:
	bsr.w sub_20773c
	bne.s loc_207688
	subq.w #$8,a0
	bra.s loc_207668
loc_207688:
	tst.b $4(a0)
	bpl.s loc_207698
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207698:
	addq.w #$8,a0
loc_20769a:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2076a6:
	cmp.w -$8(a0),d6
	bgt.s loc_2076b8
	tst.b -$4(a0)
	bpl.s loc_2076b4
	subq.b #$1,(a2)
loc_2076b4:
	subq.w #$8,a0
	bra.s loc_2076a6
loc_2076b8:
	move.l a0,($f770).w
	rts
loc_2076be:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2076d2:
	cmp.w (a0),d6
	bls.s loc_2076f4
	tst.b $4(a0)
	bpl.s loc_2076e0
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076e0:
	bsr.w sub_20773c
	beq.s loc_2076d2
	tst.b $4(a0)
	bpl.s loc_2076f4
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2076f4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207714
loc_207702:
	cmp.w (a0),d6
	bls.s loc_207714
	tst.b $4(a0)
	bpl.s loc_207710
	addq.b #$1,$1(a2)
loc_207710:
	addq.w #$8,a0
	bra.s loc_207702
loc_207714:
	move.l a0,($f774).w
loc_207718:
	rts

sub_20771a:
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

sub_20773c:
	bsr.s sub_20771a
	beq.s loc_20774e
	tst.b $4(a0)
	bpl.s loc_207754
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207754
loc_20774e:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207754:
	bsr.w sub_2077a4
	bne.s loc_2077a2
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
	bpl.s loc_207784
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207784:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207796
	nop
	nop
	nop
	nop
loc_207796:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2077a2:
	rts

sub_2077a4:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2077ac:
	tst.b (a1)
	beq.s loc_2077b8
	lea $40(a1),a1
	dbf d0,loc_2077ac
loc_2077b8:
	rts

sub_2077ba:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2077d8
loc_2077cc:
	tst.b (a1)
	beq.s loc_2077d8
	lea $40(a1),a1
	dbf d0,loc_2077cc
loc_2077d8:
	rts
loc_2077da:
	move.w $8(a0),d0
	tst.b $1(a0)
	bmi.s loc_207848
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207848
loc_2077fc:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20783e
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207836
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20782e
	moveq #$0,d1
	bra.s loc_207836
loc_20782e:
	cmpi.w #$3,d1
	bcs.s loc_207836
	moveq #$2,d1
loc_207836:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20783e:
	jsr (sub_203986).l
	moveq #$1,d0
	rts
loc_207848:
	btst.b #$7,($ff152e).l
	bne.s loc_2077fc
	moveq #$0,d0
	rts
dat_207856:
	.incbin 30806, 210
loc_207928:
	or.b d0,d0
	dc.b $16,$40
loc_20792c:
	andi.w #$9020,($8000).w
	.incbin 31026, 438

sub_207ae8:
	btst.b #$3,$22(a0)
	beq.s loc_207b58
	btst.b #$3,$22(a1)
	beq.s loc_207b58
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207b58
	tst.b $2a(a1)
	beq.s loc_207b1a
	move.w #$ab,d0
	jsr (sub_2022c4).l
loc_207b1a:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207b46
	cmpi.b #$17,$1c(a1)
	beq.s loc_207b46
	bclr.b #$0,$2c(a1)
loc_207b46:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207b58
	bclr.b #$1,$22(a1)
loc_207b58:
	rts

sub_207b5a:
	cmpi.b #$4,$24(a1)
	bne.s loc_207b6c
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207b6c:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207bcc
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207b8e
	bclr.b #$3,$22(a0)
	bra.w sub_207ae8
loc_207b8e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207bcc
	tst.b ($ff195b).l
	beq.s loc_207bb6
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207bc6
loc_207bb6:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207bc6:
	move.b #$0,$1c(a1)
loc_207bcc:
	bset.b #$3,$22(a1)
	beq.s loc_207bee
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207c26
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207bee:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207c1a
	cmpi.b #$2,$24(a0)
	beq.s loc_207c20
loc_207c1a:
	move.w $10(a1),$14(a1)
loc_207c20:
	bclr.b #$1,$22(a1)
loc_207c26:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_207c36:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207eea
	btst.b #$6,$2c(a1)
	bne.w loc_207eea
	cmpi.b #$6,$24(a1)
	bcc.w loc_207eea
	tst.b $0(a1)
	beq.w loc_207eea
	tst.b $1(a0)
	bpl.w loc_207eea
	tst.b ($ff1906).l
	bne.w loc_207eea
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207eea
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207eea
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207ca4
	btst.b #$3,$22(a0)
	bne.s loc_207cb6
	bra.w loc_207eea
loc_207ca4:
	cmpi.b #$1,$25(a0)
	bne.s loc_207cb6
	tst.w $12(a1)
	beq.s loc_207cb6
	bmi.w loc_207eea
loc_207cb6:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207eea
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207eea
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207cec
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207cec:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207cfa
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207cfa:
	cmp.w d4,d5
	bcs.w loc_207d8e
	cmpi.b #$1,$25(a0)
	beq.w loc_207eea
	cmpi.b #$a,$0(a0)
	bne.s loc_207d1c
	btst.b #$1,$22(a1)
	bne.w loc_207eea
loc_207d1c:
	cmpi.b #$4,d5
	bls.w loc_207eea
	bsr.w sub_207f3a
	move.l d0,-(a7)
	bsr.w sub_207ae8
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207d46
	tst.w $10(a1)
	beq.s loc_207d76
	bpl.s loc_207d4e
	bra.s loc_207d76
loc_207d46:
	tst.w $10(a1)
	beq.s loc_207d76
	bpl.s loc_207d76
loc_207d4e:
	bsr.w sub_207efa
	btst.b #$1,$22(a1)
	bne.s loc_207d6c
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207d6c:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207d76:
	bsr.w sub_207fb0
	bsr.w sub_207efa
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207d8e:
	cmpi.b #$19,$0(a0)
	bne.s loc_207da0
	btst.b #$2,$22(a1)
	bne.w loc_207eea
loc_207da0:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207db6
	bmi.w loc_207e86
loc_207db6:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207dc8
	tst.w $12(a1)
	beq.s loc_207dc8
	bmi.w loc_207eea
loc_207dc8:
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
	beq.s loc_207e14
	bpl.s loc_207df4
	neg.b d0
loc_207df4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068ca).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e14
	tst.w $10(a0)
	bpl.s loc_207e10
	neg.w d1
loc_207e10:
	add.w d1,$8(a1)
loc_207e14:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207e7e
	tst.w $12(a0)
	bmi.s loc_207e52
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20695c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e52
	add.w d1,$c(a1)
	bra.w loc_207eea
loc_207e52:
	tst.w $12(a0)
	bpl.s loc_207e7e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b74).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e7e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f38).l
	movem.l (a7)+,a0-a1
	bra.s loc_207eea
loc_207e7e:
	bsr.w sub_207b5a
	moveq #$1,d0
	rts
loc_207e86:
	cmpi.b #$1,$25(a0)
	beq.s loc_207eea
	cmpi.b #$9,$0(a0)
	beq.s loc_207eea
	cmpi.b #$a,$0(a0)
	bne.s loc_207eb0
	cmpi.b #$2,$25(a0)
	beq.s loc_207ed0
	btst.b #$1,$1(a0)
	bne.s loc_207ed0
	bra.s loc_207eea
loc_207eb0:
	btst.b #$1,$22(a1)
	bne.s loc_207ed0
	tst.w $12(a0)
	beq.s loc_207ed0
	bmi.s loc_207ed0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f38).l
	movem.l (a7)+,a0-a1
loc_207ed0:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_207fb0
	bsr.w sub_207ae8
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207eea:
	bsr.w sub_207fb0
	bsr.w sub_207ae8
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207efa:
	tst.w $10(a0)
	beq.s loc_207f38
	cmpi.b #$a,$0(a0)
	beq.s loc_207f38
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207f14
	neg.b d0
loc_207f14:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068ca).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207f38
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f38).l
	movem.l (a7)+,a0-a1
loc_207f38:
	rts

sub_207f3a:
	cmpi.b #$a,$0(a0)
	bne.s loc_207f4a
	move.b #$0,$20(a1)
	rts
loc_207f4a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207f9e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_207fae
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207f6c
	tst.w $10(a2)
	beq.s loc_207fae
loc_207f6c:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207f7e
	cmp.w $8(a2),d1
	bcs.s loc_207fae
	bra.s loc_207f84
loc_207f7e:
	cmp.w $8(a2),d1
	bcc.s loc_207fae
loc_207f84:
	cmpi.b #$15,$0(a0)
	beq.s loc_207fae
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f38).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_207f9e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_207fae:
	rts

sub_207fb0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207fca
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_207fca
	move.b #$0,$20(a1)
loc_207fca:
	rts
	.incbin 32716, 3226
loc_208c66:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208c94(pc,d0.w),d0
	jsr dat_208c94(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208c92
	cmpi.w #$5a,($f786).w
	bcs.s loc_208c8c
	btst.b #$0,($ff1505).l
	bne.s loc_208c92
loc_208c8c:
	jmp (sub_2038da).l
loc_208c92:
	rts
dat_208c94:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20926e,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208cc8
	move.b #$13,$1a(a0)
loc_208cc8:
	rts
loc_208cca:
	tst.b ($ff0f01).l
	beq.s loc_208cd8
	jmp (sub_203986).l
loc_208cd8:
	cmpi.b #$a,$28(a0)
	beq.w loc_208c66
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208cfc(pc,d0.w),d0
	jsr dat_208cfc(pc,d0.w)
	jsr (sub_2038da).l
	jmp (loc_2077da).l
dat_208cfc:
	.incbin 36092, 282

sub_208e16:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208e4e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208e46
	moveq #$0,d1
	bra.s loc_208e4e
loc_208e46:
	cmpi.w #$3,d1
	bcs.s loc_208e4e
	moveq #$2,d1
loc_208e4e:
	add.w d1,d0
	rts

sub_208e52:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208e74
	tst.b ($ff1956).l
	beq.s loc_208e6c
	tst.b $29(a0)
	bne.s loc_208e74
	rts
loc_208e6c:
	tst.b $29(a0)
	beq.s loc_208e74
	rts
loc_208e74:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207c36).l
	tst.b $28(a0)
	bne.s loc_208e96
	tst.b ($ff0f01).l
	beq.s loc_208e96
	jmp (loc_2077da).l
loc_208e96:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208cca
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208eae(pc,d0.w),d1
	jmp dat_208eae(pc,d1.w)
dat_208eae:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20926e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208ef8
	tst.b $29(a0)
	bne.s loc_208ef8
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208ef8:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208e16
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208f24
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208f24:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208f7e
	move.b $25(a0),d0
	beq.s loc_208f5e
	bsr.w sub_203822
	jsr (sub_206a0a).l
	tst.w d1
	bpl.w loc_208f6c
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208f6c
loc_208f5e:
	tst.b $1(a0)
	bpl.s loc_208f6c
	lea ($d000).w,a1
	bsr.w sub_208e52
loc_208f6c:
	tst.w ($ff190e).l
	bne.s loc_208f7e
	lea (dat_2091e6).l,a1
	bsr.w sub_205ae4
loc_208f7e:
	bsr.w sub_2038da
	jmp (loc_2077da).l
	.incbin 36744, 606
dat_2091e6:
	.incbin 37350, 586
loc_209430:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209444(pc,d0.w),d0
	jsr dat_209444(pc,d0.w)
	jmp (sub_2038da).l
dat_209444:
	.incbin 37956, 120

sub_2094bc:
	ori.b #$0,d3
	btst.l d0,d0
	.incbin 38082, 20
	tst.b $28(a0)
	bmi.w loc_209430
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094ec(pc,d0.w),d0
	jmp dat_2094ec(pc,d0.w)
dat_2094ec:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209586,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20951c
	move.b #$3,$1a(a0)
	bra.s loc_20953c
loc_20951c:
	tst.w ($ff1588).l
	beq.s loc_20952a
	move.b #$2,$1a(a0)
loc_20952a:
	tst.b $28(a0)
	beq.s loc_20953c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20953c:
	tst.b $28(a0)
	bne.s loc_209580
	tst.b $29(a0)
	beq.s loc_20956c
	tst.w ($ff1512).l
	beq.s loc_209558
	bclr.b #$5,$2(a0)
	bra.s loc_209580
loc_209558:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209580
	eori.b #$20,$2(a0)
	bra.s loc_209580
loc_20956c:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209580
	move.b #$2,$1a(a0)
loc_209580:
	jmp (sub_2038da).l
	.incbin 38278, 168

sub_20962e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20964a
	move.l d1,(a3)
loc_20964a:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_209674
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205aa4).l
loc_209674:
	rts
loc_209676:
	tst.w ($ff1588).l
	beq.s loc_2096cc
	bsr.w sub_2098c8
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
	lea (dat_209a28).l,a2
	moveq #$2,d6
	bsr.w sub_209a80
	bra.w loc_209726
loc_2096cc:
	tst.b ($ff1511).l
	beq.s loc_2096f0
	bpl.s loc_2096da
	bsr.w sub_209872
loc_2096da:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209962
loc_2096f0:
	tst.b ($ff150f).l
	beq.s loc_209726
	bpl.s loc_2096fe
	bsr.w sub_20985e
loc_2096fe:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209722
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209722:
	bsr.w sub_209958
loc_209726:
	tst.w ($ff1588).l
	bne.w loc_2097d2
	tst.b ($ff1510).l
	beq.w loc_2097d2
	tst.w ($f63a).w
	bne.w loc_2097d2
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209830
	tst.b ($f7cc).w
	bne.s loc_20977c
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20977c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20977c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20977c
	move.b #$9,(a1)
loc_20977c:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209a6e
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209a78
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_2097ce
	move.w #$63,d1
loc_2097ce:
	bsr.w sub_209a78
loc_2097d2:
	tst.b ($ff150e).l
	beq.s loc_2097e4
	clr.b ($ff150e).l
	bsr.w sub_209a4e
loc_2097e4:
	tst.b ($f7d6).w
	beq.s loc_20982e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209804
	move.l #$6d400001,d0
loc_209804:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_2098e6
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209824
	move.l #$6e800001,d0
loc_209824:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_2098e6
loc_20982e:
	rts
loc_209830:
	btst.b #$7,($ff152e).l
	bne.s loc_20985c
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206f38
	move.b #$1,($ff150c).l
loc_20985c:
	rts

sub_20985e:
	move.l #$73600002,($c00004).l
	lea dat_2098c4(pc),a2
	move.w #$2,d2
	bra.s loc_20988e

sub_209872:
	lea ($c00000).l,a6
	bsr.w sub_209a4e
	move.l #$70600002,($c00004).l
	lea dat_2098bc(pc),a2
	move.w #$6,d2
loc_20988e:
	lea (dat_2330bc).l,a1
loc_209894:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_2098b0
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_2098a4:
	move.l (a3)+,(a6)
	dbf d1,loc_2098a4
loc_2098aa:
	dbf d2,loc_209894
	rts
loc_2098b0:
	move.l #$0,(a6)
	dbf d1,loc_2098b0
	bra.s loc_2098aa
dat_2098bc:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_2098c4:
	dc.b $ff,$ff,$00,$00

sub_2098c8:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209a44
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209a44

sub_2098e6:
	lea (dat_209a20).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2098f6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2098fa:
	sub.l d3,d1
	bcs.s loc_209902
	addq.w #$1,d2
	bra.s loc_2098fa
loc_209902:
	add.l d3,d1
	tst.w d2
	beq.s loc_20990c
	move.w #$1,d4
loc_20990c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209918
	tst.w d6
	bne.s loc_20994a
loc_209918:
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
loc_20993e:
	addi.l #$400000,d0
	dbf d6,loc_2098f6
	rts
loc_20994a:
	moveq #$f,d5
loc_20994c:
	move.l #$0,(a6)
	dbf d5,loc_20994c
	bra.s loc_20993e

sub_209958:
	lea (dat_209a28).l,a2
	moveq #$2,d6
	bra.s loc_20996a

sub_209962:
	lea (dat_209a1c).l,a2
	moveq #$5,d6
loc_20996a:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209972:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209976:
	sub.l d3,d1
	bcs.s loc_20997e
	addq.w #$1,d2
	bra.s loc_209976
loc_20997e:
	add.l d3,d1
	tst.w d2
	beq.s loc_209988
	move.w #$1,d4
loc_209988:
	tst.w d4
	beq.s loc_2099b6
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
loc_2099b6:
	addi.l #$400000,d0
	dbf d6,loc_209972
	rts
	.incbin 39362, 32
loc_2099e2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2099e6:
	sub.l d3,d1
	bcs.s loc_2099ee
	addq.w #$1,d2
	bra.s loc_2099e6
loc_2099ee:
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
	dbf d6,loc_2099e2
	rts
dat_209a1c:
	dc.b $00,$01,$86,$a0
dat_209a20:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209a28:
	dc.b $00,$00,$00,$64
dat_209a2c:
	dc.b $00,$00,$00,$0a
dat_209a30:
	dc.b $00,$00,$00,$01
dat_209a34:
	.incbin 39476, 16

sub_209a44:
	moveq #$3,d6
	lea (dat_209a34).l,a2
	bra.s sub_209a80

sub_209a4e:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209a64
	moveq #$9,d1
loc_209a64:
	lea (dat_209a30).l,a2
	moveq #$0,d6
	bra.s sub_209a80

sub_209a6e:
	lea (dat_209a30).l,a2
	moveq #$0,d6
	bra.s sub_209a80

sub_209a78:
	lea (dat_209a2c).l,a2
	moveq #$1,d6

sub_209a80:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209a88:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a8c:
	sub.l d3,d1
	bcs.s loc_209a94
	addq.w #$1,d2
	bra.s loc_209a8c
loc_209a94:
	add.l d3,d1
	tst.w d2
	beq.s loc_209a9e
	move.w #$1,d4
loc_209a9e:
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
	dbf d6,loc_209a88
	rts
	.incbin 39636, 6262
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b358(pc,d0.w),d0
	jmp dat_20b358(pc,d0.w)
dat_20b358:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20ba56,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ba16).l,a2
loc_20b3a6:
	jsr (sub_2077a4).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20ba56,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b3f8
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b3f8:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b3a6
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b420
	bge.s loc_20b416
	neg.w d0
loc_20b416:
	add.w d0,$a(a0)
	jmp (sub_2038da).l
loc_20b420:
	addq.b #$4,$24(a0)
	jmp (sub_2038da).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b444
	bge.s loc_20b43a
	neg.w d0
loc_20b43a:
	add.w d0,$8(a0)
	jmp (sub_2038da).l
loc_20b444:
	addq.b #$4,$24(a0)
	jmp (sub_2038da).l
	tst.b $1e(a0)
	beq.s loc_20b45e
	subq.b #$1,$1e(a0)
	jmp (sub_2038da).l
loc_20b45e:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b478
	bge.s loc_20b46e
	neg.w d0
loc_20b46e:
	add.w d0,$a(a0)
	jmp (sub_2038da).l
loc_20b478:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20248e).l
	tst.b $1e(a0)
	beq.s loc_20b49a
	subq.b #$1,$1e(a0)
	jmp (sub_2038da).l
loc_20b49a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b4b4
	bge.s loc_20b4aa
	neg.w d0
loc_20b4aa:
	add.w d0,$8(a0)
	jmp (sub_2038da).l
loc_20b4b4:
	jmp (sub_203986).l
	tst.l ($f680).w
	bne.s loc_20b4ce
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203986).l
loc_20b4ce:
	rts
	.incbin 46288, 100
loc_20b534:
	jsr (sub_2077a4).l
	move.w #$168,$32(a1)
	move.b #$3a,$0(a1)
	move.b #$4,$24(a1)
	move.w #$83c4,$2(a1)
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b57c
	move.w #$82f2,$2(a1)
	move.l #$20b7b2,$4(a1)
	tst.b ($ff156a).l
	beq.s loc_20b594
	move.l #$20b7c6,$4(a1)
	bra.s loc_20b594
loc_20b57c:
	move.l #$20b7a8,$4(a1)
	tst.b ($ff156a).l
	beq.s loc_20b594
	move.l #$20b7bc,$4(a1)
loc_20b594:
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $7(a2,d2.w),$1a(a1)
	cmpi.b #$2,d1
	bne.s loc_20b5c0
	move.b ($ff1507).l,d2
	add.b d2,$1a(a1)
loc_20b5c0:
	addq.b #$1,d1
	dbf d6,loc_20b534
	rts
	.incbin 46536, 1102
dat_20ba16:
	.incbin 47638, 344

sub_20bb6e:
	rts
	.incbin 47984, 1446
loc_20c116:
	cmpi.b #$1,$36(a0)
	beq.s loc_20c12c
	cmpi.b #$2,$36(a0)
	beq.s loc_20c132
	move.w #$400,d0
	bra.s loc_20c136
loc_20c12c:
	move.w #$800,d0
	bra.s loc_20c136
loc_20c132:
	move.w #$2aa,d0
loc_20c136:
	move.w d0,$34(a0)
	cmp.w $10(a0),d0
	blt.s loc_20c142
	neg.w d0
loc_20c142:
	move.w d0,$30(a0)
	move.b #$8,$24(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20c1b8
	.incbin 49494, 98
loc_20c1b8:
	clr.b $2d(a0)
	clr.w $2a(a0)
	rts
	.incbin 49602, 278
	move.b #$2,$21(a0)
	rts
	clr.b $20(a0)
	clr.b $21(a0)
	bra.w loc_20c116
	.incbin 49900, 4248
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d398(pc,d0.w),d0
	jsr dat_20d398(pc,d0.w)
	jmp (sub_2038da).l
dat_20d398:
	dc.b $00,$06,$00,$7a,$01,$2c
	move.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.w #$451c,$2(a0)
	move.l #$20d4fc,$4(a0)
	addq.b #$2,$24(a0)
	tst.b $28(a0)
	bne.s loc_20d3de
	jsr (sub_2077ba).l
	bne.s loc_20d3de
	move.b #$36,$0(a1)
	move.b #$1,$28(a1)
	move.w a1,$2e(a0)
	move.w a0,$2e(a1)
loc_20d3de:
	tst.b $28(a0)
	bne.s loc_20d3f8
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$24(a0)
	rts
loc_20d3f8:
	move.b #$1,$1a(a0)
	move.b #$8,$19(a0)
	move.b #$70,$16(a0)
	move.b #$4,$24(a0)
	rts
	bsr.w sub_20d488
	move.w d0,$30(a0)
	move.w #$160,$32(a0)
	move.w ($f704).w,d0
	subi.w #$160,d0
	ext.l d0
	divs.w #$3,d0
	sub.w d0,$32(a0)
	move.w $32(a0),d0
	addi.w #$c,d0
	move.w ($f704).w,d1
	cmp.w d0,d1
	bge.s loc_20d462
	move.w $30(a0),$8(a0)
	move.w $32(a0),$c(a0)
	move.b #$0,$1a(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	rts
loc_20d462:
	move.w $30(a0),$8(a0)
	move.w $32(a0),$c(a0)
	addi.w #$15c,$c(a0)
	move.b #$1,$1a(a0)
	move.b #$8,$19(a0)
	move.b #$70,$16(a0)
	rts

sub_20d488:
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
	divu.w #$140,d0
	cmpi.w #$30,d0
	ble.s loc_20d49e
	move.w #$0,d0
loc_20d49e:
	move.l d0,d1
	addq.w #$1,d0
	andi.l #$ffff,d0
	mulu.w #$140,d0
	addi.w #$100,d0
	swap d1
	andi.l #$ffff,d1
	mulu.w #$100,d1
	divu.w #$140,d1
	sub.w d1,d0
	rts
	movea.w $2e(a0),a1
	move.w $30(a1),$8(a0)
	move.w $32(a1),$c(a0)
	addi.w #$7c,$c(a0)
	rts
	.incbin 54492, 3758
loc_20e38a:
	jmp (sub_203986).l
	.incbin 58256, 96
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_2077a4).l
	bne.w loc_20e38a
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_2077a4).l
	bne.w loc_20e38a
	move.b #$28,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_2077a4).l
	bne.w loc_20e38a
	move.b #$28,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$62,$8(a1)
	addi.w #$0,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20e4b2
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20e4b2:
	lea ($d000).w,a1
	jmp (sub_207c36).l
	.incbin 58556, 1564
	tst.b $24(a0)
	bne.s loc_20eb1c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$450c,$2(a0)
	move.l #$20ec32,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20eb42(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20eb1c:
	tst.b $29(a0)
	beq.s loc_20eb26
	bsr.w sub_20eb4e
loc_20eb26:
	lea ($d000).w,a1
	jsr (sub_207c36).l
	beq.s loc_20eb36
	clr.b $20(a1)
loc_20eb36:
	jsr (sub_2038da).l
	jmp (loc_2077da).l
dat_20eb42:
	dc.b $0b,$10,$20,$10,$30,$10,$40,$10
	dc.b $0b,$20,$0b,$30

sub_20eb4e:
	btst.b #$7,($f7a7).w
	beq.s loc_20eb94
	tst.w $2a(a0)
	bne.s loc_20eb7e
	move.w #$20,d0
	move.w #$200,d1
	btst.b #$7,$29(a0)
	beq.s loc_20eb70
	neg.w d0
	neg.w d1
loc_20eb70:
	move.w d1,$12(a0)
	move.w $c(a0),$2a(a0)
	add.w d0,$2a(a0)
loc_20eb7e:
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	move.w $c(a0),d0
	cmp.w $2a(a0),d0
	beq.s loc_20eb96
loc_20eb94:
	rts
loc_20eb96:
	clr.w $2a(a0)
	move.b $29(a0),d0
	andi.b #$f,d0
	subq.b #$1,d0
	beq.w loc_20ec16
	andi.b #$f0,$29(a0)
	add.b d0,$29(a0)
	btst.b #$5,$29(a0)
	bne.s loc_20ec14
	btst.b #$4,$29(a0)
	beq.s loc_20ebdc
	addq.b #$1,$1a(a0)
	cmpi.b #$1,$1a(a0)
	bne.s loc_20ebd4
	move.b #$4,$1a(a0)
loc_20ebd4:
	subi.w #$10,$c(a0)
	bra.s loc_20ebf4
loc_20ebdc:
	subq.b #$1,$1a(a0)
	cmpi.b #$3,$1a(a0)
	bne.s loc_20ebee
	move.b #$0,$1a(a0)
loc_20ebee:
	addi.w #$10,$c(a0)
loc_20ebf4:
	moveq #$0,d0
	move.b $1a(a0),d0
	add.w d0,d0
	lea (dat_20eb42).l,a1
	adda.w d0,a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20ec14:
	rts
loc_20ec16:
	bclr.b #$7,($f7a7).w
	btst.b #$6,$29(a0)
	beq.s loc_20ec2a
	clr.b $29(a0)
	rts
loc_20ec2a:
	addq.l #$4,a7
	jmp (sub_203986).l
	.incbin 60466, 2194

sub_20f4c4:
	jmp (loc_206358).l
dat_20f4ca:
	.incbin 62666, 16
dat_20f4da:
	.incbin 62682, 1690
	tst.b $24(a0)
	bne.s loc_20fb9e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20fbde,$4(a0)
loc_20fb9e:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20fbbe
	lea ($d000).w,a1
	jsr (sub_2094bc).l
	sne $2a(a0)
	bra.s loc_20fbd2
loc_20fbbe:
	tst.b $2a(a0)
	beq.s loc_20fbd2
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr ($20936e).l
loc_20fbd2:
	jsr (sub_2038cc).l
	jmp (loc_207928).l
	.incbin 64478, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fc06(pc,d0.w),d0
	jsr dat_20fc06(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_20792c).l
dat_20fc06:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20fdfa,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20fc6a
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20fc6a
	addi.w #$2000,$2(a0)
loc_20fc6a:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20fcb8(pc,d0.w),d0
	jsr dat_20fcb8(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20fca6
	cmp.b $30(a0),d0
	bne.s loc_20fca4
	jsr (sub_2038cc).l
loc_20fca4:
	rts
loc_20fca6:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20fcb6
	jsr (sub_2038cc).l
loc_20fcb6:
	rts
dat_20fcb8:
	.incbin 64696, 18
	lea dat_20fcd8(pc),a2
	move.b #$b,$3d(a0)
	bra.w loc_20fd04
dat_20fcd8:
	.incbin 64728, 44
loc_20fd04:
	tst.b $3a(a0)
	bne.s loc_20fd4a
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
	beq.s loc_20fd4a
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20fd4a:
	subq.b #$1,$3a(a0)
	bne.s loc_20fd62
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20fd62
	clr.b $3c(a0)
loc_20fd62:
	rts
	lea dat_20fd72(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20fd04
dat_20fd72:
	.incbin 64882, 62
	lea dat_20fdbe(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20fd04
dat_20fdbe:
	.incbin 64958, 16
	move.b $28(a0),d0
	subq.b #$4,d0
	bcc.s loc_20fdd8
	moveq #$0,d0
loc_20fdd8:
	move.b d0,$1a(a0)
	rts
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20fde8
	moveq #$0,d0
loc_20fde8:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 65018, 154
	jmp (loc_20634a).l
	.incbin 65178, 65894
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
	.incbin 223396, 38748
