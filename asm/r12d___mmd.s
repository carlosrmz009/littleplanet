; R12D__.MMD
; disassembled from the disc; code only, data comes from data/R12D__.MMD at build time
	.file "R12D__.MMD", 262144

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
	lea (dat_21d400).l,a2
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
	lea (dat_21d500).l,a2
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
	lea (dat_21d400).l,a2
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
	lea (dat_21d500).l,a2
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
	lea (dat_21d400).l,a2
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
	lea (dat_21e500).l,a2
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
	lea (dat_21d400).l,a2
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
	lea (dat_21e500).l,a2
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
	bsr.w sub_207380
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
	lea (dat_20ef7e).l,a2
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
	bsr.w sub_202970
	bset.b #$2,($f754).w
	bsr.w sub_203366
	bsr.w sub_20327c
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
	jsr (sub_20ef78).l
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
	jsr (sub_205a34).l
	bsr.w sub_207380
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
	jsr (sub_207396).l
	jsr (sub_20377a).l
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
	bsr.w sub_202970
loc_201900:
	jsr (sub_203924).l
	tst.w ($ff190e).l
	bne.s loc_201912
	bsr.w sub_200184
loc_201912:
	jsr (sub_20cade).l
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
	jmp (sub_205a34).l
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
	jmp (sub_205a34).l
loc_201b4c:
	tst.b ($ff151f).l
	bne.s loc_201b42
	tst.b ($ff1520).l
	bne.s loc_201b42
	move.w #$90,d0
	jmp (sub_205a34).l
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
	jmp (sub_205a34).l
loc_201b88:
	tst.b ($ff151f).l
	bne.s loc_201b7e
	tst.b ($ff1520).l
	bne.s loc_201b7e
	move.w #$91,d0
	jmp (sub_205a34).l
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
	bsr.w sub_205956
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
	jsr (sub_20ef78).l
	jsr (sub_20221e).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e74
	bsr.w sub_202512
	jmp (loc_20ab58).l
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
	bsr.w sub_202e74
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
	bsr.w sub_205956
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
	lea (dat_20ef8e).l,a1
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
	lea (dat_20ef8e).l,a1
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
	lea (dat_20ef8e).l,a1
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
	jsr (sub_2065c0).l
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
	dc.b $00,$50,$01,$85
dat_20292c:
	dc.b $91,$b6,$7f,$7f

sub_202930:
	swap d0
	asr.l #$4,d0
	add.l d0,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$3,d1
	move.w d1,($f708).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f718).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	rts

sub_202970:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_20297c
	rts
loc_20297c:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202aea
	bsr.w sub_202b8a
	bsr.w sub_20340e
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d4,d4
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202e14
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202de0
	lea ($a810).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	add.l d5,d5
	bsr.w sub_202cdc
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
	lea ($a800).w,a2
	moveq #$3,d6
loc_202a36:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202aa4).l,a3
	move.b $0(a3,d6.w),d5
loc_202a4c:
	move.w d1,(a1)+
	dbf d5,loc_202a4c
	dbf d6,loc_202a36
	move.w #$7,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202a60:
	move.w d0,(a1)+
	dbf d1,loc_202a60
	move.w #$1,d1
	move.w ($f708).w,d0
	neg.w d0
loc_202a70:
	move.w d0,(a1)+
	dbf d1,loc_202a70
	move.w #$5,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202a80:
	move.w d0,(a1)+
	dbf d1,loc_202a80
	lea ($cc00).w,a1
	lea ($a810).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202aa8
dat_202aa4:
	dc.b $00,$04,$03,$03
loc_202aa8:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ab6(pc,d2.w)
loc_202ab4:
	move.w (a2)+,d0
loc_202ab6:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ab4
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
	dbf d1,loc_202ab4
	rts

sub_202aea:
	move.w ($f700).w,d4
	bsr.s sub_202b1e
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b1c
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b16
	bset.b #$2,($f754).w
	rts
loc_202b16:
	bset.b #$3,($f754).w
loc_202b1c:
	rts

sub_202b1e:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b30
	bcs.s loc_202b60
	bra.s loc_202b36
loc_202b30:
	clr.w ($f73a).w
	rts
loc_202b36:
	cmpi.w #$10,d0
	blt.s loc_202b40
	move.w #$10,d0
loc_202b40:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b4e
	move.w ($f72a).w,d0
loc_202b4e:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b60:
	cmpi.w #$fff0,d0
	bge.s loc_202b6a
	move.w #$fff0,d0
loc_202b6a:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b4e
	move.w ($f728).w,d0
	bra.s loc_202b4e
	.incbin 11130, 16

sub_202b8a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b9e
	subq.w #$5,d0
loc_202b9e:
	btst.b #$1,$22(a6)
	beq.s loc_202bbe
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c0a
	subi.w #$40,d0
	bcc.s loc_202c0a
	tst.b ($f75c).w
	bne.s loc_202c1c
	bra.s loc_202bca
loc_202bbe:
	sub.w ($f73e).w,d0
	bne.s loc_202bd0
	tst.b ($f75c).w
	bne.s loc_202c1c
loc_202bca:
	clr.w ($f73c).w
	rts
loc_202bd0:
	cmpi.w #$60,($f73e).w
	bne.s loc_202bf8
	move.w $14(a6),d1
	bpl.s loc_202be0
	neg.w d1
loc_202be0:
	cmpi.w #$800,d1
	bcc.s loc_202c0a
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c6a
	cmpi.w #$fffa,d0
	blt.s loc_202c34
	bra.s loc_202c22
loc_202bf8:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c6a
	cmpi.w #$fffe,d0
	blt.s loc_202c34
	bra.s loc_202c22
loc_202c0a:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c6a
	cmpi.w #$fff0,d0
	blt.s loc_202c34
	bra.s loc_202c22
loc_202c1c:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c22:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c74
	bra.w loc_202c40
loc_202c34:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c40:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c98
	cmpi.w #$ff00,d1
	bgt.s loc_202c64
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c98
loc_202c64:
	move.w ($f72c).w,d1
	bra.s loc_202c98
loc_202c6a:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c74:
	cmp.w ($f72e).w,d1
	blt.s loc_202c98
	subi.w #$800,d1
	bcs.s loc_202c94
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c98
loc_202c94:
	move.w ($f72e).w,d1
loc_202c98:
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
	bne.s loc_202cda
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cd4
	bset.b #$0,($f754).w
	rts
loc_202cd4:
	bset.b #$1,($f754).w
loc_202cda:
	rts

sub_202cdc:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d10
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d0a
	bset.b #$2,($f756).w
	bra.s loc_202d10
loc_202d0a:
	bset.b #$3,($f756).w
loc_202d10:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d44
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d3e
	bset.b #$0,($f756).w
	rts
loc_202d3e:
	bset.b #$1,($f756).w
loc_202d44:
	rts
	.incbin 11590, 154

sub_202de0:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e12
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e0c
	bset.b d6,($f758).w
	bra.s loc_202e12
loc_202e0c:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e12:
	rts

sub_202e14:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e46
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e40
	bset.b d6,($f75a).w
	bra.s loc_202e46
loc_202e40:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e46:
	rts
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f756).w,a2
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f32
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_203016

sub_202e74:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f32
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203016
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203018
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f30
	bclr.b #$0,(a2)
	beq.s loc_202ee6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203244
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20301a
loc_202ee6:
	bclr.b #$1,(a2)
	beq.s loc_202f00
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203244
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20301a
loc_202f00:
	bclr.b #$2,(a2)
	beq.s loc_202f16
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203244
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203070
loc_202f16:
	bclr.b #$3,(a2)
	beq.s loc_202f30
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203244
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203070
loc_202f30:
	rts

sub_202f32:
	lea (dat_2032fc).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f4e
	bclr.b #$1,(a2)
	beq.s loc_202f98
	move.w #$e0,d4
loc_202f4e:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fc8(pc,d0.w),a3
	beq.s loc_202f80
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203244
	movem.l (a7)+,d4-d5
	bsr.w sub_20301a
	movea.l (a7)+,a0
	bra.s loc_202f98
loc_202f80:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203246
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203046
	movea.l (a7)+,a0
loc_202f98:
	tst.b (a2)
	bne.s loc_202f9e
	rts
loc_202f9e:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fb2
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fb2:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fd8
dat_202fc8:
	.incbin 12232, 16
loc_202fd8:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fe0:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_20300a
	add.w d0,d0
	movea.l dat_202fc8(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20311c
	movem.l (a7)+,d4-d5
	bsr.w sub_203244
	bsr.w sub_20309e
	movem.l (a7)+,d4-d5/a0
loc_20300a:
	addi.w #$10,d4
	dbf d6,loc_202fe0
	clr.b (a2)
	rts

sub_203016:
	rts

sub_203018:
	rts

sub_20301a:
	moveq #$15,d6

sub_20301c:
	move.l #$800000,d7
	move.l d0,d1
loc_203024:
	movem.l d4-d5,-(a7)
	bsr.w sub_20311c
	move.l d1,d0
	bsr.w sub_20309e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203024
	rts

sub_203046:
	move.l #$800000,d7
	move.l d0,d1
loc_20304e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20311e
	move.l d1,d0
	bsr.w sub_20309e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20304e
	rts

sub_203070:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20307a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20311c
	move.l d1,d0
	bsr.w sub_20309e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20307a
	rts

sub_20309e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030da
	btst.b #$3,(a0)
	bne.s loc_2030ba
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030ba:
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
loc_2030da:
	btst.b #$3,(a0)
	bne.s loc_2030fc
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
loc_2030fc:
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

sub_20311c:
	add.w (a3),d5

sub_20311e:
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
	beq.s loc_20316c
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
loc_20316c:
	rts
	.incbin 12654, 212
	rts

sub_203244:
	add.w (a3),d5

sub_203246:
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
	.incbin 12896, 28

sub_20327c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032a6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032ce

sub_2032a6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032aa:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203244
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20301c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032aa
	rts
loc_2032ce:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032d2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032fc).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20332e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032d2
	rts
dat_2032fc:
	.incbin 13052, 34
dat_20331e:
	.incbin 13086, 16

sub_20332e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20331e(pc,d0.w),a3
	beq.s loc_203350
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203244
	movem.l (a7)+,d4-d5
	bsr.w sub_20301a
	bra.s loc_203364
loc_203350:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203246
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203046
loc_203364:
	rts

sub_203366:
	moveq #$0,d0
	lea (dat_20ef7e).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202306
	movea.l (a2)+,a0
	bsr.w sub_2033c0
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004ec
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2033aa
	jmp (loc_20caba).l
loc_2033aa:
	btst.b #$1,($ff151c).l
	beq.s loc_2033be
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033be
	bsr.w sub_202434
loc_2033be:
	rts

sub_2033c0:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033ca:
	move.l d0,(a3)+
	dbf d1,loc_2033ca
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033e0
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033e0:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_21f884).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033fa:
	move.w d1,d0
	movea.l a3,a0
loc_2033fe:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033fe
	lea $80(a3),a3
	dbf d2,loc_2033fa
	rts

sub_20340e:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203488(pc,d0.w),d0
	jsr dat_203488(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203434
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203434:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203462
	bcc.s loc_203464
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203458
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203458:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203462:
	rts
loc_203464:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20347c
	btst.b #$1,($d022).w
	beq.s loc_20347c
	add.w d1,d1
	add.w d1,d1
loc_20347c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203488:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2034a8(pc,d0.w),d0
	jmp dat_2034a8(pc,d0.w)
dat_2034a8:
	.incbin 13480, 102
	move.w #$310,($f726).w
	rts
	.incbin 13590, 288
	move.w #$310,($f726).w
	rts
	.incbin 13886, 316

sub_20377a:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203782:
	move.b (a0),d0
	beq.s loc_203798
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b9c).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203798:
	lea $40(a0),a0
	dbf d7,loc_203782
	rts

sub_2037a2:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037e0
	bpl.s loc_2037d2
	btst.b #$1,$2c(a0)
	beq.s loc_2037d2
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037e0
loc_2037d2:
	btst.b #$2,$2c(a0)
	bne.s loc_2037e0
	addi.w #$38,$12(a0)
loc_2037e0:
	tst.w $12(a0)
	bmi.s loc_2037f4
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037f4
	move.w #$1000,$12(a0)
loc_2037f4:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203804:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203840
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203840
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20383e
	neg.w d1
loc_20383e:
	add.w d1,d0
loc_203840:
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

sub_20385a:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038ca
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038e6
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038a4
	cmpi.w #$800,d3
	bcs.s loc_2038b6
	subi.w #$800,d3
	bra.s loc_2038b6
loc_2038a4:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038b6
	cmpi.w #$100,d3
	bcc.s loc_2038b6
	addi.w #$800,d3
loc_2038b6:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038e6
loc_2038ca:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038e6
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038e6:
	rts
	.incbin 14568, 30

sub_203906:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20390c:
	move.l d1,(a1)+
	dbf d0,loc_20390c
	rts
dat_203914:
	.incbin 14612, 16

sub_203924:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203930:
	tst.w (a4)
	beq.w loc_2039f0
	moveq #$2,d6
loc_203938:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039e8
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_20399e
	movea.l dat_203914(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203982
	cmpi.w #$800,d2
	bcs.s loc_203994
	subi.w #$800,d2
	bra.s loc_203994
loc_203982:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203994
	cmpi.w #$100,d2
	bcc.s loc_203994
	addi.w #$800,d2
loc_203994:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039c0
loc_20399e:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039c0
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_2039e8
	cmpi.w #$180,d2
	bcc.s loc_2039e8
loc_2039c0:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039de
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039e2
loc_2039de:
	bsr.w sub_203a12
loc_2039e2:
	bset.b #$7,$1(a0)
loc_2039e8:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203938
loc_2039f0:
	lea $80(a4),a4
	dbf d7,loc_203930
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a0a
	move.l #$0,(a2)
	rts
loc_203a0a:
	move.b #$0,-$5(a2)
	rts

sub_203a12:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a58
	btst.l #$1,d4
	bne.w loc_203aa6
loc_203a24:
	cmpi.b #$50,d5
	beq.s loc_203a56
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
	bne.s loc_203a50
	addq.w #$1,d0
loc_203a50:
	move.w d0,(a2)+
	dbf d1,loc_203a24
loc_203a56:
	rts
loc_203a58:
	btst.l #$1,d4
	bne.w loc_203aec
loc_203a60:
	cmpi.b #$50,d5
	beq.s loc_203aa4
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
	bne.s loc_203a9e
	addq.w #$1,d0
loc_203a9e:
	move.w d0,(a2)+
	dbf d1,loc_203a60
loc_203aa4:
	rts
loc_203aa6:
	cmpi.b #$50,d5
	beq.s loc_203aea
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
	bne.s loc_203ae4
	addq.w #$1,d0
loc_203ae4:
	move.w d0,(a2)+
	dbf d1,loc_203aa6
loc_203aea:
	rts
loc_203aec:
	cmpi.b #$50,d5
	beq.s loc_203b3e
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
	bne.s loc_203b38
	addq.w #$1,d0
loc_203b38:
	move.w d0,(a2)+
	dbf d1,loc_203aec
loc_203b3e:
	rts
	.incbin 15168, 92
dat_203b9c:
	.incbin 15260, 262

sub_203ca2:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cb4
	move.w #$0,(a1)
	rts
loc_203cb4:
	tst.w (a1)
	bne.s loc_203cbe
	move.b #$1,$1(a1)
loc_203cbe:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d08
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203cfa
	neg.w $10(a0)
loc_203cfa:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a34
loc_203d08:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d26
	cmpa.w #$d040,a0
	beq.s loc_203d26
	tst.b ($ff1906).l
	beq.s loc_203d26
	jmp (loc_206faa).l
loc_203d26:
	move.b $2a(a0),d0
	beq.s loc_203d50
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d42
	cmpi.b #$2d,d0
	bcs.s loc_203d4c
	move.b #$2d,d0
	bra.s loc_203d4c
loc_203d42:
	cmpi.b #$1e,d0
	bcs.s loc_203d4c
	move.b #$1e,d0
loc_203d4c:
	move.b d0,$2a(a0)
loc_203d50:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d5e(pc,d0.w),d1
	jmp dat_203d5e(pc,d1.w)
dat_203d5e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d68:
	tst.b ($d300).w
	bne.s loc_203da6
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203da6:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dce
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dce:
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e02:
	tst.b ($ff1506).l
	bne.s loc_203e68
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e68
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e6c
	cmpi.b #$2f,d1
	bne.s loc_203e6a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e68
	tst.b $2c(a0)
	beq.s loc_203e68
	jsr (sub_207592).l
	bne.s loc_203e68
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e60
	moveq #$0,d0
loc_203e60:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e68:
	rts
loc_203e6a:
	rts

sub_203e6c:
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

sub_203e92:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e9e
	neg.w d0
loc_203e9e:
	btst.b #$1,$2c(a0)
	beq.s loc_203eae
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ed6
loc_203eae:
	cmpi.w #$600,d0
	bcs.s loc_203ed6
	tst.w $14(a0)
	bpl.s loc_203ec8
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ee4
	move.w #$e0,d1
	bra.s loc_203ee4
loc_203ec8:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ee4
	move.w #$60,d1
	bra.s loc_203ee4
loc_203ed6:
	cmpi.w #$a0,d1
	beq.s loc_203ee4
	bcc.s loc_203ee2
	addq.w #$2,d1
	bra.s loc_203ee4
loc_203ee2:
	subq.w #$2,d1
loc_203ee4:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e92
	bsr.w sub_203e02
	tst.w ($ff1588).l
	beq.s loc_203f0a
	btst.b #$4,($f605).w
	beq.s loc_203f0a
	move.b #$1,($ff1906).l
	rts
loc_203f0a:
	tst.b ($f7cc).w
	bne.s loc_203f16
	move.w ($f604).w,($f602).w
loc_203f16:
	btst.b #$0,$2c(a0)
	beq.s loc_203f3a
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f34
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f52
loc_203f34:
	bsr.w sub_20421c
	bra.s loc_203f52
loc_203f3a:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f98(pc,d0.w),d1
	jsr dat_203f98(pc,d1.w)
	jsr (sub_2064ec).l
loc_203f52:
	bsr.s sub_203fa6
	bsr.w sub_204066
	bsr.w sub_204080
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f7a
	tst.b $1c(a0)
	bne.s loc_203f7a
	move.b $1d(a0),$1c(a0)
loc_203f7a:
	bsr.w sub_205424
	tst.b $2c(a0)
	bmi.s loc_203f92
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f92
	jsr (sub_206a90).l
loc_203f92:
	bsr.w sub_2052da
	rts
dat_203f98:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203fa6:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fca
	move.w $30(a0),d0
	beq.s loc_203fbc
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fca
loc_203fbc:
	btst.b #$6,$2c(a0)
	bne.s loc_203fca
	jsr (sub_20385a).l
loc_203fca:
	tst.b ($ff151f).l
	beq.s loc_20400e
	tst.w $32(a0)
	beq.s loc_20400e
	subq.w #$1,$32(a0)
	bne.s loc_20400e
	tst.b ($ff1520).l
	bne.s loc_204006
	tst.b ($ff1958).l
	bne.s loc_204006
	tst.b ($ff152e).l
	bne.s loc_204000
	move.w #$e,d0
	jsr (sub_205a34).l
loc_204000:
	jsr (sub_201a5e).l
loc_204006:
	move.b #$0,($ff151f).l
loc_20400e:
	tst.b ($ff1520).l
	beq.s loc_204064
	tst.w $34(a0)
	beq.s loc_204064
	subq.w #$1,$34(a0)
	bne.s loc_204064
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20405c
	tst.b ($ff1958).l
	bne.s loc_20405c
	tst.b ($ff152e).l
	bne.s loc_204056
	move.w #$e,d0
	jsr (sub_205a34).l
loc_204056:
	jsr (sub_201a5e).l
loc_20405c:
	move.b #$0,($ff1520).l
loc_204064:
	rts

sub_204066:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204080:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20408c
loc_20408a:
	rts
loc_20408c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20409e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20408a
loc_20409e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040e2
	bset.b #$6,$22(a0)
	bne.s loc_20408a
	bsr.w sub_205d38
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20408a
	bra.s loc_20411a
loc_2040e2:
	tst.w $12(a0)
	beq.s loc_2040ea
	bpl.s loc_20408a
loc_2040ea:
	bclr.b #$6,$22(a0)
	beq.s loc_20408a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20408a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20411a
	move.w #$f000,$12(a0)
loc_20411a:
	jsr (sub_207592).l
	bne.s loc_20412e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20412e:
	rts

sub_204130:
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
	bcs.s loc_20420a
	move.l #$50000,d0
loc_20420a:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20421c:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204242
	tst.b ($ff152e).l
	beq.s loc_204238
	cmpi.b #$2,($ff152e).l
	bne.s loc_204242
loc_204238:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042f2
loc_204242:
	tst.b $2a(a0)
	bne.w loc_204300
	tst.b ($f784).w
	beq.w loc_204300
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204260
	neg.w d0
loc_204260:
	tst.w ($f786).w
	bne.s loc_20426c
	move.w #$1,($f786).w
loc_20426c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204282
	move.b #$1,($ff1502).l
	bra.w loc_205a30
loc_204282:
	cmpi.w #$d2,d1
	bcs.s loc_2042d6
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042d4
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2042ac
	move.w #$82,d0
	jsr (sub_205a34).l
	moveq #$0,d0
loc_2042ac:
	add.b ($f784).w,d0
	bpl.s loc_2042b6
	moveq #$0,d0
	bra.s loc_2042be
loc_2042b6:
	cmpi.b #$3,d0
	bcs.s loc_2042be
	moveq #$2,d0
loc_2042be:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204130
	move.b #$2,($ff1522).l
loc_2042d4:
	rts
loc_2042d6:
	cmpi.w #$5a,d1
	bcc.s loc_2042ee
	cmp.w d2,d0
	bcc.w loc_203d68
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042ee:
	cmp.w d2,d0
	bcc.s loc_204300
loc_2042f2:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204300:
	rts
	bsr.w sub_203ca2
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204332
	tst.b ($ff195b).l
	beq.s loc_204320
	cmpi.b #$79,$1a(a0)
	bne.s loc_20435c
	bra.s loc_204328
loc_204320:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20435c
loc_204328:
	bsr.w sub_204bc4
	jmp (sub_2037a2).l
loc_204332:
	bsr.w sub_20440a
	bsr.w sub_20421c
	bsr.w sub_204cae
	bsr.w sub_204dda
	bsr.w sub_20447e
	bsr.w sub_204c30
	bsr.w sub_204bc4
	jsr (sub_203804).l
	bsr.w sub_200b6e
	bsr.w sub_204e58
loc_20435c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204378
	cmpi.b #$15,$1c(a0)
	beq.s loc_204378
	tst.w $12(a0)
	bmi.s loc_204378
	move.b #$0,$1c(a0)
loc_204378:
	bsr.w sub_20440a
	bsr.w sub_20421c
	bsr.w sub_204d98
	bsr.w sub_204ae4
	bsr.w sub_204bc4
	jsr (sub_2037a2).l
	btst.b #$6,$22(a0)
	beq.s loc_2043a0
	subi.w #$28,$12(a0)
loc_2043a0:
	bsr.w sub_204ea2
	bsr.w sub_204ec6
	rts
	bsr.w sub_20440a
	bsr.w sub_20421c
	bsr.w sub_204cae
	bsr.w sub_204e16
	bsr.w sub_20491e
	bsr.w sub_204bc4
	tst.b $2a(a0)
	bne.s loc_2043ce
	jsr (sub_203804).l
loc_2043ce:
	bsr.w sub_200b6e
	bsr.w sub_204e58
	rts
	bsr.w sub_20440a
	bsr.w sub_20421c
	bsr.w sub_204d98
	bsr.w sub_204ae4
	bsr.w sub_204bc4
	jsr (sub_2037a2).l
	btst.b #$6,$22(a0)
	beq.s loc_204400
	subi.w #$28,$12(a0)
loc_204400:
	bsr.w sub_204ea2
	bsr.w sub_204ec6
	rts

sub_20440a:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204476
	tst.w ($ff1506).l
	bne.s loc_204476
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204478).l,a2
loc_20443e:
	move.b (a2)+,d0
	bmi.s loc_20444e
	cmp.b d0,d1
	bne.s loc_20443e
	bset.b #$1,$2c(a0)
	rts
loc_20444e:
	bclr.b #$1,$2c(a0)
	beq.s loc_204476
	tst.w $12(a0)
	bpl.s loc_204476
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204476
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204476
	neg.w $10(a0)
loc_204476:
	rts
dat_204478:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20447e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2047a8
	tst.w $3e(a0)
	bne.w loc_204758
	btst.b #$2,($f602).w
	beq.s loc_2044a6
	bsr.w sub_204838
loc_2044a6:
	btst.b #$3,($f602).w
	beq.s loc_2044b2
	bsr.w sub_2048ae
loc_2044b2:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204758
	tst.w $14(a0)
	beq.s loc_2044d2
	tst.b $2a(a0)
	beq.w loc_204758
	bra.s loc_2044de
loc_2044d2:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044de:
	btst.b #$3,$22(a0)
	beq.s loc_204530
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204588
	cmpi.b #$1e,$0(a1)
	bne.s loc_204510
	move.b #$0,$1c(a0)
	bra.w loc_204758
loc_204510:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20456c
	cmp.w d2,d1
	bge.s loc_20455a
	bra.s loc_204588
loc_204530:
	jsr (sub_2067f4).l
	cmpi.w #$c,d1
	blt.s loc_204588
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204564
loc_20455a:
	btst.b #$0,$22(a0)
	bne.s loc_204574
	bra.s loc_20457e
loc_204564:
	cmpi.b #$3,$37(a0)
	bne.s loc_204588
loc_20456c:
	btst.b #$0,$22(a0)
	bne.s loc_20457e
loc_204574:
	move.b #$32,$1c(a0)
	bra.w loc_204758
loc_20457e:
	move.b #$6,$1c(a0)
	bra.w loc_204758
loc_204588:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20459c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20459c:
	btst.b #$7,($f788).w
	bne.w loc_2046a0
	btst.b #$6,($f788).w
	bne.w loc_2046c0
	btst.b #$1,($f602).w
	bne.w loc_2046c0
	andi.b #$f,($f788).w
	beq.s loc_2045d4
	btst.b #$0,($f603).w
	beq.s loc_2045e8
	bset.b #$7,($f788).w
	bra.w loc_20477c
loc_2045d4:
	btst.b #$0,($f603).w
	beq.w loc_2045e8
	move.b #$1,($f788).w
	bra.w loc_20477c
loc_2045e8:
	btst.b #$0,($f602).w
	beq.s loc_204664
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204646
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204618
	asr.w #$1,d2
	sub.w d2,d1
loc_204618:
	btst.b #$0,$22(a0)
	beq.s loc_204624
	neg.w d0
	neg.w d1
loc_204624:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20463a
	cmp.w d0,d1
	ble.s loc_204640
	bra.s loc_20463e
loc_20463a:
	cmp.w d1,d0
	ble.s loc_204640
loc_20463e:
	move.w d1,d0
loc_204640:
	move.w d0,$14(a0)
	rts
loc_204646:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204660
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20226a).l
loc_204660:
	bra.w loc_20477c
loc_204664:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204684
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046c0
loc_204684:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	bra.w loc_204758
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2046a0:
	btst.b #$0,($f602).w
	beq.s loc_2046c0
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20477c
	addq.w #$2,($f73e).w
	bra.w loc_20477c
loc_2046c0:
	btst.b #$6,($f788).w
	bne.w loc_20473c
	andi.b #$f,($f788).w
	beq.s loc_2046e4
	btst.b #$1,($f603).w
	beq.s loc_2046f6
	bset.b #$6,($f788).w
	bra.w loc_20477c
loc_2046e4:
	btst.b #$1,($f603).w
	beq.s loc_2046f6
	move.b #$1,($f788).w
	bra.w loc_20477c
loc_2046f6:
	btst.b #$1,($f602).w
	beq.s loc_204758
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20473a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20473a
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20472c
	neg.w $14(a0)
loc_20472c:
	move.w #$9c,d0
	jsr (sub_20226a).l
	bsr.w sub_204c58
loc_20473a:
	bra.s loc_20477c
loc_20473c:
	btst.b #$1,($f602).w
	beq.s loc_204758
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20477c
	subq.w #$2,($f73e).w
	bra.s loc_20477c
loc_204758:
	cmpi.w #$60,($f73e).w
	bne.s loc_204772
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20477c
	move.b #$0,($f788).w
	bra.s loc_20477c
loc_204772:
	bcc.s loc_204778
	addq.w #$4,($f73e).w
loc_204778:
	subq.w #$2,($f73e).w
loc_20477c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2047a8
	move.w $14(a0),d0
	beq.s loc_2047a8
	bmi.s loc_20479c
	sub.w d5,d0
	bcc.s loc_204796
	move.w #$0,d0
loc_204796:
	move.w d0,$14(a0)
	bra.s loc_2047a8
loc_20479c:
	add.w d5,d0
	bcc.s loc_2047a4
	move.w #$0,d0
loc_2047a4:
	move.w d0,$14(a0)
loc_2047a8:
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047c6:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204836
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204836
	bmi.s loc_2047de
	neg.w d1
loc_2047de:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066b4
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204836
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204832
	cmpi.b #$40,d0
	beq.s loc_204820
	cmpi.b #$80,d0
	beq.s loc_20481a
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20481a:
	sub.w d1,$12(a0)
	rts
loc_204820:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204832:
	add.w d1,$12(a0)
loc_204836:
	rts

sub_204838:
	tst.b $2a(a0)
	bne.s loc_2048ac
	move.w $14(a0),d0
	beq.s loc_204846
	bpl.s loc_204876
loc_204846:
	bset.b #$0,$22(a0)
	bne.s loc_20485a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20485a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20486a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20486a
	move.w d1,d0
loc_20486a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204876:
	sub.w d4,d0
	bcc.s loc_20487e
	move.w #$ff80,d0
loc_20487e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048ac
	cmpi.w #$400,d0
	blt.s loc_2048ac
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226a).l
loc_2048ac:
	rts

sub_2048ae:
	tst.b $2a(a0)
	bne.s loc_20491c
	move.w $14(a0),d0
	bmi.s loc_2048e6
	bclr.b #$0,$22(a0)
	beq.s loc_2048ce
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048ce:
	cmp.w d6,d0
	bge.s loc_2048da
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048da
	move.w d6,d0
loc_2048da:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048e6:
	add.w d4,d0
	bcc.s loc_2048ee
	move.w #$80,d0
loc_2048ee:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20491c
	cmpi.w #$fc00,d0
	bgt.s loc_20491c
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226a).l
loc_20491c:
	rts

sub_20491e:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a68
	tst.w $3e(a0)
	bne.s loc_204956
	btst.b #$2,($f602).w
	beq.s loc_20494a
	bsr.w sub_204a9e
loc_20494a:
	btst.b #$3,($f602).w
	beq.s loc_204956
	bsr.w sub_204ac2
loc_204956:
	tst.b $2a(a0)
	beq.w loc_204a00
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204976
	asr.w #$1,d2
	sub.w d2,d1
loc_204976:
	btst.b #$0,$22(a0)
	beq.s loc_204982
	neg.w d0
	neg.w d1
loc_204982:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204998
	cmp.w d0,d1
	ble.s loc_20499e
	bra.s loc_20499c
loc_204998:
	cmp.w d1,d0
	ble.s loc_20499e
loc_20499c:
	move.w d1,d0
loc_20499e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049d2
	rts
loc_2049ac:
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a32
loc_2049d2:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_2049ac
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	btst.b #$0,$22(a0)
	bne.s loc_2049f8
	bsr.w sub_204ac2
	bra.s loc_204a00
loc_2049f8:
	bsr.w sub_204a9e
	bra.s loc_204a00
	dc.b $4e,$75
loc_204a00:
	move.w $14(a0),d0
	beq.s loc_204a22
	bmi.s loc_204a16
	sub.w d5,d0
	bcc.s loc_204a10
	move.w #$0,d0
loc_204a10:
	move.w d0,$14(a0)
	bra.s loc_204a22
loc_204a16:
	add.w d5,d0
	bcc.s loc_204a1e
	move.w #$0,d0
loc_204a1e:
	move.w d0,$14(a0)
loc_204a22:
	tst.w $14(a0)
	bne.s loc_204a68
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_204a32:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a52
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a62
loc_204a52:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a62:
	move.b #$5,$1c(a0)
loc_204a68:
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a8c
	move.w #$1000,d1
loc_204a8c:
	cmpi.w #$f000,d1
	bge.s loc_204a96
	move.w #$f000,d1
loc_204a96:
	move.w d1,$10(a0)
	bra.w loc_2047c6

sub_204a9e:
	move.w $14(a0),d0
	beq.s loc_204aa6
	bpl.s loc_204ab4
loc_204aa6:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ab4:
	sub.w d4,d0
	bcc.s loc_204abc
	move.w #$ff80,d0
loc_204abc:
	move.w d0,$14(a0)
	rts

sub_204ac2:
	move.w $14(a0),d0
	bmi.s loc_204ad6
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ad6:
	add.w d4,d0
	bcc.s loc_204ade
	move.w #$80,d0
loc_204ade:
	move.w d0,$14(a0)
	rts

sub_204ae4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b1e
	tst.w ($ff1506).l
	bne.s loc_204b1e
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b16
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b16
	rts
loc_204b16:
	btst.b #$1,$2c(a0)
	bne.s loc_204b4e
loc_204b1e:
	btst.b #$2,($f602).w
	beq.s loc_204b38
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b38
	move.w d1,d0
loc_204b38:
	btst.b #$3,($f602).w
	beq.s loc_204b4e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b4e
	move.w d6,d0
loc_204b4e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b64
	bcc.s loc_204b60
	addq.w #$4,($f73e).w
loc_204b60:
	subq.w #$2,($f73e).w
loc_204b64:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b92
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b92
	bmi.s loc_204b86
	sub.w d1,d0
	bcc.s loc_204b80
	move.w #$0,d0
loc_204b80:
	move.w d0,$10(a0)
	rts
loc_204b86:
	sub.w d1,d0
	bcs.s loc_204b8e
	move.w #$0,d0
loc_204b8e:
	move.w d0,$10(a0)
loc_204b92:
	rts
	.incbin 19348, 48

sub_204bc4:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c18
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204bf2
	addi.w #$38,d0
loc_204bf2:
	cmp.w d1,d0
	bls.s loc_204c18
loc_204bf6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c06
	rts
loc_204c06:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d22
	move.b #$6,$24(a0)
	rts
loc_204c18:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204bf6

sub_204c30:
	tst.b ($f7ca).w
	bne.s loc_204c56
	move.w $14(a0),d0
	bpl.s loc_204c3e
	neg.w d0
loc_204c3e:
	cmpi.w #$80,d0
	bcs.s loc_204c56
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c56
	btst.b #$1,($f602).w
	bne.s sub_204c58
loc_204c56:
	rts

sub_204c58:
	btst.b #$2,$22(a0)
	beq.s loc_204c62
	bra.s loc_204c92
loc_204c62:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c82
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c92
loc_204c82:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c92:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204cac
	cmpi.w #$200,$14(a0)
	bcc.s loc_204cac
	move.w #$200,$14(a0)
loc_204cac:
	rts

sub_204cae:
	tst.b $2a(a0)
	beq.s loc_204cb6
	rts
loc_204cb6:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cc8
	tst.w $14(a0)
	beq.w loc_204d8e
loc_204cc8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d8e
	btst.b #$3,$22(a0)
	beq.s loc_204ce4
	jsr (sub_2059ba).l
	beq.s loc_204d14
loc_204ce4:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20671e
	cmpi.w #$6,d1
	blt.w loc_204d8e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d0a
	move.w #$380,d2
loc_204d0a:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d14:
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
	bne.s loc_204d90
	tst.b ($ff195b).l
	beq.s loc_204d72
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d82
loc_204d72:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d82:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d8e:
	rts
loc_204d90:
	bset.b #$4,$22(a0)
	rts

sub_204d98:
	tst.b $3c(a0)
	beq.s loc_204dca
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204dae
	move.w #$fe00,d1
loc_204dae:
	cmp.w $12(a0),d1
	ble.s loc_204dc8
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204dc8
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204dc8:
	rts
loc_204dca:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dd8
	move.w #$f040,$12(a0)
loc_204dd8:
	rts

sub_204dda:
	tst.b $2a(a0)
	bne.s loc_204e14
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e14
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e14
	bmi.s loc_204e10
	tst.w d0
	beq.s loc_204e0e
	add.w d0,$14(a0)
loc_204e0e:
	rts
loc_204e10:
	add.w d0,$14(a0)
loc_204e14:
	rts

sub_204e16:
	tst.b $2a(a0)
	bne.s loc_204e56
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e56
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e4c
	tst.w d0
	bpl.s loc_204e46
	asr.l #$2,d0
loc_204e46:
	add.w d0,$14(a0)
	rts
loc_204e4c:
	tst.w d0
	bmi.s loc_204e52
	asr.l #$2,d0
loc_204e52:
	add.w d0,$14(a0)
loc_204e56:
	rts

sub_204e58:
	nop
	tst.b $38(a0)
	bne.s loc_204e9a
	tst.w $3e(a0)
	bne.s loc_204e9c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e9a
	move.w $14(a0),d0
	bpl.s loc_204e7c
	neg.w d0
loc_204e7c:
	cmpi.w #$280,d0
	bcc.s loc_204e9a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e9a:
	rts
loc_204e9c:
	subq.w #$1,$3e(a0)
	rts

sub_204ea2:
	btst.b #$1,$2c(a0)
	bne.s loc_204ec4
	move.b $26(a0),d0
	beq.s loc_204ec4
	bpl.s loc_204eba
	addq.b #$2,d0
	bcc.s loc_204eb8
	moveq #$0,d0
loc_204eb8:
	bra.s loc_204ec0
loc_204eba:
	subq.b #$2,d0
	bcc.s loc_204ec0
	moveq #$0,d0
loc_204ec0:
	move.b d0,$26(a0)
loc_204ec4:
	rts

sub_204ec6:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a06).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204faa
	cmpi.b #$80,d0
	beq.w loc_20500c
	cmpi.b #$c0,d0
	beq.w loc_205068
	bsr.w sub_206a34
	tst.w d1
	bpl.s loc_204f18
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f18:
	bsr.w sub_206896
	tst.w d1
	bpl.s loc_204f2a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f2a:
	bsr.w sub_206746
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204fa8
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f48
	cmp.b d2,d0
	blt.s loc_204fa8
loc_204f48:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ca
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f86
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f78
	asr.w $12(a0)
	bra.s loc_204f9a
loc_204f78:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f86:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f9a
	move.w #$fc0,$12(a0)
loc_204f9a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204fa8
	neg.w $14(a0)
loc_204fa8:
	rts
loc_204faa:
	bsr.w sub_206a34
	tst.w d1
	bpl.s loc_204fc4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fc4:
	bsr.w sub_2068ee
	tst.w d1
	bpl.s loc_204fde
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fdc
	move.w #$0,$12(a0)
loc_204fdc:
	rts
loc_204fde:
	tst.w $12(a0)
	bmi.s loc_20500a
	bsr.w sub_206746
	tst.w d1
	bpl.s loc_20500a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ca
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20500a:
	rts
loc_20500c:
	bsr.w sub_206a34
	tst.w d1
	bpl.s loc_20501e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20501e:
	bsr.w sub_206896
	tst.w d1
	bpl.s loc_205030
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205030:
	bsr.w sub_2068ee
	tst.w d1
	bpl.s loc_205066
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205050
	move.w #$0,$12(a0)
	rts
loc_205050:
	move.b d3,$26(a0)
	bsr.w sub_20513c
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205066
	neg.w $14(a0)
loc_205066:
	rts
loc_205068:
	bsr.w sub_206896
	tst.w d1
	bpl.s loc_205082
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205082:
	bsr.w sub_2068ee
	tst.w d1
	bpl.s loc_20509c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20509a
	move.w #$0,$12(a0)
loc_20509a:
	rts
loc_20509c:
	tst.w $12(a0)
	bmi.s loc_2050c8
	bsr.w sub_206746
	tst.w d1
	bpl.s loc_2050c8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ca
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050c8:
	rts

sub_2050ca:
	btst.b #$4,$22(a0)
	beq.s loc_2050d4
	nop
loc_2050d4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20512e
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20510e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20511e
loc_20510e:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20511e:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_20512e:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20513c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20828, 382

sub_2052da:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205302
	cmpi.b #$5,($ff1506).l
	beq.s loc_205302
	cmpi.b #$2,($ff1506).l
	beq.s loc_205302
	tst.b ($ff1506).l
	bne.w loc_2053c4
loc_205302:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205340
	tst.b ($ff1506).l
	bne.w loc_2053c6
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053c6
	bra.s loc_205348
loc_205340:
	cmp.b ($f7af).w,d1
	beq.w loc_2053c6
loc_205348:
	cmp.b ($f7ac).w,d1
	beq.s loc_205378
	cmp.b ($f7ad).w,d1
	beq.s loc_20535c
	bclr.b #$6,$1(a0)
	rts
loc_20535c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053de
	btst.b #$1,$22(a0)
	beq.s loc_205378
	bclr.b #$6,$1(a0)
	rts
loc_205378:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20538a
	bclr.b #$6,$1(a0)
	rts
loc_20538a:
	cmpi.b #$e0,d2
	bcs.s loc_205398
	bset.b #$6,$1(a0)
	rts
loc_205398:
	btst.b #$6,$1(a0)
	bne.s loc_2053b4
	move.b $26(a0),d1
	beq.s loc_2053c4
	cmpi.b #$80,d1
	bhi.s loc_2053c4
	bset.b #$6,$1(a0)
	rts
loc_2053b4:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053c4
	bclr.b #$6,$1(a0)
loc_2053c4:
	rts
loc_2053c6:
	btst.b #$2,$22(a0)
	bne.s loc_2053d8
	move.w #$9c,d0
	jsr (sub_20226a).l
loc_2053d8:
	jmp (sub_204c58).l
loc_2053de:
	tst.w $12(a0)
	bmi.s loc_205422
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205416
	cmpi.w #$38,d1
	bcs.s loc_20540e
	cmpi.w #$80,d1
	bcs.s loc_205422
loc_205406:
	bclr.b #$6,$1(a0)
	rts
loc_20540e:
	bset.b #$6,$1(a0)
	rts
loc_205416:
	cmpi.w #$38,d1
	bcs.s loc_205406
	cmpi.w #$80,d1
	bcc.s loc_20540e
loc_205422:
	rts

sub_205424:
	lea (dat_205714).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205446
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205446:
	bsr.w sub_2056b6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054be
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20548c
	move.b d0,$1e(a0)

sub_205470:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205484
	bpl.s loc_205484
	cmpi.b #$fd,d0
	bge.s loc_20548e
loc_205484:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20548c:
	rts
loc_20548e:
	addq.b #$1,d0
	bne.s loc_20549e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205484
loc_20549e:
	addq.b #$1,d0
	bne.s loc_2054b2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205484
loc_2054b2:
	addq.b #$1,d0
	bne.s loc_2054bc
	move.b $2(a1,d1.w),$1c(a0)
loc_2054bc:
	rts
loc_2054be:
	subq.b #$1,$1e(a0)
	bpl.s loc_20548c
	addq.b #$1,d0
	bne.w loc_205578
	tst.b ($ff195b).l
	bne.w loc_205640
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054e6
	not.b d0
loc_2054e6:
	btst.b #$1,$2c(a0)
	bne.s loc_2054f4
	addi.b #$10,d0
	bra.s loc_2054f6
loc_2054f4:
	addq.b #$8,d0
loc_2054f6:
	bpl.s loc_2054fa
	moveq #$3,d1
loc_2054fa:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055ec
	move.w $14(a0),d2
	bpl.s loc_205518
	neg.w d2
loc_205518:
	btst.b #$1,$2c(a0)
	beq.s loc_205530
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205916).l,a1
	bra.s loc_20555a
loc_205530:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058f0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20555a
	lea (dat_205794).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20555a
	lea (dat_20578c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20555a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205568
	moveq #$0,d2
loc_205568:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205470
	add.b d3,$1a(a0)
	rts
loc_205578:
	addq.b #$1,d0
	bne.s loc_2055e8
	move.w $14(a0),d2
	bpl.s loc_205584
	neg.w d2
loc_205584:
	lea (dat_205872).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055c2
	lea (dat_2057a4).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055b6
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055c2
	lea (dat_20591e).l,a1
	bra.s loc_2055c2
loc_2055b6:
	cmpi.w #$600,d2
	bcc.s loc_2055c2
	lea (dat_20579c).l,a1
loc_2055c2:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055cc
	moveq #$0,d2
loc_2055cc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205470
loc_2055e8:
	addq.b #$1,d0
	bne.s loc_20562c
loc_2055ec:
	move.w $14(a0),d2
	bmi.s loc_2055f4
	neg.w d2
loc_2055f4:
	addi.w #$800,d2
	bpl.s loc_2055fc
	moveq #$0,d2
loc_2055fc:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205884).l,a1
	tst.b ($ff195b).l
	bne.s loc_205616
	lea (dat_2057ac).l,a1
loc_205616:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205470
loc_20562c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205640:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205652
	not.b d0
loc_205652:
	addi.b #$10,d0
	bpl.s loc_20565a
	moveq #$0,d1
loc_20565a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205688
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205578
loc_205688:
	move.w $14(a0),d2
	bpl.s loc_205690
	neg.w d2
loc_205690:
	lea (dat_20586c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056a2
	lea (dat_205866).l,a1
loc_2056a2:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056ac
	moveq #$0,d2
loc_2056ac:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205470

sub_2056b6:
	tst.b ($ff195b).l
	beq.s loc_2056c2
	move.b dat_2056c4(pc,d0.w),d0
loc_2056c2:
	rts
dat_2056c4:
	.incbin 22212, 80
dat_205714:
	.incbin 22292, 120
dat_20578c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205794:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20579c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2057a4:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2057ac:
	.incbin 22444, 186
dat_205866:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20586c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205872:
	.incbin 22642, 18
dat_205884:
	.incbin 22660, 108
dat_2058f0:
	.incbin 22768, 38
dat_205916:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20591e:
	.incbin 22814, 56

sub_205956:
	tst.b (a0)
	beq.w loc_2059b8
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059b8
	move.b d0,(a2)
	lea (dat_231b1c).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059b8
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20598a:
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
loc_2059a4:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2059a4
	dbf d1,loc_20598a
loc_2059b8:
	rts

sub_2059ba:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a2e
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
	bne.s loc_205a1c
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a1c:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a2e:
	rts
loc_205a30:
	move.w #$e,d0

sub_205a34:
	cmpi.w #$67,d0
	bne.s loc_205a42
	move.b #$1,($ff1958).l
loc_205a42:
	move.w d0,($a12010).l
loc_205a48:
	move.w ($a12020).l,d0
	beq.s loc_205a48
	cmp.w ($a12020).l,d0
	bne.s loc_205a48
	move.w #$0,($a12010).l
loc_205a60:
	move.w ($a12020).l,d0
	bne.s loc_205a60
	move.w ($a12020).l,d0
	bne.s loc_205a60
	rts
	dc.b $00,$00

sub_205a74:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a90
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a90:
	subq.b #$1,$1e(a0)
	bpl.s loc_205ad0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ad2
loc_205aac:
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
loc_205ad0:
	rts
loc_205ad2:
	addq.b #$1,d0
	bne.s loc_205ae2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205aac
loc_205ae2:
	addq.b #$1,d0
	bne.s loc_205af6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205aac
loc_205af6:
	addq.b #$1,d0
	bne.s loc_205b00
	move.b $2(a1,d1.w),$1c(a0)
loc_205b00:
	addq.b #$1,d0
	bne.s loc_205b08
	addq.b #$2,$24(a0)
loc_205b08:
	addq.b #$1,d0
	bne.s loc_205b16
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b16:
	addq.b #$1,d0
	bne.s loc_205b1e
	addq.b #$2,$25(a0)
loc_205b1e:
	rts
	.incbin 23328, 536

sub_205d38:
	rts
	.incbin 23866, 116

sub_205dae:
	tst.b $25(a0)
	bne.s loc_205dde
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207592).l
	bne.s loc_205dde
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dde:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dee(pc,d0.w),d0
	jmp dat_205dee(pc,d0.w)
dat_205dee:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e16
	andi.b #$7f,$2(a0)
loc_205e16:
	move.l #$23d558,$4(a0)
	bsr.s sub_205dae
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e44
	move.w #$100,$1c(a0)
loc_205e44:
	lea (dat_23d544).l,a1
	bsr.w sub_205a74
	jmp (sub_20385a).l
	tst.b $25(a0)
	beq.s loc_205e60
	jmp (sub_203906).l
loc_205e60:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e82(pc,d0.w),d0
	jsr dat_205e82(pc,d0.w)
	jmp (sub_20385a).l
dat_205e82:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205eb0
	andi.b #$7f,$2(a0)
loc_205eb0:
	move.l #$236ab0,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ed6
	bsr.w sub_205f42
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f38
loc_205ed6:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067f4).l
	tst.w d1
	bpl.s loc_205f34
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f1e
	bsr.w sub_205f42
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f68
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f1e:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f38
loc_205f34:
	addq.w #$2,$c(a0)
loc_205f38:
	lea (dat_236a94).l,a1
	bra.w sub_205a74

sub_205f42:
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

sub_205f68:
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
	bra.s loc_205f38
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f38
	.incbin 24484, 752
loc_206294:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23d244).l,a1
	jsr (sub_205a74).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062cc
	rts
loc_2062cc:
	cmp.b $24(a0),d0
	beq.s loc_2062e2
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2062e2:
	jmp (sub_20385a).l
loc_2062e8:
	bclr.b #$7,($ff156b).l
	beq.s loc_206336
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206338(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20630c:
	move.l (a1)+,(a2)+
	dbf d0,loc_20630c
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206336:
	rts
dat_206338:
	.incbin 25400, 436

sub_2064ec:
	rts
loc_2064ee:
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
loc_20657c:
	move.w ($ff155a).l,($f714).w
	move.w ($ff155c).l,($f718).w
	move.w ($ff155e).l,($f71c).w
	cmpi.b #$6,($ff1506).l
	bne.s loc_2065a8
	move.b ($ff1593).l,($ff195b).l
loc_2065a8:
	tst.b ($ff1522).l
	bpl.s loc_2065be
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065be:
	rts

sub_2065c0:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064ee
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
	bne.s loc_20667a
	move.b ($ff1591).l,($ff195b).l
loc_20667a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20669c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_20669c:
	tst.b ($ff1522).l
	bpl.s loc_2066b2
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066b2:
	rts

sub_2066b4:
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
	bpl.s loc_2066f0
	move.b d1,d0
	bpl.s loc_2066ea
	subq.b #$1,d0
loc_2066ea:
	addi.b #$20,d0
	bra.s loc_2066fa
loc_2066f0:
	move.b d1,d0
	bpl.s loc_2066f6
	addq.b #$1,d0
loc_2066f6:
	addi.b #$1f,d0
loc_2066fa:
	andi.b #$c0,d0
	beq.w loc_2067ca
	cmpi.b #$80,d0
	beq.w loc_206966
	andi.b #$38,d1
	bne.s loc_206712
	addq.w #$8,d2
loc_206712:
	cmpi.b #$40,d0
	beq.w loc_206a3c
	bra.w loc_20689e

sub_20671e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069c4
	cmpi.b #$80,d0
	beq.w sub_2068ee
	cmpi.b #$c0,d0
	beq.w loc_20682e

sub_206746:
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
loc_2067aa:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067b8
	move.b ($f768).w,d3
	exg d0,d1
loc_2067b8:
	btst.l #$0,d3
	beq.s loc_2067c0
	move.b d2,d3
loc_2067c0:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2067ca:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010c4).l
	move.b #$0,d2
loc_2067e6:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067f2
	move.b d2,d3
loc_2067f2:
	rts

sub_2067f4:
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
	beq.s loc_20682c
	move.b #$0,d3
loc_20682c:
	rts
loc_20682e:
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
	bra.w loc_2067aa

sub_206896:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20689e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201234).l
	move.b #$c0,d2
	bra.w loc_2067e6
	.incbin 26814, 48

sub_2068ee:
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
	bra.w loc_2067aa

sub_20695e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206966:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010c4).l
	move.b #$80,d2
	bra.w loc_2067e6
	.incbin 27018, 58
loc_2069c4:
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
	bra.w loc_2067aa

sub_206a34:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a3c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201234).l
	move.b #$40,d2
	bra.w loc_2067e6
	.incbin 27232, 48

sub_206a90:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ab4
	addi.w #$c,d3
	moveq #$a,d5
loc_206ab4:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ac2:
	tst.b $1(a1)
	bpl.s loc_206ace
	move.b $20(a1),d0
	bne.s loc_206ada
loc_206ace:
	lea $40(a1),a1
	dbf d6,loc_206ac2
	moveq #$0,d0
	rts
loc_206ada:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e40).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206b02
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206b08
	bra.w loc_206ace
loc_206b02:
	cmp.w d4,d0
	bhi.w loc_206ace
loc_206b08:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b20
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b26
	bra.w loc_206ace
loc_206b20:
	cmp.w d5,d0
	bhi.w loc_206ace
loc_206b26:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b9a
	cmpi.b #$c0,d1
	beq.w loc_206d7a
	tst.b d1
	bmi.w loc_206c64
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b5e
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206b5c
	addq.b #$2,$24(a1)
loc_206b5c:
	rts
loc_206b5e:
	tst.w $12(a0)
	bpl.s loc_206b88
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206b98
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206b98
	addq.b #$4,$25(a1)
	rts
loc_206b88:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206b98
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206b98:
	rts

sub_206b9a:
	tst.b ($ff1521).l
	bne.s loc_206bb4
	tst.b ($ff151f).l
	bne.s loc_206bb4
	cmpi.b #$2,$1c(a0)
	bne.w loc_206c64
loc_206bb4:
	tst.b $21(a1)
	beq.s loc_206bde
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206bdc
	bset.b #$7,$22(a1)
loc_206bdc:
	rts
loc_206bde:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206bf6
	moveq #$6,d0
loc_206bf6:
	move.w d0,$3e(a1)
	move.w dat_206c56(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206c10
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206c10:
	bsr.w sub_20ab10
	move.w #$96,d0
	jsr (sub_20226a).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c46
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c4e
	neg.w $12(a0)
	rts
loc_206c46:
	addi.w #$100,$12(a0)
	rts
loc_206c4e:
	subi.w #$100,$12(a0)
	rts
dat_206c56:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206c5e:
	bset.b #$7,$22(a1)
loc_206c64:
	tst.b ($ff1521).l
	bne.s loc_206c74
	tst.b ($ff151f).l
	beq.s loc_206c78
loc_206c74:
	moveq #$ffffffff,d0
	rts
loc_206c78:
	nop
	tst.w $30(a0)
	bne.s loc_206c74
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206cae
	tst.w ($ff1512).l
	beq.w loc_206d18
	jsr (sub_207592).l
	bne.s loc_206cae
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206cae:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206cc4
	move.b #$0,($ff156f).l
loc_206cc4:
	move.b #$4,$24(a0)
	bsr.w sub_2050ca
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206cf4
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206cf4:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206d02
	neg.w $10(a0)
loc_206d02:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d18:
	tst.w ($ff1588).l
	bne.w loc_206cae

sub_206d22:
	tst.w ($ff1906).l
	bne.s loc_206d76
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050ca
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
loc_206d76:
	moveq #$ffffffff,d0
	rts
loc_206d7a:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206e2c
	cmpi.b #$b,d1
	beq.w loc_206df6
	cmpi.b #$c,d1
	beq.w loc_206dfa
	cmpi.b #$17,d1
	beq.w loc_206e2c
	cmpi.b #$21,d1
	beq.w loc_206e2c
	cmpi.b #$23,d1
	beq.w loc_206e2c
	cmpi.b #$2f,d1
	beq.w loc_206e32
	cmpi.b #$3a,d1
	beq.w loc_206e32
	cmpi.b #$3b,d1
	beq.w loc_206e32
	cmpi.b #$1,($f7aa).w
	bne.s loc_206df4
	cmpi.b #$3c,d1
	blt.s loc_206df4
	cmpi.b #$3f,d1
	bgt.s loc_206df4
	bsr.w sub_206b9a
	tst.b $20(a1)
	bne.s loc_206dec
	addq.b #$3,$21(a1)
loc_206dec:
	clr.b $20(a1)
	bra.w loc_206e2c
loc_206df4:
	rts
loc_206df6:
	bra.w loc_206c5e
loc_206dfa:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206e28
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206e14
	subi.w #$10,d0
loc_206e14:
	sub.w d2,d0
	bcc.s loc_206e20
	addi.w #$18,d0
	bcs.s loc_206e24
	bra.s loc_206e28
loc_206e20:
	cmp.w d4,d0
	bhi.s loc_206e28
loc_206e24:
	bra.w loc_206c64
loc_206e28:
	bra.w sub_206b9a
loc_206e2c:
	addq.b #$1,$21(a1)
	rts
loc_206e32:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e3e
	addq.b #$1,$21(a1)
loc_206e3e:
	rts
dat_206e40:
	.incbin 28224, 362
loc_206faa:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206fc0
	move.l #$4000,(dat_20713a).l
	bra.s loc_206fe0
loc_206fc0:
	addi.l #$2000,(dat_20713a).l
	cmpi.l #$80000,(dat_20713a).l
	bls.s loc_206fe0
	move.l #$80000,(dat_20713a).l
loc_206fe0:
	move.l (dat_20713a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206ff2
	sub.l d0,$c(a0)
loc_206ff2:
	btst.b #$1,($f604).w
	beq.s loc_206ffe
	add.l d0,$c(a0)
loc_206ffe:
	btst.b #$2,($f604).w
	beq.s loc_20700a
	sub.l d0,$8(a0)
loc_20700a:
	btst.b #$3,($f604).w
	beq.s loc_207016
	add.l d0,$8(a0)
loc_207016:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200edc).l
	move.w (a1),($ff194e).l
	lea (dat_20713e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207058
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207052
	move.b #$0,d1
loc_207052:
	move.b d1,($ff1904).l
loc_207058:
	btst.b #$7,($f605).w
	beq.s loc_207078
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207072
	add.b (a2),d1
loc_207072:
	move.b d1,($ff1904).l
loc_207078:
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
	beq.s loc_207104
	bsr.w sub_207592
	bne.s loc_207104
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
loc_207104:
	btst.b #$4,($f605).w
	beq.s loc_207134
	move.b #$0,($ff1906).l
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207134:
	jmp (sub_20385a).l
dat_20713a:
	dc.b $00,$00,$40,$00
dat_20713e:
	.incbin 28990, 578

sub_207380:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20738e:
	clr.l (a2)+
	dbf d0,loc_20738e
	rts

sub_207396:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2073a4(pc,d0.w),d0
	jmp dat_2073a4(pc,d0.w)
dat_2073a4:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207644).l,a0
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
	bcc.s loc_2073e2
	moveq #$0,d6
loc_2073e2:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2073ea:
	cmp.w (a0),d6
	bls.s loc_2073fc
	tst.b $4(a0)
	bpl.s loc_2073f8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2073f8:
	addq.w #$8,a0
	bra.s loc_2073ea
loc_2073fc:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20741c
loc_20740a:
	cmp.w (a0),d6
	bls.s loc_20741c
	tst.b $4(a0)
	bpl.s loc_207418
	addq.b #$1,$1(a2)
loc_207418:
	addq.w #$8,a0
	bra.s loc_20740a
loc_20741c:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207506
	bge.s loc_2074ac
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207488
loc_207456:
	cmp.w -$8(a0),d6
	bge.s loc_207488
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20746c
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20746c:
	bsr.w sub_20752a
	bne.s loc_207476
	subq.w #$8,a0
	bra.s loc_207456
loc_207476:
	tst.b $4(a0)
	bpl.s loc_207486
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207486:
	addq.w #$8,a0
loc_207488:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207494:
	cmp.w -$8(a0),d6
	bgt.s loc_2074a6
	tst.b -$4(a0)
	bpl.s loc_2074a2
	subq.b #$1,(a2)
loc_2074a2:
	subq.w #$8,a0
	bra.s loc_207494
loc_2074a6:
	move.l a0,($f770).w
	rts
loc_2074ac:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2074c0:
	cmp.w (a0),d6
	bls.s loc_2074e2
	tst.b $4(a0)
	bpl.s loc_2074ce
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074ce:
	bsr.w sub_20752a
	beq.s loc_2074c0
	tst.b $4(a0)
	bpl.s loc_2074e2
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2074e2:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207502
loc_2074f0:
	cmp.w (a0),d6
	bls.s loc_207502
	tst.b $4(a0)
	bpl.s loc_2074fe
	addq.b #$1,$1(a2)
loc_2074fe:
	addq.w #$8,a0
	bra.s loc_2074f0
loc_207502:
	move.l a0,($f774).w
loc_207506:
	rts

sub_207508:
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

sub_20752a:
	bsr.s sub_207508
	beq.s loc_20753c
	tst.b $4(a0)
	bpl.s loc_207542
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207542
loc_20753c:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207542:
	bsr.w sub_207592
	bne.s loc_207590
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
	bpl.s loc_207572
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207572:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207584
	nop
	nop
	nop
	nop
loc_207584:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207590:
	rts

sub_207592:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20759a:
	tst.b (a1)
	beq.s loc_2075a6
	lea $40(a1),a1
	dbf d0,loc_20759a
loc_2075a6:
	rts

sub_2075a8:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2075c6
loc_2075ba:
	tst.b (a1)
	beq.s loc_2075c6
	lea $40(a1),a1
	dbf d0,loc_2075ba
loc_2075c6:
	rts
loc_2075c8:
	move.w $8(a0),d0
loc_2075cc:
	tst.b $1(a0)
	bmi.s loc_207636
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207636
loc_2075ea:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20762c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207624
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20761c
	moveq #$0,d1
	bra.s loc_207624
loc_20761c:
	cmpi.w #$3,d1
	bcs.s loc_207624
	moveq #$2,d1
loc_207624:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20762c:
	jsr (sub_203906).l
	moveq #$1,d0
	rts
loc_207636:
	btst.b #$7,($ff152e).l
	bne.s loc_2075ea
	moveq #$0,d0
	rts
dat_207644:
	.incbin 30276, 5490

sub_208bb6:
	btst.b #$3,$22(a0)
	beq.s loc_208c26
	btst.b #$3,$22(a1)
	beq.s loc_208c26
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208c26
	tst.b $2a(a1)
	beq.s loc_208be8
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_208be8:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208c14
	cmpi.b #$17,$1c(a1)
	beq.s loc_208c14
	bclr.b #$0,$2c(a1)
loc_208c14:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c26
	bclr.b #$1,$22(a1)
loc_208c26:
	rts

sub_208c28:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c3a
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c3a:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208c9a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c5c
	bclr.b #$3,$22(a0)
	bra.w sub_208bb6
loc_208c5c:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208c9a
	tst.b ($ff195b).l
	beq.s loc_208c84
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208c94
loc_208c84:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208c94:
	move.b #$0,$1c(a1)
loc_208c9a:
	bset.b #$3,$22(a1)
	beq.s loc_208cbc
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208cf4
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208cbc:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208ce8
	cmpi.b #$2,$24(a0)
	beq.s loc_208cee
loc_208ce8:
	move.w $10(a1),$14(a1)
loc_208cee:
	bclr.b #$1,$22(a1)
loc_208cf4:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208cfe:
	move.b #$1,$25(a0)
loc_208d04:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208fb8
	btst.b #$6,$2c(a1)
	bne.w loc_208fb8
	cmpi.b #$6,$24(a1)
	bcc.w loc_208fb8
	tst.b $0(a1)
	beq.w loc_208fb8
	tst.b $1(a0)
	bpl.w loc_208fb8
	tst.b ($ff1906).l
	bne.w loc_208fb8
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208fb8
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208fb8
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d72
	btst.b #$3,$22(a0)
	bne.s loc_208d84
	bra.w loc_208fb8
loc_208d72:
	cmpi.b #$1,$25(a0)
	bne.s loc_208d84
	tst.w $12(a1)
	beq.s loc_208d84
	bmi.w loc_208fb8
loc_208d84:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208fb8
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208fb8
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208dba
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208dba:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208dc8
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208dc8:
	cmp.w d4,d5
	bcs.w loc_208e5c
	cmpi.b #$1,$25(a0)
	beq.w loc_208fb8
	cmpi.b #$a,$0(a0)
	bne.s loc_208dea
	btst.b #$1,$22(a1)
	bne.w loc_208fb8
loc_208dea:
	cmpi.b #$4,d5
	bls.w loc_208fb8
	bsr.w sub_209008
	move.l d0,-(a7)
	bsr.w sub_208bb6
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208e14
	tst.w $10(a1)
	beq.s loc_208e44
	bpl.s loc_208e1c
	bra.s loc_208e44
loc_208e14:
	tst.w $10(a1)
	beq.s loc_208e44
	bpl.s loc_208e44
loc_208e1c:
	bsr.w sub_208fc8
	btst.b #$1,$22(a1)
	bne.s loc_208e3a
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e3a:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e44:
	bsr.w sub_20907e
	bsr.w sub_208fc8
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208e5c:
	cmpi.b #$19,$0(a0)
	bne.s loc_208e6e
	btst.b #$2,$22(a1)
	bne.w loc_208fb8
loc_208e6e:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208e84
	bmi.w loc_208f54
loc_208e84:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208e96
	tst.w $12(a1)
	beq.s loc_208e96
	bmi.w loc_208fb8
loc_208e96:
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
	beq.s loc_208ee2
	bpl.s loc_208ec2
	neg.b d0
loc_208ec2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066b4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ee2
	tst.w $10(a0)
	bpl.s loc_208ede
	neg.w d1
loc_208ede:
	add.w d1,$8(a1)
loc_208ee2:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f4c
	tst.w $12(a0)
	bmi.s loc_208f20
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206746).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f20
	add.w d1,$c(a1)
	bra.w loc_208fb8
loc_208f20:
	tst.w $12(a0)
	bpl.s loc_208f4c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20695e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f4c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d22).l
	movem.l (a7)+,a0-a1
	bra.s loc_208fb8
loc_208f4c:
	bsr.w sub_208c28
	moveq #$1,d0
	rts
loc_208f54:
	cmpi.b #$1,$25(a0)
	beq.s loc_208fb8
	cmpi.b #$9,$0(a0)
	beq.s loc_208fb8
	cmpi.b #$a,$0(a0)
	bne.s loc_208f7e
	cmpi.b #$2,$25(a0)
	beq.s loc_208f9e
	btst.b #$1,$1(a0)
	bne.s loc_208f9e
	bra.s loc_208fb8
loc_208f7e:
	btst.b #$1,$22(a1)
	bne.s loc_208f9e
	tst.w $12(a0)
	beq.s loc_208f9e
	bmi.s loc_208f9e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d22).l
	movem.l (a7)+,a0-a1
loc_208f9e:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20907e
	bsr.w sub_208bb6
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208fb8:
	bsr.w sub_20907e
	bsr.w sub_208bb6
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208fc8:
	tst.w $10(a0)
	beq.s loc_209006
	cmpi.b #$a,$0(a0)
	beq.s loc_209006
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208fe2
	neg.b d0
loc_208fe2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066b4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209006
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d22).l
	movem.l (a7)+,a0-a1
loc_209006:
	rts

sub_209008:
	cmpi.b #$a,$0(a0)
	bne.s loc_209018
	move.b #$0,$20(a1)
	rts
loc_209018:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20906c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20907c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20903a
	tst.w $10(a2)
	beq.s loc_20907c
loc_20903a:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20904c
	cmp.w $8(a2),d1
	bcs.s loc_20907c
	bra.s loc_209052
loc_20904c:
	cmp.w $8(a2),d1
	bcc.s loc_20907c
loc_209052:
	cmpi.b #$15,$0(a0)
	beq.s loc_20907c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d22).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20906c:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20907c:
	rts

sub_20907e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209098
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209098
	move.b #$0,$20(a1)
loc_209098:
	rts

sub_20909a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d04).l
	.incbin 37032, 52
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$2092c8,$4(a0)
	moveq #$6,d0
	jsr sub_20cb30(pc)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	tst.b $1(a0)
	bpl.w loc_209146
	lea ($d000).w,a1
	bsr.s sub_20909a
	beq.s loc_209146
	bset.b #$0,$2c(a1)
	bne.s loc_20913c
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_209138
	neg.w d0
	move.b #$80,$2b(a1)
loc_209138:
	move.b d0,$39(a1)
loc_20913c:
	cmpi.b #$6,$24(a1)
	bcc.s loc_209146
	bra.s loc_209148
loc_209146:
	rts
loc_209148:
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
	move.b dat_209198(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_209188
	addq.b #$1,$39(a1)
loc_209188:
	move.w ($f604).w,($f602).w
	bsr.w sub_2091a8
	bra.w loc_2091fa
	dc.b $4e,$75
dat_209198:
	.incbin 37272, 16

sub_2091a8:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_2091d6
	btst.b #$2,($f602).w
	beq.s loc_2091c0
	addq.b #$1,$39(a1)
	bra.s loc_2091f8
loc_2091c0:
	btst.b #$3,($f602).w
	beq.s loc_2091f8
	subq.b #$1,$39(a1)
	bcc.s loc_2091f8
	move.b #$0,$39(a1)
	bra.s loc_2091f8
loc_2091d6:
	btst.b #$3,($f602).w
	beq.s loc_2091e4
	addq.b #$1,$39(a1)
	bra.s loc_2091f8
loc_2091e4:
	btst.b #$2,($f602).w
	beq.s loc_2091f8
	subq.b #$1,$39(a1)
	bcc.s loc_2091f8
	move.b #$0,$39(a1)
loc_2091f8:
	rts
loc_2091fa:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2092b6
	clr.b $2c(a1)
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_20921a
	move.w #$380,d2
loc_20921a:
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
	beq.s loc_209270
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20927c
loc_209270:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20927c:
	btst.b #$2,$22(a1)
	bne.s loc_2092b8
	tst.b ($ff195b).l
	beq.s loc_20929a
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_2092aa
loc_20929a:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_2092aa:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_2092b6:
	rts
loc_2092b8:
	bset.b #$4,$22(a1)
	rts
	.incbin 37568, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209306(pc,d0.w),d0
	jsr dat_209306(pc,d0.w)
	jsr (sub_20385a).l
	jmp (loc_2075c8).l
dat_209306:
	dc.b $00,$04,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$209356,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$0,$1a(a0)
	moveq #$b,d0
	jsr (sub_20cb30).l
	tst.b $1(a0)
	bpl.s loc_209354
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d04).l
loc_209354:
	rts
	.incbin 37718, 268
loc_209462:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209470(pc,d0.w),d0
	jmp dat_209470(pc,d0.w)
dat_209470:
	.incbin 38000, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209462
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2094c6
	tst.b $1(a0)
	bpl.s loc_2094ce
loc_2094c6:
	move.w dat_209520(pc,d0.w),d1
	jsr dat_209520(pc,d1.w)
loc_2094ce:
	bsr.w sub_20385a
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209500
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209500:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203906
	rts
dat_209520:
	.incbin 38176, 26
	addq.b #$2,$24(a0)
	move.l #$2098a2,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209590
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2098a8,$4(a0)
	bra.s loc_2095d2
loc_209590:
	btst.l #$3,d0
	beq.s loc_2095be
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2098f2,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cb30).l
	move.l (a7)+,d0
	bra.s loc_2095d2
loc_2095be:
	btst.b #$1,$1(a0)
	beq.s loc_2095d2
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_2095d2:
	btst.l #$1,d0
	beq.s loc_2095de
	bset.b #$5,$2(a0)
loc_2095de:
	andi.w #$2,d0
	move.w dat_2095ea(pc,d0.w),$30(a0)
	rts
dat_2095ea:
	dc.b $f0,$00,$f6,$00

sub_2095ee:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d04).l
	tst.b $1(a0)
	bpl.s loc_20960a
	lea ($d000).w,a1
	bsr.s sub_2095ee
	bne.s loc_20960c
loc_20960a:
	rts
loc_20960c:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20226a).l
	.incbin 38462, 34

sub_209660:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d04).l
	tst.b $1(a0)
	bpl.s loc_209682
	lea ($d000).w,a1
	bsr.s sub_209660
	btst.b #$5,$22(a0)
	bne.s loc_209684
loc_209682:
	rts
loc_209684:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2096b2
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2096b2:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_2096cc
	move.b #$0,$1c(a1)
loc_2096cc:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20226a).l
	.incbin 38630, 666
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20998e(pc,d0.w),d1
	jmp dat_20998e(pc,d1.w)
dat_20998e:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209998:
	.incbin 39320, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2099f0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2099e8
	moveq #$0,d1
	bra.s loc_2099f0
loc_2099e8:
	cmpi.w #$3,d1
	bcs.s loc_2099f0
	moveq #$2,d1
loc_2099f0:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209a0c
	moveq #$6,d1
loc_209a0c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209998).l,a1
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
	beq.s loc_209a5c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a54
	moveq #$0,d0
	bra.s loc_209a5c
loc_209a54:
	cmpi.w #$3,d0
	bcs.s loc_209a5c
	moveq #$2,d0
loc_209a5c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b2a
	dbf d0,loc_209a5c
	bclr.b #$7,(a2)
	bra.s loc_209ab2
loc_209a6e:
	swap d1
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
	bcs.w loc_209b2a
	dbf d0,loc_209a9a
	bclr.b #$7,(a2)
	bsr.w sub_2075a8
	bne.w loc_209b36
loc_209ab2:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209dfc,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b08
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209b08
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209b08:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209b2a:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209a6e
loc_209b36:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209b5c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b54
	moveq #$0,d0
	bra.s loc_209b5c
loc_209b54:
	cmpi.w #$3,d0
	bcs.s loc_209b5c
	moveq #$2,d0
loc_209b5c:
	lea $1(a2),a3
loc_209b60:
	btst.b #$0,-(a3)
	bne.w sub_203906
	dbf d0,loc_209b60
	tst.b $1(a0)
	bmi.s loc_209b90
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209c0a
loc_209b90:
	tst.w ($ff190e).l
	bne.s loc_209ba0
	move.b ($ff1913).l,$1a(a0)
loc_209ba0:
	bra.w sub_20385a
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c0e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209bf0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209be8
	moveq #$0,d1
	bra.s loc_209bf0
loc_209be8:
	cmpi.w #$3,d1
	bcs.s loc_209bf0
	moveq #$2,d1
loc_209bf0:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209df4).l,a1
	bsr.w sub_205a74
	bra.w sub_20385a
loc_209c0a:
	bra.w sub_203906

sub_209c0e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c5e
	bset.b #$1,($ff150d).l
	beq.s loc_209c48
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c5e
	bset.b #$2,($ff150d).l
	bne.s loc_209c5e
loc_209c48:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a34).l
loc_209c5e:
	jmp (sub_20226a).l
	.incbin 40036, 400
dat_209df4:
	.incbin 40436, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fb4(pc,d0.w),d0
	jsr dat_209fb4(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203906
	rts
dat_209fb4:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a0fc,$4(a0)
	moveq #$5,d0
	jsr (sub_20cb30).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a0c8
	tst.b ($ff152e).l
	beq.s loc_20a02e
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a014
	btst.b #$3,$22(a0)
	bne.s loc_20a034
	bra.s loc_20a02e
loc_20a014:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a02e
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a02e:
	jmp (sub_20385a).l
loc_20a034:
	addq.b #$2,$24(a0)
	bsr.w sub_20a0c8
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a054
	jmp (sub_203906).l
loc_20a054:
	jmp (sub_20385a).l
	.incbin 41050, 110

sub_20a0c8:
	lea ($d000).w,a1
	bsr.w sub_20a0d0

sub_20a0d0:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cfe).l
	.incbin 41182, 106
loc_20a148:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a176(pc,d0.w),d0
	jsr dat_20a176(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a174
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a16e
	btst.b #$0,($ff1505).l
	bne.s loc_20a174
loc_20a16e:
	jmp (sub_20385a).l
loc_20a174:
	rts
dat_20a176:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a750,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a1aa
	move.b #$13,$1a(a0)
loc_20a1aa:
	rts
loc_20a1ac:
	tst.b ($ff0f01).l
	beq.s loc_20a1ba
	jmp (sub_203906).l
loc_20a1ba:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a148
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a1de(pc,d0.w),d0
	jsr dat_20a1de(pc,d0.w)
	jsr (sub_20385a).l
	jmp (loc_2075c8).l
dat_20a1de:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a750,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a22c
	tst.b $29(a0)
	bne.s loc_20a22c
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a22c:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a2f8
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a254
	addq.b #$2,$1a(a0)
loc_20a254:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a268
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a268:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a2ce
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a29a
	tst.b $29(a0)
	beq.s loc_20a292
	tst.b ($ff1956).l
	beq.s loc_20a2ce
	bra.s loc_20a29a
loc_20a292:
	tst.b ($ff1956).l
	bne.s loc_20a2ce
loc_20a29a:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a2f8
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a2c8
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a2c8:
	jsr (sub_205a34).l
loc_20a2ce:
	rts
	.incbin 41680, 40

sub_20a2f8:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a330
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a328
	moveq #$0,d1
	bra.s loc_20a330
loc_20a328:
	cmpi.w #$3,d1
	bcs.s loc_20a330
	moveq #$2,d1
loc_20a330:
	add.w d1,d0
	rts

sub_20a334:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a356
	tst.b ($ff1956).l
	beq.s loc_20a34e
	tst.b $29(a0)
	bne.s loc_20a356
	rts
loc_20a34e:
	tst.b $29(a0)
	beq.s loc_20a356
	rts
loc_20a356:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d04).l
	tst.b $28(a0)
	bne.s loc_20a378
	tst.b ($ff0f01).l
	beq.s loc_20a378
	jmp (loc_2075c8).l
loc_20a378:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a1ac
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a390(pc,d0.w),d1
	jmp dat_20a390(pc,d1.w)
dat_20a390:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a750,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3da
	tst.b $29(a0)
	bne.s loc_20a3da
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a3da:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a2f8
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a406
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a406:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a460
	move.b $25(a0),d0
	beq.s loc_20a440
	bsr.w sub_2037a2
	jsr (sub_2067f4).l
	tst.w d1
	bpl.w loc_20a44e
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a44e
loc_20a440:
	tst.b $1(a0)
	bpl.s loc_20a44e
	lea ($d000).w,a1
	bsr.w sub_20a334
loc_20a44e:
	tst.w ($ff190e).l
	bne.s loc_20a460
	lea (dat_20a6c8).l,a1
	bsr.w sub_205a74
loc_20a460:
	bsr.w sub_20385a
	jmp (loc_2075c8).l
	move.w #$96,d0
	jsr (sub_20226a).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207592
	bne.s loc_20a4a2
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a4a2:
	bsr.w sub_207592
	bne.s loc_20a4cc
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a4cc:
	bsr.w sub_20a2f8
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_20385a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4f2(pc,d0.w),d1
	jsr dat_20a4f2(pc,d1.w)
	bra.w sub_20385a
dat_20a4f2:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a50e
	andi.b #$7f,$2(a0)
loc_20a50e:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a750,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a556
	bsr.w sub_203804
	addi.w #$18,$12(a0)
	rts
loc_20a556:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a57c
loc_20a566:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a34).l
loc_20a57c:
	cmpi.b #$1,d0
	bne.s loc_20a5c8
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a5be
	bset.b #$1,($ff150d).l
	beq.w loc_20a566
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a5be
	bset.b #$2,($ff150d).l
	beq.w loc_20a566
loc_20a5be:
	move.w #$95,d0
	jmp (sub_20226a).l
loc_20a5c8:
	cmpi.b #$2,d0
	bne.s loc_20a5e6

sub_20a5ce:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_20226a).l
loc_20a5e6:
	cmpi.b #$3,d0
	bne.s loc_20a648

sub_20a5ec:
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
	bne.s loc_20a63c
	move.w #$82,d0
	jsr (sub_205a34).l
loc_20a63c:
	move.w #$6d,d0
	jmp (sub_205a34).l
	dc.b $4e,$75
loc_20a648:
	cmpi.b #$4,d0
	bne.s loc_20a68a
loc_20a64e:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a680
	move.w #$82,d0
	jsr (sub_205a34).l
loc_20a680:
	move.w #$6c,d0
	jmp (sub_205a34).l
loc_20a68a:
	cmpi.b #$5,d0
	bne.s loc_20a69a
	move.w #$12c,($ff190e).l
	rts
loc_20a69a:
	cmpi.b #$6,d0
	bne.s loc_20a6b4
	move.w #$9d,d0
	jsr (sub_20226a).l
	move.b #$1,($ff156f).l
	rts
loc_20a6b4:
	bsr.w sub_20a5ce
	bsr.w sub_20a5ec
	bra.s loc_20a64e
	subq.w #$1,$1e(a0)
	bmi.w sub_203906
	rts
dat_20a6c8:
	.incbin 42696, 586
loc_20a912:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a926(pc,d0.w),d0
	jsr dat_20a926(pc,d0.w)
	jmp (sub_20385a).l
dat_20a926:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a966,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a960
	jmp (sub_203906).l
loc_20a960:
	subq.w #$2,$c(a0)
	rts
	.incbin 43366, 82
	tst.b $28(a0)
	bmi.w loc_20a912
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a9ce(pc,d0.w),d0
	jmp dat_20a9ce(pc,d0.w)
dat_20a9ce:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20aa68,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a9fe
	move.b #$3,$1a(a0)
	bra.s loc_20aa1e
loc_20a9fe:
	tst.w ($ff1588).l
	beq.s loc_20aa0c
	move.b #$2,$1a(a0)
loc_20aa0c:
	tst.b $28(a0)
	beq.s loc_20aa1e
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20aa1e:
	tst.b $28(a0)
	bne.s loc_20aa62
	tst.b $29(a0)
	beq.s loc_20aa4e
	tst.w ($ff1512).l
	beq.s loc_20aa3a
	bclr.b #$5,$2(a0)
	bra.s loc_20aa62
loc_20aa3a:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20aa62
	eori.b #$20,$2(a0)
	bra.s loc_20aa62
loc_20aa4e:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20aa62
	move.b #$2,$1a(a0)
loc_20aa62:
	jmp (sub_20385a).l
	.incbin 43624, 168

sub_20ab10:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ab2c
	move.l d1,(a3)
loc_20ab2c:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ab56
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a34).l
loc_20ab56:
	rts
loc_20ab58:
	tst.w ($ff1588).l
	beq.s loc_20abae
	bsr.w sub_20adaa
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
	lea (dat_20af0a).l,a2
	moveq #$2,d6
	bsr.w sub_20af62
	bra.w loc_20ac08
loc_20abae:
	tst.b ($ff1511).l
	beq.s loc_20abd2
	bpl.s loc_20abbc
	bsr.w sub_20ad54
loc_20abbc:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ae44
loc_20abd2:
	tst.b ($ff150f).l
	beq.s loc_20ac08
	bpl.s loc_20abe0
	bsr.w sub_20ad40
loc_20abe0:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20ac04
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20ac04:
	bsr.w sub_20ae3a
loc_20ac08:
	tst.w ($ff1588).l
	bne.w loc_20acb4
	tst.b ($ff1510).l
	beq.w loc_20acb4
	tst.w ($f63a).w
	bne.w loc_20acb4
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ad12
	tst.b ($f7cc).w
	bne.s loc_20ac5e
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac5e
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac5e
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ac5e
	move.b #$9,(a1)
loc_20ac5e:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20af50
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20af5a
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20acb0
	move.w #$63,d1
loc_20acb0:
	bsr.w sub_20af5a
loc_20acb4:
	tst.b ($ff150e).l
	beq.s loc_20acc6
	clr.b ($ff150e).l
	bsr.w sub_20af30
loc_20acc6:
	tst.b ($f7d6).w
	beq.s loc_20ad10
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ace6
	move.l #$6d400001,d0
loc_20ace6:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20adc8
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ad06
	move.l #$6e800001,d0
loc_20ad06:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20adc8
loc_20ad10:
	rts
loc_20ad12:
	btst.b #$7,($ff152e).l
	bne.s loc_20ad3e
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d22
	move.b #$1,($ff150c).l
loc_20ad3e:
	rts

sub_20ad40:
	move.l #$73600002,($c00004).l
	lea dat_20ada6(pc),a2
	move.w #$2,d2
	bra.s loc_20ad70

sub_20ad54:
	lea ($c00000).l,a6
	bsr.w sub_20af30
	move.l #$70600002,($c00004).l
	lea dat_20ad9e(pc),a2
	move.w #$6,d2
loc_20ad70:
	lea (dat_236456).l,a1
loc_20ad76:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ad92
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ad86:
	move.l (a3)+,(a6)
	dbf d1,loc_20ad86
loc_20ad8c:
	dbf d2,loc_20ad76
	rts
loc_20ad92:
	move.l #$0,(a6)
	dbf d1,loc_20ad92
	bra.s loc_20ad8c
dat_20ad9e:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ada6:
	dc.b $ff,$ff,$00,$00

sub_20adaa:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20af26
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20af26

sub_20adc8:
	lea (dat_20af02).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20add8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20addc:
	sub.l d3,d1
	bcs.s loc_20ade4
	addq.w #$1,d2
	bra.s loc_20addc
loc_20ade4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20adee
	move.w #$1,d4
loc_20adee:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20adfa
	tst.w d6
	bne.s loc_20ae2c
loc_20adfa:
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
loc_20ae20:
	addi.l #$400000,d0
	dbf d6,loc_20add8
	rts
loc_20ae2c:
	moveq #$f,d5
loc_20ae2e:
	move.l #$0,(a6)
	dbf d5,loc_20ae2e
	bra.s loc_20ae20

sub_20ae3a:
	lea (dat_20af0a).l,a2
	moveq #$2,d6
	bra.s loc_20ae4c

sub_20ae44:
	lea (dat_20aefe).l,a2
	moveq #$5,d6
loc_20ae4c:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20ae54:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae58:
	sub.l d3,d1
	bcs.s loc_20ae60
	addq.w #$1,d2
	bra.s loc_20ae58
loc_20ae60:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae6a
	move.w #$1,d4
loc_20ae6a:
	tst.w d4
	beq.s loc_20ae98
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
loc_20ae98:
	addi.l #$400000,d0
	dbf d6,loc_20ae54
	rts
	.incbin 44708, 32
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
	dbf d6,loc_20aec4
	rts
dat_20aefe:
	dc.b $00,$01,$86,$a0
dat_20af02:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20af0a:
	dc.b $00,$00,$00,$64
dat_20af0e:
	dc.b $00,$00,$00,$0a
dat_20af12:
	dc.b $00,$00,$00,$01
dat_20af16:
	.incbin 44822, 16

sub_20af26:
	moveq #$3,d6
	lea (dat_20af16).l,a2
	bra.s sub_20af62

sub_20af30:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20af46
	moveq #$9,d1
loc_20af46:
	lea (dat_20af12).l,a2
	moveq #$0,d6
	bra.s sub_20af62

sub_20af50:
	lea (dat_20af12).l,a2
	moveq #$0,d6
	bra.s sub_20af62

sub_20af5a:
	lea (dat_20af0e).l,a2
	moveq #$1,d6

sub_20af62:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20af6a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af6e:
	sub.l d3,d1
	bcs.s loc_20af76
	addq.w #$1,d2
	bra.s loc_20af6e
loc_20af76:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af80
	move.w #$1,d4
loc_20af80:
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
	dbf d6,loc_20af6a
	rts
	.incbin 44982, 358
	jsr (sub_20e9ae).l
	tst.b $24(a0)
	bne.w loc_20b1ac
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
	jsr (sub_20cb30).l
	tst.b $28(a0)
	bne.s loc_20b186
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b230(pc),a1
	bra.s loc_20b198
loc_20b186:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b252(pc),a1
loc_20b198:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b1ac:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b1c0
	neg.w d0
loc_20b1c0:
	cmpi.w #$80,d0
	blt.s loc_20b1e2
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b1e2:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_20076e).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b21e(pc),a1
	jsr (sub_205a74).l
	jsr (sub_20385a).l
	move.w $2a(a0),d0
	jmp (loc_2075cc).l
dat_20b21e:
	.incbin 45598, 18
dat_20b230:
	.incbin 45616, 34
dat_20b252:
	.incbin 45650, 532
	cmpi.b #$1,$28(a0)
	beq.w loc_20b6a8
	jsr (sub_20e9ae).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b494(pc,d0.w),d0
	jsr dat_20b494(pc,d0.w)
	jsr (sub_20385a).l
	move.w $2a(a0),d0
	jmp (loc_2075cc).l
dat_20b494:
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
	jsr (sub_20cb30).l
	tst.b $28(a0)
	bne.s loc_20b4ec
	lea dat_20b66a(pc),a1
	lea dat_20b644(pc),a2
	move.l #$ffff6000,d0
	bra.s loc_20b4fa
loc_20b4ec:
	lea dat_20b680(pc),a1
	lea dat_20b650(pc),a2
	move.l #$ffffb000,d0
loc_20b4fa:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_2067f4).l
	tst.w d1
	bpl.s loc_20b51e
	addq.b #$2,$24(a0)
loc_20b51e:
	rts
loc_20b520:
	tst.w ($ff1906).l
	bne.s loc_20b542
	tst.b $28(a0)
	bne.s loc_20b542
	tst.w $34(a0)
	beq.s loc_20b53a
	subq.w #$1,$34(a0)
	bra.s loc_20b542
loc_20b53a:
	lea ($d000).w,a1
	bsr.s sub_20b594
	bcs.s loc_20b58e
loc_20b542:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b556
	neg.w d0
loc_20b556:
	cmpi.w #$80,d0
	bge.s loc_20b57c
	jsr (sub_2067f4).l
	cmpi.w #$fff9,d1
	blt.s loc_20b57c
	cmpi.w #$7,d1
	bgt.s loc_20b57c
	add.w d1,$c(a0)
	movea.l $30(a0),a1
	jmp (sub_205a74).l
loc_20b57c:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b520
loc_20b58e:
	addq.b #$2,$24(a0)
	rts

sub_20b594:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b5b8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20b5b8:
	rts
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	movea.l $30(a0),a1
	jmp (sub_205a74).l
	move.b #$4,$24(a0)
	move.b #$0,$1c(a0)
	move.w #$78,$34(a0)
	tst.b $28(a0)
	bne.s loc_20b612
	jsr (sub_207592).l
	bne.s loc_20b612
	tst.b $1(a0)
	bpl.s loc_20b5fe
	move.w #$a0,d0
	jsr (sub_20226a).l
loc_20b5fe:
	bsr.s sub_20b614
	sf $3f(a1)
	jsr (sub_207592).l
	bne.s loc_20b612
	bsr.s sub_20b614
	st $3f(a1)
loc_20b612:
	rts

sub_20b614:
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w $2(a0),$2(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$a,$c(a1)
	rts
dat_20b644:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $3b,$02,$fc,$00
dat_20b650:
	.incbin 46672, 26
dat_20b66a:
	.incbin 46698, 22
dat_20b680:
	.incbin 46720, 40
loc_20b6a8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b6bc(pc,d0.w),d0
	jsr dat_20b6bc(pc,d0.w)
	jmp (sub_20385a).l
dat_20b6bc:
	.incbin 46780, 858

sub_20ba16:
	tst.b ($ff1906).l
	bne.s loc_20ba2e
	cmpi.b #$6,$24(a1)
	bcc.s loc_20ba2e
	tst.w $12(a1)
	bmi.s loc_20ba2e
	bra.s loc_20ba38
loc_20ba2e:
	bclr.b #$3,$22(a0)
	moveq #$0,d1
	rts
loc_20ba38:
	lea (dat_20bac4).l,a2
	andi.w #$7,d0
	asl.w #$2,d0
	lea $0(a2,d0.w),a2
	move.w $8(a0),d0
	move.w $8(a1),d1
	move.b $17(a1),d3
	ext.w d3
	move.b $0(a2),d2
	ext.w d2
	move.w d0,d4
	move.w d1,d5
	add.w d2,d4
	sub.w d3,d5
	cmp.w d4,d5
	bpl.s loc_20baba
	move.b $1(a2),d2
	ext.w d2
	neg.w d2
	move.w d0,d4
	move.w d1,d5
	sub.w d2,d4
	add.w d3,d5
	cmp.w d5,d4
	bpl.s loc_20baba
	move.w $c(a0),d0
	move.w $c(a1),d1
	move.b $16(a1),d3
	ext.w d3
	move.b $2(a2),d2
	ext.w d2
	move.w d0,d4
	move.w d1,d5
	add.w d2,d4
	sub.w d3,d5
	cmp.w d4,d5
	bpl.s loc_20baba
	move.b $3(a2),d2
	ext.w d2
	neg.w d2
	move.w d0,d4
	move.w d1,d5
	sub.w d2,d4
	add.w d3,d5
	cmp.w d5,d4
	bpl.s loc_20baba
	bset.b #$3,$22(a0)
	moveq #$ffffffff,d1
	rts
loc_20baba:
	bclr.b #$3,$22(a0)
	moveq #$0,d1
	rts
dat_20bac4:
	.incbin 47812, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20baf8(pc,d0.w),d0
	jsr dat_20baf8(pc,d0.w)
	jmp (loc_2075c8).l
dat_20baf8:
	dc.b $00,$0e,$01,$90,$00,$7e,$01,$c0
	dc.b $00,$ae,$01,$f8,$00,$e6
	move.l #$20bdc8,$4(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$18,$17(a0)
	move.b #$4,$16(a0)
	moveq #$7,d0
	jsr sub_20cb30(pc)
	move.b #$3,d0
	move.b #$2,d1
	tst.b $28(a0)
	bne.s loc_20bb48
	btst.b #$0,$1(a0)
	beq.s loc_20bb5c
loc_20bb48:
	move.b #$4,d0
	move.b #$4,d1
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
loc_20bb5c:
	move.b d0,$1c(a0)
	move.b d1,$24(a0)
	rts
loc_20bb66:
	lea dat_20bd92(pc),a1
	jsr (sub_205a74).l
	jmp (sub_20385a).l
	lea ($d000).w,a1
	moveq #$3,d0
	bsr.w sub_20ba16
	tst.b d1
	beq.s loc_20bba2
	move.l $c(a0),d0
	moveq #$0,d1
	move.b $16(a1),d1
	swap d1
	sub.l d1,d0
	move.l d0,$c(a1)
	move.b #$c,$24(a0)
	move.b #$4,$1c(a0)
loc_20bba2:
	bra.w loc_20bb66
	.incbin 48038, 226
	lea ($d000).w,a1
	moveq #$5,d0
	bsr.w sub_20ba16
	tst.b d1
	beq.s loc_20bcb4
	move.l $c(a0),d0
	moveq #$0,d1
	move.b $16(a1),d1
	swap d1
	sub.l d1,d0
	move.l d0,$c(a1)
	move.b #$a,$24(a0)
	move.b #$3,$1c(a0)
loc_20bcb4:
	bra.w loc_20bb66
	.incbin 48312, 56
	move.b #$1,$1c(a0)
	lea ($d000).w,a1
	moveq #$6,d0
	bsr.w sub_20ba16
	tst.b d1
	beq.s loc_20bd70
	move.w $12(a1),d0
	addi.w #$100,d0
	cmpi.w #$a00,d0
	bmi.s loc_20bd16
	move.w #$a00,d0
loc_20bd16:
	neg.w d0
	move.w d0,$12(a1)
	move.b #$40,$2a(a0)
	bset.b #$1,$22(a1)
	beq.s loc_20bd2e
	clr.b $3c(a1)
loc_20bd2e:
	bclr.b #$5,$22(a1)
	clr.b $38(a1)
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20bd6a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
	bra.s loc_20bd70
loc_20bd6a:
	bset.b #$4,$22(a1)
loc_20bd70:
	move.b $2a(a0),d0
	subq.b #$1,d0
	move.b d0,$2a(a0)
	bne.s loc_20bd8e
	move.b #$2,$24(a0)
	move.b #$3,$1c(a0)
	move.b #$40,$2a(a0)
loc_20bd8e:
	bra.w loc_20bb66
dat_20bd92:
	.incbin 48530, 598
	lea ($d000).w,a1
	jsr (sub_208cfe).l
	beq.s loc_20c000
	tst.w $2a(a0)
	bne.s loc_20c000
	jsr (sub_208bb6).l
loc_20c000:
	rts
	.incbin 49154, 1100
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c464(pc,d0.w),d0
	jsr dat_20c464(pc,d0.w)
	jsr (sub_20385a).l
	rts
dat_20c464:
	dc.b $00,$16,$00,$e8

sub_20c468:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208cfe).l
	ori.b #$4,$1(a0)
	move.w #$44be,$2(a0)
	move.b #$2,$18(a0)
	move.w $8(a0),$38(a0)
	move.w $c(a0),$3a(a0)
	move.w $c(a0),$36(a0)
	move.l #$20c8cc,d0
	cmpi.w #$0,($ff1506).l
	beq.s loc_20c4c4
	move.l #$20c8cc,d0
	cmpi.w #$1,($ff1506).l
	beq.s loc_20c4c4
	move.l #$20c8cc,d0
loc_20c4c4:
	move.l d0,$4(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$3,d0
	move.b d0,$1a(a0)
	move.b dat_20c544(pc,d0.w),$19(a0)
	move.b #$8,$16(a0)
	lsr.b #$2,d1
	andi.w #$3,d1
	move.b dat_20c548(pc,d1.w),$2d(a0)
	move.b $29(a0),d0
	beq.s loc_20c53e
	jsr (sub_207592).l
	beq.s loc_20c502
	jmp (loc_20c8a2).l
loc_20c502:
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
loc_20c53e:
	addq.b #$2,$24(a0)
	rts
dat_20c544:
	dc.b $10,$20,$30,$00
dat_20c548:
	dc.b $02,$03,$04,$06
	tst.w ($ff190e).l
	beq.s loc_20c558
	bra.w sub_20c468
loc_20c558:
	move.b $28(a0),d0
	lsr.b #$4,d0
	andi.w #$f,d0
	add.w d0,d0
	move.w dat_20c598(pc,d0.w),d0
	jsr dat_20c598(pc,d0.w)
	move.w $38(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c58a
	rts
loc_20c58a:
	lea ($d000).w,a1
	jsr (sub_208bb6).l
	bra.w loc_20c8a2
dat_20c598:
	.incbin 50584, 42
	move.l $8(a0),-(a7)
	jsr sub_20c88a(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	addq.b #$1,$2a(a0)
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
loc_20c5e6:
	move.l (a7)+,d0
	move.l $8(a0),d1
	sub.l d0,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
loc_20c5f4:
	jsr sub_20c468(pc)
	beq.s loc_20c60c
	move.b $2c(a0),d0
	cmpi.b #$8,d0
	bcc.s loc_20c608
	addq.b #$1,$2c(a0)
loc_20c608:
	moveq #$1,d0
	rts
loc_20c60c:
	moveq #$0,d0
	move.b $2c(a0),d0
	beq.s loc_20c618
	subq.b #$1,$2c(a0)
loc_20c618:
	moveq #$0,d0
	rts
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c88a(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c88a(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c5e6
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c88a(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c88a(pc)
	neg.w d0
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c5e6

sub_20c666:
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c5f4
	move.b $2b(a0),d0
	bne.s loc_20c692
	jsr sub_20c666(pc)
	bne.s loc_20c688
	rts
loc_20c688:
	move.b #$1e,$2e(a0)
	addq.b #$2,$2b(a0)
loc_20c692:
	move.b $2e(a0),d0
	beq.s loc_20c6a0
	subq.b #$1,$2e(a0)
	bra.w sub_20c666
loc_20c6a0:
	jsr sub_20c468(pc)
	move.l $c(a0),d1
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	move.l d1,$c(a0)
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20c6c6
	addi.w #$40,$12(a0)
loc_20c6c6:
	move.w ($f704).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c6e4
	lea ($d000).w,a1
	jsr (sub_208bb6).l
	jmp (sub_203906).l
loc_20c6e4:
	rts
	.incbin 50918, 420

sub_20c88a:
	moveq #$0,d0
	move.b $2a(a0),d0
	jsr (sub_20076e).l
	moveq #$0,d2
	move.b $2d(a0),d2
	muls.w d2,d0
	asr.w #$4,d0
	rts
loc_20c8a2:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c8c6
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c8c6:
	jmp (sub_203906).l
	.incbin 51404, 494
loc_20caba:
	lea dat_20cb0c(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cac6:
	cmp.w (a1)+,d0
	bcs.s loc_20cace
	addq.b #$2,d1
	bra.s loc_20cac6
loc_20cace:
	move.b d1,($ff1574).l
	move.w dat_20cb24(pc,d1.w),d0
	jmp (sub_202434).l

sub_20cade:
	lea dat_20cb0c(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20caea:
	cmp.w (a1)+,d0
	bcs.s loc_20caf2
	addq.b #$2,d1
	bra.s loc_20caea
loc_20caf2:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cafc
	rts
loc_20cafc:
	move.b d1,($ff1574).l
	move.w dat_20cb18(pc,d1.w),d0
	jmp (loc_202466).l
dat_20cb0c:
	dc.b $0b,$00,$13,$00,$18,$00,$1c,$00
	dc.b $21,$00,$ff,$ff
dat_20cb18:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
	dc.b $00,$0d,$00,$0e
dat_20cb24:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07,$00,$08

sub_20cb30:
	lea (dat_20cb52).l,a1
	add.w d0,d0
	move.w dat_20cb52(pc,d0.w),d4
	lea dat_20cb52(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cb52:
	.incbin 52050, 74
	jsr (sub_20e9f6).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ccbe
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbbc(pc,d0.w),d0
	jmp dat_20cbbc(pc,d0.w)
dat_20cbbc:
	.incbin 52156, 258
loc_20ccbe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cccc(pc,d0.w),d0
	jmp dat_20cccc(pc,d0.w)
dat_20cccc:
	.incbin 52428, 1394
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d262(pc,d0.w),d0
	jsr dat_20d262(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20d25c
	jsr (sub_20385a).l
loc_20d25c:
	jmp (loc_2075c8).l
dat_20d262:
	.incbin 53858, 1920
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9f0(pc,d0.w),d0
	jmp dat_20d9f0(pc,d0.w)
dat_20d9f0:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e0ee,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e0ae).l,a2
loc_20da3e:
	jsr (sub_207592).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e0ee,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20da90
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20da90:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20da3e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dab8
	bge.s loc_20daae
	neg.w d0
loc_20daae:
	add.w d0,$a(a0)
	jmp (sub_20385a).l
loc_20dab8:
	addq.b #$4,$24(a0)
	jmp (sub_20385a).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dadc
	bge.s loc_20dad2
	neg.w d0
loc_20dad2:
	add.w d0,$8(a0)
	jmp (sub_20385a).l
loc_20dadc:
	addq.b #$4,$24(a0)
	jmp (sub_20385a).l
	tst.b $1e(a0)
	beq.s loc_20daf6
	subq.b #$1,$1e(a0)
	jmp (sub_20385a).l
loc_20daf6:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20db10
	bge.s loc_20db06
	neg.w d0
loc_20db06:
	add.w d0,$a(a0)
	jmp (sub_20385a).l
loc_20db10:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202434).l
	tst.b $1e(a0)
	beq.s loc_20db32
	subq.b #$1,$1e(a0)
	jmp (sub_20385a).l
loc_20db32:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20db4c
	bge.s loc_20db42
	neg.w d0
loc_20db42:
	add.w d0,$8(a0)
	jmp (sub_20385a).l
loc_20db4c:
	jmp (sub_203906).l
	tst.l ($f680).w
	bne.s loc_20db66
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203906).l
loc_20db66:
	rts
	.incbin 56168, 1350
dat_20e0ae:
	.incbin 57518, 340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e226(pc,d0.w),d0
	jsr dat_20e226(pc,d0.w)
	jsr (sub_20385a).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20e224
	jmp (loc_2075c8).l
loc_20e224:
	rts
dat_20e226:
	.incbin 57894, 1928

sub_20e9ae:
	tst.b ($ff156a).l
	beq.s loc_20e9f4
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e9c6
	tst.b $28(a0)
	beq.s loc_20e9f4
loc_20e9c6:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203906).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e9f2
	move.w #$9e,d0
	jsr (sub_20226a).l
loc_20e9f2:
	addq.l #$4,a7
loc_20e9f4:
	rts

sub_20e9f6:
	tst.b $28(a0)
	bmi.s loc_20ea26
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ea16
	tst.b ($ff156d).l
	bne.s loc_20ea26
	addq.l #$4,a7
	jmp (loc_2075c8).l
loc_20ea16:
	tst.b ($ff156a).l
	bne.s loc_20ea26
	addq.l #$4,a7
	jmp (sub_203906).l
loc_20ea26:
	rts
	.incbin 59944, 1360

sub_20ef78:
	jmp (loc_2062e8).l
dat_20ef7e:
	.incbin 61310, 16
dat_20ef8e:
	.incbin 61326, 3120
	jmp (loc_20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 54800
dat_21d400:
	.incbin 119808, 256
dat_21d500:
	.incbin 120064, 4096
dat_21e500:
	.incbin 124160, 4996
dat_21f884:
	.incbin 129156, 1916
dat_220000:
	.incbin 131072, 72476
dat_231b1c:
	.incbin 203548, 18362
dat_2362d6:
	.incbin 221910, 384
dat_236456:
	.incbin 222294, 1598
dat_236a94:
	.incbin 223892, 26544
dat_23d244:
	.incbin 250436, 768
dat_23d544:
	.incbin 251204, 10940
