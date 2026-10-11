; R63D__.MMD
; disassembled from the disc; code only, data comes from data/R63D__.MMD at build time
	.file "R63D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$be
	jmp (loc_201c34).l
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
	bsr.w sub_20216a
	bsr.w sub_202112
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2014ae

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
	dc.b $0a,$ca,$04,$64,$00,$00
dat_200220:
	dc.b $22,$03,$01,$00,$01,$01,$01,$02
dat_200228:
	dc.b $04,$64,$00,$00,$0a,$ca
dat_20022e:
	dc.b $23,$03,$01,$00,$01,$01,$01,$02
dat_200236:
	dc.b $00,$00,$0a,$ca,$04,$64
dat_20023c:
	dc.b $31,$06,$01,$01,$01,$00,$01,$02
	dc.b $01,$00,$01,$03,$01,$00
dat_20024a:
	dc.b $00,$00,$04,$04,$00,$ee,$0e,$ee
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
	bsr.w sub_2007f2
	bsr.s sub_20028c
	bsr.w sub_202530
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
	bsr.w sub_2007f2
	bsr.s sub_20031c
	bsr.w sub_202530
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
	bsr.w sub_2007f2
	bsr.s sub_2003b4
	bsr.w sub_202530
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
	bsr.w sub_2007f2
	bsr.s sub_200448
	bsr.w sub_202530
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
	.incbin 1206, 334

sub_200604:
	lea (dat_200670).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200618:
	move.l (a2)+,(a3)+
	dbf d7,loc_200618
	rts

sub_200620:
	lea (dat_200670).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200630:
	move.l (a2)+,(a3)+
	dbf d7,loc_200630
	rts
	.incbin 1592, 56
dat_200670:
	.incbin 1648, 386

sub_2007f2:
	move.w #$2300,sr
loc_2007f6:
	tst.b ($f62a).w
	bne.s loc_2007f6
	rts

sub_2007fe:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200816(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200816(pc,d0.w),d0
	rts
dat_200816:
	.incbin 2070, 640

sub_200a96:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200af2
	move.w d2,d4
	tst.w d3
	bpl.w loc_200ab0
	neg.w d3
loc_200ab0:
	tst.w d4
	bpl.w loc_200ab8
	neg.w d4
loc_200ab8:
	cmp.w d3,d4
	bcc.w loc_200aca
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200afc(pc,d4.w),d0
	bra.s loc_200ad4
loc_200aca:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200afc(pc,d3.w),d0
loc_200ad4:
	tst.w d1
	bpl.w loc_200ae0
	neg.w d0
	addi.w #$80,d0
loc_200ae0:
	tst.w d2
	bpl.w loc_200aec
	neg.w d0
	addi.w #$100,d0
loc_200aec:
	movem.l (a7)+,d3-d4
	rts
loc_200af2:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200afc:
	.incbin 2812, 258

sub_200bfe:
	btst.b #$3,$22(a0)
	beq.s loc_200c12
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c12:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c34
	move.b $26(a0),d0
	bpl.s loc_200c2e
	subq.b #$1,d0
loc_200c2e:
	addi.b #$20,d0
	bra.s loc_200c40
loc_200c34:
	move.b $26(a0),d0
	bpl.s loc_200c3c
	addq.b #$1,d0
loc_200c3c:
	addi.b #$1f,d0
loc_200c40:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200eca
	cmpi.b #$80,d0
	beq.w loc_200e28
	cmpi.b #$c0,d0
	beq.w loc_200d8c
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
	bsr.w sub_201154
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
	bsr.w sub_201154
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200cce
	bpl.s loc_200cd0
	cmpi.w #$fff2,d1
	blt.s loc_200cf6
	add.w d1,$c(a0)
loc_200cce:
	rts
loc_200cd0:
	cmpi.w #$e,d1
	bgt.s loc_200cdc
loc_200cd6:
	add.w d1,$c(a0)
	rts
loc_200cdc:
	tst.b $38(a0)
	bne.s loc_200cd6
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cf6:
	rts
	.incbin 3320, 34
loc_200d1a:
	rts
	.incbin 3356, 68

sub_200d60:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d6e
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d6e:
	btst.l #$0,d2
	bne.s loc_200d7a
	move.b d2,$26(a0)
	rts
loc_200d7a:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d8c:
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
	bsr.w sub_2012c4
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
	bsr.w sub_2012c4
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200e00
	bpl.s loc_200e02
	cmpi.w #$fff2,d1
	blt.w loc_200d1a
	add.w d1,$8(a0)
loc_200e00:
	rts
loc_200e02:
	cmpi.w #$e,d1
	bgt.s loc_200e0e
loc_200e08:
	add.w d1,$8(a0)
	rts
loc_200e0e:
	tst.b $38(a0)
	bne.s loc_200e08
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e28:
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
	bsr.w sub_201154
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
	bsr.w sub_201154
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200ea2
	bpl.s loc_200ea4
	cmpi.w #$fff2,d1
	blt.w loc_200cf6
	sub.w d1,$c(a0)
loc_200ea2:
	rts
loc_200ea4:
	cmpi.w #$e,d1
	bgt.s loc_200eb0
loc_200eaa:
	sub.w d1,$c(a0)
	rts
loc_200eb0:
	tst.b $38(a0)
	bne.s loc_200eaa
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200eca:
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
	bsr.w sub_2012c4
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
	bsr.w sub_2012c4
	move.w (a7)+,d0
	bsr.w sub_200d60
	tst.w d1
	beq.s loc_200f44
	bpl.s loc_200f46
	cmpi.w #$fff2,d1
	blt.w loc_200d1a
	sub.w d1,$8(a0)
loc_200f44:
	rts
loc_200f46:
	cmpi.w #$e,d1
	bgt.s loc_200f52
loc_200f4c:
	sub.w d1,$8(a0)
	rts
loc_200f52:
	tst.b $38(a0)
	bne.s loc_200f4c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f6c:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f82
	andi.w #$380,d0
loc_200f82:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200fe2
	bmi.s loc_200fe6
	cmpi.b #$5,($ff1506).l
	beq.s loc_200fb2
	cmpi.b #$6,($ff1506).l
	bne.s loc_200fb8
loc_200fb2:
	andi.w #$7fff,$2(a0)
loc_200fb8:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fc8
	bclr.b #$6,$1(a0)
loc_200fc8:
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
loc_200fe2:
	movea.l d1,a1
	rts
loc_200fe6:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20104e
	btst.b #$6,$1(a0)
	bne.s loc_201014
	cmpi.b #$14,d1
	bne.w loc_201138
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201138
loc_201014:
	cmpi.b #$15,d1
	bne.s loc_201022
	move.w #$60,d1
	bra.w loc_201138
loc_201022:
	cmpi.b #$1e,d1
	bne.s loc_201030
	move.w #$61,d1
	bra.w loc_201138
loc_201030:
	cmpi.b #$1f,d1
	bne.s loc_20103e
	move.w #$62,d1
	bra.w loc_201138
loc_20103e:
	cmpi.b #$32,d1
	bne.w loc_201138
	move.w #$63,d1
	bra.w loc_201138
loc_20104e:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2010b4
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20109e
	cmpi.b #$6,d1
	beq.s loc_20109e
	tst.b ($ff1956).l
	beq.w loc_201138
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2010ae
	cmpi.b #$3c,d1
	beq.s loc_2010ae
	cmpi.b #$37,d1
	beq.s loc_2010ae
	cmpi.b #$2f,d1
	beq.s loc_2010ae
	cmpi.b #$16,d1
	beq.s loc_2010ae
	bra.w loc_201138
loc_20109e:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201138
loc_2010ae:
	addq.b #$1,d1
	bra.w loc_201138
loc_2010b4:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201124
	cmpi.b #$3,$0(a0)
	bcc.w loc_201138
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201138
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010e8
	move.w #$6a,d1
	bra.s loc_201138
loc_2010e8:
	cmpi.b #$48,d1
	bne.s loc_2010f4
	move.w #$6b,d1
	bra.s loc_201138
loc_2010f4:
	cmpi.b #$4a,d1
	bne.s loc_201100
	move.w #$6c,d1
	bra.s loc_201138
loc_201100:
	cmpi.b #$10,d1
	bne.s loc_20110c
	move.w #$6d,d1
	bra.s loc_201138
loc_20110c:
	cmpi.b #$63,d1
	bne.s loc_201118
	move.w #$6e,d1
	bra.s loc_201138
loc_201118:
	cmpi.b #$43,d1
	bne.s loc_201138
	move.w #$6f,d1
	bra.s loc_201138
loc_201124:
	btst.b #$6,$1(a0)
	beq.s loc_201138
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201138
	move.w #$51,d1
loc_201138:
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

sub_201154:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_20116e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20116e
	btst.l d5,d4
	bne.s loc_20117c
loc_20116e:
	add.w a3,d2
	bsr.w sub_201214
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20117c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20116e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011a2
	not.w d1
	neg.b (a4)
loc_2011a2:
	btst.l #$c,d4
	beq.s loc_2011b2
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011b2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011ce
	neg.w d0
loc_2011ce:
	tst.w d0
	beq.s loc_20116e
	bmi.s loc_2011ea
	cmpi.b #$10,d0
	beq.s loc_201206
loc_2011da:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011ea:
	cmpa.w #$10,a3
	bne.s loc_2011fa
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011da
loc_2011fa:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20116e
loc_201206:
	sub.w a3,d2
	bsr.w sub_201214
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201214:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_20122e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20122e
	btst.l d5,d4
	bne.s loc_20123c
loc_20122e:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20123c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20122e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201262
	not.w d1
	neg.b (a4)
loc_201262:
	btst.l #$c,d4
	beq.s loc_201272
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201272:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20128e
	neg.w d0
loc_20128e:
	tst.w d0
	beq.s loc_20122e
	bmi.s loc_2012a4
loc_201294:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012a4:
	cmpa.w #$10,a3
	bne.s loc_2012b4
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201294
loc_2012b4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20122e
	not.w d1
	rts

sub_2012c4:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_2012de
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012de
	btst.l d5,d4
	bne.s loc_2012ec
loc_2012de:
	add.w a3,d3
	bsr.w sub_201374
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012ec:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012de
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20131a
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20131a:
	btst.l #$b,d4
	beq.s loc_201322
	neg.b (a4)
loc_201322:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20133e
	neg.w d0
loc_20133e:
	tst.w d0
	beq.s loc_2012de
	bmi.s loc_20135a
	cmpi.b #$10,d0
	beq.s loc_201366
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20135a:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012de
loc_201366:
	sub.w a3,d3
	bsr.w sub_201374
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201374:
	bsr.w sub_200f6c
	cmpi.l #$210000,d1
	beq.s loc_20138e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20138e
	btst.l d5,d4
	bne.s loc_20139c
loc_20138e:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20139c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20138e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2013ca
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013ca:
	btst.l #$b,d4
	beq.s loc_2013d2
	neg.b (a4)
loc_2013d2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013ee
	neg.w d0
loc_2013ee:
	tst.w d0
	beq.s loc_20138e
	bmi.s loc_201404
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201404:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20138e
	not.w d1
	rts

sub_201414:
	rts
	.incbin 5142, 152
loc_2014ae:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014ce
	tst.b ($ff0f01).l
	bne.s loc_2014ce
	move.b #$1,($ff156a).l
loc_2014ce:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201534
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207642
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201534
	move.b #$1,($ff1508).l
loc_201534:
	bset.b #$7,($f600).w
	bsr.w sub_202522
	tst.b ($ff156e).l
	bne.s loc_20155a
	btst.b #$7,($ff152e).l
	beq.s loc_201590
	bset.b #$0,($ff151d).l
	beq.s loc_201566
loc_20155a:
	bsr.w sub_200428
	bclr.b #$0,($ff151d).l
loc_201566:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201600
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20158e
	bclr.b #$7,($ff152e).l
loc_20158e:
	rts
loc_201590:
	bset.b #$0,($ff151d).l
	beq.s loc_20159e
	bsr.w sub_2002fc
loc_20159e:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2015ba
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015e2
loc_2015ba:
	tst.b ($ff1508).l
	bne.s loc_201600
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015e2:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015ea:
	move.l #$0,(a1)+
	dbf d6,loc_2015ea
	move.b #$c,($f62a).w
	bsr.w sub_2007f2
	rts
loc_201600:
	cmpi.w #$800,($f78e).w
	bne.s loc_20161e
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20161e:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201634
	btst.b #$7,($ff152e).l
	beq.s loc_20163a
loc_201634:
	move.l #$eee0eee,d0
loc_20163a:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201642:
	move.l d0,(a1)+
	dbf d6,loc_201642
loc_201648:
	move.b #$c,($f62a).w
	bsr.w sub_2007f2
	bsr.w sub_202530
	bne.s loc_201648
	tst.l ($f680).w
	bsr.w sub_201aee
	moveq #$0,d0
	lea (dat_20e5ea).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201672
	bsr.w sub_202636
loc_201672:
	moveq #$1,d0
	bsr.w sub_202636
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20168e:
	move.l d0,(a1)+
	dbf d1,loc_20168e
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016a0:
	move.l d0,(a1)+
	dbf d1,loc_2016a0
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2016b0:
	move.l d0,(a1)+
	dbf d1,loc_2016b0
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2016c2:
	move.l d0,(a1)+
	dbf d1,loc_2016c2
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2016d2:
	move.l d0,(a1)+
	dbf d1,loc_2016d2
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016e2:
	move.l d0,(a1)+
	dbf d1,loc_2016e2
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20220c
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
	bsr.w sub_200620
	moveq #$3,d0
	bsr.w sub_200604
	bsr.w sub_202898
	bsr.w sub_2029ec
	bset.b #$2,($f754).w
	bsr.w sub_2033ee
	bsr.w sub_2032f4
	jsr (sub_201414).l
	bsr.w sub_201a28
loc_201762:
	move.b #$c,($f62a).w
	bsr.w sub_2007f2
	bsr.w sub_202530
	bne.s loc_201762
	tst.l ($f680).w
	bne.s loc_201762
	bsr.w sub_2019b4
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b4e
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2017c6
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2017c6:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201808
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201808:
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
	jsr (sub_20e408).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201898
loc_201892:
	bsr.w sub_20037a
	bra.s loc_2018a6
loc_201898:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201892
	bsr.w sub_20025a
loc_2018a6:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2018b4:
	move.b #$8,($f62a).w
	bsr.w sub_2007f2
	tst.b ($f7cc).w
	bne.s loc_2018d2
	btst.b #$7,($f605).w
	beq.s loc_2018d2
	eori.b #$1,($f63a).w
loc_2018d2:
	btst.b #$0,($f63a).w
	beq.w loc_201944
	bsr.w sub_201bb2
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201922
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2018b4
	subq.b #$1,($ff1508).l
	bpl.s loc_201904
	clr.b ($ff1508).l
loc_201904:
	move.w #$e,d0
	jsr (sub_205e2e).l
	bsr.w sub_207642
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201930
loc_201922:
	andi.b #$70,d0
	beq.w loc_2018b4
	clr.b ($ff1508).l
loc_201930:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2014ae
loc_201944:
	bsr.w sub_201bf8
	addq.w #$1,($ff1504).l
	jsr (sub_207658).l
	jsr (sub_2037f4).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014ae
	tst.w ($ff1502).l
	bne.w loc_2014ae
	tst.w ($ff1906).l
	bne.s loc_20198c
	cmpi.b #$6,($d024).w
	bcs.s loc_20198c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201990
loc_20198c:
	bsr.w sub_2029ec
loc_201990:
	jsr (sub_20399e).l
	tst.w ($ff190e).l
	bne.s loc_2019a2
	bsr.w sub_200184
loc_2019a2:
	jsr (sub_20bd2e).l
	bsr.w sub_202530
	bsr.w sub_201a5a
	bra.w loc_2018b4

sub_2019b4:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019cc
	move.w #$78,$30(a1)
loc_2019cc:
	rts
	.incbin 6606, 90

sub_201a28:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a3a(pc,d0.w),($f796).w
	rts
dat_201a3a:
	.incbin 6714, 32

sub_201a5a:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a78
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a78:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a96
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a96:
	subq.b #$1,($ff1914).l
	bpl.s loc_201abe
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201abe
	move.b #$0,($ff1915).l
loc_201abe:
	tst.b ($ff1916).l
	beq.s loc_201aec
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201aec:
	rts

sub_201aee:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b10
	cmpi.b #$2,d0
	bne.s loc_201b10
	add.b ($ff156a).l,d0
loc_201b10:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b28(pc,d1.w),d0
	jmp (sub_205e2e).l
dat_201b28:
	.incbin 6952, 38

sub_201b4e:
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

sub_201bb2:
	move.w #$ab,d0
	jsr (sub_2022fa).l
	bset.b #$7,($f63a).w
	bne.s loc_201bf6
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bdc
loc_201bd2:
	move.w #$d5,d0
	jmp (sub_205e2e).l
loc_201bdc:
	tst.b ($ff151f).l
	bne.s loc_201bd2
	tst.b ($ff1520).l
	bne.s loc_201bd2
	move.w #$90,d0
	jmp (sub_205e2e).l
loc_201bf6:
	rts

sub_201bf8:
	bclr.b #$7,($f63a).w
	beq.s loc_201c32
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c18
loc_201c0e:
	move.w #$d6,d0
	jmp (sub_205e2e).l
loc_201c18:
	tst.b ($ff151f).l
	bne.s loc_201c0e
	tst.b ($ff1520).l
	bne.s loc_201c0e
	move.w #$91,d0
	jmp (sub_205e2e).l
loc_201c32:
	rts
loc_201c34:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201cc0
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c70
	move.w #$700,d0
loc_201c6c:
	dbf d0,loc_201c6c
loc_201c70:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201ca6(pc,d0.w),d0
	jsr dat_201ca6(pc,d0.w)
loc_201c86:
	jsr (sub_20231e).l
	tst.b ($f63a).w
	bne.s loc_201c9a
	bsr.w sub_2020d2
	bsr.w sub_2020c0
loc_201c9a:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201ca6:
	.incbin 7334, 26
loc_201cc0:
	tst.b ($ff1957).l
	beq.w loc_201c86
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c86
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cee
	move.w #$700,d0
loc_201cea:
	dbf d0,loc_201cea
loc_201cee:
	move.w #$1,($f6fc).w
	jsr (sub_202292).l
	tst.b ($f64e).w
	bne.s loc_201d26
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d4a
loc_201d26:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d4a:
	move.w ($f624).w,(a5)
	jsr (sub_2022ae).l
	bra.w loc_201c86
	.incbin 7512, 60
	jsr (sub_202292).l
	bsr.w sub_20212e
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
	bsr.w sub_205d5a
	tst.b ($f767).w
	beq.s loc_201e42
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e42:
	jsr (sub_20e408).l
	jsr (sub_2022ae).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202eea
	bsr.w sub_2025a2
	jmp (loc_2096ee).l
	dc.b $4e,$75
	jsr (sub_202292).l
	bsr.w sub_20212e
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
	jsr (sub_2022ae).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202eea
	bra.w loc_202586
	.incbin 7962, 16
	bsr.w sub_202016
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f4c
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f4c:
	move.w ($f624).w,(a5)
	bra.w loc_202586
	dc.b $4e,$b9,$00,$20,$22,$92,$61,$00
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
	jsr (sub_2022ae).l
	lea ($d000).w,a0
	bsr.w sub_205d5a
	tst.b ($f767).w
	beq.s loc_202008
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202008:
	tst.w ($f614).w
	beq.w loc_202014
	subq.w #$1,($f614).w
loc_202014:
	rts

sub_202016:
	jsr (sub_202292).l
	bsr.w sub_20212e
	tst.b ($f64e).w
	bne.s loc_20204c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202070
loc_20204c:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202070:
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
	jmp (sub_2022ae).l
	dc.b $4e,$73

sub_2020c0:
	tst.b ($d02a).w
	bne.s loc_2020d0
	tst.w ($f786).w
	beq.s loc_2020d0
	addq.w #$1,($f786).w
loc_2020d0:
	rts

sub_2020d2:
	tst.w ($f780).w
	beq.s loc_2020dc
	addq.w #$1,($f780).w
loc_2020dc:
	tst.w ($f782).w
	beq.s loc_2020e6
	addq.w #$1,($f782).w
loc_2020e6:
	rts
	.incbin 8424, 42

sub_202112:
	bsr.w sub_202292
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022ae

sub_20212e:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20213c
	addq.w #$2,a1

sub_20213c:
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

sub_20216a:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021e6).l,a2
	moveq #$12,d7
loc_20217e:
	move.w (a2)+,(a0)
	dbf d7,loc_20217e
	move.w (dat_2021e8).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021a4:
	move.w d0,(a1)
	dbf d7,loc_2021a4
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021d6:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021d6
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021e6:
	dc.b $80,$04
dat_2021e8:
	.incbin 8680, 36

sub_20220c:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20222e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20222e
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20225c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20225c
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20227a:
	move.l d0,(a1)+
	dbf d1,loc_20227a
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20228a:
	move.l d0,(a1)+
	dbf d1,loc_20228a
	rts

sub_202292:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022a2:
	btst.b #$0,($a11100).l
	bne.s loc_2022a2
	rts

sub_2022ae:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8892, 62

sub_2022fa:
	tst.b ($f00a).w
	bne.s loc_202306
	move.b d0,($f00a).w
	rts
loc_202306:
	tst.b ($f00b).w
	bne.s loc_202312
	move.b d0,($f00b).w
	rts
loc_202312:
	tst.b ($f00c).w
	bne.s loc_20231c
	move.b d0,($f00c).w
loc_20231c:
	rts

sub_20231e:
	jsr (sub_202292).l
	tst.b ($f00a).w
	beq.s loc_202338
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202338:
	tst.b ($f00b).w
	beq.s loc_20234c
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20234c:
	tst.b ($f00c).w
	beq.s loc_202360
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202360:
	bra.w sub_2022ae
	.incbin 9060, 32

sub_202384:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202446).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023a0

sub_202396:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20245c).l,a3
loc_2023a0:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023ae
	adda.w #$a,a3
loc_2023ae:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202472
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2023ce
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2023ce:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20241a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2023f6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2023f6:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202404:
	lsr.w #$4,d0
loc_202406:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202414
	jmp (a3)

sub_202410:
	moveq #$0,d4
	moveq #$8,d3
loc_202414:
	dbf d0,loc_202406
	bra.s sub_2023ce
loc_20241a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202428
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202428:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202404
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202404
loc_202446:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202410
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202410
	rts
dat_20245c:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202410
	rts

sub_202472:
	move.b (a0)+,d0
loc_202474:
	cmpi.b #$ff,d0
	bne.s loc_20247c
	rts
loc_20247c:
	move.w d0,d7
loc_20247e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202474
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
	bne.s loc_2024ac
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20247e
loc_2024ac:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2024b8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2024b8
	bra.s loc_20247e

sub_2024c4:
	movem.l a1-a2,-(a7)
	lea (dat_20e5fa).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024dc:
	tst.l (a2)
	beq.s loc_2024e4
	addq.w #$6,a2
	bra.s loc_2024dc
loc_2024e4:
	move.w (a1)+,d0
	bmi.s loc_2024f0
loc_2024e8:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024e8
loc_2024f0:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9462, 44

sub_202522:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202528:
	clr.l (a2)+
	dbf d0,loc_202528
	rts

sub_202530:
	tst.l ($f680).w
	beq.s loc_202584
	tst.w ($f6f8).w
	bne.s loc_202584
	movea.l ($f680).w,a0
	lea (loc_202446).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202552
	adda.w #$a,a3
loc_202552:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202472
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
loc_202584:
	rts
loc_202586:
	tst.w ($f6f8).w
	beq.w loc_202624
loc_20258e:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2025c0

sub_2025a2:
	tst.w ($f6f8).w
	beq.s loc_202624
	tst.b ($f744).w
	bne.s loc_20258e
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2025c0:
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
loc_2025f4:
	movea.w #$8,a5
	bsr.w sub_202410
	subq.w #$1,($f6f8).w
	beq.s loc_202626
	subq.w #$1,($f6fa).w
	bne.s loc_2025f4
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202624:
	rts
loc_202626:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20262c:
	move.l $6(a0),(a0)+
	dbf d0,loc_20262c
	rts

sub_202636:
	lea (dat_20e5fa).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202648:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202384
	dbf d1,loc_202648
	rts
	.incbin 9832, 560

sub_202898:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028f4).l,a0
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
	bra.w loc_202920
dat_2028f4:
	dc.b $00,$04,$00,$00,$0d,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202900:
	.incbin 10496, 32
loc_202920:
	tst.b ($ff1522).l
	beq.s loc_202940
	jsr (sub_2069b8).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20293e
	moveq #$0,d0
loc_20293e:
	bra.s loc_20297c
loc_202940:
	lea (dat_2029b8).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202962
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202900).l,a1
	adda.w d0,a1
	bra.s loc_20296c
loc_202962:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_20296c:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_20297c:
	subi.w #$a0,d1
	bcc.s loc_202984
	moveq #$0,d1
loc_202984:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_20298e
	move.w d2,d1
loc_20298e:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20299a
	moveq #$0,d0
loc_20299a:
	cmp.w ($f72e).w,d0
	blt.s loc_2029a4
	move.w ($f72e).w,d0
loc_2029a4:
	move.w d0,($f704).w
	bsr.w sub_2029c0
	lea (dat_2029bc).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029b8:
	dc.b $00,$30,$06,$2c
dat_2029bc:
	dc.b $7f,$7f,$7f,$7f

sub_2029c0:
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

sub_2029ec:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029f8
	rts
loc_2029f8:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b60
	bsr.w sub_202c00
	bsr.w sub_203488
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e8a
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e56
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e22
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202df2
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
	bsr.w sub_202ad8
	move.w ($f718).w,d0
	neg.w d0
	moveq #$17,d6
loc_202a9c:
	move.w d0,(a1)+
	dbf d6,loc_202a9c
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202aaa:
	move.w d0,(a1)+
	dbf d6,loc_202aaa
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b1e
dat_202ace:
	dc.b $05,$03,$02,$02,$01,$01,$01,$01
	dc.b $01,$00

sub_202ad8:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$8,d6
	adda.w #$34,a1
loc_202af0:
	move.b d3,d0
	jsr (sub_2007fe).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202ace(pc,d6.w),d1
loc_202b0c:
	move.w d5,-(a1)
	dbf d1,loc_202b0c
	addq.b #$6,d3
	dbf d6,loc_202af0
	adda.w #$34,a1
	rts
loc_202b1e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b2c(pc,d2.w)
loc_202b2a:
	move.w (a2)+,d0
loc_202b2c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b2a
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
	dbf d1,loc_202b2a
	rts

sub_202b60:
	move.w ($f700).w,d4
	bsr.s sub_202b94
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b92
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b8c
	bset.b #$2,($f754).w
	rts
loc_202b8c:
	bset.b #$3,($f754).w
loc_202b92:
	rts

sub_202b94:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ba6
	bcs.s loc_202bd6
	bra.s loc_202bac
loc_202ba6:
	clr.w ($f73a).w
	rts
loc_202bac:
	cmpi.w #$10,d0
	blt.s loc_202bb6
	move.w #$10,d0
loc_202bb6:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bc4
	move.w ($f72a).w,d0
loc_202bc4:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bd6:
	cmpi.w #$fff0,d0
	bge.s loc_202be0
	move.w #$fff0,d0
loc_202be0:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bc4
	move.w ($f728).w,d0
	bra.s loc_202bc4
	.incbin 11248, 16

sub_202c00:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c14
	subq.w #$5,d0
loc_202c14:
	btst.b #$1,$22(a6)
	beq.s loc_202c34
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c80
	subi.w #$40,d0
	bcc.s loc_202c80
	tst.b ($f75c).w
	bne.s loc_202c92
	bra.s loc_202c40
loc_202c34:
	sub.w ($f73e).w,d0
	bne.s loc_202c46
	tst.b ($f75c).w
	bne.s loc_202c92
loc_202c40:
	clr.w ($f73c).w
	rts
loc_202c46:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c6e
	move.w $14(a6),d1
	bpl.s loc_202c56
	neg.w d1
loc_202c56:
	cmpi.w #$800,d1
	bcc.s loc_202c80
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202ce0
	cmpi.w #$fffa,d0
	blt.s loc_202caa
	bra.s loc_202c98
loc_202c6e:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202ce0
	cmpi.w #$fffe,d0
	blt.s loc_202caa
	bra.s loc_202c98
loc_202c80:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202ce0
	cmpi.w #$fff0,d0
	blt.s loc_202caa
	bra.s loc_202c98
loc_202c92:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c98:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202cea
	bra.w loc_202cb6
loc_202caa:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cb6:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d0e
	cmpi.w #$ff00,d1
	bgt.s loc_202cda
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d0e
loc_202cda:
	move.w ($f72c).w,d1
	bra.s loc_202d0e
loc_202ce0:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cea:
	cmp.w ($f72e).w,d1
	blt.s loc_202d0e
	subi.w #$800,d1
	bcs.s loc_202d0a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d0e
loc_202d0a:
	move.w ($f72e).w,d1
loc_202d0e:
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
	bne.s loc_202d50
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d4a
	bset.b #$0,($f754).w
	rts
loc_202d4a:
	bset.b #$1,($f754).w
loc_202d50:
	rts
	.incbin 11602, 64
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dba
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202db4
	bset.b #$0,($f756).w
	rts
loc_202db4:
	bset.b #$1,($f756).w
loc_202dba:
	rts
	.incbin 11708, 54

sub_202df2:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e20
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e1a
	bset.b #$0,($f756).w
	rts
loc_202e1a:
	bset.b #$1,($f756).w
loc_202e20:
	rts

sub_202e22:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e54
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e4e
	bset.b d6,($f756).w
	bra.s loc_202e54
loc_202e4e:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e54:
	rts

sub_202e56:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e88
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e82
	bset.b d6,($f758).w
	bra.s loc_202e88
loc_202e82:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e88:
	rts

sub_202e8a:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ebc
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202eb6
	bset.b d6,($f75a).w
	bra.s loc_202ebc
loc_202eb6:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ebc:
	rts
	.incbin 11966, 44

sub_202eea:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fa8
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20308e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203090
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fa6
	bclr.b #$0,(a2)
	beq.s loc_202f5c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032bc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203092
loc_202f5c:
	bclr.b #$1,(a2)
	beq.s loc_202f76
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032bc
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203092
loc_202f76:
	bclr.b #$2,(a2)
	beq.s loc_202f8c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032bc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030e8
loc_202f8c:
	bclr.b #$3,(a2)
	beq.s loc_202fa6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032bc
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030e8
loc_202fa6:
	rts

sub_202fa8:
	lea (dat_203374).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fc4
	bclr.b #$1,(a2)
	beq.s loc_20300e
	move.w #$e0,d4
loc_202fc4:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20303e(pc,d0.w),a3
	beq.s loc_202ff6
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032bc
	movem.l (a7)+,d4-d5
	bsr.w sub_203092
	movea.l (a7)+,a0
	bra.s loc_20300e
loc_202ff6:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032be
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030be
	movea.l (a7)+,a0
loc_20300e:
	tst.b (a2)
	bne.s loc_203014
	rts
loc_203014:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203028
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203028:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20304e
dat_20303e:
	.incbin 12350, 16
loc_20304e:
	moveq #$f,d6
	move.l #$800000,d7
loc_203056:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203082
	btst.b d0,(a2)
	beq.s loc_203082
	add.w d0,d0
	movea.l dat_20303e(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203194
	movem.l (a7)+,d4-d5
	bsr.w sub_2032bc
	bsr.w sub_203116
	movem.l (a7)+,d4-d5/a0
loc_203082:
	addi.w #$10,d4
	dbf d6,loc_203056
	clr.b (a2)
	rts

sub_20308e:
	rts

sub_203090:
	rts

sub_203092:
	moveq #$15,d6

sub_203094:
	move.l #$800000,d7
	move.l d0,d1
loc_20309c:
	movem.l d4-d5,-(a7)
	bsr.w sub_203194
	move.l d1,d0
	bsr.w sub_203116
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20309c
	rts

sub_2030be:
	move.l #$800000,d7
	move.l d0,d1
loc_2030c6:
	movem.l d4-d5,-(a7)
	bsr.w sub_203196
	move.l d1,d0
	bsr.w sub_203116
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030c6
	rts

sub_2030e8:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030f2:
	movem.l d4-d5,-(a7)
	bsr.w sub_203194
	move.l d1,d0
	bsr.w sub_203116
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030f2
	rts

sub_203116:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203152
	btst.b #$3,(a0)
	bne.s loc_203132
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203132:
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
loc_203152:
	btst.b #$3,(a0)
	bne.s loc_203174
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
loc_203174:
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

sub_203194:
	add.w (a3),d5

sub_203196:
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
	beq.s loc_2031e4
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
loc_2031e4:
	rts
	.incbin 12774, 214

sub_2032bc:
	add.w (a3),d5

sub_2032be:
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
	.incbin 13016, 28

sub_2032f4:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20331e
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203346

sub_20331e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203322:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032bc
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203094
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203322
	rts
loc_203346:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20334a:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203374).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033b6
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20334a
	rts
dat_203374:
	.incbin 13172, 50
dat_2033a6:
	.incbin 13222, 16

sub_2033b6:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033a6(pc,d0.w),a3
	beq.s loc_2033d8
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032bc
	movem.l (a7)+,d4-d5
	bsr.w sub_203092
	bra.s loc_2033ec
loc_2033d8:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032be
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030be
loc_2033ec:
	rts

sub_2033ee:
	moveq #$0,d0
	lea (dat_20e5ea).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202396
	movea.l (a2)+,a0
	bsr.w sub_20343a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200604
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203438
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203438
	bsr.w sub_2024c4
loc_203438:
	rts

sub_20343a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203444:
	move.l d0,(a3)+
	dbf d1,loc_203444
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20345a
	lea ($a040).w,a3
	moveq #$2,d1

sub_20345a:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b7a).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203474:
	move.w d1,d0
	movea.l a3,a0
loc_203478:
	move.b (a1)+,(a0)+
	dbf d0,loc_203478
	lea $80(a3),a3
	dbf d2,loc_203474
	rts

sub_203488:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203502(pc,d0.w),d0
	jsr dat_203502(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034ae
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034ae:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034dc
	bcc.s loc_2034de
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034d2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034d2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034dc:
	rts
loc_2034de:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034f6
	btst.b #$1,($d022).w
	beq.s loc_2034f6
	add.w d1,d1
	add.w d1,d1
loc_2034f6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203502:
	.incbin 13570, 224
	btst.b #$4,($f7a7).w
	bne.s loc_2035f2
	move.w #$710,($f726).w
	rts
loc_2035f2:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_2037ae
	bne.w loc_20363e
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_203622
	cmpi.w #$498,$c(a1)
	ble.s loc_20361c
	move.w #$5d0,d0
	bra.s loc_203626
loc_20361c:
	move.w #$3d0,d0
	bra.s loc_203626
loc_203622:
	move.w #$1d0,d0
loc_203626:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_203634
	neg.w d0
loc_203634:
	cmpi.w #$2,d0
	bgt.s loc_20363e
	move.w d1,($f72e).w
loc_20363e:
	rts
	.incbin 13888, 74
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20369c(pc,d0.w),d0
	jmp dat_20369c(pc,d0.w)
dat_20369c:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $07,$10,$f7,$26,$4e,$75
	tst.b ($f7a7).w
	bne.s loc_2036b8
	move.w #$310,($f726).w
	rts
loc_2036b8:
	move.w #$10c,d0
	move.w d0,($f72c).w
	move.w d0,($f724).w
	move.w d0,($f72e).w
	move.w d0,($f726).w
	rts
	.incbin 14030, 118
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203756(pc,d0.w),d0
	jmp dat_203756(pc,d0.w)
dat_203756:
	dc.b $00,$06,$00,$0e,$00,$16
	move.w #$510,($f726).w
	rts
	.incbin 14180, 74

sub_2037ae:
	cmp.w ($d008).w,d0
	ble.s loc_2037b8
	moveq #$0,d0
	rts
loc_2037b8:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_2037c4
	neg.w d1
loc_2037c4:
	cmpi.w #$4,d1
	bge.s loc_2037d0
	move.w ($f726).w,($f72e).w
loc_2037d0:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_2037f0
	cmp.w ($f72a).w,d0
	ble.s loc_2037e8
	move.w ($f72a).w,d0
loc_2037e8:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_2037f0:
	moveq #$1,d0
	rts

sub_2037f4:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2037fc:
	move.b (a0),d0
	beq.s loc_203812
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c16).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203812:
	lea $40(a0),a0
	dbf d7,loc_2037fc
	rts

sub_20381c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20385a
	bpl.s loc_20384c
	btst.b #$1,$2c(a0)
	beq.s loc_20384c
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20385a
loc_20384c:
	btst.b #$2,$2c(a0)
	bne.s loc_20385a
	addi.w #$38,$12(a0)
loc_20385a:
	tst.w $12(a0)
	bmi.s loc_20386e
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20386e
	move.w #$1000,$12(a0)
loc_20386e:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20387e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038ba
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038ba
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038b8
	neg.w d1
loc_2038b8:
	add.w d1,d0
loc_2038ba:
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

sub_2038d4:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203944
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203960
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203960
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20391e
	cmpi.w #$800,d3
	bcs.s loc_203930
	subi.w #$800,d3
	bra.s loc_203930
loc_20391e:
	cmpi.w #$700,($f704).w
	bcs.s loc_203930
	cmpi.w #$100,d3
	bcc.s loc_203930
	addi.w #$800,d3
loc_203930:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203960
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203960
loc_203944:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203960
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203960:
	rts
	.incbin 14690, 30

sub_203980:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203986:
	move.l d1,(a1)+
	dbf d0,loc_203986
	rts
dat_20398e:
	.incbin 14734, 16

sub_20399e:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039aa:
	tst.w (a4)
	beq.w loc_203a6a
	moveq #$2,d6
loc_2039b2:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a62
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a18
	movea.l dat_20398e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2039fc
	cmpi.w #$800,d2
	bcs.s loc_203a0e
	subi.w #$800,d2
	bra.s loc_203a0e
loc_2039fc:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a0e
	cmpi.w #$100,d2
	bcc.s loc_203a0e
	addi.w #$800,d2
loc_203a0e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a3a
loc_203a18:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a3a
	.incbin 14882, 24
loc_203a3a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a58
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a5c
loc_203a58:
	bsr.w sub_203a8c
loc_203a5c:
	bset.b #$7,$1(a0)
loc_203a62:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039b2
loc_203a6a:
	lea $80(a4),a4
	dbf d7,loc_2039aa
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a84
	move.l #$0,(a2)
	rts
loc_203a84:
	move.b #$0,-$5(a2)
	rts

sub_203a8c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203ad2
	btst.l #$1,d4
	bne.w loc_203b20
loc_203a9e:
	cmpi.b #$50,d5
	beq.s loc_203ad0
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
	bne.s loc_203aca
	addq.w #$1,d0
loc_203aca:
	move.w d0,(a2)+
	dbf d1,loc_203a9e
loc_203ad0:
	rts
loc_203ad2:
	btst.l #$1,d4
	bne.w loc_203b66
loc_203ada:
	cmpi.b #$50,d5
	beq.s loc_203b1e
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
	bne.s loc_203b18
	addq.w #$1,d0
loc_203b18:
	move.w d0,(a2)+
	dbf d1,loc_203ada
loc_203b1e:
	rts
loc_203b20:
	cmpi.b #$50,d5
	beq.s loc_203b64
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
	bne.s loc_203b5e
	addq.w #$1,d0
loc_203b5e:
	move.w d0,(a2)+
	dbf d1,loc_203b20
loc_203b64:
	rts
loc_203b66:
	cmpi.b #$50,d5
	beq.s loc_203bb8
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
	bne.s loc_203bb2
	addq.w #$1,d0
loc_203bb2:
	move.w d0,(a2)+
	dbf d1,loc_203b66
loc_203bb8:
	rts
	.incbin 15290, 92
dat_203c16:
	.incbin 15382, 262

sub_203d1c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d2e
	move.w #$0,(a1)
	rts
loc_203d2e:
	tst.w (a1)
	bne.s loc_203d38
	move.b #$1,$1(a1)
loc_203d38:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d82
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d74
	neg.w $10(a0)
loc_203d74:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205e2e
loc_203d82:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203da0
	cmpa.w #$d040,a0
	beq.s loc_203da0
	tst.b ($ff1906).l
	beq.s loc_203da0
	jmp (loc_2072e4).l
loc_203da0:
	move.b $2a(a0),d0
	beq.s loc_203dca
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203dbc
	cmpi.b #$2d,d0
	bcs.s loc_203dc6
	move.b #$2d,d0
	bra.s loc_203dc6
loc_203dbc:
	cmpi.b #$1e,d0
	bcs.s loc_203dc6
	move.b #$1e,d0
loc_203dc6:
	move.b d0,$2a(a0)
loc_203dca:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203dd8(pc,d0.w),d1
	jmp dat_203dd8(pc,d1.w)
dat_203dd8:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203de2:
	tst.b ($d300).w
	bne.s loc_203e20
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e20:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e48
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e48:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e7c:
	tst.b ($ff1506).l
	bne.s loc_203ee2
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203ee2
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f5c
	cmpi.b #$2f,d1
	bne.s loc_203ee4
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203ee2
	tst.b $2c(a0)
	beq.s loc_203ee2
	jsr (sub_207854).l
	bne.s loc_203ee2
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203eda
	moveq #$0,d0
loc_203eda:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203ee2:
	rts
loc_203ee4:
	rts
	.incbin 16102, 118

sub_203f5c:
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

sub_203f82:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204000
	cmpi.b #$4,$24(a0)
	bcc.s loc_204000
	btst.b #$3,$2c(a0)
	bne.s loc_204000
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_204000
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203fcc
	neg.w d0
loc_203fcc:
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
loc_204000:
	rts

sub_204002:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20409e
	cmpi.b #$2,($ff1522).l
	beq.w loc_20409e
	btst.b #$0,$2c(a0)
	bne.s loc_20409e
	btst.b #$2,$2c(a0)
	bne.s loc_20409e
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20409e
	move.w ($f786).w,d0
	beq.s loc_204060
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_204060
	clr.b ($f784).w
loc_204060:
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
loc_20409e:
	rts

sub_2040a0:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2040fe
	cmpi.b #$4,$24(a0)
	bcc.s loc_2040fe
	tst.b ($ff1521).l
	bne.s loc_2040fe
	tst.b ($ff151f).l
	bne.s loc_2040fe
	tst.w $30(a0)
	bne.s loc_2040fe
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_2040fe
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_204100(pc,d0.w),d0
	lea dat_204100(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_2040f2:
	move.w (a3)+,d1
	bmi.s loc_2040fe
	cmp.w d1,d0
	bne.s loc_2040f2
	bra.w loc_207086
loc_2040fe:
	rts
dat_204100:
	.incbin 16640, 32

sub_204120:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2041da
	tst.b ($ff1521).l
	bne.w loc_2041da
	tst.b ($ff151f).l
	bne.w loc_2041da
	cmpi.w #$980,$8(a0)
	bcs.s loc_204150
	cmpi.w #$a20,$8(a0)
	bcs.w loc_2041da
loc_204150:
	btst.b #$7,($f7a7).w
	bne.w loc_2041da
	tst.w $30(a0)
	bne.s loc_2041da
	cmpi.b #$2,($ff1507).l
	bne.s loc_204184
	cmpi.w #$a10,$8(a0)
	bcs.s loc_20419c
	tst.b ($ff1958).l
	beq.s loc_2041da
	tst.b ($ff156a).l
	bne.s loc_204196
	bra.s loc_20419c
loc_204184:
	cmpi.b #$2,($ff152e).l
	bne.s loc_20419c
	tst.b ($ff156a).l
	beq.s loc_20419c
loc_204196:
	tst.b ($f668).w
	beq.s loc_2041da
loc_20419c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_2041dc).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041d0
	tst.b ($ff156a).l
	bne.s loc_2041d0
	lea (dat_2041e2).l,a1
loc_2041d0:
	cmp.w (a1)+,d0
	beq.w loc_207086
	dbf d6,loc_2041d0
loc_2041da:
	rts
dat_2041dc:
	dc.b $02,$43,$02,$44,$02,$45
dat_2041e2:
	dc.b $02,$87,$02,$88,$02,$89

sub_2041e8:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2042b8
	tst.b ($f7a7).w
	bne.w loc_2042b8
	cmpi.b #$2,($ff152e).l
	bcc.s loc_20421c
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_204214
	addi.b #$1e,d0
loc_204214:
	cmp.b ($f7b3).w,d0
	beq.w loc_2042b8
loc_20421c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	beq.s loc_204274
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$21f,d0
	bne.s loc_2042b8
loc_204274:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_2042b8
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_2022fa).l
loc_2042b8:
	rts

sub_2042ba:
	rts
	.incbin 17084, 80
	bsr.s sub_2042ba
	bsr.w sub_203e7c
	tst.w ($ff1588).l
	beq.s loc_20432c
	btst.b #$4,($f605).w
	beq.s loc_20432c
	move.b #$1,($ff1906).l
	rts
loc_20432c:
	tst.b ($f7cc).w
	bne.s loc_204338
	move.w ($f604).w,($f602).w
loc_204338:
	btst.b #$0,$2c(a0)
	beq.s loc_204346
	bsr.w sub_204560
	bra.s loc_20436c
loc_204346:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20439c(pc,d0.w),d1
	jsr dat_20439c(pc,d1.w)
	bsr.w sub_2041e8
	bsr.w sub_204120
	bsr.w sub_2040a0
	bsr.w sub_204002
	bsr.w sub_203f82
loc_20436c:
	bsr.s sub_2043aa
	bsr.w sub_20446a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_205824
	tst.b $2c(a0)
	bmi.s loc_204396
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204396
	jsr (sub_206e88).l
loc_204396:
	bsr.w sub_2056e8
	rts
dat_20439c:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_2043aa:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2043ce
	move.w $30(a0),d0
	beq.s loc_2043c0
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2043ce
loc_2043c0:
	btst.b #$6,$2c(a0)
	bne.s loc_2043ce
	jsr (sub_2038d4).l
loc_2043ce:
	tst.b ($ff151f).l
	beq.s loc_204412
	tst.w $32(a0)
	beq.s loc_204412
	subq.w #$1,$32(a0)
	bne.s loc_204412
	tst.b ($ff1520).l
	bne.s loc_20440a
	tst.b ($ff1958).l
	bne.s loc_20440a
	tst.b ($ff152e).l
	bne.s loc_204404
	move.w #$e,d0
	jsr (sub_205e2e).l
loc_204404:
	jsr (sub_201aee).l
loc_20440a:
	move.b #$0,($ff151f).l
loc_204412:
	tst.b ($ff1520).l
	beq.s loc_204468
	tst.w $34(a0)
	beq.s loc_204468
	subq.w #$1,$34(a0)
	bne.s loc_204468
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204460
	tst.b ($ff1958).l
	bne.s loc_204460
	tst.b ($ff152e).l
	bne.s loc_20445a
	move.w #$e,d0
	jsr (sub_205e2e).l
loc_20445a:
	jsr (sub_201aee).l
loc_204460:
	move.b #$0,($ff1520).l
loc_204468:
	rts

sub_20446a:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_204486:
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
	bcs.s loc_204558
	move.l #$50000,d0
loc_204558:
	move.l d0,($ff1570).l
	rts

sub_204560:
	tst.b $2a(a0)
	bne.w loc_20461e
	tst.b ($f784).w
	beq.w loc_20461e
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20457e
	neg.w d0
loc_20457e:
	tst.w ($f786).w
	bne.s loc_20458a
	move.w #$1,($f786).w
loc_20458a:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045a0
	move.b #$1,($ff1502).l
	bra.w loc_205e2a
loc_2045a0:
	cmpi.w #$d2,d1
	bcs.s loc_2045f4
	cmpi.b #$2,($ff1522).l
	beq.s loc_2045f2
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2045ca
	move.w #$82,d0
	jsr (sub_205e2e).l
	moveq #$0,d0
loc_2045ca:
	add.b ($f784).w,d0
	bpl.s loc_2045d4
	moveq #$0,d0
	bra.s loc_2045dc
loc_2045d4:
	cmpi.b #$3,d0
	bcs.s loc_2045dc
	moveq #$2,d0
loc_2045dc:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204486
	move.b #$2,($ff1522).l
loc_2045f2:
	rts
loc_2045f4:
	cmpi.w #$5a,d1
	bcc.s loc_20460c
	cmp.w d2,d0
	bcc.w loc_203de2
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20460c:
	cmp.w d2,d0
	bcc.s loc_20461e
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20461e:
	rts
	tst.b ($f75f).w
	beq.s loc_204632
	cmpi.b #$5,$1c(a0)
	bne.s loc_20468c
	clr.b ($f75f).w
loc_204632:
	bsr.w sub_203d1c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204662
	tst.b ($ff195b).l
	beq.s loc_204650
	cmpi.b #$79,$1a(a0)
	bne.s loc_20468c
	bra.s loc_204658
loc_204650:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20468c
loc_204658:
	bsr.w sub_205020
	jmp (sub_20381c).l
loc_204662:
	bsr.w sub_204896
	bsr.w sub_204560
	bsr.w sub_2050fe
	bsr.w sub_205218
	bsr.w sub_20490c
	bsr.w sub_20508c
	bsr.w sub_205020
	jsr (sub_20387e).l
	bsr.w sub_200bfe
	bsr.w sub_205296
loc_20468c:
	rts
	tst.w $12(a0)
	bmi.s loc_2046a2
	cmpi.b #$2c,$1c(a0)
	beq.s loc_2046a2
	move.b #$0,$1c(a0)
loc_2046a2:
	btst.b #$2,$2c(a0)
	beq.s loc_2046b0
	bsr.w sub_204802
	bra.s loc_2046dc
loc_2046b0:
	bsr.w sub_204896
	bsr.w sub_204560
	bsr.w sub_2051e4
	bsr.w sub_204f4c
	bsr.w sub_205020
	jsr (sub_20381c).l
	btst.b #$6,$22(a0)
	beq.s loc_2046d8
	subi.w #$28,$12(a0)
loc_2046d8:
	bsr.w sub_2052d8
loc_2046dc:
	bsr.w sub_2052fc
	rts
	bsr.w sub_204896
	bsr.w sub_204560
	bsr.w sub_2050fe
	bsr.w sub_205254
	bsr.w sub_204d94
	bsr.w sub_205020
	tst.b $2a(a0)
	bne.s loc_204706
	jsr (sub_20387e).l
loc_204706:
	bsr.w sub_200bfe
	bsr.w sub_205296
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_204722
	bsr.w sub_204766
	bsr.w sub_204560
	bra.s loc_204760
loc_204722:
	btst.b #$2,$2c(a0)
	beq.s loc_204734
	bsr.w sub_204802
	bsr.w sub_204560
	bra.s loc_204760
loc_204734:
	bsr.w sub_204896
	bsr.w sub_204560
	bsr.w sub_2051e4
	bsr.w sub_204f4c
	bsr.w sub_205020
	jsr (sub_20381c).l
	btst.b #$6,$22(a0)
	beq.s loc_20475c
	subi.w #$28,$12(a0)
loc_20475c:
	bsr.w sub_2052d8
loc_204760:
	bsr.w sub_2052fc
	rts

sub_204766:
	btst.b #$4,$2c(a0)
	beq.s loc_20479a
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_2047aa
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_204788
	neg.w $10(a0)
loc_204788:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_20479a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047aa
	bset.b #$4,$2c(a0)
loc_2047aa:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_2047c0
	andi.w #$7fff,$2(a0)
loc_2047c0:
	jsr (sub_2007fe).l
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
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	beq.s loc_204800
	neg.w $12(a0)
loc_204800:
	rts

sub_204802:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20482a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204844
loc_20482a:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_204844:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_20485e
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_204872
loc_20485e:
	btst.b #$3,($f602).w
	beq.s loc_204894
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_204872:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_204894
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_204894
	move.b #$0,$1b(a0)
loc_204894:
	rts

sub_204896:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204902
	tst.w ($ff1506).l
	bne.s loc_204902
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204904).l,a2
loc_2048ca:
	move.b (a2)+,d0
	bmi.s loc_2048da
	cmp.b d0,d1
	bne.s loc_2048ca
	bset.b #$1,$2c(a0)
	rts
loc_2048da:
	bclr.b #$1,$2c(a0)
	beq.s loc_204902
	tst.w $12(a0)
	bpl.s loc_204902
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204902
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204902
	neg.w $10(a0)
loc_204902:
	rts
dat_204904:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_20490c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204c1e
	tst.w $3e(a0)
	bne.w loc_204bce
	btst.b #$2,($f602).w
	beq.s loc_204934
	bsr.w sub_204cae
loc_204934:
	btst.b #$3,($f602).w
	beq.s loc_204940
	bsr.w sub_204d24
loc_204940:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204bce
	tst.w $14(a0)
	beq.s loc_204960
	tst.b $2a(a0)
	beq.w loc_204bce
	bra.s loc_20496c
loc_204960:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20496c:
	btst.b #$3,$22(a0)
	beq.s loc_2049bc
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_2049fe
	cmpi.b #$1e,$0(a1)
	bne.s loc_20499c
	move.b #$0,$1c(a0)
	bra.w loc_204bce
loc_20499c:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2049e2
	cmp.w d2,d1
	bge.s loc_2049d0
	bra.s loc_2049fe
loc_2049bc:
	jsr (sub_206bec).l
	cmpi.w #$c,d1
	blt.s loc_2049fe
	cmpi.b #$3,$36(a0)
	bne.s loc_2049da
loc_2049d0:
	btst.b #$0,$22(a0)
	bne.s loc_2049ea
	bra.s loc_2049f4
loc_2049da:
	cmpi.b #$3,$37(a0)
	bne.s loc_2049fe
loc_2049e2:
	btst.b #$0,$22(a0)
	bne.s loc_2049f4
loc_2049ea:
	move.b #$32,$1c(a0)
	bra.w loc_204bce
loc_2049f4:
	move.b #$6,$1c(a0)
	bra.w loc_204bce
loc_2049fe:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204a12
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204a12:
	btst.b #$7,($f788).w
	bne.w loc_204b16
	btst.b #$6,($f788).w
	bne.w loc_204b36
	btst.b #$1,($f602).w
	bne.w loc_204b36
	andi.b #$f,($f788).w
	beq.s loc_204a4a
	btst.b #$0,($f603).w
	beq.s loc_204a5e
	bset.b #$7,($f788).w
	bra.w loc_204bf2
loc_204a4a:
	btst.b #$0,($f603).w
	beq.w loc_204a5e
	move.b #$1,($f788).w
	bra.w loc_204bf2
loc_204a5e:
	btst.b #$0,($f602).w
	beq.s loc_204ada
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204abc
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a8e
	asr.w #$1,d2
	sub.w d2,d1
loc_204a8e:
	btst.b #$0,$22(a0)
	beq.s loc_204a9a
	neg.w d0
	neg.w d1
loc_204a9a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204ab0
	cmp.w d0,d1
	ble.s loc_204ab6
	bra.s loc_204ab4
loc_204ab0:
	cmp.w d1,d0
	ble.s loc_204ab6
loc_204ab4:
	move.w d1,d0
loc_204ab6:
	move.w d0,$14(a0)
	rts
loc_204abc:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204ad6
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022fa).l
loc_204ad6:
	bra.w loc_204bf2
loc_204ada:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204afa
	move.w #$ab,d0
	jsr (sub_2022fa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b36
loc_204afa:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	bra.w loc_204bce
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204b16:
	btst.b #$0,($f602).w
	beq.s loc_204b36
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204bf2
	addq.w #$2,($f73e).w
	bra.w loc_204bf2
loc_204b36:
	btst.b #$6,($f788).w
	bne.w loc_204bb2
	andi.b #$f,($f788).w
	beq.s loc_204b5a
	btst.b #$1,($f603).w
	beq.s loc_204b6c
	bset.b #$6,($f788).w
	bra.w loc_204bf2
loc_204b5a:
	btst.b #$1,($f603).w
	beq.s loc_204b6c
	move.b #$1,($f788).w
	bra.w loc_204bf2
loc_204b6c:
	btst.b #$1,($f602).w
	beq.s loc_204bce
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204bb0
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204bb0
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204ba2
	neg.w $14(a0)
loc_204ba2:
	move.w #$9c,d0
	jsr (sub_2022fa).l
	bsr.w sub_2050b4
loc_204bb0:
	bra.s loc_204bf2
loc_204bb2:
	btst.b #$1,($f602).w
	beq.s loc_204bce
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204bf2
	subq.w #$2,($f73e).w
	bra.s loc_204bf2
loc_204bce:
	cmpi.w #$60,($f73e).w
	bne.s loc_204be8
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204bf2
	move.b #$0,($f788).w
	bra.s loc_204bf2
loc_204be8:
	bcc.s loc_204bee
	addq.w #$4,($f73e).w
loc_204bee:
	subq.w #$2,($f73e).w
loc_204bf2:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c1e
	move.w $14(a0),d0
	beq.s loc_204c1e
	bmi.s loc_204c12
	sub.w d5,d0
	bcc.s loc_204c0c
	move.w #$0,d0
loc_204c0c:
	move.w d0,$14(a0)
	bra.s loc_204c1e
loc_204c12:
	add.w d5,d0
	bcc.s loc_204c1a
	move.w #$0,d0
loc_204c1a:
	move.w d0,$14(a0)
loc_204c1e:
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204c3c:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204cac
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204cac
	bmi.s loc_204c54
	neg.w d1
loc_204c54:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206aac
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204cac
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ca8
	cmpi.b #$40,d0
	beq.s loc_204c96
	cmpi.b #$80,d0
	beq.s loc_204c90
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c90:
	sub.w d1,$12(a0)
	rts
loc_204c96:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ca8:
	add.w d1,$12(a0)
loc_204cac:
	rts

sub_204cae:
	tst.b $2a(a0)
	bne.s loc_204d22
	move.w $14(a0),d0
	beq.s loc_204cbc
	bpl.s loc_204cec
loc_204cbc:
	bset.b #$0,$22(a0)
	bne.s loc_204cd0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cd0:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204ce0
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204ce0
	move.w d1,d0
loc_204ce0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204cec:
	sub.w d4,d0
	bcc.s loc_204cf4
	move.w #$ff80,d0
loc_204cf4:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d22
	cmpi.w #$400,d0
	blt.s loc_204d22
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022fa).l
loc_204d22:
	rts

sub_204d24:
	tst.b $2a(a0)
	bne.s loc_204d92
	move.w $14(a0),d0
	bmi.s loc_204d5c
	bclr.b #$0,$22(a0)
	beq.s loc_204d44
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d44:
	cmp.w d6,d0
	bge.s loc_204d50
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d50
	move.w d6,d0
loc_204d50:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d5c:
	add.w d4,d0
	bcc.s loc_204d64
	move.w #$80,d0
loc_204d64:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d92
	cmpi.w #$fc00,d0
	bgt.s loc_204d92
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022fa).l
loc_204d92:
	rts

sub_204d94:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204ed0
	tst.w $3e(a0)
	bne.s loc_204dcc
	btst.b #$2,($f602).w
	beq.s loc_204dc0
	bsr.w sub_204f06
loc_204dc0:
	btst.b #$3,($f602).w
	beq.s loc_204dcc
	bsr.w sub_204f2a
loc_204dcc:
	tst.b $2a(a0)
	beq.w loc_204e76
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204dec
	asr.w #$1,d2
	sub.w d2,d1
loc_204dec:
	btst.b #$0,$22(a0)
	beq.s loc_204df8
	neg.w d0
	neg.w d1
loc_204df8:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204e0e
	cmp.w d0,d1
	ble.s loc_204e14
	bra.s loc_204e12
loc_204e0e:
	cmp.w d1,d0
	ble.s loc_204e14
loc_204e12:
	move.w d1,d0
loc_204e14:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204e48
	rts
loc_204e22:
	move.w #$ab,d0
	jsr (sub_2022fa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204e9e
loc_204e48:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204e22
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	btst.b #$0,$22(a0)
	bne.s loc_204e6e
	bsr.w sub_204f2a
	bra.s loc_204e76
loc_204e6e:
	bsr.w sub_204f06
	bra.s loc_204e76
	dc.b $4e,$75
loc_204e76:
	move.w $14(a0),d0
	beq.s loc_204e98
	bmi.s loc_204e8c
	sub.w d5,d0
	bcc.s loc_204e86
	move.w #$0,d0
loc_204e86:
	move.w d0,$14(a0)
	bra.s loc_204e98
loc_204e8c:
	add.w d5,d0
	bcc.s loc_204e94
	move.w #$0,d0
loc_204e94:
	move.w d0,$14(a0)
loc_204e98:
	tst.w $14(a0)
	bne.s loc_204ed0
loc_204e9e:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204eba
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204eca
loc_204eba:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204eca:
	move.b #$5,$1c(a0)
loc_204ed0:
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204ef4
	move.w #$1000,d1
loc_204ef4:
	cmpi.w #$f000,d1
	bge.s loc_204efe
	move.w #$f000,d1
loc_204efe:
	move.w d1,$10(a0)
	bra.w loc_204c3c

sub_204f06:
	move.w $14(a0),d0
	beq.s loc_204f0e
	bpl.s loc_204f1c
loc_204f0e:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f1c:
	sub.w d4,d0
	bcc.s loc_204f24
	move.w #$ff80,d0
loc_204f24:
	move.w d0,$14(a0)
	rts

sub_204f2a:
	move.w $14(a0),d0
	bmi.s loc_204f3e
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f3e:
	add.w d4,d0
	bcc.s loc_204f46
	move.w #$80,d0
loc_204f46:
	move.w d0,$14(a0)
	rts

sub_204f4c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204f7a
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204f72
	cmpi.w #$840,$8(a0)
	bcs.s loc_204faa
loc_204f72:
	btst.b #$1,$2c(a0)
	bne.s loc_204faa
loc_204f7a:
	btst.b #$2,($f602).w
	beq.s loc_204f94
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204f94
	move.w d1,d0
loc_204f94:
	btst.b #$3,($f602).w
	beq.s loc_204faa
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204faa
	move.w d6,d0
loc_204faa:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204fc0
	bcc.s loc_204fbc
	addq.w #$4,($f73e).w
loc_204fbc:
	subq.w #$2,($f73e).w
loc_204fc0:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204fee
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204fee
	bmi.s loc_204fe2
	sub.w d1,d0
	bcc.s loc_204fdc
	move.w #$0,d0
loc_204fdc:
	move.w d0,$10(a0)
	rts
loc_204fe2:
	sub.w d1,d0
	bcs.s loc_204fea
	move.w #$0,d0
loc_204fea:
	move.w d0,$10(a0)
loc_204fee:
	rts
	.incbin 20464, 48

sub_205020:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_205074
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_20504e
	addi.w #$38,d0
loc_20504e:
	cmp.w d1,d0
	bls.s loc_205074
loc_205052:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_205062
	rts
loc_205062:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207130
	move.b #$6,$24(a0)
	rts
loc_205074:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_205052

sub_20508c:
	tst.b ($f7ca).w
	bne.s loc_2050b2
	move.w $14(a0),d0
	bpl.s loc_20509a
	neg.w d0
loc_20509a:
	cmpi.w #$80,d0
	bcs.s loc_2050b2
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2050b2
	btst.b #$1,($f602).w
	bne.s sub_2050b4
loc_2050b2:
	rts

sub_2050b4:
	btst.b #$2,$22(a0)
	beq.s loc_2050be
	rts
loc_2050be:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050da
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2050ea
loc_2050da:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2050ea:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_2050fc
	move.w #$200,$14(a0)
loc_2050fc:
	rts

sub_2050fe:
	tst.b $2a(a0)
	beq.s loc_205106
	rts
loc_205106:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205118
	tst.w $14(a0)
	beq.w loc_2051da
loc_205118:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2051da
	btst.b #$3,$22(a0)
	beq.s loc_205134
	jsr (sub_205dbe).l
	beq.s loc_205164
loc_205134:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206b16
	cmpi.w #$6,d1
	blt.w loc_2051da
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_20515a
	move.w #$380,d2
loc_20515a:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_205164:
	jsr (sub_2007fe).l
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
	jsr (sub_2022fa).l
	btst.b #$2,$22(a0)
	bne.s loc_2051dc
	tst.b ($ff195b).l
	beq.s loc_2051be
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2051ce
loc_2051be:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2051ce:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_2051da:
	rts
loc_2051dc:
	bset.b #$4,$22(a0)
	rts

sub_2051e4:
	tst.b $3c(a0)
	beq.s loc_205216
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_2051fa
	move.w #$fe00,d1
loc_2051fa:
	cmp.w $12(a0),d1
	ble.s loc_205214
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205214
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205214:
	rts
loc_205216:
	rts

sub_205218:
	tst.b $2a(a0)
	bne.s loc_205252
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205252
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205252
	bmi.s loc_20524e
	tst.w d0
	beq.s loc_20524c
	add.w d0,$14(a0)
loc_20524c:
	rts
loc_20524e:
	add.w d0,$14(a0)
loc_205252:
	rts

sub_205254:
	tst.b $2a(a0)
	bne.s loc_205294
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205294
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_20528a
	tst.w d0
	bpl.s loc_205284
	asr.l #$2,d0
loc_205284:
	add.w d0,$14(a0)
	rts
loc_20528a:
	tst.w d0
	bmi.s loc_205290
	asr.l #$2,d0
loc_205290:
	add.w d0,$14(a0)
loc_205294:
	rts

sub_205296:
	nop
	tst.b $38(a0)
	bne.s loc_2052d0
	tst.w $3e(a0)
	bne.s loc_2052d2
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2052d0
	move.w $14(a0),d0
	bpl.s loc_2052ba
	neg.w d0
loc_2052ba:
	cmpi.w #$280,d0
	bcc.s loc_2052d0
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2052d0:
	rts
loc_2052d2:
	subq.w #$1,$3e(a0)
	rts

sub_2052d8:
	btst.b #$1,$2c(a0)
	bne.s loc_2052fa
	move.b $26(a0),d0
	beq.s loc_2052fa
	bpl.s loc_2052f0
	addq.b #$2,d0
	bcc.s loc_2052ee
	moveq #$0,d0
loc_2052ee:
	bra.s loc_2052f6
loc_2052f0:
	subq.b #$2,d0
	bcc.s loc_2052f6
	moveq #$0,d0
loc_2052f6:
	move.b d0,$26(a0)
loc_2052fa:
	rts

sub_2052fc:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a96).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2053e0
	cmpi.b #$80,d0
	beq.w loc_205442
	cmpi.b #$c0,d0
	beq.w loc_20549e
	bsr.w sub_206e2c
	tst.w d1
	bpl.s loc_20534e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20534e:
	bsr.w sub_206c8e
	tst.w d1
	bpl.s loc_205360
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205360:
	bsr.w sub_206b3e
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2053de
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20537e
	cmp.b d2,d0
	blt.s loc_2053de
loc_20537e:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205500
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2053bc
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2053ae
	asr.w $12(a0)
	bra.s loc_2053d0
loc_2053ae:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2053bc:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2053d0
	move.w #$fc0,$12(a0)
loc_2053d0:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2053de
	neg.w $14(a0)
loc_2053de:
	rts
loc_2053e0:
	bsr.w sub_206e2c
	tst.w d1
	bpl.s loc_2053fa
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053fa:
	bsr.w sub_206ce6
	tst.w d1
	bpl.s loc_205414
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205412
	move.w #$0,$12(a0)
loc_205412:
	rts
loc_205414:
	tst.w $12(a0)
	bmi.s loc_205440
	bsr.w sub_206b3e
	tst.w d1
	bpl.s loc_205440
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205500
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205440:
	rts
loc_205442:
	bsr.w sub_206e2c
	tst.w d1
	bpl.s loc_205454
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205454:
	bsr.w sub_206c8e
	tst.w d1
	bpl.s loc_205466
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205466:
	bsr.w sub_206ce6
	tst.w d1
	bpl.s loc_20549c
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205486
	move.w #$0,$12(a0)
	rts
loc_205486:
	move.b d3,$26(a0)
	bsr.w sub_205564
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20549c
	neg.w $14(a0)
loc_20549c:
	rts
loc_20549e:
	bsr.w sub_206c8e
	tst.w d1
	bpl.s loc_2054b8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2054b8:
	bsr.w sub_206ce6
	tst.w d1
	bpl.s loc_2054d2
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2054d0
	move.w #$0,$12(a0)
loc_2054d0:
	rts
loc_2054d2:
	tst.w $12(a0)
	bmi.s loc_2054fe
	bsr.w sub_206b3e
	tst.w d1
	bpl.s loc_2054fe
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205500
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2054fe:
	rts

sub_205500:
	btst.b #$4,$22(a0)
	beq.s loc_20550a
	nop
loc_20550a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205556
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205540
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205550
loc_205540:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205550:
	move.b #$0,$1c(a0)
loc_205556:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205564:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_20387e).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20559e
	subi.w #$20,$12(a0)
loc_20559e:
	bsr.w sub_2055b4
	bsr.w sub_205020
	bsr.w sub_20446a
	bsr.w sub_205824
	jmp (sub_2038d4).l

sub_2055b4:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_207130
	bsr.w sub_2052fc
	btst.b #$1,$22(a0)
	bne.s loc_2055ee
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2055ee:
	rts
	bsr.w sub_205608
	jsr (sub_20381c).l
	bsr.w sub_20446a
	bsr.w sub_205824
	jmp (sub_2038d4).l

sub_205608:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205676
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_20563c
	clr.b ($ff1508).l
loc_20563c:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205656
	tst.b ($ff0f01).l
	beq.s loc_205656
	move.b #$0,($ff1508).l
	bra.s loc_205670
loc_205656:
	jsr (sub_207854).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205676
loc_205670:
	move.w #$3c,$3a(a0)
loc_205676:
	rts
	tst.w $3a(a0)
	beq.w loc_2056e6
	subq.w #$1,$3a(a0)
	bne.w loc_2056e6
	move.w #$1,($ff1502).l
	bsr.w sub_207642
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2056b4
	cmpi.b #$1,($ff152e).l
	bne.s loc_2056b4
	bclr.b #$1,($ff151c).l
loc_2056b4:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_2056e2
	cmpi.b #$1,($ff152e).l
	bne.s loc_2056dc
	tst.b ($ff158e).l
	beq.s loc_2056e2
	move.b #$1,($ff1522).l
	bra.s loc_2056e2
loc_2056dc:
	clr.b ($ff1522).l
loc_2056e2:
	bra.w sub_205e2e
loc_2056e6:
	rts

sub_2056e8:
	rts
	.incbin 22250, 314

sub_205824:
	lea (dat_205b14).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205846
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205846:
	bsr.w sub_205ab6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2058be
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20588c
	move.b d0,$1e(a0)

sub_205870:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205884
	bpl.s loc_205884
	cmpi.b #$fd,d0
	bge.s loc_20588e
loc_205884:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20588c:
	rts
loc_20588e:
	addq.b #$1,d0
	bne.s loc_20589e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205884
loc_20589e:
	addq.b #$1,d0
	bne.s loc_2058b2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205884
loc_2058b2:
	addq.b #$1,d0
	bne.s loc_2058bc
	move.b $2(a1,d1.w),$1c(a0)
loc_2058bc:
	rts
loc_2058be:
	subq.b #$1,$1e(a0)
	bpl.s loc_20588c
	addq.b #$1,d0
	bne.w loc_205978
	tst.b ($ff195b).l
	bne.w loc_205a40
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058e6
	not.b d0
loc_2058e6:
	btst.b #$1,$2c(a0)
	bne.s loc_2058f4
	addi.b #$10,d0
	bra.s loc_2058f6
loc_2058f4:
	addq.b #$8,d0
loc_2058f6:
	bpl.s loc_2058fa
	moveq #$3,d1
loc_2058fa:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2059ec
	move.w $14(a0),d2
	bpl.s loc_205918
	neg.w d2
loc_205918:
	btst.b #$1,$2c(a0)
	beq.s loc_205930
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205d16).l,a1
	bra.s loc_20595a
loc_205930:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205cf0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20595a
	lea (dat_205b94).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20595a
	lea (dat_205b8c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20595a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205968
	moveq #$0,d2
loc_205968:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205870
	add.b d3,$1a(a0)
	rts
loc_205978:
	addq.b #$1,d0
	bne.s loc_2059e8
	move.w $14(a0),d2
	bpl.s loc_205984
	neg.w d2
loc_205984:
	lea (dat_205c72).l,a1
	tst.b ($ff195b).l
	bne.s loc_2059c2
	lea (dat_205ba4).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2059b6
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2059c2
	lea (dat_205d1e).l,a1
	bra.s loc_2059c2
loc_2059b6:
	cmpi.w #$600,d2
	bcc.s loc_2059c2
	lea (dat_205b9c).l,a1
loc_2059c2:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2059cc
	moveq #$0,d2
loc_2059cc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205870
loc_2059e8:
	addq.b #$1,d0
	bne.s loc_205a2c
loc_2059ec:
	move.w $14(a0),d2
	bmi.s loc_2059f4
	neg.w d2
loc_2059f4:
	addi.w #$800,d2
	bpl.s loc_2059fc
	moveq #$0,d2
loc_2059fc:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205c84).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a16
	lea (dat_205bac).l,a1
loc_205a16:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205870
loc_205a2c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205a40:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205a52
	not.b d0
loc_205a52:
	addi.b #$10,d0
	bpl.s loc_205a5a
	moveq #$0,d1
loc_205a5a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205a88
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205978
loc_205a88:
	move.w $14(a0),d2
	bpl.s loc_205a90
	neg.w d2
loc_205a90:
	lea (dat_205c6c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205aa2
	lea (dat_205c66).l,a1
loc_205aa2:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205aac
	moveq #$0,d2
loc_205aac:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205870

sub_205ab6:
	tst.b ($ff195b).l
	beq.s loc_205ac2
	move.b dat_205ac4(pc,d0.w),d0
loc_205ac2:
	rts
dat_205ac4:
	.incbin 23236, 80
dat_205b14:
	.incbin 23316, 120
dat_205b8c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b94:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b9c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205ba4:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205bac:
	.incbin 23468, 186
dat_205c66:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205c6c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205c72:
	.incbin 23666, 18
dat_205c84:
	.incbin 23684, 108
dat_205cf0:
	.incbin 23792, 38
dat_205d16:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205d1e:
	.incbin 23838, 60

sub_205d5a:
	tst.b (a0)
	beq.w loc_205dbc
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205dbc
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205dbc
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205d8e:
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
loc_205da8:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205da8
	dbf d1,loc_205d8e
loc_205dbc:
	rts

sub_205dbe:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205e28
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a96).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205e16
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205e16:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205e28:
	rts
loc_205e2a:
	move.w #$e,d0

sub_205e2e:
	cmpi.w #$67,d0
	bne.s loc_205e3c
	move.b #$1,($ff1958).l
loc_205e3c:
	move.w d0,($a12010).l
loc_205e42:
	move.w ($a12020).l,d0
	beq.s loc_205e42
	cmp.w ($a12020).l,d0
	bne.s loc_205e42
	move.w #$0,($a12010).l
loc_205e5a:
	move.w ($a12020).l,d0
	bne.s loc_205e5a
	move.w ($a12020).l,d0
	bne.s loc_205e5a
	rts
	dc.b $00,$00

sub_205e6e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205e8a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205e8a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205eca
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ecc
loc_205ea6:
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
loc_205eca:
	rts
loc_205ecc:
	addq.b #$1,d0
	bne.s loc_205edc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205ea6
loc_205edc:
	addq.b #$1,d0
	bne.s loc_205ef0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205ea6
loc_205ef0:
	addq.b #$1,d0
	bne.s loc_205efa
	move.b $2(a1,d1.w),$1c(a0)
loc_205efa:
	addq.b #$1,d0
	bne.s loc_205f02
	addq.b #$2,$24(a0)
loc_205f02:
	addq.b #$1,d0
	bne.s loc_205f10
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205f10:
	addq.b #$1,d0
	bne.s loc_205f18
	addq.b #$2,$25(a0)
loc_205f18:
	rts

sub_205f1a:
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
	bcs.s loc_205fb0
	move.l #$50000,d0
loc_205fb0:
	move.l d0,($ff152a).l
	move.b ($ff195b).l,($ff1591).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fdc(pc,d0.w),d0
	jsr dat_205fdc(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20788a).l
dat_205fdc:
	.incbin 24540, 20
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_206022
	move.b #$1,$2e(a0)
	bra.s loc_206028
loc_206022:
	move.b #$e3,$20(a0)
loc_206028:
	jsr (sub_207854).l
	bne.s loc_20609a
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_206044
	addq.b #$2,$24(a1)
loc_206044:
	move.l #$21f0ac,$4(a1)
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
loc_20609a:
	jmp (sub_203980).l
	tst.b $2e(a0)
	bne.s loc_2060d4
	tst.b $21(a0)
	beq.s loc_2060d4
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205f1a
	move.w #$ae,d0
	jmp (sub_2022fa).l
loc_2060d4:
	rts
	tst.b $2e(a0)
	bne.s loc_2060ec
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_206126
	move.b #$1,$2e(a0)
loc_2060ec:
	addq.b #$8,$34(a0)
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_2007fe).l
	muls.w #$8,d0
	lsr.l #$8,d0
	move.w $2a(a0),$8(a0)
	add.w d0,$8(a0)
	muls.w #$fff8,d1
	lsr.l #$8,d1
	move.w $2c(a0),$c(a0)
	add.w d1,$c(a0)
	tst.b $34(a0)
	bne.s loc_206126
	addq.b #$2,$24(a0)
loc_206126:
	rts
	dc.b $43,$f9,$00,$21,$f0,$a6,$60,$00
	dc.b $fd,$3e
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206142(pc,d0.w),d0
	jmp dat_206142(pc,d0.w)
dat_206142:
	.incbin 24898, 102

sub_2061a8:
	tst.b $25(a0)
	bne.s loc_2061d8
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207854).l
	bne.s loc_2061d8
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_2061d8:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061e8(pc,d0.w),d0
	jmp dat_2061e8(pc,d0.w)
dat_2061e8:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206210
	andi.b #$7f,$2(a0)
loc_206210:
	move.l #$21ef14,$4(a0)
	bsr.s sub_2061a8
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_20623e
	move.w #$100,$1c(a0)
loc_20623e:
	lea (dat_21ef00).l,a1
	bsr.w sub_205e6e
	jmp (sub_2038d4).l
	tst.b $25(a0)
	beq.s loc_20625a
	jmp (sub_203980).l
loc_20625a:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20627c(pc,d0.w),d0
	jsr dat_20627c(pc,d0.w)
	jmp (sub_2038d4).l
dat_20627c:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_2062aa
	andi.b #$7f,$2(a0)
loc_2062aa:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_2062d0
	bsr.w sub_20633c
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206332
loc_2062d0:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206bec).l
	tst.w d1
	bpl.s loc_20632e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206318
	bsr.w sub_20633c
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206362
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206318:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206332
loc_20632e:
	addq.w #$2,$c(a0)
loc_206332:
	lea (dat_2336bc).l,a1
	bra.w sub_205e6e

sub_20633c:
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

sub_206362:
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
	bra.s loc_206332
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206332
	.incbin 25502, 460
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206578(pc,d0.w),d1
	jmp dat_206578(pc,d1.w)
dat_206578:
	.incbin 25976, 20
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_2065ba
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_2065ba
	addq.b #$2,$24(a0)
loc_2065ba:
	rts
	.incbin 26044, 120
	tst.b ($ff1521).l
	bne.s loc_206642
	jmp (sub_203980).l
loc_206642:
	cmpi.b #$6,($ff1506).l
	bne.s loc_206660
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_206660
	andi.b #$7f,$2(a0)
loc_206660:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_206672
	subq.b #$4,d1
loc_206672:
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
	bcs.s loc_20668e
	moveq #$0,d1
loc_20668e:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_21ec00).l,a1
	jsr (sub_205e6e).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2066c6
	rts
loc_2066c6:
	cmp.b $24(a0),d0
	beq.s loc_2066dc
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2066dc:
	jmp (sub_2038d4).l

sub_2066e2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206730
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206732(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206706:
	move.l (a1)+,(a2)+
	dbf d0,loc_206706
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206730:
	rts
dat_206732:
	.incbin 26418, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206768(pc,d0.w),d0
	jsr dat_206768(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206762
	jsr (sub_2038d4).l
loc_206762:
	jmp (loc_20788a).l
dat_206768:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$21ed28,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20684a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20684a
	bsr.w sub_2068ae
	beq.w loc_20684a
	tst.b $28(a0)
	bne.s loc_2067fc
	move.w $10(a1),d0
	bpl.s loc_2067bc
	neg.w d0
loc_2067bc:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2067ce
	move.w #$d00,d1
loc_2067ce:
	cmp.w d1,d0
	bcc.s loc_2067d4
	move.w d1,d0
loc_2067d4:
	tst.w $10(a1)
	bpl.s loc_2067dc
	neg.w d0
loc_2067dc:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20682c
	neg.w $14(a1)
	bra.s loc_20682c
loc_2067fc:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20684c
	move.w $12(a1),d0
	bpl.s loc_20680c
	neg.w d0
loc_20680c:
	cmpi.w #$d00,d0
	bcc.s loc_206816
	move.w #$d00,d0
loc_206816:
	tst.w $12(a1)
	bpl.s loc_20681e
	neg.w d0
loc_20681e:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20682c:
	bset.b #$2,$22(a1)
	bne.s loc_20684a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20684a:
	rts
loc_20684c:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206898
	cmpi.b #$2,$28(a0)
	bne.s loc_206868
	tst.w $12(a1)
	bpl.s loc_20682c
	bra.s loc_20686e
loc_206868:
	tst.w $12(a1)
	bmi.s loc_20682c
loc_20686e:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206880
	btst.l #$2,d1
	beq.s loc_20682c
	neg.w d0
loc_206880:
	cmpi.b #$2,$28(a0)
	beq.s loc_20688e
	bset.b #$1,$22(a1)
loc_20688e:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20682c
loc_206898:
	tst.w $10(a1)
	bmi.s loc_20682c
	btst.l #$0,d1
	beq.w loc_20682c
	move.w #$f600,d0
	bra.w loc_20681e

sub_2068ae:
	tst.b ($ff1906).l
	bne.s loc_2068e2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2068e2
	cmpi.w #$50,d0
	bcc.s loc_2068e2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2068e2
	cmpi.w #$50,d0
	bcc.s loc_2068e2
	moveq #$1,d0
	rts
loc_2068e2:
	moveq #$0,d0
	rts
loc_2068e6:
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
	bne.s loc_2069a0
	move.b ($ff1593).l,($ff195b).l
loc_2069a0:
	tst.b ($ff1522).l
	bpl.s loc_2069b6
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2069b6:
	rts

sub_2069b8:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2068e6
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
	bne.s loc_206a72
	move.b ($ff1591).l,($ff195b).l
loc_206a72:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206a94
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206a94:
	tst.b ($ff1522).l
	bpl.s loc_206aaa
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206aaa:
	rts

sub_206aac:
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
	bpl.s loc_206ae8
	move.b d1,d0
	bpl.s loc_206ae2
	subq.b #$1,d0
loc_206ae2:
	addi.b #$20,d0
	bra.s loc_206af2
loc_206ae8:
	move.b d1,d0
	bpl.s loc_206aee
	addq.b #$1,d0
loc_206aee:
	addi.b #$1f,d0
loc_206af2:
	andi.b #$c0,d0
	beq.w loc_206bc2
	cmpi.b #$80,d0
	beq.w loc_206d5e
	andi.b #$38,d1
	bne.s loc_206b0a
	addq.w #$8,d2
loc_206b0a:
	cmpi.b #$40,d0
	beq.w loc_206e34
	bra.w loc_206c96

sub_206b16:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206dbc
	cmpi.b #$80,d0
	beq.w sub_206ce6
	cmpi.b #$c0,d0
	beq.w loc_206c26

sub_206b3e:
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
	jsr (sub_201154).l
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
	jsr (sub_201154).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206ba2:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206bb0
	move.b ($f768).w,d3
	exg d0,d1
loc_206bb0:
	btst.l #$0,d3
	beq.s loc_206bb8
	move.b d2,d3
loc_206bb8:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bc2:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201154).l
	move.b #$0,d2
loc_206bde:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bea
	move.b d2,d3
loc_206bea:
	rts

sub_206bec:
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
	jsr (sub_201154).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c24
	move.b #$0,d3
loc_206c24:
	rts
loc_206c26:
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
	jsr (sub_2012c4).l
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
	jsr (sub_2012c4).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206ba2

sub_206c8e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c96:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b #$c0,d2
	bra.w loc_206bde
	.incbin 27830, 48

sub_206ce6:
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
	jsr (sub_201154).l
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
	jsr (sub_201154).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206ba2

sub_206d56:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d5e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201154).l
	move.b #$80,d2
	bra.w loc_206bde
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
	jsr (sub_201154).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dba
	move.b #$80,d3
loc_206dba:
	rts
loc_206dbc:
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
	jsr (sub_2012c4).l
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
	jsr (sub_2012c4).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206ba2

sub_206e2c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e34:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b #$40,d2
	bra.w loc_206bde
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e86
	move.b #$40,d3
loc_206e86:
	rts

sub_206e88:
	btst.b #$6,$2c(a0)
	beq.s loc_206e94
	moveq #$0,d0
	rts
loc_206e94:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206eb8
	addi.w #$c,d3
	moveq #$a,d5
loc_206eb8:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ec6:
	tst.b $1(a1)
	bpl.s loc_206ed2
	move.b $20(a1),d0
	bne.s loc_206ede
loc_206ed2:
	lea $40(a1),a1
	dbf d6,loc_206ec6
	moveq #$0,d0
	rts
loc_206ede:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207266).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206f06
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206f0c
	bra.w loc_206ed2
loc_206f06:
	cmp.w d4,d0
	bhi.w loc_206ed2
loc_206f0c:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206f24
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206f2a
	bra.w loc_206ed2
loc_206f24:
	cmp.w d5,d0
	bhi.w loc_206ed2
loc_206f2a:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206f9e
	cmpi.b #$c0,d1
	beq.w loc_207188
	tst.b d1
	bmi.w sub_207068
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206f62
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206f60
	addq.b #$2,$24(a1)
loc_206f60:
	rts
loc_206f62:
	tst.w $12(a0)
	bpl.s loc_206f8c
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f9c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f9c
	addq.b #$4,$25(a1)
	rts
loc_206f8c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f9c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f9c:
	rts

sub_206f9e:
	tst.b ($ff1521).l
	bne.s loc_206fb8
	tst.b ($ff151f).l
	bne.s loc_206fb8
	cmpi.b #$2,$1c(a0)
	bne.w sub_207068
loc_206fb8:
	tst.b $21(a1)
	beq.s loc_206fe2
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206fe0
	bset.b #$7,$22(a1)
loc_206fe0:
	rts
loc_206fe2:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206ffa
	moveq #$6,d0
loc_206ffa:
	move.w d0,$3e(a1)
	move.w dat_20705a(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207014
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207014:
	bsr.w sub_2096a6
	move.w #$96,d0
	jsr (sub_2022fa).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_20704a
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207052
	neg.w $12(a0)
	rts
loc_20704a:
	addi.w #$100,$12(a0)
	rts
loc_207052:
	subi.w #$100,$12(a0)
	rts
dat_20705a:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207068:
	tst.b ($ff1521).l
	bne.s loc_207078
	tst.b ($ff151f).l
	beq.s loc_20707c
loc_207078:
	moveq #$ffffffff,d0
	rts
loc_20707c:
	nop
	tst.w $30(a0)
	bne.s loc_207078
	movea.l a1,a2
loc_207086:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_2070c0
	tst.w ($ff1512).l
	beq.w loc_207126
	jsr (sub_207854).l
	bne.s loc_2070c0
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2070c0:
	bclr.b #$0,($ff151e).l
	bne.s loc_2070d2
	move.b #$0,($ff156f).l
loc_2070d2:
	move.b #$4,$24(a0)
	bsr.w sub_205500
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_207102
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_207102:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207110
	neg.w $10(a0)
loc_207110:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207126:
	tst.w ($ff1588).l
	bne.w loc_2070c0

sub_207130:
	tst.w ($ff1906).l
	bne.s loc_207184
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205500
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2022fa).l
loc_207184:
	moveq #$ffffffff,d0
	rts
loc_207188:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207210
	cmpi.b #$23,d1
	beq.w loc_207210
	cmpi.b #$38,d1
	beq.w loc_207258
	cmpi.b #$3a,d1
	beq.w loc_207258
	cmpi.b #$3b,d1
	beq.w loc_207258
	tst.b ($f7aa).w
	beq.w loc_20720e
	cmpi.b #$1,($f7aa).w
	beq.s loc_2071d8
	cmpi.b #$4,($f7aa).w
	beq.s loc_2071fa
	cmpi.b #$5,($f7aa).w
	beq.s loc_207208
loc_2071d8:
	cmpi.b #$3c,d1
	blt.s loc_20720e
	cmpi.b #$3f,d1
	bgt.s loc_20720e
	bsr.w sub_206f9e
	tst.b $20(a1)
	bne.s loc_2071f2
	addq.b #$3,$21(a1)
loc_2071f2:
	clr.b $20(a1)
	bra.w loc_207210
loc_2071fa:
	cmpi.b #$3f,d1
	beq.s loc_20721c
	cmpi.b #$3e,d1
	beq.s loc_207216
	bra.s loc_20720e
loc_207208:
	cmpi.b #$3d,d1
	beq.s loc_207216
loc_20720e:
	rts
loc_207210:
	addq.b #$1,$21(a1)
	rts
loc_207216:
	bsr.w sub_207068
	bra.s loc_207210
loc_20721c:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207256
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207256
	neg.w $10(a0)
loc_207256:
	rts
loc_207258:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207264
	addq.b #$1,$21(a1)
loc_207264:
	rts
dat_207266:
	.incbin 29286, 126
loc_2072e4:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2072fa
	move.l #$4000,(dat_207474).l
	bra.s loc_20731a
loc_2072fa:
	addi.l #$2000,(dat_207474).l
	cmpi.l #$80000,(dat_207474).l
	bls.s loc_20731a
	move.l #$80000,(dat_207474).l
loc_20731a:
	move.l (dat_207474).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20732c
	sub.l d0,$c(a0)
loc_20732c:
	btst.b #$1,($f604).w
	beq.s loc_207338
	add.l d0,$c(a0)
loc_207338:
	btst.b #$2,($f604).w
	beq.s loc_207344
	sub.l d0,$8(a0)
loc_207344:
	btst.b #$3,($f604).w
	beq.s loc_207350
	add.l d0,$8(a0)
loc_207350:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f6c).l
	move.w (a1),($ff194e).l
	lea (dat_207478).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207392
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20738c
	move.b #$0,d1
loc_20738c:
	move.b d1,($ff1904).l
loc_207392:
	btst.b #$7,($f605).w
	beq.s loc_2073b2
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2073ac
	add.b (a2),d1
loc_2073ac:
	move.b d1,($ff1904).l
loc_2073b2:
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
	beq.s loc_20743e
	bsr.w sub_207854
	bne.s loc_20743e
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
loc_20743e:
	btst.b #$4,($f605).w
	beq.s loc_20746e
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20746e:
	jmp (sub_2038d4).l
dat_207474:
	dc.b $00,$00,$40,$00
dat_207478:
	.incbin 29816, 458

sub_207642:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207650:
	clr.l (a2)+
	dbf d0,loc_207650
	rts

sub_207658:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207666(pc,d0.w),d0
	jmp dat_207666(pc,d0.w)
dat_207666:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207906).l,a0
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
	bcc.s loc_2076a4
	moveq #$0,d6
loc_2076a4:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076ac:
	cmp.w (a0),d6
	bls.s loc_2076be
	tst.b $4(a0)
	bpl.s loc_2076ba
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076ba:
	addq.w #$8,a0
	bra.s loc_2076ac
loc_2076be:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2076de
loc_2076cc:
	cmp.w (a0),d6
	bls.s loc_2076de
	tst.b $4(a0)
	bpl.s loc_2076da
	addq.b #$1,$1(a2)
loc_2076da:
	addq.w #$8,a0
	bra.s loc_2076cc
loc_2076de:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077c8
	bge.s loc_20776e
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20774a
loc_207718:
	cmp.w -$8(a0),d6
	bge.s loc_20774a
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20772e
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20772e:
	bsr.w sub_2077ec
	bne.s loc_207738
	subq.w #$8,a0
	bra.s loc_207718
loc_207738:
	tst.b $4(a0)
	bpl.s loc_207748
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207748:
	addq.w #$8,a0
loc_20774a:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207756:
	cmp.w -$8(a0),d6
	bgt.s loc_207768
	tst.b -$4(a0)
	bpl.s loc_207764
	subq.b #$1,(a2)
loc_207764:
	subq.w #$8,a0
	bra.s loc_207756
loc_207768:
	move.l a0,($f770).w
	rts
loc_20776e:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207782:
	cmp.w (a0),d6
	bls.s loc_2077a4
	tst.b $4(a0)
	bpl.s loc_207790
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207790:
	bsr.w sub_2077ec
	beq.s loc_207782
	tst.b $4(a0)
	bpl.s loc_2077a4
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077a4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077c4
loc_2077b2:
	cmp.w (a0),d6
	bls.s loc_2077c4
	tst.b $4(a0)
	bpl.s loc_2077c0
	addq.b #$1,$1(a2)
loc_2077c0:
	addq.w #$8,a0
	bra.s loc_2077b2
loc_2077c4:
	move.l a0,($f774).w
loc_2077c8:
	rts

sub_2077ca:
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

sub_2077ec:
	bsr.s sub_2077ca
	beq.s loc_2077fe
	tst.b $4(a0)
	bpl.s loc_207804
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207804
loc_2077fe:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207804:
	bsr.w sub_207854
	bne.s loc_207852
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
	bpl.s loc_207834
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207834:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207846
	nop
	nop
	nop
	nop
loc_207846:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207852:
	rts

sub_207854:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20785c:
	tst.b (a1)
	beq.s loc_207868
	lea $40(a1),a1
	dbf d0,loc_20785c
loc_207868:
	rts

sub_20786a:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207888
loc_20787c:
	tst.b (a1)
	beq.s loc_207888
	lea $40(a1),a1
	dbf d0,loc_20787c
loc_207888:
	rts
loc_20788a:
	move.w $8(a0),d0
loc_20788e:
	tst.b $1(a0)
	bmi.s loc_2078f8
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2078f8
loc_2078ac:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2078ee
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2078e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2078de
	moveq #$0,d1
	bra.s loc_2078e6
loc_2078de:
	cmpi.w #$3,d1
	bcs.s loc_2078e6
	moveq #$2,d1
loc_2078e6:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2078ee:
	jsr (sub_203980).l
	moveq #$1,d0
	rts
loc_2078f8:
	btst.b #$7,($ff152e).l
	bne.s loc_2078ac
	moveq #$0,d0
	rts
dat_207906:
	.incbin 30982, 602

sub_207b60:
	btst.b #$3,$22(a0)
	beq.s loc_207bd0
	btst.b #$3,$22(a1)
	beq.s loc_207bd0
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207bd0
	tst.b $2a(a1)
	beq.s loc_207b92
	move.w #$ab,d0
	jsr (sub_2022fa).l
loc_207b92:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207bbe
	cmpi.b #$17,$1c(a1)
	beq.s loc_207bbe
	bclr.b #$0,$2c(a1)
loc_207bbe:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207bd0
	bclr.b #$1,$22(a1)
loc_207bd0:
	rts

sub_207bd2:
	cmpi.b #$4,$24(a1)
	bne.s loc_207be4
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207be4:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207c44
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207c06
	bclr.b #$3,$22(a0)
	bra.w sub_207b60
loc_207c06:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207c44
	tst.b ($ff195b).l
	beq.s loc_207c2e
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207c3e
loc_207c2e:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207c3e:
	move.b #$0,$1c(a1)
loc_207c44:
	bset.b #$3,$22(a1)
	beq.s loc_207c66
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207c9e
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207c66:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207c92
	cmpi.b #$2,$24(a0)
	beq.s loc_207c98
loc_207c92:
	move.w $10(a1),$14(a1)
loc_207c98:
	bclr.b #$1,$22(a1)
loc_207c9e:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_207ca8:
	move.b #$1,$25(a0)

sub_207cae:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207f62
	btst.b #$6,$2c(a1)
	bne.w loc_207f62
	cmpi.b #$6,$24(a1)
	bcc.w loc_207f62
	tst.b $0(a1)
	beq.w loc_207f62
	tst.b $1(a0)
	bpl.w loc_207f62
	tst.b ($ff1906).l
	bne.w loc_207f62
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207f62
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207f62
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d1c
	btst.b #$3,$22(a0)
	bne.s loc_207d2e
	bra.w loc_207f62
loc_207d1c:
	cmpi.b #$1,$25(a0)
	bne.s loc_207d2e
	tst.w $12(a1)
	beq.s loc_207d2e
	bmi.w loc_207f62
loc_207d2e:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207f62
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207f62
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207d64
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207d64:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207d72
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207d72:
	cmp.w d4,d5
	bcs.w loc_207e06
	cmpi.b #$1,$25(a0)
	beq.w loc_207f62
	cmpi.b #$a,$0(a0)
	bne.s loc_207d94
	btst.b #$1,$22(a1)
	bne.w loc_207f62
loc_207d94:
	cmpi.b #$4,d5
	bls.w loc_207f62
	bsr.w sub_207fb2
	move.l d0,-(a7)
	bsr.w sub_207b60
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207dbe
	tst.w $10(a1)
	beq.s loc_207dee
	bpl.s loc_207dc6
	bra.s loc_207dee
loc_207dbe:
	tst.w $10(a1)
	beq.s loc_207dee
	bpl.s loc_207dee
loc_207dc6:
	bsr.w sub_207f72
	btst.b #$1,$22(a1)
	bne.s loc_207de4
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207de4:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207dee:
	bsr.w sub_208028
	bsr.w sub_207f72
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207e06:
	cmpi.b #$19,$0(a0)
	bne.s loc_207e18
	btst.b #$2,$22(a1)
	bne.w loc_207f62
loc_207e18:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207e2e
	bmi.w loc_207efe
loc_207e2e:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207e40
	tst.w $12(a1)
	beq.s loc_207e40
	bmi.w loc_207f62
loc_207e40:
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
	beq.s loc_207e8c
	bpl.s loc_207e6c
	neg.b d0
loc_207e6c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206aac).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e8c
	tst.w $10(a0)
	bpl.s loc_207e88
	neg.w d1
loc_207e88:
	add.w d1,$8(a1)
loc_207e8c:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207ef6
	tst.w $12(a0)
	bmi.s loc_207eca
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b3e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207eca
	add.w d1,$c(a1)
	bra.w loc_207f62
loc_207eca:
	tst.w $12(a0)
	bpl.s loc_207ef6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d56).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ef6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,a0-a1
	bra.s loc_207f62
loc_207ef6:
	bsr.w sub_207bd2
	moveq #$1,d0
	rts
loc_207efe:
	cmpi.b #$1,$25(a0)
	beq.s loc_207f62
	cmpi.b #$9,$0(a0)
	beq.s loc_207f62
	cmpi.b #$a,$0(a0)
	bne.s loc_207f28
	cmpi.b #$2,$25(a0)
	beq.s loc_207f48
	btst.b #$1,$1(a0)
	bne.s loc_207f48
	bra.s loc_207f62
loc_207f28:
	btst.b #$1,$22(a1)
	bne.s loc_207f48
	tst.w $12(a0)
	beq.s loc_207f48
	bmi.s loc_207f48
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,a0-a1
loc_207f48:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208028
	bsr.w sub_207b60
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207f62:
	bsr.w sub_208028
	bsr.w sub_207b60
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207f72:
	tst.w $10(a0)
	beq.s loc_207fb0
	cmpi.b #$a,$0(a0)
	beq.s loc_207fb0
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207f8c
	neg.b d0
loc_207f8c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206aac).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207fb0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,a0-a1
loc_207fb0:
	rts

sub_207fb2:
	cmpi.b #$a,$0(a0)
	bne.s loc_207fc2
	move.b #$0,$20(a1)
	rts
loc_207fc2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208016
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208026
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207fe4
	tst.w $10(a2)
	beq.s loc_208026
loc_207fe4:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207ff6
	cmp.w $8(a2),d1
	bcs.s loc_208026
	bra.s loc_207ffc
loc_207ff6:
	cmp.w $8(a2),d1
	bcc.s loc_208026
loc_207ffc:
	cmpi.b #$15,$0(a0)
	beq.s loc_208026
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208016:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208026:
	rts

sub_208028:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208042
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208042
	move.b #$0,$20(a1)
loc_208042:
	rts
	.incbin 32836, 374
loc_2081ba:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2081c8(pc,d0.w),d0
	jmp dat_2081c8(pc,d0.w)
dat_2081c8:
	.incbin 33224, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2081ba
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20821e
	tst.b $1(a0)
	bpl.s loc_208226
loc_20821e:
	move.w dat_208278(pc,d0.w),d1
	jsr dat_208278(pc,d1.w)
loc_208226:
	bsr.w sub_2038d4
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208258
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208258:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203980
	rts
dat_208278:
	.incbin 33400, 26
	addq.b #$2,$24(a0)
	move.l #$2085fa,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2082e8
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208600,$4(a0)
	bra.s loc_20832a
loc_2082e8:
	btst.l #$3,d0
	beq.s loc_208316
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20864a,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bd2e).l
	move.l (a7)+,d0
	bra.s loc_20832a
loc_208316:
	btst.b #$1,$1(a0)
	beq.s loc_20832a
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20832a:
	btst.l #$1,d0
	beq.s loc_208336
	bset.b #$5,$2(a0)
loc_208336:
	andi.w #$2,d0
	move.w dat_208342(pc,d0.w),$30(a0)
	rts
dat_208342:
	dc.b $f0,$00,$f6,$00

sub_208346:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207cae).l
	tst.b $1(a0)
	bpl.s loc_208362
	lea ($d000).w,a1
	bsr.s sub_208346
	bne.s loc_208364
loc_208362:
	rts
loc_208364:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2022fa).l
	.incbin 33686, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2086e6(pc,d0.w),d1
	jmp dat_2086e6(pc,d1.w)
dat_2086e6:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2086f0:
	.incbin 34544, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208748
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208740
	moveq #$0,d1
	bra.s loc_208748
loc_208740:
	cmpi.w #$3,d1
	bcs.s loc_208748
	moveq #$2,d1
loc_208748:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208764
	moveq #$6,d1
loc_208764:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2086f0).l,a1
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
	beq.s loc_2087b4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2087ac
	moveq #$0,d0
	bra.s loc_2087b4
loc_2087ac:
	cmpi.w #$3,d0
	bcs.s loc_2087b4
	moveq #$2,d0
loc_2087b4:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208882
	dbf d0,loc_2087b4
	bclr.b #$7,(a2)
	bra.s loc_20880a
loc_2087c6:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2087f2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2087ea
	moveq #$0,d0
	bra.s loc_2087f2
loc_2087ea:
	cmpi.w #$3,d0
	bcs.s loc_2087f2
	moveq #$2,d0
loc_2087f2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208882
	dbf d0,loc_2087f2
	bclr.b #$7,(a2)
	bsr.w sub_20786a
	bne.w loc_20888e
loc_20880a:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208b54,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208860
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208860
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208860:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208882:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2087c6
loc_20888e:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2088b4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088ac
	moveq #$0,d0
	bra.s loc_2088b4
loc_2088ac:
	cmpi.w #$3,d0
	bcs.s loc_2088b4
	moveq #$2,d0
loc_2088b4:
	lea $1(a2),a3
loc_2088b8:
	btst.b #$0,-(a3)
	bne.w sub_203980
	dbf d0,loc_2088b8
	tst.b $1(a0)
	bmi.s loc_2088e8
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208962
loc_2088e8:
	tst.w ($ff190e).l
	bne.s loc_2088f8
	move.b ($ff1913).l,$1a(a0)
loc_2088f8:
	bra.w sub_2038d4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208966
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208948
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208940
	moveq #$0,d1
	bra.s loc_208948
loc_208940:
	cmpi.w #$3,d1
	bcs.s loc_208948
	moveq #$2,d1
loc_208948:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208b4c).l,a1
	bsr.w sub_205e6e
	bra.w sub_2038d4
loc_208962:
	bra.w sub_203980

sub_208966:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2089b6
	bset.b #$1,($ff150d).l
	beq.s loc_2089a0
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2089b6
	bset.b #$2,($ff150d).l
	bne.s loc_2089b6
loc_2089a0:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e2e).l
loc_2089b6:
	jmp (sub_2022fa).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2089ca(pc,d0.w),d1
	jmp dat_2089ca(pc,d1.w)
dat_2089ca:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_2089e6
	move.w d0,d5
loc_2089e6:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_2089f6
loc_2089ee:
	bsr.w sub_207854
	bne.w loc_208aac
loc_2089f6:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208b54,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208a54
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208a54
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208a54:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_208a9c
	move.w d4,d0
	jsr (sub_2007fe).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_208a9c
	subi.w #$80,d4
	bcc.s loc_208a9c
	move.w #$288,d4
loc_208a9c:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_2089ee
loc_208aac:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2022fa).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_20387e
	addi.w #$18,$12(a0)
	bmi.s loc_208b0c
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_208b0c
	jsr (sub_206bec).l
	tst.w d1
	bpl.s loc_208b0c
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_208b0c:
	tst.b ($ff1916).l
	beq.s loc_208b48
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208b48
	bra.w sub_2038d4
	.incbin 35622, 34
loc_208b48:
	bra.w sub_203980
dat_208b4c:
	.incbin 35660, 402
loc_208cde:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d0c(pc,d0.w),d0
	jsr dat_208d0c(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208d0a
	cmpi.w #$5a,($f786).w
	bcs.s loc_208d04
	btst.b #$0,($ff1505).l
	bne.s loc_208d0a
loc_208d04:
	jmp (sub_2038d4).l
loc_208d0a:
	rts
dat_208d0c:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$2092e6,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208d40
	move.b #$13,$1a(a0)
loc_208d40:
	rts
loc_208d42:
	tst.b ($ff0f01).l
	beq.s loc_208d50
	jmp (sub_203980).l
loc_208d50:
	cmpi.b #$a,$28(a0)
	beq.w loc_208cde
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d74(pc,d0.w),d0
	jsr dat_208d74(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20788a).l
dat_208d74:
	.incbin 36212, 282

sub_208e8e:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208ec6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208ebe
	moveq #$0,d1
	bra.s loc_208ec6
loc_208ebe:
	cmpi.w #$3,d1
	bcs.s loc_208ec6
	moveq #$2,d1
loc_208ec6:
	add.w d1,d0
	rts

sub_208eca:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208eec
	tst.b ($ff1956).l
	beq.s loc_208ee4
	tst.b $29(a0)
	bne.s loc_208eec
	rts
loc_208ee4:
	tst.b $29(a0)
	beq.s loc_208eec
	rts
loc_208eec:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207cae).l
	tst.b $28(a0)
	bne.s loc_208f0e
	tst.b ($ff0f01).l
	beq.s loc_208f0e
	jmp (loc_20788a).l
loc_208f0e:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208d42
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f26(pc,d0.w),d1
	jmp dat_208f26(pc,d1.w)
dat_208f26:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2092e6,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208f70
	tst.b $29(a0)
	bne.s loc_208f70
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208f70:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208e8e
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208f9c
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208f9c:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208ff6
	move.b $25(a0),d0
	beq.s loc_208fd6
	bsr.w sub_20381c
	jsr (sub_206bec).l
	tst.w d1
	bpl.w loc_208fe4
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208fe4
loc_208fd6:
	tst.b $1(a0)
	bpl.s loc_208fe4
	lea ($d000).w,a1
	bsr.w sub_208eca
loc_208fe4:
	tst.w ($ff190e).l
	bne.s loc_208ff6
	lea (dat_20925e).l,a1
	bsr.w sub_205e6e
loc_208ff6:
	bsr.w sub_2038d4
	jmp (loc_20788a).l
	.incbin 36864, 606
dat_20925e:
	.incbin 37470, 586
loc_2094a8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094bc(pc,d0.w),d0
	jsr dat_2094bc(pc,d0.w)
	jmp (sub_2038d4).l
dat_2094bc:
	.incbin 38076, 146
	tst.b $28(a0)
	bmi.w loc_2094a8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209564(pc,d0.w),d0
	jmp dat_209564(pc,d0.w)
dat_209564:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2095fe,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_209594
	move.b #$3,$1a(a0)
	bra.s loc_2095b4
loc_209594:
	tst.w ($ff1588).l
	beq.s loc_2095a2
	move.b #$2,$1a(a0)
loc_2095a2:
	tst.b $28(a0)
	beq.s loc_2095b4
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2095b4:
	tst.b $28(a0)
	bne.s loc_2095f8
	tst.b $29(a0)
	beq.s loc_2095e4
	tst.w ($ff1512).l
	beq.s loc_2095d0
	bclr.b #$5,$2(a0)
	bra.s loc_2095f8
loc_2095d0:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2095f8
	eori.b #$20,$2(a0)
	bra.s loc_2095f8
loc_2095e4:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2095f8
	move.b #$2,$1a(a0)
loc_2095f8:
	jmp (sub_2038d4).l
	.incbin 38398, 168

sub_2096a6:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2096c2
	move.l d1,(a3)
loc_2096c2:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2096ec
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e2e).l
loc_2096ec:
	rts
loc_2096ee:
	tst.w ($ff1588).l
	beq.s loc_209744
	bsr.w sub_209940
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
	lea (dat_209aa0).l,a2
	moveq #$2,d6
	bsr.w sub_209af8
	bra.w loc_20979e
loc_209744:
	tst.b ($ff1511).l
	beq.s loc_209768
	bpl.s loc_209752
	bsr.w sub_2098ea
loc_209752:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_2099da
loc_209768:
	tst.b ($ff150f).l
	beq.s loc_20979e
	bpl.s loc_209776
	bsr.w sub_2098d6
loc_209776:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20979a
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20979a:
	bsr.w sub_2099d0
loc_20979e:
	tst.w ($ff1588).l
	bne.w loc_20984a
	tst.b ($ff1510).l
	beq.w loc_20984a
	tst.w ($f63a).w
	bne.w loc_20984a
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_2098a8
	tst.b ($f7cc).w
	bne.s loc_2097f4
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2097f4
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2097f4
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_2097f4
	move.b #$9,(a1)
loc_2097f4:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209ae6
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209af0
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209846
	move.w #$63,d1
loc_209846:
	bsr.w sub_209af0
loc_20984a:
	tst.b ($ff150e).l
	beq.s loc_20985c
	clr.b ($ff150e).l
	bsr.w sub_209ac6
loc_20985c:
	tst.b ($f7d6).w
	beq.s loc_2098a6
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20987c
	move.l #$6d400001,d0
loc_20987c:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20995e
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20989c
	move.l #$6e800001,d0
loc_20989c:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20995e
loc_2098a6:
	rts
loc_2098a8:
	btst.b #$7,($ff152e).l
	bne.s loc_2098d4
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207130
	move.b #$1,($ff150c).l
loc_2098d4:
	rts

sub_2098d6:
	move.l #$73600002,($c00004).l
	lea dat_20993c(pc),a2
	move.w #$2,d2
	bra.s loc_209906

sub_2098ea:
	lea ($c00000).l,a6
	bsr.w sub_209ac6
	move.l #$70600002,($c00004).l
	lea dat_209934(pc),a2
	move.w #$6,d2
loc_209906:
	lea (dat_2330bc).l,a1
loc_20990c:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209928
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20991c:
	move.l (a3)+,(a6)
	dbf d1,loc_20991c
loc_209922:
	dbf d2,loc_20990c
	rts
loc_209928:
	move.l #$0,(a6)
	dbf d1,loc_209928
	bra.s loc_209922
dat_209934:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20993c:
	dc.b $ff,$ff,$00,$00

sub_209940:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209abc
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209abc

sub_20995e:
	lea (dat_209a98).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20996e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209972:
	sub.l d3,d1
	bcs.s loc_20997a
	addq.w #$1,d2
	bra.s loc_209972
loc_20997a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209984
	move.w #$1,d4
loc_209984:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209990
	tst.w d6
	bne.s loc_2099c2
loc_209990:
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
loc_2099b6:
	addi.l #$400000,d0
	dbf d6,loc_20996e
	rts
loc_2099c2:
	moveq #$f,d5
loc_2099c4:
	move.l #$0,(a6)
	dbf d5,loc_2099c4
	bra.s loc_2099b6

sub_2099d0:
	lea (dat_209aa0).l,a2
	moveq #$2,d6
	bra.s loc_2099e2

sub_2099da:
	lea (dat_209a94).l,a2
	moveq #$5,d6
loc_2099e2:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2099ea:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2099ee:
	sub.l d3,d1
	bcs.s loc_2099f6
	addq.w #$1,d2
	bra.s loc_2099ee
loc_2099f6:
	add.l d3,d1
	tst.w d2
	beq.s loc_209a00
	move.w #$1,d4
loc_209a00:
	tst.w d4
	beq.s loc_209a2e
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
loc_209a2e:
	addi.l #$400000,d0
	dbf d6,loc_2099ea
	rts
	.incbin 39482, 32
loc_209a5a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209a5e:
	sub.l d3,d1
	bcs.s loc_209a66
	addq.w #$1,d2
	bra.s loc_209a5e
loc_209a66:
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
	dbf d6,loc_209a5a
	rts
dat_209a94:
	dc.b $00,$01,$86,$a0
dat_209a98:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209aa0:
	dc.b $00,$00,$00,$64
dat_209aa4:
	dc.b $00,$00,$00,$0a
dat_209aa8:
	dc.b $00,$00,$00,$01
dat_209aac:
	.incbin 39596, 16

sub_209abc:
	moveq #$3,d6
	lea (dat_209aac).l,a2
	bra.s sub_209af8

sub_209ac6:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209adc
	moveq #$9,d1
loc_209adc:
	lea (dat_209aa8).l,a2
	moveq #$0,d6
	bra.s sub_209af8

sub_209ae6:
	lea (dat_209aa8).l,a2
	moveq #$0,d6
	bra.s sub_209af8

sub_209af0:
	lea (dat_209aa4).l,a2
	moveq #$1,d6

sub_209af8:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209b00:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209b04:
	sub.l d3,d1
	bcs.s loc_209b0c
	addq.w #$1,d2
	bra.s loc_209b04
loc_209b0c:
	add.l d3,d1
	tst.w d2
	beq.s loc_209b16
	move.w #$1,d4
loc_209b16:
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
	dbf d6,loc_209b00
	rts
	.incbin 39756, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a59c(pc,d0.w),d0
	jmp dat_20a59c(pc,d0.w)
dat_20a59c:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205e2e).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20a672,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20a5f8
	tst.b ($ff1508).l
	beq.s loc_20a600
	move.l #$20a676,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20a600
loc_20a5f8:
	tst.b ($ff1508).l
	bne.s loc_20a610
loc_20a600:
	bset.b #$7,($ff156b).l
	jsr (sub_207854).l
	beq.s loc_20a616
loc_20a610:
	jmp (sub_203980).l
loc_20a616:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20a658
	move.w #$6e,d0
	jmp (sub_205e2e).l
loc_20a658:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a66c
	bge.s loc_20a668
	neg.w d0
loc_20a668:
	add.w d0,$8(a0)
loc_20a66c:
	jmp (sub_2038d4).l
	.incbin 42610, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6b8(pc,d0.w),d0
	jmp dat_20a6b8(pc,d0.w)
dat_20a6b8:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20adb6,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ad76).l,a2
loc_20a706:
	jsr (sub_207854).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20adb6,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20a758
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20a758:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20a706
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20a780
	bge.s loc_20a776
	neg.w d0
loc_20a776:
	add.w d0,$a(a0)
	jmp (sub_2038d4).l
loc_20a780:
	addq.b #$4,$24(a0)
	jmp (sub_2038d4).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a7a4
	bge.s loc_20a79a
	neg.w d0
loc_20a79a:
	add.w d0,$8(a0)
	jmp (sub_2038d4).l
loc_20a7a4:
	addq.b #$4,$24(a0)
	jmp (sub_2038d4).l
	tst.b $1e(a0)
	beq.s loc_20a7be
	subq.b #$1,$1e(a0)
	jmp (sub_2038d4).l
loc_20a7be:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20a7d8
	bge.s loc_20a7ce
	neg.w d0
loc_20a7ce:
	add.w d0,$a(a0)
	jmp (sub_2038d4).l
loc_20a7d8:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024c4).l
	tst.b $1e(a0)
	beq.s loc_20a7fa
	subq.b #$1,$1e(a0)
	jmp (sub_2038d4).l
loc_20a7fa:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a814
	bge.s loc_20a80a
	neg.w d0
loc_20a80a:
	add.w d0,$8(a0)
	jmp (sub_2038d4).l
loc_20a814:
	jmp (sub_203980).l
	tst.l ($f680).w
	bne.s loc_20a82e
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203980).l
loc_20a82e:
	rts
	.incbin 43056, 1350
dat_20ad76:
	.incbin 44406, 1854
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b4ce(pc,d0.w),d0
	jsr dat_20b4ce(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20788a).l
dat_20b4ce:
	.incbin 46286, 436
	btst.b #$7,($ff152e).l
	beq.s loc_20b6cc
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20b6cc
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
	bpl.s loc_20b6bc
	moveq #$0,d1
	bra.s loc_20b6c4
loc_20b6bc:
	cmpi.w #$3,d1
	bcs.s loc_20b6c4
	moveq #$2,d1
loc_20b6c4:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20b6cc:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_20b6fc
	cmpi.b #$6,$24(a6)
	bcc.s loc_20b6fc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b6fe(pc,d0.w),d1
	jsr dat_20b6fe(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_20b6fc
	jmp (loc_20788a).l
loc_20b6fc:
	rts
dat_20b6fe:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$21ed28,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_20b994(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_20b814
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_20b814
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_20b814
	tst.b $2c(a6)
	bne.w loc_20b814
	cmpi.b #$4,$24(a6)
	bne.s loc_20b79c
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_20b79c:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_20b7b2
	bset.b #$6,$2c(a6)
loc_20b7b2:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_20b7d0
	bset.b #$6,$1(a6)
loc_20b7d0:
	cmpi.b #$4,$24(a6)
	bne.s loc_20b7dc
	subq.b #$2,$24(a6)
loc_20b7dc:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
loc_20b814:
	rts
	.incbin 47126, 382
dat_20b994:
	.incbin 47508, 922

sub_20bd2e:
	rts
	.incbin 48432, 390
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bed0(pc,d0.w),d0
	jsr dat_20bed0(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20788a).l
dat_20bed0:
	.incbin 48848, 722
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c1c0(pc,d0.w),d0
	jsr dat_20c1c0(pc,d0.w)
	jsr (sub_2038d4).l
	move.w $36(a0),d0
	jmp (loc_20788e).l
dat_20c1c0:
	dc.b $00,$16,$00,$4c
loc_20c1c4:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_207ca8).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20c2a4,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20c21c(pc,d0.w),d0
	jmp dat_20c21c(pc,d0.w)
dat_20c21c:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20c288
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c1c4
	bsr.w sub_20c288
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c1c4
	.incbin 49734, 32
	move.l $8(a0),-(a7)
	bsr.w sub_20c288
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20c1c4

sub_20c288:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007fe).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 49828, 1554
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c8d0(pc,d0.w),d0
	jsr dat_20c8d0(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20788a).l
dat_20c8d0:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20c8da:
	tst.b $1a(a0)
	beq.s loc_20c8e2
	rts
loc_20c8e2:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207cae).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20ca24,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20c930
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20c930:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20c940
	neg.w d0
loc_20c940:
	cmpi.w #$40,d0
	bcc.s loc_20c980
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20c95c
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20c95c:
	sub.w d1,d0
	bcs.s loc_20c980
	cmpi.w #$40,d0
	bcc.s loc_20c980
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20c980
	move.w #$a4,d0
	jsr (sub_2022fa).l
loc_20c980:
	bra.w loc_20c8da
	.incbin 51588, 1058
	jsr (sub_20e3d6).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20cec8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cdc6(pc,d0.w),d0
	jmp dat_20cdc6(pc,d0.w)
dat_20cdc6:
	.incbin 52678, 258
loc_20cec8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ced6(pc,d0.w),d0
	jmp dat_20ced6(pc,d0.w)
dat_20ced6:
	.incbin 52950, 1214
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3b8(pc,d0.w),d0
	jsr dat_20d3b8(pc,d0.w)
	jsr (sub_2038d4).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20d3b6
	jmp (loc_20788a).l
loc_20d3b6:
	rts
dat_20d3b8:
	.incbin 54200, 254
	move.w $8(a0),d3
	move.w $c(a0),d4
loc_20d4be:
	move.b (a6)+,d5
	cmpi.b #$ff,d5
	beq.s loc_20d4fe
	move.b (a6)+,d6
	ext.w d5
	ext.w d6
	jsr (sub_207854).l
	bne.s loc_20d4fe
	move.b d1,$0(a1)
	move.b d2,$28(a1)
	move.w d3,$8(a1)
	move.w d4,$c(a1)
	subi.w #$a0,$c(a1)
	add.w d5,$8(a1)
	add.w d6,$c(a1)
	move.w d4,$2e(a1)
	addi.w #$26,$2e(a1)
	bra.s loc_20d4be
loc_20d4fe:
	jmp (sub_203980).l
	.incbin 54532, 300
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$3b8,$2(a0)
	move.l #$20d88c,$4(a0)
	jsr (sub_207854).l
	bne.w loc_20d85e
	bsr.w sub_20d6aa
	move.w a1,$2a(a0)
	subi.w #$28,$8(a1)
	subi.w #$18,$c(a1)
	jsr (sub_207854).l
	bne.w loc_20d85e
	bsr.w sub_20d6aa
	move.w a1,$2c(a0)
	addi.w #$28,$8(a1)
	addi.w #$18,$c(a1)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
	rts

sub_20d6aa:
	move.b $0(a0),$0(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ff,$28(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$8,$16(a1)
	move.b #$9,$1a(a1)
	move.w a0,$2a(a1)
	move.w #$78,$2e(a0)
	rts
	.incbin 55038, 352
loc_20d85e:
	jmp (sub_203980).l
	.incbin 55396, 2930

sub_20e3d6:
	tst.b $28(a0)
	bmi.s loc_20e406
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e3f6
	tst.b ($ff156d).l
	bne.s loc_20e406
	addq.l #$4,a7
	jmp (loc_20788a).l
loc_20e3f6:
	tst.b ($ff156a).l
	bne.s loc_20e406
	addq.l #$4,a7
	jmp (sub_203980).l
loc_20e406:
	rts

sub_20e408:
	jsr (sub_2066e2).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20e5d2).l,a1
	move.w #$3f,d6
	bsr.w sub_20e58e
	bne.w loc_20e4b8
	bclr.b #$6,($f7a7).w
	bne.s loc_20e45e
	btst.b #$7,($f7a7).w
	beq.s loc_20e494
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4e00,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20e4b8
loc_20e45e:
	bset.b #$7,($f7a7).w
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940093ff,(a5)
	move.w #$9780,(a5)
	move.l #$50000081,(a5)
	move.w #$0,($c00000).l
loc_20e486:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20e486
	move.w #$8f02,(a5)
	bra.s loc_20e4b8
loc_20e494:
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$5000,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e4b8:
	lea (dat_20e5e0).l,a1
	move.w #$1f,d6
	bsr.w sub_20e58e
	bne.s loc_20e4ec
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4f80,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e4ec:
	lea (dat_20e574).l,a1
	move.w #$1f,d6
	bsr.w sub_20e522
	bne.s loc_20e520
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4f00,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20e520:
	rts

sub_20e522:
	subq.b #$1,(a2)
	bpl.s loc_20e568
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20e532
	moveq #$0,d0
loc_20e532:
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
loc_20e556:
	move.l (a1)+,(a3)+
	dbf d6,loc_20e556
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20e568:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20e574:
	.incbin 58740, 26

sub_20e58e:
	subq.b #$1,(a2)
	bpl.w loc_20e5c6
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20e5a4
	moveq #$0,d0
loc_20e5a4:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20e5b4:
	move.l (a1)+,(a3)+
	dbf d6,loc_20e5b4
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20e5c6:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20e5d2:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20e5e0:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20e5ea:
	.incbin 58858, 16
dat_20e5fa:
	.incbin 58874, 268
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e72a(pc,d0.w),d0
	jsr dat_20e72a(pc,d0.w)
	bsr.w sub_20e7b8
	lea (dat_20fa1c).l,a1
	jsr (sub_205e6e).l
	jmp (sub_2038d4).l
dat_20e72a:
	.incbin 59178, 142

sub_20e7b8:
	bsr.w sub_20f9be
	btst.b d0,($f7aa).w
	bne.s loc_20e7d2
	btst.b #$7,($f7a7).w
	bne.s loc_20e7d0
	bset.b #$6,($f7a7).w
loc_20e7d0:
	rts
loc_20e7d2:
	bclr.b #$7,($f7a7).w
	rts
	.incbin 59354, 3188
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f49c(pc,d0.w),d0
	jsr dat_20f49c(pc,d0.w)
	tst.b $28(a0)
	bmi.s loc_20f496
	btst.b #$0,$28(a0)
	beq.w loc_20f46c
loc_20f46c:
	move.w $36(a0),d0
	add.w d0,$8(a0)
	move.w $38(a0),d0
	add.w d0,$c(a0)
	lea ($d000).w,a1
	jsr (sub_207cae).l
	move.w $36(a0),d0
	sub.w d0,$8(a0)
	move.w $38(a0),d0
	sub.w d0,$c(a0)
loc_20f496:
	jmp (sub_2038d4).l
dat_20f49c:
	.incbin 62620, 1314

sub_20f9be:
	lea ($d000).w,a1
	cmpi.w #$360,$c(a1)
	ble.s loc_20f9da
	cmpi.w #$560,$c(a1)
	ble.s loc_20f9d6
	moveq #$5,d0
	rts
loc_20f9d6:
	moveq #$6,d0
	rts
loc_20f9da:
	moveq #$7,d0
	rts
	.incbin 63966, 62
dat_20fa1c:
	.incbin 64028, 1030
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
	.incbin 65220, 60732
dat_21ec00:
	.incbin 125952, 768
dat_21ef00:
	.incbin 126720, 4352
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 4154
dat_2346f6:
	.incbin 214774, 256
dat_2347f6:
	.incbin 215030, 4096
dat_2357f6:
	.incbin 219126, 4996
dat_236b7a:
	.incbin 224122, 38022
