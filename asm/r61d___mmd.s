; R61D__.MMD
; disassembled from the disc; code only, data comes from data/R61D__.MMD at build time
	.file "R61D__.MMD", 262144

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
	bsr.w sub_2076e6
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
	lea (dat_20fe0a).l,a2
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
	jsr (sub_20fc96).l
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
	jsr (sub_205e1e).l
	bsr.w sub_2076e6
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
	jsr (sub_2076fc).l
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
	jsr (sub_20ca02).l
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
	jmp (sub_205e1e).l
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
	jmp (sub_205e1e).l
loc_201bdc:
	tst.b ($ff151f).l
	bne.s loc_201bd2
	tst.b ($ff1520).l
	bne.s loc_201bd2
	move.w #$90,d0
	jmp (sub_205e1e).l
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
	jmp (sub_205e1e).l
loc_201c18:
	tst.b ($ff151f).l
	bne.s loc_201c0e
	tst.b ($ff1520).l
	bne.s loc_201c0e
	move.w #$91,d0
	jmp (sub_205e1e).l
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
	bsr.w sub_205d4a
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
	jsr (sub_20fc96).l
	jsr (sub_2022ae).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202eea
	bsr.w sub_2025a2
	jmp (loc_20b232).l
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
	bsr.w sub_205d4a
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
	lea (dat_20fe1a).l,a1
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
	lea (dat_20fe1a).l,a1
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
	dc.b $00,$04,$00,$00,$22,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202900:
	.incbin 10496, 32
loc_202920:
	tst.b ($ff1522).l
	beq.s loc_202940
	jsr (sub_2069a8).l
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
	dc.b $00,$30,$04,$ac
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
	lea (dat_20fe0a).l,a2
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
	.incbin 15382, 246

sub_203d0c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d1e
	move.w #$0,(a1)
	rts
loc_203d1e:
	tst.w (a1)
	bne.s loc_203d28
	move.b #$1,$1(a1)
loc_203d28:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d72
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d64
	neg.w $10(a0)
loc_203d64:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205e1e
loc_203d72:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d90
	cmpa.w #$d040,a0
	beq.s loc_203d90
	tst.b ($ff1906).l
	beq.s loc_203d90
	jmp (loc_2072d4).l
loc_203d90:
	move.b $2a(a0),d0
	beq.s loc_203dba
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203dac
	cmpi.b #$2d,d0
	bcs.s loc_203db6
	move.b #$2d,d0
	bra.s loc_203db6
loc_203dac:
	cmpi.b #$1e,d0
	bcs.s loc_203db6
	move.b #$1e,d0
loc_203db6:
	move.b d0,$2a(a0)
loc_203dba:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203dc8(pc,d0.w),d1
	jmp dat_203dc8(pc,d1.w)
dat_203dc8:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203dd2:
	tst.b ($d300).w
	bne.s loc_203e10
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e10:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e38
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e38:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e6c:
	tst.b ($ff1506).l
	bne.s loc_203ed2
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203ed2
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f4c
	cmpi.b #$2f,d1
	bne.s loc_203ed4
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203ed2
	tst.b $2c(a0)
	beq.s loc_203ed2
	jsr (sub_2078f8).l
	bne.s loc_203ed2
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203eca
	moveq #$0,d0
loc_203eca:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203ed2:
	rts
loc_203ed4:
	rts
	.incbin 16086, 88
	move.w $14(a0),d0
	bpl.s loc_203f36
	neg.w d0
loc_203f36:
	cmpi.w #$600,d0
	bcc.s loc_203f42
	move.b #$2,$28(a1)
loc_203f42:
	move.w #$a1,d0
	jmp (sub_2022fa).l

sub_203f4c:
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

sub_203f72:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203ff0
	cmpi.b #$4,$24(a0)
	bcc.s loc_203ff0
	btst.b #$3,$2c(a0)
	bne.s loc_203ff0
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_203ff0
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203fbc
	neg.w d0
loc_203fbc:
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
loc_203ff0:
	rts

sub_203ff2:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_20408e
	cmpi.b #$2,($ff1522).l
	beq.w loc_20408e
	btst.b #$0,$2c(a0)
	bne.s loc_20408e
	btst.b #$2,$2c(a0)
	bne.s loc_20408e
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20408e
	move.w ($f786).w,d0
	beq.s loc_204050
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_204050
	clr.b ($f784).w
loc_204050:
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
loc_20408e:
	rts

sub_204090:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2040ee
	cmpi.b #$4,$24(a0)
	bcc.s loc_2040ee
	tst.b ($ff1521).l
	bne.s loc_2040ee
	tst.b ($ff151f).l
	bne.s loc_2040ee
	tst.w $30(a0)
	bne.s loc_2040ee
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_2040ee
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_2040f0(pc,d0.w),d0
	lea dat_2040f0(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_2040e2:
	move.w (a3)+,d1
	bmi.s loc_2040ee
	cmp.w d1,d0
	bne.s loc_2040e2
	bra.w loc_207076
loc_2040ee:
	rts
dat_2040f0:
	.incbin 16624, 32

sub_204110:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2041ca
	tst.b ($ff1521).l
	bne.w loc_2041ca
	tst.b ($ff151f).l
	bne.w loc_2041ca
	cmpi.w #$980,$8(a0)
	bcs.s loc_204140
	cmpi.w #$a20,$8(a0)
	bcs.w loc_2041ca
loc_204140:
	btst.b #$7,($f7a7).w
	bne.w loc_2041ca
	tst.w $30(a0)
	bne.s loc_2041ca
	cmpi.b #$2,($ff1507).l
	bne.s loc_204174
	cmpi.w #$a10,$8(a0)
	bcs.s loc_20418c
	tst.b ($ff1958).l
	beq.s loc_2041ca
	tst.b ($ff156a).l
	bne.s loc_204186
	bra.s loc_20418c
loc_204174:
	cmpi.b #$2,($ff152e).l
	bne.s loc_20418c
	tst.b ($ff156a).l
	beq.s loc_20418c
loc_204186:
	tst.b ($f668).w
	beq.s loc_2041ca
loc_20418c:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_2041cc).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041c0
	tst.b ($ff156a).l
	bne.s loc_2041c0
	lea (dat_2041d2).l,a1
loc_2041c0:
	cmp.w (a1)+,d0
	beq.w loc_207076
	dbf d6,loc_2041c0
loc_2041ca:
	rts
dat_2041cc:
	dc.b $02,$43,$02,$44,$02,$45
dat_2041d2:
	dc.b $02,$87,$02,$88,$02,$89

sub_2041d8:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2042a8
	tst.b ($f7a7).w
	bne.w loc_2042a8
	cmpi.b #$2,($ff152e).l
	bcc.s loc_20420c
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_204204
	addi.b #$1e,d0
loc_204204:
	cmp.b ($f7b3).w,d0
	beq.w loc_2042a8
loc_20420c:
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
	beq.s loc_204264
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
	bne.s loc_2042a8
loc_204264:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_2042a8
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_2022fa).l
loc_2042a8:
	rts

sub_2042aa:
	rts
	.incbin 17068, 80
	bsr.s sub_2042aa
	bsr.w sub_203e6c
	tst.w ($ff1588).l
	beq.s loc_20431c
	btst.b #$4,($f605).w
	beq.s loc_20431c
	move.b #$1,($ff1906).l
	rts
loc_20431c:
	tst.b ($f7cc).w
	bne.s loc_204328
	move.w ($f604).w,($f602).w
loc_204328:
	btst.b #$0,$2c(a0)
	beq.s loc_204336
	bsr.w sub_204550
	bra.s loc_20435c
loc_204336:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20438c(pc,d0.w),d1
	jsr dat_20438c(pc,d1.w)
	bsr.w sub_2041d8
	bsr.w sub_204110
	bsr.w sub_204090
	bsr.w sub_203ff2
	bsr.w sub_203f72
loc_20435c:
	bsr.s sub_20439a
	bsr.w sub_20445a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_205814
	tst.b $2c(a0)
	bmi.s loc_204386
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204386
	jsr (sub_206e78).l
loc_204386:
	bsr.w sub_2056d8
	rts
dat_20438c:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_20439a:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2043be
	move.w $30(a0),d0
	beq.s loc_2043b0
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2043be
loc_2043b0:
	btst.b #$6,$2c(a0)
	bne.s loc_2043be
	jsr (sub_2038d4).l
loc_2043be:
	tst.b ($ff151f).l
	beq.s loc_204402
	tst.w $32(a0)
	beq.s loc_204402
	subq.w #$1,$32(a0)
	bne.s loc_204402
	tst.b ($ff1520).l
	bne.s loc_2043fa
	tst.b ($ff1958).l
	bne.s loc_2043fa
	tst.b ($ff152e).l
	bne.s loc_2043f4
	move.w #$e,d0
	jsr (sub_205e1e).l
loc_2043f4:
	jsr (sub_201aee).l
loc_2043fa:
	move.b #$0,($ff151f).l
loc_204402:
	tst.b ($ff1520).l
	beq.s loc_204458
	tst.w $34(a0)
	beq.s loc_204458
	subq.w #$1,$34(a0)
	bne.s loc_204458
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204450
	tst.b ($ff1958).l
	bne.s loc_204450
	tst.b ($ff152e).l
	bne.s loc_20444a
	move.w #$e,d0
	jsr (sub_205e1e).l
loc_20444a:
	jsr (sub_201aee).l
loc_204450:
	move.b #$0,($ff1520).l
loc_204458:
	rts

sub_20445a:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_204476:
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
	bcs.s loc_204548
	move.l #$50000,d0
loc_204548:
	move.l d0,($ff1570).l
	rts

sub_204550:
	tst.b $2a(a0)
	bne.w loc_20460e
	tst.b ($f784).w
	beq.w loc_20460e
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20456e
	neg.w d0
loc_20456e:
	tst.w ($f786).w
	bne.s loc_20457a
	move.w #$1,($f786).w
loc_20457a:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204590
	move.b #$1,($ff1502).l
	bra.w loc_205e1a
loc_204590:
	cmpi.w #$d2,d1
	bcs.s loc_2045e4
	cmpi.b #$2,($ff1522).l
	beq.s loc_2045e2
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2045ba
	move.w #$82,d0
	jsr (sub_205e1e).l
	moveq #$0,d0
loc_2045ba:
	add.b ($f784).w,d0
	bpl.s loc_2045c4
	moveq #$0,d0
	bra.s loc_2045cc
loc_2045c4:
	cmpi.b #$3,d0
	bcs.s loc_2045cc
	moveq #$2,d0
loc_2045cc:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204476
	move.b #$2,($ff1522).l
loc_2045e2:
	rts
loc_2045e4:
	cmpi.w #$5a,d1
	bcc.s loc_2045fc
	cmp.w d2,d0
	bcc.w loc_203dd2
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2045fc:
	cmp.w d2,d0
	bcc.s loc_20460e
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20460e:
	rts
	tst.b ($f75f).w
	beq.s loc_204622
	cmpi.b #$5,$1c(a0)
	bne.s loc_20467c
	clr.b ($f75f).w
loc_204622:
	bsr.w sub_203d0c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204652
	tst.b ($ff195b).l
	beq.s loc_204640
	cmpi.b #$79,$1a(a0)
	bne.s loc_20467c
	bra.s loc_204648
loc_204640:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20467c
loc_204648:
	bsr.w sub_205010
	jmp (sub_20381c).l
loc_204652:
	bsr.w sub_204886
	bsr.w sub_204550
	bsr.w sub_2050ee
	bsr.w sub_205208
	bsr.w sub_2048fc
	bsr.w sub_20507c
	bsr.w sub_205010
	jsr (sub_20387e).l
	bsr.w sub_200bfe
	bsr.w sub_205286
loc_20467c:
	rts
	tst.w $12(a0)
	bmi.s loc_204692
	cmpi.b #$2c,$1c(a0)
	beq.s loc_204692
	move.b #$0,$1c(a0)
loc_204692:
	btst.b #$2,$2c(a0)
	beq.s loc_2046a0
	bsr.w sub_2047f2
	bra.s loc_2046cc
loc_2046a0:
	bsr.w sub_204886
	bsr.w sub_204550
	bsr.w sub_2051d4
	bsr.w sub_204f3c
	bsr.w sub_205010
	jsr (sub_20381c).l
	btst.b #$6,$22(a0)
	beq.s loc_2046c8
	subi.w #$28,$12(a0)
loc_2046c8:
	bsr.w sub_2052c8
loc_2046cc:
	bsr.w sub_2052ec
	rts
	bsr.w sub_204886
	bsr.w sub_204550
	bsr.w sub_2050ee
	bsr.w sub_205244
	bsr.w sub_204d84
	bsr.w sub_205010
	tst.b $2a(a0)
	bne.s loc_2046f6
	jsr (sub_20387e).l
loc_2046f6:
	bsr.w sub_200bfe
	bsr.w sub_205286
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_204712
	bsr.w sub_204756
	bsr.w sub_204550
	bra.s loc_204750
loc_204712:
	btst.b #$2,$2c(a0)
	beq.s loc_204724
	bsr.w sub_2047f2
	bsr.w sub_204550
	bra.s loc_204750
loc_204724:
	bsr.w sub_204886
	bsr.w sub_204550
	bsr.w sub_2051d4
	bsr.w sub_204f3c
	bsr.w sub_205010
	jsr (sub_20381c).l
	btst.b #$6,$22(a0)
	beq.s loc_20474c
	subi.w #$28,$12(a0)
loc_20474c:
	bsr.w sub_2052c8
loc_204750:
	bsr.w sub_2052ec
	rts

sub_204756:
	btst.b #$4,$2c(a0)
	beq.s loc_20478a
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_20479a
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_204778
	neg.w $10(a0)
loc_204778:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_20478a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20479a
	bset.b #$4,$2c(a0)
loc_20479a:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_2047b0
	andi.w #$7fff,$2(a0)
loc_2047b0:
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
	beq.s loc_2047f0
	neg.w $12(a0)
loc_2047f0:
	rts

sub_2047f2:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f6c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_20481a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204834
loc_20481a:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_204834:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_20484e
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_204862
loc_20484e:
	btst.b #$3,($f602).w
	beq.s loc_204884
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_204862:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_204884
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_204884
	move.b #$0,$1b(a0)
loc_204884:
	rts

sub_204886:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2048f2
	tst.w ($ff1506).l
	bne.s loc_2048f2
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2048f4).l,a2
loc_2048ba:
	move.b (a2)+,d0
	bmi.s loc_2048ca
	cmp.b d0,d1
	bne.s loc_2048ba
	bset.b #$1,$2c(a0)
	rts
loc_2048ca:
	bclr.b #$1,$2c(a0)
	beq.s loc_2048f2
	tst.w $12(a0)
	bpl.s loc_2048f2
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2048f2
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2048f2
	neg.w $10(a0)
loc_2048f2:
	rts
dat_2048f4:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_2048fc:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204c0e
	tst.w $3e(a0)
	bne.w loc_204bbe
	btst.b #$2,($f602).w
	beq.s loc_204924
	bsr.w sub_204c9e
loc_204924:
	btst.b #$3,($f602).w
	beq.s loc_204930
	bsr.w sub_204d14
loc_204930:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204bbe
	tst.w $14(a0)
	beq.s loc_204950
	tst.b $2a(a0)
	beq.w loc_204bbe
	bra.s loc_20495c
loc_204950:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20495c:
	btst.b #$3,$22(a0)
	beq.s loc_2049ac
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_2049ee
	cmpi.b #$1e,$0(a1)
	bne.s loc_20498c
	move.b #$0,$1c(a0)
	bra.w loc_204bbe
loc_20498c:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2049d2
	cmp.w d2,d1
	bge.s loc_2049c0
	bra.s loc_2049ee
loc_2049ac:
	jsr (sub_206bdc).l
	cmpi.w #$c,d1
	blt.s loc_2049ee
	cmpi.b #$3,$36(a0)
	bne.s loc_2049ca
loc_2049c0:
	btst.b #$0,$22(a0)
	bne.s loc_2049da
	bra.s loc_2049e4
loc_2049ca:
	cmpi.b #$3,$37(a0)
	bne.s loc_2049ee
loc_2049d2:
	btst.b #$0,$22(a0)
	bne.s loc_2049e4
loc_2049da:
	move.b #$32,$1c(a0)
	bra.w loc_204bbe
loc_2049e4:
	move.b #$6,$1c(a0)
	bra.w loc_204bbe
loc_2049ee:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204a02
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204a02:
	btst.b #$7,($f788).w
	bne.w loc_204b06
	btst.b #$6,($f788).w
	bne.w loc_204b26
	btst.b #$1,($f602).w
	bne.w loc_204b26
	andi.b #$f,($f788).w
	beq.s loc_204a3a
	btst.b #$0,($f603).w
	beq.s loc_204a4e
	bset.b #$7,($f788).w
	bra.w loc_204be2
loc_204a3a:
	btst.b #$0,($f603).w
	beq.w loc_204a4e
	move.b #$1,($f788).w
	bra.w loc_204be2
loc_204a4e:
	btst.b #$0,($f602).w
	beq.s loc_204aca
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204aac
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a7e
	asr.w #$1,d2
	sub.w d2,d1
loc_204a7e:
	btst.b #$0,$22(a0)
	beq.s loc_204a8a
	neg.w d0
	neg.w d1
loc_204a8a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204aa0
	cmp.w d0,d1
	ble.s loc_204aa6
	bra.s loc_204aa4
loc_204aa0:
	cmp.w d1,d0
	ble.s loc_204aa6
loc_204aa4:
	move.w d1,d0
loc_204aa6:
	move.w d0,$14(a0)
	rts
loc_204aac:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204ac6
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2022fa).l
loc_204ac6:
	bra.w loc_204be2
loc_204aca:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204aea
	move.w #$ab,d0
	jsr (sub_2022fa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b26
loc_204aea:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	bra.w loc_204bbe
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204b06:
	btst.b #$0,($f602).w
	beq.s loc_204b26
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204be2
	addq.w #$2,($f73e).w
	bra.w loc_204be2
loc_204b26:
	btst.b #$6,($f788).w
	bne.w loc_204ba2
	andi.b #$f,($f788).w
	beq.s loc_204b4a
	btst.b #$1,($f603).w
	beq.s loc_204b5c
	bset.b #$6,($f788).w
	bra.w loc_204be2
loc_204b4a:
	btst.b #$1,($f603).w
	beq.s loc_204b5c
	move.b #$1,($f788).w
	bra.w loc_204be2
loc_204b5c:
	btst.b #$1,($f602).w
	beq.s loc_204bbe
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204ba0
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204ba0
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204b92
	neg.w $14(a0)
loc_204b92:
	move.w #$9c,d0
	jsr (sub_2022fa).l
	bsr.w sub_2050a4
loc_204ba0:
	bra.s loc_204be2
loc_204ba2:
	btst.b #$1,($f602).w
	beq.s loc_204bbe
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204be2
	subq.w #$2,($f73e).w
	bra.s loc_204be2
loc_204bbe:
	cmpi.w #$60,($f73e).w
	bne.s loc_204bd8
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204be2
	move.b #$0,($f788).w
	bra.s loc_204be2
loc_204bd8:
	bcc.s loc_204bde
	addq.w #$4,($f73e).w
loc_204bde:
	subq.w #$2,($f73e).w
loc_204be2:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c0e
	move.w $14(a0),d0
	beq.s loc_204c0e
	bmi.s loc_204c02
	sub.w d5,d0
	bcc.s loc_204bfc
	move.w #$0,d0
loc_204bfc:
	move.w d0,$14(a0)
	bra.s loc_204c0e
loc_204c02:
	add.w d5,d0
	bcc.s loc_204c0a
	move.w #$0,d0
loc_204c0a:
	move.w d0,$14(a0)
loc_204c0e:
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204c2c:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204c9c
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204c9c
	bmi.s loc_204c44
	neg.w d1
loc_204c44:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206a9c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204c9c
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204c98
	cmpi.b #$40,d0
	beq.s loc_204c86
	cmpi.b #$80,d0
	beq.s loc_204c80
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c80:
	sub.w d1,$12(a0)
	rts
loc_204c86:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c98:
	add.w d1,$12(a0)
loc_204c9c:
	rts

sub_204c9e:
	tst.b $2a(a0)
	bne.s loc_204d12
	move.w $14(a0),d0
	beq.s loc_204cac
	bpl.s loc_204cdc
loc_204cac:
	bset.b #$0,$22(a0)
	bne.s loc_204cc0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cc0:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204cd0
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204cd0
	move.w d1,d0
loc_204cd0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204cdc:
	sub.w d4,d0
	bcc.s loc_204ce4
	move.w #$ff80,d0
loc_204ce4:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d12
	cmpi.w #$400,d0
	blt.s loc_204d12
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022fa).l
loc_204d12:
	rts

sub_204d14:
	tst.b $2a(a0)
	bne.s loc_204d82
	move.w $14(a0),d0
	bmi.s loc_204d4c
	bclr.b #$0,$22(a0)
	beq.s loc_204d34
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204d34:
	cmp.w d6,d0
	bge.s loc_204d40
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d40
	move.w d6,d0
loc_204d40:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d4c:
	add.w d4,d0
	bcc.s loc_204d54
	move.w #$80,d0
loc_204d54:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d82
	cmpi.w #$fc00,d0
	bgt.s loc_204d82
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2022fa).l
loc_204d82:
	rts

sub_204d84:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204ec0
	tst.w $3e(a0)
	bne.s loc_204dbc
	btst.b #$2,($f602).w
	beq.s loc_204db0
	bsr.w sub_204ef6
loc_204db0:
	btst.b #$3,($f602).w
	beq.s loc_204dbc
	bsr.w sub_204f1a
loc_204dbc:
	tst.b $2a(a0)
	beq.w loc_204e66
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204ddc
	asr.w #$1,d2
	sub.w d2,d1
loc_204ddc:
	btst.b #$0,$22(a0)
	beq.s loc_204de8
	neg.w d0
	neg.w d1
loc_204de8:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204dfe
	cmp.w d0,d1
	ble.s loc_204e04
	bra.s loc_204e02
loc_204dfe:
	cmp.w d1,d0
	ble.s loc_204e04
loc_204e02:
	move.w d1,d0
loc_204e04:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204e38
	rts
loc_204e12:
	move.w #$ab,d0
	jsr (sub_2022fa).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204e8e
loc_204e38:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204e12
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	btst.b #$0,$22(a0)
	bne.s loc_204e5e
	bsr.w sub_204f1a
	bra.s loc_204e66
loc_204e5e:
	bsr.w sub_204ef6
	bra.s loc_204e66
	dc.b $4e,$75
loc_204e66:
	move.w $14(a0),d0
	beq.s loc_204e88
	bmi.s loc_204e7c
	sub.w d5,d0
	bcc.s loc_204e76
	move.w #$0,d0
loc_204e76:
	move.w d0,$14(a0)
	bra.s loc_204e88
loc_204e7c:
	add.w d5,d0
	bcc.s loc_204e84
	move.w #$0,d0
loc_204e84:
	move.w d0,$14(a0)
loc_204e88:
	tst.w $14(a0)
	bne.s loc_204ec0
loc_204e8e:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204eaa
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204eba
loc_204eaa:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204eba:
	move.b #$5,$1c(a0)
loc_204ec0:
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204ee4
	move.w #$1000,d1
loc_204ee4:
	cmpi.w #$f000,d1
	bge.s loc_204eee
	move.w #$f000,d1
loc_204eee:
	move.w d1,$10(a0)
	bra.w loc_204c2c

sub_204ef6:
	move.w $14(a0),d0
	beq.s loc_204efe
	bpl.s loc_204f0c
loc_204efe:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f0c:
	sub.w d4,d0
	bcc.s loc_204f14
	move.w #$ff80,d0
loc_204f14:
	move.w d0,$14(a0)
	rts

sub_204f1a:
	move.w $14(a0),d0
	bmi.s loc_204f2e
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204f2e:
	add.w d4,d0
	bcc.s loc_204f36
	move.w #$80,d0
loc_204f36:
	move.w d0,$14(a0)
	rts

sub_204f3c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204f6a
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204f62
	cmpi.w #$840,$8(a0)
	bcs.s loc_204f9a
loc_204f62:
	btst.b #$1,$2c(a0)
	bne.s loc_204f9a
loc_204f6a:
	btst.b #$2,($f602).w
	beq.s loc_204f84
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204f84
	move.w d1,d0
loc_204f84:
	btst.b #$3,($f602).w
	beq.s loc_204f9a
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204f9a
	move.w d6,d0
loc_204f9a:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204fb0
	bcc.s loc_204fac
	addq.w #$4,($f73e).w
loc_204fac:
	subq.w #$2,($f73e).w
loc_204fb0:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204fde
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204fde
	bmi.s loc_204fd2
	sub.w d1,d0
	bcc.s loc_204fcc
	move.w #$0,d0
loc_204fcc:
	move.w d0,$10(a0)
	rts
loc_204fd2:
	sub.w d1,d0
	bcs.s loc_204fda
	move.w #$0,d0
loc_204fda:
	move.w d0,$10(a0)
loc_204fde:
	rts
	.incbin 20448, 48

sub_205010:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_205064
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_20503e
	addi.w #$38,d0
loc_20503e:
	cmp.w d1,d0
	bls.s loc_205064
loc_205042:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_205052
	rts
loc_205052:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207120
	move.b #$6,$24(a0)
	rts
loc_205064:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_205042

sub_20507c:
	tst.b ($f7ca).w
	bne.s loc_2050a2
	move.w $14(a0),d0
	bpl.s loc_20508a
	neg.w d0
loc_20508a:
	cmpi.w #$80,d0
	bcs.s loc_2050a2
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2050a2
	btst.b #$1,($f602).w
	bne.s sub_2050a4
loc_2050a2:
	rts

sub_2050a4:
	btst.b #$2,$22(a0)
	beq.s loc_2050ae
	rts
loc_2050ae:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050ca
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2050da
loc_2050ca:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2050da:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_2050ec
	move.w #$200,$14(a0)
loc_2050ec:
	rts

sub_2050ee:
	tst.b $2a(a0)
	beq.s loc_2050f6
	rts
loc_2050f6:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_205108
	tst.w $14(a0)
	beq.w loc_2051ca
loc_205108:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2051ca
	btst.b #$3,$22(a0)
	beq.s loc_205124
	jsr (sub_205dae).l
	beq.s loc_205154
loc_205124:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206b06
	cmpi.w #$6,d1
	blt.w loc_2051ca
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_20514a
	move.w #$380,d2
loc_20514a:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_205154:
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
	bne.s loc_2051cc
	tst.b ($ff195b).l
	beq.s loc_2051ae
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2051be
loc_2051ae:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2051be:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_2051ca:
	rts
loc_2051cc:
	bset.b #$4,$22(a0)
	rts

sub_2051d4:
	tst.b $3c(a0)
	beq.s loc_205206
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_2051ea
	move.w #$fe00,d1
loc_2051ea:
	cmp.w $12(a0),d1
	ble.s loc_205204
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205204
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205204:
	rts
loc_205206:
	rts

sub_205208:
	tst.b $2a(a0)
	bne.s loc_205242
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205242
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205242
	bmi.s loc_20523e
	tst.w d0
	beq.s loc_20523c
	add.w d0,$14(a0)
loc_20523c:
	rts
loc_20523e:
	add.w d0,$14(a0)
loc_205242:
	rts

sub_205244:
	tst.b $2a(a0)
	bne.s loc_205284
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205284
	move.b $26(a0),d0
	jsr (sub_2007fe).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_20527a
	tst.w d0
	bpl.s loc_205274
	asr.l #$2,d0
loc_205274:
	add.w d0,$14(a0)
	rts
loc_20527a:
	tst.w d0
	bmi.s loc_205280
	asr.l #$2,d0
loc_205280:
	add.w d0,$14(a0)
loc_205284:
	rts

sub_205286:
	nop
	tst.b $38(a0)
	bne.s loc_2052c0
	tst.w $3e(a0)
	bne.s loc_2052c2
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2052c0
	move.w $14(a0),d0
	bpl.s loc_2052aa
	neg.w d0
loc_2052aa:
	cmpi.w #$280,d0
	bcc.s loc_2052c0
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2052c0:
	rts
loc_2052c2:
	subq.w #$1,$3e(a0)
	rts

sub_2052c8:
	btst.b #$1,$2c(a0)
	bne.s loc_2052ea
	move.b $26(a0),d0
	beq.s loc_2052ea
	bpl.s loc_2052e0
	addq.b #$2,d0
	bcc.s loc_2052de
	moveq #$0,d0
loc_2052de:
	bra.s loc_2052e6
loc_2052e0:
	subq.b #$2,d0
	bcc.s loc_2052e6
	moveq #$0,d0
loc_2052e6:
	move.b d0,$26(a0)
loc_2052ea:
	rts

sub_2052ec:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a96).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2053d0
	cmpi.b #$80,d0
	beq.w loc_205432
	cmpi.b #$c0,d0
	beq.w loc_20548e
	bsr.w sub_206e1c
	tst.w d1
	bpl.s loc_20533e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20533e:
	bsr.w sub_206c7e
	tst.w d1
	bpl.s loc_205350
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205350:
	bsr.w sub_206b2e
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2053ce
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20536e
	cmp.b d2,d0
	blt.s loc_2053ce
loc_20536e:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2054f0
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2053ac
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20539e
	asr.w $12(a0)
	bra.s loc_2053c0
loc_20539e:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2053ac:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2053c0
	move.w #$fc0,$12(a0)
loc_2053c0:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2053ce
	neg.w $14(a0)
loc_2053ce:
	rts
loc_2053d0:
	bsr.w sub_206e1c
	tst.w d1
	bpl.s loc_2053ea
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053ea:
	bsr.w sub_206cd6
	tst.w d1
	bpl.s loc_205404
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205402
	move.w #$0,$12(a0)
loc_205402:
	rts
loc_205404:
	tst.w $12(a0)
	bmi.s loc_205430
	bsr.w sub_206b2e
	tst.w d1
	bpl.s loc_205430
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2054f0
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205430:
	rts
loc_205432:
	bsr.w sub_206e1c
	tst.w d1
	bpl.s loc_205444
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205444:
	bsr.w sub_206c7e
	tst.w d1
	bpl.s loc_205456
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205456:
	bsr.w sub_206cd6
	tst.w d1
	bpl.s loc_20548c
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205476
	move.w #$0,$12(a0)
	rts
loc_205476:
	move.b d3,$26(a0)
	bsr.w sub_205554
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20548c
	neg.w $14(a0)
loc_20548c:
	rts
loc_20548e:
	bsr.w sub_206c7e
	tst.w d1
	bpl.s loc_2054a8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2054a8:
	bsr.w sub_206cd6
	tst.w d1
	bpl.s loc_2054c2
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2054c0
	move.w #$0,$12(a0)
loc_2054c0:
	rts
loc_2054c2:
	tst.w $12(a0)
	bmi.s loc_2054ee
	bsr.w sub_206b2e
	tst.w d1
	bpl.s loc_2054ee
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2054f0
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2054ee:
	rts

sub_2054f0:
	btst.b #$4,$22(a0)
	beq.s loc_2054fa
	nop
loc_2054fa:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205546
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205530
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205540
loc_205530:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205540:
	move.b #$0,$1c(a0)
loc_205546:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205554:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_20387e).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20558e
	subi.w #$20,$12(a0)
loc_20558e:
	bsr.w sub_2055a4
	bsr.w sub_205010
	bsr.w sub_20445a
	bsr.w sub_205814
	jmp (sub_2038d4).l

sub_2055a4:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_207120
	bsr.w sub_2052ec
	btst.b #$1,$22(a0)
	bne.s loc_2055de
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2055de:
	rts
	.incbin 21984, 248

sub_2056d8:
	rts
	.incbin 22234, 314

sub_205814:
	lea (dat_205b04).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205836
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205836:
	bsr.w sub_205aa6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2058ae
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20587c
	move.b d0,$1e(a0)

sub_205860:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205874
	bpl.s loc_205874
	cmpi.b #$fd,d0
	bge.s loc_20587e
loc_205874:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20587c:
	rts
loc_20587e:
	addq.b #$1,d0
	bne.s loc_20588e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205874
loc_20588e:
	addq.b #$1,d0
	bne.s loc_2058a2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205874
loc_2058a2:
	addq.b #$1,d0
	bne.s loc_2058ac
	move.b $2(a1,d1.w),$1c(a0)
loc_2058ac:
	rts
loc_2058ae:
	subq.b #$1,$1e(a0)
	bpl.s loc_20587c
	addq.b #$1,d0
	bne.w loc_205968
	tst.b ($ff195b).l
	bne.w loc_205a30
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058d6
	not.b d0
loc_2058d6:
	btst.b #$1,$2c(a0)
	bne.s loc_2058e4
	addi.b #$10,d0
	bra.s loc_2058e6
loc_2058e4:
	addq.b #$8,d0
loc_2058e6:
	bpl.s loc_2058ea
	moveq #$3,d1
loc_2058ea:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2059dc
	move.w $14(a0),d2
	bpl.s loc_205908
	neg.w d2
loc_205908:
	btst.b #$1,$2c(a0)
	beq.s loc_205920
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205d06).l,a1
	bra.s loc_20594a
loc_205920:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205ce0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20594a
	lea (dat_205b84).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20594a
	lea (dat_205b7c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20594a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205958
	moveq #$0,d2
loc_205958:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205860
	add.b d3,$1a(a0)
	rts
loc_205968:
	addq.b #$1,d0
	bne.s loc_2059d8
	move.w $14(a0),d2
	bpl.s loc_205974
	neg.w d2
loc_205974:
	lea (dat_205c62).l,a1
	tst.b ($ff195b).l
	bne.s loc_2059b2
	lea (dat_205b94).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2059a6
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2059b2
	lea (dat_205d0e).l,a1
	bra.s loc_2059b2
loc_2059a6:
	cmpi.w #$600,d2
	bcc.s loc_2059b2
	lea (dat_205b8c).l,a1
loc_2059b2:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2059bc
	moveq #$0,d2
loc_2059bc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205860
loc_2059d8:
	addq.b #$1,d0
	bne.s loc_205a1c
loc_2059dc:
	move.w $14(a0),d2
	bmi.s loc_2059e4
	neg.w d2
loc_2059e4:
	addi.w #$800,d2
	bpl.s loc_2059ec
	moveq #$0,d2
loc_2059ec:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205c74).l,a1
	tst.b ($ff195b).l
	bne.s loc_205a06
	lea (dat_205b9c).l,a1
loc_205a06:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205860
loc_205a1c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205a30:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205a42
	not.b d0
loc_205a42:
	addi.b #$10,d0
	bpl.s loc_205a4a
	moveq #$0,d1
loc_205a4a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205a78
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205968
loc_205a78:
	move.w $14(a0),d2
	bpl.s loc_205a80
	neg.w d2
loc_205a80:
	lea (dat_205c5c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205a92
	lea (dat_205c56).l,a1
loc_205a92:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a9c
	moveq #$0,d2
loc_205a9c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205860

sub_205aa6:
	tst.b ($ff195b).l
	beq.s loc_205ab2
	move.b dat_205ab4(pc,d0.w),d0
loc_205ab2:
	rts
dat_205ab4:
	.incbin 23220, 80
dat_205b04:
	.incbin 23300, 120
dat_205b7c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b84:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b8c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205b94:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b9c:
	.incbin 23452, 186
dat_205c56:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205c5c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205c62:
	.incbin 23650, 18
dat_205c74:
	.incbin 23668, 108
dat_205ce0:
	.incbin 23776, 38
dat_205d06:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205d0e:
	.incbin 23822, 60

sub_205d4a:
	tst.b (a0)
	beq.w loc_205dac
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205dac
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205dac
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205d7e:
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
loc_205d98:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205d98
	dbf d1,loc_205d7e
loc_205dac:
	rts

sub_205dae:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205e18
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
	bne.s loc_205e06
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205e06:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205e18:
	rts
loc_205e1a:
	move.w #$e,d0

sub_205e1e:
	cmpi.w #$67,d0
	bne.s loc_205e2c
	move.b #$1,($ff1958).l
loc_205e2c:
	move.w d0,($a12010).l
loc_205e32:
	move.w ($a12020).l,d0
	beq.s loc_205e32
	cmp.w ($a12020).l,d0
	bne.s loc_205e32
	move.w #$0,($a12010).l
loc_205e4a:
	move.w ($a12020).l,d0
	bne.s loc_205e4a
	move.w ($a12020).l,d0
	bne.s loc_205e4a
	rts
	dc.b $00,$00

sub_205e5e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205e7a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205e7a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205eba
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ebc
loc_205e96:
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
loc_205eba:
	rts
loc_205ebc:
	addq.b #$1,d0
	bne.s loc_205ecc
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e96
loc_205ecc:
	addq.b #$1,d0
	bne.s loc_205ee0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e96
loc_205ee0:
	addq.b #$1,d0
	bne.s loc_205eea
	move.b $2(a1,d1.w),$1c(a0)
loc_205eea:
	addq.b #$1,d0
	bne.s loc_205ef2
	addq.b #$2,$24(a0)
loc_205ef2:
	addq.b #$1,d0
	bne.s loc_205f00
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205f00:
	addq.b #$1,d0
	bne.s loc_205f08
	addq.b #$2,$25(a0)
loc_205f08:
	rts
	.incbin 24330, 202
	addq.b #$2,$24(a0)
	move.l #$23ac42,$4(a0)
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_206012
	move.b #$1,$2e(a0)
	bra.s loc_206018
loc_206012:
	move.b #$e3,$20(a0)
loc_206018:
	jsr (sub_2078f8).l
	bne.s loc_20608a
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_206034
	addq.b #$2,$24(a1)
loc_206034:
	move.l #$23ac42,$4(a1)
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
loc_20608a:
	jmp (sub_203980).l
	.incbin 24720, 264

sub_206198:
	tst.b $25(a0)
	bne.s loc_2061c8
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2078f8).l
	bne.s loc_2061c8
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_2061c8:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061d8(pc,d0.w),d0
	jmp dat_2061d8(pc,d0.w)
dat_2061d8:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_206200
	andi.b #$7f,$2(a0)
loc_206200:
	move.l #$23aaaa,$4(a0)
	bsr.s sub_206198
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_20622e
	move.w #$100,$1c(a0)
loc_20622e:
	lea (dat_23aa96).l,a1
	bsr.w sub_205e5e
	jmp (sub_2038d4).l
	tst.b $25(a0)
	beq.s loc_20624a
	jmp (sub_203980).l
loc_20624a:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20626c(pc,d0.w),d0
	jsr dat_20626c(pc,d0.w)
	jmp (sub_2038d4).l
dat_20626c:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_20629a
	andi.b #$7f,$2(a0)
loc_20629a:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_2062c0
	bsr.w sub_20632c
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206322
loc_2062c0:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206bdc).l
	tst.w d1
	bpl.s loc_20631e
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_206308
	bsr.w sub_20632c
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206352
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_206308:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206322
loc_20631e:
	addq.w #$2,$c(a0)
loc_206322:
	lea (dat_2336bc).l,a1
	bra.w sub_205e5e

sub_20632c:
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

sub_206352:
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
	bra.s loc_206322
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206322
	.incbin 25486, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$23aa7e,$4(a0)
	move.w #$3e4,$2(a0)
	tst.b ($ff152e).l
	bne.s loc_2063c8
	move.w #$39e,$2(a0)
loc_2063c8:
	move.b #$1,$18(a0)
	lea (dat_23aa76).l,a1
	bsr.w sub_205e5e
	jmp (sub_2038d4).l
	.incbin 25566, 756

sub_2066d2:
	bclr.b #$7,($ff156b).l
	beq.s loc_206720
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206722(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2066f6:
	move.l (a1)+,(a2)+
	dbf d0,loc_2066f6
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206720:
	rts
dat_206722:
	.incbin 26402, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206758(pc,d0.w),d0
	jsr dat_206758(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206752
	jsr (sub_2038d4).l
loc_206752:
	jmp (loc_20792e).l
dat_206758:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23a8be,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20683a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20683a
	bsr.w sub_20689e
	beq.w loc_20683a
	tst.b $28(a0)
	bne.s loc_2067ec
	move.w $10(a1),d0
	bpl.s loc_2067ac
	neg.w d0
loc_2067ac:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2067be
	move.w #$d00,d1
loc_2067be:
	cmp.w d1,d0
	bcc.s loc_2067c4
	move.w d1,d0
loc_2067c4:
	tst.w $10(a1)
	bpl.s loc_2067cc
	neg.w d0
loc_2067cc:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20681c
	neg.w $14(a1)
	bra.s loc_20681c
loc_2067ec:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20683c
	move.w $12(a1),d0
	bpl.s loc_2067fc
	neg.w d0
loc_2067fc:
	cmpi.w #$d00,d0
	bcc.s loc_206806
	move.w #$d00,d0
loc_206806:
	tst.w $12(a1)
	bpl.s loc_20680e
	neg.w d0
loc_20680e:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20681c:
	bset.b #$2,$22(a1)
	bne.s loc_20683a
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20683a:
	rts
loc_20683c:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206888
	cmpi.b #$2,$28(a0)
	bne.s loc_206858
	tst.w $12(a1)
	bpl.s loc_20681c
	bra.s loc_20685e
loc_206858:
	tst.w $12(a1)
	bmi.s loc_20681c
loc_20685e:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206870
	btst.l #$2,d1
	beq.s loc_20681c
	neg.w d0
loc_206870:
	cmpi.b #$2,$28(a0)
	beq.s loc_20687e
	bset.b #$1,$22(a1)
loc_20687e:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20681c
loc_206888:
	tst.w $10(a1)
	bmi.s loc_20681c
	btst.l #$0,d1
	beq.w loc_20681c
	move.w #$f600,d0
	bra.w loc_20680e

sub_20689e:
	tst.b ($ff1906).l
	bne.s loc_2068d2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2068d2
	cmpi.w #$50,d0
	bcc.s loc_2068d2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2068d2
	cmpi.w #$50,d0
	bcc.s loc_2068d2
	moveq #$1,d0
	rts
loc_2068d2:
	moveq #$0,d0
	rts
loc_2068d6:
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
	bne.s loc_206990
	move.b ($ff1593).l,($ff195b).l
loc_206990:
	tst.b ($ff1522).l
	bpl.s loc_2069a6
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2069a6:
	rts

sub_2069a8:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2068d6
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
	bne.s loc_206a62
	move.b ($ff1591).l,($ff195b).l
loc_206a62:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206a84
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206a84:
	tst.b ($ff1522).l
	bpl.s loc_206a9a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206a9a:
	rts

sub_206a9c:
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
	bpl.s loc_206ad8
	move.b d1,d0
	bpl.s loc_206ad2
	subq.b #$1,d0
loc_206ad2:
	addi.b #$20,d0
	bra.s loc_206ae2
loc_206ad8:
	move.b d1,d0
	bpl.s loc_206ade
	addq.b #$1,d0
loc_206ade:
	addi.b #$1f,d0
loc_206ae2:
	andi.b #$c0,d0
	beq.w loc_206bb2
	cmpi.b #$80,d0
	beq.w loc_206d4e
	andi.b #$38,d1
	bne.s loc_206afa
	addq.w #$8,d2
loc_206afa:
	cmpi.b #$40,d0
	beq.w loc_206e24
	bra.w loc_206c86

sub_206b06:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206dac
	cmpi.b #$80,d0
	beq.w sub_206cd6
	cmpi.b #$c0,d0
	beq.w loc_206c16

sub_206b2e:
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
loc_206b92:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206ba0
	move.b ($f768).w,d3
	exg d0,d1
loc_206ba0:
	btst.l #$0,d3
	beq.s loc_206ba8
	move.b d2,d3
loc_206ba8:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206bb2:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201154).l
	move.b #$0,d2
loc_206bce:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bda
	move.b d2,d3
loc_206bda:
	rts

sub_206bdc:
	move.w $8(a0),d3

sub_206be0:
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
	beq.s loc_206c14
	move.b #$0,d3
loc_206c14:
	rts
loc_206c16:
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
	bra.w loc_206b92

sub_206c7e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c86:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b #$c0,d2
	bra.w loc_206bce
loc_206ca6:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206cd4
	move.b #$c0,d3
loc_206cd4:
	rts

sub_206cd6:
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
	bra.w loc_206b92

sub_206d46:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d4e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201154).l
	move.b #$80,d2
	bra.w loc_206bce

sub_206d72:
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
	beq.s loc_206daa
	move.b #$80,d3
loc_206daa:
	rts
loc_206dac:
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
	bra.w loc_206b92

sub_206e1c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e24:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012c4).l
	move.b #$40,d2
	bra.w loc_206bce
loc_206e48:
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
	beq.s loc_206e76
	move.b #$40,d3
loc_206e76:
	rts

sub_206e78:
	btst.b #$6,$2c(a0)
	beq.s loc_206e84
	moveq #$0,d0
	rts
loc_206e84:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ea8
	addi.w #$c,d3
	moveq #$a,d5
loc_206ea8:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206eb6:
	tst.b $1(a1)
	bpl.s loc_206ec2
	move.b $20(a1),d0
	bne.s loc_206ece
loc_206ec2:
	lea $40(a1),a1
	dbf d6,loc_206eb6
	moveq #$0,d0
	rts
loc_206ece:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207256).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206ef6
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206efc
	bra.w loc_206ec2
loc_206ef6:
	cmp.w d4,d0
	bhi.w loc_206ec2
loc_206efc:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206f14
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206f1a
	bra.w loc_206ec2
loc_206f14:
	cmp.w d5,d0
	bhi.w loc_206ec2
loc_206f1a:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206f8e
	cmpi.b #$c0,d1
	beq.w loc_207178
	tst.b d1
	bmi.w sub_207058
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206f52
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206f50
	addq.b #$2,$24(a1)
loc_206f50:
	rts
loc_206f52:
	tst.w $12(a0)
	bpl.s loc_206f7c
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f8c
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f8c
	addq.b #$4,$25(a1)
	rts
loc_206f7c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f8c
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f8c:
	rts

sub_206f8e:
	tst.b ($ff1521).l
	bne.s loc_206fa8
	tst.b ($ff151f).l
	bne.s loc_206fa8
	cmpi.b #$2,$1c(a0)
	bne.w sub_207058
loc_206fa8:
	tst.b $21(a1)
	beq.s loc_206fd2
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206fd0
	bset.b #$7,$22(a1)
loc_206fd0:
	rts
loc_206fd2:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206fea
	moveq #$6,d0
loc_206fea:
	move.w d0,$3e(a1)
	move.w dat_20704a(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207004
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207004:
	bsr.w sub_20b1ea
	move.w #$96,d0
	jsr (sub_2022fa).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_20703a
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207042
	neg.w $12(a0)
	rts
loc_20703a:
	addi.w #$100,$12(a0)
	rts
loc_207042:
	subi.w #$100,$12(a0)
	rts
dat_20704a:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207058:
	tst.b ($ff1521).l
	bne.s loc_207068
	tst.b ($ff151f).l
	beq.s loc_20706c
loc_207068:
	moveq #$ffffffff,d0
	rts
loc_20706c:
	nop
	tst.w $30(a0)
	bne.s loc_207068
	movea.l a1,a2
loc_207076:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_2070b0
	tst.w ($ff1512).l
	beq.w loc_207116
	jsr (sub_2078f8).l
	bne.s loc_2070b0
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_2070b0:
	bclr.b #$0,($ff151e).l
	bne.s loc_2070c2
	move.b #$0,($ff156f).l
loc_2070c2:
	move.b #$4,$24(a0)
	bsr.w sub_2054f0
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2070f2
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2070f2:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207100
	neg.w $10(a0)
loc_207100:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207116:
	tst.w ($ff1588).l
	bne.w loc_2070b0

sub_207120:
	tst.w ($ff1906).l
	bne.s loc_207174
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2054f0
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
loc_207174:
	moveq #$ffffffff,d0
	rts
loc_207178:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207200
	cmpi.b #$23,d1
	beq.w loc_207200
	cmpi.b #$38,d1
	beq.w loc_207248
	cmpi.b #$3a,d1
	beq.w loc_207248
	cmpi.b #$3b,d1
	beq.w loc_207248
	tst.b ($f7aa).w
	beq.w loc_2071fe
	cmpi.b #$1,($f7aa).w
	beq.s loc_2071c8
	cmpi.b #$4,($f7aa).w
	beq.s loc_2071ea
	cmpi.b #$5,($f7aa).w
	beq.s loc_2071f8
loc_2071c8:
	cmpi.b #$3c,d1
	blt.s loc_2071fe
	cmpi.b #$3f,d1
	bgt.s loc_2071fe
	bsr.w sub_206f8e
	tst.b $20(a1)
	bne.s loc_2071e2
	addq.b #$3,$21(a1)
loc_2071e2:
	clr.b $20(a1)
	bra.w loc_207200
loc_2071ea:
	cmpi.b #$3f,d1
	beq.s loc_20720c
	cmpi.b #$3e,d1
	beq.s loc_207206
	bra.s loc_2071fe
loc_2071f8:
	cmpi.b #$3d,d1
	beq.s loc_207206
loc_2071fe:
	rts
loc_207200:
	addq.b #$1,$21(a1)
	rts
loc_207206:
	bsr.w sub_207058
	bra.s loc_207200
loc_20720c:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207246
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207246
	neg.w $10(a0)
loc_207246:
	rts
loc_207248:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207254
	addq.b #$1,$21(a1)
loc_207254:
	rts
dat_207256:
	.incbin 29270, 126
loc_2072d4:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2072ea
	move.l #$4000,(dat_207464).l
	bra.s loc_20730a
loc_2072ea:
	addi.l #$2000,(dat_207464).l
	cmpi.l #$80000,(dat_207464).l
	bls.s loc_20730a
	move.l #$80000,(dat_207464).l
loc_20730a:
	move.l (dat_207464).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20731c
	sub.l d0,$c(a0)
loc_20731c:
	btst.b #$1,($f604).w
	beq.s loc_207328
	add.l d0,$c(a0)
loc_207328:
	btst.b #$2,($f604).w
	beq.s loc_207334
	sub.l d0,$8(a0)
loc_207334:
	btst.b #$3,($f604).w
	beq.s loc_207340
	add.l d0,$8(a0)
loc_207340:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f6c).l
	move.w (a1),($ff194e).l
	lea (dat_207468).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207382
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20737c
	move.b #$0,d1
loc_20737c:
	move.b d1,($ff1904).l
loc_207382:
	btst.b #$7,($f605).w
	beq.s loc_2073a2
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20739c
	add.b (a2),d1
loc_20739c:
	move.b d1,($ff1904).l
loc_2073a2:
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
	beq.s loc_20742e
	bsr.w sub_2078f8
	bne.s loc_20742e
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
loc_20742e:
	btst.b #$4,($f605).w
	beq.s loc_20745e
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20745e:
	jmp (sub_2038d4).l
dat_207464:
	dc.b $00,$00,$40,$00
dat_207468:
	.incbin 29800, 638

sub_2076e6:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076f4:
	clr.l (a2)+
	dbf d0,loc_2076f4
	rts

sub_2076fc:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20770a(pc,d0.w),d0
	jmp dat_20770a(pc,d0.w)
dat_20770a:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2079aa).l,a0
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
	bcc.s loc_207748
	moveq #$0,d6
loc_207748:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207750:
	cmp.w (a0),d6
	bls.s loc_207762
	tst.b $4(a0)
	bpl.s loc_20775e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20775e:
	addq.w #$8,a0
	bra.s loc_207750
loc_207762:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207782
loc_207770:
	cmp.w (a0),d6
	bls.s loc_207782
	tst.b $4(a0)
	bpl.s loc_20777e
	addq.b #$1,$1(a2)
loc_20777e:
	addq.w #$8,a0
	bra.s loc_207770
loc_207782:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20786c
	bge.s loc_207812
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077ee
loc_2077bc:
	cmp.w -$8(a0),d6
	bge.s loc_2077ee
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077d2
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077d2:
	bsr.w sub_207890
	bne.s loc_2077dc
	subq.w #$8,a0
	bra.s loc_2077bc
loc_2077dc:
	tst.b $4(a0)
	bpl.s loc_2077ec
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077ec:
	addq.w #$8,a0
loc_2077ee:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077fa:
	cmp.w -$8(a0),d6
	bgt.s loc_20780c
	tst.b -$4(a0)
	bpl.s loc_207808
	subq.b #$1,(a2)
loc_207808:
	subq.w #$8,a0
	bra.s loc_2077fa
loc_20780c:
	move.l a0,($f770).w
	rts
loc_207812:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207826:
	cmp.w (a0),d6
	bls.s loc_207848
	tst.b $4(a0)
	bpl.s loc_207834
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207834:
	bsr.w sub_207890
	beq.s loc_207826
	tst.b $4(a0)
	bpl.s loc_207848
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207848:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207868
loc_207856:
	cmp.w (a0),d6
	bls.s loc_207868
	tst.b $4(a0)
	bpl.s loc_207864
	addq.b #$1,$1(a2)
loc_207864:
	addq.w #$8,a0
	bra.s loc_207856
loc_207868:
	move.l a0,($f774).w
loc_20786c:
	rts

sub_20786e:
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

sub_207890:
	bsr.s sub_20786e
	beq.s loc_2078a2
	tst.b $4(a0)
	bpl.s loc_2078a8
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078a8
loc_2078a2:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078a8:
	bsr.w sub_2078f8
	bne.s loc_2078f6
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
	bpl.s loc_2078d8
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078d8:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078ea
	nop
	nop
	nop
	nop
loc_2078ea:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078f6:
	rts

sub_2078f8:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207900:
	tst.b (a1)
	beq.s loc_20790c
	lea $40(a1),a1
	dbf d0,loc_207900
loc_20790c:
	rts

sub_20790e:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20792c
loc_207920:
	tst.b (a1)
	beq.s loc_20792c
	lea $40(a1),a1
	dbf d0,loc_207920
loc_20792c:
	rts
loc_20792e:
	move.w $8(a0),d0
loc_207932:
	tst.b $1(a0)
	bmi.s loc_20799c
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20799c
loc_207950:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207992
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20798a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207982
	moveq #$0,d1
	bra.s loc_20798a
loc_207982:
	cmpi.w #$3,d1
	bcs.s loc_20798a
	moveq #$2,d1
loc_20798a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207992:
	jsr (sub_203980).l
	moveq #$1,d0
	rts
loc_20799c:
	btst.b #$7,($ff152e).l
	bne.s loc_207950
	moveq #$0,d0
	rts
dat_2079aa:
	.incbin 31146, 3976
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20894c(pc,d0.w),d0
	jsr dat_20894c(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20894c:
	dc.b $00,$0e,$00,$2c,$00,$7c,$00,$8c
	dc.b $00,$9c,$00,$e2,$01,$72
	ori.b #$4,$1(a0)
	move.w #$310,$2(a0)
	move.l #$208d6c,$4(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $2a(a0)
	beq.s loc_2089c6
	subq.b #$1,$2a(a0)
	bne.s loc_2089c6
	jsr (sub_2078f8).l
	bne.s loc_2089c6
	move.l a0,$2a(a1)
	move.b #$5,$0(a1)
	move.b #$3,$18(a1)
	ori.b #$4,$1(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addi.w #$24,$c(a1)
	move.b #$4,$24(a1)
loc_2089c6:
	rts
	bsr.w sub_208c78
	lea (dat_208cf0).l,a1
	jmp (sub_205e5e).l
	movea.l $2a(a0),a1
	move.b #$78,$2a(a1)
	jmp (sub_203980).l
	.incbin 35304, 560
loc_208c18:
	movea.l a1,a2
	jsr (sub_2078f8).l
	bne.s loc_208c76
	bset.b #$0,$2c(a2)
	bset.b #$6,$2c(a2)
	move.l a2,$2a(a1)
	move.b #$5,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$208d6c,$4(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$18,$16(a1)
	move.b #$8,$1a(a1)
	move.b #$8,$24(a1)
loc_208c76:
	rts

sub_208c78:
	cmpi.b #$1,$1c(a0)
	bne.s loc_208c90
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208c90
	bsr.s sub_208c92
	bne.s loc_208c18
loc_208c90:
	rts

sub_208c92:
	tst.b ($ff151f).l
	bne.s loc_208cec
	tst.b ($ff1521).l
	bne.s loc_208cec
	cmpi.b #$4,$24(a1)
	bcc.s loc_208cec
	tst.b $2c(a1)
	bne.s loc_208cec
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_208cec
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208cec
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_208cec
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208cec
	moveq #$1,d0
	rts
loc_208cec:
	moveq #$0,d0
	rts
dat_208cf0:
	.incbin 36080, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e44(pc,d0.w),d0
	jsr dat_208e44(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_208e44:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$208fd8,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_20790e).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$208fd8,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_2097ec).l
	beq.s loc_208ee8
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208ee8:
	rts
	.incbin 36586, 190
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_208fd6
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (sub_2097f2).l
loc_208fd6:
	rts
	.incbin 36824, 32
	btst.b #$7,($ff152e).l
	beq.s loc_209042
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_209042
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
	bpl.s loc_209032
	moveq #$0,d1
	bra.s loc_20903a
loc_209032:
	cmpi.w #$3,d1
	bcs.s loc_20903a
	moveq #$2,d1
loc_20903a:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_209042:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_209072
	cmpi.b #$6,$24(a6)
	bcc.s loc_209072
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209074(pc,d0.w),d1
	jsr dat_209074(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_209072
	jmp (loc_20792e).l
loc_209072:
	rts
dat_209074:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$23a8be,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_20930a(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_20918a
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_20918a
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_20918a
	tst.b $2c(a6)
	bne.w loc_20918a
	cmpi.b #$4,$24(a6)
	bne.s loc_209112
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_209112:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_209128
	bset.b #$6,$2c(a6)
loc_209128:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_209146
	bset.b #$6,$1(a6)
loc_209146:
	cmpi.b #$4,$24(a6)
	bne.s loc_209152
	subq.b #$2,$24(a6)
loc_209152:
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
loc_20918a:
	rts
	move.b #$2,$1c(a6)
	bsr.w sub_209262
	addq.b #$2,$24(a0)
	move.w #$91,d0
	jsr (sub_2022fa).l
	rts
	move.b #$2,$1c(a6)
	addq.l #$4,a7
	subq.b #$1,$2e(a0)
	bpl.s loc_2091f6
	move.w $36(a0),d0
	add.w $8(a0),d0
	move.w d0,$8(a6)
	move.w $38(a0),d0
	add.w $c(a0),d0
	move.w d0,$c(a6)
	moveq #$0,d1
	move.b $3a(a0),d1
	addq.b #$6,d1
	cmp.b $3b(a0),d1
	bcs.s loc_2091de
	moveq #$0,d1
	bra.s loc_20924c
loc_2091de:
	move.b d1,$3a(a0)
loc_2091e2:
	movea.l $3c(a0),a2
	move.w $0(a2,d1.w),$36(a0)
	move.w $2(a2,d1.w),$38(a0)
	bra.w sub_209262
loc_2091f6:
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
	moveq #$0,d1
	move.b $3a(a0),d1
	movea.l $3c(a0),a2
	move.w $4(a2,d1.w),d1
	bmi.s loc_20922c
loc_20922a:
	rts
loc_20922c:
	move.b ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_20922a
	andi.w #$7fff,d1
	add.b d1,d1
	move.b d1,d0
	add.b d0,d0
	add.b d0,d1
	add.b $3b(a0),d1
	move.b d1,$3a(a0)
	bra.s loc_2091e2
loc_20924c:
	andi.w #$7ff,$c(a6)
	clr.b $24(a0)
	clr.b $2c(a6)
	move.w #$2,$24(a0)
	rts

sub_209262:
	moveq #$0,d0
	move.w $14(a6),d2
	move.w $14(a6),d3
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	bge.s loc_20927e
	neg.w d0
	neg.w d2
loc_20927e:
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	bge.s loc_209292
	neg.w d1
	neg.w d3
loc_209292:
	cmp.w d0,d1
	bcs.s loc_2092d0
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	swap d1
	divs.w d3,d1
	moveq #$0,d0
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	beq.s loc_2092bc
	swap d0
	divs.w d1,d0
loc_2092bc:
	move.w d0,$10(a6)
	move.w d3,$12(a6)
	tst.w d1
	bpl.s loc_2092ca
	neg.w d1
loc_2092ca:
	move.w d1,$2e(a0)
	rts
loc_2092d0:
	moveq #$0,d0
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	swap d0
	divs.w d2,d0
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	beq.s loc_2092f6
	swap d1
	divs.w d0,d1
loc_2092f6:
	move.w d1,$12(a6)
	move.w d2,$10(a6)
	tst.w d0
	bpl.s loc_209304
	neg.w d0
loc_209304:
	move.w d0,$2e(a0)
	rts
dat_20930a:
	.incbin 37642, 922

sub_2096a4:
	btst.b #$3,$22(a0)
	beq.s loc_209714
	btst.b #$3,$22(a1)
	beq.s loc_209714
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_209714
	tst.b $2a(a1)
	beq.s loc_2096d6
	move.w #$ab,d0
	jsr (sub_2022fa).l
loc_2096d6:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_209702
	cmpi.b #$17,$1c(a1)
	beq.s loc_209702
	bclr.b #$0,$2c(a1)
loc_209702:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209714
	bclr.b #$1,$22(a1)
loc_209714:
	rts

sub_209716:
	cmpi.b #$4,$24(a1)
	bne.s loc_209728
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209728:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_209788
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20974a
	bclr.b #$3,$22(a0)
	bra.w sub_2096a4
loc_20974a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_209788
	tst.b ($ff195b).l
	beq.s loc_209772
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_209782
loc_209772:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_209782:
	move.b #$0,$1c(a1)
loc_209788:
	bset.b #$3,$22(a1)
	beq.s loc_2097aa
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2097e2
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2097aa:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2097d6
	cmpi.b #$2,$24(a0)
	beq.s loc_2097dc
loc_2097d6:
	move.w $10(a1),$14(a1)
loc_2097dc:
	bclr.b #$1,$22(a1)
loc_2097e2:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2097ec:
	move.b #$1,$25(a0)

sub_2097f2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209aa6
	btst.b #$6,$2c(a1)
	bne.w loc_209aa6
	cmpi.b #$6,$24(a1)
	bcc.w loc_209aa6
	tst.b $0(a1)
	beq.w loc_209aa6
	tst.b $1(a0)
	bpl.w loc_209aa6
	tst.b ($ff1906).l
	bne.w loc_209aa6
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209aa6
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209aa6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209860
	btst.b #$3,$22(a0)
	bne.s loc_209872
	bra.w loc_209aa6
loc_209860:
	cmpi.b #$1,$25(a0)
	bne.s loc_209872
	tst.w $12(a1)
	beq.s loc_209872
	bmi.w loc_209aa6
loc_209872:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209aa6
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209aa6
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2098a8
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2098a8:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2098b6
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2098b6:
	cmp.w d4,d5
	bcs.w loc_20994a
	cmpi.b #$1,$25(a0)
	beq.w loc_209aa6
	cmpi.b #$a,$0(a0)
	bne.s loc_2098d8
	btst.b #$1,$22(a1)
	bne.w loc_209aa6
loc_2098d8:
	cmpi.b #$4,d5
	bls.w loc_209aa6
	bsr.w sub_209af6
	move.l d0,-(a7)
	bsr.w sub_2096a4
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_209902
	tst.w $10(a1)
	beq.s loc_209932
	bpl.s loc_20990a
	bra.s loc_209932
loc_209902:
	tst.w $10(a1)
	beq.s loc_209932
	bpl.s loc_209932
loc_20990a:
	bsr.w sub_209ab6
	btst.b #$1,$22(a1)
	bne.s loc_209928
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209928:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_209932:
	bsr.w sub_209b6c
	bsr.w sub_209ab6
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20994a:
	cmpi.b #$19,$0(a0)
	bne.s loc_20995c
	btst.b #$2,$22(a1)
	bne.w loc_209aa6
loc_20995c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209972
	bmi.w loc_209a42
loc_209972:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_209984
	tst.w $12(a1)
	beq.s loc_209984
	bmi.w loc_209aa6
loc_209984:
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
	beq.s loc_2099d0
	bpl.s loc_2099b0
	neg.b d0
loc_2099b0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a9c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2099d0
	tst.w $10(a0)
	bpl.s loc_2099cc
	neg.w d1
loc_2099cc:
	add.w d1,$8(a1)
loc_2099d0:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209a3a
	tst.w $12(a0)
	bmi.s loc_209a0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b2e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a0e
	add.w d1,$c(a1)
	bra.w loc_209aa6
loc_209a0e:
	tst.w $12(a0)
	bpl.s loc_209a3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d46).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a3a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207120).l
	movem.l (a7)+,a0-a1
	bra.s loc_209aa6
loc_209a3a:
	bsr.w sub_209716
	moveq #$1,d0
	rts
loc_209a42:
	cmpi.b #$1,$25(a0)
	beq.s loc_209aa6
	cmpi.b #$9,$0(a0)
	beq.s loc_209aa6
	cmpi.b #$a,$0(a0)
	bne.s loc_209a6c
	cmpi.b #$2,$25(a0)
	beq.s loc_209a8c
	btst.b #$1,$1(a0)
	bne.s loc_209a8c
	bra.s loc_209aa6
loc_209a6c:
	btst.b #$1,$22(a1)
	bne.s loc_209a8c
	tst.w $12(a0)
	beq.s loc_209a8c
	bmi.s loc_209a8c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207120).l
	movem.l (a7)+,a0-a1
loc_209a8c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209b6c
	bsr.w sub_2096a4
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209aa6:
	bsr.w sub_209b6c
	bsr.w sub_2096a4
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209ab6:
	tst.w $10(a0)
	beq.s loc_209af4
	cmpi.b #$a,$0(a0)
	beq.s loc_209af4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209ad0
	neg.b d0
loc_209ad0:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a9c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209af4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207120).l
	movem.l (a7)+,a0-a1
loc_209af4:
	rts

sub_209af6:
	cmpi.b #$a,$0(a0)
	bne.s loc_209b06
	move.b #$0,$20(a1)
	rts
loc_209b06:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209b5a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209b6a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209b28
	tst.w $10(a2)
	beq.s loc_209b6a
loc_209b28:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209b3a
	cmp.w $8(a2),d1
	bcs.s loc_209b6a
	bra.s loc_209b40
loc_209b3a:
	cmp.w $8(a2),d1
	bcc.s loc_209b6a
loc_209b40:
	cmpi.b #$15,$0(a0)
	beq.s loc_209b6a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207120).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209b5a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209b6a:
	rts

sub_209b6c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209b86
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209b86
	move.b #$0,$20(a1)
loc_209b86:
	rts
	.incbin 39816, 374
loc_209cfe:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d0c(pc,d0.w),d0
	jmp dat_209d0c(pc,d0.w)
dat_209d0c:
	.incbin 40204, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209cfe
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209d62
	tst.b $1(a0)
	bpl.s loc_209d6a
loc_209d62:
	move.w dat_209dbc(pc,d0.w),d1
	jsr dat_209dbc(pc,d1.w)
loc_209d6a:
	bsr.w sub_2038d4
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209d9c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209d9c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203980
	rts
dat_209dbc:
	.incbin 40380, 26
	addq.b #$2,$24(a0)
	move.l #$20a13e,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209e2c
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20a144,$4(a0)
	bra.s loc_209e6e
loc_209e2c:
	btst.l #$3,d0
	beq.s loc_209e5a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20a18e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ca02).l
	move.l (a7)+,d0
	bra.s loc_209e6e
loc_209e5a:
	btst.b #$1,$1(a0)
	beq.s loc_209e6e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209e6e:
	btst.l #$1,d0
	beq.s loc_209e7a
	bset.b #$5,$2(a0)
loc_209e7a:
	andi.w #$2,d0
	move.w dat_209e86(pc,d0.w),$30(a0)
	rts
dat_209e86:
	.incbin 40582, 118

sub_209efc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2097f2).l
	tst.b $1(a0)
	bpl.s loc_209f1e
	lea ($d000).w,a1
	bsr.s sub_209efc
	btst.b #$5,$22(a0)
	bne.s loc_209f20
loc_209f1e:
	rts
loc_209f20:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209f4e
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209f4e:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209f68
	move.b #$0,$1c(a1)
loc_209f68:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2022fa).l
	lea (dat_20a130).l,a1
	bra.w sub_205e5e
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 40862, 402
dat_20a130:
	.incbin 41264, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a22a(pc,d0.w),d1
	jmp dat_20a22a(pc,d1.w)
dat_20a22a:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20a234:
	.incbin 41524, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a28c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a284
	moveq #$0,d1
	bra.s loc_20a28c
loc_20a284:
	cmpi.w #$3,d1
	bcs.s loc_20a28c
	moveq #$2,d1
loc_20a28c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20a2a8
	moveq #$6,d1
loc_20a2a8:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20a234).l,a1
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
	beq.s loc_20a2f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a2f0
	moveq #$0,d0
	bra.s loc_20a2f8
loc_20a2f0:
	cmpi.w #$3,d0
	bcs.s loc_20a2f8
	moveq #$2,d0
loc_20a2f8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a3c6
	dbf d0,loc_20a2f8
	bclr.b #$7,(a2)
	bra.s loc_20a34e
loc_20a30a:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a336
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a32e
	moveq #$0,d0
	bra.s loc_20a336
loc_20a32e:
	cmpi.w #$3,d0
	bcs.s loc_20a336
	moveq #$2,d0
loc_20a336:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a3c6
	dbf d0,loc_20a336
	bclr.b #$7,(a2)
	bsr.w sub_20790e
	bne.w loc_20a3d2
loc_20a34e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a698,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3a4
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a3a4
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a3a4:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a3c6:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20a30a
loc_20a3d2:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a3f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a3f0
	moveq #$0,d0
	bra.s loc_20a3f8
loc_20a3f0:
	cmpi.w #$3,d0
	bcs.s loc_20a3f8
	moveq #$2,d0
loc_20a3f8:
	lea $1(a2),a3
loc_20a3fc:
	btst.b #$0,-(a3)
	bne.w sub_203980
	dbf d0,loc_20a3fc
	tst.b $1(a0)
	bmi.s loc_20a42c
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a4a6
loc_20a42c:
	tst.w ($ff190e).l
	bne.s loc_20a43c
	move.b ($ff1913).l,$1a(a0)
loc_20a43c:
	bra.w sub_2038d4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a4aa
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a48c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a484
	moveq #$0,d1
	bra.s loc_20a48c
loc_20a484:
	cmpi.w #$3,d1
	bcs.s loc_20a48c
	moveq #$2,d1
loc_20a48c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a690).l,a1
	bsr.w sub_205e5e
	bra.w sub_2038d4
loc_20a4a6:
	bra.w sub_203980

sub_20a4aa:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a4fa
	bset.b #$1,($ff150d).l
	beq.s loc_20a4e4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a4fa
	bset.b #$2,($ff150d).l
	bne.s loc_20a4fa
loc_20a4e4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e1e).l
loc_20a4fa:
	jmp (sub_2022fa).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a50e(pc,d0.w),d1
	jmp dat_20a50e(pc,d1.w)
dat_20a50e:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a52a
	move.w d0,d5
loc_20a52a:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a53a
loc_20a532:
	bsr.w sub_2078f8
	bne.w loc_20a5f0
loc_20a53a:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a698,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a598
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a598
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a598:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a5e0
	move.w d4,d0
	jsr (sub_2007fe).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a5e0
	subi.w #$80,d4
	bcc.s loc_20a5e0
	move.w #$288,d4
loc_20a5e0:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a532
loc_20a5f0:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2022fa).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_20387e
	addi.w #$18,$12(a0)
	bmi.s loc_20a650
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a650
	jsr (sub_206bdc).l
	tst.w d1
	bpl.s loc_20a650
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a650:
	tst.b ($ff1916).l
	beq.s loc_20a68c
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a68c
	bra.w sub_2038d4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a4aa
	lea (dat_20a690).l,a1
	bsr.w sub_205e5e
	bra.w sub_2038d4
loc_20a68c:
	bra.w sub_203980
dat_20a690:
	.incbin 42640, 402
loc_20a822:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a850(pc,d0.w),d0
	jsr dat_20a850(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a84e
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a848
	btst.b #$0,($ff1505).l
	bne.s loc_20a84e
loc_20a848:
	jmp (sub_2038d4).l
loc_20a84e:
	rts
dat_20a850:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20ae2a,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a884
	move.b #$13,$1a(a0)
loc_20a884:
	rts
loc_20a886:
	tst.b ($ff0f01).l
	beq.s loc_20a894
	jmp (sub_203980).l
loc_20a894:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a822
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8b8(pc,d0.w),d0
	jsr dat_20a8b8(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20a8b8:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae2a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a906
	tst.b $29(a0)
	bne.s loc_20a906
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a906:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a9d2
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a92e
	addq.b #$2,$1a(a0)
loc_20a92e:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a942
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a942:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a9a8
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a974
	tst.b $29(a0)
	beq.s loc_20a96c
	tst.b ($ff1956).l
	beq.s loc_20a9a8
	bra.s loc_20a974
loc_20a96c:
	tst.b ($ff1956).l
	bne.s loc_20a9a8
loc_20a974:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a9d2
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a9a2
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a9a2:
	jsr (sub_205e1e).l
loc_20a9a8:
	rts
	.incbin 43434, 40

sub_20a9d2:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20aa0a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20aa02
	moveq #$0,d1
	bra.s loc_20aa0a
loc_20aa02:
	cmpi.w #$3,d1
	bcs.s loc_20aa0a
	moveq #$2,d1
loc_20aa0a:
	add.w d1,d0
	rts

sub_20aa0e:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aa30
	tst.b ($ff1956).l
	beq.s loc_20aa28
	tst.b $29(a0)
	bne.s loc_20aa30
	rts
loc_20aa28:
	tst.b $29(a0)
	beq.s loc_20aa30
	rts
loc_20aa30:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2097f2).l
	tst.b $28(a0)
	bne.s loc_20aa52
	tst.b ($ff0f01).l
	beq.s loc_20aa52
	jmp (loc_20792e).l
loc_20aa52:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a886
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa6a(pc,d0.w),d1
	jmp dat_20aa6a(pc,d1.w)
dat_20aa6a:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae2a,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aab4
	tst.b $29(a0)
	bne.s loc_20aab4
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20aab4:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a9d2
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20aae0
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20aae0:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20ab3a
	move.b $25(a0),d0
	beq.s loc_20ab1a
	bsr.w sub_20381c
	jsr (sub_206bdc).l
	tst.w d1
	bpl.w loc_20ab28
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20ab28
loc_20ab1a:
	tst.b $1(a0)
	bpl.s loc_20ab28
	lea ($d000).w,a1
	bsr.w sub_20aa0e
loc_20ab28:
	tst.w ($ff190e).l
	bne.s loc_20ab3a
	lea (dat_20ada2).l,a1
	bsr.w sub_205e5e
loc_20ab3a:
	bsr.w sub_2038d4
	jmp (loc_20792e).l
	.incbin 43844, 606
dat_20ada2:
	.incbin 44450, 586
loc_20afec:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b000(pc,d0.w),d0
	jsr dat_20b000(pc,d0.w)
	jmp (sub_2038d4).l
dat_20b000:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20b040,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20b03a
	jmp (sub_203980).l
loc_20b03a:
	subq.w #$2,$c(a0)
	rts
	.incbin 45120, 82
	tst.b $28(a0)
	bmi.w loc_20afec
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b0a8(pc,d0.w),d0
	jmp dat_20b0a8(pc,d0.w)
dat_20b0a8:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20b142,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20b0d8
	move.b #$3,$1a(a0)
	bra.s loc_20b0f8
loc_20b0d8:
	tst.w ($ff1588).l
	beq.s loc_20b0e6
	move.b #$2,$1a(a0)
loc_20b0e6:
	tst.b $28(a0)
	beq.s loc_20b0f8
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20b0f8:
	tst.b $28(a0)
	bne.s loc_20b13c
	tst.b $29(a0)
	beq.s loc_20b128
	tst.w ($ff1512).l
	beq.s loc_20b114
	bclr.b #$5,$2(a0)
	bra.s loc_20b13c
loc_20b114:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20b13c
	eori.b #$20,$2(a0)
	bra.s loc_20b13c
loc_20b128:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20b13c
	move.b #$2,$1a(a0)
loc_20b13c:
	jmp (sub_2038d4).l
	.incbin 45378, 168

sub_20b1ea:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20b206
	move.l d1,(a3)
loc_20b206:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20b230
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e1e).l
loc_20b230:
	rts
loc_20b232:
	tst.w ($ff1588).l
	beq.s loc_20b288
	bsr.w sub_20b484
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
	lea (dat_20b5e4).l,a2
	moveq #$2,d6
	bsr.w sub_20b63c
	bra.w loc_20b2e2
loc_20b288:
	tst.b ($ff1511).l
	beq.s loc_20b2ac
	bpl.s loc_20b296
	bsr.w sub_20b42e
loc_20b296:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b51e
loc_20b2ac:
	tst.b ($ff150f).l
	beq.s loc_20b2e2
	bpl.s loc_20b2ba
	bsr.w sub_20b41a
loc_20b2ba:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20b2de
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20b2de:
	bsr.w sub_20b514
loc_20b2e2:
	tst.w ($ff1588).l
	bne.w loc_20b38e
	tst.b ($ff1510).l
	beq.w loc_20b38e
	tst.w ($f63a).w
	bne.w loc_20b38e
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b3ec
	tst.b ($f7cc).w
	bne.s loc_20b338
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b338
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b338
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20b338
	move.b #$9,(a1)
loc_20b338:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b62a
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b634
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b38a
	move.w #$63,d1
loc_20b38a:
	bsr.w sub_20b634
loc_20b38e:
	tst.b ($ff150e).l
	beq.s loc_20b3a0
	clr.b ($ff150e).l
	bsr.w sub_20b60a
loc_20b3a0:
	tst.b ($f7d6).w
	beq.s loc_20b3ea
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b3c0
	move.l #$6d400001,d0
loc_20b3c0:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b4a2
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b3e0
	move.l #$6e800001,d0
loc_20b3e0:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b4a2
loc_20b3ea:
	rts
loc_20b3ec:
	btst.b #$7,($ff152e).l
	bne.s loc_20b418
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207120
	move.b #$1,($ff150c).l
loc_20b418:
	rts

sub_20b41a:
	move.l #$73600002,($c00004).l
	lea dat_20b480(pc),a2
	move.w #$2,d2
	bra.s loc_20b44a

sub_20b42e:
	lea ($c00000).l,a6
	bsr.w sub_20b60a
	move.l #$70600002,($c00004).l
	lea dat_20b478(pc),a2
	move.w #$6,d2
loc_20b44a:
	lea (dat_2330bc).l,a1
loc_20b450:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b46c
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b460:
	move.l (a3)+,(a6)
	dbf d1,loc_20b460
loc_20b466:
	dbf d2,loc_20b450
	rts
loc_20b46c:
	move.l #$0,(a6)
	dbf d1,loc_20b46c
	bra.s loc_20b466
dat_20b478:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b480:
	dc.b $ff,$ff,$00,$00

sub_20b484:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b600
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b600

sub_20b4a2:
	lea (dat_20b5dc).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b4b2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b4b6:
	sub.l d3,d1
	bcs.s loc_20b4be
	addq.w #$1,d2
	bra.s loc_20b4b6
loc_20b4be:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b4c8
	move.w #$1,d4
loc_20b4c8:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b4d4
	tst.w d6
	bne.s loc_20b506
loc_20b4d4:
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
loc_20b4fa:
	addi.l #$400000,d0
	dbf d6,loc_20b4b2
	rts
loc_20b506:
	moveq #$f,d5
loc_20b508:
	move.l #$0,(a6)
	dbf d5,loc_20b508
	bra.s loc_20b4fa

sub_20b514:
	lea (dat_20b5e4).l,a2
	moveq #$2,d6
	bra.s loc_20b526

sub_20b51e:
	lea (dat_20b5d8).l,a2
	moveq #$5,d6
loc_20b526:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b52e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b532:
	sub.l d3,d1
	bcs.s loc_20b53a
	addq.w #$1,d2
	bra.s loc_20b532
loc_20b53a:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b544
	move.w #$1,d4
loc_20b544:
	tst.w d4
	beq.s loc_20b572
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
loc_20b572:
	addi.l #$400000,d0
	dbf d6,loc_20b52e
	rts
	.incbin 46462, 32
loc_20b59e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b5a2:
	sub.l d3,d1
	bcs.s loc_20b5aa
	addq.w #$1,d2
	bra.s loc_20b5a2
loc_20b5aa:
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
	dbf d6,loc_20b59e
	rts
dat_20b5d8:
	dc.b $00,$01,$86,$a0
dat_20b5dc:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b5e4:
	dc.b $00,$00,$00,$64
dat_20b5e8:
	dc.b $00,$00,$00,$0a
dat_20b5ec:
	dc.b $00,$00,$00,$01
dat_20b5f0:
	.incbin 46576, 16

sub_20b600:
	moveq #$3,d6
	lea (dat_20b5f0).l,a2
	bra.s sub_20b63c

sub_20b60a:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b620
	moveq #$9,d1
loc_20b620:
	lea (dat_20b5ec).l,a2
	moveq #$0,d6
	bra.s sub_20b63c

sub_20b62a:
	lea (dat_20b5ec).l,a2
	moveq #$0,d6
	bra.s sub_20b63c

sub_20b634:
	lea (dat_20b5e8).l,a2
	moveq #$1,d6

sub_20b63c:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b644:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b648:
	sub.l d3,d1
	bcs.s loc_20b650
	addq.w #$1,d2
	bra.s loc_20b648
loc_20b650:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b65a
	move.w #$1,d4
loc_20b65a:
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
	dbf d6,loc_20b644
	rts
	.incbin 46736, 570
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b8de(pc,d0.w),d0
	jsr dat_20b8de(pc,d0.w)
	jmp (sub_2038d4).l
dat_20b8de:
	.incbin 47326, 2320
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c1fc(pc,d0.w),d0
	jmp dat_20c1fc(pc,d0.w)
dat_20c1fc:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c8fa,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c8ba).l,a2
loc_20c24a:
	jsr (sub_2078f8).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c8fa,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c29c
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c29c:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c24a
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c2c4
	bge.s loc_20c2ba
	neg.w d0
loc_20c2ba:
	add.w d0,$a(a0)
	jmp (sub_2038d4).l
loc_20c2c4:
	addq.b #$4,$24(a0)
	jmp (sub_2038d4).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c2e8
	bge.s loc_20c2de
	neg.w d0
loc_20c2de:
	add.w d0,$8(a0)
	jmp (sub_2038d4).l
loc_20c2e8:
	addq.b #$4,$24(a0)
	jmp (sub_2038d4).l
	tst.b $1e(a0)
	beq.s loc_20c302
	subq.b #$1,$1e(a0)
	jmp (sub_2038d4).l
loc_20c302:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c31c
	bge.s loc_20c312
	neg.w d0
loc_20c312:
	add.w d0,$a(a0)
	jmp (sub_2038d4).l
loc_20c31c:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024c4).l
	tst.b $1e(a0)
	beq.s loc_20c33e
	subq.b #$1,$1e(a0)
	jmp (sub_2038d4).l
loc_20c33e:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c358
	bge.s loc_20c34e
	neg.w d0
loc_20c34e:
	add.w d0,$8(a0)
	jmp (sub_2038d4).l
loc_20c358:
	jmp (sub_203980).l
	tst.l ($f680).w
	bne.s loc_20c372
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203980).l
loc_20c372:
	rts
	.incbin 50036, 1350
dat_20c8ba:
	.incbin 51386, 328

sub_20ca02:
	rts
	tst.b $28(a0)
	bmi.w loc_20cb3c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ca26(pc,d0.w),d0
	jsr dat_20ca26(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20ca26:
	dc.b $00,$0e,$00,$5e
loc_20ca2a:
	lea ($d000).w,a1
	jmp (sub_2097ec).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$340,$2(a0)
	move.l #$20cb64,$4(a0)
	move.b #$28,$16(a0)
	move.b #$20,$19(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	jsr (sub_2078f8).l
	bne.s loc_20ca74
	move.w #$ffe0,d0
	bsr.w sub_20cb02
loc_20ca74:
	jsr (sub_2078f8).l
	bne.s loc_20ca84
	move.w #$20,d0
	bsr.w sub_20cb02
loc_20ca84:
	jsr sub_20caba(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	tst.b $3c(a0)
	beq.s loc_20caa4
	tst.b $3a(a0)
	beq.s loc_20cab6
loc_20caa4:
	cmpi.b #$21,$3b(a0)
	bcs.s loc_20cab6
	lea ($d000).w,a1
	jmp (sub_2096a4).l
loc_20cab6:
	jmp loc_20ca2a(pc)

sub_20caba:
	tst.b $3a(a0)
	beq.s loc_20cac6
	subq.b #$1,$3a(a0)
	bne.s loc_20cb00
loc_20cac6:
	tst.b $3c(a0)
	beq.s loc_20cae2
	subq.b #$1,$3b(a0)
	bcc.s loc_20cb00
	clr.b $3b(a0)
	clr.b $3c(a0)
	move.b #$3c,$3a(a0)
	rts
loc_20cae2:
	addq.b #$8,$3b(a0)
	cmpi.b #$50,$3b(a0)
	bcs.s loc_20cb00
	move.b #$50,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20cb00:
	rts

sub_20cb02:
	move.b #$20,$0(a1)
	move.w a0,$34(a1)
	move.b #$ff,$28(a1)
	add.w $8(a0),d0
	move.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	ori.b #$4,$1(a1)
	move.l #$20cb64,$4(a1)
	move.b #$28,$16(a1)
	move.b #$1,$1a(a1)
	rts
loc_20cb3c:
	movea.w $34(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20cb5e
	move.w $c(a1),$c(a0)
	lea ($d000).w,a1
	jsr (sub_2097f2).l
	jmp (sub_2038d4).l
loc_20cb5e:
	jmp (sub_203980).l
	.incbin 52068, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cba4(pc,d0.w),d0
	jsr dat_20cba4(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20cba4:
	dc.b $00,$06,$00,$3a,$00,$bc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$6358,$2(a0)
	move.l #$20ce5a,$4(a0)
	move.b #$10,$16(a0)
	move.b #$10,$19(a0)
	move.b $28(a0),$1a(a0)
	bsr.w sub_20cccc
	tst.b $28(a0)
	beq.s loc_20cc32
	bsr.w sub_20ccba
	tst.w $3a(a0)
	bne.s loc_20cc34
	bsr.w sub_20cd10
	cmpi.b #$2,($ff152e).l
	bne.s loc_20cc04
	tst.b ($ff156a).l
	bne.s loc_20cc32
loc_20cc04:
	tst.b ($ff1507).l
	bne.s loc_20cc16
	move.w ($f704).w,d0
	cmpi.w #$400,d0
	bcc.s loc_20cc32
loc_20cc16:
	move.w #$168,d0
	move.b ($ff152e).l,d1
	beq.s loc_20cc2e
	move.w #$1e0,d0
	subq.b #$1,d1
	beq.s loc_20cc2e
	move.w #$f0,d0
loc_20cc2e:
	move.w d0,$3a(a0)
loc_20cc32:
	rts
loc_20cc34:
	subq.w #$1,$3a(a0)
	bne.s loc_20cc32
	addq.b #$2,$24(a0)
	move.w #$78,$3a(a0)
	move.w #$5a,$30(a0)
	clr.b $2e(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20cc60
	move.w #$b2,d0
	jsr (sub_2022fa).l
loc_20cc60:
	bsr.w sub_20ccba
	tst.w $30(a0)
	beq.s loc_20cc7e
	move.b $3c(a0),d0
	bsr.w sub_20ce34
	subq.w #$1,$30(a0)
	beq.s loc_20cc7a
	rts
loc_20cc7a:
	bsr.w sub_20cd10
loc_20cc7e:
	move.b $3c(a0),d0
	addq.b #$1,d0
	move.b d0,($ff195a).l
	moveq #$0,d0
	move.b $3c(a0),d0
	bsr.w sub_20cd58
	subq.w #$1,$3a(a0)
	bne.s loc_20ccb8
	subq.b #$2,$24(a0)
	clr.b ($ff195a).l
	addq.b #$1,$3c(a0)
	cmpi.b #$3,$3c(a0)
	bcs.s loc_20ccb8
	clr.b $3c(a0)
	clr.w $3e(a0)
loc_20ccb8:
	rts

sub_20ccba:
	lea ($d000).w,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	rts

sub_20cccc:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20ccd4:
	cmpi.b #$21,$0(a1)
	bne.s loc_20cce2
	tst.b $28(a1)
	bne.s loc_20cd0e
loc_20cce2:
	lea $40(a1),a1
	dbf d0,loc_20ccd4
	jsr (sub_2078f8).l
	bne.s loc_20cd0e
	move.b #$21,$0(a1)
	move.b #$1,$28(a1)
	lea ($d000).w,a2
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
loc_20cd0e:
	rts

sub_20cd10:
	lea ($fb40).w,a3
	move.w #$626,d0
	move.w #$646,d2
	move.b ($ff152e).l,d1
	beq.s loc_20cd46
	lea ($fb7a).w,a3
	move.w #$222,d0
	move.w #$680,d2
	subq.b #$1,d1
	beq.s loc_20cd46
	move.w #$402,d0
	move.w #$246,d2
	tst.b ($ff156a).l
	beq.s loc_20cd46
	rts
loc_20cd46:
	lea ($fb64).w,a2
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d2,(a3)+
	rts
dat_20cd54:
	dc.b $00,$02,$04,$00

sub_20cd58:
	move.b dat_20cd54(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	lea (dat_20ce00).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20cd82
	lea (dat_20cde6).l,a1
	subq.b #$1,d1
	beq.s loc_20cd82
	lea (dat_20ce1a).l,a1
loc_20cd82:
	moveq #$0,d1
	move.b $3e(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3e(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20cda0
	clr.b $3e(a0)
loc_20cda0:
	lea ($fb40).w,a2
	lea (dat_20ce10).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20cdc6
	lea ($fb7a).w,a2
	lea (dat_20cdf6).l,a1
	subq.b #$1,d1
	beq.s loc_20cdc6
	lea (dat_20ce2a).l,a1
loc_20cdc6:
	moveq #$0,d1
	move.b $3f(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3f(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20cde4
	clr.b $3f(a0)
loc_20cde4:
	rts
dat_20cde6:
	.incbin 52710, 16
dat_20cdf6:
	dc.b $0a,$60,$0a,$a0,$0a,$60,$0a,$a0
	dc.b $ff,$ff
dat_20ce00:
	.incbin 52736, 16
dat_20ce10:
	dc.b $08,$46,$08,$4a,$08,$46,$08,$4a
	dc.b $ff,$ff
dat_20ce1a:
	.incbin 52762, 16
dat_20ce2a:
	dc.b $02,$44,$02,$48,$02,$44,$02,$48
	dc.b $ff,$ff

sub_20ce34:
	move.b dat_20ce56(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	move.w #$80,d0
	tst.b $2e(a0)
	beq.s loc_20ce4c
	moveq #$0,d0
loc_20ce4c:
	move.w d0,(a2)
	eori.b #$1,$2e(a0)
	rts
dat_20ce56:
	.incbin 52822, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ce94(pc,d0.w),d0
	jsr dat_20ce94(pc,d0.w)
	jsr (sub_2038d4).l
	move.w $36(a0),d0
	jmp (loc_207932).l
dat_20ce94:
	dc.b $00,$16,$00,$4c
loc_20ce98:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2097ec).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cf78,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cef0(pc,d0.w),d0
	jmp dat_20cef0(pc,d0.w)
dat_20cef0:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cf5c
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20ce98
	bsr.w sub_20cf5c
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20ce98
	move.l $8(a0),-(a7)
	bsr.w sub_20cf5c
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20ce98
	move.l $8(a0),-(a7)
	bsr.w sub_20cf5c
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20ce98

sub_20cf5c:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007fe).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 53112, 18
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cfa4(pc,d0.w),d0
	jsr dat_20cfa4(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20cfa4:
	.incbin 53156, 446
	tst.b $24(a0)
	bne.s loc_20d1aa
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$39a,$2(a0)
	move.l #$20d222,$4(a0)
	move.b #$8,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d1aa:
	move.b $3f(a0),$3e(a0)
	lea ($d000).w,a1
	jsr (sub_2097f2).l
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d1ca
	bclr.b #$7,(a4)
	bra.s loc_20d1d2
loc_20d1ca:
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d1d2:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d1fe
	tst.b $1(a0)
	bpl.s loc_20d1ea
	move.w #$bf,d0
	jsr (sub_2022fa).l
loc_20d1ea:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	addq.w #$4,$c(a0)
	addq.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d1fe:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d216
	subq.w #$8,$c(a1)
	subq.w #$4,$c(a0)
	subq.b #$1,$1a(a0)
	addq.b #$4,$16(a0)
loc_20d216:
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
	.incbin 53794, 28
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d258(pc,d0.w),d0
	jsr dat_20d258(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20d258:
	dc.b $00,$1a,$00,$7e,$00,$ba,$01,$00

sub_20d260:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2097f2).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d3ae,$4(a0)
	move.w $c(a0),$32(a0)
	move.w #$3a0,$2(a0)
	move.b #$20,$16(a0)
	move.b #$8,$19(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20d2c4
	move.w #$330,$2(a0)
	move.b #$20,$16(a0)
	move.b #$20,$19(a0)
	move.b #$1,$1a(a0)
loc_20d2c4:
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$30(a0)
	move.b #$ff,$3c(a0)
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20d2ec
	clr.b $3c(a0)
loc_20d2ec:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	bsr.w sub_20d370
	bsr.w sub_20d260
	cmpi.b #$40,$3a(a0)
	bne.s loc_20d310
	addq.b #$2,$24(a0)
loc_20d310:
	rts
	lea ($d000).w,a1
	move.w $8(a0),d0
	sub.w $38(a0),d0
	bcc.s loc_20d33a
	move.b $17(a1),d0
	ext.w d0
	add.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d356
	neg.w d0
	cmp.b $19(a0),d0
	bcs.s loc_20d356
	bra.s loc_20d352
loc_20d33a:
	move.b $17(a1),d0
	neg.b d0
	ext.w d0
	add.w $8(a1),d0
	sub.w $8(a0),d0
	bcs.s loc_20d356
	cmp.b $19(a0),d0
	bcs.s loc_20d356
loc_20d352:
	addq.b #$2,$24(a0)
loc_20d356:
	rts
	st $3c(a0)
	bsr.w sub_20d370
	tst.b $3a(a0)
	bne.s loc_20d36c
	move.b #$2,$24(a0)
loc_20d36c:
	bra.w sub_20d260

sub_20d370:
	bsr.w sub_20d386
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20d386:
	tst.b $3c(a0)
	beq.s loc_20d398
	subq.b #$4,$3a(a0)
	bcc.s loc_20d3ac
	clr.b $3a(a0)
	bra.s loc_20d3ac
loc_20d398:
	addq.b #$4,$3a(a0)
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	bcs.s loc_20d3ac
	move.b #$40,$3a(a0)
loc_20d3ac:
	rts
	.incbin 54190, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3ee(pc,d0.w),d0
	jsr dat_20d3ee(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20d3ee:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d3f8:
	tst.b $1a(a0)
	beq.s loc_20d400
	rts
loc_20d400:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2097f2).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d542,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d44e
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d44e:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d45e
	neg.w d0
loc_20d45e:
	cmpi.w #$40,d0
	bcc.s loc_20d49e
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d47a
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d47a:
	sub.w d1,d0
	bcs.s loc_20d49e
	cmpi.w #$40,d0
	bcc.s loc_20d49e
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d49e
	move.w #$a4,d0
	jsr (sub_2022fa).l
loc_20d49e:
	bra.w loc_20d3f8
	clr.b $3c(a0)
	jsr sub_20d520(pc)
	cmpi.b #$3,$1a(a0)
	bne.s loc_20d4b6
	addq.b #$2,$24(a0)
loc_20d4b6:
	bra.w loc_20d3f8
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d4ca
	neg.w d0
loc_20d4ca:
	cmpi.w #$40,d0
	bcc.s loc_20d502
	move.w $8(a1),d1
	move.w $8(a0),d0
	tst.b $28(a0)
	bne.s loc_20d4e6
	move.w $8(a1),d0
	move.w $8(a0),d1
loc_20d4e6:
	sub.w d1,d0
	bcs.s loc_20d502
	cmpi.w #$40,d0
	bcs.s loc_20d502
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	move.w #$a4,d0
	jsr (sub_2022fa).l
loc_20d502:
	bra.w loc_20d3f8
	move.b #$1,$3c(a0)
	jsr sub_20d520(pc)
	tst.b $1a(a0)
	bne.s loc_20d51c
	move.b #$2,$24(a0)
loc_20d51c:
	bra.w loc_20d3f8

sub_20d520:
	addi.b #$40,$3a(a0)
	bcs.s loc_20d52a
	rts
loc_20d52a:
	tst.b $3c(a0)
	bne.s loc_20d536
	addq.b #$1,$1a(a0)
	rts
loc_20d536:
	subq.b #$1,$1a(a0)
	bcc.s loc_20d540
	clr.b $1a(a0)
loc_20d540:
	rts
	.incbin 54594, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d58c(pc,d0.w),d0
	jsr dat_20d58c(pc,d0.w)
	jsr (sub_2038d4).l
	move.w $36(a0),d0
	jmp (loc_207932).l
dat_20d58c:
	dc.b $00,$12,$00,$48

sub_20d590:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2097ec).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d858,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d7be
	lea dat_20d84e(pc),a1
	jsr (sub_205e5e).l
	lea ($d000).w,a1
	bsr.w sub_20d590
	beq.s loc_20d632
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d628
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d624
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d624:
	move.b d0,$39(a1)
loc_20d628:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d632
	bra.s loc_20d652
loc_20d632:
	rts
	.incbin 54836, 30
loc_20d652:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_2007fe).l
	moveq #$0,d0
	move.b $39(a1),d0
	muls.w d1,d0
	asr.l #$8,d0
	move.w $8(a0),$8(a1)
	add.w d0,$8(a1)
	moveq #$0,d0
	move.b $2b(a1),d0
	move.b d0,d1
	andi.b #$f0,d0
	lsr.b #$4,d0
	move.b dat_20d6b0(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d692
	addq.b #$1,$39(a1)
loc_20d692:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d6a6
	move.w ($f606).w,($f602).w
loc_20d6a6:
	bsr.w sub_20d6c0
	bra.w loc_20d70e
	dc.b $4e,$75
dat_20d6b0:
	.incbin 54960, 16

sub_20d6c0:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d6ec
	btst.b #$2,($f602).w
	beq.s loc_20d6d8
	addq.b #$1,$39(a1)
	bra.s loc_20d70c
loc_20d6d8:
	btst.b #$3,($f602).w
	beq.s loc_20d70c
	subq.b #$1,$39(a1)
	bcc.s loc_20d70c
	clr.b $39(a1)
	bra.s loc_20d70c
loc_20d6ec:
	btst.b #$3,($f602).w
	beq.s loc_20d6fa
	addq.b #$1,$39(a1)
	bra.s loc_20d70c
loc_20d6fa:
	btst.b #$2,($f602).w
	beq.s loc_20d70c
	subq.b #$1,$39(a1)
	bcc.s loc_20d70c
	clr.b $39(a1)
loc_20d70c:
	rts
loc_20d70e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d7b4
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_2007fe).l
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
	tst.b ($ff195b).l
	beq.s loc_20d76e
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d77a
loc_20d76e:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d77a:
	btst.b #$2,$22(a1)
	bne.s loc_20d7b6
	tst.b ($ff195b).l
	beq.s loc_20d798
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d7a8
loc_20d798:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d7a8:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d7b4:
	rts
loc_20d7b6:
	bset.b #$4,$22(a1)
	rts

sub_20d7be:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d7ce(pc,d0.w),d0
	jmp dat_20d7ce(pc,d0.w)
dat_20d7ce:
	dc.b $00,$26,$00,$44,$00,$08,$00,$18
	bsr.w sub_20d832
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	bsr.w sub_20d832
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d832
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d832
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts

sub_20d832:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_2007fe).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d84e:
	.incbin 55374, 118
	jsr (sub_20fc1c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d8e4(pc,d0.w),d0
	jsr dat_20d8e4(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20d8e4:
	dc.b $00,$08,$00,$8c,$01,$08,$01,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2438,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.l #$70000,$2e(a0)
	move.l #loc_206e48,$36(a0)
	move.w #$fff0,$34(a0)
	move.b #$1,$1a(a0)
	bsr.w sub_20dae0
	movea.l #$20db02,a1
	move.l #$ffff6000,d0
	move.b #$7,d1
	tst.b $28(a0)
	beq.s loc_20d954
	movea.l #$20db26,a1
	move.l #$ffff8000,d0
	move.b #$3,d1
loc_20d954:
	move.l a1,$4(a0)
	move.l d0,$2a(a0)
	move.l #$70000,$2e(a0)
	move.b d1,$33(a0)
	move.b d1,$32(a0)
	addq.b #$1,$32(a0)
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206bdc).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d9aa
	tst.w $3e(a0)
	bpl.w loc_20daac
	cmp.w $3e(a0),d1
	ble.w loc_20daac
	bra.s loc_20d9cc
loc_20d9aa:
	tst.w $3e(a0)
	bmi.s loc_20d9cc
	addi.l #$2000,$2e(a0)
	cmpi.l #$70000,$2e(a0)
	blt.s loc_20d9ca
	move.l #$70000,$2e(a0)
loc_20d9ca:
	rts
loc_20d9cc:
	addq.b #$2,$24(a0)
	move.w $3e(a0),d0
	add.w d0,$c(a0)
	move.w #$1,d0
	tst.b $28(a0)
	beq.s loc_20d9e6
	move.w #$14,d0
loc_20d9e6:
	move.w d0,$3a(a0)
	rts
	tst.b $28(a0)
	beq.s loc_20da1c
	move.w #$7,d6
	move.w $3a(a0),d0
	cmpi.w #$6,d0
	beq.s loc_20da14
	cmpi.w #$b,d0
	beq.s loc_20da12
	cmpi.w #$f,d0
	beq.s loc_20da14
	cmpi.w #$12,d0
	bne.s loc_20da1c
loc_20da12:
	neg.w d6
loc_20da14:
	add.w d6,$c(a0)
	bsr.w sub_20dae0
loc_20da1c:
	subq.w #$1,$3a(a0)
	bne.s loc_20da4a
	addq.b #$2,$24(a0)
	subq.w #$7,$c(a0)
	bsr.w sub_20dae0
	move.l #$fffa0000,d0
	tst.b $28(a0)
	beq.s loc_20da40
	move.l #$fffb0000,d0
loc_20da40:
	move.l d0,$2e(a0)
	subq.b #$1,$32(a0)
	bmi.s loc_20daac
loc_20da4a:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206d72).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20da82
	tst.w $3e(a0)
	bpl.s loc_20daac
	cmp.w $3e(a0),d1
	ble.s loc_20daac
	bra.s loc_20da94
loc_20da82:
	tst.w $3e(a0)
	bmi.s loc_20da94
	addi.l #$2000,$2e(a0)
	bpl.s loc_20daa0
	rts
loc_20da94:
	move.w $3e(a0),d0
	sub.w d0,$c(a0)
	clr.l $2e(a0)
loc_20daa0:
	subq.b #$4,$24(a0)
	subi.w #$b,$c(a0)
	bra.s sub_20dae0
loc_20daac:
	move.b $33(a0),$32(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
	neg.w $34(a0)
	lea (loc_206e48).l,a1
	lea (loc_206ca6).l,a2
	cmpa.l $36(a0),a1
	bne.s loc_20dada
	exg a1,a2
loc_20dada:
	move.l a1,$36(a0)
	rts

sub_20dae0:
	tst.b $1a(a0)
	beq.s loc_20daee
	moveq #$0,d0
	moveq #$13,d1
	moveq #$2f,d2
	bra.s loc_20daf4
loc_20daee:
	moveq #$1,d0
	moveq #$1c,d1
	moveq #$30,d2
loc_20daf4:
	move.b d0,$1a(a0)
	move.b d1,$16(a0)
	move.b d2,$20(a0)
	rts
	.incbin 56066, 72
	tst.b $28(a0)
	bmi.w loc_20df5a
	jsr (sub_20fc1c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20db7c(pc,d0.w),d0
	jsr dat_20db7c(pc,d0.w)
	lea dat_20dde8(pc),a1
	jsr (sub_205e5e).l
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20db7c:
	.incbin 56188, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$a457,$2(a0)
	move.b #$31,$20(a0)
	move.w #$fff8,$30(a0)
	lea dat_20ddf4(pc),a1
	move.l #$ffff0000,d0
	tst.b $28(a0)
	beq.s loc_20dbde
	lea dat_20dedc(pc),a1
	move.l #$ffff8000,d0
loc_20dbde:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	addq.b #$2,$24(a0)
	move.w #$200,d0
	tst.b $28(a0)
	beq.s loc_20dbf8
	move.w #$400,d0
loc_20dbf8:
	move.w d0,$2a(a0)
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20dc26
	tst.w $32(a0)
	beq.s loc_20dc16
	subq.w #$1,$32(a0)
	bra.s loc_20dc26
loc_20dc16:
	lea ($d000).w,a1
	bsr.s sub_20dc34
	beq.s loc_20dc26
	move.b #$c,$24(a0)
	rts
loc_20dc26:
	subq.w #$1,$2a(a0)
	bpl.s loc_20dc32
	move.b #$6,$24(a0)
loc_20dc32:
	rts

sub_20dc34:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dc7e
	move.w $8(a1),d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20dc7e
	btst.b #$0,$1(a0)
	sne d2
	eor.b d1,d2
	beq.s loc_20dc7a
	neg.l $2c(a0)
	neg.w $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20dc7a:
	moveq #$ffffffff,d0
	rts
loc_20dc7e:
	moveq #$0,d0
	rts
	.incbin 56450, 358
dat_20dde8:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $01,$02,$03,$ff
dat_20ddf4:
	.incbin 56820, 232
dat_20dedc:
	.incbin 57052, 126
loc_20df5a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20df74(pc,d0.w),d0
	jsr dat_20df74(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20df74:
	.incbin 57204, 82
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	lea dat_20dfe0(pc),a1
	jmp (sub_205e5e).l
dat_20dfe0:
	.incbin 57312, 74
	tst.b $29(a0)
	bmi.w loc_20e390
	jsr (sub_20fc1c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e052(pc,d0.w),d0
	jsr dat_20e052(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20e052:
	dc.b $00,$0e,$00,$54,$00,$60,$00,$96
	dc.b $00,$d4,$00,$f8,$01,$20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$16(a0)
	move.b #$13,$17(a0)
	move.b #$13,$19(a0)
	move.w #$a4a8,$2(a0)
	move.b #$36,$20(a0)
	move.b $29(a0),$33(a0)
	lea dat_20e1de(pc),a1
	tst.b $28(a0)
	beq.s loc_20e0a2
	lea dat_20e2c6(pc),a1
loc_20e0a2:
	move.l a1,$4(a0)
	subq.w #$1,$32(a0)
	bpl.s loc_20e0b0
	addq.b #$2,$24(a0)
loc_20e0b0:
	rts
	lea ($d000).w,a1
	bsr.s sub_20e0c0
	bcc.s loc_20e0be
	addq.b #$2,$24(a0)
loc_20e0be:
	rts

sub_20e0c0:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20e0e6
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,$34(a0)
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20e0e6:
	rts
	addq.b #$2,$24(a0)
	move.l #$10000,d0
	move.l #$ffff8000,d1
	move.w #$60,d2
	tst.b $28(a0)
	beq.s loc_20e112
	move.l #$c000,d0
	move.l #$6000,d1
	move.w #$2a,d2
loc_20e112:
	tst.w $34(a0)
	bmi.s loc_20e11a
	neg.l d0
loc_20e11a:
	move.l d0,$2a(a0)
	move.l d1,$2e(a0)
	move.w d2,$32(a0)
	subq.w #$1,$32(a0)
	bpl.s loc_20e130
	addq.b #$2,$24(a0)
loc_20e130:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	lea dat_20e1d6(pc),a1
	jmp (sub_205e5e).l
	addq.b #$2,$24(a0)
	move.w #$0,$32(a0)
	move.l #$10000,d0
	tst.b $28(a0)
	beq.s loc_20e166
	move.l #$c000,d0
loc_20e166:
	tst.w $34(a0)
	bmi.s loc_20e16e
	neg.l d0
loc_20e16e:
	move.l d0,$2a(a0)
	tst.b $28(a0)
	bne.s loc_20e1c4
	andi.w #$3f,$32(a0)
	bne.s loc_20e1c0
	lea ($d000).w,a1
	bsr.w sub_20e0c0
	bcc.s loc_20e1c0
	jsr (sub_2078f8).l
	bne.s loc_20e1c0
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	addi.w #$a,$c(a1)
	move.b #$ff,$29(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
loc_20e1c0:
	addq.w #$1,$32(a0)
loc_20e1c4:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	lea dat_20e1d6(pc),a1
	jmp (sub_205e5e).l
dat_20e1d6:
	dc.b $00,$02,$03,$01,$02,$03,$02,$ff
dat_20e1de:
	.incbin 57822, 232
dat_20e2c6:
	.incbin 58054, 202
loc_20e390:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e3aa(pc,d0.w),d0
	jsr dat_20e3aa(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20e3aa:
	.incbin 58282, 198
	tst.b $29(a0)
	beq.s loc_20e47e
	bmi.w loc_20e6ec
	bra.w loc_20e6cc
loc_20e47e:
	jsr (sub_20fc1c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e49e(pc,d0.w),d0
	jsr dat_20e49e(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20e49e:
	.incbin 58526, 18
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$16(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$2488,$2(a0)
	move.b #$34,$20(a0)
	addq.w #$8,$c(a0)
	move.w $c(a0),$34(a0)
	move.w $c(a0),$36(a0)
	addi.w #$5f,$36(a0)
	lea dat_20e776(pc),a1
	tst.b $28(a0)
	beq.s loc_20e502
	lea dat_20e7ce(pc),a1
loc_20e502:
	move.l a1,$4(a0)
	jsr (sub_20790e).l
	beq.s loc_20e514
	jmp (sub_203980).l
loc_20e514:
	move.b $0(a0),$0(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$20,$16(a1)
	move.b #$1,$17(a1)
	move.b #$1,$19(a1)
	move.w a0,$38(a1)
	addq.b #$2,$24(a0)
	move.b #$9,$1a(a0)
	move.w #$79,$2a(a0)
	subq.w #$1,$2a(a0)
	bne.s loc_20e58e
	move.w #$79,$2a(a0)
	move.b #$2,d6
	lea ($d000).w,a1
	bsr.w sub_20e590
	bcs.s loc_20e58a
	neg.b d6
loc_20e58a:
	add.b d6,$24(a0)
loc_20e58e:
	rts

sub_20e590:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$28,d0
	subi.w #$78,d0
	bcc.s loc_20e5b2
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$ff58,d0
	subi.w #$150,d0
loc_20e5b2:
	rts
	addq.b #$2,$24(a0)
	move.l #$80000,$30(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	move.w $36(a0),d0
	sub.w $c(a0),d0
	bgt.s loc_20e5dc
	add.w d0,$c(a0)
	move.b #$e,$24(a0)
loc_20e5dc:
	rts
	addq.b #$2,$24(a0)
	move.l #$70000,d0
	tst.b $28(a0)
	beq.s loc_20e5f4
	move.l #$20000,d0
loc_20e5f4:
	move.l d0,$30(a0)
	move.l $30(a0),d0
	sub.l d0,$c(a0)
	move.w $34(a0),d0
	sub.w $c(a0),d0
	blt.s loc_20e614
	add.w d0,$c(a0)
	move.b #$2,$24(a0)
loc_20e614:
	rts
	addq.b #$2,$24(a0)
	move.w #$e6,d0
	move.w #$ff,d1
	tst.b $28(a0)
	beq.s loc_20e630
	move.w #$3d,d0
	move.w #$1ff,d1
loc_20e630:
	move.w d0,$2a(a0)
	move.w d1,$1c(a0)
	subq.w #$1,$2a(a0)
	bne.s loc_20e644
	move.b #$a,$24(a0)
loc_20e644:
	lea dat_20e728(pc),a1
	jsr (sub_205e5e).l
	tst.b $28(a0)
	bne.w loc_20e6ca
	cmpi.b #$1e,$1b(a0)
	bne.w loc_20e6ca
	jsr (sub_20790e).l
	bne.w loc_20e6ca
	move.b $0(a0),$0(a1)
	move.b #$1,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addq.w #$4,$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b $16(a0),$16(a1)
	move.b $17(a0),$17(a1)
	move.b $19(a0),$19(a1)
	move.w a0,$38(a1)
	move.b #$b5,$20(a1)
	tst.b $1(a0)
	bpl.s loc_20e6ca
	move.w #$b7,d0
	jsr (sub_2022fa).l
loc_20e6ca:
	rts
loc_20e6cc:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e6e6
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e6e6
	jmp (sub_2038d4).l
loc_20e6e6:
	jmp (sub_203980).l
loc_20e6ec:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e6fe
	jmp (sub_203980).l
loc_20e6fe:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e710
	moveq #$0,d0
loc_20e710:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_2038d4).l
dat_20e728:
	.incbin 59176, 78
dat_20e776:
	.incbin 59254, 88
dat_20e7ce:
	.incbin 59342, 274
	jsr (sub_20fc64).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ea02
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e900(pc,d0.w),d0
	jmp dat_20e900(pc,d0.w)
dat_20e900:
	.incbin 59648, 258
loc_20ea02:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea10(pc,d0.w),d0
	jmp dat_20ea10(pc,d0.w)
dat_20ea10:
	.incbin 59920, 448
	tst.b $28(a0)
	bmi.w loc_20ec82
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ebfc(pc,d0.w),d0
	jsr dat_20ebfc(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_2097f2).l
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20ebfc:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$3a8,$2(a0)
	move.l #$20ee56,$4(a0)
	move.w a0,$2a(a0)
	st $34(a0)
	move.w #$0,$32(a0)
	tst.b $34(a0)
	beq.s loc_20ec80
	sf $34(a0)
	lea dat_20ee5e(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.w $32(a0),d0
	adda.w $0(a1,d0.w),a1
	move.l a1,$2c(a0)
	addq.w #$2,$32(a0)
	cmpi.w #$8,$32(a0)
	blt.s loc_20ec74
	clr.w $32(a0)
loc_20ec74:
	bsr.w sub_20ee14
	beq.s loc_20ec80
	jmp (sub_203980).l
loc_20ec80:
	rts
loc_20ec82:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ee0e
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.w loc_20ee0e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ecba(pc,d0.w),d0
	jsr dat_20ecba(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_2097f2).l
	jmp (sub_2038d4).l
dat_20ecba:
	.incbin 60602, 20
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.l #$0,$38(a0)
	move.l #$0,$3c(a0)
	movea.l $2c(a0),a1
	move.b -$1(a1),d0
	bne.s loc_20ecfa
	move.l #$ffff8000,$3c(a0)
loc_20ecfa:
	subq.b #$1,d0
	bne.s loc_20ed06
	move.l #$8000,$38(a0)
loc_20ed06:
	subq.b #$1,d0
	bne.s loc_20ed12
	move.l #$8000,$3c(a0)
loc_20ed12:
	subq.b #$1,d0
	bne.s loc_20ed1e
	move.l #$ffff8000,$38(a0)
loc_20ed1e:
	movea.w $2a(a0),a1
	cmpi.b #$2,$28(a1)
	bne.s loc_20ed3c
	moveq #$1,d0
	tst.w $3c(a0)
	bpl.s loc_20ed34
	moveq #$ffffffff,d0
loc_20ed34:
	move.w d0,$34(a0)
	move.w d0,$12(a0)
loc_20ed3c:
	move.l $38(a0),d0
	add.l d0,$8(a0)
	move.l $3c(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ed56
	addq.b #$2,$24(a0)
loc_20ed56:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ed70
	move.w #$0,d0
loc_20ed70:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ed90
	addq.b #$2,$24(a0)
	bsr.w sub_20ee14
	beq.s loc_20ed90
	addq.b #$2,$24(a0)
	movea.w $2a(a0),a1
	st $34(a1)
loc_20ed90:
	rts
	rts
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.w $34(a0),$12(a0)
	neg.w $12(a0)
	move.l $38(a0),d0
	sub.l d0,$8(a0)
	move.l $3c(a0),d0
	sub.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20edc2
	addq.b #$2,$24(a0)
loc_20edc2:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20eddc
	move.w #$0,d0
loc_20eddc:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20edf8
	movea.w $36(a0),a1
	tst.b $28(a1)
	bpl.s loc_20edf4
	addq.b #$2,$24(a1)
loc_20edf4:
	addq.b #$2,$24(a0)
loc_20edf8:
	rts
	lea ($d000).w,a1
	jsr (sub_2097f2).l
	beq.s loc_20ee0c
	jsr (sub_2096a4).l
loc_20ee0c:
	addq.l #$4,a7
loc_20ee0e:
	jmp (sub_203980).l

sub_20ee14:
	movea.l $2c(a0),a6
	tst.b (a6)+
	bmi.s loc_20ee54
	jsr (sub_2078f8).l
	bne.s loc_20ee54
	movea.l a0,a2
	movea.l a1,a3
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.b #$ff,$28(a1)
	move.w a0,$36(a1)
	move.l a6,$2c(a1)
	addq.b #$1,$18(a1)
	clr.b $24(a1)
loc_20ee54:
	rts
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
dat_20ee5e:
	.incbin 61022, 104
	tst.b $28(a0)
	bne.w loc_20f090
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eef2(pc,d0.w),d0
	jsr dat_20eef2(pc,d0.w)
	jsr (sub_2038d4).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20eef0
	jmp (loc_20792e).l
loc_20eef0:
	rts
dat_20eef2:
	dc.b $00,$0a,$00,$58,$00,$84,$00,$e8
	dc.b $00,$f4
	tst.b ($ff156a).l
	beq.s loc_20ef0c
	addq.l #$4,a7
	jmp (sub_203980).l
loc_20ef0c:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$14,$17(a0)
	move.b #$14,$19(a0)
	move.b #$1c,$16(a0)
	move.w #$44e8,$2(a0)
	move.l #$20f03e,$4(a0)
	move.b #$f8,$20(a0)
	move.l #$20f05e,$2c(a0)
	tst.b $21(a0)
	beq.s loc_20ef6c
	clr.w $20(a0)
	addq.b #$2,$24(a0)
	lea ($d000).w,a1
	jsr (sub_2097f2).l
	beq.s loc_20ef6a
	jsr (sub_2096a4).l
loc_20ef6a:
	rts
loc_20ef6c:
	lea ($d000).w,a1
	jmp (sub_2097f2).l
	.incbin 61302, 282
loc_20f090:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f0a4(pc,d0.w),d0
	jsr dat_20f0a4(pc,d0.w)
	jmp (sub_2038d4).l
dat_20f0a4:
	.incbin 61604, 158
	tst.b $28(a0)
	bne.w loc_20f38a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f164(pc,d0.w),d0
	jsr dat_20f164(pc,d0.w)
	jsr (sub_2038d4).l
	jmp (loc_20792e).l
dat_20f164:
	dc.b $00,$06,$00,$d4,$01,$be
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$3b8,$2(a0)
	move.l #$20f3c6,$4(a0)
	jsr (sub_2078f8).l
	bne.w loc_20f398
	bsr.w sub_20f1e4
	move.w a1,$2a(a0)
	subi.w #$28,$8(a1)
	subi.w #$18,$c(a1)
	jsr (sub_2078f8).l
	bne.w loc_20f398
	bsr.w sub_20f1e4
	move.w a1,$2c(a0)
	addi.w #$28,$8(a1)
	addi.w #$18,$c(a1)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
	rts

sub_20f1e4:
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
	lea loc_20f2a4(pc),a1
	tst.w $12(a0)
	beq.s loc_20f246
	lea loc_20f2c6(pc),a1
loc_20f246:
	jsr (a1)
	move.w a0,-(a7)
	movea.w $2c(a0),a0
	lea ($d000).w,a1
	jsr (sub_2097ec).l
	jsr (sub_2038d4).l
	movea.w (a7)+,a0
	move.w a0,-(a7)
	movea.w $2a(a0),a0
	lea ($d000).w,a1
	jsr (sub_2097ec).l
	sne $3f(a0)
	jsr (sub_2038d4).l
	movea.w (a7)+,a0
	movea.w $2a(a0),a1
	tst.b $3f(a1)
	bne.s loc_20f290
	lea dat_20f39e(pc),a1
	jmp (sub_205e5e).l
loc_20f290:
	move.b #$4,$24(a0)
	move.w #$3,$2e(a0)
	move.b #$8,$1a(a0)
	rts
loc_20f2a4:
	tst.w $2e(a0)
	bmi.s loc_20f2c4
	subq.w #$1,$2e(a0)
	bmi.s loc_20f2ba
	cmpi.w #$3c,$2e(a0)
	beq.s loc_20f2c0
	bra.s loc_20f2c4
loc_20f2ba:
	move.w #$100,$12(a0)
loc_20f2c0:
	addq.b #$1,$1c(a0)
loc_20f2c4:
	rts
loc_20f2c6:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	moveq #$0,d0
	move.b $12(a0),d0
	add.w d0,$c(a0)
	add.w d0,$c(a1)
	add.w d0,$c(a2)
	moveq #$0,d0
	move.b $19(a2),d0
	move.w $8(a2),d3
	cmp.w $8(a0),d3
	blt.s loc_20f2f2
	neg.w d0
loc_20f2f2:
	add.w d0,d3
	move.w a0,-(a7)
	movea.w a2,a0
	jsr (sub_206be0).l
	movea.w (a7)+,a0
	tst.w d1
	bmi.s loc_20f306
	rts
loc_20f306:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	add.w d1,$c(a0)
	add.w d1,$c(a1)
	add.w d1,$c(a2)
	move.w #$0,$12(a0)
	rts
	.incbin 62242, 104
loc_20f38a:
	movea.w $2a(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.s loc_20f398
	rts
loc_20f398:
	jmp (sub_203980).l
dat_20f39e:
	.incbin 62366, 2174

sub_20fc1c:
	tst.b ($ff156a).l
	beq.s loc_20fc62
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc34
	tst.b $28(a0)
	beq.s loc_20fc62
loc_20fc34:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203980).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fc60
	move.w #$9e,d0
	jsr (sub_2022fa).l
loc_20fc60:
	addq.l #$4,a7
loc_20fc62:
	rts

sub_20fc64:
	tst.b $28(a0)
	bmi.s loc_20fc94
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fc84
	tst.b ($ff156d).l
	bne.s loc_20fc94
	addq.l #$4,a7
	jmp (loc_20792e).l
loc_20fc84:
	tst.b ($ff156a).l
	bne.s loc_20fc94
	addq.l #$4,a7
	jmp (sub_203980).l
loc_20fc94:
	rts

sub_20fc96:
	jsr (sub_2066d2).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fdf2).l,a1
	move.w #$3f,d6
	bsr.w sub_20fdae
	bne.s loc_20fcd8
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4fc0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcd8:
	lea (dat_20fe00).l,a1
	move.w #$1f,d6
	bsr.w sub_20fdae
	bne.s loc_20fd0c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4f40,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd0c:
	lea (dat_20fd94).l,a1
	move.w #$1f,d6
	bsr.w sub_20fd42
	bne.s loc_20fd40
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4ec0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd40:
	rts

sub_20fd42:
	subq.b #$1,(a2)
	bpl.s loc_20fd88
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fd52
	moveq #$0,d0
loc_20fd52:
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
loc_20fd76:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fd76
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fd88:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fd94:
	.incbin 64916, 26

sub_20fdae:
	subq.b #$1,(a2)
	bpl.w loc_20fde6
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fdc4
	moveq #$0,d0
loc_20fdc4:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fdd4:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fdd4
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fde6:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fdf2:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fe00:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fe0a:
	.incbin 65034, 16
dat_20fe1a:
	.incbin 65050, 66022
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
	.incbin 224122, 16124
dat_23aa76:
	.incbin 240246, 32
dat_23aa96:
	.incbin 240278, 21866
