; R11D__.MMD
; disassembled from the disc; code only, data comes from data/R11D__.MMD at build time
	.file "R11D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$2e
	jmp (loc_201ba4).l
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
	bsr.w sub_2020da
	bsr.w sub_202082
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20141e

sub_200184:
	lea (dat_200244).l,a0
	subq.b #$1,($f7b7).w
	bpl.s loc_2001ba
	move.b #$7,($f7b7).w
	moveq #$0,d0
	move.b ($f7b0).w,d0
	cmpi.b #$2,d0
	bne.s loc_2001a6
	moveq #$0,d0
	bra.s loc_2001a8
loc_2001a6:
	addq.b #$1,d0
loc_2001a8:
	move.b d0,($f7b0).w
	lsl.w #$3,d0
	lea ($fb6a).w,a1
	move.l $0(a0,d0.w),(a1)+
	move.l $4(a0,d0.w),(a1)
loc_2001ba:
	adda.w #$18,a0
	subq.b #$1,($f7b8).w
	bpl.s loc_2001f2
	move.b #$5,($f7b8).w
	moveq #$0,d0
	move.b ($f7b1).w,d0
	cmpi.b #$2,d0
	bne.s loc_2001da
	moveq #$0,d0
	bra.s loc_2001dc
loc_2001da:
	addq.b #$1,d0
loc_2001dc:
	move.b d0,($f7b1).w
	andi.w #$3,d0
	lsl.w #$3,d0
	lea ($fb58).w,a1
	move.l $0(a0,d0.w),(a1)+
	move.l $4(a0,d0.w),(a1)
loc_2001f2:
	lea ($f7b9).w,a5
	lea ($f7b2).w,a4
	lea (dat_200274).l,a1
	lea (dat_200286).l,a2
	subq.b #$1,(a5)
	bpl.s loc_20023a
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
	bcs.s loc_200226
	moveq #$0,d0
loc_200226:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_20023a:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200244:
	.incbin 580, 48
dat_200274:
	.incbin 628, 18
dat_200286:
	dc.b $00,$0e,$00,$0c,$00,$0a,$00,$08
	dc.b $00,$06

sub_200290:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2002a2:
	move.w d1,(a0)+
	dbf d0,loc_2002a2
	move.w #$15,d4
loc_2002ac:
	move.b #$12,($f62a).w
	bsr.w sub_200762
	bsr.s sub_2002c2
	bsr.w sub_2024a0
	dbf d4,loc_2002ac
	rts

sub_2002c2:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002d8:
	bsr.s sub_200306
	dbf d0,loc_2002d8
	cmpi.b #$1,($ff1506).l
	bne.s loc_200304
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002fe:
	bsr.s sub_200306
	dbf d0,loc_2002fe
loc_200304:
	rts

sub_200306:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20032e
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20031c
	move.w d1,(a0)+
	rts
loc_20031c:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_20032a
	move.w d1,(a0)+
	rts
loc_20032a:
	addq.w #$2,(a0)+
	rts
loc_20032e:
	addq.w #$2,a0
	rts

sub_200332:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20033c:
	move.b #$12,($f62a).w
	bsr.w sub_200762
	bsr.s sub_200352
	bsr.w sub_2024a0
	dbf d4,loc_20033c
	rts

sub_200352:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200362:
	bsr.s sub_200380
	dbf d0,loc_200362
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200378:
	bsr.s sub_200380
	dbf d0,loc_200378
	rts

sub_200380:
	move.w (a0),d2
	beq.s loc_2003ac
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200390
	subq.w #$2,(a0)+
	rts
loc_200390:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_20039e
	subi.w #$20,(a0)+
	rts
loc_20039e:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_2003ac
	subi.w #$200,(a0)+
	rts
loc_2003ac:
	addq.w #$2,a0
	rts

sub_2003b0:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003ca:
	move.w d1,(a0)+
	dbf d0,loc_2003ca
	move.w #$15,d4
loc_2003d4:
	move.b #$12,($f62a).w
	bsr.w sub_200762
	bsr.s sub_2003ea
	bsr.w sub_2024a0
	dbf d4,loc_2003d4
	rts

sub_2003ea:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200400:
	bsr.s sub_20042e
	dbf d0,loc_200400
	cmpi.b #$1,($ff1506).l
	bne.s loc_20042c
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200426:
	bsr.s sub_20042e
	dbf d0,loc_200426
loc_20042c:
	rts

sub_20042e:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20045a
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200446
	cmp.w d2,d1
	bcs.s loc_200446
	move.w d1,(a0)+
	rts
loc_200446:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200456
	cmp.w d2,d1
	bcs.s loc_200456
	move.w d1,(a0)+
	rts
loc_200456:
	subq.w #$2,(a0)+
	rts
loc_20045a:
	addq.w #$2,a0
	rts

sub_20045e:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200468:
	move.b #$12,($f62a).w
	bsr.w sub_200762
	bsr.s sub_20047e
	bsr.w sub_2024a0
	dbf d4,loc_200468
	rts

sub_20047e:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20048e:
	bsr.s sub_2004ac
	dbf d0,loc_20048e
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004a4:
	bsr.s sub_2004ac
	dbf d0,loc_2004a4
	rts

sub_2004ac:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004e8
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_2004c4
	addq.w #$2,(a0)+
	rts
loc_2004c4:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004d6
	addi.w #$20,(a0)+
	rts
loc_2004d6:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004e8
	addi.w #$200,(a0)+
	rts
loc_2004e8:
	addq.w #$2,a0
	rts

sub_2004ec:
	lea (dat_200558).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200500:
	move.l (a2)+,(a3)+
	dbf d7,loc_200500
	rts

sub_200508:
	lea (dat_200558).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200518:
	move.l (a2)+,(a3)+
	dbf d7,loc_200518
	rts
	.incbin 1312, 18
	move.w (a1)+,d7
loc_200534:
	move.l (a2)+,(a3)+
	dbf d7,loc_200534
	rts
	.incbin 1340, 28
dat_200558:
	.incbin 1368, 522

sub_200762:
	move.w #$2300,sr
loc_200766:
	tst.b ($f62a).w
	bne.s loc_200766
	rts

sub_20076e:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200786(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200786(pc,d0.w),d0
	rts
dat_200786:
	.incbin 1926, 640

sub_200a06:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a62
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a20
	neg.w d3
loc_200a20:
	tst.w d4
	bpl.w loc_200a28
	neg.w d4
loc_200a28:
	cmp.w d3,d4
	bcc.w loc_200a3a
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a6c(pc,d4.w),d0
	bra.s loc_200a44
loc_200a3a:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a6c(pc,d3.w),d0
loc_200a44:
	tst.w d1
	bpl.w loc_200a50
	neg.w d0
	addi.w #$80,d0
loc_200a50:
	tst.w d2
	bpl.w loc_200a5c
	neg.w d0
	addi.w #$100,d0
loc_200a5c:
	movem.l (a7)+,d3-d4
	rts
loc_200a62:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a6c:
	.incbin 2668, 258

sub_200b6e:
	btst.b #$3,$22(a0)
	beq.s loc_200b82
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b82:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200ba4
	move.b $26(a0),d0
	bpl.s loc_200b9e
	subq.b #$1,d0
loc_200b9e:
	addi.b #$20,d0
	bra.s loc_200bb0
loc_200ba4:
	move.b $26(a0),d0
	bpl.s loc_200bac
	addq.b #$1,d0
loc_200bac:
	addi.b #$1f,d0
loc_200bb0:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e3a
	cmpi.b #$80,d0
	beq.w loc_200d98
	cmpi.b #$c0,d0
	beq.w loc_200cfc
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
	bsr.w sub_2010c4
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
	bsr.w sub_2010c4
	move.w (a7)+,d0
	bsr.w sub_200cd0
	tst.w d1
	beq.s loc_200c3e
	bpl.s loc_200c40
	cmpi.w #$fff2,d1
	blt.s loc_200c66
	add.w d1,$c(a0)
loc_200c3e:
	rts
loc_200c40:
	cmpi.w #$e,d1
	bgt.s loc_200c4c
loc_200c46:
	add.w d1,$c(a0)
	rts
loc_200c4c:
	tst.b $38(a0)
	bne.s loc_200c46
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c66:
	rts
	.incbin 3176, 34
loc_200c8a:
	rts
	.incbin 3212, 68

sub_200cd0:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cde
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cde:
	btst.l #$0,d2
	bne.s loc_200cea
	move.b d2,$26(a0)
	rts
loc_200cea:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cfc:
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
	bsr.w sub_201234
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
	bsr.w sub_201234
	move.w (a7)+,d0
	bsr.w sub_200cd0
	tst.w d1
	beq.s loc_200d70
	bpl.s loc_200d72
	cmpi.w #$fff2,d1
	blt.w loc_200c8a
	add.w d1,$8(a0)
loc_200d70:
	rts
loc_200d72:
	cmpi.w #$e,d1
	bgt.s loc_200d7e
loc_200d78:
	add.w d1,$8(a0)
	rts
loc_200d7e:
	tst.b $38(a0)
	bne.s loc_200d78
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d98:
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
	bsr.w sub_2010c4
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
	bsr.w sub_2010c4
	move.w (a7)+,d0
	bsr.w sub_200cd0
	tst.w d1
	beq.s loc_200e12
	bpl.s loc_200e14
	cmpi.w #$fff2,d1
	blt.w loc_200c66
	sub.w d1,$c(a0)
loc_200e12:
	rts
loc_200e14:
	cmpi.w #$e,d1
	bgt.s loc_200e20
loc_200e1a:
	sub.w d1,$c(a0)
	rts
loc_200e20:
	tst.b $38(a0)
	bne.s loc_200e1a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e3a:
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
	bsr.w sub_201234
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
	bsr.w sub_201234
	move.w (a7)+,d0
	bsr.w sub_200cd0
	tst.w d1
	beq.s loc_200eb4
	bpl.s loc_200eb6
	cmpi.w #$fff2,d1
	blt.w loc_200c8a
	sub.w d1,$8(a0)
loc_200eb4:
	rts
loc_200eb6:
	cmpi.w #$e,d1
	bgt.s loc_200ec2
loc_200ebc:
	sub.w d1,$8(a0)
	rts
loc_200ec2:
	tst.b $38(a0)
	bne.s loc_200ebc
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200edc:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200ef2
	andi.w #$380,d0
loc_200ef2:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f52
	bmi.s loc_200f56
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f22
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f28
loc_200f22:
	andi.w #$7fff,$2(a0)
loc_200f28:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f38
	bclr.b #$6,$1(a0)
loc_200f38:
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
loc_200f52:
	movea.l d1,a1
	rts
loc_200f56:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fbe
	btst.b #$6,$1(a0)
	bne.s loc_200f84
	cmpi.b #$14,d1
	bne.w loc_2010a8
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010a8
loc_200f84:
	cmpi.b #$15,d1
	bne.s loc_200f92
	move.w #$60,d1
	bra.w loc_2010a8
loc_200f92:
	cmpi.b #$1e,d1
	bne.s loc_200fa0
	move.w #$61,d1
	bra.w loc_2010a8
loc_200fa0:
	cmpi.b #$1f,d1
	bne.s loc_200fae
	move.w #$62,d1
	bra.w loc_2010a8
loc_200fae:
	cmpi.b #$32,d1
	bne.w loc_2010a8
	move.w #$63,d1
	bra.w loc_2010a8
loc_200fbe:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201024
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20100e
	cmpi.b #$6,d1
	beq.s loc_20100e
	tst.b ($ff1956).l
	beq.w loc_2010a8
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_20101e
	cmpi.b #$3c,d1
	beq.s loc_20101e
	cmpi.b #$37,d1
	beq.s loc_20101e
	cmpi.b #$2f,d1
	beq.s loc_20101e
	cmpi.b #$16,d1
	beq.s loc_20101e
	bra.w loc_2010a8
loc_20100e:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010a8
loc_20101e:
	addq.b #$1,d1
	bra.w loc_2010a8
loc_201024:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201094
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010a8
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010a8
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201058
	move.w #$6a,d1
	bra.s loc_2010a8
loc_201058:
	cmpi.b #$48,d1
	bne.s loc_201064
	move.w #$6b,d1
	bra.s loc_2010a8
loc_201064:
	cmpi.b #$4a,d1
	bne.s loc_201070
	move.w #$6c,d1
	bra.s loc_2010a8
loc_201070:
	cmpi.b #$10,d1
	bne.s loc_20107c
	move.w #$6d,d1
	bra.s loc_2010a8
loc_20107c:
	cmpi.b #$63,d1
	bne.s loc_201088
	move.w #$6e,d1
	bra.s loc_2010a8
loc_201088:
	cmpi.b #$43,d1
	bne.s loc_2010a8
	move.w #$6f,d1
	bra.s loc_2010a8
loc_201094:
	btst.b #$6,$1(a0)
	beq.s loc_2010a8
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010a8
	move.w #$51,d1
loc_2010a8:
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

sub_2010c4:
	bsr.w sub_200edc
	cmpi.l #$210000,d1
	beq.s loc_2010de
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010de
	btst.l d5,d4
	bne.s loc_2010ec
loc_2010de:
	add.w a3,d2
	bsr.w sub_201184
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010ec:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010de
	lea (dat_2381c8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201112
	not.w d1
	neg.b (a4)
loc_201112:
	btst.l #$c,d4
	beq.s loc_201122
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201122:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2382c8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20113e
	neg.w d0
loc_20113e:
	tst.w d0
	beq.s loc_2010de
	bmi.s loc_20115a
	cmpi.b #$10,d0
	beq.s loc_201176
loc_20114a:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20115a:
	cmpa.w #$10,a3
	bne.s loc_20116a
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20114a
loc_20116a:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010de
loc_201176:
	sub.w a3,d2
	bsr.w sub_201184
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201184:
	bsr.w sub_200edc
	cmpi.l #$210000,d1
	beq.s loc_20119e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20119e
	btst.l d5,d4
	bne.s loc_2011ac
loc_20119e:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011ac:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20119e
	lea (dat_2381c8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011d2
	not.w d1
	neg.b (a4)
loc_2011d2:
	btst.l #$c,d4
	beq.s loc_2011e2
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011e2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2382c8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011fe
	neg.w d0
loc_2011fe:
	tst.w d0
	beq.s loc_20119e
	bmi.s loc_201214
loc_201204:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201214:
	cmpa.w #$10,a3
	bne.s loc_201224
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201204
loc_201224:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20119e
	not.w d1
	rts

sub_201234:
	bsr.w sub_200edc
	cmpi.l #$210000,d1
	beq.s loc_20124e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20124e
	btst.l d5,d4
	bne.s loc_20125c
loc_20124e:
	add.w a3,d3
	bsr.w sub_2012e4
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_20125c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20124e
	lea (dat_2381c8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20128a
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20128a:
	btst.l #$b,d4
	beq.s loc_201292
	neg.b (a4)
loc_201292:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2392c8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012ae
	neg.w d0
loc_2012ae:
	tst.w d0
	beq.s loc_20124e
	bmi.s loc_2012ca
	cmpi.b #$10,d0
	beq.s loc_2012d6
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012ca:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20124e
loc_2012d6:
	sub.w a3,d3
	bsr.w sub_2012e4
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012e4:
	bsr.w sub_200edc
	cmpi.l #$210000,d1
	beq.s loc_2012fe
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012fe
	btst.l d5,d4
	bne.s loc_20130c
loc_2012fe:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20130c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012fe
	lea (dat_2381c8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20133a
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20133a:
	btst.l #$b,d4
	beq.s loc_201342
	neg.b (a4)
loc_201342:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2392c8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20135e
	neg.w d0
loc_20135e:
	tst.w d0
	beq.s loc_2012fe
	bmi.s loc_201374
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201374:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012fe
	not.w d1
	rts

sub_201384:
	rts
	.incbin 4998, 152
loc_20141e:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20143e
	tst.b ($ff0f01).l
	bne.s loc_20143e
	move.b #$1,($ff156a).l
loc_20143e:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014a4
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207376
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014a4
	move.b #$1,($ff1508).l
loc_2014a4:
	bset.b #$7,($f600).w
	bsr.w sub_202492
	tst.b ($ff156e).l
	bne.s loc_2014ca
	btst.b #$7,($ff152e).l
	beq.s loc_201500
	bset.b #$0,($ff151d).l
	beq.s loc_2014d6
loc_2014ca:
	bsr.w sub_20045e
	bclr.b #$0,($ff151d).l
loc_2014d6:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201570
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014fe
	bclr.b #$7,($ff152e).l
loc_2014fe:
	rts
loc_201500:
	bset.b #$0,($ff151d).l
	beq.s loc_20150e
	bsr.w sub_200332
loc_20150e:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20152a
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201552
loc_20152a:
	tst.b ($ff1508).l
	bne.s loc_201570
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201552:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20155a:
	move.l #$0,(a1)+
	dbf d6,loc_20155a
	move.b #$c,($f62a).w
	bsr.w sub_200762
	rts
loc_201570:
	cmpi.w #$800,($f78e).w
	bne.s loc_20158e
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20158e:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015a4
	btst.b #$7,($ff152e).l
	beq.s loc_2015aa
loc_2015a4:
	move.l #$eee0eee,d0
loc_2015aa:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015b2:
	move.l d0,(a1)+
	dbf d6,loc_2015b2
loc_2015b8:
	move.b #$c,($f62a).w
	bsr.w sub_200762
	bsr.w sub_2024a0
	bne.s loc_2015b8
	tst.l ($f680).w
	bsr.w sub_201a5e
	moveq #$0,d0
	lea (dat_20ecf6).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015e2
	bsr.w sub_2025a6
loc_2015e2:
	moveq #$1,d0
	bsr.w sub_2025a6
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015fe:
	move.l d0,(a1)+
	dbf d1,loc_2015fe
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201610:
	move.l d0,(a1)+
	dbf d1,loc_201610
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201620:
	move.l d0,(a1)+
	dbf d1,loc_201620
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201632:
	move.l d0,(a1)+
	dbf d1,loc_201632
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201642:
	move.l d0,(a1)+
	dbf d1,loc_201642
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201652:
	move.l d0,(a1)+
	dbf d1,loc_201652
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20217c
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
	bsr.w sub_200508
	moveq #$3,d0
	bsr.w sub_2004ec
	bsr.w sub_202808
	bsr.w sub_20296a
	bset.b #$2,($f754).w
	bsr.w sub_203368
	bsr.w sub_20327e
	jsr (sub_201384).l
	bsr.w sub_201998
loc_2016d2:
	move.b #$c,($f62a).w
	bsr.w sub_200762
	bsr.w sub_2024a0
	bne.s loc_2016d2
	tst.l ($f680).w
	bne.s loc_2016d2
	bsr.w sub_201924
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201abe
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201736
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201736:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201778
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201778:
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
	jsr (sub_20ecf0).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201808
loc_201802:
	bsr.w sub_2003b0
	bra.s loc_201816
loc_201808:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201802
	bsr.w sub_200290
loc_201816:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201824:
	move.b #$8,($f62a).w
	bsr.w sub_200762
	tst.b ($f7cc).w
	bne.s loc_201842
	btst.b #$7,($f605).w
	beq.s loc_201842
	eori.b #$1,($f63a).w
loc_201842:
	btst.b #$0,($f63a).w
	beq.w loc_2018b4
	bsr.w sub_201b22
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201892
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201824
	subq.b #$1,($ff1508).l
	bpl.s loc_201874
	clr.b ($ff1508).l
loc_201874:
	move.w #$e,d0
	jsr (sub_205a36).l
	bsr.w sub_207376
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018a0
loc_201892:
	andi.b #$70,d0
	beq.w loc_201824
	clr.b ($ff1508).l
loc_2018a0:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_20141e
loc_2018b4:
	bsr.w sub_201b68
	addq.w #$1,($ff1504).l
	jsr (sub_20738c).l
	jsr (sub_20377c).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20141e
	tst.w ($ff1502).l
	bne.w loc_20141e
	tst.w ($ff1906).l
	bne.s loc_2018fc
	cmpi.b #$6,($d024).w
	bcs.s loc_2018fc
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201900
loc_2018fc:
	bsr.w sub_20296a
loc_201900:
	jsr (sub_203926).l
	tst.w ($ff190e).l
	bne.s loc_201912
	bsr.w sub_200184
loc_201912:
	jsr (sub_20ca9e).l
	bsr.w sub_2024a0
	bsr.w sub_2019ca
	bra.w loc_201824

sub_201924:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20193c
	move.w #$78,$30(a1)
loc_20193c:
	rts
	.incbin 6462, 90

sub_201998:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019aa(pc,d0.w),($f796).w
	rts
dat_2019aa:
	.incbin 6570, 32

sub_2019ca:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019e8
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019e8:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a06
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a06:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a2e
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a2e
	move.b #$0,($ff1915).l
loc_201a2e:
	tst.b ($ff1916).l
	beq.s loc_201a5c
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a5c:
	rts

sub_201a5e:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a80
	cmpi.b #$2,d0
	bne.s loc_201a80
	add.b ($ff156a).l,d0
loc_201a80:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a98(pc,d1.w),d0
	jmp (sub_205a36).l
dat_201a98:
	.incbin 6808, 38

sub_201abe:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2362d6).l,a1
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

sub_201b22:
	move.w #$ab,d0
	jsr (sub_20226a).l
	bset.b #$7,($f63a).w
	bne.s loc_201b66
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b4c
loc_201b42:
	move.w #$d5,d0
	jmp (sub_205a36).l
loc_201b4c:
	tst.b ($ff151f).l
	bne.s loc_201b42
	tst.b ($ff1520).l
	bne.s loc_201b42
	move.w #$90,d0
	jmp (sub_205a36).l
loc_201b66:
	rts

sub_201b68:
	bclr.b #$7,($f63a).w
	beq.s loc_201ba2
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b88
loc_201b7e:
	move.w #$d6,d0
	jmp (sub_205a36).l
loc_201b88:
	tst.b ($ff151f).l
	bne.s loc_201b7e
	tst.b ($ff1520).l
	bne.s loc_201b7e
	move.w #$91,d0
	jmp (sub_205a36).l
loc_201ba2:
	rts
loc_201ba4:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c30
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201be0
	move.w #$700,d0
loc_201bdc:
	dbf d0,loc_201bdc
loc_201be0:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c16(pc,d0.w),d0
	jsr dat_201c16(pc,d0.w)
loc_201bf6:
	jsr (sub_20228e).l
	tst.b ($f63a).w
	bne.s loc_201c0a
	bsr.w sub_202042
	bsr.w sub_202030
loc_201c0a:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c16:
	.incbin 7190, 26
loc_201c30:
	tst.b ($ff1957).l
	beq.w loc_201bf6
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bf6
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c5e
	move.w #$700,d0
loc_201c5a:
	dbf d0,loc_201c5a
loc_201c5e:
	move.w #$1,($f6fc).w
	jsr (sub_202202).l
	tst.b ($f64e).w
	bne.s loc_201c96
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cba
loc_201c96:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cba:
	move.w ($f624).w,(a5)
	jsr (sub_20221e).l
	bra.w loc_201bf6
	.incbin 7368, 60
	jsr (sub_202202).l
	bsr.w sub_20209e
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
	bsr.w sub_205958
	tst.b ($f767).w
	beq.s loc_201db2
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201db2:
	jsr (sub_20ecf0).l
	jsr (sub_20221e).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e76
	bsr.w sub_202512
	jmp (loc_20ab96).l
	dc.b $4e,$75
	jsr (sub_202202).l
	bsr.w sub_20209e
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
	jsr (sub_20221e).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e76
	bra.w loc_2024f6
	.incbin 7818, 16
	bsr.w sub_201f86
	cmpi.b #$1,($ff1903).l
	bne.s loc_201ebc
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201ebc:
	move.w ($f624).w,(a5)
	bra.w loc_2024f6
	.incbin 7876, 46
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
	jsr (sub_20221e).l
	lea ($d000).w,a0
	bsr.w sub_205958
	tst.b ($f767).w
	beq.s loc_201f78
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f78:
	tst.w ($f614).w
	beq.w loc_201f84
	subq.w #$1,($f614).w
loc_201f84:
	rts

sub_201f86:
	jsr (sub_202202).l
	bsr.w sub_20209e
	tst.b ($f64e).w
	bne.s loc_201fbc
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fe0
loc_201fbc:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fe0:
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
	jmp (sub_20221e).l
	dc.b $4e,$73

sub_202030:
	tst.b ($d02a).w
	bne.s loc_202040
	tst.w ($f786).w
	beq.s loc_202040
	addq.w #$1,($f786).w
loc_202040:
	rts

sub_202042:
	tst.w ($f780).w
	beq.s loc_20204c
	addq.w #$1,($f780).w
loc_20204c:
	tst.w ($f782).w
	beq.s loc_202056
	addq.w #$1,($f782).w
loc_202056:
	rts
	.incbin 8280, 42

sub_202082:
	bsr.w sub_202202
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20221e

sub_20209e:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2020ac
	addq.w #$2,a1

sub_2020ac:
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

sub_2020da:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202156).l,a2
	moveq #$12,d7
loc_2020ee:
	move.w (a2)+,(a0)
	dbf d7,loc_2020ee
	move.w (dat_202158).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202114:
	move.w d0,(a1)
	dbf d7,loc_202114
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202146:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202146
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202156:
	dc.b $80,$04
dat_202158:
	.incbin 8536, 36

sub_20217c:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20219e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20219e
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021cc:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021cc
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021ea:
	move.l d0,(a1)+
	dbf d1,loc_2021ea
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2021fa:
	move.l d0,(a1)+
	dbf d1,loc_2021fa
	rts

sub_202202:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202212:
	btst.b #$0,($a11100).l
	bne.s loc_202212
	rts

sub_20221e:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8748, 62

sub_20226a:
	tst.b ($f00a).w
	bne.s loc_202276
	move.b d0,($f00a).w
	rts
loc_202276:
	tst.b ($f00b).w
	bne.s loc_202282
	move.b d0,($f00b).w
	rts
loc_202282:
	tst.b ($f00c).w
	bne.s loc_20228c
	move.b d0,($f00c).w
loc_20228c:
	rts

sub_20228e:
	jsr (sub_202202).l
	tst.b ($f00a).w
	beq.s loc_2022a8
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2022a8:
	tst.b ($f00b).w
	beq.s loc_2022bc
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2022bc:
	tst.b ($f00c).w
	beq.s loc_2022d0
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022d0:
	bra.w sub_20221e
	.incbin 8916, 32

sub_2022f4:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2023b6).l,a3
	lea ($c00000).l,a4
	bra.s loc_202310

sub_202306:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023cc).l,a3
loc_202310:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20231e
	adda.w #$a,a3
loc_20231e:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023e2
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20233e
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20233e:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20238a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202366
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202366:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202374:
	lsr.w #$4,d0
loc_202376:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202384
	jmp (a3)

sub_202380:
	moveq #$0,d4
	moveq #$8,d3
loc_202384:
	dbf d0,loc_202376
	bra.s sub_20233e
loc_20238a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202398
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202398:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202374
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202374
loc_2023b6:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202380
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202380
	rts
dat_2023cc:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202380
	rts

sub_2023e2:
	move.b (a0)+,d0
loc_2023e4:
	cmpi.b #$ff,d0
	bne.s loc_2023ec
	rts
loc_2023ec:
	move.w d0,d7
loc_2023ee:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023e4
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
	bne.s loc_20241c
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2023ee
loc_20241c:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202428:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202428
	bra.s loc_2023ee

sub_202434:
	movem.l a1-a2,-(a7)
	lea (dat_20ed06).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20244c:
	tst.l (a2)
	beq.s loc_202454
	addq.w #$6,a2
	bra.s loc_20244c
loc_202454:
	move.w (a1)+,d0
	bmi.s loc_202460
loc_202458:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202458
loc_202460:
	movem.l (a7)+,a1-a2
	rts
loc_202466:
	movem.l a1-a2,-(a7)
	lea (dat_20ed06).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202492
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20248c
loc_202484:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202484
loc_20248c:
	movem.l (a7)+,a1-a2
	rts

sub_202492:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202498:
	clr.l (a2)+
	dbf d0,loc_202498
	rts

sub_2024a0:
	tst.l ($f680).w
	beq.s loc_2024f4
	tst.w ($f6f8).w
	bne.s loc_2024f4
	movea.l ($f680).w,a0
	lea (loc_2023b6).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024c2
	adda.w #$a,a3
loc_2024c2:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023e2
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
loc_2024f4:
	rts
loc_2024f6:
	tst.w ($f6f8).w
	beq.w loc_202594
loc_2024fe:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202530

sub_202512:
	tst.w ($f6f8).w
	beq.s loc_202594
	tst.b ($f744).w
	bne.s loc_2024fe
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202530:
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
loc_202564:
	movea.w #$8,a5
	bsr.w sub_202380
	subq.w #$1,($f6f8).w
	beq.s loc_202596
	subq.w #$1,($f6fa).w
	bne.s loc_202564
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202594:
	rts
loc_202596:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20259c:
	move.l $6(a0),(a0)+
	dbf d0,loc_20259c
	rts

sub_2025a6:
	lea (dat_20ed06).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2025b8:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2022f4
	dbf d1,loc_2025b8
	rts
	.incbin 9688, 560

sub_202808:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202864).l,a0
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
	bra.w loc_202890
dat_202864:
	dc.b $00,$04,$00,$00,$28,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202870:
	.incbin 10352, 32
loc_202890:
	tst.b ($ff1522).l
	beq.s loc_2028b0
	jsr (sub_2065c2).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028ae
	moveq #$0,d0
loc_2028ae:
	bra.s loc_2028ec
loc_2028b0:
	lea (dat_202928).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028d2
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202870).l,a1
	adda.w d0,a1
	bra.s loc_2028dc
loc_2028d2:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028dc:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028ec:
	subi.w #$a0,d1
	bcc.s loc_2028f4
	moveq #$0,d1
loc_2028f4:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2028fe
	move.w d2,d1
loc_2028fe:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20290a
	moveq #$0,d0
loc_20290a:
	cmp.w ($f72e).w,d0
	blt.s loc_202914
	move.w ($f72e).w,d0
loc_202914:
	move.w d0,($f704).w
	bsr.w sub_202930
	lea (dat_20292c).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202928:
	dc.b $00,$50,$01,$e8
dat_20292c:
	dc.b $8c,$7f,$1e,$1e

sub_202930:
	swap d0
	asr.l #$4,d0
	add.l d0,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$2,d1
	move.w d1,($f710).w
	lsr.w #$1,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d2,d1
	move.w d1,($f708).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
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
	bsr.w sub_202aec
	bsr.w sub_202b8c
	bsr.w sub_203410
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_202e16
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_202de2
	lea ($a810).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	add.l d5,d5
	bsr.w sub_202cde
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	addi.l #$10000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$4000,(a2)+
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($a800).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$3,d1
loc_202a32:
	move.w d0,(a1)+
	dbf d1,loc_202a32
	move.w ($a804).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$5,d1
loc_202a46:
	move.w d0,(a1)+
	dbf d1,loc_202a46
	move.w ($a808).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$3,d1
loc_202a5a:
	move.w d0,(a1)+
	dbf d1,loc_202a5a
	move.w #$7,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202a6a:
	move.w d0,(a1)+
	dbf d1,loc_202a6a
	move.w #$1,d1
	move.w ($f708).w,d0
	neg.w d0
loc_202a7a:
	move.w d0,(a1)+
	dbf d1,loc_202a7a
	move.w #$5,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202a8a:
	move.w d0,(a1)+
	dbf d1,loc_202a8a
	lea ($cc00).w,a1
	lea ($a810).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ab8(pc,d2.w)
loc_202ab6:
	move.w (a2)+,d0
loc_202ab8:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ab6
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
	dbf d1,loc_202ab6
	rts

sub_202aec:
	move.w ($f700).w,d4
	bsr.s sub_202b20
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b1e
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b18
	bset.b #$2,($f754).w
	rts
loc_202b18:
	bset.b #$3,($f754).w
loc_202b1e:
	rts

sub_202b20:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b32
	bcs.s loc_202b62
	bra.s loc_202b38
loc_202b32:
	clr.w ($f73a).w
	rts
loc_202b38:
	cmpi.w #$10,d0
	blt.s loc_202b42
	move.w #$10,d0
loc_202b42:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b50
	move.w ($f72a).w,d0
loc_202b50:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b62:
	cmpi.w #$fff0,d0
	bge.s loc_202b6c
	move.w #$fff0,d0
loc_202b6c:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b50
	move.w ($f728).w,d0
	bra.s loc_202b50
	.incbin 11132, 16

sub_202b8c:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202ba0
	subq.w #$5,d0
loc_202ba0:
	btst.b #$1,$22(a6)
	beq.s loc_202bc0
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c0c
	subi.w #$40,d0
	bcc.s loc_202c0c
	tst.b ($f75c).w
	bne.s loc_202c1e
	bra.s loc_202bcc
loc_202bc0:
	sub.w ($f73e).w,d0
	bne.s loc_202bd2
	tst.b ($f75c).w
	bne.s loc_202c1e
loc_202bcc:
	clr.w ($f73c).w
	rts
loc_202bd2:
	cmpi.w #$60,($f73e).w
	bne.s loc_202bfa
	move.w $14(a6),d1
	bpl.s loc_202be2
	neg.w d1
loc_202be2:
	cmpi.w #$800,d1
	bcc.s loc_202c0c
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c6c
	cmpi.w #$fffa,d0
	blt.s loc_202c36
	bra.s loc_202c24
loc_202bfa:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c6c
	cmpi.w #$fffe,d0
	blt.s loc_202c36
	bra.s loc_202c24
loc_202c0c:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c6c
	cmpi.w #$fff0,d0
	blt.s loc_202c36
	bra.s loc_202c24
loc_202c1e:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c24:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c76
	bra.w loc_202c42
loc_202c36:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c42:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c9a
	cmpi.w #$ff00,d1
	bgt.s loc_202c66
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c9a
loc_202c66:
	move.w ($f72c).w,d1
	bra.s loc_202c9a
loc_202c6c:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c76:
	cmp.w ($f72e).w,d1
	blt.s loc_202c9a
	subi.w #$800,d1
	bcs.s loc_202c96
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c9a
loc_202c96:
	move.w ($f72e).w,d1
loc_202c9a:
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
	bne.s loc_202cdc
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cd6
	bset.b #$0,($f754).w
	rts
loc_202cd6:
	bset.b #$1,($f754).w
loc_202cdc:
	rts

sub_202cde:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d12
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d0c
	bset.b #$2,($f756).w
	bra.s loc_202d12
loc_202d0c:
	bset.b #$3,($f756).w
loc_202d12:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d46
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d40
	bset.b #$0,($f756).w
	rts
loc_202d40:
	bset.b #$1,($f756).w
loc_202d46:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d7c
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d76
	bset.b #$4,($f756).w
	rts
loc_202d76:
	bset.b #$5,($f756).w
loc_202d7c:
	rts
	.incbin 11646, 100

sub_202de2:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e14
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e0e
	bset.b d6,($f758).w
	bra.s loc_202e14
loc_202e0e:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e14:
	rts

sub_202e16:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e48
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e42
	bset.b d6,($f75a).w
	bra.s loc_202e48
loc_202e42:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e48:
	rts
	.incbin 11850, 44

sub_202e76:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f34
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203018
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20301a
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f32
	bclr.b #$0,(a2)
	beq.s loc_202ee8
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203246
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20301c
loc_202ee8:
	bclr.b #$1,(a2)
	beq.s loc_202f02
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203246
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20301c
loc_202f02:
	bclr.b #$2,(a2)
	beq.s loc_202f18
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203246
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203072
loc_202f18:
	bclr.b #$3,(a2)
	beq.s loc_202f32
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203246
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203072
loc_202f32:
	rts

sub_202f34:
	lea (dat_2032fe).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f50
	bclr.b #$1,(a2)
	beq.s loc_202f9a
	move.w #$e0,d4
loc_202f50:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fca(pc,d0.w),a3
	beq.s loc_202f82
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203246
	movem.l (a7)+,d4-d5
	bsr.w sub_20301c
	movea.l (a7)+,a0
	bra.s loc_202f9a
loc_202f82:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203248
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203048
	movea.l (a7)+,a0
loc_202f9a:
	tst.b (a2)
	bne.s loc_202fa0
	rts
loc_202fa0:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fb4
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fb4:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fda
dat_202fca:
	.incbin 12234, 16
loc_202fda:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fe2:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_20300c
	add.w d0,d0
	movea.l dat_202fca(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20311e
	movem.l (a7)+,d4-d5
	bsr.w sub_203246
	bsr.w sub_2030a0
	movem.l (a7)+,d4-d5/a0
loc_20300c:
	addi.w #$10,d4
	dbf d6,loc_202fe2
	clr.b (a2)
	rts

sub_203018:
	rts

sub_20301a:
	rts

sub_20301c:
	moveq #$15,d6

sub_20301e:
	move.l #$800000,d7
	move.l d0,d1
loc_203026:
	movem.l d4-d5,-(a7)
	bsr.w sub_20311e
	move.l d1,d0
	bsr.w sub_2030a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203026
	rts

sub_203048:
	move.l #$800000,d7
	move.l d0,d1
loc_203050:
	movem.l d4-d5,-(a7)
	bsr.w sub_203120
	move.l d1,d0
	bsr.w sub_2030a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203050
	rts

sub_203072:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20307c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20311e
	move.l d1,d0
	bsr.w sub_2030a0
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20307c
	rts

sub_2030a0:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030dc
	btst.b #$3,(a0)
	bne.s loc_2030bc
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030bc:
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
loc_2030dc:
	btst.b #$3,(a0)
	bne.s loc_2030fe
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
loc_2030fe:
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

sub_20311e:
	add.w (a3),d5

sub_203120:
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
	beq.s loc_20316e
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
loc_20316e:
	rts
	.incbin 12656, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20324c
	bsr.w sub_2030a0
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 12802, 68

sub_203246:
	add.w (a3),d5

sub_203248:
	add.w $4(a3),d4

sub_20324c:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 12898, 28

sub_20327e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032a8
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032d0

sub_2032a8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032ac:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203246
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20301e
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032ac
	rts
loc_2032d0:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032d4:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032fe).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203330
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032d4
	rts
dat_2032fe:
	.incbin 13054, 34
dat_203320:
	.incbin 13088, 16

sub_203330:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203320(pc,d0.w),a3
	beq.s loc_203352
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203246
	movem.l (a7)+,d4-d5
	bsr.w sub_20301c
	bra.s loc_203366
loc_203352:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203248
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203048
loc_203366:
	rts

sub_203368:
	moveq #$0,d0
	lea (dat_20ecf6).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202306
	movea.l (a2)+,a0
	bsr.w sub_2033c2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004ec
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2033ac
	jmp (loc_20ca7a).l
loc_2033ac:
	btst.b #$1,($ff151c).l
	beq.s loc_2033c0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033c0
	bsr.w sub_202434
loc_2033c0:
	rts

sub_2033c2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033cc:
	move.l d0,(a3)+
	dbf d1,loc_2033cc
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033e2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033e2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23a5e8).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033fc:
	move.w d1,d0
	movea.l a3,a0
loc_203400:
	move.b (a1)+,(a0)+
	dbf d0,loc_203400
	lea $80(a3),a3
	dbf d2,loc_2033fc
	rts

sub_203410:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20348a(pc,d0.w),d0
	jsr dat_20348a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203436
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203436:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203464
	bcc.s loc_203466
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20345a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20345a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203464:
	rts
loc_203466:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20347e
	btst.b #$1,($d022).w
	beq.s loc_20347e
	add.w d1,d1
	add.w d1,d1
loc_20347e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20348a:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2034aa(pc,d0.w),d0
	jmp dat_2034aa(pc,d0.w)
dat_2034aa:
	dc.b $00,$06,$00,$66,$00,$6e
	cmpi.b #$1,($ff152e).l
	bne.s loc_203510
	cmpi.w #$1c16,($d008).w
	bcs.s loc_2034d0
	cmpi.w #$21c6,($d008).w
	bcc.s loc_2034d0
	move.w #$88,($f73e).w
loc_2034d0:
	move.w #$710,($f726).w
	cmpi.w #$840,($f700).w
	bcs.s loc_20350e
	tst.b ($ff1510).l
	beq.s loc_2034fa
	cmpi.w #$820,($f728).w
	bcc.s loc_2034fa
	move.w #$820,($f728).w
	move.w #$820,($f720).w
loc_2034fa:
	move.w #$410,($f726).w
	cmpi.w #$e00,($f700).w
	bcs.s loc_20350e
	move.w #$310,($f726).w
loc_20350e:
	rts
loc_203510:
	move.w #$310,($f726).w
	rts
	.incbin 13592, 612

sub_20377c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203784:
	move.b (a0),d0
	beq.s loc_20379a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b9e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20379a:
	lea $40(a0),a0
	dbf d7,loc_203784
	rts

sub_2037a4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037e2
	bpl.s loc_2037d4
	btst.b #$1,$2c(a0)
	beq.s loc_2037d4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037e2
loc_2037d4:
	btst.b #$2,$2c(a0)
	bne.s loc_2037e2
	addi.w #$38,$12(a0)
loc_2037e2:
	tst.w $12(a0)
	bmi.s loc_2037f6
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037f6
	move.w #$1000,$12(a0)
loc_2037f6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203806:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203842
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203842
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203840
	neg.w d1
loc_203840:
	add.w d1,d0
loc_203842:
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

sub_20385c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038cc
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038e8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038a6
	cmpi.w #$800,d3
	bcs.s loc_2038b8
	subi.w #$800,d3
	bra.s loc_2038b8
loc_2038a6:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038b8
	cmpi.w #$100,d3
	bcc.s loc_2038b8
	addi.w #$800,d3
loc_2038b8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038e8
loc_2038cc:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038e8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038e8:
	rts
	.incbin 14570, 30

sub_203908:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20390e:
	move.l d1,(a1)+
	dbf d0,loc_20390e
	rts
dat_203916:
	.incbin 14614, 16

sub_203926:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203932:
	tst.w (a4)
	beq.w loc_2039f2
	moveq #$2,d6
loc_20393a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039ea
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039a0
	movea.l dat_203916(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203984
	cmpi.w #$800,d2
	bcs.s loc_203996
	subi.w #$800,d2
	bra.s loc_203996
loc_203984:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203996
	cmpi.w #$100,d2
	bcc.s loc_203996
	addi.w #$800,d2
loc_203996:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039c2
loc_2039a0:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039c2
	.incbin 14762, 24
loc_2039c2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039e0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039e4
loc_2039e0:
	bsr.w sub_203a14
loc_2039e4:
	bset.b #$7,$1(a0)
loc_2039ea:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20393a
loc_2039f2:
	lea $80(a4),a4
	dbf d7,loc_203932
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a0c
	move.l #$0,(a2)
	rts
loc_203a0c:
	move.b #$0,-$5(a2)
	rts

sub_203a14:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a5a
	btst.l #$1,d4
	bne.w loc_203aa8
loc_203a26:
	cmpi.b #$50,d5
	beq.s loc_203a58
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
	bne.s loc_203a52
	addq.w #$1,d0
loc_203a52:
	move.w d0,(a2)+
	dbf d1,loc_203a26
loc_203a58:
	rts
loc_203a5a:
	btst.l #$1,d4
	bne.w loc_203aee
loc_203a62:
	cmpi.b #$50,d5
	beq.s loc_203aa6
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
	bne.s loc_203aa0
	addq.w #$1,d0
loc_203aa0:
	move.w d0,(a2)+
	dbf d1,loc_203a62
loc_203aa6:
	rts
loc_203aa8:
	cmpi.b #$50,d5
	beq.s loc_203aec
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
	bne.s loc_203ae6
	addq.w #$1,d0
loc_203ae6:
	move.w d0,(a2)+
	dbf d1,loc_203aa8
loc_203aec:
	rts
loc_203aee:
	cmpi.b #$50,d5
	beq.s loc_203b40
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
	bne.s loc_203b3a
	addq.w #$1,d0
loc_203b3a:
	move.w d0,(a2)+
	dbf d1,loc_203aee
loc_203b40:
	rts
	.incbin 15170, 92
dat_203b9e:
	.incbin 15262, 262

sub_203ca4:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cb6
	move.w #$0,(a1)
	rts
loc_203cb6:
	tst.w (a1)
	bne.s loc_203cc0
	move.b #$1,$1(a1)
loc_203cc0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d0a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203cfc
	neg.w $10(a0)
loc_203cfc:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a36
loc_203d0a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d28
	cmpa.w #$d040,a0
	beq.s loc_203d28
	tst.b ($ff1906).l
	beq.s loc_203d28
	jmp (loc_206fac).l
loc_203d28:
	move.b $2a(a0),d0
	beq.s loc_203d52
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d44
	cmpi.b #$2d,d0
	bcs.s loc_203d4e
	move.b #$2d,d0
	bra.s loc_203d4e
loc_203d44:
	cmpi.b #$1e,d0
	bcs.s loc_203d4e
	move.b #$1e,d0
loc_203d4e:
	move.b d0,$2a(a0)
loc_203d52:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d60(pc,d0.w),d1
	jmp dat_203d60(pc,d1.w)
dat_203d60:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d6a:
	tst.b ($d300).w
	bne.s loc_203da8
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203da8:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dd0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dd0:
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e04:
	tst.b ($ff1506).l
	bne.s loc_203e6a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e6a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e6e
	cmpi.b #$2f,d1
	bne.s loc_203e6c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e6a
	tst.b $2c(a0)
	beq.s loc_203e6a
	jsr (sub_207588).l
	bne.s loc_203e6a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e62
	moveq #$0,d0
loc_203e62:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e6a:
	rts
loc_203e6c:
	rts

sub_203e6e:
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

sub_203e94:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203ea0
	neg.w d0
loc_203ea0:
	btst.b #$1,$2c(a0)
	beq.s loc_203eb0
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ed8
loc_203eb0:
	cmpi.w #$600,d0
	bcs.s loc_203ed8
	tst.w $14(a0)
	bpl.s loc_203eca
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ee6
	move.w #$e0,d1
	bra.s loc_203ee6
loc_203eca:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ee6
	move.w #$60,d1
	bra.s loc_203ee6
loc_203ed8:
	cmpi.w #$a0,d1
	beq.s loc_203ee6
	bcc.s loc_203ee4
	addq.w #$2,d1
	bra.s loc_203ee6
loc_203ee4:
	subq.w #$2,d1
loc_203ee6:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e94
	bsr.w sub_203e04
	tst.w ($ff1588).l
	beq.s loc_203f0c
	btst.b #$4,($f605).w
	beq.s loc_203f0c
	move.b #$1,($ff1906).l
	rts
loc_203f0c:
	tst.b ($f7cc).w
	bne.s loc_203f18
	move.w ($f604).w,($f602).w
loc_203f18:
	btst.b #$0,$2c(a0)
	beq.s loc_203f3c
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f36
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f54
loc_203f36:
	bsr.w sub_20421e
	bra.s loc_203f54
loc_203f3c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f9a(pc,d0.w),d1
	jsr dat_203f9a(pc,d1.w)
	jsr (sub_2064ee).l
loc_203f54:
	bsr.s sub_203fa8
	bsr.w sub_204068
	bsr.w sub_204082
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f7c
	tst.b $1c(a0)
	bne.s loc_203f7c
	move.b $1d(a0),$1c(a0)
loc_203f7c:
	bsr.w sub_205426
	tst.b $2c(a0)
	bmi.s loc_203f94
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f94
	jsr (sub_206a92).l
loc_203f94:
	bsr.w sub_2052dc
	rts
dat_203f9a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203fa8:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fcc
	move.w $30(a0),d0
	beq.s loc_203fbe
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fcc
loc_203fbe:
	btst.b #$6,$2c(a0)
	bne.s loc_203fcc
	jsr (sub_20385c).l
loc_203fcc:
	tst.b ($ff151f).l
	beq.s loc_204010
	tst.w $32(a0)
	beq.s loc_204010
	subq.w #$1,$32(a0)
	bne.s loc_204010
	tst.b ($ff1520).l
	bne.s loc_204008
	tst.b ($ff1958).l
	bne.s loc_204008
	tst.b ($ff152e).l
	bne.s loc_204002
	move.w #$e,d0
	jsr (sub_205a36).l
loc_204002:
	jsr (sub_201a5e).l
loc_204008:
	move.b #$0,($ff151f).l
loc_204010:
	tst.b ($ff1520).l
	beq.s loc_204066
	tst.w $34(a0)
	beq.s loc_204066
	subq.w #$1,$34(a0)
	bne.s loc_204066
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20405e
	tst.b ($ff1958).l
	bne.s loc_20405e
	tst.b ($ff152e).l
	bne.s loc_204058
	move.w #$e,d0
	jsr (sub_205a36).l
loc_204058:
	jsr (sub_201a5e).l
loc_20405e:
	move.b #$0,($ff1520).l
loc_204066:
	rts

sub_204068:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204082:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20408e
loc_20408c:
	rts
loc_20408e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2040a0
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20408c
loc_2040a0:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040e4
	bset.b #$6,$22(a0)
	bne.s loc_20408c
	bsr.w sub_205d3a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20408c
	bra.s loc_20411c
loc_2040e4:
	tst.w $12(a0)
	beq.s loc_2040ec
	bpl.s loc_20408c
loc_2040ec:
	bclr.b #$6,$22(a0)
	beq.s loc_20408c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20408c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20411c
	move.w #$f000,$12(a0)
loc_20411c:
	jsr (sub_207588).l
	bne.s loc_204130
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204130:
	rts

sub_204132:
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
	bcs.s loc_20420c
	move.l #$50000,d0
loc_20420c:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20421e:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204244
	tst.b ($ff152e).l
	beq.s loc_20423a
	cmpi.b #$2,($ff152e).l
	bne.s loc_204244
loc_20423a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042f4
loc_204244:
	tst.b $2a(a0)
	bne.w loc_204302
	tst.b ($f784).w
	beq.w loc_204302
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204262
	neg.w d0
loc_204262:
	tst.w ($f786).w
	bne.s loc_20426e
	move.w #$1,($f786).w
loc_20426e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204284
	move.b #$1,($ff1502).l
	bra.w loc_205a32
loc_204284:
	cmpi.w #$d2,d1
	bcs.s loc_2042d8
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042d6
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2042ae
	move.w #$82,d0
	jsr (sub_205a36).l
	moveq #$0,d0
loc_2042ae:
	add.b ($f784).w,d0
	bpl.s loc_2042b8
	moveq #$0,d0
	bra.s loc_2042c0
loc_2042b8:
	cmpi.b #$3,d0
	bcs.s loc_2042c0
	moveq #$2,d0
loc_2042c0:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204132
	move.b #$2,($ff1522).l
loc_2042d6:
	rts
loc_2042d8:
	cmpi.w #$5a,d1
	bcc.s loc_2042f0
	cmp.w d2,d0
	bcc.w loc_203d6a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042f0:
	cmp.w d2,d0
	bcc.s loc_204302
loc_2042f4:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204302:
	rts
	bsr.w sub_203ca4
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204334
	tst.b ($ff195b).l
	beq.s loc_204322
	cmpi.b #$79,$1a(a0)
	bne.s loc_20435e
	bra.s loc_20432a
loc_204322:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20435e
loc_20432a:
	bsr.w sub_204bc6
	jmp (sub_2037a4).l
loc_204334:
	bsr.w sub_20440c
	bsr.w sub_20421e
	bsr.w sub_204cb0
	bsr.w sub_204ddc
	bsr.w sub_204480
	bsr.w sub_204c32
	bsr.w sub_204bc6
	jsr (sub_203806).l
	bsr.w sub_200b6e
	bsr.w sub_204e5a
loc_20435e:
	rts
	tst.b ($f7c7).w
	bne.s loc_20437a
	cmpi.b #$15,$1c(a0)
	beq.s loc_20437a
	tst.w $12(a0)
	bmi.s loc_20437a
	move.b #$0,$1c(a0)
loc_20437a:
	bsr.w sub_20440c
	bsr.w sub_20421e
	bsr.w sub_204d9a
	bsr.w sub_204ae6
	bsr.w sub_204bc6
	jsr (sub_2037a4).l
	btst.b #$6,$22(a0)
	beq.s loc_2043a2
	subi.w #$28,$12(a0)
loc_2043a2:
	bsr.w sub_204ea4
	bsr.w sub_204ec8
	rts
	bsr.w sub_20440c
	bsr.w sub_20421e
	bsr.w sub_204cb0
	bsr.w sub_204e18
	bsr.w sub_204920
	bsr.w sub_204bc6
	tst.b $2a(a0)
	bne.s loc_2043d0
	jsr (sub_203806).l
loc_2043d0:
	bsr.w sub_200b6e
	bsr.w sub_204e5a
	rts
	bsr.w sub_20440c
	bsr.w sub_20421e
	bsr.w sub_204d9a
	bsr.w sub_204ae6
	bsr.w sub_204bc6
	jsr (sub_2037a4).l
	btst.b #$6,$22(a0)
	beq.s loc_204402
	subi.w #$28,$12(a0)
loc_204402:
	bsr.w sub_204ea4
	bsr.w sub_204ec8
	rts

sub_20440c:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204478
	tst.w ($ff1506).l
	bne.s loc_204478
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20447a).l,a2
loc_204440:
	move.b (a2)+,d0
	bmi.s loc_204450
	cmp.b d0,d1
	bne.s loc_204440
	bset.b #$1,$2c(a0)
	rts
loc_204450:
	bclr.b #$1,$2c(a0)
	beq.s loc_204478
	tst.w $12(a0)
	bpl.s loc_204478
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204478
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204478
	neg.w $10(a0)
loc_204478:
	rts
dat_20447a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204480:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2047aa
	tst.w $3e(a0)
	bne.w loc_20475a
	btst.b #$2,($f602).w
	beq.s loc_2044a8
	bsr.w sub_20483a
loc_2044a8:
	btst.b #$3,($f602).w
	beq.s loc_2044b4
	bsr.w sub_2048b0
loc_2044b4:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20475a
	tst.w $14(a0)
	beq.s loc_2044d4
	tst.b $2a(a0)
	beq.w loc_20475a
	bra.s loc_2044e0
loc_2044d4:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044e0:
	btst.b #$3,$22(a0)
	beq.s loc_204532
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20458a
	cmpi.b #$1e,$0(a1)
	bne.s loc_204512
	move.b #$0,$1c(a0)
	bra.w loc_20475a
loc_204512:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20456e
	cmp.w d2,d1
	bge.s loc_20455c
	bra.s loc_20458a
loc_204532:
	jsr (sub_2067f6).l
	cmpi.w #$c,d1
	blt.s loc_20458a
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204566
loc_20455c:
	btst.b #$0,$22(a0)
	bne.s loc_204576
	bra.s loc_204580
loc_204566:
	cmpi.b #$3,$37(a0)
	bne.s loc_20458a
loc_20456e:
	btst.b #$0,$22(a0)
	bne.s loc_204580
loc_204576:
	move.b #$32,$1c(a0)
	bra.w loc_20475a
loc_204580:
	move.b #$6,$1c(a0)
	bra.w loc_20475a
loc_20458a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20459e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20459e:
	btst.b #$7,($f788).w
	bne.w loc_2046a2
	btst.b #$6,($f788).w
	bne.w loc_2046c2
	btst.b #$1,($f602).w
	bne.w loc_2046c2
	andi.b #$f,($f788).w
	beq.s loc_2045d6
	btst.b #$0,($f603).w
	beq.s loc_2045ea
	bset.b #$7,($f788).w
	bra.w loc_20477e
loc_2045d6:
	btst.b #$0,($f603).w
	beq.w loc_2045ea
	move.b #$1,($f788).w
	bra.w loc_20477e
loc_2045ea:
	btst.b #$0,($f602).w
	beq.s loc_204666
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204648
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20461a
	asr.w #$1,d2
	sub.w d2,d1
loc_20461a:
	btst.b #$0,$22(a0)
	beq.s loc_204626
	neg.w d0
	neg.w d1
loc_204626:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20463c
	cmp.w d0,d1
	ble.s loc_204642
	bra.s loc_204640
loc_20463c:
	cmp.w d1,d0
	ble.s loc_204642
loc_204640:
	move.w d1,d0
loc_204642:
	move.w d0,$14(a0)
	rts
loc_204648:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204662
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20226a).l
loc_204662:
	bra.w loc_20477e
loc_204666:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204686
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046c2
loc_204686:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	bra.w loc_20475a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2046a2:
	btst.b #$0,($f602).w
	beq.s loc_2046c2
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20477e
	addq.w #$2,($f73e).w
	bra.w loc_20477e
loc_2046c2:
	btst.b #$6,($f788).w
	bne.w loc_20473e
	andi.b #$f,($f788).w
	beq.s loc_2046e6
	btst.b #$1,($f603).w
	beq.s loc_2046f8
	bset.b #$6,($f788).w
	bra.w loc_20477e
loc_2046e6:
	btst.b #$1,($f603).w
	beq.s loc_2046f8
	move.b #$1,($f788).w
	bra.w loc_20477e
loc_2046f8:
	btst.b #$1,($f602).w
	beq.s loc_20475a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20473c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20473c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20472e
	neg.w $14(a0)
loc_20472e:
	move.w #$9c,d0
	jsr (sub_20226a).l
	bsr.w sub_204c5a
loc_20473c:
	bra.s loc_20477e
loc_20473e:
	btst.b #$1,($f602).w
	beq.s loc_20475a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20477e
	subq.w #$2,($f73e).w
	bra.s loc_20477e
loc_20475a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204774
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20477e
	move.b #$0,($f788).w
	bra.s loc_20477e
loc_204774:
	bcc.s loc_20477a
	addq.w #$4,($f73e).w
loc_20477a:
	subq.w #$2,($f73e).w
loc_20477e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2047aa
	move.w $14(a0),d0
	beq.s loc_2047aa
	bmi.s loc_20479e
	sub.w d5,d0
	bcc.s loc_204798
	move.w #$0,d0
loc_204798:
	move.w d0,$14(a0)
	bra.s loc_2047aa
loc_20479e:
	add.w d5,d0
	bcc.s loc_2047a6
	move.w #$0,d0
loc_2047a6:
	move.w d0,$14(a0)
loc_2047aa:
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047c8:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204838
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204838
	bmi.s loc_2047e0
	neg.w d1
loc_2047e0:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066b6
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204838
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204834
	cmpi.b #$40,d0
	beq.s loc_204822
	cmpi.b #$80,d0
	beq.s loc_20481c
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20481c:
	sub.w d1,$12(a0)
	rts
loc_204822:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204834:
	add.w d1,$12(a0)
loc_204838:
	rts

sub_20483a:
	tst.b $2a(a0)
	bne.s loc_2048ae
	move.w $14(a0),d0
	beq.s loc_204848
	bpl.s loc_204878
loc_204848:
	bset.b #$0,$22(a0)
	bne.s loc_20485c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20485c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20486c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20486c
	move.w d1,d0
loc_20486c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204878:
	sub.w d4,d0
	bcc.s loc_204880
	move.w #$ff80,d0
loc_204880:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048ae
	cmpi.w #$400,d0
	blt.s loc_2048ae
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226a).l
loc_2048ae:
	rts

sub_2048b0:
	tst.b $2a(a0)
	bne.s loc_20491e
	move.w $14(a0),d0
	bmi.s loc_2048e8
	bclr.b #$0,$22(a0)
	beq.s loc_2048d0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048d0:
	cmp.w d6,d0
	bge.s loc_2048dc
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048dc
	move.w d6,d0
loc_2048dc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048e8:
	add.w d4,d0
	bcc.s loc_2048f0
	move.w #$80,d0
loc_2048f0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20491e
	cmpi.w #$fc00,d0
	bgt.s loc_20491e
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226a).l
loc_20491e:
	rts

sub_204920:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a6a
	tst.w $3e(a0)
	bne.s loc_204958
	btst.b #$2,($f602).w
	beq.s loc_20494c
	bsr.w sub_204aa0
loc_20494c:
	btst.b #$3,($f602).w
	beq.s loc_204958
	bsr.w sub_204ac4
loc_204958:
	tst.b $2a(a0)
	beq.w loc_204a02
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204978
	asr.w #$1,d2
	sub.w d2,d1
loc_204978:
	btst.b #$0,$22(a0)
	beq.s loc_204984
	neg.w d0
	neg.w d1
loc_204984:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20499a
	cmp.w d0,d1
	ble.s loc_2049a0
	bra.s loc_20499e
loc_20499a:
	cmp.w d1,d0
	ble.s loc_2049a0
loc_20499e:
	move.w d1,d0
loc_2049a0:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049d4
	rts
loc_2049ae:
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a34
loc_2049d4:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_2049ae
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	btst.b #$0,$22(a0)
	bne.s loc_2049fa
	bsr.w sub_204ac4
	bra.s loc_204a02
loc_2049fa:
	bsr.w sub_204aa0
	bra.s loc_204a02
	dc.b $4e,$75
loc_204a02:
	move.w $14(a0),d0
	beq.s loc_204a24
	bmi.s loc_204a18
	sub.w d5,d0
	bcc.s loc_204a12
	move.w #$0,d0
loc_204a12:
	move.w d0,$14(a0)
	bra.s loc_204a24
loc_204a18:
	add.w d5,d0
	bcc.s loc_204a20
	move.w #$0,d0
loc_204a20:
	move.w d0,$14(a0)
loc_204a24:
	tst.w $14(a0)
	bne.s loc_204a6a
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_204a34:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a54
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a64
loc_204a54:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a64:
	move.b #$5,$1c(a0)
loc_204a6a:
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a8e
	move.w #$1000,d1
loc_204a8e:
	cmpi.w #$f000,d1
	bge.s loc_204a98
	move.w #$f000,d1
loc_204a98:
	move.w d1,$10(a0)
	bra.w loc_2047c8

sub_204aa0:
	move.w $14(a0),d0
	beq.s loc_204aa8
	bpl.s loc_204ab6
loc_204aa8:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ab6:
	sub.w d4,d0
	bcc.s loc_204abe
	move.w #$ff80,d0
loc_204abe:
	move.w d0,$14(a0)
	rts

sub_204ac4:
	move.w $14(a0),d0
	bmi.s loc_204ad8
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ad8:
	add.w d4,d0
	bcc.s loc_204ae0
	move.w #$80,d0
loc_204ae0:
	move.w d0,$14(a0)
	rts

sub_204ae6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b20
	tst.w ($ff1506).l
	bne.s loc_204b20
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b18
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b18
	rts
loc_204b18:
	btst.b #$1,$2c(a0)
	bne.s loc_204b50
loc_204b20:
	btst.b #$2,($f602).w
	beq.s loc_204b3a
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b3a
	move.w d1,d0
loc_204b3a:
	btst.b #$3,($f602).w
	beq.s loc_204b50
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b50
	move.w d6,d0
loc_204b50:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b66
	bcc.s loc_204b62
	addq.w #$4,($f73e).w
loc_204b62:
	subq.w #$2,($f73e).w
loc_204b66:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b94
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b94
	bmi.s loc_204b88
	sub.w d1,d0
	bcc.s loc_204b82
	move.w #$0,d0
loc_204b82:
	move.w d0,$10(a0)
	rts
loc_204b88:
	sub.w d1,d0
	bcs.s loc_204b90
	move.w #$0,d0
loc_204b90:
	move.w d0,$10(a0)
loc_204b94:
	rts
	.incbin 19350, 48

sub_204bc6:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c1a
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204bf4
	addi.w #$38,d0
loc_204bf4:
	cmp.w d1,d0
	bls.s loc_204c1a
loc_204bf8:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c08
	rts
loc_204c08:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d24
	move.b #$6,$24(a0)
	rts
loc_204c1a:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204bf8

sub_204c32:
	tst.b ($f7ca).w
	bne.s loc_204c58
	move.w $14(a0),d0
	bpl.s loc_204c40
	neg.w d0
loc_204c40:
	cmpi.w #$80,d0
	bcs.s loc_204c58
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c58
	btst.b #$1,($f602).w
	bne.s sub_204c5a
loc_204c58:
	rts

sub_204c5a:
	btst.b #$2,$22(a0)
	beq.s loc_204c64
	bra.s loc_204c94
loc_204c64:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c84
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c94
loc_204c84:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c94:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204cae
	cmpi.w #$200,$14(a0)
	bcc.s loc_204cae
	move.w #$200,$14(a0)
loc_204cae:
	rts

sub_204cb0:
	tst.b $2a(a0)
	beq.s loc_204cb8
	rts
loc_204cb8:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cca
	tst.w $14(a0)
	beq.w loc_204d90
loc_204cca:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d90
	btst.b #$3,$22(a0)
	beq.s loc_204ce6
	jsr (sub_2059bc).l
	beq.s loc_204d16
loc_204ce6:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206720
	cmpi.w #$6,d1
	blt.w loc_204d90
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d0c
	move.w #$380,d2
loc_204d0c:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d16:
	jsr (sub_20076e).l
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
	jsr (sub_20226a).l
	btst.b #$2,$22(a0)
	bne.s loc_204d92
	tst.b ($ff195b).l
	beq.s loc_204d74
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d84
loc_204d74:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d84:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d90:
	rts
loc_204d92:
	bset.b #$4,$22(a0)
	rts

sub_204d9a:
	tst.b $3c(a0)
	beq.s loc_204dcc
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204db0
	move.w #$fe00,d1
loc_204db0:
	cmp.w $12(a0),d1
	ble.s loc_204dca
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204dca
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204dca:
	rts
loc_204dcc:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dda
	move.w #$f040,$12(a0)
loc_204dda:
	rts

sub_204ddc:
	tst.b $2a(a0)
	bne.s loc_204e16
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e16
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e16
	bmi.s loc_204e12
	tst.w d0
	beq.s loc_204e10
	add.w d0,$14(a0)
loc_204e10:
	rts
loc_204e12:
	add.w d0,$14(a0)
loc_204e16:
	rts

sub_204e18:
	tst.b $2a(a0)
	bne.s loc_204e58
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e58
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e4e
	tst.w d0
	bpl.s loc_204e48
	asr.l #$2,d0
loc_204e48:
	add.w d0,$14(a0)
	rts
loc_204e4e:
	tst.w d0
	bmi.s loc_204e54
	asr.l #$2,d0
loc_204e54:
	add.w d0,$14(a0)
loc_204e58:
	rts

sub_204e5a:
	nop
	tst.b $38(a0)
	bne.s loc_204e9c
	tst.w $3e(a0)
	bne.s loc_204e9e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e9c
	move.w $14(a0),d0
	bpl.s loc_204e7e
	neg.w d0
loc_204e7e:
	cmpi.w #$280,d0
	bcc.s loc_204e9c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e9c:
	rts
loc_204e9e:
	subq.w #$1,$3e(a0)
	rts

sub_204ea4:
	btst.b #$1,$2c(a0)
	bne.s loc_204ec6
	move.b $26(a0),d0
	beq.s loc_204ec6
	bpl.s loc_204ebc
	addq.b #$2,d0
	bcc.s loc_204eba
	moveq #$0,d0
loc_204eba:
	bra.s loc_204ec2
loc_204ebc:
	subq.b #$2,d0
	bcc.s loc_204ec2
	moveq #$0,d0
loc_204ec2:
	move.b d0,$26(a0)
loc_204ec6:
	rts

sub_204ec8:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a06).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204fac
	cmpi.b #$80,d0
	beq.w loc_20500e
	cmpi.b #$c0,d0
	beq.w loc_20506a
	bsr.w sub_206a36
	tst.w d1
	bpl.s loc_204f1a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f1a:
	bsr.w sub_206898
	tst.w d1
	bpl.s loc_204f2c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f2c:
	bsr.w sub_206748
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204faa
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f4a
	cmp.b d2,d0
	blt.s loc_204faa
loc_204f4a:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050cc
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f88
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f7a
	asr.w $12(a0)
	bra.s loc_204f9c
loc_204f7a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f88:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f9c
	move.w #$fc0,$12(a0)
loc_204f9c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204faa
	neg.w $14(a0)
loc_204faa:
	rts
loc_204fac:
	bsr.w sub_206a36
	tst.w d1
	bpl.s loc_204fc6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fc6:
	bsr.w sub_2068f0
	tst.w d1
	bpl.s loc_204fe0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fde
	move.w #$0,$12(a0)
loc_204fde:
	rts
loc_204fe0:
	tst.w $12(a0)
	bmi.s loc_20500c
	bsr.w sub_206748
	tst.w d1
	bpl.s loc_20500c
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050cc
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20500c:
	rts
loc_20500e:
	bsr.w sub_206a36
	tst.w d1
	bpl.s loc_205020
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205020:
	bsr.w sub_206898
	tst.w d1
	bpl.s loc_205032
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205032:
	bsr.w sub_2068f0
	tst.w d1
	bpl.s loc_205068
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205052
	move.w #$0,$12(a0)
	rts
loc_205052:
	move.b d3,$26(a0)
	bsr.w sub_20513e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205068
	neg.w $14(a0)
loc_205068:
	rts
loc_20506a:
	bsr.w sub_206898
	tst.w d1
	bpl.s loc_205084
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205084:
	bsr.w sub_2068f0
	tst.w d1
	bpl.s loc_20509e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20509c
	move.w #$0,$12(a0)
loc_20509c:
	rts
loc_20509e:
	tst.w $12(a0)
	bmi.s loc_2050ca
	bsr.w sub_206748
	tst.w d1
	bpl.s loc_2050ca
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050cc
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050ca:
	rts

sub_2050cc:
	btst.b #$4,$22(a0)
	beq.s loc_2050d6
	nop
loc_2050d6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205130
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205110
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205120
loc_205110:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205120:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_205130:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20513e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20830, 382

sub_2052dc:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205304
	cmpi.b #$5,($ff1506).l
	beq.s loc_205304
	cmpi.b #$2,($ff1506).l
	beq.s loc_205304
	tst.b ($ff1506).l
	bne.w loc_2053c6
loc_205304:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205342
	tst.b ($ff1506).l
	bne.w loc_2053c8
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053c8
	bra.s loc_20534a
loc_205342:
	cmp.b ($f7af).w,d1
	beq.w loc_2053c8
loc_20534a:
	cmp.b ($f7ac).w,d1
	beq.s loc_20537a
	cmp.b ($f7ad).w,d1
	beq.s loc_20535e
	bclr.b #$6,$1(a0)
	rts
loc_20535e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053e0
	btst.b #$1,$22(a0)
	beq.s loc_20537a
	bclr.b #$6,$1(a0)
	rts
loc_20537a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20538c
	bclr.b #$6,$1(a0)
	rts
loc_20538c:
	cmpi.b #$e0,d2
	bcs.s loc_20539a
	bset.b #$6,$1(a0)
	rts
loc_20539a:
	btst.b #$6,$1(a0)
	bne.s loc_2053b6
	move.b $26(a0),d1
	beq.s loc_2053c6
	cmpi.b #$80,d1
	bhi.s loc_2053c6
	bset.b #$6,$1(a0)
	rts
loc_2053b6:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053c6
	bclr.b #$6,$1(a0)
loc_2053c6:
	rts
loc_2053c8:
	btst.b #$2,$22(a0)
	bne.s loc_2053da
	move.w #$9c,d0
	jsr (sub_20226a).l
loc_2053da:
	jmp (sub_204c5a).l
loc_2053e0:
	tst.w $12(a0)
	bmi.s loc_205424
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205418
	cmpi.w #$38,d1
	bcs.s loc_205410
	cmpi.w #$80,d1
	bcs.s loc_205424
loc_205408:
	bclr.b #$6,$1(a0)
	rts
loc_205410:
	bset.b #$6,$1(a0)
	rts
loc_205418:
	cmpi.w #$38,d1
	bcs.s loc_205408
	cmpi.w #$80,d1
	bcc.s loc_205410
loc_205424:
	rts

sub_205426:
	lea (dat_205716).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205448
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205448:
	bsr.w sub_2056b8
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054c0
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20548e
	move.b d0,$1e(a0)

sub_205472:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205486
	bpl.s loc_205486
	cmpi.b #$fd,d0
	bge.s loc_205490
loc_205486:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20548e:
	rts
loc_205490:
	addq.b #$1,d0
	bne.s loc_2054a0
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205486
loc_2054a0:
	addq.b #$1,d0
	bne.s loc_2054b4
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205486
loc_2054b4:
	addq.b #$1,d0
	bne.s loc_2054be
	move.b $2(a1,d1.w),$1c(a0)
loc_2054be:
	rts
loc_2054c0:
	subq.b #$1,$1e(a0)
	bpl.s loc_20548e
	addq.b #$1,d0
	bne.w loc_20557a
	tst.b ($ff195b).l
	bne.w loc_205642
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054e8
	not.b d0
loc_2054e8:
	btst.b #$1,$2c(a0)
	bne.s loc_2054f6
	addi.b #$10,d0
	bra.s loc_2054f8
loc_2054f6:
	addq.b #$8,d0
loc_2054f8:
	bpl.s loc_2054fc
	moveq #$3,d1
loc_2054fc:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055ee
	move.w $14(a0),d2
	bpl.s loc_20551a
	neg.w d2
loc_20551a:
	btst.b #$1,$2c(a0)
	beq.s loc_205532
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205918).l,a1
	bra.s loc_20555c
loc_205532:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058f2).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20555c
	lea (dat_205796).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20555c
	lea (dat_20578e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20555c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20556a
	moveq #$0,d2
loc_20556a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205472
	add.b d3,$1a(a0)
	rts
loc_20557a:
	addq.b #$1,d0
	bne.s loc_2055ea
	move.w $14(a0),d2
	bpl.s loc_205586
	neg.w d2
loc_205586:
	lea (dat_205874).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055c4
	lea (dat_2057a6).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055b8
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055c4
	lea (dat_205920).l,a1
	bra.s loc_2055c4
loc_2055b8:
	cmpi.w #$600,d2
	bcc.s loc_2055c4
	lea (dat_20579e).l,a1
loc_2055c4:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055ce
	moveq #$0,d2
loc_2055ce:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205472
loc_2055ea:
	addq.b #$1,d0
	bne.s loc_20562e
loc_2055ee:
	move.w $14(a0),d2
	bmi.s loc_2055f6
	neg.w d2
loc_2055f6:
	addi.w #$800,d2
	bpl.s loc_2055fe
	moveq #$0,d2
loc_2055fe:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205886).l,a1
	tst.b ($ff195b).l
	bne.s loc_205618
	lea (dat_2057ae).l,a1
loc_205618:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205472
loc_20562e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205642:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205654
	not.b d0
loc_205654:
	addi.b #$10,d0
	bpl.s loc_20565c
	moveq #$0,d1
loc_20565c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20568a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20557a
loc_20568a:
	move.w $14(a0),d2
	bpl.s loc_205692
	neg.w d2
loc_205692:
	lea (dat_20586e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056a4
	lea (dat_205868).l,a1
loc_2056a4:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056ae
	moveq #$0,d2
loc_2056ae:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205472

sub_2056b8:
	tst.b ($ff195b).l
	beq.s loc_2056c4
	move.b dat_2056c6(pc,d0.w),d0
loc_2056c4:
	rts
dat_2056c6:
	.incbin 22214, 80
dat_205716:
	.incbin 22294, 120
dat_20578e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205796:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20579e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2057a6:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2057ae:
	.incbin 22446, 186
dat_205868:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20586e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205874:
	.incbin 22644, 18
dat_205886:
	.incbin 22662, 108
dat_2058f2:
	.incbin 22770, 38
dat_205918:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205920:
	.incbin 22816, 56

sub_205958:
	tst.b (a0)
	beq.w loc_2059ba
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059ba
	move.b d0,(a2)
	lea (dat_231b1c).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059ba
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20598c:
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
loc_2059a6:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2059a6
	dbf d1,loc_20598c
loc_2059ba:
	rts

sub_2059bc:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a30
	move.w #$98,d0
	jsr (sub_20226a).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a06).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205a1e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a1e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a30:
	rts
loc_205a32:
	move.w #$e,d0

sub_205a36:
	cmpi.w #$67,d0
	bne.s loc_205a44
	move.b #$1,($ff1958).l
loc_205a44:
	move.w d0,($a12010).l
loc_205a4a:
	move.w ($a12020).l,d0
	beq.s loc_205a4a
	cmp.w ($a12020).l,d0
	bne.s loc_205a4a
	move.w #$0,($a12010).l
loc_205a62:
	move.w ($a12020).l,d0
	bne.s loc_205a62
	move.w ($a12020).l,d0
	bne.s loc_205a62
	rts
	dc.b $00,$00

sub_205a76:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a92
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a92:
	subq.b #$1,$1e(a0)
	bpl.s loc_205ad2
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ad4
loc_205aae:
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
loc_205ad2:
	rts
loc_205ad4:
	addq.b #$1,d0
	bne.s loc_205ae4
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205aae
loc_205ae4:
	addq.b #$1,d0
	bne.s loc_205af8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205aae
loc_205af8:
	addq.b #$1,d0
	bne.s loc_205b02
	move.b $2(a1,d1.w),$1c(a0)
loc_205b02:
	addq.b #$1,d0
	bne.s loc_205b0a
	addq.b #$2,$24(a0)
loc_205b0a:
	addq.b #$1,d0
	bne.s loc_205b18
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b18:
	addq.b #$1,d0
	bne.s loc_205b20
	addq.b #$2,$25(a0)
loc_205b20:
	rts
	.incbin 23330, 536

sub_205d3a:
	rts
	.incbin 23868, 116

sub_205db0:
	tst.b $25(a0)
	bne.s loc_205de0
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207588).l
	bne.s loc_205de0
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205de0:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205df0(pc,d0.w),d0
	jmp dat_205df0(pc,d0.w)
dat_205df0:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e18
	andi.b #$7f,$2(a0)
loc_205e18:
	move.l #$21db14,$4(a0)
	bsr.s sub_205db0
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e46
	move.w #$100,$1c(a0)
loc_205e46:
	lea (dat_21db00).l,a1
	bsr.w sub_205a76
	jmp (sub_20385c).l
	tst.b $25(a0)
	beq.s loc_205e62
	jmp (sub_203908).l
loc_205e62:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e84(pc,d0.w),d0
	jsr dat_205e84(pc,d0.w)
	jmp (sub_20385c).l
dat_205e84:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205eb2
	andi.b #$7f,$2(a0)
loc_205eb2:
	move.l #$21df92,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ed8
	bsr.w sub_205f44
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f3a
loc_205ed8:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067f6).l
	tst.w d1
	bpl.s loc_205f36
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f20
	bsr.w sub_205f44
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f6a
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f20:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f3a
loc_205f36:
	addq.w #$2,$c(a0)
loc_205f3a:
	lea (dat_21df76).l,a1
	bra.w sub_205a76

sub_205f44:
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

sub_205f6a:
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
	bra.s loc_205f3a
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f3a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fb4(pc,d0.w),d0
	jmp dat_205fb4(pc,d0.w)
dat_205fb4:
	dc.b $00,$06,$00,$32,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$21dae8,$4(a0)
	move.w #$3e4,$2(a0)
	tst.b ($ff152e).l
	bne.s loc_205fe0
	move.w #$39e,$2(a0)
loc_205fe0:
	move.b #$1,$18(a0)
	lea (dat_21dae0).l,a1
	bsr.w sub_205a76
	jmp (sub_20385c).l
	dc.b $4e,$f9,$00,$20,$39,$08
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206016(pc,d0.w),d0
	jsr dat_206016(pc,d0.w)
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_206016:
	dc.b $00,$58,$00,$92,$00,$a2,$00,$ac

sub_20601e:
	tst.w $12(a1)
	bpl.s loc_206060
	bsr.w sub_2060d4
	beq.s loc_206060
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_20605e
	jsr (sub_207588).l
	bne.s loc_20605e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_20226a).l
loc_20605e:
	rts
loc_206060:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d3c).l
	addq.b #$2,$24(a0)
	move.l #$21dac4,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$2c,$19(a0)
	cmpi.b #$2,$28(a0)
	bne.s loc_20609a
	move.b #$18,$19(a0)
loc_20609a:
	move.b #$8,$16(a0)
	moveq #$c,d0
	jsr (sub_20cae4).l
	lea ($d000).w,a1
	bsr.w sub_20601e
	lea ($d040).w,a1
	bra.w sub_20601e
	.incbin 24760, 28

sub_2060d4:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_206108
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_206108
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_206108
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_206108
	moveq #$1,d0
	rts
loc_206108:
	moveq #$0,d0
	rts
	.incbin 24844, 102
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206180(pc,d0.w),d1
	jmp dat_206180(pc,d1.w)
dat_206180:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$21d928,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_2061c2
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_2061c2
	addq.b #$2,$24(a0)
loc_2061c2:
	rts
	tst.b ($ff151e).l
	beq.s loc_20621e
	tst.b ($ff1521).l
	bne.s loc_20621c
	tst.b ($ff151f).l
	bne.s loc_20621c
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20620c
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20620c
	andi.b #$7f,$2(a0)
loc_20620c:
	lea (dat_21d800).l,a1
	jsr (sub_205a76).l
	bra.w loc_2062bc
loc_20621c:
	rts
loc_20621e:
	jmp (sub_203908).l
	.incbin 25124, 60
	beq.s loc_206268
	andi.b #$7f,$2(a0)
loc_206268:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_20627a
	subq.b #$4,d1
loc_20627a:
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
	bcs.s loc_206296
loc_206294:
	moveq #$0,d1
loc_206296:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_21d800).l,a1
	jsr (sub_205a76).l
loc_2062bc:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062ce
	rts
loc_2062ce:
	cmp.b $24(a0),d0
	beq.s loc_2062e4
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2062e4:
	jmp (sub_20385c).l
loc_2062ea:
	bclr.b #$7,($ff156b).l
	beq.s loc_206338
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20633a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20630e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20630e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206338:
	rts
dat_20633a:
	.incbin 25402, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206370(pc,d0.w),d0
	jsr dat_206370(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20636a
	jsr (sub_20385c).l
loc_20636a:
	jmp (loc_2075be).l
dat_206370:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$21d928,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206452
	cmpi.b #$6,$24(a1)
	bcc.w loc_206452
	bsr.w sub_2064b6
	beq.w loc_206452
	tst.b $28(a0)
	bne.s loc_206404
	move.w $10(a1),d0
	bpl.s loc_2063c4
	neg.w d0
loc_2063c4:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2063d6
	move.w #$d00,d1
loc_2063d6:
	cmp.w d1,d0
	bcc.s loc_2063dc
	move.w d1,d0
loc_2063dc:
	tst.w $10(a1)
	bpl.s loc_2063e4
	neg.w d0
loc_2063e4:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206434
	neg.w $14(a1)
	bra.s loc_206434
loc_206404:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206454
	move.w $12(a1),d0
	bpl.s loc_206414
	neg.w d0
loc_206414:
	cmpi.w #$d00,d0
	bcc.s loc_20641e
	move.w #$d00,d0
loc_20641e:
	tst.w $12(a1)
	bpl.s loc_206426
	neg.w d0
loc_206426:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206434:
	bset.b #$2,$22(a1)
	bne.s loc_206452
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206452:
	rts
loc_206454:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_2064a0
	cmpi.b #$2,$28(a0)
	bne.s loc_206470
	tst.w $12(a1)
	bpl.s loc_206434
	bra.s loc_206476
loc_206470:
	tst.w $12(a1)
	bmi.s loc_206434
loc_206476:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206488
	btst.l #$2,d1
	beq.s loc_206434
	neg.w d0
loc_206488:
	cmpi.b #$2,$28(a0)
	beq.s loc_206496
	bset.b #$1,$22(a1)
loc_206496:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206434
loc_2064a0:
	tst.w $10(a1)
	bmi.s loc_206434
	btst.l #$0,d1
	beq.w loc_206434
	move.w #$f600,d0
	bra.w loc_206426

sub_2064b6:
	tst.b ($ff1906).l
	bne.s loc_2064ea
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2064ea
	cmpi.w #$50,d0
	bcc.s loc_2064ea
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2064ea
	cmpi.w #$50,d0
	bcc.s loc_2064ea
	moveq #$1,d0
	rts
loc_2064ea:
	moveq #$0,d0
	rts

sub_2064ee:
	rts
loc_2064f0:
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
	bne.s loc_2065aa
	move.b ($ff1593).l,($ff195b).l
loc_2065aa:
	tst.b ($ff1522).l
	bpl.s loc_2065c0
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065c0:
	rts

sub_2065c2:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064f0
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
	bne.s loc_20667c
	move.b ($ff1591).l,($ff195b).l
loc_20667c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20669e
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_20669e:
	tst.b ($ff1522).l
	bpl.s loc_2066b4
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066b4:
	rts

sub_2066b6:
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
	bpl.s loc_2066f2
	move.b d1,d0
	bpl.s loc_2066ec
	subq.b #$1,d0
loc_2066ec:
	addi.b #$20,d0
	bra.s loc_2066fc
loc_2066f2:
	move.b d1,d0
	bpl.s loc_2066f8
	addq.b #$1,d0
loc_2066f8:
	addi.b #$1f,d0
loc_2066fc:
	andi.b #$c0,d0
	beq.w loc_2067cc
	cmpi.b #$80,d0
	beq.w loc_206968
	andi.b #$38,d1
	bne.s loc_206714
	addq.w #$8,d2
loc_206714:
	cmpi.b #$40,d0
	beq.w loc_206a3e
	bra.w loc_2068a0

sub_206720:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069c6
	cmpi.b #$80,d0
	beq.w sub_2068f0
	cmpi.b #$c0,d0
	beq.w loc_206830

sub_206748:
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
	jsr (sub_2010c4).l
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
	jsr (sub_2010c4).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_2067ac:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067ba
	move.b ($f768).w,d3
	exg d0,d1
loc_2067ba:
	btst.l #$0,d3
	beq.s loc_2067c2
	move.b d2,d3
loc_2067c2:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067cc:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010c4).l
	move.b #$0,d2
loc_2067e8:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067f4
	move.b d2,d3
loc_2067f4:
	rts

sub_2067f6:
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
	jsr (sub_2010c4).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20682e
	move.b #$0,d3
loc_20682e:
	rts
loc_206830:
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
	jsr (sub_201234).l
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
	jsr (sub_201234).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_2067ac

sub_206898:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2068a0:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201234).l
	move.b #$c0,d2
	bra.w loc_2067e8
	.incbin 26816, 48

sub_2068f0:
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
	jsr (sub_2010c4).l
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
	jsr (sub_2010c4).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_2067ac

sub_206960:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206968:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010c4).l
	move.b #$80,d2
	bra.w loc_2067e8
	.incbin 27020, 58
loc_2069c6:
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
	jsr (sub_201234).l
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
	jsr (sub_201234).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_2067ac

sub_206a36:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a3e:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201234).l
	move.b #$40,d2
	bra.w loc_2067e8
	.incbin 27234, 48

sub_206a92:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ab6
	addi.w #$c,d3
	moveq #$a,d5
loc_206ab6:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ac4:
	tst.b $1(a1)
	bpl.s loc_206ad0
	move.b $20(a1),d0
	bne.s loc_206adc
loc_206ad0:
	lea $40(a1),a1
	dbf d6,loc_206ac4
	moveq #$0,d0
	rts
loc_206adc:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e42).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206b04
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206b0a
	bra.w loc_206ad0
loc_206b04:
	cmp.w d4,d0
	bhi.w loc_206ad0
loc_206b0a:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b22
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b28
	bra.w loc_206ad0
loc_206b22:
	cmp.w d5,d0
	bhi.w loc_206ad0
loc_206b28:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b9c
	cmpi.b #$c0,d1
	beq.w loc_206d7c
	tst.b d1
	bmi.w loc_206c66
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b60
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206b5e
	addq.b #$2,$24(a1)
loc_206b5e:
	rts
loc_206b60:
	tst.w $12(a0)
	bpl.s loc_206b8a
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206b9a
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206b9a
	addq.b #$4,$25(a1)
	rts
loc_206b8a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206b9a
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206b9a:
	rts

sub_206b9c:
	tst.b ($ff1521).l
	bne.s loc_206bb6
	tst.b ($ff151f).l
	bne.s loc_206bb6
	cmpi.b #$2,$1c(a0)
	bne.w loc_206c66
loc_206bb6:
	tst.b $21(a1)
	beq.s loc_206be0
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206bde
	bset.b #$7,$22(a1)
loc_206bde:
	rts
loc_206be0:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206bf8
	moveq #$6,d0
loc_206bf8:
	move.w d0,$3e(a1)
	move.w dat_206c58(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206c12
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206c12:
	bsr.w sub_20ab4e
	move.w #$96,d0
	jsr (sub_20226a).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c48
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c50
	neg.w $12(a0)
	rts
loc_206c48:
	addi.w #$100,$12(a0)
	rts
loc_206c50:
	subi.w #$100,$12(a0)
	rts
dat_206c58:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206c60:
	bset.b #$7,$22(a1)
loc_206c66:
	tst.b ($ff1521).l
	bne.s loc_206c76
	tst.b ($ff151f).l
	beq.s loc_206c7a
loc_206c76:
	moveq #$ffffffff,d0
	rts
loc_206c7a:
	nop
	tst.w $30(a0)
	bne.s loc_206c76
	movea.l a1,a2

sub_206c84:
	tst.b ($ff151e).l
	bne.s loc_206cb0
	tst.w ($ff1512).l
	beq.w loc_206d1a
	jsr (sub_207588).l
	bne.s loc_206cb0
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206cb0:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206cc6
	move.b #$0,($ff156f).l
loc_206cc6:
	move.b #$4,$24(a0)
	bsr.w sub_2050cc
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206cf6
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206cf6:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206d04
	neg.w $10(a0)
loc_206d04:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d1a:
	tst.w ($ff1588).l
	bne.w loc_206cb0

sub_206d24:
	tst.w ($ff1906).l
	bne.s loc_206d78
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050cc
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20226a).l
loc_206d78:
	moveq #$ffffffff,d0
	rts
loc_206d7c:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206e2e
	cmpi.b #$b,d1
	beq.w loc_206df8
	cmpi.b #$c,d1
	beq.w loc_206dfc
	cmpi.b #$17,d1
	beq.w loc_206e2e
	cmpi.b #$21,d1
	beq.w loc_206e2e
	cmpi.b #$23,d1
	beq.w loc_206e2e
	cmpi.b #$2f,d1
	beq.w loc_206e34
	cmpi.b #$3a,d1
	beq.w loc_206e34
	cmpi.b #$3b,d1
	beq.w loc_206e34
	cmpi.b #$1,($f7aa).w
	bne.s loc_206df6
	cmpi.b #$3c,d1
	blt.s loc_206df6
	cmpi.b #$3f,d1
	bgt.s loc_206df6
	bsr.w sub_206b9c
	tst.b $20(a1)
	bne.s loc_206dee
	addq.b #$3,$21(a1)
loc_206dee:
	clr.b $20(a1)
	bra.w loc_206e2e
loc_206df6:
	rts
loc_206df8:
	bra.w loc_206c60
loc_206dfc:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206e2a
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206e16
	subi.w #$10,d0
loc_206e16:
	sub.w d2,d0
	bcc.s loc_206e22
	addi.w #$18,d0
	bcs.s loc_206e26
	bra.s loc_206e2a
loc_206e22:
	cmp.w d4,d0
	bhi.s loc_206e2a
loc_206e26:
	bra.w loc_206c66
loc_206e2a:
	bra.w sub_206b9c
loc_206e2e:
	addq.b #$1,$21(a1)
	rts
loc_206e34:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e40
	addq.b #$1,$21(a1)
loc_206e40:
	rts
dat_206e42:
	.incbin 28226, 362
loc_206fac:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206fc2
	move.l #$4000,(dat_20713c).l
	bra.s loc_206fe2
loc_206fc2:
	addi.l #$2000,(dat_20713c).l
	cmpi.l #$80000,(dat_20713c).l
	bls.s loc_206fe2
	move.l #$80000,(dat_20713c).l
loc_206fe2:
	move.l (dat_20713c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206ff4
	sub.l d0,$c(a0)
loc_206ff4:
	btst.b #$1,($f604).w
	beq.s loc_207000
	add.l d0,$c(a0)
loc_207000:
	btst.b #$2,($f604).w
	beq.s loc_20700c
	sub.l d0,$8(a0)
loc_20700c:
	btst.b #$3,($f604).w
	beq.s loc_207018
	add.l d0,$8(a0)
loc_207018:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200edc).l
	move.w (a1),($ff194e).l
	lea (dat_207140).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20705a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207054
	move.b #$0,d1
loc_207054:
	move.b d1,($ff1904).l
loc_20705a:
	btst.b #$7,($f605).w
	beq.s loc_20707a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207074
	add.b (a2),d1
loc_207074:
	move.b d1,($ff1904).l
loc_20707a:
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
	beq.s loc_207106
	bsr.w sub_207588
	bne.s loc_207106
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
loc_207106:
	btst.b #$4,($f605).w
	beq.s loc_207136
	move.b #$0,($ff1906).l
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207136:
	jmp (sub_20385c).l
dat_20713c:
	dc.b $00,$00,$40,$00
dat_207140:
	.incbin 28992, 566

sub_207376:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207384:
	clr.l (a2)+
	dbf d0,loc_207384
	rts

sub_20738c:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20739a(pc,d0.w),d0
	jmp dat_20739a(pc,d0.w)
dat_20739a:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20763a).l,a0
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
	bcc.s loc_2073d8
	moveq #$0,d6
loc_2073d8:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2073e0:
	cmp.w (a0),d6
	bls.s loc_2073f2
	tst.b $4(a0)
	bpl.s loc_2073ee
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2073ee:
	addq.w #$8,a0
	bra.s loc_2073e0
loc_2073f2:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207412
loc_207400:
	cmp.w (a0),d6
	bls.s loc_207412
	tst.b $4(a0)
	bpl.s loc_20740e
	addq.b #$1,$1(a2)
loc_20740e:
	addq.w #$8,a0
	bra.s loc_207400
loc_207412:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2074fc
	bge.s loc_2074a2
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20747e
loc_20744c:
	cmp.w -$8(a0),d6
	bge.s loc_20747e
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207462
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207462:
	bsr.w sub_207520
	bne.s loc_20746c
	subq.w #$8,a0
	bra.s loc_20744c
loc_20746c:
	tst.b $4(a0)
	bpl.s loc_20747c
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20747c:
	addq.w #$8,a0
loc_20747e:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20748a:
	cmp.w -$8(a0),d6
	bgt.s loc_20749c
	tst.b -$4(a0)
	bpl.s loc_207498
	subq.b #$1,(a2)
loc_207498:
	subq.w #$8,a0
	bra.s loc_20748a
loc_20749c:
	move.l a0,($f770).w
	rts
loc_2074a2:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2074b6:
	cmp.w (a0),d6
	bls.s loc_2074d8
	tst.b $4(a0)
	bpl.s loc_2074c4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074c4:
	bsr.w sub_207520
	beq.s loc_2074b6
	tst.b $4(a0)
	bpl.s loc_2074d8
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2074d8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2074f8
loc_2074e6:
	cmp.w (a0),d6
	bls.s loc_2074f8
	tst.b $4(a0)
	bpl.s loc_2074f4
	addq.b #$1,$1(a2)
loc_2074f4:
	addq.w #$8,a0
	bra.s loc_2074e6
loc_2074f8:
	move.l a0,($f774).w
loc_2074fc:
	rts

sub_2074fe:
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

sub_207520:
	bsr.s sub_2074fe
	beq.s loc_207532
	tst.b $4(a0)
	bpl.s loc_207538
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207538
loc_207532:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207538:
	bsr.w sub_207588
	bne.s loc_207586
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
	bpl.s loc_207568
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207568:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20757a
	nop
	nop
	nop
	nop
loc_20757a:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207586:
	rts

sub_207588:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207590:
	tst.b (a1)
	beq.s loc_20759c
	lea $40(a1),a1
	dbf d0,loc_207590
loc_20759c:
	rts

sub_20759e:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2075bc
loc_2075b0:
	tst.b (a1)
	beq.s loc_2075bc
	lea $40(a1),a1
	dbf d0,loc_2075b0
loc_2075bc:
	rts
loc_2075be:
	move.w $8(a0),d0
loc_2075c2:
	tst.b $1(a0)
	bmi.s loc_20762c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20762c
loc_2075e0:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207622
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20761a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207612
	moveq #$0,d1
	bra.s loc_20761a
loc_207612:
	cmpi.w #$3,d1
	bcs.s loc_20761a
	moveq #$2,d1
loc_20761a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207622:
	jsr (sub_203908).l
	moveq #$1,d0
	rts
loc_20762c:
	btst.b #$7,($ff152e).l
	bne.s loc_2075e0
	moveq #$0,d0
	rts
dat_20763a:
	.incbin 30266, 4002
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2085f6(pc,d0.w),d0
	jsr dat_2085f6(pc,d0.w)
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_2085f6:
	dc.b $00,$04,$00,$2c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$208662,$4(a0)
	move.b $28(a0),$1a(a0)
	move.b #$10,$19(a0)
	move.b #$18,$16(a0)
	bsr.w sub_208624
	rts

sub_208624:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	andi.b #$7f,d0
	cmpi.b #$2,d0
	bne.s loc_20863e
	moveq #$1,d0
	add.b ($ff156a).l,d0
loc_20863e:
	add.w d0,d0
	add.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_208656(pc,d0.w),$2(a0)
	ori.w #$4000,$2(a0)
	rts
dat_208656:
	.incbin 34390, 74
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2086ba(pc,d0.w),d0
	jsr dat_2086ba(pc,d0.w)
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_2086ba:
	dc.b $00,$04,$00,$32
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$6,$18(a0)
	move.l #$20872e,$4(a0)
	move.b $28(a0),$1a(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	bsr.w sub_2086ee
	rts

sub_2086ee:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	andi.b #$7f,d0
	cmpi.b #$2,d0
	bne.s loc_208706
	add.b ($ff156a).l,d0
loc_208706:
	add.w d0,d0
	add.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20871e(pc,d0.w),$2(a0)
	ori.w #$4000,$2(a0)
	rts
dat_20871e:
	.incbin 34590, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208752(pc,d0.w),d0
	jsr dat_208752(pc,d0.w)
	jmp (loc_2075be).l
dat_208752:
	dc.b $00,$06,$00,$52,$00,$98
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$3a0,$2(a0)
	tst.b ($ff152e).l
	bne.s loc_208776
	move.w #$3bb,$2(a0)
loc_208776:
	move.l #$208814,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$6,$18(a0)
	bsr.w sub_2087f0
	beq.s loc_20879e
	addq.b #$2,$24(a0)
	bra.w loc_2087ea
loc_20879e:
	bclr.b #$6,$2(a1,d0.w)
	lea ($d000).w,a6
	tst.b $2c(a6)
	beq.s loc_2087e8
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	bmi.s loc_2087e8
	cmpi.w #$40,d0
	bcc.s loc_2087e8
	move.w $c(a6),d0
	sub.w $c(a0),d0
	addi.w #$20,d0
	bmi.s loc_2087e8
	cmpi.w #$40,d0
	bcc.s loc_2087e8
	bsr.s sub_2087f0
	move.w #$a3,d0
	jsr (sub_20226a).l
	addq.b #$2,$24(a0)
	bra.s loc_2087ea
loc_2087e8:
	rts
loc_2087ea:
	jmp (sub_20385c).l

sub_2087f0:
	moveq #$0,d0
	move.b $23(a0),d0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bset.b #$6,$2(a1,d0.w)
	rts
	.incbin 34836, 18
	btst.b #$7,($ff152e).l
	beq.s loc_208870
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208870
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
	bpl.s loc_208860
	moveq #$0,d1
	bra.s loc_208868
loc_208860:
	cmpi.w #$3,d1
	bcs.s loc_208868
	moveq #$2,d1
loc_208868:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208870:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_2088a0
	cmpi.b #$6,$24(a6)
	bcc.s loc_2088a0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2088a2(pc,d0.w),d1
	jsr dat_2088a2(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_2088a0
	jmp (loc_2075be).l
loc_2088a0:
	rts
dat_2088a2:
	dc.b $00,$08,$00,$4e,$00,$ee,$01,$02
	move.l #$21d928,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208ad8(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$10,d0
	cmpi.w #$20,d0
	bcc.w loc_20898e
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$10,d1
	cmpi.w #$20,d1
	bcc.w loc_20898e
	tst.b $2c(a6)
	bne.w loc_20898e
	cmpi.b #$4,$24(a6)
	bne.s loc_208932
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208932:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_208948
	ori.b #$40,$2c(a6)
loc_208948:
	move.b #$2,$1c(a6)
	bsr.w sub_208aac
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	clr.b $3c(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
loc_20898e:
	rts
	bsr.w sub_208a1c
	addq.b #$2,$24(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	rts
	subq.b #$1,$2e(a0)
	bpl.s loc_2089e0
	move.w $36(a0),$8(a6)
	move.w $38(a0),$c(a6)
	moveq #$0,d1
	move.b $3a(a0),d1
	addq.b #$4,d1
	cmp.b $3b(a0),d1
	bcs.s loc_2089c8
	moveq #$0,d1
	bra.s loc_208a06
loc_2089c8:
	move.b d1,$3a(a0)
	movea.l $3c(a0),a2
	move.w $0(a2,d1.w),$36(a0)
	move.w $2(a2,d1.w),$38(a0)
	bra.w sub_208a1c
loc_2089e0:
	move.l $8(a6),d2
	move.l $c(a6),d3
	move.w $10(a6),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a6),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a6)
	move.l d3,$c(a6)
	rts
loc_208a06:
	andi.w #$7ff,$c(a6)
	clr.b $24(a0)
	clr.b $2c(a6)
	move.w #$2,$24(a0)
	rts

sub_208a1c:
	moveq #$0,d0
	move.w $14(a6),d2
	move.w $14(a6),d3
	move.w $36(a0),d0
	sub.w $8(a6),d0
	bge.s loc_208a34
	neg.w d0
	neg.w d2
loc_208a34:
	moveq #$0,d1
	move.w $38(a0),d1
	sub.w $c(a6),d1
	bge.s loc_208a44
	neg.w d1
	neg.w d3
loc_208a44:
	cmp.w d0,d1
	bcs.s loc_208a7a
	moveq #$0,d1
	move.w $38(a0),d1
	sub.w $c(a6),d1
	swap d1
	divs.w d3,d1
	moveq #$0,d0
	move.w $36(a0),d0
	sub.w $8(a6),d0
	beq.s loc_208a66
	swap d0
	divs.w d1,d0
loc_208a66:
	move.w d0,$10(a6)
	move.w d3,$12(a6)
	tst.w d1
	bpl.s loc_208a74
	neg.w d1
loc_208a74:
	move.w d1,$2e(a0)
	rts
loc_208a7a:
	moveq #$0,d0
	move.w $36(a0),d0
	sub.w $8(a6),d0
	swap d0
	divs.w d2,d0
	moveq #$0,d1
	move.w $38(a0),d1
	sub.w $c(a6),d1
	beq.s loc_208a98
	swap d1
	divs.w d0,d1
loc_208a98:
	move.w d1,$12(a6)
	move.w d2,$10(a6)
	tst.w d0
	bpl.s loc_208aa6
	neg.w d0
loc_208aa6:
	move.w d0,$2e(a0)
	rts

sub_208aac:
	move.w #$1000,$14(a6)
	moveq #$0,d0
	move.b $28(a0),d0
	bmi.s loc_208ace
	andi.w #$f,d0
	add.w d0,d0
	move.w dat_208ad0(pc,d0.w),d0
	cmp.w $14(a6),d0
	ble.s loc_208ace
	move.w d0,$14(a6)
loc_208ace:
	rts
dat_208ad0:
	dc.b $10,$00,$0c,$00,$0c,$00,$08,$00
dat_208ad8:
	.incbin 35544, 284

sub_208bf4:
	btst.b #$3,$22(a0)
	beq.s loc_208c64
	btst.b #$3,$22(a1)
	beq.s loc_208c64
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208c64
	tst.b $2a(a1)
	beq.s loc_208c26
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_208c26:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208c52
	cmpi.b #$17,$1c(a1)
	beq.s loc_208c52
	bclr.b #$0,$2c(a1)
loc_208c52:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c64
	bclr.b #$1,$22(a1)
loc_208c64:
	rts

sub_208c66:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c78
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c78:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208cd8
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c9a
	bclr.b #$3,$22(a0)
	bra.w sub_208bf4
loc_208c9a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208cd8
	tst.b ($ff195b).l
	beq.s loc_208cc2
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208cd2
loc_208cc2:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208cd2:
	move.b #$0,$1c(a1)
loc_208cd8:
	bset.b #$3,$22(a1)
	beq.s loc_208cfa
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208d32
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208cfa:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208d26
	cmpi.b #$2,$24(a0)
	beq.s loc_208d2c
loc_208d26:
	move.w $10(a1),$14(a1)
loc_208d2c:
	bclr.b #$1,$22(a1)
loc_208d32:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208d3c:
	move.b #$1,$25(a0)

sub_208d42:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208ff6
	btst.b #$6,$2c(a1)
	bne.w loc_208ff6
	cmpi.b #$6,$24(a1)
	bcc.w loc_208ff6
	tst.b $0(a1)
	beq.w loc_208ff6
	tst.b $1(a0)
	bpl.w loc_208ff6
	tst.b ($ff1906).l
	bne.w loc_208ff6
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208ff6
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208ff6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208db0
	btst.b #$3,$22(a0)
	bne.s loc_208dc2
	bra.w loc_208ff6
loc_208db0:
	cmpi.b #$1,$25(a0)
	bne.s loc_208dc2
	tst.w $12(a1)
	beq.s loc_208dc2
	bmi.w loc_208ff6
loc_208dc2:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208ff6
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208ff6
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208df8
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208df8:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208e06
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208e06:
	cmp.w d4,d5
	bcs.w loc_208e9a
	cmpi.b #$1,$25(a0)
	beq.w loc_208ff6
	cmpi.b #$a,$0(a0)
	bne.s loc_208e28
	btst.b #$1,$22(a1)
	bne.w loc_208ff6
loc_208e28:
	cmpi.b #$4,d5
	bls.w loc_208ff6
	bsr.w sub_209046
	move.l d0,-(a7)
	bsr.w sub_208bf4
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208e52
	tst.w $10(a1)
	beq.s loc_208e82
	bpl.s loc_208e5a
	bra.s loc_208e82
loc_208e52:
	tst.w $10(a1)
	beq.s loc_208e82
	bpl.s loc_208e82
loc_208e5a:
	bsr.w sub_209006
	btst.b #$1,$22(a1)
	bne.s loc_208e78
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e78:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e82:
	bsr.w sub_2090bc
	bsr.w sub_209006
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208e9a:
	cmpi.b #$19,$0(a0)
	bne.s loc_208eac
	btst.b #$2,$22(a1)
	bne.w loc_208ff6
loc_208eac:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208ec2
	bmi.w loc_208f92
loc_208ec2:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208ed4
	tst.w $12(a1)
	beq.s loc_208ed4
	bmi.w loc_208ff6
loc_208ed4:
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
	beq.s loc_208f20
	bpl.s loc_208f00
	neg.b d0
loc_208f00:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066b6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f20
	tst.w $10(a0)
	bpl.s loc_208f1c
	neg.w d1
loc_208f1c:
	add.w d1,$8(a1)
loc_208f20:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f8a
	tst.w $12(a0)
	bmi.s loc_208f5e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206748).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f5e
	add.w d1,$c(a1)
	bra.w loc_208ff6
loc_208f5e:
	tst.w $12(a0)
	bpl.s loc_208f8a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206960).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f8a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d24).l
	movem.l (a7)+,a0-a1
	bra.s loc_208ff6
loc_208f8a:
	bsr.w sub_208c66
	moveq #$1,d0
	rts
loc_208f92:
	cmpi.b #$1,$25(a0)
	beq.s loc_208ff6
	cmpi.b #$9,$0(a0)
	beq.s loc_208ff6
	cmpi.b #$a,$0(a0)
	bne.s loc_208fbc
	cmpi.b #$2,$25(a0)
	beq.s loc_208fdc
	btst.b #$1,$1(a0)
	bne.s loc_208fdc
	bra.s loc_208ff6
loc_208fbc:
	btst.b #$1,$22(a1)
	bne.s loc_208fdc
	tst.w $12(a0)
	beq.s loc_208fdc
	bmi.s loc_208fdc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d24).l
	movem.l (a7)+,a0-a1
loc_208fdc:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2090bc
	bsr.w sub_208bf4
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208ff6:
	bsr.w sub_2090bc
	bsr.w sub_208bf4
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209006:
	tst.w $10(a0)
	beq.s loc_209044
	cmpi.b #$a,$0(a0)
	beq.s loc_209044
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209020
	neg.b d0
loc_209020:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066b6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209044
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d24).l
	movem.l (a7)+,a0-a1
loc_209044:
	rts

sub_209046:
	cmpi.b #$a,$0(a0)
	bne.s loc_209056
	move.b #$0,$20(a1)
	rts
loc_209056:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090aa
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2090ba
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209078
	tst.w $10(a2)
	beq.s loc_2090ba
loc_209078:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20908a
	cmp.w $8(a2),d1
	bcs.s loc_2090ba
	bra.s loc_209090
loc_20908a:
	cmp.w $8(a2),d1
	bcc.s loc_2090ba
loc_209090:
	cmpi.b #$15,$0(a0)
	beq.s loc_2090ba
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d24).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2090aa:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2090ba:
	rts

sub_2090bc:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090d6
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2090d6
	move.b #$0,$20(a1)
loc_2090d6:
	rts

sub_2090d8:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d42).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209112(pc,d0.w),d0
	jsr dat_209112(pc,d0.w)
	tst.w ($ff190e).l
	bne.s loc_209106
	lea (dat_2092fe).l,a1
	bsr.w sub_205a76
loc_209106:
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_209112:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$209306,$4(a0)
	moveq #$6,d0
	jsr sub_20cae4(pc)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	tst.b $1(a0)
	bpl.w loc_209184
	lea ($d000).w,a1
	bsr.s sub_2090d8
	beq.s loc_209184
	bset.b #$0,$2c(a1)
	bne.s loc_20917a
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_209176
	neg.w d0
	move.b #$80,$2b(a1)
loc_209176:
	move.b d0,$39(a1)
loc_20917a:
	cmpi.b #$6,$24(a1)
	bcc.s loc_209184
	bra.s loc_209186
loc_209184:
	rts
loc_209186:
	addq.b #$8,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_20076e).l
	moveq #$0,d0
	move.b $39(a1),d0
	muls.w d1,d0
	lsr.l #$8,d0
	move.w $8(a0),$8(a1)
	add.w d0,$8(a1)
	moveq #$0,d0
	move.b $2b(a1),d0
	move.b d0,d1
	andi.b #$f0,d0
	lsr.b #$4,d0
	move.b dat_2091d6(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_2091c6
	addq.b #$1,$39(a1)
loc_2091c6:
	move.w ($f604).w,($f602).w
	bsr.w sub_2091e6
	bra.w loc_209238
	dc.b $4e,$75
dat_2091d6:
	.incbin 37334, 16

sub_2091e6:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_209214
	btst.b #$2,($f602).w
	beq.s loc_2091fe
	addq.b #$1,$39(a1)
	bra.s loc_209236
loc_2091fe:
	btst.b #$3,($f602).w
	beq.s loc_209236
	subq.b #$1,$39(a1)
	bcc.s loc_209236
	move.b #$0,$39(a1)
	bra.s loc_209236
loc_209214:
	btst.b #$3,($f602).w
	beq.s loc_209222
	addq.b #$1,$39(a1)
	bra.s loc_209236
loc_209222:
	btst.b #$2,($f602).w
	beq.s loc_209236
	subq.b #$1,$39(a1)
	bcc.s loc_209236
	move.b #$0,$39(a1)
loc_209236:
	rts
loc_209238:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2092f4
	clr.b $2c(a1)
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_209258
	move.w #$380,d2
loc_209258:
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_20076e).l
	muls.w d2,d1
	asr.l #$8,d1
	add.w d1,$10(a1)
	muls.w d2,d0
	asr.l #$8,d0
	add.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$1,$3c(a1)
	clr.b $38(a1)
	move.w #$a0,d0
	jsr (sub_20226a).l
	tst.b ($ff195b).l
	beq.s loc_2092ae
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_2092ba
loc_2092ae:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_2092ba:
	btst.b #$2,$22(a1)
	bne.s loc_2092f6
	tst.b ($ff195b).l
	beq.s loc_2092d8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_2092e8
loc_2092d8:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_2092e8:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_2092f4:
	rts
loc_2092f6:
	bset.b #$4,$22(a1)
	rts
dat_2092fe:
	.incbin 37630, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209344(pc,d0.w),d0
	jsr dat_209344(pc,d0.w)
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_209344:
	dc.b $00,$04,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$209394,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$0,$1a(a0)
	moveq #$b,d0
	jsr (sub_20cae4).l
	tst.b $1(a0)
	bpl.s loc_209392
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d42).l
loc_209392:
	rts
	.incbin 37780, 268
loc_2094a0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094ae(pc,d0.w),d0
	jmp dat_2094ae(pc,d0.w)
dat_2094ae:
	.incbin 38062, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2094a0
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209504
	tst.b $1(a0)
	bpl.s loc_20950c
loc_209504:
	move.w dat_20955e(pc,d0.w),d1
	jsr dat_20955e(pc,d1.w)
loc_20950c:
	bsr.w sub_20385c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20953e
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20953e:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203908
	rts
dat_20955e:
	.incbin 38238, 26
	addq.b #$2,$24(a0)
	move.l #$2098e0,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2095ce
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2098e6,$4(a0)
	bra.s loc_209610
loc_2095ce:
	btst.l #$3,d0
	beq.s loc_2095fc
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209930,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cae4).l
	move.l (a7)+,d0
	bra.s loc_209610
loc_2095fc:
	btst.b #$1,$1(a0)
	beq.s loc_209610
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209610:
	btst.l #$1,d0
	beq.s loc_20961c
	bset.b #$5,$2(a0)
loc_20961c:
	andi.w #$2,d0
	move.w dat_209628(pc,d0.w),$30(a0)
	rts
dat_209628:
	dc.b $f0,$00,$f6,$00

sub_20962c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d42).l
	tst.b $1(a0)
	bpl.s loc_209648
	lea ($d000).w,a1
	bsr.s sub_20962c
	bne.s loc_20964a
loc_209648:
	rts
loc_20964a:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20226a).l
	lea (dat_2098d2).l,a1
	bra.w sub_205a76
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_20969e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d42).l
	tst.b $1(a0)
	bpl.s loc_2096c0
	lea ($d000).w,a1
	bsr.s sub_20969e
	btst.b #$5,$22(a0)
	bne.s loc_2096c2
loc_2096c0:
	rts
loc_2096c2:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2096f0
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2096f0:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20970a
	move.b #$0,$1c(a1)
loc_20970a:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20226a).l
	lea (dat_2098d2).l,a1
	bra.w sub_205a76
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38720, 106
	tst.b $1(a0)
	bpl.s loc_2097c2
	lea ($d000).w,a1
	bsr.w sub_20962c
	bne.s loc_2097c4
	btst.b #$5,$22(a0)
	bne.s loc_2097c4
loc_2097c2:
	rts
loc_2097c4:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_20076e).l
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
	beq.s loc_209802
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_209802:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_209824
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_209824:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_20226a).l
	lea (dat_2098d2).l,a1
	bra.w sub_205a76
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 39016, 106
dat_2098d2:
	.incbin 39122, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099cc(pc,d0.w),d1
	jmp dat_2099cc(pc,d1.w)
dat_2099cc:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2099d6:
	.incbin 39382, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a2e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a26
	moveq #$0,d1
	bra.s loc_209a2e
loc_209a26:
	cmpi.w #$3,d1
	bcs.s loc_209a2e
	moveq #$2,d1
loc_209a2e:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209a4a
	moveq #$6,d1
loc_209a4a:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2099d6).l,a1
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
	beq.s loc_209a9a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a92
	moveq #$0,d0
	bra.s loc_209a9a
loc_209a92:
	cmpi.w #$3,d0
	bcs.s loc_209a9a
	moveq #$2,d0
loc_209a9a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b68
	dbf d0,loc_209a9a
	bclr.b #$7,(a2)
	bra.s loc_209af0
loc_209aac:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ad8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ad0
	moveq #$0,d0
	bra.s loc_209ad8
loc_209ad0:
	cmpi.w #$3,d0
	bcs.s loc_209ad8
	moveq #$2,d0
loc_209ad8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b68
	dbf d0,loc_209ad8
	bclr.b #$7,(a2)
	bsr.w sub_20759e
	bne.w loc_209b74
loc_209af0:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209e3a,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b46
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209b46
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209b46:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209b68:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209aac
loc_209b74:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209b9a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b92
	moveq #$0,d0
	bra.s loc_209b9a
loc_209b92:
	cmpi.w #$3,d0
	bcs.s loc_209b9a
	moveq #$2,d0
loc_209b9a:
	lea $1(a2),a3
loc_209b9e:
	btst.b #$0,-(a3)
	bne.w sub_203908
	dbf d0,loc_209b9e
	tst.b $1(a0)
	bmi.s loc_209bce
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209c48
loc_209bce:
	tst.w ($ff190e).l
	bne.s loc_209bde
	move.b ($ff1913).l,$1a(a0)
loc_209bde:
	bra.w sub_20385c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c4c
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209c2e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209c26
	moveq #$0,d1
	bra.s loc_209c2e
loc_209c26:
	cmpi.w #$3,d1
	bcs.s loc_209c2e
	moveq #$2,d1
loc_209c2e:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209e32).l,a1
	bsr.w sub_205a76
	bra.w sub_20385c
loc_209c48:
	bra.w sub_203908

sub_209c4c:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c9c
	bset.b #$1,($ff150d).l
	beq.s loc_209c86
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c9c
	bset.b #$2,($ff150d).l
	bne.s loc_209c9c
loc_209c86:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a36).l
loc_209c9c:
	jmp (sub_20226a).l
	.incbin 40098, 400
dat_209e32:
	.incbin 40498, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ff2(pc,d0.w),d0
	jsr dat_209ff2(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203908
	rts
dat_209ff2:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a13a,$4(a0)
	moveq #$5,d0
	jsr (sub_20cae4).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a106
	tst.b ($ff152e).l
	beq.s loc_20a06c
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a052
	btst.b #$3,$22(a0)
	bne.s loc_20a072
	bra.s loc_20a06c
loc_20a052:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a06c
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a06c:
	jmp (sub_20385c).l
loc_20a072:
	addq.b #$2,$24(a0)
	bsr.w sub_20a106
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a092
	jmp (sub_203908).l
loc_20a092:
	jmp (sub_20385c).l
	.incbin 41112, 110

sub_20a106:
	lea ($d000).w,a1
	bsr.w sub_20a10e

sub_20a10e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d3c).l
	.incbin 41244, 106
loc_20a186:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a1b4(pc,d0.w),d0
	jsr dat_20a1b4(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a1b2
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a1ac
	btst.b #$0,($ff1505).l
	bne.s loc_20a1b2
loc_20a1ac:
	jmp (sub_20385c).l
loc_20a1b2:
	rts
dat_20a1b4:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a78e,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a1e8
	move.b #$13,$1a(a0)
loc_20a1e8:
	rts
loc_20a1ea:
	tst.b ($ff0f01).l
	beq.s loc_20a1f8
	jmp (sub_203908).l
loc_20a1f8:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a186
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a21c(pc,d0.w),d0
	jsr dat_20a21c(pc,d0.w)
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_20a21c:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a78e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a26a
	tst.b $29(a0)
	bne.s loc_20a26a
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a26a:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a336
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a292
	addq.b #$2,$1a(a0)
loc_20a292:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a2a6
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a2a6:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a30c
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a2d8
	tst.b $29(a0)
	beq.s loc_20a2d0
	tst.b ($ff1956).l
	beq.s loc_20a30c
	bra.s loc_20a2d8
loc_20a2d0:
	tst.b ($ff1956).l
	bne.s loc_20a30c
loc_20a2d8:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a336
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a306
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a306:
	jsr (sub_205a36).l
loc_20a30c:
	rts
	.incbin 41742, 40

sub_20a336:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a36e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a366
	moveq #$0,d1
	bra.s loc_20a36e
loc_20a366:
	cmpi.w #$3,d1
	bcs.s loc_20a36e
	moveq #$2,d1
loc_20a36e:
	add.w d1,d0
	rts

sub_20a372:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a394
	tst.b ($ff1956).l
	beq.s loc_20a38c
	tst.b $29(a0)
	bne.s loc_20a394
	rts
loc_20a38c:
	tst.b $29(a0)
	beq.s loc_20a394
	rts
loc_20a394:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d42).l
	tst.b $28(a0)
	bne.s loc_20a3b6
	tst.b ($ff0f01).l
	beq.s loc_20a3b6
	jmp (loc_2075be).l
loc_20a3b6:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a1ea
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a3ce(pc,d0.w),d1
	jmp dat_20a3ce(pc,d1.w)
dat_20a3ce:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a78e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a418
	tst.b $29(a0)
	bne.s loc_20a418
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a418:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a336
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a444
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a444:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a49e
	move.b $25(a0),d0
	beq.s loc_20a47e
	bsr.w sub_2037a4
	jsr (sub_2067f6).l
	tst.w d1
	bpl.w loc_20a48c
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a48c
loc_20a47e:
	tst.b $1(a0)
	bpl.s loc_20a48c
	lea ($d000).w,a1
	bsr.w sub_20a372
loc_20a48c:
	tst.w ($ff190e).l
	bne.s loc_20a49e
	lea (dat_20a706).l,a1
	bsr.w sub_205a76
loc_20a49e:
	bsr.w sub_20385c
	jmp (loc_2075be).l
	move.w #$96,d0
	jsr (sub_20226a).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207588
	bne.s loc_20a4e0
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a4e0:
	bsr.w sub_207588
	bne.s loc_20a50a
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a50a:
	bsr.w sub_20a336
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_20385c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a530(pc,d0.w),d1
	jsr dat_20a530(pc,d1.w)
	bra.w sub_20385c
dat_20a530:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a54c
	andi.b #$7f,$2(a0)
loc_20a54c:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a78e,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a594
	bsr.w sub_203806
	addi.w #$18,$12(a0)
	rts
loc_20a594:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a5ba
loc_20a5a4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a36).l
loc_20a5ba:
	cmpi.b #$1,d0
	bne.s loc_20a606
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a5fc
	bset.b #$1,($ff150d).l
	beq.w loc_20a5a4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a5fc
	bset.b #$2,($ff150d).l
	beq.w loc_20a5a4
loc_20a5fc:
	move.w #$95,d0
	jmp (sub_20226a).l
loc_20a606:
	cmpi.b #$2,d0
	bne.s loc_20a624

sub_20a60c:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_20226a).l
loc_20a624:
	cmpi.b #$3,d0
	bne.s loc_20a686

sub_20a62a:
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
	bne.s loc_20a67a
	move.w #$82,d0
	jsr (sub_205a36).l
loc_20a67a:
	move.w #$6d,d0
	jmp (sub_205a36).l
	dc.b $4e,$75
loc_20a686:
	cmpi.b #$4,d0
	bne.s loc_20a6c8
loc_20a68c:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a6be
	move.w #$82,d0
	jsr (sub_205a36).l
loc_20a6be:
	move.w #$6c,d0
	jmp (sub_205a36).l
loc_20a6c8:
	cmpi.b #$5,d0
	bne.s loc_20a6d8
	move.w #$12c,($ff190e).l
	rts
loc_20a6d8:
	cmpi.b #$6,d0
	bne.s loc_20a6f2
	move.w #$9d,d0
	jsr (sub_20226a).l
	move.b #$1,($ff156f).l
	rts
loc_20a6f2:
	bsr.w sub_20a60c
	bsr.w sub_20a62a
	bra.s loc_20a68c
	subq.w #$1,$1e(a0)
	bmi.w sub_203908
	rts
dat_20a706:
	.incbin 42758, 586
loc_20a950:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a964(pc,d0.w),d0
	jsr dat_20a964(pc,d0.w)
	jmp (sub_20385c).l
dat_20a964:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a9a4,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a99e
	jmp (sub_203908).l
loc_20a99e:
	subq.w #$2,$c(a0)
	rts
	.incbin 43428, 82
	tst.b $28(a0)
	bmi.w loc_20a950
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa0c(pc,d0.w),d0
	jmp dat_20aa0c(pc,d0.w)
dat_20aa0c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20aaa6,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20aa3c
	move.b #$3,$1a(a0)
	bra.s loc_20aa5c
loc_20aa3c:
	tst.w ($ff1588).l
	beq.s loc_20aa4a
	move.b #$2,$1a(a0)
loc_20aa4a:
	tst.b $28(a0)
	beq.s loc_20aa5c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20aa5c:
	tst.b $28(a0)
	bne.s loc_20aaa0
	tst.b $29(a0)
	beq.s loc_20aa8c
	tst.w ($ff1512).l
	beq.s loc_20aa78
	bclr.b #$5,$2(a0)
	bra.s loc_20aaa0
loc_20aa78:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20aaa0
	eori.b #$20,$2(a0)
	bra.s loc_20aaa0
loc_20aa8c:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20aaa0
	move.b #$2,$1a(a0)
loc_20aaa0:
	jmp (sub_20385c).l
	.incbin 43686, 168

sub_20ab4e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ab6a
	move.l d1,(a3)
loc_20ab6a:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ab94
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a36).l
loc_20ab94:
	rts
loc_20ab96:
	tst.w ($ff1588).l
	beq.s loc_20abec
	bsr.w sub_20ade8
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
	lea (dat_20af48).l,a2
	moveq #$2,d6
	bsr.w sub_20afa0
	bra.w loc_20ac46
loc_20abec:
	tst.b ($ff1511).l
	beq.s loc_20ac10
	bpl.s loc_20abfa
	bsr.w sub_20ad92
loc_20abfa:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ae82
loc_20ac10:
	tst.b ($ff150f).l
	beq.s loc_20ac46
	bpl.s loc_20ac1e
	bsr.w sub_20ad7e
loc_20ac1e:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20ac42
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20ac42:
	bsr.w sub_20ae78
loc_20ac46:
	tst.w ($ff1588).l
	bne.w loc_20acf2
	tst.b ($ff1510).l
	beq.w loc_20acf2
	tst.w ($f63a).w
	bne.w loc_20acf2
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ad50
	tst.b ($f7cc).w
	bne.s loc_20ac9c
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac9c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac9c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ac9c
	move.b #$9,(a1)
loc_20ac9c:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20af8e
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20af98
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20acee
	move.w #$63,d1
loc_20acee:
	bsr.w sub_20af98
loc_20acf2:
	tst.b ($ff150e).l
	beq.s loc_20ad04
	clr.b ($ff150e).l
	bsr.w sub_20af6e
loc_20ad04:
	tst.b ($f7d6).w
	beq.s loc_20ad4e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ad24
	move.l #$6d400001,d0
loc_20ad24:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ae06
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ad44
	move.l #$6e800001,d0
loc_20ad44:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ae06
loc_20ad4e:
	rts
loc_20ad50:
	btst.b #$7,($ff152e).l
	bne.s loc_20ad7c
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d24
	move.b #$1,($ff150c).l
loc_20ad7c:
	rts

sub_20ad7e:
	move.l #$73600002,($c00004).l
	lea dat_20ade4(pc),a2
	move.w #$2,d2
	bra.s loc_20adae

sub_20ad92:
	lea ($c00000).l,a6
	bsr.w sub_20af6e
	move.l #$70600002,($c00004).l
	lea dat_20addc(pc),a2
	move.w #$6,d2
loc_20adae:
	lea (dat_236456).l,a1
loc_20adb4:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20add0
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20adc4:
	move.l (a3)+,(a6)
	dbf d1,loc_20adc4
loc_20adca:
	dbf d2,loc_20adb4
	rts
loc_20add0:
	move.l #$0,(a6)
	dbf d1,loc_20add0
	bra.s loc_20adca
dat_20addc:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ade4:
	dc.b $ff,$ff,$00,$00

sub_20ade8:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20af64
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20af64

sub_20ae06:
	lea (dat_20af40).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20ae16:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae1a:
	sub.l d3,d1
	bcs.s loc_20ae22
	addq.w #$1,d2
	bra.s loc_20ae1a
loc_20ae22:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae2c
	move.w #$1,d4
loc_20ae2c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ae38
	tst.w d6
	bne.s loc_20ae6a
loc_20ae38:
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
loc_20ae5e:
	addi.l #$400000,d0
	dbf d6,loc_20ae16
	rts
loc_20ae6a:
	moveq #$f,d5
loc_20ae6c:
	move.l #$0,(a6)
	dbf d5,loc_20ae6c
	bra.s loc_20ae5e

sub_20ae78:
	lea (dat_20af48).l,a2
	moveq #$2,d6
	bra.s loc_20ae8a

sub_20ae82:
	lea (dat_20af3c).l,a2
	moveq #$5,d6
loc_20ae8a:
	moveq #$0,d4
	lea (dat_236456).l,a1
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
	tst.w d2
	beq.s loc_20aea8
	move.w #$1,d4
loc_20aea8:
	tst.w d4
	beq.s loc_20aed6
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
loc_20aed6:
	addi.l #$400000,d0
	dbf d6,loc_20ae92
	rts
	.incbin 44770, 90
dat_20af3c:
	dc.b $00,$01,$86,$a0
dat_20af40:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20af48:
	dc.b $00,$00,$00,$64
dat_20af4c:
	dc.b $00,$00,$00,$0a
dat_20af50:
	dc.b $00,$00,$00,$01
dat_20af54:
	.incbin 44884, 16

sub_20af64:
	moveq #$3,d6
	lea (dat_20af54).l,a2
	bra.s sub_20afa0

sub_20af6e:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20af84
	moveq #$9,d1
loc_20af84:
	lea (dat_20af50).l,a2
	moveq #$0,d6
	bra.s sub_20afa0

sub_20af8e:
	lea (dat_20af50).l,a2
	moveq #$0,d6
	bra.s sub_20afa0

sub_20af98:
	lea (dat_20af4c).l,a2
	moveq #$1,d6

sub_20afa0:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20afa8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20afac:
	sub.l d3,d1
	bcs.s loc_20afb4
	addq.w #$1,d2
	bra.s loc_20afac
loc_20afb4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20afbe
	move.w #$1,d4
loc_20afbe:
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
	dbf d6,loc_20afa8
	rts
	jsr (sub_20e95c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b018(pc,d0.w),d0
	jsr dat_20b018(pc,d0.w)
	jsr (sub_20385c).l
	move.w $2e(a0),d0
	jmp (loc_2075c2).l
dat_20b018:
	dc.b $00,$06,$00,$60,$00,$7a
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20b0ea,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$13,$16(a0)
	move.b #$29,$20(a0)
	move.w $8(a0),$2e(a0)
	moveq #$2,d0
	jsr (sub_20cae4).l
	tst.b $28(a0)
	bne.s loc_20b068
	move.l #$ffff0000,d0
	moveq #$0,d1
	bra.s loc_20b070
loc_20b068:
	move.l #$ffff8000,d0
	moveq #$1,d1
loc_20b070:
	move.l d0,$2a(a0)
	move.b d1,$1c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_2067f6).l
	tst.w d1
	bpl.s loc_20b090
	addq.b #$2,$24(a0)
loc_20b090:
	rts
loc_20b092:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2e(a0),d0
	bpl.s loc_20b0a6
	neg.w d0
loc_20b0a6:
	cmpi.w #$80,d0
	bge.s loc_20b0cc
	jsr (sub_2067f6).l
	cmpi.w #$fff9,d1
	blt.s loc_20b0cc
	cmpi.w #$7,d1
	bgt.s loc_20b0cc
	add.w d1,$c(a0)
	lea dat_20b0de(pc),a1
	jmp (sub_205a76).l
loc_20b0cc:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b092
dat_20b0de:
	.incbin 45278, 124
	jsr (sub_20e95c).l
	tst.b $24(a0)
	bne.w loc_20b1ea
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$2a,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	move.w #$8000,$2e(a0)
	moveq #$1,d0
	jsr (sub_20cae4).l
	tst.b $28(a0)
	bne.s loc_20b1c4
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b26e(pc),a1
	bra.s loc_20b1d6
loc_20b1c4:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b290(pc),a1
loc_20b1d6:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b1ea:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b1fe
	neg.w d0
loc_20b1fe:
	cmpi.w #$80,d0
	blt.s loc_20b220
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b220:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_20076e).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b25c(pc),a1
	jsr (sub_205a76).l
	jsr (sub_20385c).l
	move.w $2a(a0),d0
	jmp (loc_2075c2).l
dat_20b25c:
	.incbin 45660, 18
dat_20b26e:
	.incbin 45678, 34
dat_20b290:
	.incbin 45712, 40
	jsr (sub_20e95c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2dc(pc,d0.w),d0
	jsr dat_20b2dc(pc,d0.w)
	jsr (sub_20385c).l
	move.w $2a(a0),d0
	jmp (loc_2075c2).l
dat_20b2dc:
	dc.b $00,$0a,$00,$70,$00,$e8,$00,$f2
	dc.b $01,$20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$2b,$20(a0)
	move.w $8(a0),$2a(a0)
	moveq #$0,d0
	jsr (sub_20cae4).l
	tst.b $28(a0)
	bne.s loc_20b332
	lea dat_20b426(pc),a1
	lea dat_20b40a(pc),a2
	move.l #$ffff0000,d0
	bra.s loc_20b340
loc_20b332:
	lea dat_20b462(pc),a1
	lea dat_20b418(pc),a2
	move.l #$ffff8000,d0
loc_20b340:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	tst.w ($ff1906).l
	bne.s loc_20b35c
	lea ($d000).w,a1
	bsr.s sub_20b39e
	bcs.s loc_20b392
loc_20b35c:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b370
	neg.w d0
loc_20b370:
	cmpi.w #$80,d0
	blt.s loc_20b388
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b35c
loc_20b388:
	movea.l $30(a0),a1
	jmp (sub_205a76).l
loc_20b392:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	rts

sub_20b39e:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffd0,d0
	subi.w #$70,d0
	bcc.s loc_20b3c2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffd0,d1
	subi.w #$60,d1
loc_20b3c2:
	rts
	.incbin 46020, 70
dat_20b40a:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $06,$02,$03,$04,$fc,$00
dat_20b418:
	dc.b $00,$04,$00,$08,$04,$00,$01,$ff
	dc.b $0e,$02,$03,$04,$fc,$00
dat_20b426:
	.incbin 46118, 60
dat_20b462:
	.incbin 46178, 66
	cmpi.b #$1,$28(a0)
	beq.w loc_20b6e6
	jsr (sub_20e95c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b4d2(pc,d0.w),d0
	jsr dat_20b4d2(pc,d0.w)
	jsr (sub_20385c).l
	move.w $2a(a0),d0
	jmp (loc_2075c2).l
dat_20b4d2:
	dc.b $00,$0c,$00,$72,$00,$8c,$01,$26
	dc.b $01,$30,$01,$3a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$2c,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$f,$16(a0)
	move.w $8(a0),$2a(a0)
	moveq #$4,d0
	jsr (sub_20cae4).l
	tst.b $28(a0)
	bne.s loc_20b52a
	lea dat_20b6a8(pc),a1
	lea dat_20b682(pc),a2
	move.l #$ffff6000,d0
	bra.s loc_20b538
loc_20b52a:
	lea dat_20b6be(pc),a1
	lea dat_20b68e(pc),a2
	move.l #$ffffb000,d0
loc_20b538:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_2067f6).l
	tst.w d1
	bpl.s loc_20b55c
	addq.b #$2,$24(a0)
loc_20b55c:
	rts
loc_20b55e:
	tst.w ($ff1906).l
	bne.s loc_20b580
	tst.b $28(a0)
	bne.s loc_20b580
	tst.w $34(a0)
	beq.s loc_20b578
	subq.w #$1,$34(a0)
	bra.s loc_20b580
loc_20b578:
	lea ($d000).w,a1
	bsr.s sub_20b5d2
	bcs.s loc_20b5cc
loc_20b580:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b594
	neg.w d0
loc_20b594:
	cmpi.w #$80,d0
	bge.s loc_20b5ba
	jsr (sub_2067f6).l
	cmpi.w #$fff9,d1
	blt.s loc_20b5ba
	cmpi.w #$7,d1
	bgt.s loc_20b5ba
	add.w d1,$c(a0)
	movea.l $30(a0),a1
	jmp (sub_205a76).l
loc_20b5ba:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b55e
loc_20b5cc:
	addq.b #$2,$24(a0)
	rts

sub_20b5d2:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b5f6
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20b5f6:
	rts
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	movea.l $30(a0),a1
	jmp (sub_205a76).l
	move.b #$4,$24(a0)
	move.b #$0,$1c(a0)
	move.w #$78,$34(a0)
	tst.b $28(a0)
	bne.s loc_20b650
	jsr (sub_207588).l
	bne.s loc_20b650
	tst.b $1(a0)
	bpl.s loc_20b63c
	move.w #$a0,d0
	jsr (sub_20226a).l
loc_20b63c:
	bsr.s sub_20b652
	sf $3f(a1)
	jsr (sub_207588).l
	bne.s loc_20b650
	bsr.s sub_20b652
	st $3f(a1)
loc_20b650:
	rts

sub_20b652:
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w $2(a0),$2(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$a,$c(a1)
	rts
dat_20b682:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $3b,$02,$fc,$00
dat_20b68e:
	.incbin 46734, 26
dat_20b6a8:
	.incbin 46760, 22
dat_20b6be:
	.incbin 46782, 40
loc_20b6e6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b6fa(pc,d0.w),d0
	jsr dat_20b6fa(pc,d0.w)
	jmp (sub_20385c).l
dat_20b6fa:
	.incbin 46842, 224
	jsr (sub_20e95c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b7fe(pc,d0.w),d0
	jsr dat_20b7fe(pc,d0.w)
	jsr (sub_20385c).l
	move.w $2a(a0),d0
	jmp (loc_2075c2).l
dat_20b7fe:
	dc.b $00,$0a,$00,$80,$00,$96,$00,$a0
	dc.b $00,$cc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$16,$16(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	moveq #$3,d0
	jsr (sub_20cae4).l
	tst.b $28(a0)
	bne.s loc_20b85a
	lea dat_20b940(pc),a1
	lea dat_20b904(pc),a2
	move.l #$fffc4000,d0
	move.l #$1000,d1
	bra.s loc_20b86e
loc_20b85a:
	lea dat_20b9a2(pc),a1
	lea dat_20b920(pc),a2
	move.l #$fffd0000,d0
	move.l #$1000,d1
loc_20b86e:
	move.l a1,$4(a0)
	move.l a2,$3c(a0)
	move.l d0,$30(a0)
	move.l d1,$38(a0)
	addq.b #$2,$24(a0)
	move.w #$ff,$1c(a0)
	move.b #$0,$20(a0)
	move.l $2c(a0),$c(a0)
	movea.l $3c(a0),a1
	jmp (sub_205a76).l
	addq.b #$2,$24(a0)
	move.w #$1ff,$1c(a0)
	move.b #$2e,$20(a0)
	move.l $2c(a0),$c(a0)
	move.l $30(a0),$34(a0)
	tst.b $1(a0)
	bpl.s loc_20b8ca
	move.w #$a2,d0
	jsr (sub_20226a).l
loc_20b8ca:
	move.l $34(a0),d0
	add.l d0,$c(a0)
	move.l $38(a0),d0
	add.l d0,$34(a0)
	move.w $c(a0),d0
	cmp.w $2c(a0),d0
	ble.s loc_20b8fa
	move.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20b8fa
	move.w #$a2,d0
	jsr (sub_20226a).l
loc_20b8fa:
	movea.l $3c(a0),a1
	jmp (sub_205a76).l
dat_20b904:
	.incbin 47364, 28
dat_20b920:
	.incbin 47392, 32
dat_20b940:
	.incbin 47424, 98
dat_20b9a2:
	.incbin 47522, 1208
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be68(pc,d0.w),d0
	jmp dat_20be68(pc,d0.w)
dat_20be68:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	move.l #$20bf30,$4(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	moveq #$a,d0
	jsr sub_20cae4(pc)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.b #$1,$1(a0)
	beq.s loc_20beaa
	move.b #$12,$19(a0)
	move.b #$83,$20(a0)
loc_20beaa:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20beba
	neg.w d0
loc_20beba:
	cmpi.w #$20,d0
	bcc.s loc_20bf24
	btst.b #$1,$1(a0)
	beq.s loc_20bed4
	lea ($d000).w,a1
	jsr (sub_208d42).l
	bra.s loc_20bf24
loc_20bed4:
	jsr (sub_208d42).l
	beq.s loc_20bf24
	btst.b #$3,$22(a0)
	beq.s loc_20bf24
	tst.b ($ff1521).l
	bne.s loc_20bf24
	tst.b ($ff151f).l
	bne.s loc_20bf24
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20bf22
	tst.w $30(a0)
	bne.s loc_20bf22
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206c84).l
loc_20bf22:
	movea.l (a7)+,a0
loc_20bf24:
	jsr (sub_20385c).l
	jmp (loc_2075be).l
	.incbin 48944, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bf6c(pc,d0.w),d0
	jsr dat_20bf6c(pc,d0.w)
	jsr (sub_20385c).l
	cmpi.b #$4,$24(a0)
	bge.s loc_20bf6a
	jmp (loc_2075be).l
loc_20bf6a:
	rts
dat_20bf6c:
	dc.b $00,$08,$00,$7a,$00,$a8,$00,$d4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$44be,$2(a0)
	lea dat_20c260(pc),a1
	lea dat_20c2d6(pc),a2
	move.b $28(a0),d0
	bpl.s loc_20bfa0
	lea dat_20c32c(pc),a1
	lea dat_20c3f0(pc),a2
loc_20bfa0:
	move.l a1,$4(a0)
	btst.l #$4,d0
	beq.s loc_20bfb6
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20bfb6:
	andi.w #$f,d0
	move.b d0,$1a(a0)
	add.w d0,d0
	move.w $0(a2,d0.w),d0
	move.b $0(a2,d0.w),d1
	addq.b #$1,d1
	asl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	move.b $1(a2,d0.w),d1
	bpl.s loc_20bfdc
	neg.b d1
loc_20bfdc:
	addq.b #$1,d1
	asl.b #$3,d1
	addq.b #$2,d1
	move.b d1,$16(a0)
	lea ($d000).w,a1
	jsr (sub_208d3c).l
	bne.s loc_20bff4
	rts
loc_20bff4:
	jsr (sub_208bf4).l
	move.w #$a3,d0
	jsr (sub_20226a).l
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	bpl.w loc_20c06c
	bra.w loc_20c170
	.incbin 49172, 88
loc_20c06c:
	move.b $28(a0),d0
	suba.l a4,a4
	btst.l #$4,d0
	beq.s loc_20c07c
	lea loc_20c06c(pc),a4
loc_20c07c:
	lea dat_20c2d6(pc),a6
	andi.w #$f,d0
	add.w d0,d0
	move.w $0(a6,d0.w),d0
	lea $0(a6,d0.w),a6
	moveq #$0,d0
	move.b (a6)+,d0
	movea.w d0,a5
	asl.w #$3,d0
	move.w #$fff0,d1
	cmpa.w #$0,a4
	bne.s loc_20c0a4
	neg.w d0
	neg.w d1
loc_20c0a4:
	add.w $8(a0),d0
	movea.w d0,a2
	movea.w d1,a3
	moveq #$0,d6
	move.b (a6)+,d6
	move.w d6,d4
	asl.w #$3,d4
	add.w $c(a0),d4
	move.w #$9,d2
	move.b $0(a0),$3f(a0)
loc_20c0c2:
	move.w a5,d5
	move.w a2,d3
	move.w d2,d1
loc_20c0c8:
	jsr (sub_207588).l
	bne.w loc_20c158
	move.b (a6)+,d0
	bmi.w loc_20c142
	move.b d0,$1a(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.w #$44be,$2(a1)
	move.l #$20c2ee,$4(a1)
	move.l #$20000,$2c(a1)
	move.b $3f(a0),$0(a1)
	move.b $24(a0),$24(a1)
	cmpa.w #$0,a4
	beq.s loc_20c11c
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
loc_20c11c:
	tst.w d6
	bne.s loc_20c136
	st $3e(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$9,$16(a1)
loc_20c136:
	move.w d4,$c(a1)
	move.w d3,$8(a1)
	move.w d1,$2a(a1)
loc_20c142:
	add.w a3,d3
	addi.w #$c,d1
	dbf d5,loc_20c0c8
	addi.w #$fff0,d4
	addq.w #$5,d2
	dbf d6,loc_20c0c2
	bra.s loc_20c16a
loc_20c158:
	lea ($d000).w,a1
	jsr (sub_208d3c).l
	beq.s loc_20c16a
	jsr (sub_208bf4).l
loc_20c16a:
	jmp (sub_203908).l
loc_20c170:
	move.b $28(a0),d2
	lea dat_20c3f0(pc),a6
	move.b d2,d0
	andi.w #$1f,d0
	add.w d0,d0
	move.w $0(a6,d0.w),d0
	lea $0(a6,d0.w),a6
	move.b (a6)+,d5
	move.b (a6)+,d1
	addq.b #$1,d1
	asl.b #$3,d1
	addq.b #$2,d1
	andi.w #$ff,d5
	move.w d5,d4
	lsl.w #$3,d4
	neg.w d4
	move.w #$10,d3
	moveq #$1,d6
	btst.l #$6,d2
	bne.w loc_20c1ae
	lsl.b #$2,d2
	bra.s loc_20c1c0
loc_20c1ae:
	lea ($d000).w,a1
	move.w $10(a1),d0
	btst.l #$5,d2
	beq.s loc_20c1be
	neg.w d0
loc_20c1be:
	tst.w d0
loc_20c1c0:
	bpl.s loc_20c1cc
	lea $0(a6,d5.w),a6
	neg.w d4
	neg.w d3
	neg.w d6
loc_20c1cc:
	add.w $8(a0),d4
	move.w #$9,d2
	move.b $0(a0),$3f(a0)
loc_20c1da:
	jsr (sub_207588).l
	bne.w loc_20c248
	move.b #$3,$18(a1)
	move.w #$44be,$2(a1)
	ori.b #$4,$1(a1)
	move.l #$20c3fc,$4(a1)
	move.l #$20000,$2c(a1)
	move.b $3f(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $c(a0),$c(a1)
	st $3e(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b d1,$16(a1)
	move.b (a6),$1a(a1)
	lea $0(a6,d6.w),a6
	move.w d4,$8(a1)
	add.w d3,d4
	move.w d2,$2a(a1)
	addi.w #$c,d2
	dbf d5,loc_20c1da
	bra.s loc_20c25a
loc_20c248:
	lea ($d000).w,a1
	jsr (sub_208d3c).l
	beq.s loc_20c25a
	jsr (sub_208bf4).l
loc_20c25a:
	jmp (sub_203908).l
dat_20c260:
	.incbin 49760, 118
dat_20c2d6:
	.incbin 49878, 86
dat_20c32c:
	.incbin 49964, 196
dat_20c3f0:
	.incbin 50160, 30
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c424(pc,d0.w),d0
	jsr dat_20c424(pc,d0.w)
	jsr (sub_20385c).l
	rts
dat_20c424:
	dc.b $00,$16,$00,$e8

sub_20c428:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d3c).l
	ori.b #$4,$1(a0)
	move.w #$44be,$2(a0)
	move.b #$2,$18(a0)
	move.w $8(a0),$38(a0)
	move.w $c(a0),$3a(a0)
	move.w $c(a0),$36(a0)
	move.l #$20c88c,d0
	cmpi.w #$0,($ff1506).l
	beq.s loc_20c484
	move.l #$20c88c,d0
	cmpi.w #$1,($ff1506).l
	beq.s loc_20c484
	move.l #$20c88c,d0
loc_20c484:
	move.l d0,$4(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$3,d0
	move.b d0,$1a(a0)
	move.b dat_20c504(pc,d0.w),$19(a0)
	move.b #$8,$16(a0)
	lsr.b #$2,d1
	andi.w #$3,d1
	move.b dat_20c508(pc,d1.w),$2d(a0)
	move.b $29(a0),d0
	beq.s loc_20c4fe
	jsr (sub_207588).l
	beq.s loc_20c4c2
	jmp (loc_20c862).l
loc_20c4c2:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$10,$c(a1)
	move.b #$f0,$39(a1)
	move.w a0,$34(a1)
	move.b $29(a0),d0
	move.b d0,d1
	andi.b #$2,d1
	move.b d1,$28(a1)
	andi.b #$f8,d0
	move.b d0,$38(a1)
	add.w d0,$8(a1)
loc_20c4fe:
	addq.b #$2,$24(a0)
	rts
dat_20c504:
	dc.b $10,$20,$30,$00
dat_20c508:
	dc.b $02,$03,$04,$06
	tst.w ($ff190e).l
	beq.s loc_20c518
	bra.w sub_20c428
loc_20c518:
	move.b $28(a0),d0
	lsr.b #$4,d0
	andi.w #$f,d0
	add.w d0,d0
	move.w dat_20c558(pc,d0.w),d0
	jsr dat_20c558(pc,d0.w)
	move.w $38(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c54a
	rts
loc_20c54a:
	lea ($d000).w,a1
	jsr (sub_208bf4).l
	bra.w loc_20c862
dat_20c558:
	.incbin 50520, 20
	addq.b #$1,$2a(a0)
	jsr sub_20c84a(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jmp (sub_20c428).l
	move.l $8(a0),-(a7)
	jsr sub_20c84a(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	addq.b #$1,$2a(a0)
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	move.l (a7)+,d0
	move.l $8(a0),d1
	sub.l d0,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
loc_20c5b4:
	jsr sub_20c428(pc)
	beq.s loc_20c5cc
	move.b $2c(a0),d0
	cmpi.b #$8,d0
	bcc.s loc_20c5c8
	addq.b #$1,$2c(a0)
loc_20c5c8:
	moveq #$1,d0
	rts
loc_20c5cc:
	moveq #$0,d0
	move.b $2c(a0),d0
	beq.s loc_20c5d8
	subq.b #$1,$2c(a0)
loc_20c5d8:
	moveq #$0,d0
	rts
	.incbin 50652, 74

sub_20c626:
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c5b4
	move.b $2b(a0),d0
	bne.s loc_20c652
	jsr sub_20c626(pc)
	bne.s loc_20c648
	rts
loc_20c648:
	move.b #$1e,$2e(a0)
	addq.b #$2,$2b(a0)
loc_20c652:
	move.b $2e(a0),d0
	beq.s loc_20c660
	subq.b #$1,$2e(a0)
	bra.w sub_20c626
loc_20c660:
	jsr sub_20c428(pc)
	move.l $c(a0),d1
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	move.l d1,$c(a0)
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20c686
	addi.w #$40,$12(a0)
loc_20c686:
	move.w ($f704).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c6a4
	lea ($d000).w,a1
	jsr (sub_208bf4).l
	jmp (sub_203908).l
loc_20c6a4:
	rts
	.incbin 50854, 420

sub_20c84a:
	moveq #$0,d0
	move.b $2a(a0),d0
	jsr (sub_20076e).l
	moveq #$0,d2
	move.b $2d(a0),d2
	muls.w d2,d0
	asr.w #$4,d0
	rts
loc_20c862:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c886
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c886:
	jmp (sub_203908).l
	.incbin 51340, 264
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9ae(pc,d0.w),d0
	jsr dat_20c9ae(pc,d0.w)
	jsr (sub_20385c).l
	jmp (loc_2075be).l
dat_20c9ae:
	dc.b $00,$18,$00,$44,$00,$90,$43,$f8
	dc.b $d0,$00
loc_20c9b8:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d42).l
	addq.b #$2,$24(a0)
	move.l #$20ca5e,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$19(a0)
	move.b #$18,$16(a0)
	moveq #$c,d0
	jsr (sub_20cae4).l
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20ca02
	neg.w d0
loc_20ca02:
	cmpi.w #$20,d0
	bcc.s loc_20ca3a
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcs.s loc_20ca3a
	cmpi.w #$30,d0
	bcc.s loc_20ca3a
	clr.w $3a(a0)
	move.b #$4,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20ca3a
	move.w #$a4,d0
	jsr (sub_20226a).l
	move.b #$1,$1a(a0)
loc_20ca3a:
	bra.w loc_20c9b8
	addq.b #$8,$3a(a0)
	bcc.s loc_20ca4e
	subq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
loc_20ca4e:
	rts
	.incbin 51792, 42
loc_20ca7a:
	lea dat_20cacc(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ca86:
	cmp.w (a1)+,d0
	bcs.s loc_20ca8e
	addq.b #$2,d1
	bra.s loc_20ca86
loc_20ca8e:
	move.b d1,($ff1574).l
	move.w dat_20cadc(pc,d1.w),d0
	jmp (sub_202434).l

sub_20ca9e:
	lea dat_20cacc(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20caaa:
	cmp.w (a1)+,d0
	bcs.s loc_20cab2
	addq.b #$2,d1
	bra.s loc_20caaa
loc_20cab2:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cabc
	rts
loc_20cabc:
	move.b d1,($ff1574).l
	move.w dat_20cad4(pc,d1.w),d0
	jmp (loc_202466).l
dat_20cacc:
	dc.b $07,$00,$11,$00,$1a,$00,$ff,$ff
dat_20cad4:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20cadc:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20cae4:
	lea (dat_20cb06).l,a1
	add.w d0,d0
	move.w dat_20cb06(pc,d0.w),d4
	lea dat_20cb06(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cb06:
	.incbin 51974, 68
	jsr (sub_20e9a4).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20cc6c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb6a(pc,d0.w),d0
	jmp dat_20cb6a(pc,d0.w)
dat_20cb6a:
	.incbin 52074, 258
loc_20cc6c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc7a(pc,d0.w),d0
	jmp dat_20cc7a(pc,d0.w)
dat_20cc7a:
	.incbin 52346, 1394
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d210(pc,d0.w),d0
	jsr dat_20d210(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20d20a
	jsr (sub_20385c).l
loc_20d20a:
	jmp (loc_2075be).l
dat_20d210:
	.incbin 53776, 348
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d380(pc,d0.w),d0
	jsr dat_20d380(pc,d0.w)
	jmp (sub_20385c).l
dat_20d380:
	.incbin 54144, 1552
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d99e(pc,d0.w),d0
	jmp dat_20d99e(pc,d0.w)
dat_20d99e:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e09c,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e05c).l,a2
loc_20d9ec:
	jsr (sub_207588).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e09c,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20da3e
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20da3e:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20d9ec
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20da66
	bge.s loc_20da5c
	neg.w d0
loc_20da5c:
	add.w d0,$a(a0)
	jmp (sub_20385c).l
loc_20da66:
	addq.b #$4,$24(a0)
	jmp (sub_20385c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20da8a
	bge.s loc_20da80
	neg.w d0
loc_20da80:
	add.w d0,$8(a0)
	jmp (sub_20385c).l
loc_20da8a:
	addq.b #$4,$24(a0)
	jmp (sub_20385c).l
	tst.b $1e(a0)
	beq.s loc_20daa4
	subq.b #$1,$1e(a0)
	jmp (sub_20385c).l
loc_20daa4:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dabe
	bge.s loc_20dab4
	neg.w d0
loc_20dab4:
	add.w d0,$a(a0)
	jmp (sub_20385c).l
loc_20dabe:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202434).l
	tst.b $1e(a0)
	beq.s loc_20dae0
	subq.b #$1,$1e(a0)
	jmp (sub_20385c).l
loc_20dae0:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dafa
	bge.s loc_20daf0
	neg.w d0
loc_20daf0:
	add.w d0,$8(a0)
	jmp (sub_20385c).l
loc_20dafa:
	jmp (sub_203908).l
	tst.l ($f680).w
	bne.s loc_20db14
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203908).l
loc_20db14:
	rts
	.incbin 56086, 1350
dat_20e05c:
	.incbin 57436, 2304

sub_20e95c:
	tst.b ($ff156a).l
	beq.s loc_20e9a2
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e974
	tst.b $28(a0)
	beq.s loc_20e9a2
loc_20e974:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203908).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e9a0
	move.w #$9e,d0
	jsr (sub_20226a).l
loc_20e9a0:
	addq.l #$4,a7
loc_20e9a2:
	rts

sub_20e9a4:
	tst.b $28(a0)
	bmi.s loc_20e9d4
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e9c4
	tst.b ($ff156d).l
	bne.s loc_20e9d4
	addq.l #$4,a7
	jmp (loc_2075be).l
loc_20e9c4:
	tst.b ($ff156a).l
	bne.s loc_20e9d4
	addq.l #$4,a7
	jmp (sub_203908).l
loc_20e9d4:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9e4(pc,d0.w),d0
	jmp dat_20e9e4(pc,d0.w)
dat_20e9e4:
	.incbin 59876, 780

sub_20ecf0:
	jmp (loc_2062ea).l
dat_20ecf6:
	.incbin 60662, 16
dat_20ed06:
	.incbin 60678, 1162
	jmp ($206380).l
	.incbin 61846, 2600
	jmp ($20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 55824
dat_21d800:
	.incbin 120832, 736
dat_21dae0:
	.incbin 121568, 32
dat_21db00:
	.incbin 121600, 1142
dat_21df76:
	.incbin 122742, 8330
dat_220000:
	.incbin 131072, 72476
dat_231b1c:
	.incbin 203548, 18362
dat_2362d6:
	.incbin 221910, 384
dat_236456:
	.incbin 222294, 7538
dat_2381c8:
	.incbin 229832, 256
dat_2382c8:
	.incbin 230088, 4096
dat_2392c8:
	.incbin 234184, 4896
dat_23a5e8:
	.incbin 239080, 23064
