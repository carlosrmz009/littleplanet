; R63C__.MMD
; disassembled from the disc; code only, data comes from data/R63C__.MMD at build time
	.file "R63C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$16
	jmp (loc_201c8c).l
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
	bsr.w sub_2021c2
	bsr.w sub_20216a
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201506

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200212).l,a1
	lea (dat_20021a).l,a2
	bsr.w sub_2001d4
	lea (dat_200220).l,a1
	lea (dat_200228).l,a2
	bsr.w sub_2001d4
	lea (dat_20022e).l,a1
	lea (dat_200236).l,a2
	bsr.s sub_2001d4
	lea (dat_20023c).l,a1
	lea (dat_20024a).l,a2
	btst.b #$5,($f7a7).w
	beq.s sub_2001d4
	lea (dat_200252).l,a2

sub_2001d4:
	subq.b #$1,(a5)
	bpl.s loc_200208
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
	bcs.s loc_2001f4
	moveq #$0,d0
loc_2001f4:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_200208:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200212:
	dc.b $21,$03,$01,$00,$01,$01,$01,$02
dat_20021a:
	dc.b $00,$ee,$00,$c0,$00,$40
dat_200220:
	dc.b $22,$03,$01,$00,$01,$01,$01,$02
dat_200228:
	dc.b $00,$c0,$00,$40,$00,$ee
dat_20022e:
	dc.b $23,$03,$01,$00,$01,$01,$01,$02
dat_200236:
	dc.b $00,$40,$00,$ee,$00,$c0
dat_20023c:
	dc.b $31,$06,$01,$01,$01,$00,$01,$02
	dc.b $01,$00,$01,$03,$01,$00
dat_20024a:
	dc.b $00,$00,$0e,$04,$00,$ee,$0e,$ee
dat_200252:
	dc.b $00,$00,$00,$00,$00,$00,$00,$00

sub_20025a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20026c:
	move.w d1,(a0)+
	dbf d0,loc_20026c
	move.w #$15,d4
loc_200276:
	move.b #$12,($f62a).w
	bsr.w sub_20084a
	bsr.s sub_20028c
	bsr.w sub_202588
	dbf d4,loc_200276
	rts

sub_20028c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002a2:
	bsr.s sub_2002d0
	dbf d0,loc_2002a2
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002ce
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002c8:
	bsr.s sub_2002d0
	dbf d0,loc_2002c8
loc_2002ce:
	rts

sub_2002d0:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002f8
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002e6
	move.w d1,(a0)+
	rts
loc_2002e6:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002f4
	move.w d1,(a0)+
	rts
loc_2002f4:
	addq.w #$2,(a0)+
	rts
loc_2002f8:
	addq.w #$2,a0
	rts

sub_2002fc:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200306:
	move.b #$12,($f62a).w
	bsr.w sub_20084a
	bsr.s sub_20031c
	bsr.w sub_202588
	dbf d4,loc_200306
	rts

sub_20031c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20032c:
	bsr.s sub_20034a
	dbf d0,loc_20032c
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200342:
	bsr.s sub_20034a
	dbf d0,loc_200342
	rts

sub_20034a:
	move.w (a0),d2
	beq.s loc_200376
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20035a
	subq.w #$2,(a0)+
	rts
loc_20035a:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200368
	subi.w #$20,(a0)+
	rts
loc_200368:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200376
	subi.w #$200,(a0)+
	rts
loc_200376:
	addq.w #$2,a0
	rts

sub_20037a:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200394:
	move.w d1,(a0)+
	dbf d0,loc_200394
	move.w #$15,d4
loc_20039e:
	move.b #$12,($f62a).w
	bsr.w sub_20084a
	bsr.s sub_2003b4
	bsr.w sub_202588
	dbf d4,loc_20039e
	rts

sub_2003b4:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ca:
	bsr.s sub_2003f8
	dbf d0,loc_2003ca
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003f6
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003f0:
	bsr.s sub_2003f8
	dbf d0,loc_2003f0
loc_2003f6:
	rts

sub_2003f8:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200424
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200410
	cmp.w d2,d1
	bcs.s loc_200410
	move.w d1,(a0)+
	rts
loc_200410:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200420
	cmp.w d2,d1
	bcs.s loc_200420
	move.w d1,(a0)+
	rts
loc_200420:
	subq.w #$2,(a0)+
	rts
loc_200424:
	addq.w #$2,a0
	rts

sub_200428:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200432:
	move.b #$12,($f62a).w
	bsr.w sub_20084a
	bsr.s sub_200448
	bsr.w sub_202588
	dbf d4,loc_200432
	rts

sub_200448:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200458:
	bsr.s sub_200476
	dbf d0,loc_200458
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20046e:
	bsr.s sub_200476
	dbf d0,loc_20046e
	rts

sub_200476:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004b2
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20048e
	addq.w #$2,(a0)+
	rts
loc_20048e:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004a0
	addi.w #$20,(a0)+
	rts
loc_2004a0:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004b2
	addi.w #$200,(a0)+
	rts
loc_2004b2:
	addq.w #$2,a0
	rts
	.incbin 1206, 310

sub_2005ec:
	lea (dat_200658).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200600:
	move.l (a2)+,(a3)+
	dbf d7,loc_200600
	rts

sub_200608:
	lea (dat_200658).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200618:
	move.l (a2)+,(a3)+
	dbf d7,loc_200618
	rts
	dc.b $43,$f9,$00,$20,$06,$58
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200634:
	move.l (a2)+,(a3)+
	dbf d7,loc_200634
	rts
	.incbin 1596, 28
dat_200658:
	.incbin 1624, 498

sub_20084a:
	move.w #$2300,sr
loc_20084e:
	tst.b ($f62a).w
	bne.s loc_20084e
	rts

sub_200856:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20086e(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20086e(pc,d0.w),d0
	rts
dat_20086e:
	.incbin 2158, 640

sub_200aee:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b4a
	move.w d2,d4
	tst.w d3
	bpl.w loc_200b08
	neg.w d3
loc_200b08:
	tst.w d4
	bpl.w loc_200b10
	neg.w d4
loc_200b10:
	cmp.w d3,d4
	bcc.w loc_200b22
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b54(pc,d4.w),d0
	bra.s loc_200b2c
loc_200b22:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b54(pc,d3.w),d0
loc_200b2c:
	tst.w d1
	bpl.w loc_200b38
	neg.w d0
	addi.w #$80,d0
loc_200b38:
	tst.w d2
	bpl.w loc_200b44
	neg.w d0
	addi.w #$100,d0
loc_200b44:
	movem.l (a7)+,d3-d4
	rts
loc_200b4a:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b54:
	.incbin 2900, 258

sub_200c56:
	btst.b #$3,$22(a0)
	beq.s loc_200c6a
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c6a:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c8c
	move.b $26(a0),d0
	bpl.s loc_200c86
	subq.b #$1,d0
loc_200c86:
	addi.b #$20,d0
	bra.s loc_200c98
loc_200c8c:
	move.b $26(a0),d0
	bpl.s loc_200c94
	addq.b #$1,d0
loc_200c94:
	addi.b #$1f,d0
loc_200c98:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200f22
	cmpi.b #$80,d0
	beq.w loc_200e80
	cmpi.b #$c0,d0
	beq.w loc_200de4
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
	bsr.w sub_2011ac
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
	bsr.w sub_2011ac
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200d26
	bpl.s loc_200d28
	cmpi.w #$fff2,d1
	blt.s loc_200d4e
	add.w d1,$c(a0)
loc_200d26:
	rts
loc_200d28:
	cmpi.w #$e,d1
	bgt.s loc_200d34
loc_200d2e:
	add.w d1,$c(a0)
	rts
loc_200d34:
	tst.b $38(a0)
	bne.s loc_200d2e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d4e:
	rts
	.incbin 3408, 34
loc_200d72:
	rts
	.incbin 3444, 68

sub_200db8:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200dc6
	move.b ($f768).w,d2
	move.w d0,d1
loc_200dc6:
	btst.l #$0,d2
	bne.s loc_200dd2
	move.b d2,$26(a0)
	rts
loc_200dd2:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200de4:
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
	bsr.w sub_20131c
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
	bsr.w sub_20131c
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200e58
	bpl.s loc_200e5a
	cmpi.w #$fff2,d1
	blt.w loc_200d72
	add.w d1,$8(a0)
loc_200e58:
	rts
loc_200e5a:
	cmpi.w #$e,d1
	bgt.s loc_200e66
loc_200e60:
	add.w d1,$8(a0)
	rts
loc_200e66:
	tst.b $38(a0)
	bne.s loc_200e60
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e80:
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
	bsr.w sub_2011ac
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
	bsr.w sub_2011ac
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200efa
	bpl.s loc_200efc
	cmpi.w #$fff2,d1
	blt.w loc_200d4e
	sub.w d1,$c(a0)
loc_200efa:
	rts
loc_200efc:
	cmpi.w #$e,d1
	bgt.s loc_200f08
loc_200f02:
	sub.w d1,$c(a0)
	rts
loc_200f08:
	tst.b $38(a0)
	bne.s loc_200f02
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f22:
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
	bsr.w sub_20131c
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
	bsr.w sub_20131c
	move.w (a7)+,d0
	bsr.w sub_200db8
	tst.w d1
	beq.s loc_200f9c
	bpl.s loc_200f9e
	cmpi.w #$fff2,d1
	blt.w loc_200d72
	sub.w d1,$8(a0)
loc_200f9c:
	rts
loc_200f9e:
	cmpi.w #$e,d1
	bgt.s loc_200faa
loc_200fa4:
	sub.w d1,$8(a0)
	rts
loc_200faa:
	tst.b $38(a0)
	bne.s loc_200fa4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200fc4:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200fda
	andi.w #$380,d0
loc_200fda:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_20103a
	bmi.s loc_20103e
	cmpi.b #$5,($ff1506).l
	beq.s loc_20100a
	cmpi.b #$6,($ff1506).l
	bne.s loc_201010
loc_20100a:
	andi.w #$7fff,$2(a0)
loc_201010:
	cmpi.b #$4,($ff1506).l
	bne.s loc_201020
	bclr.b #$6,$1(a0)
loc_201020:
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
loc_20103a:
	movea.l d1,a1
	rts
loc_20103e:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_2010a6
	btst.b #$6,$1(a0)
	bne.s loc_20106c
	cmpi.b #$14,d1
	bne.w loc_201190
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201190
loc_20106c:
	cmpi.b #$15,d1
	bne.s loc_20107a
	move.w #$60,d1
	bra.w loc_201190
loc_20107a:
	cmpi.b #$1e,d1
	bne.s loc_201088
	move.w #$61,d1
	bra.w loc_201190
loc_201088:
	cmpi.b #$1f,d1
	bne.s loc_201096
	move.w #$62,d1
	bra.w loc_201190
loc_201096:
	cmpi.b #$32,d1
	bne.w loc_201190
	move.w #$63,d1
	bra.w loc_201190
loc_2010a6:
	cmpi.b #$5,($ff1506).l
	bne.w loc_20110c
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010f6
	cmpi.b #$6,d1
	beq.s loc_2010f6
	tst.b ($ff1956).l
	beq.w loc_201190
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201106
	cmpi.b #$3c,d1
	beq.s loc_201106
	cmpi.b #$37,d1
	beq.s loc_201106
	cmpi.b #$2f,d1
	beq.s loc_201106
	cmpi.b #$16,d1
	beq.s loc_201106
	bra.w loc_201190
loc_2010f6:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201190
loc_201106:
	addq.b #$1,d1
	bra.w loc_201190
loc_20110c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20117c
	cmpi.b #$3,$0(a0)
	bcc.w loc_201190
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201190
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201140
	move.w #$6a,d1
	bra.s loc_201190
loc_201140:
	cmpi.b #$48,d1
	bne.s loc_20114c
	move.w #$6b,d1
	bra.s loc_201190
loc_20114c:
	cmpi.b #$4a,d1
	bne.s loc_201158
	move.w #$6c,d1
	bra.s loc_201190
loc_201158:
	cmpi.b #$10,d1
	bne.s loc_201164
	move.w #$6d,d1
	bra.s loc_201190
loc_201164:
	cmpi.b #$63,d1
	bne.s loc_201170
	move.w #$6e,d1
	bra.s loc_201190
loc_201170:
	cmpi.b #$43,d1
	bne.s loc_201190
	move.w #$6f,d1
	bra.s loc_201190
loc_20117c:
	btst.b #$6,$1(a0)
	beq.s loc_201190
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201190
	move.w #$51,d1
loc_201190:
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

sub_2011ac:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_2011c6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011c6
	btst.l d5,d4
	bne.s loc_2011d4
loc_2011c6:
	add.w a3,d2
	bsr.w sub_20126c
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2011d4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011c6
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011fa
	not.w d1
	neg.b (a4)
loc_2011fa:
	btst.l #$c,d4
	beq.s loc_20120a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20120a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201226
	neg.w d0
loc_201226:
	tst.w d0
	beq.s loc_2011c6
	bmi.s loc_201242
	cmpi.b #$10,d0
	beq.s loc_20125e
loc_201232:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201242:
	cmpa.w #$10,a3
	bne.s loc_201252
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201232
loc_201252:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011c6
loc_20125e:
	sub.w a3,d2
	bsr.w sub_20126c
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_20126c:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_201286
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201286
	btst.l d5,d4
	bne.s loc_201294
loc_201286:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201294:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201286
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012ba
	not.w d1
	neg.b (a4)
loc_2012ba:
	btst.l #$c,d4
	beq.s loc_2012ca
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ca:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012e6
	neg.w d0
loc_2012e6:
	tst.w d0
	beq.s loc_201286
	bmi.s loc_2012fc
loc_2012ec:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012fc:
	cmpa.w #$10,a3
	bne.s loc_20130c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012ec
loc_20130c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201286
	not.w d1
	rts

sub_20131c:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_201336
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201336
	btst.l d5,d4
	bne.s loc_201344
loc_201336:
	add.w a3,d3
	bsr.w sub_2013cc
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201344:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201336
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201372
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201372:
	btst.l #$b,d4
	beq.s loc_20137a
	neg.b (a4)
loc_20137a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201396
	neg.w d0
loc_201396:
	tst.w d0
	beq.s loc_201336
	bmi.s loc_2013b2
	cmpi.b #$10,d0
	beq.s loc_2013be
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013b2:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201336
loc_2013be:
	sub.w a3,d3
	bsr.w sub_2013cc
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2013cc:
	bsr.w sub_200fc4
	cmpi.l #$210000,d1
	beq.s loc_2013e6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013e6
	btst.l d5,d4
	bne.s loc_2013f4
loc_2013e6:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013f4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013e6
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201422
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201422:
	btst.l #$b,d4
	beq.s loc_20142a
	neg.b (a4)
loc_20142a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201446
	neg.w d0
loc_201446:
	tst.w d0
	beq.s loc_2013e6
	bmi.s loc_20145c
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20145c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013e6
	not.w d1
	rts

sub_20146c:
	rts
	.incbin 5230, 152
loc_201506:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201526
	tst.b ($ff0f01).l
	bne.s loc_201526
	move.b #$1,($ff156a).l
loc_201526:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_20158c
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20769a
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_20158c
	move.b #$1,($ff1508).l
loc_20158c:
	bset.b #$7,($f600).w
	bsr.w sub_20257a
	tst.b ($ff156e).l
	bne.s loc_2015b2
	btst.b #$7,($ff152e).l
	beq.s loc_2015e8
	bset.b #$0,($ff151d).l
	beq.s loc_2015be
loc_2015b2:
	bsr.w sub_200428
	bclr.b #$0,($ff151d).l
loc_2015be:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201658
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015e6
	bclr.b #$7,($ff152e).l
loc_2015e6:
	rts
loc_2015e8:
	bset.b #$0,($ff151d).l
	beq.s loc_2015f6
	bsr.w sub_2002fc
loc_2015f6:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201612
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20163a
loc_201612:
	tst.b ($ff1508).l
	bne.s loc_201658
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20163a:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201642:
	move.l #$0,(a1)+
	dbf d6,loc_201642
	move.b #$c,($f62a).w
	bsr.w sub_20084a
	rts
loc_201658:
	cmpi.w #$800,($f78e).w
	bne.s loc_201676
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201676:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20168c
	btst.b #$7,($ff152e).l
	beq.s loc_201692
loc_20168c:
	move.l #$eee0eee,d0
loc_201692:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20169a:
	move.l d0,(a1)+
	dbf d6,loc_20169a
loc_2016a0:
	move.b #$c,($f62a).w
	bsr.w sub_20084a
	bsr.w sub_202588
	bne.s loc_2016a0
	tst.l ($f680).w
	bsr.w sub_201b46
	moveq #$0,d0
	lea (dat_20e5a2).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016ca
	bsr.w sub_20268e
loc_2016ca:
	moveq #$1,d0
	bsr.w sub_20268e
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016e6:
	move.l d0,(a1)+
	dbf d1,loc_2016e6
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016f8:
	move.l d0,(a1)+
	dbf d1,loc_2016f8
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201708:
	move.l d0,(a1)+
	dbf d1,loc_201708
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20171a:
	move.l d0,(a1)+
	dbf d1,loc_20171a
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20172a:
	move.l d0,(a1)+
	dbf d1,loc_20172a
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20173a:
	move.l d0,(a1)+
	dbf d1,loc_20173a
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202264
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
	bsr.w sub_200608
	moveq #$3,d0
	bsr.w sub_2005ec
	bsr.w sub_2028f0
	bsr.w sub_202a44
	bset.b #$2,($f754).w
	bsr.w sub_203446
	bsr.w sub_20334c
	jsr (sub_20146c).l
	bsr.w sub_201a80
loc_2017ba:
	move.b #$c,($f62a).w
	bsr.w sub_20084a
	bsr.w sub_202588
	bne.s loc_2017ba
	tst.l ($f680).w
	bne.s loc_2017ba
	bsr.w sub_201a0c
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ba6
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20181e
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20181e:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201860
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201860:
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
	jsr (sub_20e460).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018f0
loc_2018ea:
	bsr.w sub_20037a
	bra.s loc_2018fe
loc_2018f0:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018ea
	bsr.w sub_20025a
loc_2018fe:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20190c:
	move.b #$8,($f62a).w
	bsr.w sub_20084a
	tst.b ($f7cc).w
	bne.s loc_20192a
	btst.b #$7,($f605).w
	beq.s loc_20192a
	eori.b #$1,($f63a).w
loc_20192a:
	btst.b #$0,($f63a).w
	beq.w loc_20199c
	bsr.w sub_201c0a
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20197a
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20190c
	subq.b #$1,($ff1508).l
	bpl.s loc_20195c
	clr.b ($ff1508).l
loc_20195c:
	move.w #$e,d0
	jsr (sub_205e86).l
	bsr.w sub_20769a
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201988
loc_20197a:
	andi.b #$70,d0
	beq.w loc_20190c
	clr.b ($ff1508).l
loc_201988:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201506
loc_20199c:
	bsr.w sub_201c50
	addq.w #$1,($ff1504).l
	jsr (sub_2076b0).l
	jsr (sub_20384c).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201506
	tst.w ($ff1502).l
	bne.w loc_201506
	tst.w ($ff1906).l
	bne.s loc_2019e4
	cmpi.b #$6,($d024).w
	bcs.s loc_2019e4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019e8
loc_2019e4:
	bsr.w sub_202a44
loc_2019e8:
	jsr (sub_2039f6).l
	tst.w ($ff190e).l
	bne.s loc_2019fa
	bsr.w sub_200184
loc_2019fa:
	jsr (sub_20bd86).l
	bsr.w sub_202588
	bsr.w sub_201ab2
	bra.w loc_20190c

sub_201a0c:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a24
	move.w #$78,$30(a1)
loc_201a24:
	rts
	.incbin 6694, 90

sub_201a80:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a92(pc,d0.w),($f796).w
	rts
dat_201a92:
	.incbin 6802, 32

sub_201ab2:
	subq.b #$1,($ff1910).l
	bpl.s loc_201ad0
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201ad0:
	subq.b #$1,($ff1912).l
	bpl.s loc_201aee
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201aee:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b16
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b16
	move.b #$0,($ff1915).l
loc_201b16:
	tst.b ($ff1916).l
	beq.s loc_201b44
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b44:
	rts

sub_201b46:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b68
	cmpi.b #$2,d0
	bne.s loc_201b68
	add.b ($ff156a).l,d0
loc_201b68:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b80(pc,d1.w),d0
	jmp (sub_205e86).l
dat_201b80:
	.incbin 7040, 38

sub_201ba6:
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

sub_201c0a:
	move.w #$ab,d0
	jsr (sub_202352).l
	bset.b #$7,($f63a).w
	bne.s loc_201c4e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c34
loc_201c2a:
	move.w #$d5,d0
	jmp (sub_205e86).l
loc_201c34:
	tst.b ($ff151f).l
	bne.s loc_201c2a
	tst.b ($ff1520).l
	bne.s loc_201c2a
	move.w #$90,d0
	jmp (sub_205e86).l
loc_201c4e:
	rts

sub_201c50:
	bclr.b #$7,($f63a).w
	beq.s loc_201c8a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c70
loc_201c66:
	move.w #$d6,d0
	jmp (sub_205e86).l
loc_201c70:
	tst.b ($ff151f).l
	bne.s loc_201c66
	tst.b ($ff1520).l
	bne.s loc_201c66
	move.w #$91,d0
	jmp (sub_205e86).l
loc_201c8a:
	rts
loc_201c8c:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201d18
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201cc8
	move.w #$700,d0
loc_201cc4:
	dbf d0,loc_201cc4
loc_201cc8:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201cfe(pc,d0.w),d0
	jsr dat_201cfe(pc,d0.w)
loc_201cde:
	jsr (sub_202376).l
	tst.b ($f63a).w
	bne.s loc_201cf2
	bsr.w sub_20212a
	bsr.w sub_202118
loc_201cf2:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201cfe:
	.incbin 7422, 26
loc_201d18:
	tst.b ($ff1957).l
	beq.w loc_201cde
	cmpi.b #$2,($ff1506).l
	bne.w loc_201cde
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201d46
	move.w #$700,d0
loc_201d42:
	dbf d0,loc_201d42
loc_201d46:
	move.w #$1,($f6fc).w
	jsr (sub_2022ea).l
	tst.b ($f64e).w
	bne.s loc_201d7e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201da2
loc_201d7e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201da2:
	move.w ($f624).w,(a5)
	jsr (sub_202306).l
	bra.w loc_201cde
	.incbin 7600, 60
	jsr (sub_2022ea).l
	bsr.w sub_202186
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
	bsr.w sub_205db2
	tst.b ($f767).w
	beq.s loc_201e9a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e9a:
	jsr (sub_20e460).l
	jsr (sub_202306).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f42
	bsr.w sub_2025fa
	jmp (loc_209746).l
	dc.b $4e,$75
	jsr (sub_2022ea).l
	bsr.w sub_202186
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
	jsr (sub_202306).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f42
	bra.w loc_2025de
	.incbin 8050, 16
	bsr.w sub_20206e
	cmpi.b #$1,($ff1903).l
	bne.s loc_201fa4
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201fa4:
	move.w ($f624).w,(a5)
	bra.w loc_2025de
	.incbin 8108, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_202306).l
	lea ($d000).w,a0
	bsr.w sub_205db2
	tst.b ($f767).w
	beq.s loc_202060
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202060:
	tst.w ($f614).w
	beq.w loc_20206c
	subq.w #$1,($f614).w
loc_20206c:
	rts

sub_20206e:
	jsr (sub_2022ea).l
	bsr.w sub_202186
	tst.b ($f64e).w
	bne.s loc_2020a4
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2020c8
loc_2020a4:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2020c8:
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
	jmp (sub_202306).l
	dc.b $4e,$73

sub_202118:
	tst.b ($d02a).w
	bne.s loc_202128
	tst.w ($f786).w
	beq.s loc_202128
	addq.w #$1,($f786).w
loc_202128:
	rts

sub_20212a:
	tst.w ($f780).w
	beq.s loc_202134
	addq.w #$1,($f780).w
loc_202134:
	tst.w ($f782).w
	beq.s loc_20213e
	addq.w #$1,($f782).w
loc_20213e:
	rts
	.incbin 8512, 42

sub_20216a:
	bsr.w sub_2022ea
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202306

sub_202186:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202194
	addq.w #$2,a1

sub_202194:
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

sub_2021c2:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20223e).l,a2
	moveq #$12,d7
loc_2021d6:
	move.w (a2)+,(a0)
	dbf d7,loc_2021d6
	move.w (dat_202240).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021fc:
	move.w d0,(a1)
	dbf d7,loc_2021fc
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20222e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20222e
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20223e:
	dc.b $80,$04
dat_202240:
	.incbin 8768, 36

sub_202264:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202286:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202286
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2022b4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022b4
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2022d2:
	move.l d0,(a1)+
	dbf d1,loc_2022d2
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022e2:
	move.l d0,(a1)+
	dbf d1,loc_2022e2
	rts

sub_2022ea:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022fa:
	btst.b #$0,($a11100).l
	bne.s loc_2022fa
	rts

sub_202306:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8980, 62

sub_202352:
	tst.b ($f00a).w
	bne.s loc_20235e
	move.b d0,($f00a).w
	rts
loc_20235e:
	tst.b ($f00b).w
	bne.s loc_20236a
	move.b d0,($f00b).w
	rts
loc_20236a:
	tst.b ($f00c).w
	bne.s loc_202374
	move.b d0,($f00c).w
loc_202374:
	rts

sub_202376:
	jsr (sub_2022ea).l
	tst.b ($f00a).w
	beq.s loc_202390
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202390:
	tst.b ($f00b).w
	beq.s loc_2023a4
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2023a4:
	tst.b ($f00c).w
	beq.s loc_2023b8
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2023b8:
	bra.w sub_202306
	.incbin 9148, 32

sub_2023dc:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20249e).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023f8

sub_2023ee:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024b4).l,a3
loc_2023f8:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202406
	adda.w #$a,a3
loc_202406:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024ca
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202426
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202426:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202472
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20244e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20244e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20245c:
	lsr.w #$4,d0
loc_20245e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20246c
	jmp (a3)

sub_202468:
	moveq #$0,d4
	moveq #$8,d3
loc_20246c:
	dbf d0,loc_20245e
	bra.s sub_202426
loc_202472:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202480
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202480:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20245c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20245c
loc_20249e:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202468
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202468
	rts
dat_2024b4:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202468
	rts

sub_2024ca:
	move.b (a0)+,d0
loc_2024cc:
	cmpi.b #$ff,d0
	bne.s loc_2024d4
	rts
loc_2024d4:
	move.w d0,d7
loc_2024d6:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024cc
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
	bne.s loc_202504
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024d6
loc_202504:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202510:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202510
	bra.s loc_2024d6

sub_20251c:
	movem.l a1-a2,-(a7)
	lea (dat_20e5b2).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202534:
	tst.l (a2)
	beq.s loc_20253c
	addq.w #$6,a2
	bra.s loc_202534
loc_20253c:
	move.w (a1)+,d0
	bmi.s loc_202548
loc_202540:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202540
loc_202548:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9550, 44

sub_20257a:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202580:
	clr.l (a2)+
	dbf d0,loc_202580
	rts

sub_202588:
	tst.l ($f680).w
	beq.s loc_2025dc
	tst.w ($f6f8).w
	bne.s loc_2025dc
	movea.l ($f680).w,a0
	lea (loc_20249e).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2025aa
	adda.w #$a,a3
loc_2025aa:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024ca
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
loc_2025dc:
	rts
loc_2025de:
	tst.w ($f6f8).w
	beq.w loc_20267c
loc_2025e6:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202618

sub_2025fa:
	tst.w ($f6f8).w
	beq.s loc_20267c
	tst.b ($f744).w
	bne.s loc_2025e6
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202618:
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
loc_20264c:
	movea.w #$8,a5
	bsr.w sub_202468
	subq.w #$1,($f6f8).w
	beq.s loc_20267e
	subq.w #$1,($f6fa).w
	bne.s loc_20264c
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20267c:
	rts
loc_20267e:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202684:
	move.l $6(a0),(a0)+
	dbf d0,loc_202684
	rts

sub_20268e:
	lea (dat_20e5b2).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2026a0:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023dc
	dbf d1,loc_2026a0
	rts
	.incbin 9920, 560

sub_2028f0:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20294c).l,a0
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
	bra.w loc_202978
dat_20294c:
	dc.b $00,$04,$00,$00,$0d,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202958:
	.incbin 10584, 32
loc_202978:
	tst.b ($ff1522).l
	beq.s loc_202998
	jsr (sub_206a10).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202996
	moveq #$0,d0
loc_202996:
	bra.s loc_2029d4
loc_202998:
	lea (dat_202a10).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2029ba
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202958).l,a1
	adda.w d0,a1
	bra.s loc_2029c4
loc_2029ba:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2029c4:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2029d4:
	subi.w #$a0,d1
	bcc.s loc_2029dc
	moveq #$0,d1
loc_2029dc:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029e6
	move.w d2,d1
loc_2029e6:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029f2
	moveq #$0,d0
loc_2029f2:
	cmp.w ($f72e).w,d0
	blt.s loc_2029fc
	move.w ($f72e).w,d0
loc_2029fc:
	move.w d0,($f704).w
	bsr.w sub_202a18
	lea (dat_202a14).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a10:
	dc.b $00,$30,$06,$2c
dat_202a14:
	dc.b $7f,$7f,$7f,$7f

sub_202a18:
	swap d0
	lsr.l #$2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	lsr.l #$1,d1
	move.w d1,($f718).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_202a44:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a50
	rts
loc_202a50:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202bb8
	bsr.w sub_202c58
	bsr.w sub_2034e0
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202ee2
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202eae
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e7a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202e4a
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
	bsr.w sub_202b30
	move.w ($f718).w,d0
	neg.w d0
	moveq #$17,d6
loc_202af4:
	move.w d0,(a1)+
	dbf d6,loc_202af4
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202b02:
	move.w d0,(a1)+
	dbf d6,loc_202b02
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b76
dat_202b26:
	dc.b $05,$03,$02,$02,$01,$01,$01,$01
	dc.b $01,$00

sub_202b30:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$8,d6
	adda.w #$34,a1
loc_202b48:
	move.b d3,d0
	jsr (sub_200856).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202b26(pc,d6.w),d1
loc_202b64:
	move.w d5,-(a1)
	dbf d1,loc_202b64
	addq.b #$6,d3
	dbf d6,loc_202b48
	adda.w #$34,a1
	rts
loc_202b76:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b84(pc,d2.w)
loc_202b82:
	move.w (a2)+,d0
loc_202b84:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b82
	rts
	dc.b $44,$40,$4e,$fb,$20,$04,$44,$40
	dc.b $22,$c0
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b82
	rts

sub_202bb8:
	move.w ($f700).w,d4
	bsr.s sub_202bec
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bea
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202be4
	bset.b #$2,($f754).w
	rts
loc_202be4:
	bset.b #$3,($f754).w
loc_202bea:
	rts

sub_202bec:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bfe
	bcs.s loc_202c2e
	bra.s loc_202c04
loc_202bfe:
	clr.w ($f73a).w
	rts
loc_202c04:
	cmpi.w #$10,d0
	blt.s loc_202c0e
	move.w #$10,d0
loc_202c0e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202c1c
	move.w ($f72a).w,d0
loc_202c1c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c2e:
	cmpi.w #$fff0,d0
	bge.s loc_202c38
	move.w #$fff0,d0
loc_202c38:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202c1c
	move.w ($f728).w,d0
	bra.s loc_202c1c
	.incbin 11336, 16

sub_202c58:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c6c
	subq.w #$5,d0
loc_202c6c:
	btst.b #$1,$22(a6)
	beq.s loc_202c8c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cd8
	subi.w #$40,d0
	bcc.s loc_202cd8
	tst.b ($f75c).w
	bne.s loc_202cea
	bra.s loc_202c98
loc_202c8c:
	sub.w ($f73e).w,d0
	bne.s loc_202c9e
	tst.b ($f75c).w
	bne.s loc_202cea
loc_202c98:
	clr.w ($f73c).w
	rts
loc_202c9e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202cc6
	move.w $14(a6),d1
	bpl.s loc_202cae
	neg.w d1
loc_202cae:
	cmpi.w #$800,d1
	bcc.s loc_202cd8
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d38
	cmpi.w #$fffa,d0
	blt.s loc_202d02
	bra.s loc_202cf0
loc_202cc6:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d38
	cmpi.w #$fffe,d0
	blt.s loc_202d02
	bra.s loc_202cf0
loc_202cd8:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d38
	cmpi.w #$fff0,d0
	blt.s loc_202d02
	bra.s loc_202cf0
loc_202cea:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cf0:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d42
	bra.w loc_202d0e
loc_202d02:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d0e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d66
	cmpi.w #$ff00,d1
	bgt.s loc_202d32
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d66
loc_202d32:
	move.w ($f72c).w,d1
	bra.s loc_202d66
loc_202d38:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d42:
	cmp.w ($f72e).w,d1
	blt.s loc_202d66
	subi.w #$800,d1
	bcs.s loc_202d62
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d66
loc_202d62:
	move.w ($f72e).w,d1
loc_202d66:
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
	bne.s loc_202da8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202da2
	bset.b #$0,($f754).w
	rts
loc_202da2:
	bset.b #$1,($f754).w
loc_202da8:
	rts
	.incbin 11690, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e48
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e42
	bset.b #$4,($f756).w
	rts
loc_202e42:
	bset.b #$5,($f756).w
loc_202e48:
	rts

sub_202e4a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e78
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e72
	bset.b #$0,($f756).w
	rts
loc_202e72:
	bset.b #$1,($f756).w
loc_202e78:
	rts

sub_202e7a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202eac
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202ea6
	bset.b d6,($f756).w
	bra.s loc_202eac
loc_202ea6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202eac:
	rts

sub_202eae:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ee0
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202eda
	bset.b d6,($f758).w
	bra.s loc_202ee0
loc_202eda:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ee0:
	rts

sub_202ee2:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202f14
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202f0e
	bset.b d6,($f75a).w
	bra.s loc_202f14
loc_202f0e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202f14:
	rts
	.incbin 12054, 44

sub_202f42:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203000
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030e6
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030e8
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202ffe
	bclr.b #$0,(a2)
	beq.s loc_202fb4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203314
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ea
loc_202fb4:
	bclr.b #$1,(a2)
	beq.s loc_202fce
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203314
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ea
loc_202fce:
	bclr.b #$2,(a2)
	beq.s loc_202fe4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203314
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203140
loc_202fe4:
	bclr.b #$3,(a2)
	beq.s loc_202ffe
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203314
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203140
loc_202ffe:
	rts

sub_203000:
	lea (dat_2033cc).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20301c
	bclr.b #$1,(a2)
	beq.s loc_203066
	move.w #$e0,d4
loc_20301c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203096(pc,d0.w),a3
	beq.s loc_20304e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203314
	movem.l (a7)+,d4-d5
	bsr.w sub_2030ea
	movea.l (a7)+,a0
	bra.s loc_203066
loc_20304e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203116
	movea.l (a7)+,a0
loc_203066:
	tst.b (a2)
	bne.s loc_20306c
	rts
loc_20306c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203080
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203080:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2030a6
dat_203096:
	.incbin 12438, 16
loc_2030a6:
	moveq #$f,d6
	move.l #$800000,d7
loc_2030ae:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2030da
	btst.b d0,(a2)
	beq.s loc_2030da
	add.w d0,d0
	movea.l dat_203096(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ec
	movem.l (a7)+,d4-d5
	bsr.w sub_203314
	bsr.w sub_20316e
	movem.l (a7)+,d4-d5/a0
loc_2030da:
	addi.w #$10,d4
	dbf d6,loc_2030ae
	clr.b (a2)
	rts

sub_2030e6:
	rts

sub_2030e8:
	rts

sub_2030ea:
	moveq #$15,d6

sub_2030ec:
	move.l #$800000,d7
	move.l d0,d1
loc_2030f4:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ec
	move.l d1,d0
	bsr.w sub_20316e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030f4
	rts

sub_203116:
	move.l #$800000,d7
	move.l d0,d1
loc_20311e:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ee
	move.l d1,d0
	bsr.w sub_20316e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20311e
	rts

sub_203140:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20314a:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ec
	move.l d1,d0
	bsr.w sub_20316e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20314a
	rts

sub_20316e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2031aa
	btst.b #$3,(a0)
	bne.s loc_20318a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20318a:
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
loc_2031aa:
	btst.b #$3,(a0)
	bne.s loc_2031cc
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
loc_2031cc:
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

sub_2031ec:
	add.w (a3),d5

sub_2031ee:
	add.w $4(a3),d4

sub_2031f2:
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
	beq.s loc_20323c
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
loc_20323c:
	rts
	.incbin 12862, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2031f2
	bne.s loc_2032a2
	movem.l (a7)+,d3-d5
	bra.s loc_2032cc
loc_2032a2:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2032d0
	bne.s loc_2032cc
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20331a
	bsr.w sub_20316e
	movem.l (a7)+,d3-d5
loc_2032cc:
	movea.l (a7)+,a0
	rts

sub_2032d0:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_203310
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_203310
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_203310
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_203310
	moveq #$0,d0
	rts
loc_203310:
	moveq #$1,d0
	rts

sub_203314:
	add.w (a3),d5

sub_203316:
	add.w $4(a3),d4

sub_20331a:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13104, 28

sub_20334c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203376
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20339e

sub_203376:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20337a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203314
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030ec
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20337a
	rts
loc_20339e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2033a2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033cc).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20340e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2033a2
	rts
dat_2033cc:
	.incbin 13260, 50
dat_2033fe:
	.incbin 13310, 16

sub_20340e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033fe(pc,d0.w),a3
	beq.s loc_203430
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203314
	movem.l (a7)+,d4-d5
	bsr.w sub_2030ea
	bra.s loc_203444
loc_203430:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203316
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203116
loc_203444:
	rts

sub_203446:
	moveq #$0,d0
	lea (dat_20e5a2).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023ee
	movea.l (a2)+,a0
	bsr.w sub_203492
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2005ec
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203490
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203490
	bsr.w sub_20251c
loc_203490:
	rts

sub_203492:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20349c:
	move.l d0,(a3)+
	dbf d1,loc_20349c
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2034b2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2034b2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b7a).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034cc:
	move.w d1,d0
	movea.l a3,a0
loc_2034d0:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034d0
	lea $80(a3),a3
	dbf d2,loc_2034cc
	rts

sub_2034e0:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20355a(pc,d0.w),d0
	jsr dat_20355a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203506
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203506:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203534
	bcc.s loc_203536
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20352a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20352a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203534:
	rts
loc_203536:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20354e
	btst.b #$1,($d022).w
	beq.s loc_20354e
	add.w d1,d1
	add.w d1,d1
loc_20354e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20355a:
	.incbin 13658, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203614(pc,d0.w),d0
	jmp dat_203614(pc,d0.w)
dat_203614:
	.incbin 13844, 38
	btst.b #$4,($f7a7).w
	bne.s loc_20364a
	move.w #$710,($f726).w
	rts
loc_20364a:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_203806
	bne.w loc_203696
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_20367a
	cmpi.w #$498,$c(a1)
	ble.s loc_203674
	move.w #$5d0,d0
	bra.s loc_20367e
loc_203674:
	move.w #$3d0,d0
	bra.s loc_20367e
loc_20367a:
	move.w #$1d0,d0
loc_20367e:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_20368c
	neg.w d0
loc_20368c:
	cmpi.w #$2,d0
	bgt.s loc_203696
	move.w d1,($f72e).w
loc_203696:
	rts
	.incbin 13976, 24
	move.w #$310,($f726).w
	rts
	.incbin 14008, 334

sub_203806:
	cmp.w ($d008).w,d0
	ble.s loc_203810
	moveq #$0,d0
	rts
loc_203810:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_20381c
	neg.w d1
loc_20381c:
	cmpi.w #$4,d1
	bge.s loc_203828
	move.w ($f726).w,($f72e).w
loc_203828:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203848
	cmp.w ($f72a).w,d0
	ble.s loc_203840
	move.w ($f72a).w,d0
loc_203840:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203848:
	moveq #$1,d0
	rts

sub_20384c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203854:
	move.b (a0),d0
	beq.s loc_20386a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c6e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20386a:
	lea $40(a0),a0
	dbf d7,loc_203854
	rts

sub_203874:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2038b2
	bpl.s loc_2038a4
	btst.b #$1,$2c(a0)
	beq.s loc_2038a4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2038b2
loc_2038a4:
	btst.b #$2,$2c(a0)
	bne.s loc_2038b2
	addi.w #$38,$12(a0)
loc_2038b2:
	tst.w $12(a0)
	bmi.s loc_2038c6
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2038c6
	move.w #$1000,$12(a0)
loc_2038c6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038d6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203912
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203912
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203910
	neg.w d1
loc_203910:
	add.w d1,d0
loc_203912:
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

sub_20392c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20399c
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039b8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2039b8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203976
	cmpi.w #$800,d3
	bcs.s loc_203988
	subi.w #$800,d3
	bra.s loc_203988
loc_203976:
	cmpi.w #$700,($f704).w
	bcs.s loc_203988
	cmpi.w #$100,d3
	bcc.s loc_203988
	addi.w #$800,d3
loc_203988:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2039b8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2039b8
loc_20399c:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2039b8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2039b8:
	rts
	.incbin 14778, 30

sub_2039d8:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039de:
	move.l d1,(a1)+
	dbf d0,loc_2039de
	rts
dat_2039e6:
	.incbin 14822, 16

sub_2039f6:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203a02:
	tst.w (a4)
	beq.w loc_203ac2
	moveq #$2,d6
loc_203a0a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203aba
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a70
	movea.l dat_2039e6(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a54
	cmpi.w #$800,d2
	bcs.s loc_203a66
	subi.w #$800,d2
	bra.s loc_203a66
loc_203a54:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a66
	cmpi.w #$100,d2
	bcc.s loc_203a66
	addi.w #$800,d2
loc_203a66:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a92
loc_203a70:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a92
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203aba
	cmpi.w #$180,d2
	bcc.s loc_203aba
loc_203a92:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203ab0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203ab4
loc_203ab0:
	bsr.w sub_203ae4
loc_203ab4:
	bset.b #$7,$1(a0)
loc_203aba:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203a0a
loc_203ac2:
	lea $80(a4),a4
	dbf d7,loc_203a02
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203adc
	move.l #$0,(a2)
	rts
loc_203adc:
	move.b #$0,-$5(a2)
	rts

sub_203ae4:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b2a
	btst.l #$1,d4
	bne.w loc_203b78
loc_203af6:
	cmpi.b #$50,d5
	beq.s loc_203b28
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
	bne.s loc_203b22
	addq.w #$1,d0
loc_203b22:
	move.w d0,(a2)+
	dbf d1,loc_203af6
loc_203b28:
	rts
loc_203b2a:
	btst.l #$1,d4
	bne.w loc_203bbe
loc_203b32:
	cmpi.b #$50,d5
	beq.s loc_203b76
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
	bne.s loc_203b70
	addq.w #$1,d0
loc_203b70:
	move.w d0,(a2)+
	dbf d1,loc_203b32
loc_203b76:
	rts
loc_203b78:
	cmpi.b #$50,d5
	beq.s loc_203bbc
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
	bne.s loc_203bb6
	addq.w #$1,d0
loc_203bb6:
	move.w d0,(a2)+
	dbf d1,loc_203b78
loc_203bbc:
	rts
loc_203bbe:
	cmpi.b #$50,d5
	beq.s loc_203c10
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
	bne.s loc_203c0a
	addq.w #$1,d0
loc_203c0a:
	move.w d0,(a2)+
	dbf d1,loc_203bbe
loc_203c10:
	rts
	.incbin 15378, 92
dat_203c6e:
	.incbin 15470, 262

sub_203d74:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d86
	move.w #$0,(a1)
	rts
loc_203d86:
	tst.w (a1)
	bne.s loc_203d90
	move.b #$1,$1(a1)
loc_203d90:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203dda
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203dcc
	neg.w $10(a0)
loc_203dcc:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205e86
loc_203dda:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203df8
	cmpa.w #$d040,a0
	beq.s loc_203df8
	tst.b ($ff1906).l
	beq.s loc_203df8
	jmp (loc_20733c).l
loc_203df8:
	move.b $2a(a0),d0
	beq.s loc_203e22
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203e14
	cmpi.b #$2d,d0
	bcs.s loc_203e1e
	move.b #$2d,d0
	bra.s loc_203e1e
loc_203e14:
	cmpi.b #$1e,d0
	bcs.s loc_203e1e
	move.b #$1e,d0
loc_203e1e:
	move.b d0,$2a(a0)
loc_203e22:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e30(pc,d0.w),d1
	jmp dat_203e30(pc,d1.w)
dat_203e30:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203e3a:
	tst.b ($d300).w
	bne.s loc_203e78
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e78:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203ea0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203ea0:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203ed4:
	tst.b ($ff1506).l
	bne.s loc_203f3a
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203f3a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203fb4
	cmpi.b #$2f,d1
	bne.s loc_203f3c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f3a
	tst.b $2c(a0)
	beq.s loc_203f3a
	jsr (sub_2078ac).l
	bne.s loc_203f3a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f32
	moveq #$0,d0
loc_203f32:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f3a:
	rts
loc_203f3c:
	rts
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	cmpi.b #$10,d1
	bne.s loc_203f5c
	cmpi.w #$210,d2
	bcc.s loc_203f3a
	cmpi.w #$208,d2
	bcs.s loc_203f3a
	bra.s loc_203f6e
loc_203f5c:
	cmpi.b #$21,d1
	bne.s loc_203f3a
	cmpi.w #$2a0,d2
	bcc.s loc_203f3a
	cmpi.w #$298,d2
	bcs.s loc_203f3a
loc_203f6e:
	tst.w $14(a0)
	beq.s loc_203f3a
	jsr (sub_2078ac).l
	bne.s loc_203f3a
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	andi.w #$fff8,d2
	move.w d2,$c(a1)
	move.b #$1,$28(a1)
	move.w $14(a0),d0
	bpl.s loc_203f9e
	neg.w d0
loc_203f9e:
	cmpi.w #$600,d0
	bcc.s loc_203faa
	move.b #$2,$28(a1)
loc_203faa:
	move.w #$a1,d0
	jmp (sub_202352).l

sub_203fb4:
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

sub_203fda:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204058
	cmpi.b #$4,$24(a0)
	bcc.s loc_204058
	btst.b #$3,$2c(a0)
	bne.s loc_204058
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_204058
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_204024
	neg.w d0
loc_204024:
	move.w d0,$12(a0)
	move.b #$40,$2b(a0)
	move.w $8(a0),d0
	andi.w #$fff0,d0
	addq.w #$8,d0
	move.w d0,$8(a0)
	move.w d0,$3e(a0)
	move.b #$2,$1c(a0)
	bset.b #$2,$22(a0)
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
loc_204058:
	rts

sub_20405a:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2040f6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2040f6
	btst.b #$0,$2c(a0)
	bne.s loc_2040f6
	btst.b #$2,$2c(a0)
	bne.s loc_2040f6
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_2040f6
	move.w ($f786).w,d0
	beq.s loc_2040b8
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_2040b8
	clr.b ($f784).w
loc_2040b8:
	bclr.b #$2,$22(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.w #$0,$14(a0)
	move.b #$2c,$1c(a0)
	bset.b #$2,$2c(a0)
	move.b #$7,$1f(a0)
	move.w $c(a0),d0
	subi.w #$18,d0
	andi.w #$fff0,d0
	addi.w #$18,d0
	move.w d0,$c(a0)
loc_2040f6:
	rts

sub_2040f8:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204156
	cmpi.b #$4,$24(a0)
	bcc.s loc_204156
	tst.b ($ff1521).l
	bne.s loc_204156
	tst.b ($ff151f).l
	bne.s loc_204156
	tst.w $30(a0)
	bne.s loc_204156
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_204156
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_204158(pc,d0.w),d0
	lea dat_204158(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_20414a:
	move.w (a3)+,d1
	bmi.s loc_204156
	cmp.w d1,d0
	bne.s loc_20414a
	bra.w loc_2070de
loc_204156:
	rts
dat_204158:
	.incbin 16728, 32

sub_204178:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204232
	tst.b ($ff1521).l
	bne.w loc_204232
	tst.b ($ff151f).l
	bne.w loc_204232
	cmpi.w #$980,$8(a0)
	bcs.s loc_2041a8
	cmpi.w #$a20,$8(a0)
	bcs.w loc_204232
loc_2041a8:
	btst.b #$7,($f7a7).w
	bne.w loc_204232
	tst.w $30(a0)
	bne.s loc_204232
	cmpi.b #$2,($ff1507).l
	bne.s loc_2041dc
	cmpi.w #$a10,$8(a0)
	bcs.s loc_2041f4
	tst.b ($ff1958).l
	beq.s loc_204232
	tst.b ($ff156a).l
	bne.s loc_2041ee
	bra.s loc_2041f4
loc_2041dc:
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041f4
	tst.b ($ff156a).l
	beq.s loc_2041f4
loc_2041ee:
	tst.b ($f668).w
	beq.s loc_204232
loc_2041f4:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_204234).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_204228
	tst.b ($ff156a).l
	bne.s loc_204228
	lea (dat_20423a).l,a1
loc_204228:
	cmp.w (a1)+,d0
	beq.w loc_2070de
	dbf d6,loc_204228
loc_204232:
	rts
dat_204234:
	dc.b $02,$43,$02,$44,$02,$45
dat_20423a:
	dc.b $02,$87,$02,$88,$02,$89

sub_204240:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204310
	tst.b ($f7a7).w
	bne.w loc_204310
	cmpi.b #$2,($ff152e).l
	bcc.s loc_204274
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_20426c
	addi.b #$1e,d0
loc_20426c:
	cmp.b ($f7b3).w,d0
	beq.w loc_204310
loc_204274:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_2042cc
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_204310
loc_2042cc:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_204310
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_202352).l
loc_204310:
	rts

sub_204312:
	rts
	.incbin 17172, 80
	bsr.s sub_204312
	bsr.w sub_203ed4
	tst.w ($ff1588).l
	beq.s loc_204384
	btst.b #$4,($f605).w
	beq.s loc_204384
	move.b #$1,($ff1906).l
	rts
loc_204384:
	tst.b ($f7cc).w
	bne.s loc_204390
	move.w ($f604).w,($f602).w
loc_204390:
	btst.b #$0,$2c(a0)
	beq.s loc_20439e
	bsr.w sub_2045b8
	bra.s loc_2043c4
loc_20439e:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2043f4(pc,d0.w),d1
	jsr dat_2043f4(pc,d1.w)
	bsr.w sub_204240
	bsr.w sub_204178
	bsr.w sub_2040f8
	bsr.w sub_20405a
	bsr.w sub_203fda
loc_2043c4:
	bsr.s sub_204402
	bsr.w sub_2044c2
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_20587c
	tst.b $2c(a0)
	bmi.s loc_2043ee
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2043ee
	jsr (sub_206ee0).l
loc_2043ee:
	bsr.w sub_205740
	rts
dat_2043f4:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_204402:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204426
	move.w $30(a0),d0
	beq.s loc_204418
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204426
loc_204418:
	btst.b #$6,$2c(a0)
	bne.s loc_204426
	jsr (sub_20392c).l
loc_204426:
	tst.b ($ff151f).l
	beq.s loc_20446a
	tst.w $32(a0)
	beq.s loc_20446a
	subq.w #$1,$32(a0)
	bne.s loc_20446a
	tst.b ($ff1520).l
	bne.s loc_204462
	tst.b ($ff1958).l
	bne.s loc_204462
	tst.b ($ff152e).l
	bne.s loc_20445c
	move.w #$e,d0
	jsr (sub_205e86).l
loc_20445c:
	jsr (sub_201b46).l
loc_204462:
	move.b #$0,($ff151f).l
loc_20446a:
	tst.b ($ff1520).l
	beq.s loc_2044c0
	tst.w $34(a0)
	beq.s loc_2044c0
	subq.w #$1,$34(a0)
	bne.s loc_2044c0
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2044b8
	tst.b ($ff1958).l
	bne.s loc_2044b8
	tst.b ($ff152e).l
	bne.s loc_2044b2
	move.w #$e,d0
	jsr (sub_205e86).l
loc_2044b2:
	jsr (sub_201b46).l
loc_2044b8:
	move.b #$0,($ff1520).l
loc_2044c0:
	rts

sub_2044c2:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_2044de:
	move.b ($ff1522).l,($ff1546).l
	move.w $8(a0),($ff1548).l
	move.w $c(a0),($ff154a).l
	move.w $14(a0),($ff1564).l
	move.w $10(a0),($ff1566).l
	move.w $12(a0),($ff1568).l
	move.b $22(a0),($ff154c).l
	bclr.b #$3,($ff154c).l
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
	bcs.s loc_2045b0
	move.l #$50000,d0
loc_2045b0:
	move.l d0,($ff1570).l
	rts

sub_2045b8:
	tst.b $2a(a0)
	bne.w loc_204676
	tst.b ($f784).w
	beq.w loc_204676
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2045d6
	neg.w d0
loc_2045d6:
	tst.w ($f786).w
	bne.s loc_2045e2
	move.w #$1,($f786).w
loc_2045e2:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045f8
	move.b #$1,($ff1502).l
	bra.w loc_205e82
loc_2045f8:
	cmpi.w #$d2,d1
	bcs.s loc_20464c
	cmpi.b #$2,($ff1522).l
	beq.s loc_20464a
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204622
	move.w #$82,d0
	jsr (sub_205e86).l
	moveq #$0,d0
loc_204622:
	add.b ($f784).w,d0
	bpl.s loc_20462c
	moveq #$0,d0
	bra.s loc_204634
loc_20462c:
	cmpi.b #$3,d0
	bcs.s loc_204634
	moveq #$2,d0
loc_204634:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2044de
	move.b #$2,($ff1522).l
loc_20464a:
	rts
loc_20464c:
	cmpi.w #$5a,d1
	bcc.s loc_204664
	cmp.w d2,d0
	bcc.w loc_203e3a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204664:
	cmp.w d2,d0
	bcc.s loc_204676
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204676:
	rts
	tst.b ($f75f).w
	beq.s loc_20468a
	cmpi.b #$5,$1c(a0)
	bne.s loc_2046e4
	clr.b ($f75f).w
loc_20468a:
	bsr.w sub_203d74
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2046ba
	tst.b ($ff195b).l
	beq.s loc_2046a8
	cmpi.b #$79,$1a(a0)
	bne.s loc_2046e4
	bra.s loc_2046b0
loc_2046a8:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2046e4
loc_2046b0:
	bsr.w sub_205078
	jmp (sub_203874).l
loc_2046ba:
	bsr.w sub_2048ee
	bsr.w sub_2045b8
	bsr.w sub_205156
	bsr.w sub_205270
	bsr.w sub_204964
	bsr.w sub_2050e4
	bsr.w sub_205078
	jsr (sub_2038d6).l
	bsr.w sub_200c56
	bsr.w sub_2052ee
loc_2046e4:
	rts
	tst.w $12(a0)
	bmi.s loc_2046fa
	cmpi.b #$2c,$1c(a0)
	beq.s loc_2046fa
	move.b #$0,$1c(a0)
loc_2046fa:
	btst.b #$2,$2c(a0)
	beq.s loc_204708
	bsr.w sub_20485a
	bra.s loc_204734
loc_204708:
	bsr.w sub_2048ee
	bsr.w sub_2045b8
	bsr.w sub_20523c
	bsr.w sub_204fa4
	bsr.w sub_205078
	jsr (sub_203874).l
	btst.b #$6,$22(a0)
	beq.s loc_204730
	subi.w #$28,$12(a0)
loc_204730:
	bsr.w sub_205330
loc_204734:
	bsr.w sub_205354
	rts
	bsr.w sub_2048ee
	bsr.w sub_2045b8
	bsr.w sub_205156
	bsr.w sub_2052ac
	bsr.w sub_204dec
	bsr.w sub_205078
	tst.b $2a(a0)
	bne.s loc_20475e
	jsr (sub_2038d6).l
loc_20475e:
	bsr.w sub_200c56
	bsr.w sub_2052ee
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_20477a
	bsr.w sub_2047be
	bsr.w sub_2045b8
	bra.s loc_2047b8
loc_20477a:
	btst.b #$2,$2c(a0)
	beq.s loc_20478c
	bsr.w sub_20485a
	bsr.w sub_2045b8
	bra.s loc_2047b8
loc_20478c:
	bsr.w sub_2048ee
	bsr.w sub_2045b8
	bsr.w sub_20523c
	bsr.w sub_204fa4
	bsr.w sub_205078
	jsr (sub_203874).l
	btst.b #$6,$22(a0)
	beq.s loc_2047b4
	subi.w #$28,$12(a0)
loc_2047b4:
	bsr.w sub_205330
loc_2047b8:
	bsr.w sub_205354
	rts

sub_2047be:
	btst.b #$4,$2c(a0)
	beq.s loc_2047f2
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_204802
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_2047e0
	neg.w $10(a0)
loc_2047e0:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_2047f2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204802
	bset.b #$4,$2c(a0)
loc_204802:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_204818
	andi.w #$7fff,$2(a0)
loc_204818:
	jsr (sub_200856).l
	muls.w #$17,d1
	asr.l #$8,d1
	move.w $3e(a0),$8(a0)
	add.w d1,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	move.w $3e(a0),d3
	move.w $c(a0),d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_204858
	neg.w $12(a0)
loc_204858:
	rts

sub_20485a:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200fc4).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_204882
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20489c
loc_204882:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_20489c:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_2048b6
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_2048ca
loc_2048b6:
	btst.b #$3,($f602).w
	beq.s loc_2048ec
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_2048ca:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_2048ec
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_2048ec
	move.b #$0,$1b(a0)
loc_2048ec:
	rts

sub_2048ee:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20495a
	tst.w ($ff1506).l
	bne.s loc_20495a
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20495c).l,a2
loc_204922:
	move.b (a2)+,d0
	bmi.s loc_204932
	cmp.b d0,d1
	bne.s loc_204922
	bset.b #$1,$2c(a0)
	rts
loc_204932:
	bclr.b #$1,$2c(a0)
	beq.s loc_20495a
	tst.w $12(a0)
	bpl.s loc_20495a
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20495a
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20495a
	neg.w $10(a0)
loc_20495a:
	rts
dat_20495c:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_204964:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204c76
	tst.w $3e(a0)
	bne.w loc_204c26
	btst.b #$2,($f602).w
	beq.s loc_20498c
	bsr.w sub_204d06
loc_20498c:
	btst.b #$3,($f602).w
	beq.s loc_204998
	bsr.w sub_204d7c
loc_204998:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204c26
	tst.w $14(a0)
	beq.s loc_2049b8
	tst.b $2a(a0)
	beq.w loc_204c26
	bra.s loc_2049c4
loc_2049b8:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2049c4:
	btst.b #$3,$22(a0)
	beq.s loc_204a14
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_204a56
	cmpi.b #$1e,$0(a1)
	bne.s loc_2049f4
	move.b #$0,$1c(a0)
	bra.w loc_204c26
loc_2049f4:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204a3a
	cmp.w d2,d1
	bge.s loc_204a28
	bra.s loc_204a56
loc_204a14:
	jsr (sub_206c44).l
	cmpi.w #$c,d1
	blt.s loc_204a56
	cmpi.b #$3,$36(a0)
	bne.s loc_204a32
loc_204a28:
	btst.b #$0,$22(a0)
	bne.s loc_204a42
	bra.s loc_204a4c
loc_204a32:
	cmpi.b #$3,$37(a0)
	bne.s loc_204a56
loc_204a3a:
	btst.b #$0,$22(a0)
	bne.s loc_204a4c
loc_204a42:
	move.b #$32,$1c(a0)
	bra.w loc_204c26
loc_204a4c:
	move.b #$6,$1c(a0)
	bra.w loc_204c26
loc_204a56:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204a6a
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204a6a:
	btst.b #$7,($f788).w
	bne.w loc_204b6e
	btst.b #$6,($f788).w
	bne.w loc_204b8e
	btst.b #$1,($f602).w
	bne.w loc_204b8e
	andi.b #$f,($f788).w
	beq.s loc_204aa2
	btst.b #$0,($f603).w
	beq.s loc_204ab6
	bset.b #$7,($f788).w
	bra.w loc_204c4a
loc_204aa2:
	btst.b #$0,($f603).w
	beq.w loc_204ab6
	move.b #$1,($f788).w
	bra.w loc_204c4a
loc_204ab6:
	btst.b #$0,($f602).w
	beq.s loc_204b32
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204b14
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ae6
	asr.w #$1,d2
	sub.w d2,d1
loc_204ae6:
	btst.b #$0,$22(a0)
	beq.s loc_204af2
	neg.w d0
	neg.w d1
loc_204af2:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b08
	cmp.w d0,d1
	ble.s loc_204b0e
	bra.s loc_204b0c
loc_204b08:
	cmp.w d1,d0
	ble.s loc_204b0e
loc_204b0c:
	move.w d1,d0
loc_204b0e:
	move.w d0,$14(a0)
	rts
loc_204b14:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b2e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202352).l
loc_204b2e:
	bra.w loc_204c4a
loc_204b32:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204b52
	move.w #$ab,d0
	jsr (sub_202352).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b8e
loc_204b52:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202352).l
	bra.w loc_204c26
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204b6e:
	btst.b #$0,($f602).w
	beq.s loc_204b8e
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204c4a
	addq.w #$2,($f73e).w
	bra.w loc_204c4a
loc_204b8e:
	btst.b #$6,($f788).w
	bne.w loc_204c0a
	andi.b #$f,($f788).w
	beq.s loc_204bb2
	btst.b #$1,($f603).w
	beq.s loc_204bc4
	bset.b #$6,($f788).w
	bra.w loc_204c4a
loc_204bb2:
	btst.b #$1,($f603).w
	beq.s loc_204bc4
	move.b #$1,($f788).w
	bra.w loc_204c4a
loc_204bc4:
	btst.b #$1,($f602).w
	beq.s loc_204c26
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204c08
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204c08
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204bfa
	neg.w $14(a0)
loc_204bfa:
	move.w #$9c,d0
	jsr (sub_202352).l
	bsr.w sub_20510c
loc_204c08:
	bra.s loc_204c4a
loc_204c0a:
	btst.b #$1,($f602).w
	beq.s loc_204c26
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204c4a
	subq.w #$2,($f73e).w
	bra.s loc_204c4a
loc_204c26:
	cmpi.w #$60,($f73e).w
	bne.s loc_204c40
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204c4a
	move.b #$0,($f788).w
	bra.s loc_204c4a
loc_204c40:
	bcc.s loc_204c46
	addq.w #$4,($f73e).w
loc_204c46:
	subq.w #$2,($f73e).w
loc_204c4a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c76
	move.w $14(a0),d0
	beq.s loc_204c76
	bmi.s loc_204c6a
	sub.w d5,d0
	bcc.s loc_204c64
	move.w #$0,d0
loc_204c64:
	move.w d0,$14(a0)
	bra.s loc_204c76
loc_204c6a:
	add.w d5,d0
	bcc.s loc_204c72
	move.w #$0,d0
loc_204c72:
	move.w d0,$14(a0)
loc_204c76:
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204c94:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204d04
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204d04
	bmi.s loc_204cac
	neg.w d1
loc_204cac:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206b04
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204d04
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204d00
	cmpi.b #$40,d0
	beq.s loc_204cee
	cmpi.b #$80,d0
	beq.s loc_204ce8
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ce8:
	sub.w d1,$12(a0)
	rts
loc_204cee:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204d00:
	add.w d1,$12(a0)
loc_204d04:
	rts

sub_204d06:
	tst.b $2a(a0)
	bne.s loc_204d7a
	move.w $14(a0),d0
	beq.s loc_204d14
	bpl.s loc_204d44
loc_204d14:
	bset.b #$0,$22(a0)
	bne.s loc_204d28
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d28:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204d38
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204d38
	move.w d1,d0
loc_204d38:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d44:
	sub.w d4,d0
	bcc.s loc_204d4c
	move.w #$ff80,d0
loc_204d4c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d7a
	cmpi.w #$400,d0
	blt.s loc_204d7a
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202352).l
loc_204d7a:
	rts

sub_204d7c:
	tst.b $2a(a0)
	bne.s loc_204dea
	move.w $14(a0),d0
	bmi.s loc_204db4
	bclr.b #$0,$22(a0)
	beq.s loc_204d9c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d9c:
	cmp.w d6,d0
	bge.s loc_204da8
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204da8
	move.w d6,d0
loc_204da8:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204db4:
	add.w d4,d0
	bcc.s loc_204dbc
	move.w #$80,d0
loc_204dbc:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204dea
	cmpi.w #$fc00,d0
	bgt.s loc_204dea
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202352).l
loc_204dea:
	rts

sub_204dec:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204f28
	tst.w $3e(a0)
	bne.s loc_204e24
	btst.b #$2,($f602).w
	beq.s loc_204e18
	bsr.w sub_204f5e
loc_204e18:
	btst.b #$3,($f602).w
	beq.s loc_204e24
	bsr.w sub_204f82
loc_204e24:
	tst.b $2a(a0)
	beq.w loc_204ece
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204e44
	asr.w #$1,d2
	sub.w d2,d1
loc_204e44:
	btst.b #$0,$22(a0)
	beq.s loc_204e50
	neg.w d0
	neg.w d1
loc_204e50:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204e66
	cmp.w d0,d1
	ble.s loc_204e6c
	bra.s loc_204e6a
loc_204e66:
	cmp.w d1,d0
	ble.s loc_204e6c
loc_204e6a:
	move.w d1,d0
loc_204e6c:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204ea0
	rts
loc_204e7a:
	move.w #$ab,d0
	jsr (sub_202352).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204ef6
loc_204ea0:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204e7a
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202352).l
	btst.b #$0,$22(a0)
	bne.s loc_204ec6
	bsr.w sub_204f82
	bra.s loc_204ece
loc_204ec6:
	bsr.w sub_204f5e
	bra.s loc_204ece
	dc.b $4e,$75
loc_204ece:
	move.w $14(a0),d0
	beq.s loc_204ef0
	bmi.s loc_204ee4
	sub.w d5,d0
	bcc.s loc_204ede
	move.w #$0,d0
loc_204ede:
	move.w d0,$14(a0)
	bra.s loc_204ef0
loc_204ee4:
	add.w d5,d0
	bcc.s loc_204eec
	move.w #$0,d0
loc_204eec:
	move.w d0,$14(a0)
loc_204ef0:
	tst.w $14(a0)
	bne.s loc_204f28
loc_204ef6:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f12
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204f22
loc_204f12:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204f22:
	move.b #$5,$1c(a0)
loc_204f28:
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204f4c
	move.w #$1000,d1
loc_204f4c:
	cmpi.w #$f000,d1
	bge.s loc_204f56
	move.w #$f000,d1
loc_204f56:
	move.w d1,$10(a0)
	bra.w loc_204c94

sub_204f5e:
	move.w $14(a0),d0
	beq.s loc_204f66
	bpl.s loc_204f74
loc_204f66:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f74:
	sub.w d4,d0
	bcc.s loc_204f7c
	move.w #$ff80,d0
loc_204f7c:
	move.w d0,$14(a0)
	rts

sub_204f82:
	move.w $14(a0),d0
	bmi.s loc_204f96
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f96:
	add.w d4,d0
	bcc.s loc_204f9e
	move.w #$80,d0
loc_204f9e:
	move.w d0,$14(a0)
	rts

sub_204fa4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204fd2
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204fca
	cmpi.w #$840,$8(a0)
	bcs.s loc_205002
loc_204fca:
	btst.b #$1,$2c(a0)
	bne.s loc_205002
loc_204fd2:
	btst.b #$2,($f602).w
	beq.s loc_204fec
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204fec
	move.w d1,d0
loc_204fec:
	btst.b #$3,($f602).w
	beq.s loc_205002
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_205002
	move.w d6,d0
loc_205002:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_205018
	bcc.s loc_205014
	addq.w #$4,($f73e).w
loc_205014:
	subq.w #$2,($f73e).w
loc_205018:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_205046
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_205046
	bmi.s loc_20503a
	sub.w d1,d0
	bcc.s loc_205034
	move.w #$0,d0
loc_205034:
	move.w d0,$10(a0)
	rts
loc_20503a:
	sub.w d1,d0
	bcs.s loc_205042
	move.w #$0,d0
loc_205042:
	move.w d0,$10(a0)
loc_205046:
	rts
	.incbin 20552, 48

sub_205078:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_2050cc
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_2050a6
	addi.w #$38,d0
loc_2050a6:
	cmp.w d1,d0
	bls.s loc_2050cc
loc_2050aa:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_2050ba
	rts
loc_2050ba:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207188
	move.b #$6,$24(a0)
	rts
loc_2050cc:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_2050aa

sub_2050e4:
	tst.b ($f7ca).w
	bne.s loc_20510a
	move.w $14(a0),d0
	bpl.s loc_2050f2
	neg.w d0
loc_2050f2:
	cmpi.w #$80,d0
	bcs.s loc_20510a
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20510a
	btst.b #$1,($f602).w
	bne.s sub_20510c
loc_20510a:
	rts

sub_20510c:
	btst.b #$2,$22(a0)
	beq.s loc_205116
	rts
loc_205116:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205132
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205142
loc_205132:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205142:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_205154
	move.w #$200,$14(a0)
loc_205154:
	rts

sub_205156:
	tst.b $2a(a0)
	beq.s loc_20515e
	rts
loc_20515e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205170
	tst.w $14(a0)
	beq.w loc_205232
loc_205170:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205232
	btst.b #$3,$22(a0)
	beq.s loc_20518c
	jsr (sub_205e16).l
	beq.s loc_2051bc
loc_20518c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206b6e
	cmpi.w #$6,d1
	blt.w loc_205232
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_2051b2
	move.w #$380,d2
loc_2051b2:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_2051bc:
	jsr (sub_200856).l
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
	jsr (sub_202352).l
	btst.b #$2,$22(a0)
	bne.s loc_205234
	tst.b ($ff195b).l
	beq.s loc_205216
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205226
loc_205216:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205226:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205232:
	rts
loc_205234:
	bset.b #$4,$22(a0)
	rts

sub_20523c:
	tst.b $3c(a0)
	beq.s loc_20526e
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205252
	move.w #$fe00,d1
loc_205252:
	cmp.w $12(a0),d1
	ble.s loc_20526c
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20526c
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20526c:
	rts
loc_20526e:
	rts

sub_205270:
	tst.b $2a(a0)
	bne.s loc_2052aa
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2052aa
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2052aa
	bmi.s loc_2052a6
	tst.w d0
	beq.s loc_2052a4
	add.w d0,$14(a0)
loc_2052a4:
	rts
loc_2052a6:
	add.w d0,$14(a0)
loc_2052aa:
	rts

sub_2052ac:
	tst.b $2a(a0)
	bne.s loc_2052ec
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2052ec
	move.b $26(a0),d0
	jsr (sub_200856).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2052e2
	tst.w d0
	bpl.s loc_2052dc
	asr.l #$2,d0
loc_2052dc:
	add.w d0,$14(a0)
	rts
loc_2052e2:
	tst.w d0
	bmi.s loc_2052e8
	asr.l #$2,d0
loc_2052e8:
	add.w d0,$14(a0)
loc_2052ec:
	rts

sub_2052ee:
	nop
	tst.b $38(a0)
	bne.s loc_205328
	tst.w $3e(a0)
	bne.s loc_20532a
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205328
	move.w $14(a0),d0
	bpl.s loc_205312
	neg.w d0
loc_205312:
	cmpi.w #$280,d0
	bcc.s loc_205328
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205328:
	rts
loc_20532a:
	subq.w #$1,$3e(a0)
	rts

sub_205330:
	btst.b #$1,$2c(a0)
	bne.s loc_205352
	move.b $26(a0),d0
	beq.s loc_205352
	bpl.s loc_205348
	addq.b #$2,d0
	bcc.s loc_205346
	moveq #$0,d0
loc_205346:
	bra.s loc_20534e
loc_205348:
	subq.b #$2,d0
	bcc.s loc_20534e
	moveq #$0,d0
loc_20534e:
	move.b d0,$26(a0)
loc_205352:
	rts

sub_205354:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200aee).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205438
	cmpi.b #$80,d0
	beq.w loc_20549a
	cmpi.b #$c0,d0
	beq.w loc_2054f6
	bsr.w sub_206e84
	tst.w d1
	bpl.s loc_2053a6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053a6:
	bsr.w sub_206ce6
	tst.w d1
	bpl.s loc_2053b8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053b8:
	bsr.w sub_206b96
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205436
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2053d6
	cmp.b d2,d0
	blt.s loc_205436
loc_2053d6:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205558
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205414
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205406
	asr.w $12(a0)
	bra.s loc_205428
loc_205406:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205414:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205428
	move.w #$fc0,$12(a0)
loc_205428:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205436
	neg.w $14(a0)
loc_205436:
	rts
loc_205438:
	bsr.w sub_206e84
	tst.w d1
	bpl.s loc_205452
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205452:
	bsr.w sub_206d3e
	tst.w d1
	bpl.s loc_20546c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20546a
	move.w #$0,$12(a0)
loc_20546a:
	rts
loc_20546c:
	tst.w $12(a0)
	bmi.s loc_205498
	bsr.w sub_206b96
	tst.w d1
	bpl.s loc_205498
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205558
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205498:
	rts
loc_20549a:
	bsr.w sub_206e84
	tst.w d1
	bpl.s loc_2054ac
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2054ac:
	bsr.w sub_206ce6
	tst.w d1
	bpl.s loc_2054be
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2054be:
	bsr.w sub_206d3e
	tst.w d1
	bpl.s loc_2054f4
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2054de
	move.w #$0,$12(a0)
	rts
loc_2054de:
	move.b d3,$26(a0)
	bsr.w sub_2055bc
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2054f4
	neg.w $14(a0)
loc_2054f4:
	rts
loc_2054f6:
	bsr.w sub_206ce6
	tst.w d1
	bpl.s loc_205510
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205510:
	bsr.w sub_206d3e
	tst.w d1
	bpl.s loc_20552a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205528
	move.w #$0,$12(a0)
loc_205528:
	rts
loc_20552a:
	tst.w $12(a0)
	bmi.s loc_205556
	bsr.w sub_206b96
	tst.w d1
	bpl.s loc_205556
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205558
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205556:
	rts

sub_205558:
	btst.b #$4,$22(a0)
	beq.s loc_205562
	nop
loc_205562:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2055ae
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205598
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2055a8
loc_205598:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2055a8:
	move.b #$0,$1c(a0)
loc_2055ae:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2055bc:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21980, 356

sub_205740:
	rts
	.incbin 22338, 314

sub_20587c:
	lea (dat_205b6c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20589e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20589e:
	bsr.w sub_205b0e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205916
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2058e4
	move.b d0,$1e(a0)

sub_2058c8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2058dc
	bpl.s loc_2058dc
	cmpi.b #$fd,d0
	bge.s loc_2058e6
loc_2058dc:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2058e4:
	rts
loc_2058e6:
	addq.b #$1,d0
	bne.s loc_2058f6
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2058dc
loc_2058f6:
	addq.b #$1,d0
	bne.s loc_20590a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2058dc
loc_20590a:
	addq.b #$1,d0
	bne.s loc_205914
	move.b $2(a1,d1.w),$1c(a0)
loc_205914:
	rts
loc_205916:
	subq.b #$1,$1e(a0)
	bpl.s loc_2058e4
	addq.b #$1,d0
	bne.w loc_2059d0
	tst.b ($ff195b).l
	bne.w loc_205a98
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20593e
	not.b d0
loc_20593e:
	btst.b #$1,$2c(a0)
	bne.s loc_20594c
	addi.b #$10,d0
	bra.s loc_20594e
loc_20594c:
	addq.b #$8,d0
loc_20594e:
	bpl.s loc_205952
	moveq #$3,d1
loc_205952:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205a44
	move.w $14(a0),d2
	bpl.s loc_205970
	neg.w d2
loc_205970:
	btst.b #$1,$2c(a0)
	beq.s loc_205988
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205d6e).l,a1
	bra.s loc_2059b2
loc_205988:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205d48).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2059b2
	lea (dat_205bec).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2059b2
	lea (dat_205be4).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2059b2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2059c0
	moveq #$0,d2
loc_2059c0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2058c8
	add.b d3,$1a(a0)
	rts
loc_2059d0:
	addq.b #$1,d0
	bne.s loc_205a40
	move.w $14(a0),d2
	bpl.s loc_2059dc
	neg.w d2
loc_2059dc:
	lea (dat_205cca).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a1a
	lea (dat_205bfc).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205a0e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205a1a
	lea (dat_205d76).l,a1
	bra.s loc_205a1a
loc_205a0e:
	cmpi.w #$600,d2
	bcc.s loc_205a1a
	lea (dat_205bf4).l,a1
loc_205a1a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205a24
	moveq #$0,d2
loc_205a24:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2058c8
loc_205a40:
	addq.b #$1,d0
	bne.s loc_205a84
loc_205a44:
	move.w $14(a0),d2
	bmi.s loc_205a4c
	neg.w d2
loc_205a4c:
	addi.w #$800,d2
	bpl.s loc_205a54
	moveq #$0,d2
loc_205a54:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205cdc).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a6e
	lea (dat_205c04).l,a1
loc_205a6e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2058c8
loc_205a84:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205a98:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205aaa
	not.b d0
loc_205aaa:
	addi.b #$10,d0
	bpl.s loc_205ab2
	moveq #$0,d1
loc_205ab2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205ae0
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2059d0
loc_205ae0:
	move.w $14(a0),d2
	bpl.s loc_205ae8
	neg.w d2
loc_205ae8:
	lea (dat_205cc4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205afa
	lea (dat_205cbe).l,a1
loc_205afa:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205b04
	moveq #$0,d2
loc_205b04:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2058c8

sub_205b0e:
	tst.b ($ff195b).l
	beq.s loc_205b1a
	move.b dat_205b1c(pc,d0.w),d0
loc_205b1a:
	rts
dat_205b1c:
	.incbin 23324, 80
dat_205b6c:
	.incbin 23404, 120
dat_205be4:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205bec:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205bf4:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205bfc:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205c04:
	.incbin 23556, 186
dat_205cbe:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205cc4:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205cca:
	.incbin 23754, 18
dat_205cdc:
	.incbin 23772, 108
dat_205d48:
	.incbin 23880, 38
dat_205d6e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205d76:
	.incbin 23926, 60

sub_205db2:
	tst.b (a0)
	beq.w loc_205e14
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205e14
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205e14
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205de6:
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
loc_205e00:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205e00
	dbf d1,loc_205de6
loc_205e14:
	rts

sub_205e16:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205e80
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200aee).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205e6e
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205e6e:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205e80:
	rts
loc_205e82:
	move.w #$e,d0

sub_205e86:
	cmpi.w #$67,d0
	bne.s loc_205e94
	move.b #$1,($ff1958).l
loc_205e94:
	move.w d0,($a12010).l
loc_205e9a:
	move.w ($a12020).l,d0
	beq.s loc_205e9a
	cmp.w ($a12020).l,d0
	bne.s loc_205e9a
	move.w #$0,($a12010).l
loc_205eb2:
	move.w ($a12020).l,d0
	bne.s loc_205eb2
	move.w ($a12020).l,d0
	bne.s loc_205eb2
	rts
	dc.b $00,$00

sub_205ec6:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205ee2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205ee2:
	subq.b #$1,$1e(a0)
	bpl.s loc_205f22
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205f24
loc_205efe:
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
loc_205f22:
	rts
loc_205f24:
	addq.b #$1,d0
	bne.s loc_205f34
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205efe
loc_205f34:
	addq.b #$1,d0
	bne.s loc_205f48
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205efe
loc_205f48:
	addq.b #$1,d0
	bne.s loc_205f52
	move.b $2(a1,d1.w),$1c(a0)
loc_205f52:
	addq.b #$1,d0
	bne.s loc_205f5a
	addq.b #$2,$24(a0)
loc_205f5a:
	addq.b #$1,d0
	bne.s loc_205f68
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205f68:
	addq.b #$1,d0
	bne.s loc_205f70
	addq.b #$2,$25(a0)
loc_205f70:
	rts
	.incbin 24434, 654

sub_206200:
	tst.b $25(a0)
	bne.s loc_206230
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2078ac).l
	bne.s loc_206230
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206230:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206240(pc,d0.w),d0
	jmp dat_206240(pc,d0.w)
dat_206240:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206268
	andi.b #$7f,$2(a0)
loc_206268:
	move.l #$23a810,$4(a0)
	bsr.s sub_206200
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_206296
	move.w #$100,$1c(a0)
loc_206296:
	lea (dat_23a7fc).l,a1
	bsr.w sub_205ec6
	jmp (sub_20392c).l
	tst.b $25(a0)
	beq.s loc_2062b2
	jmp (sub_2039d8).l
loc_2062b2:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 25280, 770
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2065d0(pc,d0.w),d1
	jmp dat_2065d0(pc,d1.w)
dat_2065d0:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23a624,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_206612
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_206612
	addq.b #$2,$24(a0)
loc_206612:
	rts
	tst.b ($ff151e).l
	beq.s loc_20666e
	tst.b ($ff1521).l
	bne.s loc_20666c
	tst.b ($ff151f).l
	bne.s loc_20666c
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20665c
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20665c
	andi.b #$7f,$2(a0)
loc_20665c:
	lea (dat_23a4fc).l,a1
	jsr (sub_205ec6).l
	bra.w loc_20670c
loc_20666c:
	rts
loc_20666e:
	jmp (sub_2039d8).l
	.incbin 26228, 152
loc_20670c:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_20671e
	rts
loc_20671e:
	cmp.b $24(a0),d0
	beq.s loc_206734
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206734:
	jmp (sub_20392c).l

sub_20673a:
	bclr.b #$7,($ff156b).l
	beq.s loc_206788
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20678a(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20675e:
	move.l (a1)+,(a2)+
	dbf d0,loc_20675e
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206788:
	rts
dat_20678a:
	.incbin 26506, 436
loc_20693e:
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
	bne.s loc_2069f8
	move.b ($ff1593).l,($ff195b).l
loc_2069f8:
	tst.b ($ff1522).l
	bpl.s loc_206a0e
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206a0e:
	rts

sub_206a10:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20693e
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
	bne.s loc_206aca
	move.b ($ff1591).l,($ff195b).l
loc_206aca:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206aec
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206aec:
	tst.b ($ff1522).l
	bpl.s loc_206b02
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b02:
	rts

sub_206b04:
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
	bpl.s loc_206b40
	move.b d1,d0
	bpl.s loc_206b3a
	subq.b #$1,d0
loc_206b3a:
	addi.b #$20,d0
	bra.s loc_206b4a
loc_206b40:
	move.b d1,d0
	bpl.s loc_206b46
	addq.b #$1,d0
loc_206b46:
	addi.b #$1f,d0
loc_206b4a:
	andi.b #$c0,d0
	beq.w loc_206c1a
	cmpi.b #$80,d0
	beq.w loc_206db6
	andi.b #$38,d1
	bne.s loc_206b62
	addq.w #$8,d2
loc_206b62:
	cmpi.b #$40,d0
	beq.w loc_206e8c
	bra.w loc_206cee

sub_206b6e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206e14
	cmpi.b #$80,d0
	beq.w sub_206d3e
	cmpi.b #$c0,d0
	beq.w loc_206c7e

sub_206b96:
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
	jsr (sub_2011ac).l
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
	jsr (sub_2011ac).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206bfa:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206c08
	move.b ($f768).w,d3
	exg d0,d1
loc_206c08:
	btst.l #$0,d3
	beq.s loc_206c10
	move.b d2,d3
loc_206c10:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c1a:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011ac).l
	move.b #$0,d2
loc_206c36:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c42
	move.b d2,d3
loc_206c42:
	rts

sub_206c44:
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
	jsr (sub_2011ac).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c7c
	move.b #$0,d3
loc_206c7c:
	rts
loc_206c7e:
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
	jsr (sub_20131c).l
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
	jsr (sub_20131c).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206bfa

sub_206ce6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cee:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20131c).l
	move.b #$c0,d2
	bra.w loc_206c36
	.incbin 27918, 48

sub_206d3e:
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
	jsr (sub_2011ac).l
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
	jsr (sub_2011ac).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206bfa

sub_206dae:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206db6:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011ac).l
	move.b #$80,d2
	bra.w loc_206c36
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
	jsr (sub_2011ac).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e12
	move.b #$80,d3
loc_206e12:
	rts
loc_206e14:
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
	jsr (sub_20131c).l
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
	jsr (sub_20131c).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206bfa

sub_206e84:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e8c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20131c).l
	move.b #$40,d2
	bra.w loc_206c36
	dc.b $d6,$68,$00,$08,$34,$28,$00,$0c
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20131c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ede
	move.b #$40,d3
loc_206ede:
	rts

sub_206ee0:
	btst.b #$6,$2c(a0)
	beq.s loc_206eec
	moveq #$0,d0
	rts
loc_206eec:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206f10
	addi.w #$c,d3
	moveq #$a,d5
loc_206f10:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206f1e:
	tst.b $1(a1)
	bpl.s loc_206f2a
	move.b $20(a1),d0
	bne.s loc_206f36
loc_206f2a:
	lea $40(a1),a1
	dbf d6,loc_206f1e
	moveq #$0,d0
	rts
loc_206f36:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2072be).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206f5e
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206f64
	bra.w loc_206f2a
loc_206f5e:
	cmp.w d4,d0
	bhi.w loc_206f2a
loc_206f64:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206f7c
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206f82
	bra.w loc_206f2a
loc_206f7c:
	cmp.w d5,d0
	bhi.w loc_206f2a
loc_206f82:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206ff6
	cmpi.b #$c0,d1
	beq.w loc_2071e0
	tst.b d1
	bmi.w sub_2070c0
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206fba
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206fb8
	addq.b #$2,$24(a1)
loc_206fb8:
	rts
loc_206fba:
	tst.w $12(a0)
	bpl.s loc_206fe4
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206ff4
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206ff4
	addq.b #$4,$25(a1)
	rts
loc_206fe4:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ff4
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206ff4:
	rts

sub_206ff6:
	tst.b ($ff1521).l
	bne.s loc_207010
	tst.b ($ff151f).l
	bne.s loc_207010
	cmpi.b #$2,$1c(a0)
	bne.w sub_2070c0
loc_207010:
	tst.b $21(a1)
	beq.s loc_20703a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207038
	bset.b #$7,$22(a1)
loc_207038:
	rts
loc_20703a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_207052
	moveq #$6,d0
loc_207052:
	move.w d0,$3e(a1)
	move.w dat_2070b2(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_20706c
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_20706c:
	bsr.w sub_2096fe
	move.w #$96,d0
	jsr (sub_202352).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2070a2
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_2070aa
	neg.w $12(a0)
	rts
loc_2070a2:
	addi.w #$100,$12(a0)
	rts
loc_2070aa:
	subi.w #$100,$12(a0)
	rts
dat_2070b2:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_2070c0:
	tst.b ($ff1521).l
	bne.s loc_2070d0
	tst.b ($ff151f).l
	beq.s loc_2070d4
loc_2070d0:
	moveq #$ffffffff,d0
	rts
loc_2070d4:
	nop
	tst.w $30(a0)
	bne.s loc_2070d0
	movea.l a1,a2
loc_2070de:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_207118
	tst.w ($ff1512).l
	beq.w loc_20717e
	jsr (sub_2078ac).l
	bne.s loc_207118
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207118:
	bclr.b #$0,($ff151e).l
	bne.s loc_20712a
	move.b #$0,($ff156f).l
loc_20712a:
	move.b #$4,$24(a0)
	bsr.w sub_205558
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20715a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20715a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207168
	neg.w $10(a0)
loc_207168:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_20717e:
	tst.w ($ff1588).l
	bne.w loc_207118

sub_207188:
	tst.w ($ff1906).l
	bne.s loc_2071dc
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205558
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202352).l
loc_2071dc:
	moveq #$ffffffff,d0
	rts
loc_2071e0:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207268
	cmpi.b #$23,d1
	beq.w loc_207268
	cmpi.b #$38,d1
	beq.w loc_2072b0
	cmpi.b #$3a,d1
	beq.w loc_2072b0
	cmpi.b #$3b,d1
	beq.w loc_2072b0
	tst.b ($f7aa).w
	beq.w loc_207266
	cmpi.b #$1,($f7aa).w
	beq.s loc_207230
	cmpi.b #$4,($f7aa).w
	beq.s loc_207252
	cmpi.b #$5,($f7aa).w
	beq.s loc_207260
loc_207230:
	cmpi.b #$3c,d1
	blt.s loc_207266
	cmpi.b #$3f,d1
	bgt.s loc_207266
	bsr.w sub_206ff6
	tst.b $20(a1)
	bne.s loc_20724a
	addq.b #$3,$21(a1)
loc_20724a:
	clr.b $20(a1)
	bra.w loc_207268
loc_207252:
	cmpi.b #$3f,d1
	beq.s loc_207274
	cmpi.b #$3e,d1
	beq.s loc_20726e
	bra.s loc_207266
loc_207260:
	cmpi.b #$3d,d1
	beq.s loc_20726e
loc_207266:
	rts
loc_207268:
	addq.b #$1,$21(a1)
	rts
loc_20726e:
	bsr.w sub_2070c0
	bra.s loc_207268
loc_207274:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2072ae
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2072ae
	neg.w $10(a0)
loc_2072ae:
	rts
loc_2072b0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2072bc
	addq.b #$1,$21(a1)
loc_2072bc:
	rts
dat_2072be:
	.incbin 29374, 126
loc_20733c:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207352
	move.l #$4000,(dat_2074cc).l
	bra.s loc_207372
loc_207352:
	addi.l #$2000,(dat_2074cc).l
	cmpi.l #$80000,(dat_2074cc).l
	bls.s loc_207372
	move.l #$80000,(dat_2074cc).l
loc_207372:
	move.l (dat_2074cc).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207384
	sub.l d0,$c(a0)
loc_207384:
	btst.b #$1,($f604).w
	beq.s loc_207390
	add.l d0,$c(a0)
loc_207390:
	btst.b #$2,($f604).w
	beq.s loc_20739c
	sub.l d0,$8(a0)
loc_20739c:
	btst.b #$3,($f604).w
	beq.s loc_2073a8
	add.l d0,$8(a0)
loc_2073a8:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200fc4).l
	move.w (a1),($ff194e).l
	lea (dat_2074d0).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2073ea
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2073e4
	move.b #$0,d1
loc_2073e4:
	move.b d1,($ff1904).l
loc_2073ea:
	btst.b #$7,($f605).w
	beq.s loc_20740a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207404
	add.b (a2),d1
loc_207404:
	move.b d1,($ff1904).l
loc_20740a:
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
	beq.s loc_207496
	bsr.w sub_2078ac
	bne.s loc_207496
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
loc_207496:
	btst.b #$4,($f605).w
	beq.s loc_2074c6
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2074c6:
	jmp (sub_20392c).l
dat_2074cc:
	dc.b $00,$00,$40,$00
dat_2074d0:
	.incbin 29904, 458

sub_20769a:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076a8:
	clr.l (a2)+
	dbf d0,loc_2076a8
	rts

sub_2076b0:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2076be(pc,d0.w),d0
	jmp dat_2076be(pc,d0.w)
dat_2076be:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20795e).l,a0
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
	bcc.s loc_2076fc
	moveq #$0,d6
loc_2076fc:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207704:
	cmp.w (a0),d6
	bls.s loc_207716
	tst.b $4(a0)
	bpl.s loc_207712
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207712:
	addq.w #$8,a0
	bra.s loc_207704
loc_207716:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207736
loc_207724:
	cmp.w (a0),d6
	bls.s loc_207736
	tst.b $4(a0)
	bpl.s loc_207732
	addq.b #$1,$1(a2)
loc_207732:
	addq.w #$8,a0
	bra.s loc_207724
loc_207736:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207820
	bge.s loc_2077c6
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077a2
loc_207770:
	cmp.w -$8(a0),d6
	bge.s loc_2077a2
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207786
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207786:
	bsr.w sub_207844
	bne.s loc_207790
	subq.w #$8,a0
	bra.s loc_207770
loc_207790:
	tst.b $4(a0)
	bpl.s loc_2077a0
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077a0:
	addq.w #$8,a0
loc_2077a2:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077ae:
	cmp.w -$8(a0),d6
	bgt.s loc_2077c0
	tst.b -$4(a0)
	bpl.s loc_2077bc
	subq.b #$1,(a2)
loc_2077bc:
	subq.w #$8,a0
	bra.s loc_2077ae
loc_2077c0:
	move.l a0,($f770).w
	rts
loc_2077c6:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077da:
	cmp.w (a0),d6
	bls.s loc_2077fc
	tst.b $4(a0)
	bpl.s loc_2077e8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077e8:
	bsr.w sub_207844
	beq.s loc_2077da
	tst.b $4(a0)
	bpl.s loc_2077fc
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077fc:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20781c
loc_20780a:
	cmp.w (a0),d6
	bls.s loc_20781c
	tst.b $4(a0)
	bpl.s loc_207818
	addq.b #$1,$1(a2)
loc_207818:
	addq.w #$8,a0
	bra.s loc_20780a
loc_20781c:
	move.l a0,($f774).w
loc_207820:
	rts

sub_207822:
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

sub_207844:
	bsr.s sub_207822
	beq.s loc_207856
	tst.b $4(a0)
	bpl.s loc_20785c
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20785c
loc_207856:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20785c:
	bsr.w sub_2078ac
	bne.s loc_2078aa
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
	bpl.s loc_20788c
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20788c:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20789e
	nop
	nop
	nop
	nop
loc_20789e:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078aa:
	rts

sub_2078ac:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078b4:
	tst.b (a1)
	beq.s loc_2078c0
	lea $40(a1),a1
	dbf d0,loc_2078b4
loc_2078c0:
	rts

sub_2078c2:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078e0
loc_2078d4:
	tst.b (a1)
	beq.s loc_2078e0
	lea $40(a1),a1
	dbf d0,loc_2078d4
loc_2078e0:
	rts
loc_2078e2:
	move.w $8(a0),d0
loc_2078e6:
	tst.b $1(a0)
	bmi.s loc_207950
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207950
loc_207904:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207946
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20793e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207936
	moveq #$0,d1
	bra.s loc_20793e
loc_207936:
	cmpi.w #$3,d1
	bcs.s loc_20793e
	moveq #$2,d1
loc_20793e:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207946:
	jsr (sub_2039d8).l
	moveq #$1,d0
	rts
loc_207950:
	btst.b #$7,($ff152e).l
	bne.s loc_207904
	moveq #$0,d0
	rts
dat_20795e:
	.incbin 31070, 602

sub_207bb8:
	btst.b #$3,$22(a0)
	beq.s loc_207c28
	btst.b #$3,$22(a1)
	beq.s loc_207c28
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207c28
	tst.b $2a(a1)
	beq.s loc_207bea
	move.w #$ab,d0
	jsr (sub_202352).l
loc_207bea:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207c16
	cmpi.b #$17,$1c(a1)
	beq.s loc_207c16
	bclr.b #$0,$2c(a1)
loc_207c16:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207c28
	bclr.b #$1,$22(a1)
loc_207c28:
	rts

sub_207c2a:
	cmpi.b #$4,$24(a1)
	bne.s loc_207c3c
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207c3c:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207c9c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207c5e
	bclr.b #$3,$22(a0)
	bra.w sub_207bb8
loc_207c5e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207c9c
	tst.b ($ff195b).l
	beq.s loc_207c86
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207c96
loc_207c86:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207c96:
	move.b #$0,$1c(a1)
loc_207c9c:
	bset.b #$3,$22(a1)
	beq.s loc_207cbe
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207cf6
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207cbe:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207cea
	cmpi.b #$2,$24(a0)
	beq.s loc_207cf0
loc_207cea:
	move.w $10(a1),$14(a1)
loc_207cf0:
	bclr.b #$1,$22(a1)
loc_207cf6:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_207d00:
	move.b #$1,$25(a0)

sub_207d06:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207fba
	btst.b #$6,$2c(a1)
	bne.w loc_207fba
	cmpi.b #$6,$24(a1)
	bcc.w loc_207fba
	tst.b $0(a1)
	beq.w loc_207fba
	tst.b $1(a0)
	bpl.w loc_207fba
	tst.b ($ff1906).l
	bne.w loc_207fba
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207fba
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207fba
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d74
	btst.b #$3,$22(a0)
	bne.s loc_207d86
	bra.w loc_207fba
loc_207d74:
	cmpi.b #$1,$25(a0)
	bne.s loc_207d86
	tst.w $12(a1)
	beq.s loc_207d86
	bmi.w loc_207fba
loc_207d86:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207fba
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207fba
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207dbc
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207dbc:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207dca
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207dca:
	cmp.w d4,d5
	bcs.w loc_207e5e
	cmpi.b #$1,$25(a0)
	beq.w loc_207fba
	cmpi.b #$a,$0(a0)
	bne.s loc_207dec
	btst.b #$1,$22(a1)
	bne.w loc_207fba
loc_207dec:
	cmpi.b #$4,d5
	bls.w loc_207fba
	bsr.w sub_20800a
	move.l d0,-(a7)
	bsr.w sub_207bb8
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207e16
	tst.w $10(a1)
	beq.s loc_207e46
	bpl.s loc_207e1e
	bra.s loc_207e46
loc_207e16:
	tst.w $10(a1)
	beq.s loc_207e46
	bpl.s loc_207e46
loc_207e1e:
	bsr.w sub_207fca
	btst.b #$1,$22(a1)
	bne.s loc_207e3c
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207e3c:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207e46:
	bsr.w sub_208080
	bsr.w sub_207fca
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207e5e:
	cmpi.b #$19,$0(a0)
	bne.s loc_207e70
	btst.b #$2,$22(a1)
	bne.w loc_207fba
loc_207e70:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207e86
	bmi.w loc_207f56
loc_207e86:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207e98
	tst.w $12(a1)
	beq.s loc_207e98
	bmi.w loc_207fba
loc_207e98:
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
	beq.s loc_207ee4
	bpl.s loc_207ec4
	neg.b d0
loc_207ec4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b04).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ee4
	tst.w $10(a0)
	bpl.s loc_207ee0
	neg.w d1
loc_207ee0:
	add.w d1,$8(a1)
loc_207ee4:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207f4e
	tst.w $12(a0)
	bmi.s loc_207f22
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b96).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207f22
	add.w d1,$c(a1)
	bra.w loc_207fba
loc_207f22:
	tst.w $12(a0)
	bpl.s loc_207f4e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dae).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207f4e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207188).l
	movem.l (a7)+,a0-a1
	bra.s loc_207fba
loc_207f4e:
	bsr.w sub_207c2a
	moveq #$1,d0
	rts
loc_207f56:
	cmpi.b #$1,$25(a0)
	beq.s loc_207fba
	cmpi.b #$9,$0(a0)
	beq.s loc_207fba
	cmpi.b #$a,$0(a0)
	bne.s loc_207f80
	cmpi.b #$2,$25(a0)
	beq.s loc_207fa0
	btst.b #$1,$1(a0)
	bne.s loc_207fa0
	bra.s loc_207fba
loc_207f80:
	btst.b #$1,$22(a1)
	bne.s loc_207fa0
	tst.w $12(a0)
	beq.s loc_207fa0
	bmi.s loc_207fa0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207188).l
	movem.l (a7)+,a0-a1
loc_207fa0:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208080
	bsr.w sub_207bb8
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207fba:
	bsr.w sub_208080
	bsr.w sub_207bb8
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207fca:
	tst.w $10(a0)
	beq.s loc_208008
	cmpi.b #$a,$0(a0)
	beq.s loc_208008
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207fe4
	neg.b d0
loc_207fe4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b04).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208008
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207188).l
	movem.l (a7)+,a0-a1
loc_208008:
	rts

sub_20800a:
	cmpi.b #$a,$0(a0)
	bne.s loc_20801a
	move.b #$0,$20(a1)
	rts
loc_20801a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20806e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20807e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20803c
	tst.w $10(a2)
	beq.s loc_20807e
loc_20803c:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20804e
	cmp.w $8(a2),d1
	bcs.s loc_20807e
	bra.s loc_208054
loc_20804e:
	cmp.w $8(a2),d1
	bcc.s loc_20807e
loc_208054:
	cmpi.b #$15,$0(a0)
	beq.s loc_20807e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207188).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20806e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20807e:
	rts

sub_208080:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20809a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20809a
	move.b #$0,$20(a1)
loc_20809a:
	rts
	.incbin 32924, 374
loc_208212:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208220(pc,d0.w),d0
	jmp dat_208220(pc,d0.w)
dat_208220:
	.incbin 33312, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208212
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208276
	tst.b $1(a0)
	bpl.s loc_20827e
loc_208276:
	move.w dat_2082d0(pc,d0.w),d1
	jsr dat_2082d0(pc,d1.w)
loc_20827e:
	bsr.w sub_20392c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2082b0
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2082b0:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039d8
	rts
dat_2082d0:
	.incbin 33488, 26
	addq.b #$2,$24(a0)
	move.l #$208652,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208340
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208658,$4(a0)
	bra.s loc_208382
loc_208340:
	btst.l #$3,d0
	beq.s loc_20836e
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2086a2,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bd86).l
	move.l (a7)+,d0
	bra.s loc_208382
loc_20836e:
	btst.b #$1,$1(a0)
	beq.s loc_208382
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208382:
	btst.l #$1,d0
	beq.s loc_20838e
	bset.b #$5,$2(a0)
loc_20838e:
	andi.w #$2,d0
	move.w dat_20839a(pc,d0.w),$30(a0)
	rts
dat_20839a:
	dc.b $f0,$00,$f6,$00

sub_20839e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207d06).l
	tst.b $1(a0)
	bpl.s loc_2083ba
	lea ($d000).w,a1
	bsr.s sub_20839e
	bne.s loc_2083bc
loc_2083ba:
	rts
loc_2083bc:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202352).l
	.incbin 33774, 284
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 34076, 532
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20873e(pc,d0.w),d1
	jmp dat_20873e(pc,d1.w)
dat_20873e:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_208748:
	.incbin 34632, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2087a0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208798
	moveq #$0,d1
	bra.s loc_2087a0
loc_208798:
	cmpi.w #$3,d1
	bcs.s loc_2087a0
	moveq #$2,d1
loc_2087a0:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2087bc
	moveq #$6,d1
loc_2087bc:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_208748).l,a1
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
	beq.s loc_20880c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208804
	moveq #$0,d0
	bra.s loc_20880c
loc_208804:
	cmpi.w #$3,d0
	bcs.s loc_20880c
	moveq #$2,d0
loc_20880c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2088da
	dbf d0,loc_20880c
	bclr.b #$7,(a2)
	bra.s loc_208862
loc_20881e:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20884a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208842
	moveq #$0,d0
	bra.s loc_20884a
loc_208842:
	cmpi.w #$3,d0
	bcs.s loc_20884a
	moveq #$2,d0
loc_20884a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2088da
	dbf d0,loc_20884a
	bclr.b #$7,(a2)
	bsr.w sub_2078c2
	bne.w loc_2088e6
loc_208862:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208bac,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2088b8
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2088b8
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2088b8:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2088da:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20881e
loc_2088e6:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20890c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208904
	moveq #$0,d0
	bra.s loc_20890c
loc_208904:
	cmpi.w #$3,d0
	bcs.s loc_20890c
	moveq #$2,d0
loc_20890c:
	lea $1(a2),a3
loc_208910:
	btst.b #$0,-(a3)
	bne.w sub_2039d8
	dbf d0,loc_208910
	tst.b $1(a0)
	bmi.s loc_208940
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2089ba
loc_208940:
	tst.w ($ff190e).l
	bne.s loc_208950
	move.b ($ff1913).l,$1a(a0)
loc_208950:
	bra.w sub_20392c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_2089be
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2089a0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208998
	moveq #$0,d1
	bra.s loc_2089a0
loc_208998:
	cmpi.w #$3,d1
	bcs.s loc_2089a0
	moveq #$2,d1
loc_2089a0:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208ba4).l,a1
	bsr.w sub_205ec6
	bra.w sub_20392c
loc_2089ba:
	bra.w sub_2039d8

sub_2089be:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208a0e
	bset.b #$1,($ff150d).l
	beq.s loc_2089f8
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208a0e
	bset.b #$2,($ff150d).l
	bne.s loc_208a0e
loc_2089f8:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e86).l
loc_208a0e:
	jmp (sub_202352).l
	.incbin 35348, 400
dat_208ba4:
	.incbin 35748, 402
loc_208d36:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d64(pc,d0.w),d0
	jsr dat_208d64(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208d62
	cmpi.w #$5a,($f786).w
	bcs.s loc_208d5c
	btst.b #$0,($ff1505).l
	bne.s loc_208d62
loc_208d5c:
	jmp (sub_20392c).l
loc_208d62:
	rts
dat_208d64:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20933e,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208d98
	move.b #$13,$1a(a0)
loc_208d98:
	rts
loc_208d9a:
	tst.b ($ff0f01).l
	beq.s loc_208da8
	jmp (sub_2039d8).l
loc_208da8:
	cmpi.b #$a,$28(a0)
	beq.w loc_208d36
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208dcc(pc,d0.w),d0
	jsr dat_208dcc(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_2078e2).l
dat_208dcc:
	.incbin 36300, 282

sub_208ee6:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208f1e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208f16
	moveq #$0,d1
	bra.s loc_208f1e
loc_208f16:
	cmpi.w #$3,d1
	bcs.s loc_208f1e
	moveq #$2,d1
loc_208f1e:
	add.w d1,d0
	rts

sub_208f22:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208f44
	tst.b ($ff1956).l
	beq.s loc_208f3c
	tst.b $29(a0)
	bne.s loc_208f44
	rts
loc_208f3c:
	tst.b $29(a0)
	beq.s loc_208f44
	rts
loc_208f44:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207d06).l
	tst.b $28(a0)
	bne.s loc_208f66
	tst.b ($ff0f01).l
	beq.s loc_208f66
	jmp (loc_2078e2).l
loc_208f66:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208d9a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f7e(pc,d0.w),d1
	jmp dat_208f7e(pc,d1.w)
dat_208f7e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20933e,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208fc8
	tst.b $29(a0)
	bne.s loc_208fc8
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208fc8:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208ee6
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208ff4
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208ff4:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20904e
	move.b $25(a0),d0
	beq.s loc_20902e
	bsr.w sub_203874
	jsr (sub_206c44).l
	tst.w d1
	bpl.w loc_20903c
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20903c
loc_20902e:
	tst.b $1(a0)
	bpl.s loc_20903c
	lea ($d000).w,a1
	bsr.w sub_208f22
loc_20903c:
	tst.w ($ff190e).l
	bne.s loc_20904e
	lea (dat_2092b6).l,a1
	bsr.w sub_205ec6
loc_20904e:
	bsr.w sub_20392c
	jmp (loc_2078e2).l
	move.w #$96,d0
	jsr (sub_202352).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_2078ac
	bne.s loc_209090
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_209090:
	bsr.w sub_2078ac
	bne.s loc_2090ba
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_2090ba:
	bsr.w sub_208ee6
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_20392c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2090e0(pc,d0.w),d1
	jsr dat_2090e0(pc,d1.w)
	bra.w sub_20392c
dat_2090e0:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_2090fc
	andi.b #$7f,$2(a0)
loc_2090fc:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20933e,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_209144
	bsr.w sub_2038d6
	addi.w #$18,$12(a0)
	rts
loc_209144:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20916a
loc_209154:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e86).l
loc_20916a:
	cmpi.b #$1,d0
	bne.s loc_2091b6
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2091ac
	bset.b #$1,($ff150d).l
	beq.w loc_209154
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2091ac
	bset.b #$2,($ff150d).l
	beq.w loc_209154
loc_2091ac:
	move.w #$95,d0
	jmp (sub_202352).l
loc_2091b6:
	cmpi.b #$2,d0
	bne.s loc_2091d4

sub_2091bc:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202352).l
loc_2091d4:
	cmpi.b #$3,d0
	bne.s loc_209236

sub_2091da:
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
	bne.s loc_20922a
	move.w #$82,d0
	jsr (sub_205e86).l
loc_20922a:
	move.w #$6d,d0
	jmp (sub_205e86).l
	dc.b $4e,$75
loc_209236:
	cmpi.b #$4,d0
	bne.s loc_209278
loc_20923c:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20926e
	move.w #$82,d0
	jsr (sub_205e86).l
loc_20926e:
	move.w #$6c,d0
	jmp (sub_205e86).l
loc_209278:
	cmpi.b #$5,d0
	bne.s loc_209288
	move.w #$12c,($ff190e).l
	rts
loc_209288:
	cmpi.b #$6,d0
	bne.s loc_2092a2
	move.w #$9d,d0
	jsr (sub_202352).l
	move.b #$1,($ff156f).l
	rts
loc_2092a2:
	bsr.w sub_2091bc
	bsr.w sub_2091da
	bra.s loc_20923c
	subq.w #$1,$1e(a0)
	bmi.w sub_2039d8
	rts
dat_2092b6:
	.incbin 37558, 586
loc_209500:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209514(pc,d0.w),d0
	jsr dat_209514(pc,d0.w)
	jmp (sub_20392c).l
dat_209514:
	.incbin 38164, 146
	tst.b $28(a0)
	bmi.w loc_209500
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2095bc(pc,d0.w),d0
	jmp dat_2095bc(pc,d0.w)
dat_2095bc:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209656,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2095ec
	move.b #$3,$1a(a0)
	bra.s loc_20960c
loc_2095ec:
	tst.w ($ff1588).l
	beq.s loc_2095fa
	move.b #$2,$1a(a0)
loc_2095fa:
	tst.b $28(a0)
	beq.s loc_20960c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20960c:
	tst.b $28(a0)
	bne.s loc_209650
	tst.b $29(a0)
	beq.s loc_20963c
	tst.w ($ff1512).l
	beq.s loc_209628
	bclr.b #$5,$2(a0)
	bra.s loc_209650
loc_209628:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209650
	eori.b #$20,$2(a0)
	bra.s loc_209650
loc_20963c:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209650
	move.b #$2,$1a(a0)
loc_209650:
	jmp (sub_20392c).l
	.incbin 38486, 168

sub_2096fe:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20971a
	move.l d1,(a3)
loc_20971a:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_209744
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e86).l
loc_209744:
	rts
loc_209746:
	tst.w ($ff1588).l
	beq.s loc_20979c
	bsr.w sub_209998
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
	lea (dat_209af8).l,a2
	moveq #$2,d6
	bsr.w sub_209b50
	bra.w loc_2097f6
loc_20979c:
	tst.b ($ff1511).l
	beq.s loc_2097c0
	bpl.s loc_2097aa
	bsr.w sub_209942
loc_2097aa:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209a32
loc_2097c0:
	tst.b ($ff150f).l
	beq.s loc_2097f6
	bpl.s loc_2097ce
	bsr.w sub_20992e
loc_2097ce:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2097f2
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2097f2:
	bsr.w sub_209a28
loc_2097f6:
	tst.w ($ff1588).l
	bne.w loc_2098a2
	tst.b ($ff1510).l
	beq.w loc_2098a2
	tst.w ($f63a).w
	bne.w loc_2098a2
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209900
	tst.b ($f7cc).w
	bne.s loc_20984c
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20984c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20984c
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20984c
	move.b #$9,(a1)
loc_20984c:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209b3e
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209b48
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20989e
	move.w #$63,d1
loc_20989e:
	bsr.w sub_209b48
loc_2098a2:
	tst.b ($ff150e).l
	beq.s loc_2098b4
	clr.b ($ff150e).l
	bsr.w sub_209b1e
loc_2098b4:
	tst.b ($f7d6).w
	beq.s loc_2098fe
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2098d4
	move.l #$6d400001,d0
loc_2098d4:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_2099b6
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2098f4
	move.l #$6e800001,d0
loc_2098f4:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_2099b6
loc_2098fe:
	rts
loc_209900:
	btst.b #$7,($ff152e).l
	bne.s loc_20992c
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207188
	move.b #$1,($ff150c).l
loc_20992c:
	rts

sub_20992e:
	move.l #$73600002,($c00004).l
	lea dat_209994(pc),a2
	move.w #$2,d2
	bra.s loc_20995e

sub_209942:
	lea ($c00000).l,a6
	bsr.w sub_209b1e
	move.l #$70600002,($c00004).l
	lea dat_20998c(pc),a2
	move.w #$6,d2
loc_20995e:
	lea (dat_2330bc).l,a1
loc_209964:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209980
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209974:
	move.l (a3)+,(a6)
	dbf d1,loc_209974
loc_20997a:
	dbf d2,loc_209964
	rts
loc_209980:
	move.l #$0,(a6)
	dbf d1,loc_209980
	bra.s loc_20997a
dat_20998c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209994:
	dc.b $ff,$ff,$00,$00

sub_209998:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209b14
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209b14

sub_2099b6:
	lea (dat_209af0).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2099c6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2099ca:
	sub.l d3,d1
	bcs.s loc_2099d2
	addq.w #$1,d2
	bra.s loc_2099ca
loc_2099d2:
	add.l d3,d1
	tst.w d2
	beq.s loc_2099dc
	move.w #$1,d4
loc_2099dc:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_2099e8
	tst.w d6
	bne.s loc_209a1a
loc_2099e8:
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
loc_209a0e:
	addi.l #$400000,d0
	dbf d6,loc_2099c6
	rts
loc_209a1a:
	moveq #$f,d5
loc_209a1c:
	move.l #$0,(a6)
	dbf d5,loc_209a1c
	bra.s loc_209a0e

sub_209a28:
	lea (dat_209af8).l,a2
	moveq #$2,d6
	bra.s loc_209a3a

sub_209a32:
	lea (dat_209aec).l,a2
	moveq #$5,d6
loc_209a3a:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209a42:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a46:
	sub.l d3,d1
	bcs.s loc_209a4e
	addq.w #$1,d2
	bra.s loc_209a46
loc_209a4e:
	add.l d3,d1
	tst.w d2
	beq.s loc_209a58
	move.w #$1,d4
loc_209a58:
	tst.w d4
	beq.s loc_209a86
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
loc_209a86:
	addi.l #$400000,d0
	dbf d6,loc_209a42
	rts
	.incbin 39570, 90
dat_209aec:
	dc.b $00,$01,$86,$a0
dat_209af0:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209af8:
	dc.b $00,$00,$00,$64
dat_209afc:
	dc.b $00,$00,$00,$0a
dat_209b00:
	dc.b $00,$00,$00,$01
dat_209b04:
	.incbin 39684, 16

sub_209b14:
	moveq #$3,d6
	lea (dat_209b04).l,a2
	bra.s sub_209b50

sub_209b1e:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209b34
	moveq #$9,d1
loc_209b34:
	lea (dat_209b00).l,a2
	moveq #$0,d6
	bra.s sub_209b50

sub_209b3e:
	lea (dat_209b00).l,a2
	moveq #$0,d6
	bra.s sub_209b50

sub_209b48:
	lea (dat_209afc).l,a2
	moveq #$1,d6

sub_209b50:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209b58:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209b5c:
	sub.l d3,d1
	bcs.s loc_209b64
	addq.w #$1,d2
	bra.s loc_209b5c
loc_209b64:
	add.l d3,d1
	tst.w d2
	beq.s loc_209b6e
	move.w #$1,d4
loc_209b6e:
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
	dbf d6,loc_209b58
	rts
	.incbin 39844, 2910
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a710(pc,d0.w),d0
	jmp dat_20a710(pc,d0.w)
dat_20a710:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20ae0e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20adce).l,a2
loc_20a75e:
	jsr (sub_2078ac).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20ae0e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20a7b0
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20a7b0:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20a75e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20a7d8
	bge.s loc_20a7ce
	neg.w d0
loc_20a7ce:
	add.w d0,$a(a0)
	jmp (sub_20392c).l
loc_20a7d8:
	addq.b #$4,$24(a0)
	jmp (sub_20392c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a7fc
	bge.s loc_20a7f2
	neg.w d0
loc_20a7f2:
	add.w d0,$8(a0)
	jmp (sub_20392c).l
loc_20a7fc:
	addq.b #$4,$24(a0)
	jmp (sub_20392c).l
	tst.b $1e(a0)
	beq.s loc_20a816
	subq.b #$1,$1e(a0)
	jmp (sub_20392c).l
loc_20a816:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20a830
	bge.s loc_20a826
	neg.w d0
loc_20a826:
	add.w d0,$a(a0)
	jmp (sub_20392c).l
loc_20a830:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20251c).l
	tst.b $1e(a0)
	beq.s loc_20a852
	subq.b #$1,$1e(a0)
	jmp (sub_20392c).l
loc_20a852:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a86c
	bge.s loc_20a862
	neg.w d0
loc_20a862:
	add.w d0,$8(a0)
	jmp (sub_20392c).l
loc_20a86c:
	jmp (sub_2039d8).l
	tst.l ($f680).w
	bne.s loc_20a886
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039d8).l
loc_20a886:
	rts
	.incbin 43144, 1350
dat_20adce:
	.incbin 44494, 582
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b02e(pc,d0.w),d0
	jsr dat_20b02e(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_2078e2).l
dat_20b02e:
	.incbin 45102, 1708
	btst.b #$7,($ff152e).l
	beq.s loc_20b724
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20b724
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
	bpl.s loc_20b714
	moveq #$0,d1
	bra.s loc_20b71c
loc_20b714:
	cmpi.w #$3,d1
	bcs.s loc_20b71c
	moveq #$2,d1
loc_20b71c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20b724:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_20b754
	cmpi.b #$6,$24(a6)
	bcc.s loc_20b754
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b756(pc,d0.w),d1
	jsr dat_20b756(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_20b754
	jmp (loc_2078e2).l
loc_20b754:
	rts
dat_20b756:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$23a624,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_20b9ec(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_20b86c
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_20b86c
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_20b86c
	tst.b $2c(a6)
	bne.w loc_20b86c
	cmpi.b #$4,$24(a6)
	bne.s loc_20b7f4
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_20b7f4:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_20b80a
	bset.b #$6,$2c(a6)
loc_20b80a:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_20b828
	bset.b #$6,$1(a6)
loc_20b828:
	cmpi.b #$4,$24(a6)
	bne.s loc_20b834
	subq.b #$2,$24(a6)
loc_20b834:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_202352).l
loc_20b86c:
	rts
	.incbin 47214, 382
dat_20b9ec:
	.incbin 47596, 922

sub_20bd86:
	rts
	.incbin 48520, 1138
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c218(pc,d0.w),d0
	jsr dat_20c218(pc,d0.w)
	jsr (sub_20392c).l
	move.w $36(a0),d0
	jmp (loc_2078e6).l
dat_20c218:
	dc.b $00,$16,$00,$4c
loc_20c21c:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_207d00).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20c2fc,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20c274(pc,d0.w),d0
	jmp dat_20c274(pc,d0.w)
dat_20c274:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20c2e0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c21c
	bsr.w sub_20c2e0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c21c
	.incbin 49822, 32
	move.l $8(a0),-(a7)
	bsr.w sub_20c2e0
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20c21c

sub_20c2e0:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_200856).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 49916, 1554
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c928(pc,d0.w),d0
	jsr dat_20c928(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_2078e2).l
dat_20c928:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20c932:
	tst.b $1a(a0)
	beq.s loc_20c93a
	rts
loc_20c93a:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207d06).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20ca7c,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20c988
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20c988:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20c998
	neg.w d0
loc_20c998:
	cmpi.w #$40,d0
	bcc.s loc_20c9d8
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20c9b4
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20c9b4:
	sub.w d1,d0
	bcs.s loc_20c9d8
	cmpi.w #$40,d0
	bcc.s loc_20c9d8
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20c9d8
	move.w #$a4,d0
	jsr (sub_202352).l
loc_20c9d8:
	bra.w loc_20c932
	.incbin 51676, 1058
	jsr (sub_20e42e).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20cf20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce1e(pc,d0.w),d0
	jmp dat_20ce1e(pc,d0.w)
dat_20ce1e:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080108,$16(a0)
	move.l #$20d0a0,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20cff6
	bsr.w sub_20d004
	tst.b $28(a0)
	bmi.s loc_20ce6c
	move.b #$1,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20ce6c:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20cf00
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20cea4
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20cff6
loc_20cea4:
	move.b d0,$2e(a0)
	lea dat_20d022(pc),a1
	jsr (sub_205ec6).l
	jsr (sub_20392c).l
	move.w $2a(a0),d0
	jmp (loc_2078e6).l
	.incbin 52930, 62

sub_20cf00:
	move.b $2e(a0),d0
	jsr (sub_200856).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20cf20:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cf2e(pc,d0.w),d0
	jmp dat_20cf2e(pc,d0.w)
dat_20cf2e:
	dc.b $00,$0a,$00,$48,$00,$48,$00,$8e
	dc.b $00,$9c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20d0b4,$4(a0)
	bsr.w sub_20d004
	tst.b $28(a0)
	bmi.s loc_20cf6e
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20cf6e:
	move.b #$8,$24(a0)
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_206c44).l
	tst.w d1
	bpl.s loc_20cfb0
	addq.b #$2,$24(a0)
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
loc_20cfb0:
	jsr (sub_20392c).l
	jmp (loc_2078e2).l
	move.b #$2,$24(a0)
	neg.l $2c(a0)
	bsr.s sub_20cff6
	bra.s loc_20cfb0
	.incbin 53194, 44

sub_20cff6:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20d004:
	lea dat_20d0d8(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20d022:
	.incbin 53282, 182
dat_20d0d8:
	.incbin 53464, 788
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d410(pc,d0.w),d0
	jsr dat_20d410(pc,d0.w)
	jsr (sub_20392c).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20d40e
	jmp (loc_2078e2).l
loc_20d40e:
	rts
dat_20d410:
	.incbin 54288, 1416
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9b2(pc,d0.w),d0
	jsr dat_20d9b2(pc,d0.w)
	jsr (sub_20392c).l
	jmp (loc_2078e2).l
dat_20d9b2:
	dc.b $00,$04,$01,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20dbce,$4(a0)
	move.w #$3f8,$2(a0)
	move.w #$100,$2c(a0)
	move.b $28(a0),d0
	beq.s loc_20d9f0
	neg.w $2c(a0)
loc_20d9f0:
	jsr (sub_2078c2).l
	bne.w loc_20daee
	move.w a0,$3e(a1)
	move.w a1,$2e(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078c2).l
	bne.w loc_20daee
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078c2).l
	bne.w loc_20daee
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078c2).l
	bne.w loc_20daee
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078c2).l
	bne.w loc_20daee
	move.w a0,$3e(a1)
	move.w a1,$36(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078c2).l
	bne.w loc_20daee
	move.w a0,$3e(a1)
	move.w a1,$38(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	bra.s loc_20daf4
loc_20daee:
	jmp (sub_2039d8).l
loc_20daf4:
	move.w $2c(a0),d0
	add.w d0,$2a(a0)
	move.w $2a(a0),d0
	lsr.w #$8,d0
	jsr (sub_200856).l
	swap d0
	swap d1
	clr.w d0
	clr.w d1
	asr.l #$2,d0
	asr.l #$2,d1
	move.l d0,d4
	move.l d1,d5
	asr.l #$1,d0
	asr.l #$1,d1
	move.l d0,d2
	move.l d1,d3
	asr.l #$1,d0
	asr.l #$1,d1
	movea.w $2e(a0),a1
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
	movea.w $36(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	movea.w $38(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	rts
	.incbin 56270, 2144

sub_20e42e:
	tst.b $28(a0)
	bmi.s loc_20e45e
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e44e
	tst.b ($ff156d).l
	bne.s loc_20e45e
	addq.l #$4,a7
	jmp (loc_2078e2).l
loc_20e44e:
	tst.b ($ff156a).l
	bne.s loc_20e45e
	addq.l #$4,a7
	jmp (sub_2039d8).l
loc_20e45e:
	rts

sub_20e460:
	jsr (sub_20673a).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20e58a).l,a1
	move.w #$3f,d6
	bsr.w sub_20e546
	bne.w loc_20e510
	bclr.b #$6,($f7a7).w
	bne.s loc_20e4b6
	btst.b #$7,($f7a7).w
	beq.s loc_20e4ec
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4e00,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20e510
loc_20e4b6:
	bset.b #$7,($f7a7).w
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940093ff,(a5)
	move.w #$9780,(a5)
	move.l #$46000081,(a5)
	move.w #$0,($c00000).l
loc_20e4de:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20e4de
	move.w #$8f02,(a5)
	bra.s loc_20e510
loc_20e4ec:
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4600,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e510:
	lea (dat_20e598).l,a1
	move.w #$1f,d6
	bsr.w sub_20e546
	bne.s loc_20e544
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4580,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e544:
	rts

sub_20e546:
	subq.b #$1,(a2)
	bpl.w loc_20e57e
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20e55c
	moveq #$0,d0
loc_20e55c:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20e56c:
	move.l (a1)+,(a3)+
	dbf d6,loc_20e56c
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20e57e:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20e58a:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20e598:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20e5a2:
	.incbin 58786, 16
dat_20e5b2:
	.incbin 58802, 2110
	lea ($d000).w,a1
	jsr (sub_207d06).l
	rts
	.incbin 60924, 4062
	move.w ($f640).w,(a5)
	lea (dat_20fe66).l,a1
	move.w #$1f,d6
	bsr.w sub_20fe14
	bne.s loc_20fe12
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$5540,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fe12:
	rts

sub_20fe14:
	subq.b #$1,(a2)
	bpl.s loc_20fe5a
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fe24
	moveq #$0,d0
loc_20fe24:
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
loc_20fe5a:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe66:
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
	.incbin 209084, 5690
dat_2346f6:
	.incbin 214774, 256
dat_2347f6:
	.incbin 215030, 4096
dat_2357f6:
	.incbin 219126, 4996
dat_236b7a:
	.incbin 224122, 14722
dat_23a4fc:
	.incbin 238844, 768
dat_23a7fc:
	.incbin 239612, 22532
