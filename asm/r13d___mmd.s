; R13D__.MMD
; disassembled from the disc; code only, data comes from data/R13D__.MMD at build time
	.file "R13D__.MMD", 262144

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
	lea (dat_235dda).l,a2
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
	lea (dat_235eda).l,a2
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
	lea (dat_235dda).l,a2
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
	lea (dat_235eda).l,a2
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
	lea (dat_235dda).l,a2
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
	lea (dat_236eda).l,a2
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
	lea (dat_235dda).l,a2
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
	lea (dat_236eda).l,a2
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
	bsr.w sub_20717a
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
	lea (dat_20eae2).l,a2
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
	bsr.w sub_202974
	bset.b #$2,($f754).w
	bsr.w sub_20336e
	bsr.w sub_203284
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
	jsr (sub_20eadc).l
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
	jsr (sub_205a2e).l
	bsr.w sub_20717a
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
	jsr (sub_207190).l
	jsr (sub_203774).l
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
	bsr.w sub_202974
loc_201900:
	jsr (sub_20391e).l
	tst.w ($ff190e).l
	bne.s loc_201912
	bsr.w sub_200184
loc_201912:
	jsr (sub_20abec).l
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
	jmp (sub_205a2e).l
dat_201a98:
	.incbin 6808, 38

sub_201abe:
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
	jmp (sub_205a2e).l
loc_201b4c:
	tst.b ($ff151f).l
	bne.s loc_201b42
	tst.b ($ff1520).l
	bne.s loc_201b42
	move.w #$90,d0
	jmp (sub_205a2e).l
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
	jmp (sub_205a2e).l
loc_201b88:
	tst.b ($ff151f).l
	bne.s loc_201b7e
	tst.b ($ff1520).l
	bne.s loc_201b7e
	move.w #$91,d0
	jmp (sub_205a2e).l
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
	bsr.w sub_205950
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
	jsr (sub_20eadc).l
	jsr (sub_20221e).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e7c
	bsr.w sub_202512
	jmp (loc_2091ce).l
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
	bsr.w sub_202e7c
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
	bsr.w sub_205950
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
	lea (dat_20eaf2).l,a1
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
	movem.l a1-a2,-(a7)
	lea (dat_20eaf2).l,a1
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
	lea (dat_20eaf2).l,a1
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
	dc.b $00,$04,$00,$00,$0d,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202870:
	.incbin 10352, 32
loc_202890:
	tst.b ($ff1522).l
	beq.s loc_2028b0
	jsr (sub_2065ba).l
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
	dc.b $00,$40,$02,$a2
dat_20292c:
	dc.b $91,$7f,$1e,$1e

sub_202930:
	swap d0
	asr.l #$4,d0
	move.l d0,d2
	add.l d2,d2
	add.l d2,d0
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

sub_202974:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202980
	rts
loc_202980:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202af2
	bsr.w sub_202b92
	bsr.w sub_203408
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d4,d4
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202e1c
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202de8
	lea ($a810).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	move.l d5,d3
	add.l d5,d5
	add.l d3,d5
	bsr.w sub_202ce4
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
loc_202a3e:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202aac).l,a3
	move.b $0(a3,d6.w),d5
loc_202a54:
	move.w d1,(a1)+
	dbf d5,loc_202a54
	dbf d6,loc_202a3e
	move.w #$7,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202a68:
	move.w d0,(a1)+
	dbf d1,loc_202a68
	move.w #$1,d1
	move.w ($f708).w,d0
	neg.w d0
loc_202a78:
	move.w d0,(a1)+
	dbf d1,loc_202a78
	move.w #$5,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202a88:
	move.w d0,(a1)+
	dbf d1,loc_202a88
	lea ($cc00).w,a1
	lea ($a810).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202ab0
dat_202aac:
	dc.b $00,$04,$03,$03
loc_202ab0:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202abe(pc,d2.w)
loc_202abc:
	move.w (a2)+,d0
loc_202abe:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202abc
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
	dbf d1,loc_202abc
	rts

sub_202af2:
	move.w ($f700).w,d4
	bsr.s sub_202b26
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b24
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b1e
	bset.b #$2,($f754).w
	rts
loc_202b1e:
	bset.b #$3,($f754).w
loc_202b24:
	rts

sub_202b26:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b38
	bcs.s loc_202b68
	bra.s loc_202b3e
loc_202b38:
	clr.w ($f73a).w
	rts
loc_202b3e:
	cmpi.w #$10,d0
	blt.s loc_202b48
	move.w #$10,d0
loc_202b48:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b56
	move.w ($f72a).w,d0
loc_202b56:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b68:
	cmpi.w #$fff0,d0
	bge.s loc_202b72
	move.w #$fff0,d0
loc_202b72:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b56
	move.w ($f728).w,d0
	bra.s loc_202b56
	.incbin 11138, 16

sub_202b92:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202ba6
	subq.w #$5,d0
loc_202ba6:
	btst.b #$1,$22(a6)
	beq.s loc_202bc6
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c12
	subi.w #$40,d0
	bcc.s loc_202c12
	tst.b ($f75c).w
	bne.s loc_202c24
	bra.s loc_202bd2
loc_202bc6:
	sub.w ($f73e).w,d0
	bne.s loc_202bd8
	tst.b ($f75c).w
	bne.s loc_202c24
loc_202bd2:
	clr.w ($f73c).w
	rts
loc_202bd8:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c00
	move.w $14(a6),d1
	bpl.s loc_202be8
	neg.w d1
loc_202be8:
	cmpi.w #$800,d1
	bcc.s loc_202c12
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c72
	cmpi.w #$fffa,d0
	blt.s loc_202c3c
	bra.s loc_202c2a
loc_202c00:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c72
	cmpi.w #$fffe,d0
	blt.s loc_202c3c
	bra.s loc_202c2a
loc_202c12:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c72
	cmpi.w #$fff0,d0
	blt.s loc_202c3c
	bra.s loc_202c2a
loc_202c24:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c2a:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c7c
	bra.w loc_202c48
loc_202c3c:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c48:
	cmp.w ($f72c).w,d1
	bgt.s loc_202ca0
	cmpi.w #$ff00,d1
	bgt.s loc_202c6c
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202ca0
loc_202c6c:
	move.w ($f72c).w,d1
	bra.s loc_202ca0
loc_202c72:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c7c:
	cmp.w ($f72e).w,d1
	blt.s loc_202ca0
	subi.w #$800,d1
	bcs.s loc_202c9c
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202ca0
loc_202c9c:
	move.w ($f72e).w,d1
loc_202ca0:
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
	bne.s loc_202ce2
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cdc
	bset.b #$0,($f754).w
	rts
loc_202cdc:
	bset.b #$1,($f754).w
loc_202ce2:
	rts

sub_202ce4:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d18
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d12
	bset.b #$2,($f756).w
	bra.s loc_202d18
loc_202d12:
	bset.b #$3,($f756).w
loc_202d18:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d4c
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d46
	bset.b #$0,($f756).w
	rts
loc_202d46:
	bset.b #$1,($f756).w
loc_202d4c:
	rts
	.incbin 11598, 114
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202de6
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202de0
	bset.b d6,($f756).w
	bra.s loc_202de6
loc_202de0:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202de6:
	rts

sub_202de8:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e1a
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e14
	bset.b d6,($f758).w
	bra.s loc_202e1a
loc_202e14:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e1a:
	rts

sub_202e1c:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e4e
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e48
	bset.b d6,($f75a).w
	bra.s loc_202e4e
loc_202e48:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e4e:
	rts
	.incbin 11856, 44

sub_202e7c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f3a
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20301e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203020
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f38
	bclr.b #$0,(a2)
	beq.s loc_202eee
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203022
loc_202eee:
	bclr.b #$1,(a2)
	beq.s loc_202f08
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203022
loc_202f08:
	bclr.b #$2,(a2)
	beq.s loc_202f1e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203078
loc_202f1e:
	bclr.b #$3,(a2)
	beq.s loc_202f38
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20324c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203078
loc_202f38:
	rts

sub_202f3a:
	lea (dat_203304).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f56
	bclr.b #$1,(a2)
	beq.s loc_202fa0
	move.w #$e0,d4
loc_202f56:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fd0(pc,d0.w),a3
	beq.s loc_202f88
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20324c
	movem.l (a7)+,d4-d5
	bsr.w sub_203022
	movea.l (a7)+,a0
	bra.s loc_202fa0
loc_202f88:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20324e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20304e
	movea.l (a7)+,a0
loc_202fa0:
	tst.b (a2)
	bne.s loc_202fa6
	rts
loc_202fa6:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fba
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fba:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fe0
dat_202fd0:
	.incbin 12240, 16
loc_202fe0:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fe8:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_203012
	add.w d0,d0
	movea.l dat_202fd0(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203124
	movem.l (a7)+,d4-d5
	bsr.w sub_20324c
	bsr.w sub_2030a6
	movem.l (a7)+,d4-d5/a0
loc_203012:
	addi.w #$10,d4
	dbf d6,loc_202fe8
	clr.b (a2)
	rts

sub_20301e:
	rts

sub_203020:
	rts

sub_203022:
	moveq #$15,d6

sub_203024:
	move.l #$800000,d7
	move.l d0,d1
loc_20302c:
	movem.l d4-d5,-(a7)
	bsr.w sub_203124
	move.l d1,d0
	bsr.w sub_2030a6
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20302c
	rts

sub_20304e:
	move.l #$800000,d7
	move.l d0,d1
loc_203056:
	movem.l d4-d5,-(a7)
	bsr.w sub_203126
	move.l d1,d0
	bsr.w sub_2030a6
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203056
	rts

sub_203078:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203082:
	movem.l d4-d5,-(a7)
	bsr.w sub_203124
	move.l d1,d0
	bsr.w sub_2030a6
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203082
	rts

sub_2030a6:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030e2
	btst.b #$3,(a0)
	bne.s loc_2030c2
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030c2:
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
loc_2030e2:
	btst.b #$3,(a0)
	bne.s loc_203104
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
loc_203104:
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

sub_203124:
	add.w (a3),d5

sub_203126:
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
	beq.s loc_203174
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
loc_203174:
	rts
	.incbin 12662, 214

sub_20324c:
	add.w (a3),d5

sub_20324e:
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
	.incbin 12904, 28

sub_203284:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032ae
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032d6

sub_2032ae:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032b2:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20324c
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203024
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032b2
	rts
loc_2032d6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032da:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203304).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203336
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032da
	rts
dat_203304:
	.incbin 13060, 34
dat_203326:
	.incbin 13094, 16

sub_203336:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203326(pc,d0.w),a3
	beq.s loc_203358
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20324c
	movem.l (a7)+,d4-d5
	bsr.w sub_203022
	bra.s loc_20336c
loc_203358:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20324e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20304e
loc_20336c:
	rts

sub_20336e:
	moveq #$0,d0
	lea (dat_20eae2).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202306
	movea.l (a2)+,a0
	bsr.w sub_2033ba
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004ec
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2033b8
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033b8
	bsr.w sub_202434
loc_2033b8:
	rts

sub_2033ba:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033c4:
	move.l d0,(a3)+
	dbf d1,loc_2033c4
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033da
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033da:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2381fa).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033f4:
	move.w d1,d0
	movea.l a3,a0
loc_2033f8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033f8
	lea $80(a3),a3
	dbf d2,loc_2033f4
	rts

sub_203408:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203482(pc,d0.w),d0
	jsr dat_203482(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20342e
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20342e:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20345c
	bcc.s loc_20345e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203452
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203452:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20345c:
	rts
loc_20345e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203476
	btst.b #$1,($d022).w
	beq.s loc_203476
	add.w d1,d1
	add.w d1,d1
loc_203476:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203482:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2034a2(pc,d0.w),d0
	jmp dat_2034a2(pc,d0.w)
dat_2034a2:
	.incbin 13474, 110
	tst.b ($f7a7).w
	bne.s loc_203528
	move.w #$310,($f726).w
	move.w #$d70,d0
	move.w #$310,d1
	bsr.w sub_20372e
loc_203528:
	rts
	.incbin 13610, 56
	btst.b #$4,($f7a7).w
	bne.s loc_203572
	move.w #$710,($f726).w
	rts
loc_203572:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_20372e
	bne.w loc_2035be
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_2035a2
	cmpi.w #$498,$c(a1)
	ble.s loc_20359c
	move.w #$5d0,d0
	bra.s loc_2035a6
loc_20359c:
	move.w #$3d0,d0
	bra.s loc_2035a6
loc_2035a2:
	move.w #$1d0,d0
loc_2035a6:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_2035b4
	neg.w d0
loc_2035b4:
	cmpi.w #$2,d0
	bgt.s loc_2035be
	move.w d1,($f72e).w
loc_2035be:
	rts
	.incbin 13760, 74
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20361c(pc,d0.w),d0
	jmp dat_20361c(pc,d0.w)
dat_20361c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 13866, 260

sub_20372e:
	cmp.w ($d008).w,d0
	ble.s loc_203738
	moveq #$0,d0
	rts
loc_203738:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203744
	neg.w d1
loc_203744:
	cmpi.w #$4,d1
	bge.s loc_203750
	move.w ($f726).w,($f72e).w
loc_203750:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203770
	cmp.w ($f72a).w,d0
	ble.s loc_203768
	move.w ($f72a).w,d0
loc_203768:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203770:
	moveq #$1,d0
	rts

sub_203774:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20377c:
	move.b (a0),d0
	beq.s loc_203792
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b96).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203792:
	lea $40(a0),a0
	dbf d7,loc_20377c
	rts

sub_20379c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037da
	bpl.s loc_2037cc
	btst.b #$1,$2c(a0)
	beq.s loc_2037cc
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037da
loc_2037cc:
	btst.b #$2,$2c(a0)
	bne.s loc_2037da
	addi.w #$38,$12(a0)
loc_2037da:
	tst.w $12(a0)
	bmi.s loc_2037ee
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037ee
	move.w #$1000,$12(a0)
loc_2037ee:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037fe:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20383a
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20383a
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203838
	neg.w d1
loc_203838:
	add.w d1,d0
loc_20383a:
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

sub_203854:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038c4
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038e0
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20389e
	cmpi.w #$800,d3
	bcs.s loc_2038b0
	subi.w #$800,d3
	bra.s loc_2038b0
loc_20389e:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038b0
	cmpi.w #$100,d3
	bcc.s loc_2038b0
	addi.w #$800,d3
loc_2038b0:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038e0
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038e0
loc_2038c4:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038e0
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038e0:
	rts
	.incbin 14562, 30

sub_203900:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203906:
	move.l d1,(a1)+
	dbf d0,loc_203906
	rts
dat_20390e:
	.incbin 14606, 16

sub_20391e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_20392a:
	tst.w (a4)
	beq.w loc_2039ea
	moveq #$2,d6
loc_203932:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039e2
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203998
	movea.l dat_20390e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_20397c
	cmpi.w #$800,d2
	bcs.s loc_20398e
	subi.w #$800,d2
	bra.s loc_20398e
loc_20397c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_20398e
	cmpi.w #$100,d2
	bcc.s loc_20398e
	addi.w #$800,d2
loc_20398e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039ba
loc_203998:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039ba
	.incbin 14754, 24
loc_2039ba:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039d8
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039dc
loc_2039d8:
	bsr.w sub_203a0c
loc_2039dc:
	bset.b #$7,$1(a0)
loc_2039e2:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203932
loc_2039ea:
	lea $80(a4),a4
	dbf d7,loc_20392a
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a04
	move.l #$0,(a2)
	rts
loc_203a04:
	move.b #$0,-$5(a2)
	rts

sub_203a0c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a52
	btst.l #$1,d4
	bne.w loc_203aa0
loc_203a1e:
	cmpi.b #$50,d5
	beq.s loc_203a50
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
	bne.s loc_203a4a
	addq.w #$1,d0
loc_203a4a:
	move.w d0,(a2)+
	dbf d1,loc_203a1e
loc_203a50:
	rts
loc_203a52:
	btst.l #$1,d4
	bne.w loc_203ae6
loc_203a5a:
	cmpi.b #$50,d5
	beq.s loc_203a9e
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
	bne.s loc_203a98
	addq.w #$1,d0
loc_203a98:
	move.w d0,(a2)+
	dbf d1,loc_203a5a
loc_203a9e:
	rts
loc_203aa0:
	cmpi.b #$50,d5
	beq.s loc_203ae4
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
	bne.s loc_203ade
	addq.w #$1,d0
loc_203ade:
	move.w d0,(a2)+
	dbf d1,loc_203aa0
loc_203ae4:
	rts
loc_203ae6:
	cmpi.b #$50,d5
	beq.s loc_203b38
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
	bne.s loc_203b32
	addq.w #$1,d0
loc_203b32:
	move.w d0,(a2)+
	dbf d1,loc_203ae6
loc_203b38:
	rts
	.incbin 15162, 92
dat_203b96:
	.incbin 15254, 262

sub_203c9c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cae
	move.w #$0,(a1)
	rts
loc_203cae:
	tst.w (a1)
	bne.s loc_203cb8
	move.b #$1,$1(a1)
loc_203cb8:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d02
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203cf4
	neg.w $10(a0)
loc_203cf4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a2e
loc_203d02:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d20
	cmpa.w #$d040,a0
	beq.s loc_203d20
	tst.b ($ff1906).l
	beq.s loc_203d20
	jmp (loc_206eb8).l
loc_203d20:
	move.b $2a(a0),d0
	beq.s loc_203d4a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d3c
	cmpi.b #$2d,d0
	bcs.s loc_203d46
	move.b #$2d,d0
	bra.s loc_203d46
loc_203d3c:
	cmpi.b #$1e,d0
	bcs.s loc_203d46
	move.b #$1e,d0
loc_203d46:
	move.b d0,$2a(a0)
loc_203d4a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d58(pc,d0.w),d1
	jmp dat_203d58(pc,d1.w)
dat_203d58:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d62:
	tst.b ($d300).w
	bne.s loc_203da0
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203da0:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dc8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dc8:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203dfc:
	tst.b ($ff1506).l
	bne.s loc_203e62
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e62
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e66
	cmpi.b #$2f,d1
	bne.s loc_203e64
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e62
	tst.b $2c(a0)
	beq.s loc_203e62
	jsr (sub_20738c).l
	bne.s loc_203e62
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e5a
	moveq #$0,d0
loc_203e5a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e62:
	rts
loc_203e64:
	rts

sub_203e66:
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

sub_203e8c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e98
	neg.w d0
loc_203e98:
	btst.b #$1,$2c(a0)
	beq.s loc_203ea8
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ed0
loc_203ea8:
	cmpi.w #$600,d0
	bcs.s loc_203ed0
	tst.w $14(a0)
	bpl.s loc_203ec2
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ede
	move.w #$e0,d1
	bra.s loc_203ede
loc_203ec2:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ede
	move.w #$60,d1
	bra.s loc_203ede
loc_203ed0:
	cmpi.w #$a0,d1
	beq.s loc_203ede
	bcc.s loc_203edc
	addq.w #$2,d1
	bra.s loc_203ede
loc_203edc:
	subq.w #$2,d1
loc_203ede:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e8c
	bsr.w sub_203dfc
	tst.w ($ff1588).l
	beq.s loc_203f04
	btst.b #$4,($f605).w
	beq.s loc_203f04
	move.b #$1,($ff1906).l
	rts
loc_203f04:
	tst.b ($f7cc).w
	bne.s loc_203f10
	move.w ($f604).w,($f602).w
loc_203f10:
	btst.b #$0,$2c(a0)
	beq.s loc_203f34
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f2e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f4c
loc_203f2e:
	bsr.w sub_204216
	bra.s loc_203f4c
loc_203f34:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f92(pc,d0.w),d1
	jsr dat_203f92(pc,d1.w)
	jsr (sub_2064e6).l
loc_203f4c:
	bsr.s sub_203fa0
	bsr.w sub_204060
	bsr.w sub_20407a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f74
	tst.b $1c(a0)
	bne.s loc_203f74
	move.b $1d(a0),$1c(a0)
loc_203f74:
	bsr.w sub_20541e
	tst.b $2c(a0)
	bmi.s loc_203f8c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f8c
	jsr (sub_206a8a).l
loc_203f8c:
	bsr.w sub_2052d4
	rts
dat_203f92:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203fa0:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fc4
	move.w $30(a0),d0
	beq.s loc_203fb6
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fc4
loc_203fb6:
	btst.b #$6,$2c(a0)
	bne.s loc_203fc4
	jsr (sub_203854).l
loc_203fc4:
	tst.b ($ff151f).l
	beq.s loc_204008
	tst.w $32(a0)
	beq.s loc_204008
	subq.w #$1,$32(a0)
	bne.s loc_204008
	tst.b ($ff1520).l
	bne.s loc_204000
	tst.b ($ff1958).l
	bne.s loc_204000
	tst.b ($ff152e).l
	bne.s loc_203ffa
	move.w #$e,d0
	jsr (sub_205a2e).l
loc_203ffa:
	jsr (sub_201a5e).l
loc_204000:
	move.b #$0,($ff151f).l
loc_204008:
	tst.b ($ff1520).l
	beq.s loc_20405e
	tst.w $34(a0)
	beq.s loc_20405e
	subq.w #$1,$34(a0)
	bne.s loc_20405e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204056
	tst.b ($ff1958).l
	bne.s loc_204056
	tst.b ($ff152e).l
	bne.s loc_204050
	move.w #$e,d0
	jsr (sub_205a2e).l
loc_204050:
	jsr (sub_201a5e).l
loc_204056:
	move.b #$0,($ff1520).l
loc_20405e:
	rts

sub_204060:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20407a:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204086
loc_204084:
	rts
loc_204086:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204098
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204084
loc_204098:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040dc
	bset.b #$6,$22(a0)
	bne.s loc_204084
	bsr.w sub_205d32
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204084
	bra.s loc_204114
loc_2040dc:
	tst.w $12(a0)
	beq.s loc_2040e4
	bpl.s loc_204084
loc_2040e4:
	bclr.b #$6,$22(a0)
	beq.s loc_204084
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204084
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204114
	move.w #$f000,$12(a0)
loc_204114:
	jsr (sub_20738c).l
	bne.s loc_204128
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204128:
	rts

sub_20412a:
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
	bcs.s loc_204204
	move.l #$50000,d0
loc_204204:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204216:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20423c
	tst.b ($ff152e).l
	beq.s loc_204232
	cmpi.b #$2,($ff152e).l
	bne.s loc_20423c
loc_204232:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042ec
loc_20423c:
	tst.b $2a(a0)
	bne.w loc_2042fa
	tst.b ($f784).w
	beq.w loc_2042fa
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20425a
	neg.w d0
loc_20425a:
	tst.w ($f786).w
	bne.s loc_204266
	move.w #$1,($f786).w
loc_204266:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20427c
	move.b #$1,($ff1502).l
	bra.w loc_205a2a
loc_20427c:
	cmpi.w #$d2,d1
	bcs.s loc_2042d0
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042ce
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2042a6
	move.w #$82,d0
	jsr (sub_205a2e).l
	moveq #$0,d0
loc_2042a6:
	add.b ($f784).w,d0
	bpl.s loc_2042b0
	moveq #$0,d0
	bra.s loc_2042b8
loc_2042b0:
	cmpi.b #$3,d0
	bcs.s loc_2042b8
	moveq #$2,d0
loc_2042b8:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20412a
	move.b #$2,($ff1522).l
loc_2042ce:
	rts
loc_2042d0:
	cmpi.w #$5a,d1
	bcc.s loc_2042e8
	cmp.w d2,d0
	bcc.w loc_203d62
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042e8:
	cmp.w d2,d0
	bcc.s loc_2042fa
loc_2042ec:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042fa:
	rts
	bsr.w sub_203c9c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20432c
	tst.b ($ff195b).l
	beq.s loc_20431a
	cmpi.b #$79,$1a(a0)
	bne.s loc_204356
	bra.s loc_204322
loc_20431a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204356
loc_204322:
	bsr.w sub_204bbe
	jmp (sub_20379c).l
loc_20432c:
	bsr.w sub_204404
	bsr.w sub_204216
	bsr.w sub_204ca8
	bsr.w sub_204dd4
	bsr.w sub_204478
	bsr.w sub_204c2a
	bsr.w sub_204bbe
	jsr (sub_2037fe).l
	bsr.w sub_200b6e
	bsr.w sub_204e52
loc_204356:
	rts
	tst.b ($f7c7).w
	bne.s loc_204372
	cmpi.b #$15,$1c(a0)
	beq.s loc_204372
	tst.w $12(a0)
	bmi.s loc_204372
	move.b #$0,$1c(a0)
loc_204372:
	bsr.w sub_204404
	bsr.w sub_204216
	bsr.w sub_204d92
	bsr.w sub_204ade
	bsr.w sub_204bbe
	jsr (sub_20379c).l
	btst.b #$6,$22(a0)
	beq.s loc_20439a
	subi.w #$28,$12(a0)
loc_20439a:
	bsr.w sub_204e9c
	bsr.w sub_204ec0
	rts
	bsr.w sub_204404
	bsr.w sub_204216
	bsr.w sub_204ca8
	bsr.w sub_204e10
	bsr.w sub_204918
	bsr.w sub_204bbe
	tst.b $2a(a0)
	bne.s loc_2043c8
	jsr (sub_2037fe).l
loc_2043c8:
	bsr.w sub_200b6e
	bsr.w sub_204e52
	rts
	bsr.w sub_204404
	bsr.w sub_204216
	bsr.w sub_204d92
	bsr.w sub_204ade
	bsr.w sub_204bbe
	jsr (sub_20379c).l
	btst.b #$6,$22(a0)
	beq.s loc_2043fa
	subi.w #$28,$12(a0)
loc_2043fa:
	bsr.w sub_204e9c
	bsr.w sub_204ec0
	rts

sub_204404:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204470
	tst.w ($ff1506).l
	bne.s loc_204470
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204472).l,a2
loc_204438:
	move.b (a2)+,d0
	bmi.s loc_204448
	cmp.b d0,d1
	bne.s loc_204438
	bset.b #$1,$2c(a0)
	rts
loc_204448:
	bclr.b #$1,$2c(a0)
	beq.s loc_204470
	tst.w $12(a0)
	bpl.s loc_204470
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204470
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204470
	neg.w $10(a0)
loc_204470:
	rts
dat_204472:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204478:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2047a2
	tst.w $3e(a0)
	bne.w loc_204752
	btst.b #$2,($f602).w
	beq.s loc_2044a0
	bsr.w sub_204832
loc_2044a0:
	btst.b #$3,($f602).w
	beq.s loc_2044ac
	bsr.w sub_2048a8
loc_2044ac:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204752
	tst.w $14(a0)
	beq.s loc_2044cc
	tst.b $2a(a0)
	beq.w loc_204752
	bra.s loc_2044d8
loc_2044cc:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044d8:
	btst.b #$3,$22(a0)
	beq.s loc_20452a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204582
	cmpi.b #$1e,$0(a1)
	bne.s loc_20450a
	move.b #$0,$1c(a0)
	bra.w loc_204752
loc_20450a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204566
	cmp.w d2,d1
	bge.s loc_204554
	bra.s loc_204582
loc_20452a:
	jsr (sub_2067ee).l
	cmpi.w #$c,d1
	blt.s loc_204582
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20455e
loc_204554:
	btst.b #$0,$22(a0)
	bne.s loc_20456e
	bra.s loc_204578
loc_20455e:
	cmpi.b #$3,$37(a0)
	bne.s loc_204582
loc_204566:
	btst.b #$0,$22(a0)
	bne.s loc_204578
loc_20456e:
	move.b #$32,$1c(a0)
	bra.w loc_204752
loc_204578:
	move.b #$6,$1c(a0)
	bra.w loc_204752
loc_204582:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204596
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204596:
	btst.b #$7,($f788).w
	bne.w loc_20469a
	btst.b #$6,($f788).w
	bne.w loc_2046ba
	btst.b #$1,($f602).w
	bne.w loc_2046ba
	andi.b #$f,($f788).w
	beq.s loc_2045ce
	btst.b #$0,($f603).w
	beq.s loc_2045e2
	bset.b #$7,($f788).w
	bra.w loc_204776
loc_2045ce:
	btst.b #$0,($f603).w
	beq.w loc_2045e2
	move.b #$1,($f788).w
	bra.w loc_204776
loc_2045e2:
	btst.b #$0,($f602).w
	beq.s loc_20465e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204640
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204612
	asr.w #$1,d2
	sub.w d2,d1
loc_204612:
	btst.b #$0,$22(a0)
	beq.s loc_20461e
	neg.w d0
	neg.w d1
loc_20461e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204634
	cmp.w d0,d1
	ble.s loc_20463a
	bra.s loc_204638
loc_204634:
	cmp.w d1,d0
	ble.s loc_20463a
loc_204638:
	move.w d1,d0
loc_20463a:
	move.w d0,$14(a0)
	rts
loc_204640:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20465a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20226a).l
loc_20465a:
	bra.w loc_204776
loc_20465e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20467e
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046ba
loc_20467e:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	bra.w loc_204752
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20469a:
	btst.b #$0,($f602).w
	beq.s loc_2046ba
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204776
	addq.w #$2,($f73e).w
	bra.w loc_204776
loc_2046ba:
	btst.b #$6,($f788).w
	bne.w loc_204736
	andi.b #$f,($f788).w
	beq.s loc_2046de
	btst.b #$1,($f603).w
	beq.s loc_2046f0
	bset.b #$6,($f788).w
	bra.w loc_204776
loc_2046de:
	btst.b #$1,($f603).w
	beq.s loc_2046f0
	move.b #$1,($f788).w
	bra.w loc_204776
loc_2046f0:
	btst.b #$1,($f602).w
	beq.s loc_204752
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204734
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204734
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204726
	neg.w $14(a0)
loc_204726:
	move.w #$9c,d0
	jsr (sub_20226a).l
	bsr.w sub_204c52
loc_204734:
	bra.s loc_204776
loc_204736:
	btst.b #$1,($f602).w
	beq.s loc_204752
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204776
	subq.w #$2,($f73e).w
	bra.s loc_204776
loc_204752:
	cmpi.w #$60,($f73e).w
	bne.s loc_20476c
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204776
	move.b #$0,($f788).w
	bra.s loc_204776
loc_20476c:
	bcc.s loc_204772
	addq.w #$4,($f73e).w
loc_204772:
	subq.w #$2,($f73e).w
loc_204776:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2047a2
	move.w $14(a0),d0
	beq.s loc_2047a2
	bmi.s loc_204796
	sub.w d5,d0
	bcc.s loc_204790
	move.w #$0,d0
loc_204790:
	move.w d0,$14(a0)
	bra.s loc_2047a2
loc_204796:
	add.w d5,d0
	bcc.s loc_20479e
	move.w #$0,d0
loc_20479e:
	move.w d0,$14(a0)
loc_2047a2:
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047c0:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204830
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204830
	bmi.s loc_2047d8
	neg.w d1
loc_2047d8:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066ae
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204830
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20482c
	cmpi.b #$40,d0
	beq.s loc_20481a
	cmpi.b #$80,d0
	beq.s loc_204814
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204814:
	sub.w d1,$12(a0)
	rts
loc_20481a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20482c:
	add.w d1,$12(a0)
loc_204830:
	rts

sub_204832:
	tst.b $2a(a0)
	bne.s loc_2048a6
	move.w $14(a0),d0
	beq.s loc_204840
	bpl.s loc_204870
loc_204840:
	bset.b #$0,$22(a0)
	bne.s loc_204854
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204854:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204864
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204864
	move.w d1,d0
loc_204864:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204870:
	sub.w d4,d0
	bcc.s loc_204878
	move.w #$ff80,d0
loc_204878:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048a6
	cmpi.w #$400,d0
	blt.s loc_2048a6
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226a).l
loc_2048a6:
	rts

sub_2048a8:
	tst.b $2a(a0)
	bne.s loc_204916
	move.w $14(a0),d0
	bmi.s loc_2048e0
	bclr.b #$0,$22(a0)
	beq.s loc_2048c8
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048c8:
	cmp.w d6,d0
	bge.s loc_2048d4
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048d4
	move.w d6,d0
loc_2048d4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048e0:
	add.w d4,d0
	bcc.s loc_2048e8
	move.w #$80,d0
loc_2048e8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204916
	cmpi.w #$fc00,d0
	bgt.s loc_204916
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226a).l
loc_204916:
	rts

sub_204918:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a62
	tst.w $3e(a0)
	bne.s loc_204950
	btst.b #$2,($f602).w
	beq.s loc_204944
	bsr.w sub_204a98
loc_204944:
	btst.b #$3,($f602).w
	beq.s loc_204950
	bsr.w sub_204abc
loc_204950:
	tst.b $2a(a0)
	beq.w loc_2049fa
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204970
	asr.w #$1,d2
	sub.w d2,d1
loc_204970:
	btst.b #$0,$22(a0)
	beq.s loc_20497c
	neg.w d0
	neg.w d1
loc_20497c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204992
	cmp.w d0,d1
	ble.s loc_204998
	bra.s loc_204996
loc_204992:
	cmp.w d1,d0
	ble.s loc_204998
loc_204996:
	move.w d1,d0
loc_204998:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049cc
	rts
loc_2049a6:
	move.w #$ab,d0
	jsr (sub_20226a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a2c
loc_2049cc:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_2049a6
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226a).l
	btst.b #$0,$22(a0)
	bne.s loc_2049f2
	bsr.w sub_204abc
	bra.s loc_2049fa
loc_2049f2:
	bsr.w sub_204a98
	bra.s loc_2049fa
	dc.b $4e,$75
loc_2049fa:
	move.w $14(a0),d0
	beq.s loc_204a1c
	bmi.s loc_204a10
	sub.w d5,d0
	bcc.s loc_204a0a
	move.w #$0,d0
loc_204a0a:
	move.w d0,$14(a0)
	bra.s loc_204a1c
loc_204a10:
	add.w d5,d0
	bcc.s loc_204a18
	move.w #$0,d0
loc_204a18:
	move.w d0,$14(a0)
loc_204a1c:
	tst.w $14(a0)
	bne.s loc_204a62
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_204a2c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a4c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a5c
loc_204a4c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a5c:
	move.b #$5,$1c(a0)
loc_204a62:
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a86
	move.w #$1000,d1
loc_204a86:
	cmpi.w #$f000,d1
	bge.s loc_204a90
	move.w #$f000,d1
loc_204a90:
	move.w d1,$10(a0)
	bra.w loc_2047c0

sub_204a98:
	move.w $14(a0),d0
	beq.s loc_204aa0
	bpl.s loc_204aae
loc_204aa0:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204aae:
	sub.w d4,d0
	bcc.s loc_204ab6
	move.w #$ff80,d0
loc_204ab6:
	move.w d0,$14(a0)
	rts

sub_204abc:
	move.w $14(a0),d0
	bmi.s loc_204ad0
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ad0:
	add.w d4,d0
	bcc.s loc_204ad8
	move.w #$80,d0
loc_204ad8:
	move.w d0,$14(a0)
	rts

sub_204ade:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b18
	tst.w ($ff1506).l
	bne.s loc_204b18
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b10
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b10
	rts
loc_204b10:
	btst.b #$1,$2c(a0)
	bne.s loc_204b48
loc_204b18:
	btst.b #$2,($f602).w
	beq.s loc_204b32
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b32
	move.w d1,d0
loc_204b32:
	btst.b #$3,($f602).w
	beq.s loc_204b48
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b48
	move.w d6,d0
loc_204b48:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b5e
	bcc.s loc_204b5a
	addq.w #$4,($f73e).w
loc_204b5a:
	subq.w #$2,($f73e).w
loc_204b5e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b8c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b8c
	bmi.s loc_204b80
	sub.w d1,d0
	bcc.s loc_204b7a
	move.w #$0,d0
loc_204b7a:
	move.w d0,$10(a0)
	rts
loc_204b80:
	sub.w d1,d0
	bcs.s loc_204b88
	move.w #$0,d0
loc_204b88:
	move.w d0,$10(a0)
loc_204b8c:
	rts
	.incbin 19342, 48

sub_204bbe:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c12
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204bec
	addi.w #$38,d0
loc_204bec:
	cmp.w d1,d0
	bls.s loc_204c12
loc_204bf0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c00
	rts
loc_204c00:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d1c
	move.b #$6,$24(a0)
	rts
loc_204c12:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204bf0

sub_204c2a:
	tst.b ($f7ca).w
	bne.s loc_204c50
	move.w $14(a0),d0
	bpl.s loc_204c38
	neg.w d0
loc_204c38:
	cmpi.w #$80,d0
	bcs.s loc_204c50
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c50
	btst.b #$1,($f602).w
	bne.s sub_204c52
loc_204c50:
	rts

sub_204c52:
	btst.b #$2,$22(a0)
	beq.s loc_204c5c
	bra.s loc_204c8c
loc_204c5c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c7c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c8c
loc_204c7c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c8c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204ca6
	cmpi.w #$200,$14(a0)
	bcc.s loc_204ca6
	move.w #$200,$14(a0)
loc_204ca6:
	rts

sub_204ca8:
	tst.b $2a(a0)
	beq.s loc_204cb0
	rts
loc_204cb0:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cc2
	tst.w $14(a0)
	beq.w loc_204d88
loc_204cc2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d88
	btst.b #$3,$22(a0)
	beq.s loc_204cde
	jsr (sub_2059b4).l
	beq.s loc_204d0e
loc_204cde:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206718
	cmpi.w #$6,d1
	blt.w loc_204d88
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d04
	move.w #$380,d2
loc_204d04:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d0e:
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
	bne.s loc_204d8a
	tst.b ($ff195b).l
	beq.s loc_204d6c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d7c
loc_204d6c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d7c:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d88:
	rts
loc_204d8a:
	bset.b #$4,$22(a0)
	rts

sub_204d92:
	tst.b $3c(a0)
	beq.s loc_204dc4
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204da8
	move.w #$fe00,d1
loc_204da8:
	cmp.w $12(a0),d1
	ble.s loc_204dc2
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204dc2
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204dc2:
	rts
loc_204dc4:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dd2
	move.w #$f040,$12(a0)
loc_204dd2:
	rts

sub_204dd4:
	tst.b $2a(a0)
	bne.s loc_204e0e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e0e
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e0e
	bmi.s loc_204e0a
	tst.w d0
	beq.s loc_204e08
	add.w d0,$14(a0)
loc_204e08:
	rts
loc_204e0a:
	add.w d0,$14(a0)
loc_204e0e:
	rts

sub_204e10:
	tst.b $2a(a0)
	bne.s loc_204e50
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e50
	move.b $26(a0),d0
	jsr (sub_20076e).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e46
	tst.w d0
	bpl.s loc_204e40
	asr.l #$2,d0
loc_204e40:
	add.w d0,$14(a0)
	rts
loc_204e46:
	tst.w d0
	bmi.s loc_204e4c
	asr.l #$2,d0
loc_204e4c:
	add.w d0,$14(a0)
loc_204e50:
	rts

sub_204e52:
	nop
	tst.b $38(a0)
	bne.s loc_204e94
	tst.w $3e(a0)
	bne.s loc_204e96
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e94
	move.w $14(a0),d0
	bpl.s loc_204e76
	neg.w d0
loc_204e76:
	cmpi.w #$280,d0
	bcc.s loc_204e94
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e94:
	rts
loc_204e96:
	subq.w #$1,$3e(a0)
	rts

sub_204e9c:
	btst.b #$1,$2c(a0)
	bne.s loc_204ebe
	move.b $26(a0),d0
	beq.s loc_204ebe
	bpl.s loc_204eb4
	addq.b #$2,d0
	bcc.s loc_204eb2
	moveq #$0,d0
loc_204eb2:
	bra.s loc_204eba
loc_204eb4:
	subq.b #$2,d0
	bcc.s loc_204eba
	moveq #$0,d0
loc_204eba:
	move.b d0,$26(a0)
loc_204ebe:
	rts

sub_204ec0:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a06).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204fa4
	cmpi.b #$80,d0
	beq.w loc_205006
	cmpi.b #$c0,d0
	beq.w loc_205062
	bsr.w sub_206a2e
	tst.w d1
	bpl.s loc_204f12
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f12:
	bsr.w sub_206890
	tst.w d1
	bpl.s loc_204f24
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f24:
	bsr.w sub_206740
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204fa2
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f42
	cmp.b d2,d0
	blt.s loc_204fa2
loc_204f42:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050c4
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f80
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f72
	asr.w $12(a0)
	bra.s loc_204f94
loc_204f72:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f80:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f94
	move.w #$fc0,$12(a0)
loc_204f94:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204fa2
	neg.w $14(a0)
loc_204fa2:
	rts
loc_204fa4:
	bsr.w sub_206a2e
	tst.w d1
	bpl.s loc_204fbe
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fbe:
	bsr.w sub_2068e8
	tst.w d1
	bpl.s loc_204fd8
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fd6
	move.w #$0,$12(a0)
loc_204fd6:
	rts
loc_204fd8:
	tst.w $12(a0)
	bmi.s loc_205004
	bsr.w sub_206740
	tst.w d1
	bpl.s loc_205004
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050c4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205004:
	rts
loc_205006:
	bsr.w sub_206a2e
	tst.w d1
	bpl.s loc_205018
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205018:
	bsr.w sub_206890
	tst.w d1
	bpl.s loc_20502a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20502a:
	bsr.w sub_2068e8
	tst.w d1
	bpl.s loc_205060
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20504a
	move.w #$0,$12(a0)
	rts
loc_20504a:
	move.b d3,$26(a0)
	bsr.w sub_205136
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205060
	neg.w $14(a0)
loc_205060:
	rts
loc_205062:
	bsr.w sub_206890
	tst.w d1
	bpl.s loc_20507c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20507c:
	bsr.w sub_2068e8
	tst.w d1
	bpl.s loc_205096
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205094
	move.w #$0,$12(a0)
loc_205094:
	rts
loc_205096:
	tst.w $12(a0)
	bmi.s loc_2050c2
	bsr.w sub_206740
	tst.w d1
	bpl.s loc_2050c2
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050c4
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050c2:
	rts

sub_2050c4:
	btst.b #$4,$22(a0)
	beq.s loc_2050ce
	nop
loc_2050ce:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205128
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205108
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205118
loc_205108:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205118:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_205128:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205136:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2037fe).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205170
	subi.w #$20,$12(a0)
loc_205170:
	jsr (sub_2064e6).l
	bsr.w sub_20518c
	bsr.w sub_204bbe
	bsr.w sub_204060
	bsr.w sub_20541e
	jmp (sub_203854).l

sub_20518c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206d1c
	bsr.w sub_204ec0
	btst.b #$1,$22(a0)
	bne.s loc_2051c6
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2051c6:
	rts
	.incbin 20936, 268

sub_2052d4:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052fc
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052fc
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052fc
	tst.b ($ff1506).l
	bne.w loc_2053be
loc_2052fc:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20533a
	tst.b ($ff1506).l
	bne.w loc_2053c0
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053c0
	bra.s loc_205342
loc_20533a:
	cmp.b ($f7af).w,d1
	beq.w loc_2053c0
loc_205342:
	cmp.b ($f7ac).w,d1
	beq.s loc_205372
	cmp.b ($f7ad).w,d1
	beq.s loc_205356
	bclr.b #$6,$1(a0)
	rts
loc_205356:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053d8
	btst.b #$1,$22(a0)
	beq.s loc_205372
	bclr.b #$6,$1(a0)
	rts
loc_205372:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205384
	bclr.b #$6,$1(a0)
	rts
loc_205384:
	cmpi.b #$e0,d2
	bcs.s loc_205392
	bset.b #$6,$1(a0)
	rts
loc_205392:
	btst.b #$6,$1(a0)
	bne.s loc_2053ae
	move.b $26(a0),d1
	beq.s loc_2053be
	cmpi.b #$80,d1
	bhi.s loc_2053be
	bset.b #$6,$1(a0)
	rts
loc_2053ae:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053be
	bclr.b #$6,$1(a0)
loc_2053be:
	rts
loc_2053c0:
	btst.b #$2,$22(a0)
	bne.s loc_2053d2
	move.w #$9c,d0
	jsr (sub_20226a).l
loc_2053d2:
	jmp (sub_204c52).l
loc_2053d8:
	tst.w $12(a0)
	bmi.s loc_20541c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205410
	cmpi.w #$38,d1
	bcs.s loc_205408
	cmpi.w #$80,d1
	bcs.s loc_20541c
loc_205400:
	bclr.b #$6,$1(a0)
	rts
loc_205408:
	bset.b #$6,$1(a0)
	rts
loc_205410:
	cmpi.w #$38,d1
	bcs.s loc_205400
	cmpi.w #$80,d1
	bcc.s loc_205408
loc_20541c:
	rts

sub_20541e:
	lea (dat_20570e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205440
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205440:
	bsr.w sub_2056b0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054b8
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205486
	move.b d0,$1e(a0)

sub_20546a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20547e
	bpl.s loc_20547e
	cmpi.b #$fd,d0
	bge.s loc_205488
loc_20547e:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205486:
	rts
loc_205488:
	addq.b #$1,d0
	bne.s loc_205498
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20547e
loc_205498:
	addq.b #$1,d0
	bne.s loc_2054ac
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20547e
loc_2054ac:
	addq.b #$1,d0
	bne.s loc_2054b6
	move.b $2(a1,d1.w),$1c(a0)
loc_2054b6:
	rts
loc_2054b8:
	subq.b #$1,$1e(a0)
	bpl.s loc_205486
	addq.b #$1,d0
	bne.w loc_205572
	tst.b ($ff195b).l
	bne.w loc_20563a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054e0
	not.b d0
loc_2054e0:
	btst.b #$1,$2c(a0)
	bne.s loc_2054ee
	addi.b #$10,d0
	bra.s loc_2054f0
loc_2054ee:
	addq.b #$8,d0
loc_2054f0:
	bpl.s loc_2054f4
	moveq #$3,d1
loc_2054f4:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055e6
	move.w $14(a0),d2
	bpl.s loc_205512
	neg.w d2
loc_205512:
	btst.b #$1,$2c(a0)
	beq.s loc_20552a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205910).l,a1
	bra.s loc_205554
loc_20552a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058ea).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205554
	lea (dat_20578e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205554
	lea (dat_205786).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205554:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205562
	moveq #$0,d2
loc_205562:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20546a
	add.b d3,$1a(a0)
	rts
loc_205572:
	addq.b #$1,d0
	bne.s loc_2055e2
	move.w $14(a0),d2
	bpl.s loc_20557e
	neg.w d2
loc_20557e:
	lea (dat_20586c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055bc
	lea (dat_20579e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055b0
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055bc
	lea (dat_205918).l,a1
	bra.s loc_2055bc
loc_2055b0:
	cmpi.w #$600,d2
	bcc.s loc_2055bc
	lea (dat_205796).l,a1
loc_2055bc:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055c6
	moveq #$0,d2
loc_2055c6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20546a
loc_2055e2:
	addq.b #$1,d0
	bne.s loc_205626
loc_2055e6:
	move.w $14(a0),d2
	bmi.s loc_2055ee
	neg.w d2
loc_2055ee:
	addi.w #$800,d2
	bpl.s loc_2055f6
	moveq #$0,d2
loc_2055f6:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20587e).l,a1
	tst.b ($ff195b).l
	bne.s loc_205610
	lea (dat_2057a6).l,a1
loc_205610:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20546a
loc_205626:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20563a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20564c
	not.b d0
loc_20564c:
	addi.b #$10,d0
	bpl.s loc_205654
	moveq #$0,d1
loc_205654:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205682
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205572
loc_205682:
	move.w $14(a0),d2
	bpl.s loc_20568a
	neg.w d2
loc_20568a:
	lea (dat_205866).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20569c
	lea (dat_205860).l,a1
loc_20569c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056a6
	moveq #$0,d2
loc_2056a6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20546a

sub_2056b0:
	tst.b ($ff195b).l
	beq.s loc_2056bc
	move.b dat_2056be(pc,d0.w),d0
loc_2056bc:
	rts
dat_2056be:
	.incbin 22206, 80
dat_20570e:
	.incbin 22286, 120
dat_205786:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20578e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205796:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20579e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2057a6:
	.incbin 22438, 186
dat_205860:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205866:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20586c:
	.incbin 22636, 18
dat_20587e:
	.incbin 22654, 108
dat_2058ea:
	.incbin 22762, 38
dat_205910:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205918:
	.incbin 22808, 56

sub_205950:
	tst.b (a0)
	beq.w loc_2059b2
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059b2
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059b2
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205984:
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
loc_20599e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_20599e
	dbf d1,loc_205984
loc_2059b2:
	rts

sub_2059b4:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a28
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
	bne.s loc_205a16
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a16:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a28:
	rts
loc_205a2a:
	move.w #$e,d0

sub_205a2e:
	cmpi.w #$67,d0
	bne.s loc_205a3c
	move.b #$1,($ff1958).l
loc_205a3c:
	move.w d0,($a12010).l
loc_205a42:
	move.w ($a12020).l,d0
	beq.s loc_205a42
	cmp.w ($a12020).l,d0
	bne.s loc_205a42
	move.w #$0,($a12010).l
loc_205a5a:
	move.w ($a12020).l,d0
	bne.s loc_205a5a
	move.w ($a12020).l,d0
	bne.s loc_205a5a
	rts
	dc.b $00,$00

sub_205a6e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a8a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a8a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205aca
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205acc
loc_205aa6:
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
loc_205aca:
	rts
loc_205acc:
	addq.b #$1,d0
	bne.s loc_205adc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205aa6
loc_205adc:
	addq.b #$1,d0
	bne.s loc_205af0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205aa6
loc_205af0:
	addq.b #$1,d0
	bne.s loc_205afa
	move.b $2(a1,d1.w),$1c(a0)
loc_205afa:
	addq.b #$1,d0
	bne.s loc_205b02
	addq.b #$2,$24(a0)
loc_205b02:
	addq.b #$1,d0
	bne.s loc_205b10
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b10:
	addq.b #$1,d0
	bne.s loc_205b18
	addq.b #$2,$25(a0)
loc_205b18:
	rts
	.incbin 23322, 536

sub_205d32:
	rts
	.incbin 23860, 116

sub_205da8:
	tst.b $25(a0)
	bne.s loc_205dd8
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_20738c).l
	bne.s loc_205dd8
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dd8:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205de8(pc,d0.w),d0
	jmp dat_205de8(pc,d0.w)
dat_205de8:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e10
	andi.b #$7f,$2(a0)
loc_205e10:
	move.l #$23c7ee,$4(a0)
	bsr.s sub_205da8
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e3e
	move.w #$100,$1c(a0)
loc_205e3e:
	lea (dat_23c7da).l,a1
	bsr.w sub_205a6e
	jmp (sub_203854).l
	tst.b $25(a0)
	beq.s loc_205e5a
	jmp (sub_203900).l
loc_205e5a:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e7c(pc,d0.w),d0
	jsr dat_205e7c(pc,d0.w)
	jmp (sub_203854).l
dat_205e7c:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205eaa
	andi.b #$7f,$2(a0)
loc_205eaa:
	move.l #$233716,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ed0
	bsr.w sub_205f3c
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f32
loc_205ed0:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067ee).l
	tst.w d1
	bpl.s loc_205f2e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f18
	bsr.w sub_205f3c
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f62
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f18:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f32
loc_205f2e:
	addq.w #$2,$c(a0)
loc_205f32:
	lea (dat_2336fa).l,a1
	bra.w sub_205a6e

sub_205f3c:
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

sub_205f62:
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
	bra.s loc_205f32
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f32
	.incbin 24478, 606
	beq.s loc_206204
	andi.b #$7f,$2(a0)
loc_206204:
	lea (dat_23c4da).l,a1
	jsr (sub_205a6e).l
	bra.w loc_2062b4
	.incbin 25108, 128
loc_206294:
	abcd.b d0,d5
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23c4da).l,a1
	jsr (sub_205a6e).l
loc_2062b4:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062c6
	rts
loc_2062c6:
	cmp.b $24(a0),d0
	beq.s loc_2062dc
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2062dc:
	jmp (sub_203854).l
loc_2062e2:
	bclr.b #$7,($ff156b).l
	dc.b $67,$44,$70,$00
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206332(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206306:
	move.l (a1)+,(a2)+
	dbf d0,loc_206306
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
	rts
dat_206332:
	.incbin 25394, 436

sub_2064e6:
	rts
loc_2064e8:
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
	bne.s loc_2065a2
	move.b ($ff1593).l,($ff195b).l
loc_2065a2:
	tst.b ($ff1522).l
	bpl.s loc_2065b8
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065b8:
	rts

sub_2065ba:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064e8
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
	bne.s loc_206674
	move.b ($ff1591).l,($ff195b).l
loc_206674:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206696
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206696:
	tst.b ($ff1522).l
	bpl.s loc_2066ac
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066ac:
	rts

sub_2066ae:
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
	bpl.s loc_2066ea
	move.b d1,d0
	bpl.s loc_2066e4
	subq.b #$1,d0
loc_2066e4:
	addi.b #$20,d0
	bra.s loc_2066f4
loc_2066ea:
	move.b d1,d0
	bpl.s loc_2066f0
	addq.b #$1,d0
loc_2066f0:
	addi.b #$1f,d0
loc_2066f4:
	andi.b #$c0,d0
	beq.w loc_2067c4
	cmpi.b #$80,d0
	beq.w loc_206960
	andi.b #$38,d1
	bne.s loc_20670c
	addq.w #$8,d2
loc_20670c:
	cmpi.b #$40,d0
	beq.w loc_206a36
	bra.w loc_206898

sub_206718:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069be
	cmpi.b #$80,d0
	beq.w sub_2068e8
	cmpi.b #$c0,d0
	beq.w loc_206828

sub_206740:
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
loc_2067a4:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067b2
	move.b ($f768).w,d3
	exg d0,d1
loc_2067b2:
	btst.l #$0,d3
	beq.s loc_2067ba
	move.b d2,d3
loc_2067ba:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2067c4:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010c4).l
	move.b #$0,d2
loc_2067e0:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067ec
	move.b d2,d3
loc_2067ec:
	rts

sub_2067ee:
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
	beq.s loc_206826
	move.b #$0,d3
loc_206826:
	rts
loc_206828:
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
	bra.w loc_2067a4

sub_206890:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206898:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201234).l
	move.b #$c0,d2
	bra.w loc_2067e0
	.incbin 26808, 48

sub_2068e8:
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
	bra.w loc_2067a4

sub_206958:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206960:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010c4).l
	move.b #$80,d2
	bra.w loc_2067e0
	.incbin 27012, 58
loc_2069be:
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
	bra.w loc_2067a4

sub_206a2e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a36:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201234).l
	move.b #$40,d2
	bra.w loc_2067e0
	.incbin 27226, 32
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a88
	move.b #$40,d3
loc_206a88:
	rts

sub_206a8a:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206aae
	addi.w #$c,d3
	moveq #$a,d5
loc_206aae:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206abc:
	tst.b $1(a1)
	bpl.s loc_206ac8
	move.b $20(a1),d0
	bne.s loc_206ad4
loc_206ac8:
	lea $40(a1),a1
	dbf d6,loc_206abc
	moveq #$0,d0
	rts
loc_206ad4:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e3a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206afc
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206b02
	bra.w loc_206ac8
loc_206afc:
	cmp.w d4,d0
	bhi.w loc_206ac8
loc_206b02:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b1a
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b20
	bra.w loc_206ac8
loc_206b1a:
	cmp.w d5,d0
	bhi.w loc_206ac8
loc_206b20:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b94
	cmpi.b #$c0,d1
	beq.w loc_206d74
	tst.b d1
	bmi.w loc_206c5e
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b58
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206b56
	addq.b #$2,$24(a1)
loc_206b56:
	rts
loc_206b58:
	tst.w $12(a0)
	bpl.s loc_206b82
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206b92
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206b92
	addq.b #$4,$25(a1)
	rts
loc_206b82:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206b92
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206b92:
	rts

sub_206b94:
	tst.b ($ff1521).l
	bne.s loc_206bae
	tst.b ($ff151f).l
	bne.s loc_206bae
	cmpi.b #$2,$1c(a0)
	bne.w loc_206c5e
loc_206bae:
	tst.b $21(a1)
	beq.s loc_206bd8
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206bd6
	bset.b #$7,$22(a1)
loc_206bd6:
	rts
loc_206bd8:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206bf0
	moveq #$6,d0
loc_206bf0:
	move.w d0,$3e(a1)
	move.w dat_206c50(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206c0a
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206c0a:
	bsr.w sub_209186
	move.w #$96,d0
	jsr (sub_20226a).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c40
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c48
	neg.w $12(a0)
	rts
loc_206c40:
	addi.w #$100,$12(a0)
	rts
loc_206c48:
	subi.w #$100,$12(a0)
	rts
dat_206c50:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206c58:
	bset.b #$7,$22(a1)
loc_206c5e:
	tst.b ($ff1521).l
	bne.s loc_206c6e
	tst.b ($ff151f).l
	beq.s loc_206c72
loc_206c6e:
	moveq #$ffffffff,d0
	rts
loc_206c72:
	nop
	tst.w $30(a0)
	bne.s loc_206c6e
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206ca8
	tst.w ($ff1512).l
	beq.w loc_206d12
	jsr (sub_20738c).l
	bne.s loc_206ca8
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206ca8:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206cbe
	move.b #$0,($ff156f).l
loc_206cbe:
	move.b #$4,$24(a0)
	bsr.w sub_2050c4
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206cee
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206cee:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206cfc
	neg.w $10(a0)
loc_206cfc:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d12:
	tst.w ($ff1588).l
	bne.w loc_206ca8

sub_206d1c:
	tst.w ($ff1906).l
	bne.s loc_206d70
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050c4
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
loc_206d70:
	moveq #$ffffffff,d0
	rts
loc_206d74:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206e26
	cmpi.b #$b,d1
	beq.w loc_206df0
	cmpi.b #$c,d1
	beq.w loc_206df4
	cmpi.b #$17,d1
	beq.w loc_206e26
	cmpi.b #$21,d1
	beq.w loc_206e26
	cmpi.b #$23,d1
	beq.w loc_206e26
	cmpi.b #$2f,d1
	beq.w loc_206e2c
	cmpi.b #$3a,d1
	beq.w loc_206e2c
	cmpi.b #$3b,d1
	beq.w loc_206e2c
	cmpi.b #$1,($f7aa).w
	bne.s loc_206dee
	cmpi.b #$3c,d1
	blt.s loc_206dee
	cmpi.b #$3f,d1
	bgt.s loc_206dee
	bsr.w sub_206b94
	tst.b $20(a1)
	bne.s loc_206de6
	addq.b #$3,$21(a1)
loc_206de6:
	clr.b $20(a1)
	bra.w loc_206e26
loc_206dee:
	rts
loc_206df0:
	bra.w loc_206c58
loc_206df4:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206e22
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206e0e
	subi.w #$10,d0
loc_206e0e:
	sub.w d2,d0
	bcc.s loc_206e1a
	addi.w #$18,d0
	bcs.s loc_206e1e
	bra.s loc_206e22
loc_206e1a:
	cmp.w d4,d0
	bhi.s loc_206e22
loc_206e1e:
	bra.w loc_206c5e
loc_206e22:
	bra.w sub_206b94
loc_206e26:
	addq.b #$1,$21(a1)
	rts
loc_206e2c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e38
	addq.b #$1,$21(a1)
loc_206e38:
	rts
dat_206e3a:
	.incbin 28218, 126
loc_206eb8:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206ece
	move.l #$4000,(dat_207048).l
	bra.s loc_206eee
loc_206ece:
	addi.l #$2000,(dat_207048).l
	cmpi.l #$80000,(dat_207048).l
	bls.s loc_206eee
	move.l #$80000,(dat_207048).l
loc_206eee:
	move.l (dat_207048).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206f00
	sub.l d0,$c(a0)
loc_206f00:
	btst.b #$1,($f604).w
	beq.s loc_206f0c
	add.l d0,$c(a0)
loc_206f0c:
	btst.b #$2,($f604).w
	beq.s loc_206f18
	sub.l d0,$8(a0)
loc_206f18:
	btst.b #$3,($f604).w
	beq.s loc_206f24
	add.l d0,$8(a0)
loc_206f24:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200edc).l
	move.w (a1),($ff194e).l
	lea (dat_20704c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_206f66
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_206f60
	move.b #$0,d1
loc_206f60:
	move.b d1,($ff1904).l
loc_206f66:
	btst.b #$7,($f605).w
	beq.s loc_206f86
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_206f80
	add.b (a2),d1
loc_206f80:
	move.b d1,($ff1904).l
loc_206f86:
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
	beq.s loc_207012
	bsr.w sub_20738c
	bne.s loc_207012
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
loc_207012:
	btst.b #$4,($f605).w
	beq.s loc_207042
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207042:
	jmp (sub_203854).l
dat_207048:
	dc.b $00,$00,$40,$00
dat_20704c:
	.incbin 28748, 302

sub_20717a:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207188:
	clr.l (a2)+
	dbf d0,loc_207188
	rts

sub_207190:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20719e(pc,d0.w),d0
	jmp dat_20719e(pc,d0.w)
dat_20719e:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20743e).l,a0
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
	bcc.s loc_2071dc
	moveq #$0,d6
loc_2071dc:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2071e4:
	cmp.w (a0),d6
	bls.s loc_2071f6
	tst.b $4(a0)
	bpl.s loc_2071f2
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2071f2:
	addq.w #$8,a0
	bra.s loc_2071e4
loc_2071f6:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207216
loc_207204:
	cmp.w (a0),d6
	bls.s loc_207216
	tst.b $4(a0)
	bpl.s loc_207212
	addq.b #$1,$1(a2)
loc_207212:
	addq.w #$8,a0
	bra.s loc_207204
loc_207216:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207300
	bge.s loc_2072a6
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207282
loc_207250:
	cmp.w -$8(a0),d6
	bge.s loc_207282
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207266
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207266:
	bsr.w sub_207324
	bne.s loc_207270
	subq.w #$8,a0
	bra.s loc_207250
loc_207270:
	tst.b $4(a0)
	bpl.s loc_207280
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207280:
	addq.w #$8,a0
loc_207282:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20728e:
	cmp.w -$8(a0),d6
	bgt.s loc_2072a0
	tst.b -$4(a0)
	bpl.s loc_20729c
	subq.b #$1,(a2)
loc_20729c:
	subq.w #$8,a0
	bra.s loc_20728e
loc_2072a0:
	move.l a0,($f770).w
	rts
loc_2072a6:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2072ba:
	cmp.w (a0),d6
	bls.s loc_2072dc
	tst.b $4(a0)
	bpl.s loc_2072c8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2072c8:
	bsr.w sub_207324
	beq.s loc_2072ba
	tst.b $4(a0)
	bpl.s loc_2072dc
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2072dc:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2072fc
loc_2072ea:
	cmp.w (a0),d6
	bls.s loc_2072fc
	tst.b $4(a0)
	bpl.s loc_2072f8
	addq.b #$1,$1(a2)
loc_2072f8:
	addq.w #$8,a0
	bra.s loc_2072ea
loc_2072fc:
	move.l a0,($f774).w
loc_207300:
	rts

sub_207302:
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

sub_207324:
	bsr.s sub_207302
	beq.s loc_207336
	tst.b $4(a0)
	bpl.s loc_20733c
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20733c
loc_207336:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20733c:
	bsr.w sub_20738c
	bne.s loc_20738a
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
	bpl.s loc_20736c
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20736c:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20737e
	nop
	nop
	nop
	nop
loc_20737e:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20738a:
	rts

sub_20738c:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207394:
	tst.b (a1)
	beq.s loc_2073a0
	lea $40(a1),a1
	dbf d0,loc_207394
loc_2073a0:
	rts

sub_2073a2:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2073c0
loc_2073b4:
	tst.b (a1)
	beq.s loc_2073c0
	lea $40(a1),a1
	dbf d0,loc_2073b4
loc_2073c0:
	rts
loc_2073c2:
	move.w $8(a0),d0
loc_2073c6:
	tst.b $1(a0)
	bmi.s loc_207430
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207430
loc_2073e4:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207426
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20741e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207416
	moveq #$0,d1
	bra.s loc_20741e
loc_207416:
	cmpi.w #$3,d1
	bcs.s loc_20741e
	moveq #$2,d1
loc_20741e:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207426:
	jsr (sub_203900).l
	moveq #$1,d0
	rts
loc_207430:
	btst.b #$7,($ff152e).l
	bne.s loc_2073e4
	moveq #$0,d0
	rts
dat_20743e:
	.incbin 29758, 514

sub_207640:
	btst.b #$3,$22(a0)
	beq.s loc_2076b0
	btst.b #$3,$22(a1)
	beq.s loc_2076b0
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2076b0
	tst.b $2a(a1)
	beq.s loc_207672
	move.w #$ab,d0
	jsr (sub_20226a).l
loc_207672:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20769e
	cmpi.b #$17,$1c(a1)
	beq.s loc_20769e
	bclr.b #$0,$2c(a1)
loc_20769e:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2076b0
	bclr.b #$1,$22(a1)
loc_2076b0:
	rts

sub_2076b2:
	cmpi.b #$4,$24(a1)
	bne.s loc_2076c4
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2076c4:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207724
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2076e6
	bclr.b #$3,$22(a0)
	bra.w sub_207640
loc_2076e6:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207724
	tst.b ($ff195b).l
	beq.s loc_20770e
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_20771e
loc_20770e:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_20771e:
	move.b #$0,$1c(a1)
loc_207724:
	bset.b #$3,$22(a1)
	beq.s loc_207746
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20777e
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207746:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207772
	cmpi.b #$2,$24(a0)
	beq.s loc_207778
loc_207772:
	move.w $10(a1),$14(a1)
loc_207778:
	bclr.b #$1,$22(a1)
loc_20777e:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25
loc_20778e:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207a42
	btst.b #$6,$2c(a1)
	bne.w loc_207a42
	cmpi.b #$6,$24(a1)
	bcc.w loc_207a42
	tst.b $0(a1)
	beq.w loc_207a42
	tst.b $1(a0)
	bpl.w loc_207a42
	tst.b ($ff1906).l
	bne.w loc_207a42
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207a42
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207a42
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2077fc
	btst.b #$3,$22(a0)
	bne.s loc_20780e
	bra.w loc_207a42
loc_2077fc:
	cmpi.b #$1,$25(a0)
	bne.s loc_20780e
	tst.w $12(a1)
	beq.s loc_20780e
	bmi.w loc_207a42
loc_20780e:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207a42
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207a42
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207844
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207844:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207852
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207852:
	cmp.w d4,d5
	bcs.w loc_2078e6
	cmpi.b #$1,$25(a0)
	beq.w loc_207a42
	cmpi.b #$a,$0(a0)
	bne.s loc_207874
	btst.b #$1,$22(a1)
	bne.w loc_207a42
loc_207874:
	cmpi.b #$4,d5
	bls.w loc_207a42
	bsr.w sub_207a92
	move.l d0,-(a7)
	bsr.w sub_207640
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20789e
	tst.w $10(a1)
	beq.s loc_2078ce
	bpl.s loc_2078a6
	bra.s loc_2078ce
loc_20789e:
	tst.w $10(a1)
	beq.s loc_2078ce
	bpl.s loc_2078ce
loc_2078a6:
	bsr.w sub_207a52
	btst.b #$1,$22(a1)
	bne.s loc_2078c4
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2078c4:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2078ce:
	bsr.w sub_207b08
	bsr.w sub_207a52
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2078e6:
	cmpi.b #$19,$0(a0)
	bne.s loc_2078f8
	btst.b #$2,$22(a1)
	bne.w loc_207a42
loc_2078f8:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20790e
	bmi.w loc_2079de
loc_20790e:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207920
	tst.w $12(a1)
	beq.s loc_207920
	bmi.w loc_207a42
loc_207920:
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
	beq.s loc_20796c
	bpl.s loc_20794c
	neg.b d0
loc_20794c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066ae).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20796c
	tst.w $10(a0)
	bpl.s loc_207968
	neg.w d1
loc_207968:
	add.w d1,$8(a1)
loc_20796c:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2079d6
	tst.w $12(a0)
	bmi.s loc_2079aa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206740).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2079aa
	add.w d1,$c(a1)
	bra.w loc_207a42
loc_2079aa:
	tst.w $12(a0)
	bpl.s loc_2079d6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206958).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2079d6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d1c).l
	movem.l (a7)+,a0-a1
	bra.s loc_207a42
loc_2079d6:
	bsr.w sub_2076b2
	moveq #$1,d0
	rts
loc_2079de:
	cmpi.b #$1,$25(a0)
	beq.s loc_207a42
	cmpi.b #$9,$0(a0)
	beq.s loc_207a42
	cmpi.b #$a,$0(a0)
	bne.s loc_207a08
	cmpi.b #$2,$25(a0)
	beq.s loc_207a28
	btst.b #$1,$1(a0)
	bne.s loc_207a28
	bra.s loc_207a42
loc_207a08:
	btst.b #$1,$22(a1)
	bne.s loc_207a28
	tst.w $12(a0)
	beq.s loc_207a28
	bmi.s loc_207a28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d1c).l
	movem.l (a7)+,a0-a1
loc_207a28:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_207b08
	bsr.w sub_207640
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207a42:
	bsr.w sub_207b08
	bsr.w sub_207640
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207a52:
	tst.w $10(a0)
	beq.s loc_207a90
	cmpi.b #$a,$0(a0)
	beq.s loc_207a90
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207a6c
	neg.b d0
loc_207a6c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066ae).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207a90
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d1c).l
	movem.l (a7)+,a0-a1
loc_207a90:
	rts

sub_207a92:
	cmpi.b #$a,$0(a0)
	bne.s loc_207aa2
	move.b #$0,$20(a1)
	rts
loc_207aa2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207af6
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_207b06
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207ac4
	tst.w $10(a2)
	beq.s loc_207b06
loc_207ac4:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207ad6
	cmp.w $8(a2),d1
	bcs.s loc_207b06
	bra.s loc_207adc
loc_207ad6:
	cmp.w $8(a2),d1
	bcc.s loc_207b06
loc_207adc:
	cmpi.b #$15,$0(a0)
	beq.s loc_207b06
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d1c).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_207af6:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_207b06:
	rts

sub_207b08:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207b22
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_207b22
	move.b #$0,$20(a1)
loc_207b22:
	rts
	.incbin 31524, 374
loc_207c9a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_207ca8(pc,d0.w),d0
	jmp dat_207ca8(pc,d0.w)
dat_207ca8:
	.incbin 31912, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_207c9a
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_207cfe
	tst.b $1(a0)
	bpl.s loc_207d06
loc_207cfe:
	move.w dat_207d58(pc,d0.w),d1
	jsr dat_207d58(pc,d1.w)
loc_207d06:
	bsr.w sub_203854
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_207d38
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_207d38:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203900
	rts
dat_207d58:
	.incbin 32088, 26
	addq.b #$2,$24(a0)
	move.l #$2080da,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_207dc8
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2080e0,$4(a0)
	bra.s loc_207e0a
loc_207dc8:
	btst.l #$3,d0
	beq.s loc_207df6
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20812a,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20abee).l
	move.l (a7)+,d0
	bra.s loc_207e0a
loc_207df6:
	btst.b #$1,$1(a0)
	beq.s loc_207e0a
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_207e0a:
	btst.l #$1,d0
	beq.s loc_207e16
	bset.b #$5,$2(a0)
loc_207e16:
	andi.w #$2,d0
	move.w dat_207e22(pc,d0.w),$30(a0)
	rts
dat_207e22:
	dc.b $f0,$00,$f6,$00

sub_207e26:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_20778e).l
	tst.b $1(a0)
	bpl.s loc_207e42
	lea ($d000).w,a1
	bsr.s sub_207e26
	bne.s loc_207e44
loc_207e42:
	rts
loc_207e44:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20226a).l
	lea (dat_2080cc).l,a1
	bra.w sub_205a6e
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_207e98:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_20778e).l
	tst.b $1(a0)
	bpl.s loc_207eba
	lea ($d000).w,a1
	bsr.s sub_207e98
	btst.b #$5,$22(a0)
	bne.s loc_207ebc
loc_207eba:
	rts
loc_207ebc:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_207eea
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_207eea:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_207f04
	move.b #$0,$1c(a1)
loc_207f04:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20226a).l
	.incbin 32542, 430
dat_2080cc:
	.incbin 32972, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2081c6(pc,d0.w),d1
	jmp dat_2081c6(pc,d1.w)
dat_2081c6:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2081d0:
	.incbin 33232, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208228
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208220
	moveq #$0,d1
	bra.s loc_208228
loc_208220:
	cmpi.w #$3,d1
	bcs.s loc_208228
	moveq #$2,d1
loc_208228:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208244
	moveq #$6,d1
loc_208244:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2081d0).l,a1
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
	beq.s loc_208294
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20828c
	moveq #$0,d0
	bra.s loc_208294
loc_20828c:
	cmpi.w #$3,d0
	bcs.s loc_208294
	moveq #$2,d0
loc_208294:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208362
	dbf d0,loc_208294
	bclr.b #$7,(a2)
	bra.s loc_2082ea
loc_2082a6:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2082d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2082ca
	moveq #$0,d0
	bra.s loc_2082d2
loc_2082ca:
	cmpi.w #$3,d0
	bcs.s loc_2082d2
	moveq #$2,d0
loc_2082d2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208362
	dbf d0,loc_2082d2
	bclr.b #$7,(a2)
	bsr.w sub_2073a2
	bne.w loc_20836e
loc_2082ea:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208634,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208340
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208340
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208340:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208362:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2082a6
loc_20836e:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208394
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20838c
	moveq #$0,d0
	bra.s loc_208394
loc_20838c:
	cmpi.w #$3,d0
	bcs.s loc_208394
	moveq #$2,d0
loc_208394:
	lea $1(a2),a3
loc_208398:
	btst.b #$0,-(a3)
	bne.w sub_203900
	dbf d0,loc_208398
	tst.b $1(a0)
	bmi.s loc_2083c8
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208442
loc_2083c8:
	tst.w ($ff190e).l
	bne.s loc_2083d8
	move.b ($ff1913).l,$1a(a0)
loc_2083d8:
	bra.w sub_203854
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208446
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208428
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208420
	moveq #$0,d1
	bra.s loc_208428
loc_208420:
	cmpi.w #$3,d1
	bcs.s loc_208428
	moveq #$2,d1
loc_208428:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20862c).l,a1
	bsr.w sub_205a6e
	bra.w sub_203854
loc_208442:
	bra.w sub_203900

sub_208446:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208496
	bset.b #$1,($ff150d).l
	beq.s loc_208480
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208496
	bset.b #$2,($ff150d).l
	bne.s loc_208496
loc_208480:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a2e).l
loc_208496:
	jmp (sub_20226a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2084aa(pc,d0.w),d1
	jmp dat_2084aa(pc,d1.w)
dat_2084aa:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_2084c6
	move.w d0,d5
loc_2084c6:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_2084d6
loc_2084ce:
	bsr.w sub_20738c
	bne.w loc_20858c
loc_2084d6:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208634,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208534
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208534
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208534:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20857c
	move.w d4,d0
	jsr (sub_20076e).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20857c
	subi.w #$80,d4
	bcc.s loc_20857c
	move.w #$288,d4
loc_20857c:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_2084ce
loc_20858c:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20226a).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2037fe
	addi.w #$18,$12(a0)
	bmi.s loc_2085ec
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_2085ec
	jsr (sub_2067ee).l
	tst.w d1
	bpl.s loc_2085ec
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_2085ec:
	tst.b ($ff1916).l
	beq.s loc_208628
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208628
	bra.w sub_203854
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208446
	lea (dat_20862c).l,a1
	bsr.w sub_205a6e
	bra.w sub_203854
loc_208628:
	bra.w sub_203900
dat_20862c:
	.incbin 34348, 402
loc_2087be:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2087ec(pc,d0.w),d0
	jsr dat_2087ec(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_2087ea
	cmpi.w #$5a,($f786).w
	bcs.s loc_2087e4
	btst.b #$0,($ff1505).l
	bne.s loc_2087ea
loc_2087e4:
	jmp (sub_203854).l
loc_2087ea:
	rts
dat_2087ec:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$208dc6,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208820
	move.b #$13,$1a(a0)
loc_208820:
	rts
loc_208822:
	tst.b ($ff0f01).l
	beq.s loc_208830
	jmp (sub_203900).l
loc_208830:
	cmpi.b #$a,$28(a0)
	beq.w loc_2087be
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208854(pc,d0.w),d0
	jsr dat_208854(pc,d0.w)
	jsr (sub_203854).l
	jmp (loc_2073c2).l
dat_208854:
	.incbin 34900, 282

sub_20896e:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2089a6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20899e
	moveq #$0,d1
	bra.s loc_2089a6
loc_20899e:
	cmpi.w #$3,d1
	bcs.s loc_2089a6
	moveq #$2,d1
loc_2089a6:
	add.w d1,d0
	rts

sub_2089aa:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2089cc
	tst.b ($ff1956).l
	beq.s loc_2089c4
	tst.b $29(a0)
	bne.s loc_2089cc
	rts
loc_2089c4:
	tst.b $29(a0)
	beq.s loc_2089cc
	rts
loc_2089cc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_20778e).l
	tst.b $28(a0)
	bne.s loc_2089ee
	tst.b ($ff0f01).l
	beq.s loc_2089ee
	jmp (loc_2073c2).l
loc_2089ee:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208822
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208a06(pc,d0.w),d1
	jmp dat_208a06(pc,d1.w)
dat_208a06:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$208dc6,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208a50
	tst.b $29(a0)
	bne.s loc_208a50
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208a50:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20896e
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208a7c
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208a7c:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208ad6
	move.b $25(a0),d0
	beq.s loc_208ab6
	bsr.w sub_20379c
	jsr (sub_2067ee).l
	tst.w d1
	bpl.w loc_208ac4
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208ac4
loc_208ab6:
	tst.b $1(a0)
	bpl.s loc_208ac4
	lea ($d000).w,a1
	bsr.w sub_2089aa
loc_208ac4:
	tst.w ($ff190e).l
	bne.s loc_208ad6
	lea (dat_208d3e).l,a1
	bsr.w sub_205a6e
loc_208ad6:
	bsr.w sub_203854
	jmp (loc_2073c2).l
	move.w #$96,d0
	jsr (sub_20226a).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_20738c
	bne.s loc_208b18
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_208b18:
	bsr.w sub_20738c
	bne.s loc_208b42
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_208b42:
	bsr.w sub_20896e
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203854
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208b68(pc,d0.w),d1
	jsr dat_208b68(pc,d1.w)
	bra.w sub_203854
dat_208b68:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_208b84
	andi.b #$7f,$2(a0)
loc_208b84:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$208dc6,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_208bcc
	bsr.w sub_2037fe
	addi.w #$18,$12(a0)
	rts
loc_208bcc:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_208bf2
loc_208bdc:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a2e).l
loc_208bf2:
	cmpi.b #$1,d0
	bne.s loc_208c3e
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208c34
	bset.b #$1,($ff150d).l
	beq.w loc_208bdc
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208c34
	bset.b #$2,($ff150d).l
	beq.w loc_208bdc
loc_208c34:
	move.w #$95,d0
	jmp (sub_20226a).l
loc_208c3e:
	cmpi.b #$2,d0
	bne.s loc_208c5c

sub_208c44:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_20226a).l
loc_208c5c:
	cmpi.b #$3,d0
	bne.s loc_208cbe

sub_208c62:
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
	bne.s loc_208cb2
	move.w #$82,d0
	jsr (sub_205a2e).l
loc_208cb2:
	move.w #$6d,d0
	jmp (sub_205a2e).l
	dc.b $4e,$75
loc_208cbe:
	cmpi.b #$4,d0
	bne.s loc_208d00
loc_208cc4:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_208cf6
	move.w #$82,d0
	jsr (sub_205a2e).l
loc_208cf6:
	move.w #$6c,d0
	jmp (sub_205a2e).l
loc_208d00:
	cmpi.b #$5,d0
	bne.s loc_208d10
	move.w #$12c,($ff190e).l
	rts
loc_208d10:
	cmpi.b #$6,d0
	bne.s loc_208d2a
	move.w #$9d,d0
	jsr (sub_20226a).l
	move.b #$1,($ff156f).l
	rts
loc_208d2a:
	bsr.w sub_208c44
	bsr.w sub_208c62
	bra.s loc_208cc4
	subq.w #$1,$1e(a0)
	bmi.w sub_203900
	rts
dat_208d3e:
	.incbin 36158, 586
loc_208f88:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f9c(pc,d0.w),d0
	jsr dat_208f9c(pc,d0.w)
	jmp (sub_203854).l
dat_208f9c:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$208fdc,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_208fd6
	jmp (sub_203900).l
loc_208fd6:
	subq.w #$2,$c(a0)
	rts
	.incbin 36828, 82
	tst.b $28(a0)
	bmi.w loc_208f88
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209044(pc,d0.w),d0
	jmp dat_209044(pc,d0.w)
dat_209044:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2090de,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_209074
	move.b #$3,$1a(a0)
	bra.s loc_209094
loc_209074:
	tst.w ($ff1588).l
	beq.s loc_209082
	move.b #$2,$1a(a0)
loc_209082:
	tst.b $28(a0)
	beq.s loc_209094
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_209094:
	tst.b $28(a0)
	bne.s loc_2090d8
	tst.b $29(a0)
	beq.s loc_2090c4
	tst.w ($ff1512).l
	beq.s loc_2090b0
	bclr.b #$5,$2(a0)
	bra.s loc_2090d8
loc_2090b0:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2090d8
	eori.b #$20,$2(a0)
	bra.s loc_2090d8
loc_2090c4:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2090d8
	move.b #$2,$1a(a0)
loc_2090d8:
	jmp (sub_203854).l
	.incbin 37086, 168

sub_209186:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2091a2
	move.l d1,(a3)
loc_2091a2:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2091cc
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a2e).l
loc_2091cc:
	rts
loc_2091ce:
	tst.w ($ff1588).l
	beq.s loc_209224
	bsr.w sub_209420
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
	lea (dat_209580).l,a2
	moveq #$2,d6
	bsr.w sub_2095d8
	bra.w loc_20927e
loc_209224:
	tst.b ($ff1511).l
	beq.s loc_209248
	bpl.s loc_209232
	bsr.w sub_2093ca
loc_209232:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_2094ba
loc_209248:
	tst.b ($ff150f).l
	beq.s loc_20927e
	bpl.s loc_209256
	bsr.w sub_2093b6
loc_209256:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20927a
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20927a:
	bsr.w sub_2094b0
loc_20927e:
	tst.w ($ff1588).l
	bne.w loc_20932a
	tst.b ($ff1510).l
	beq.w loc_20932a
	tst.w ($f63a).w
	bne.w loc_20932a
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209388
	tst.b ($f7cc).w
	bne.s loc_2092d4
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2092d4
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2092d4
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_2092d4
	move.b #$9,(a1)
loc_2092d4:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_2095c6
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_2095d0
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209326
	move.w #$63,d1
loc_209326:
	bsr.w sub_2095d0
loc_20932a:
	tst.b ($ff150e).l
	beq.s loc_20933c
	clr.b ($ff150e).l
	bsr.w sub_2095a6
loc_20933c:
	tst.b ($f7d6).w
	beq.s loc_209386
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20935c
	move.l #$6d400001,d0
loc_20935c:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20943e
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20937c
	move.l #$6e800001,d0
loc_20937c:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20943e
loc_209386:
	rts
loc_209388:
	btst.b #$7,($ff152e).l
	bne.s loc_2093b4
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d1c
	move.b #$1,($ff150c).l
loc_2093b4:
	rts

sub_2093b6:
	move.l #$73600002,($c00004).l
	lea dat_20941c(pc),a2
	move.w #$2,d2
	bra.s loc_2093e6

sub_2093ca:
	lea ($c00000).l,a6
	bsr.w sub_2095a6
	move.l #$70600002,($c00004).l
	lea dat_209414(pc),a2
	move.w #$6,d2
loc_2093e6:
	lea (dat_2330bc).l,a1
loc_2093ec:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209408
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_2093fc:
	move.l (a3)+,(a6)
	dbf d1,loc_2093fc
loc_209402:
	dbf d2,loc_2093ec
	rts
loc_209408:
	move.l #$0,(a6)
	dbf d1,loc_209408
	bra.s loc_209402
dat_209414:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20941c:
	dc.b $ff,$ff,$00,$00

sub_209420:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20959c
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20959c

sub_20943e:
	lea (dat_209578).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20944e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209452:
	sub.l d3,d1
	bcs.s loc_20945a
	addq.w #$1,d2
	bra.s loc_209452
loc_20945a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209464
	move.w #$1,d4
loc_209464:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209470
	tst.w d6
	bne.s loc_2094a2
loc_209470:
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
loc_209496:
	addi.l #$400000,d0
	dbf d6,loc_20944e
	rts
loc_2094a2:
	moveq #$f,d5
loc_2094a4:
	move.l #$0,(a6)
	dbf d5,loc_2094a4
	bra.s loc_209496

sub_2094b0:
	lea (dat_209580).l,a2
	moveq #$2,d6
	bra.s loc_2094c2

sub_2094ba:
	lea (dat_209574).l,a2
	moveq #$5,d6
loc_2094c2:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2094ca:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2094ce:
	sub.l d3,d1
	bcs.s loc_2094d6
	addq.w #$1,d2
	bra.s loc_2094ce
loc_2094d6:
	add.l d3,d1
	tst.w d2
	beq.s loc_2094e0
	move.w #$1,d4
loc_2094e0:
	tst.w d4
	beq.s loc_20950e
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
loc_20950e:
	addi.l #$400000,d0
	dbf d6,loc_2094ca
	rts
	.incbin 38170, 90
dat_209574:
	dc.b $00,$01,$86,$a0
dat_209578:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209580:
	dc.b $00,$00,$00,$64
dat_209584:
	dc.b $00,$00,$00,$0a
dat_209588:
	dc.b $00,$00,$00,$01
dat_20958c:
	.incbin 38284, 16

sub_20959c:
	moveq #$3,d6
	lea (dat_20958c).l,a2
	bra.s sub_2095d8

sub_2095a6:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_2095bc
	moveq #$9,d1
loc_2095bc:
	lea (dat_209588).l,a2
	moveq #$0,d6
	bra.s sub_2095d8

sub_2095c6:
	lea (dat_209588).l,a2
	moveq #$0,d6
	bra.s sub_2095d8

sub_2095d0:
	lea (dat_209584).l,a2
	moveq #$1,d6

sub_2095d8:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2095e0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2095e4:
	sub.l d3,d1
	bcs.s loc_2095ec
	addq.w #$1,d2
	bra.s loc_2095e4
loc_2095ec:
	add.l d3,d1
	tst.w d2
	beq.s loc_2095f6
	move.w #$1,d4
loc_2095f6:
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
	dbf d6,loc_2095e0
	rts
	.incbin 38444, 1200
	cmpi.b #$1,$28(a0)
	beq.w loc_209d1e
	jsr (sub_20ea62).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209b0a(pc,d0.w),d0
	jsr dat_209b0a(pc,d0.w)
	jsr (sub_203854).l
	move.w $2a(a0),d0
	jmp (loc_2073c6).l
dat_209b0a:
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
	jsr (sub_20abee).l
	tst.b $28(a0)
	bne.s loc_209b62
	lea dat_209ce0(pc),a1
	lea dat_209cba(pc),a2
	move.l #$ffff6000,d0
	bra.s loc_209b70
loc_209b62:
	lea dat_209cf6(pc),a1
	lea dat_209cc6(pc),a2
	move.l #$ffffb000,d0
loc_209b70:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_2067ee).l
	tst.w d1
	bpl.s loc_209b94
	addq.b #$2,$24(a0)
loc_209b94:
	rts
loc_209b96:
	tst.w ($ff1906).l
	bne.s loc_209bb8
	tst.b $28(a0)
	bne.s loc_209bb8
	tst.w $34(a0)
	beq.s loc_209bb0
	subq.w #$1,$34(a0)
	bra.s loc_209bb8
loc_209bb0:
	lea ($d000).w,a1
	bsr.s sub_209c0a
	bcs.s loc_209c04
loc_209bb8:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_209bcc
	neg.w d0
loc_209bcc:
	cmpi.w #$80,d0
	bge.s loc_209bf2
	jsr (sub_2067ee).l
	cmpi.w #$fff9,d1
	blt.s loc_209bf2
	cmpi.w #$7,d1
	bgt.s loc_209bf2
	add.w d1,$c(a0)
	movea.l $30(a0),a1
	jmp (sub_205a6e).l
loc_209bf2:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_209b96
loc_209c04:
	addq.b #$2,$24(a0)
	rts

sub_209c0a:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_209c2e
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_209c2e:
	rts
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	movea.l $30(a0),a1
	jmp (sub_205a6e).l
	move.b #$4,$24(a0)
	move.b #$0,$1c(a0)
	move.w #$78,$34(a0)
	tst.b $28(a0)
	bne.s loc_209c88
	jsr (sub_20738c).l
	bne.s loc_209c88
	tst.b $1(a0)
	bpl.s loc_209c74
	move.w #$a0,d0
	jsr (sub_20226a).l
loc_209c74:
	bsr.s sub_209c8a
	sf $3f(a1)
	jsr (sub_20738c).l
	bne.s loc_209c88
	bsr.s sub_209c8a
	st $3f(a1)
loc_209c88:
	rts

sub_209c8a:
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w $2(a0),$2(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$a,$c(a1)
	rts
dat_209cba:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $3b,$02,$fc,$00
dat_209cc6:
	.incbin 40134, 26
dat_209ce0:
	.incbin 40160, 22
dat_209cf6:
	.incbin 40182, 40
loc_209d1e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d32(pc,d0.w),d0
	jsr dat_209d32(pc,d0.w)
	jmp (sub_203854).l
dat_209d32:
	.incbin 40242, 1888
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4a0(pc,d0.w),d0
	jmp dat_20a4a0(pc,d0.w)
dat_20a4a0:
	.incbin 42144, 1674
loc_20ab2a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_20778e).l
	addq.b #$2,$24(a0)
	move.l #$20abd0,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$19(a0)
	move.b #$18,$16(a0)
	moveq #$c,d0
	jsr (sub_20abee).l
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20ab74
	neg.w d0
loc_20ab74:
	cmpi.w #$20,d0
	bcc.s loc_20abac
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcs.s loc_20abac
	cmpi.w #$30,d0
	bcc.s loc_20abac
	clr.w $3a(a0)
	move.b #$4,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20abac
	move.w #$a4,d0
	jsr (sub_20226a).l
	move.b #$1,$1a(a0)
loc_20abac:
	bra.w loc_20ab2a
	.incbin 43952, 60

sub_20abec:
	rts

sub_20abee:
	lea (dat_20ac10).l,a1
	add.w d0,d0
	move.w dat_20ac10(pc,d0.w),d4
	lea dat_20ac10(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20ac10:
	.incbin 44048, 68
	jsr (sub_20eaaa).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ad76
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac74(pc,d0.w),d0
	jmp dat_20ac74(pc,d0.w)
dat_20ac74:
	.incbin 44148, 258
loc_20ad76:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad84(pc,d0.w),d0
	jmp dat_20ad84(pc,d0.w)
dat_20ad84:
	.incbin 44420, 1778
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b48a(pc,d0.w),d0
	jsr dat_20b48a(pc,d0.w)
	jmp (sub_203854).l
dat_20b48a:
	.incbin 46218, 5400
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9b6(pc,d0.w),d0
	jsr dat_20c9b6(pc,d0.w)
	jmp (sub_203854).l
dat_20c9b6:
	.incbin 51638, 4320
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20daa4(pc,d0.w),d0
	jmp dat_20daa4(pc,d0.w)
dat_20daa4:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e1a2,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e162).l,a2
loc_20daf2:
	jsr (sub_20738c).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e1a2,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20db44
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20db44:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20daf2
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20db6c
	bge.s loc_20db62
	neg.w d0
loc_20db62:
	add.w d0,$a(a0)
	jmp (sub_203854).l
loc_20db6c:
	addq.b #$4,$24(a0)
	jmp (sub_203854).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20db90
	bge.s loc_20db86
	neg.w d0
loc_20db86:
	add.w d0,$8(a0)
	jmp (sub_203854).l
loc_20db90:
	addq.b #$4,$24(a0)
	jmp (sub_203854).l
	tst.b $1e(a0)
	beq.s loc_20dbaa
	subq.b #$1,$1e(a0)
	jmp (sub_203854).l
loc_20dbaa:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dbc4
	bge.s loc_20dbba
	neg.w d0
loc_20dbba:
	add.w d0,$a(a0)
	jmp (sub_203854).l
loc_20dbc4:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202434).l
	tst.b $1e(a0)
	beq.s loc_20dbe6
	subq.b #$1,$1e(a0)
	jmp (sub_203854).l
loc_20dbe6:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dc00
	bge.s loc_20dbf6
	neg.w d0
loc_20dbf6:
	add.w d0,$8(a0)
	jmp (sub_203854).l
loc_20dc00:
	jmp (sub_203900).l
	tst.l ($f680).w
	bne.s loc_20dc1a
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203900).l
loc_20dc1a:
	rts
	.incbin 56348, 1350
dat_20e162:
	.incbin 57698, 2304

sub_20ea62:
	tst.b ($ff156a).l
	beq.s loc_20eaa8
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ea7a
	tst.b $28(a0)
	beq.s loc_20eaa8
loc_20ea7a:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203900).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20eaa6
	move.w #$9e,d0
	jsr (sub_20226a).l
loc_20eaa6:
	addq.l #$4,a7
loc_20eaa8:
	rts

sub_20eaaa:
	tst.b $28(a0)
	bmi.s loc_20eada
	cmpi.b #$2,($ff152e).l
	bge.s loc_20eaca
	tst.b ($ff156d).l
	bne.s loc_20eada
	addq.l #$4,a7
	jmp (loc_2073c2).l
loc_20eaca:
	tst.b ($ff156a).l
	bne.s loc_20eada
	addq.l #$4,a7
	jmp (sub_203900).l
loc_20eada:
	rts

sub_20eadc:
	jmp (loc_2062e2).l
dat_20eae2:
	.incbin 60130, 16
dat_20eaf2:
	.incbin 60146, 1158
	jmp ($2062e8).l
	.incbin 61310, 3136
	jmp ($20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1598
dat_2336fa:
	.incbin 210682, 9952
dat_235dda:
	.incbin 220634, 256
dat_235eda:
	.incbin 220890, 4096
dat_236eda:
	.incbin 224986, 4896
dat_2381fa:
	.incbin 229882, 17120
dat_23c4da:
	.incbin 247002, 768
dat_23c7da:
	.incbin 247770, 14374
