; R81D__.MMD
; disassembled from the disc; code only, data comes from data/R81D__.MMD at build time
	.file "R81D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$23,$04
	jmp (loc_201e7a).l
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
	bsr.w sub_2023b0
	bsr.w sub_202358
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2016f4

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_20028a).l,a1
	lea (dat_200292).l,a2
	bsr.w sub_20024c
	lea (dat_200298).l,a1
	lea (dat_2002a0).l,a2
	bsr.w sub_20024c
	lea (dat_2002a6).l,a1
	lea (dat_2002ae).l,a2
	bsr.w sub_20024c
	tst.b ($ff1507).l
	bne.s loc_2001f0
	lea (dat_2002b4).l,a1
	lea (dat_2002be).l,a2
	bsr.s sub_20024c
	lea (dat_2002c2).l,a1
	lea (dat_2002ce).l,a2
	bsr.s sub_20024c
	lea (dat_2002d2).l,a1
	lea (dat_2002de).l,a2
	bra.w sub_20024c
loc_2001f0:
	cmpi.b #$1,($ff1507).l
	bne.s loc_200224
	lea (dat_2002e2).l,a1
	lea (dat_2002f0).l,a2
	bsr.s sub_20024c
	lea (dat_2002f8).l,a1
	lea (dat_2002fe).l,a2
	bsr.s sub_20024c
	lea (dat_200302).l,a1
	lea (dat_200328).l,a2
	bra.s sub_20024c
loc_200224:
	lea (dat_20032c).l,a1
	lea (dat_20033e).l,a2
	bsr.s sub_20024c
	lea (dat_200346).l,a1
	lea (dat_200358).l,a2
	bsr.s sub_20024c
	lea (dat_200362).l,a1
	lea (dat_200368).l,a2

sub_20024c:
	subq.b #$1,(a5)
	bpl.s loc_200280
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
	bcs.s loc_20026c
	moveq #$0,d0
loc_20026c:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_200280:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_20028a:
	dc.b $26,$03,$04,$02,$04,$01,$04,$00
dat_200292:
	dc.b $00,$ae,$00,$4c,$00,$2a
dat_200298:
	dc.b $27,$03,$04,$02,$04,$01,$04,$00
dat_2002a0:
	dc.b $00,$4c,$00,$2a,$00,$ae
dat_2002a6:
	dc.b $28,$03,$04,$02,$04,$01,$04,$00
dat_2002ae:
	dc.b $00,$2a,$00,$ae,$00,$4c
dat_2002b4:
	dc.b $31,$04,$03,$00,$03,$01,$03,$00
	dc.b $54,$01
dat_2002be:
	dc.b $00,$ee,$00,$00
dat_2002c2:
	dc.b $32,$05,$0c,$00,$03,$01,$03,$00
	dc.b $03,$01,$48,$00
dat_2002ce:
	dc.b $00,$00,$00,$ee
dat_2002d2:
	dc.b $33,$05,$18,$00,$03,$01,$03,$00
	dc.b $03,$01,$3c,$00
dat_2002de:
	dc.b $00,$00,$00,$ee
dat_2002e2:
	dc.b $31,$06,$13,$00,$13,$01,$13,$02
	dc.b $13,$03,$13,$02,$13,$01
dat_2002f0:
	dc.b $00,$0e,$00,$08,$00,$04,$00,$00
dat_2002f8:
	dc.b $32,$02,$02,$00,$02,$01
dat_2002fe:
	dc.b $00,$e0,$00,$00
dat_200302:
	.incbin 770, 38
dat_200328:
	dc.b $00,$8e,$00,$00
dat_20032c:
	.incbin 812, 18
dat_20033e:
	dc.b $00,$0e,$00,$0a,$00,$06,$00,$00
dat_200346:
	.incbin 838, 18
dat_200358:
	dc.b $00,$8e,$00,$6c,$00,$46,$00,$22
	dc.b $00,$00
dat_200362:
	dc.b $33,$02,$02,$00,$02,$01
dat_200368:
	.incbin 872, 130

sub_2003ea:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2003fc:
	move.w d1,(a0)+
	dbf d0,loc_2003fc
	move.w #$15,d4
loc_200406:
	move.b #$12,($f62a).w
	bsr.w sub_200a38
	bsr.s sub_20041c
	bsr.w sub_202776
	dbf d4,loc_200406
	rts

sub_20041c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200432:
	bsr.s sub_200460
	dbf d0,loc_200432
	cmpi.b #$1,($ff1506).l
	bne.s loc_20045e
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200458:
	bsr.s sub_200460
	dbf d0,loc_200458
loc_20045e:
	rts

sub_200460:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200488
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_200476
	move.w d1,(a0)+
	rts
loc_200476:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200484
	move.w d1,(a0)+
	rts
loc_200484:
	addq.w #$2,(a0)+
	rts
loc_200488:
	addq.w #$2,a0
	rts
	.incbin 1164, 44

sub_2004b8:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004c2:
	move.b #$12,($f62a).w
	bsr.w sub_200a38
	bsr.s sub_2004d8
	bsr.w sub_202776
	dbf d4,loc_2004c2
	rts

sub_2004d8:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004e8:
	bsr.s sub_200506
	dbf d0,loc_2004e8
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004fe:
	bsr.s sub_200506
	dbf d0,loc_2004fe
	rts

sub_200506:
	move.w (a0),d2
	beq.s loc_200532
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200516
	subq.w #$2,(a0)+
	rts
loc_200516:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200524
	subi.w #$20,(a0)+
	rts
loc_200524:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200532
	subi.w #$200,(a0)+
	rts
loc_200532:
	addq.w #$2,a0
	rts

sub_200536:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200550:
	move.w d1,(a0)+
	dbf d0,loc_200550
	move.w #$15,d4
loc_20055a:
	move.b #$12,($f62a).w
	bsr.w sub_200a38
	bsr.s sub_200570
	bsr.w sub_202776
	dbf d4,loc_20055a
	rts

sub_200570:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200586:
	bsr.s sub_2005b4
	dbf d0,loc_200586
	cmpi.b #$1,($ff1506).l
	bne.s loc_2005b2
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2005ac:
	bsr.s sub_2005b4
	dbf d0,loc_2005ac
loc_2005b2:
	rts

sub_2005b4:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2005e0
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2005cc
	cmp.w d2,d1
	bcs.s loc_2005cc
	move.w d1,(a0)+
	rts
loc_2005cc:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2005dc
	cmp.w d2,d1
	bcs.s loc_2005dc
	move.w d1,(a0)+
	rts
loc_2005dc:
	subq.w #$2,(a0)+
	rts
loc_2005e0:
	addq.w #$2,a0
	rts

sub_2005e4:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2005ee:
	move.b #$12,($f62a).w
	bsr.w sub_200a38
	bsr.s sub_200604
	bsr.w sub_202776
	dbf d4,loc_2005ee
	rts

sub_200604:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200614:
	bsr.s sub_200632
	dbf d0,loc_200614
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20062a:
	bsr.s sub_200632
	dbf d0,loc_20062a
	rts

sub_200632:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20066e
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20064a
	addq.w #$2,(a0)+
	rts
loc_20064a:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20065c
	addi.w #$20,(a0)+
	rts
loc_20065c:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20066e
	addi.w #$200,(a0)+
	rts
loc_20066e:
	addq.w #$2,a0
	rts

sub_200672:
	lea (dat_2006de).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200686:
	move.l (a2)+,(a3)+
	dbf d7,loc_200686
	rts

sub_20068e:
	lea (dat_2006de).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20069e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20069e
	rts
	.incbin 1702, 56
dat_2006de:
	.incbin 1758, 858

sub_200a38:
	move.w #$2300,sr
loc_200a3c:
	tst.b ($f62a).w
	bne.s loc_200a3c
	rts

sub_200a44:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200a5c(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200a5c(pc,d0.w),d0
	rts
dat_200a5c:
	.incbin 2652, 640

sub_200cdc:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200d38
	move.w d2,d4
	tst.w d3
	bpl.w loc_200cf6
	neg.w d3
loc_200cf6:
	tst.w d4
	bpl.w loc_200cfe
	neg.w d4
loc_200cfe:
	cmp.w d3,d4
	bcc.w loc_200d10
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200d42(pc,d4.w),d0
	bra.s loc_200d1a
loc_200d10:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200d42(pc,d3.w),d0
loc_200d1a:
	tst.w d1
	bpl.w loc_200d26
	neg.w d0
	addi.w #$80,d0
loc_200d26:
	tst.w d2
	bpl.w loc_200d32
	neg.w d0
	addi.w #$100,d0
loc_200d32:
	movem.l (a7)+,d3-d4
	rts
loc_200d38:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200d42:
	.incbin 3394, 258

sub_200e44:
	btst.b #$3,$22(a0)
	beq.s loc_200e58
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200e58:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200e7a
	move.b $26(a0),d0
	bpl.s loc_200e74
	subq.b #$1,d0
loc_200e74:
	addi.b #$20,d0
	bra.s loc_200e86
loc_200e7a:
	move.b $26(a0),d0
	bpl.s loc_200e82
	addq.b #$1,d0
loc_200e82:
	addi.b #$1f,d0
loc_200e86:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_201110
	cmpi.b #$80,d0
	beq.w loc_20106e
	cmpi.b #$c0,d0
	beq.w loc_200fd2
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
	bsr.w sub_20139a
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
	bsr.w sub_20139a
	move.w (a7)+,d0
	bsr.w sub_200fa6
	tst.w d1
	beq.s loc_200f14
	bpl.s loc_200f16
	cmpi.w #$fff2,d1
	blt.s loc_200f3c
	add.w d1,$c(a0)
loc_200f14:
	rts
loc_200f16:
	cmpi.w #$e,d1
	bgt.s loc_200f22
loc_200f1c:
	add.w d1,$c(a0)
	rts
loc_200f22:
	tst.b $38(a0)
	bne.s loc_200f1c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f3c:
	rts
	.incbin 3902, 34
loc_200f60:
	rts
	.incbin 3938, 68

sub_200fa6:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200fb4
	move.b ($f768).w,d2
	move.w d0,d1
loc_200fb4:
	btst.l #$0,d2
	bne.s loc_200fc0
	move.b d2,$26(a0)
	rts
loc_200fc0:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200fd2:
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
	bsr.w sub_20150a
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
	bsr.w sub_20150a
	move.w (a7)+,d0
	bsr.w sub_200fa6
	tst.w d1
	beq.s loc_201046
	bpl.s loc_201048
	cmpi.w #$fff2,d1
	blt.w loc_200f60
	add.w d1,$8(a0)
loc_201046:
	rts
loc_201048:
	cmpi.w #$e,d1
	bgt.s loc_201054
loc_20104e:
	add.w d1,$8(a0)
	rts
loc_201054:
	tst.b $38(a0)
	bne.s loc_20104e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_20106e:
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
	bsr.w sub_20139a
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
	bsr.w sub_20139a
	move.w (a7)+,d0
	bsr.w sub_200fa6
	tst.w d1
	beq.s loc_2010e8
	bpl.s loc_2010ea
	cmpi.w #$fff2,d1
	blt.w loc_200f3c
	sub.w d1,$c(a0)
loc_2010e8:
	rts
loc_2010ea:
	cmpi.w #$e,d1
	bgt.s loc_2010f6
loc_2010f0:
	sub.w d1,$c(a0)
	rts
loc_2010f6:
	tst.b $38(a0)
	bne.s loc_2010f0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_201110:
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
	bsr.w sub_20150a
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
	bsr.w sub_20150a
	move.w (a7)+,d0
	bsr.w sub_200fa6
	tst.w d1
	beq.s loc_20118a
	bpl.s loc_20118c
	cmpi.w #$fff2,d1
	blt.w loc_200f60
	sub.w d1,$8(a0)
loc_20118a:
	rts
loc_20118c:
	cmpi.w #$e,d1
	bgt.s loc_201198
loc_201192:
	sub.w d1,$8(a0)
	rts
loc_201198:
	tst.b $38(a0)
	bne.s loc_201192
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_2011b2:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_2011c8
	andi.w #$380,d0
loc_2011c8:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_201228
	bmi.s loc_20122c
	cmpi.b #$5,($ff1506).l
	beq.s loc_2011f8
	cmpi.b #$6,($ff1506).l
	bne.s loc_2011fe
loc_2011f8:
	andi.w #$7fff,$2(a0)
loc_2011fe:
	cmpi.b #$4,($ff1506).l
	bne.s loc_20120e
	bclr.b #$6,$1(a0)
loc_20120e:
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
loc_201228:
	movea.l d1,a1
	rts
loc_20122c:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201294
	btst.b #$6,$1(a0)
	bne.s loc_20125a
	cmpi.b #$14,d1
	bne.w loc_20137e
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20137e
loc_20125a:
	cmpi.b #$15,d1
	bne.s loc_201268
	move.w #$60,d1
	bra.w loc_20137e
loc_201268:
	cmpi.b #$1e,d1
	bne.s loc_201276
	move.w #$61,d1
	bra.w loc_20137e
loc_201276:
	cmpi.b #$1f,d1
	bne.s loc_201284
	move.w #$62,d1
	bra.w loc_20137e
loc_201284:
	cmpi.b #$32,d1
	bne.w loc_20137e
	move.w #$63,d1
	bra.w loc_20137e
loc_201294:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2012fa
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2012e4
	cmpi.b #$6,d1
	beq.s loc_2012e4
	tst.b ($ff1956).l
	beq.w loc_20137e
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2012f4
	cmpi.b #$3c,d1
	beq.s loc_2012f4
	cmpi.b #$37,d1
	beq.s loc_2012f4
	cmpi.b #$2f,d1
	beq.s loc_2012f4
	cmpi.b #$16,d1
	beq.s loc_2012f4
	bra.w loc_20137e
loc_2012e4:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20137e
loc_2012f4:
	addq.b #$1,d1
	bra.w loc_20137e
loc_2012fa:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20136a
	cmpi.b #$3,$0(a0)
	bcc.w loc_20137e
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20137e
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20132e
	move.w #$6a,d1
	bra.s loc_20137e
loc_20132e:
	cmpi.b #$48,d1
	bne.s loc_20133a
	move.w #$6b,d1
	bra.s loc_20137e
loc_20133a:
	cmpi.b #$4a,d1
	bne.s loc_201346
	move.w #$6c,d1
	bra.s loc_20137e
loc_201346:
	cmpi.b #$10,d1
	bne.s loc_201352
	move.w #$6d,d1
	bra.s loc_20137e
loc_201352:
	cmpi.b #$63,d1
	bne.s loc_20135e
	move.w #$6e,d1
	bra.s loc_20137e
loc_20135e:
	cmpi.b #$43,d1
	bne.s loc_20137e
	move.w #$6f,d1
	bra.s loc_20137e
loc_20136a:
	btst.b #$6,$1(a0)
	beq.s loc_20137e
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20137e
	move.w #$51,d1
loc_20137e:
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

sub_20139a:
	bsr.w sub_2011b2
	cmpi.l #$210000,d1
	beq.s loc_2013b4
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013b4
	btst.l d5,d4
	bne.s loc_2013c2
loc_2013b4:
	add.w a3,d2
	bsr.w sub_20145a
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2013c2:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013b4
	lea (dat_234034).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2013e8
	not.w d1
	neg.b (a4)
loc_2013e8:
	btst.l #$c,d4
	beq.s loc_2013f8
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013f8:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_234134).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201414
	neg.w d0
loc_201414:
	tst.w d0
	beq.s loc_2013b4
	bmi.s loc_201430
	cmpi.b #$10,d0
	beq.s loc_20144c
loc_201420:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201430:
	cmpa.w #$10,a3
	bne.s loc_201440
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201420
loc_201440:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013b4
loc_20144c:
	sub.w a3,d2
	bsr.w sub_20145a
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_20145a:
	bsr.w sub_2011b2
	cmpi.l #$210000,d1
	beq.s loc_201474
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201474
	btst.l d5,d4
	bne.s loc_201482
loc_201474:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201482:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201474
	lea (dat_234034).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2014a8
	not.w d1
	neg.b (a4)
loc_2014a8:
	btst.l #$c,d4
	beq.s loc_2014b8
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2014b8:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_234134).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2014d4
	neg.w d0
loc_2014d4:
	tst.w d0
	beq.s loc_201474
	bmi.s loc_2014ea
loc_2014da:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2014ea:
	cmpa.w #$10,a3
	bne.s loc_2014fa
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2014da
loc_2014fa:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201474
	not.w d1
	rts

sub_20150a:
	bsr.w sub_2011b2
	cmpi.l #$210000,d1
	beq.s loc_201524
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201524
	btst.l d5,d4
	bne.s loc_201532
loc_201524:
	add.w a3,d3
	bsr.w sub_2015ba
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201532:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201524
	lea (dat_234034).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201560
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201560:
	btst.l #$b,d4
	beq.s loc_201568
	neg.b (a4)
loc_201568:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235134).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201584
	neg.w d0
loc_201584:
	tst.w d0
	beq.s loc_201524
	bmi.s loc_2015a0
	cmpi.b #$10,d0
	beq.s loc_2015ac
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2015a0:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201524
loc_2015ac:
	sub.w a3,d3
	bsr.w sub_2015ba
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2015ba:
	bsr.w sub_2011b2
	cmpi.l #$210000,d1
	beq.s loc_2015d4
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2015d4
	btst.l d5,d4
	bne.s loc_2015e2
loc_2015d4:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2015e2:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2015d4
	lea (dat_234034).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201610
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201610:
	btst.l #$b,d4
	beq.s loc_201618
	neg.b (a4)
loc_201618:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_235134).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201634
	neg.w d0
loc_201634:
	tst.w d0
	beq.s loc_2015d4
	bmi.s loc_20164a
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20164a:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2015d4
	not.w d1
	rts

sub_20165a:
	rts
	.incbin 5724, 152
loc_2016f4:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201714
	tst.b ($ff0f01).l
	bne.s loc_201714
	move.b #$1,($ff156a).l
loc_201714:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_20177a
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207308
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_20177a
	move.b #$1,($ff1508).l
loc_20177a:
	bset.b #$7,($f600).w
	bsr.w sub_202768
	tst.b ($ff156e).l
	bne.s loc_2017a0
	btst.b #$7,($ff152e).l
	beq.s loc_2017d6
	bset.b #$0,($ff151d).l
	beq.s loc_2017ac
loc_2017a0:
	bsr.w sub_2005e4
	bclr.b #$0,($ff151d).l
loc_2017ac:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201846
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2017d4
	bclr.b #$7,($ff152e).l
loc_2017d4:
	rts
loc_2017d6:
	bset.b #$0,($ff151d).l
	beq.s loc_2017e4
	bsr.w sub_2004b8
loc_2017e4:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201800
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201828
loc_201800:
	tst.b ($ff1508).l
	bne.s loc_201846
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201828:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201830:
	move.l #$0,(a1)+
	dbf d6,loc_201830
	move.b #$c,($f62a).w
	bsr.w sub_200a38
	rts
loc_201846:
	cmpi.w #$800,($f78e).w
	bne.s loc_201864
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201864:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20187a
	btst.b #$7,($ff152e).l
	beq.s loc_201880
loc_20187a:
	move.l #$eee0eee,d0
loc_201880:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201888:
	move.l d0,(a1)+
	dbf d6,loc_201888
loc_20188e:
	move.b #$c,($f62a).w
	bsr.w sub_200a38
	bsr.w sub_202776
	bne.s loc_20188e
	tst.l ($f680).w
	bsr.w sub_201d34
	moveq #$0,d0
	lea (dat_20ecaa).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2018b8
	bsr.w sub_20287c
loc_2018b8:
	moveq #$1,d0
	bsr.w sub_20287c
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2018d4:
	move.l d0,(a1)+
	dbf d1,loc_2018d4
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2018e6:
	move.l d0,(a1)+
	dbf d1,loc_2018e6
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2018f6:
	move.l d0,(a1)+
	dbf d1,loc_2018f6
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201908:
	move.l d0,(a1)+
	dbf d1,loc_201908
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201918:
	move.l d0,(a1)+
	dbf d1,loc_201918
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201928:
	move.l d0,(a1)+
	dbf d1,loc_201928
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202452
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
	bsr.w sub_20068e
	moveq #$3,d0
	bsr.w sub_200672
	bsr.w sub_202ade
	bsr.w sub_202c32
	bset.b #$2,($f754).w
	bsr.w sub_20364e
	bsr.w sub_203554
	jsr (sub_20165a).l
	bsr.w sub_201c6e
loc_2019a8:
	move.b #$c,($f62a).w
	bsr.w sub_200a38
	bsr.w sub_202776
	bne.s loc_2019a8
	tst.l ($f680).w
	bne.s loc_2019a8
	bsr.w sub_201bfa
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201d94
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201a0c
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201a0c:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201a4e
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201a4e:
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
	jsr (sub_20eb32).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201ade
loc_201ad8:
	bsr.w sub_200536
	bra.s loc_201aec
loc_201ade:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201ad8
	bsr.w sub_2003ea
loc_201aec:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201afa:
	move.b #$8,($f62a).w
	bsr.w sub_200a38
	tst.b ($f7cc).w
	bne.s loc_201b18
	btst.b #$7,($f605).w
	beq.s loc_201b18
	eori.b #$1,($f63a).w
loc_201b18:
	btst.b #$0,($f63a).w
	beq.w loc_201b8a
	bsr.w sub_201df8
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201b68
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201afa
	subq.b #$1,($ff1508).l
	bpl.s loc_201b4a
	clr.b ($ff1508).l
loc_201b4a:
	move.w #$e,d0
	jsr (sub_205a54).l
	bsr.w sub_207308
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201b76
loc_201b68:
	andi.b #$70,d0
	beq.w loc_201afa
	clr.b ($ff1508).l
loc_201b76:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2016f4
loc_201b8a:
	bsr.w sub_201e3e
	addq.w #$1,($ff1504).l
	jsr (sub_20731e).l
	jsr (sub_20378e).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2016f4
	tst.w ($ff1502).l
	bne.w loc_2016f4
	tst.w ($ff1906).l
	bne.s loc_201bd2
	cmpi.b #$6,($d024).w
	bcs.s loc_201bd2
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201bd6
loc_201bd2:
	bsr.w sub_202c32
loc_201bd6:
	jsr (sub_203938).l
	tst.w ($ff190e).l
	bne.s loc_201be8
	bsr.w sub_200184
loc_201be8:
	jsr (sub_20bf24).l
	bsr.w sub_202776
	bsr.w sub_201ca0
	bra.w loc_201afa

sub_201bfa:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201c12
	move.w #$78,$30(a1)
loc_201c12:
	rts
	dc.b $43,$f9,$00,$ff,$19,$00,$70,$00
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.b $0(a1,d0.w),d0
	beq.s loc_201c6c
	subq.b #$1,d0
	lea ($d800).w,a2
	moveq #$0,d1
loc_201c34:
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
	dbf d0,loc_201c34
loc_201c6c:
	rts

sub_201c6e:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201c80(pc,d0.w),($f796).w
	rts
dat_201c80:
	.incbin 7296, 32

sub_201ca0:
	subq.b #$1,($ff1910).l
	bpl.s loc_201cbe
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201cbe:
	subq.b #$1,($ff1912).l
	bpl.s loc_201cdc
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201cdc:
	subq.b #$1,($ff1914).l
	bpl.s loc_201d04
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201d04
	move.b #$0,($ff1915).l
loc_201d04:
	tst.b ($ff1916).l
	beq.s loc_201d32
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201d32:
	rts

sub_201d34:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201d56
	cmpi.b #$2,d0
	bne.s loc_201d56
	add.b ($ff156a).l,d0
loc_201d56:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201d6e(pc,d1.w),d0
	jmp (sub_205a54).l
dat_201d6e:
	.incbin 7534, 38

sub_201d94:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2338b4).l,a1
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

sub_201df8:
	move.w #$ab,d0
	jsr (sub_202540).l
	bset.b #$7,($f63a).w
	bne.s loc_201e3c
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e22
loc_201e18:
	move.w #$d5,d0
	jmp (sub_205a54).l
loc_201e22:
	tst.b ($ff151f).l
	bne.s loc_201e18
	tst.b ($ff1520).l
	bne.s loc_201e18
	move.w #$90,d0
	jmp (sub_205a54).l
loc_201e3c:
	rts

sub_201e3e:
	bclr.b #$7,($f63a).w
	beq.s loc_201e78
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e5e
loc_201e54:
	move.w #$d6,d0
	jmp (sub_205a54).l
loc_201e5e:
	tst.b ($ff151f).l
	bne.s loc_201e54
	tst.b ($ff1520).l
	bne.s loc_201e54
	move.w #$91,d0
	jmp (sub_205a54).l
loc_201e78:
	rts
loc_201e7a:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201f06
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201eb6
	move.w #$700,d0
loc_201eb2:
	dbf d0,loc_201eb2
loc_201eb6:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201eec(pc,d0.w),d0
	jsr dat_201eec(pc,d0.w)
loc_201ecc:
	jsr (sub_202564).l
	tst.b ($f63a).w
	bne.s loc_201ee0
	bsr.w sub_202318
	bsr.w sub_202306
loc_201ee0:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201eec:
	.incbin 7916, 26
loc_201f06:
	tst.b ($ff1957).l
	beq.w loc_201ecc
	cmpi.b #$2,($ff1506).l
	bne.w loc_201ecc
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201f34
	move.w #$700,d0
loc_201f30:
	dbf d0,loc_201f30
loc_201f34:
	move.w #$1,($f6fc).w
	jsr (sub_2024d8).l
	tst.b ($f64e).w
	bne.s loc_201f6c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f90
loc_201f6c:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f90:
	move.w ($f624).w,(a5)
	jsr (sub_2024f4).l
	bra.w loc_201ecc
	.incbin 8094, 60
	jsr (sub_2024d8).l
	bsr.w sub_202374
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
	bsr.w sub_205976
	tst.b ($f767).w
	beq.s loc_202088
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202088:
	jsr (sub_20eb32).l
	jsr (sub_2024f4).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20314a
	bsr.w sub_2027e8
	jmp (loc_209a54).l
	dc.b $4e,$75
	jsr (sub_2024d8).l
	bsr.w sub_202374
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
	jsr (sub_2024f4).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20314a
	bra.w loc_2027cc
	.incbin 8544, 16
	bsr.w sub_20225c
	cmpi.b #$1,($ff1903).l
	bne.s loc_202192
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_202192:
	move.w ($f624).w,(a5)
	bra.w loc_2027cc
	.incbin 8602, 194

sub_20225c:
	jsr (sub_2024d8).l
	bsr.w sub_202374
	tst.b ($f64e).w
	bne.s loc_202292
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_2022b6
loc_202292:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_2022b6:
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
	jmp (sub_2024f4).l
	dc.b $4e,$73

sub_202306:
	tst.b ($d02a).w
	bne.s loc_202316
	tst.w ($f786).w
	beq.s loc_202316
	addq.w #$1,($f786).w
loc_202316:
	rts

sub_202318:
	tst.w ($f780).w
	beq.s loc_202322
	addq.w #$1,($f780).w
loc_202322:
	tst.w ($f782).w
	beq.s loc_20232c
	addq.w #$1,($f782).w
loc_20232c:
	rts
	.incbin 9006, 42

sub_202358:
	bsr.w sub_2024d8
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2024f4

sub_202374:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202382
	addq.w #$2,a1

sub_202382:
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

sub_2023b0:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20242c).l,a2
	moveq #$12,d7
loc_2023c4:
	move.w (a2)+,(a0)
	dbf d7,loc_2023c4
	move.w (dat_20242e).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2023ea:
	move.w d0,(a1)
	dbf d7,loc_2023ea
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20241c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20241c
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20242c:
	dc.b $80,$04
dat_20242e:
	.incbin 9262, 36

sub_202452:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202474:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202474
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2024a2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024a2
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2024c0:
	move.l d0,(a1)+
	dbf d1,loc_2024c0
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2024d0:
	move.l d0,(a1)+
	dbf d1,loc_2024d0
	rts

sub_2024d8:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2024e8:
	btst.b #$0,($a11100).l
	bne.s loc_2024e8
	rts

sub_2024f4:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9474, 62

sub_202540:
	tst.b ($f00a).w
	bne.s loc_20254c
	move.b d0,($f00a).w
	rts
loc_20254c:
	tst.b ($f00b).w
	bne.s loc_202558
	move.b d0,($f00b).w
	rts
loc_202558:
	tst.b ($f00c).w
	bne.s loc_202562
	move.b d0,($f00c).w
loc_202562:
	rts

sub_202564:
	jsr (sub_2024d8).l
	tst.b ($f00a).w
	beq.s loc_20257e
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20257e:
	tst.b ($f00b).w
	beq.s loc_202592
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202592:
	tst.b ($f00c).w
	beq.s loc_2025a6
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2025a6:
	bra.w sub_2024f4
	.incbin 9642, 32

sub_2025ca:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20268c).l,a3
	lea ($c00000).l,a4
	bra.s loc_2025e6

sub_2025dc:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2026a2).l,a3
loc_2025e6:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2025f4
	adda.w #$a,a3
loc_2025f4:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2026b8
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202614
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202614:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202660
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20263c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20263c:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20264a:
	lsr.w #$4,d0
loc_20264c:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20265a
	jmp (a3)

sub_202656:
	moveq #$0,d4
	moveq #$8,d3
loc_20265a:
	dbf d0,loc_20264c
	bra.s sub_202614
loc_202660:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20266e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20266e:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20264a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20264a
loc_20268c:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202656
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202656
	rts
dat_2026a2:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202656
	rts

sub_2026b8:
	move.b (a0)+,d0
loc_2026ba:
	cmpi.b #$ff,d0
	bne.s loc_2026c2
	rts
loc_2026c2:
	move.w d0,d7
loc_2026c4:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2026ba
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
	bne.s loc_2026f2
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2026c4
loc_2026f2:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2026fe:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2026fe
	bra.s loc_2026c4

sub_20270a:
	movem.l a1-a2,-(a7)
	lea (dat_20ecba).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202722:
	tst.l (a2)
	beq.s loc_20272a
	addq.w #$6,a2
	bra.s loc_202722
loc_20272a:
	move.w (a1)+,d0
	bmi.s loc_202736
loc_20272e:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20272e
loc_202736:
	movem.l (a7)+,a1-a2
	rts
loc_20273c:
	movem.l a1-a2,-(a7)
	lea (dat_20ecba).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202768
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202762
loc_20275a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20275a
loc_202762:
	movem.l (a7)+,a1-a2
	rts

sub_202768:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20276e:
	clr.l (a2)+
	dbf d0,loc_20276e
	rts

sub_202776:
	tst.l ($f680).w
	beq.s loc_2027ca
	tst.w ($f6f8).w
	bne.s loc_2027ca
	movea.l ($f680).w,a0
	lea (loc_20268c).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202798
	adda.w #$a,a3
loc_202798:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2026b8
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
loc_2027ca:
	rts
loc_2027cc:
	tst.w ($f6f8).w
	beq.w loc_20286a
loc_2027d4:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202806

sub_2027e8:
	tst.w ($f6f8).w
	beq.s loc_20286a
	tst.b ($f744).w
	bne.s loc_2027d4
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202806:
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
loc_20283a:
	movea.w #$8,a5
	bsr.w sub_202656
	subq.w #$1,($f6f8).w
	beq.s loc_20286c
	subq.w #$1,($f6fa).w
	bne.s loc_20283a
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20286a:
	rts
loc_20286c:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202872:
	move.l $6(a0),(a0)+
	dbf d0,loc_202872
	rts

sub_20287c:
	lea (dat_20ecba).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20288e:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2025ca
	dbf d1,loc_20288e
	rts
	.incbin 10414, 560

sub_202ade:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202b3a).l,a0
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
	bra.w loc_202b66
dat_202b3a:
	dc.b $00,$04,$00,$00,$1e,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202b46:
	.incbin 11078, 32
loc_202b66:
	tst.b ($ff1522).l
	beq.s loc_202b86
	jsr (sub_2065e0).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202b84
	moveq #$0,d0
loc_202b84:
	bra.s loc_202bc2
loc_202b86:
	lea (dat_202bfe).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202ba8
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202b46).l,a1
	adda.w d0,a1
	bra.s loc_202bb2
loc_202ba8:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202bb2:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202bc2:
	subi.w #$a0,d1
	bcc.s loc_202bca
	moveq #$0,d1
loc_202bca:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202bd4
	move.w d2,d1
loc_202bd4:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202be0
	moveq #$0,d0
loc_202be0:
	cmp.w ($f72e).w,d0
	blt.s loc_202bea
	move.w ($f72e).w,d0
loc_202bea:
	move.w d0,($f704).w
	bsr.w sub_202c06
	lea (dat_202c02).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202bfe:
	dc.b $00,$30,$06,$a0
dat_202c02:
	dc.b $7f,$7f,$7f,$7f

sub_202c06:
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

sub_202c32:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202c3e
	rts
loc_202c3e:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202dc0
	bsr.w sub_202e60
	bsr.w sub_2036f6
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_2030ea
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_2030b6
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_203082
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_203052
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
	bsr.w sub_202d3a
	move.w ($f708).w,d0
	neg.w d0
	moveq #$f,d6
loc_202ce2:
	move.w d0,(a1)+
	dbf d6,loc_202ce2
	move.w ($f710).w,d0
	neg.w d0
	moveq #$1b,d6
loc_202cf0:
	move.w d0,(a1)+
	dbf d6,loc_202cf0
	bsr.w sub_202d3a
	move.w ($f708).w,d0
	neg.w d0
	moveq #$b,d6
loc_202d02:
	move.w d0,(a1)+
	dbf d6,loc_202d02
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202d10:
	move.w d0,(a1)+
	dbf d6,loc_202d10
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202d7e
dat_202d34:
	dc.b $03,$04,$02,$00,$00,$00

sub_202d3a:
	move.w ($f718).w,d0
	move.w ($f710).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$5,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$4,d6
	adda.w #$1c,a1
loc_202d5e:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d34(pc,d6.w),d5
loc_202d68:
	move.w d0,-(a1)
	dbf d5,loc_202d68
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d5e
	adda.w #$1c,a1
	rts
loc_202d7e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202d8c(pc,d2.w)
loc_202d8a:
	move.w (a2)+,d0
loc_202d8c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202d8a
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
	dbf d1,loc_202d8a
	rts

sub_202dc0:
	move.w ($f700).w,d4
	bsr.s sub_202df4
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202df2
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202dec
	bset.b #$2,($f754).w
	rts
loc_202dec:
	bset.b #$3,($f754).w
loc_202df2:
	rts

sub_202df4:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202e06
	bcs.s loc_202e36
	bra.s loc_202e0c
loc_202e06:
	clr.w ($f73a).w
	rts
loc_202e0c:
	cmpi.w #$10,d0
	blt.s loc_202e16
	move.w #$10,d0
loc_202e16:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202e24
	move.w ($f72a).w,d0
loc_202e24:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202e36:
	cmpi.w #$fff0,d0
	bge.s loc_202e40
	move.w #$fff0,d0
loc_202e40:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202e24
	move.w ($f728).w,d0
	bra.s loc_202e24
	.incbin 11856, 16

sub_202e60:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202e74
	subq.w #$5,d0
loc_202e74:
	btst.b #$1,$22(a6)
	beq.s loc_202e94
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ee0
	subi.w #$40,d0
	bcc.s loc_202ee0
	tst.b ($f75c).w
	bne.s loc_202ef2
	bra.s loc_202ea0
loc_202e94:
	sub.w ($f73e).w,d0
	bne.s loc_202ea6
	tst.b ($f75c).w
	bne.s loc_202ef2
loc_202ea0:
	clr.w ($f73c).w
	rts
loc_202ea6:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ece
	move.w $14(a6),d1
	bpl.s loc_202eb6
	neg.w d1
loc_202eb6:
	cmpi.w #$800,d1
	bcc.s loc_202ee0
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202f40
	cmpi.w #$fffa,d0
	blt.s loc_202f0a
	bra.s loc_202ef8
loc_202ece:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202f40
	cmpi.w #$fffe,d0
	blt.s loc_202f0a
	bra.s loc_202ef8
loc_202ee0:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202f40
	cmpi.w #$fff0,d0
	blt.s loc_202f0a
	bra.s loc_202ef8
loc_202ef2:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202ef8:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202f4a
	bra.w loc_202f16
loc_202f0a:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f16:
	cmp.w ($f72c).w,d1
	bgt.s loc_202f6e
	cmpi.w #$ff00,d1
	bgt.s loc_202f3a
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f6e
loc_202f3a:
	move.w ($f72c).w,d1
	bra.s loc_202f6e
loc_202f40:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f4a:
	cmp.w ($f72e).w,d1
	blt.s loc_202f6e
	subi.w #$800,d1
	bcs.s loc_202f6a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f6e
loc_202f6a:
	move.w ($f72e).w,d1
loc_202f6e:
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
	bne.s loc_202fb0
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202faa
	bset.b #$0,($f754).w
	rts
loc_202faa:
	bset.b #$1,($f754).w
loc_202fb0:
	rts
	.incbin 12210, 160

sub_203052:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_203080
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_20307a
	bset.b #$0,($f756).w
	rts
loc_20307a:
	bset.b #$1,($f756).w
loc_203080:
	rts

sub_203082:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030b4
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030ae
	bset.b d6,($f756).w
	bra.s loc_2030b4
loc_2030ae:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_2030b4:
	rts

sub_2030b6:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_2030e8
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_2030e2
	bset.b d6,($f758).w
	bra.s loc_2030e8
loc_2030e2:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_2030e8:
	rts

sub_2030ea:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_20311c
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203116
	bset.b d6,($f75a).w
	bra.s loc_20311c
loc_203116:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_20311c:
	rts
	.incbin 12574, 44

sub_20314a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203208
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2032ee
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2032f0
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203206
	bclr.b #$0,(a2)
	beq.s loc_2031bc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20351c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f2
loc_2031bc:
	bclr.b #$1,(a2)
	beq.s loc_2031d6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20351c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f2
loc_2031d6:
	bclr.b #$2,(a2)
	beq.s loc_2031ec
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20351c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203348
loc_2031ec:
	bclr.b #$3,(a2)
	beq.s loc_203206
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20351c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203348
loc_203206:
	rts

sub_203208:
	lea (dat_2035d4).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203224
	bclr.b #$1,(a2)
	beq.s loc_20326e
	move.w #$e0,d4
loc_203224:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20329e(pc,d0.w),a3
	beq.s loc_203256
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20351c
	movem.l (a7)+,d4-d5
	bsr.w sub_2032f2
	movea.l (a7)+,a0
	bra.s loc_20326e
loc_203256:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20351e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20331e
	movea.l (a7)+,a0
loc_20326e:
	tst.b (a2)
	bne.s loc_203274
	rts
loc_203274:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203288
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203288:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2032ae
dat_20329e:
	.incbin 12958, 16
loc_2032ae:
	moveq #$f,d6
	move.l #$800000,d7
loc_2032b6:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2032e2
	btst.b d0,(a2)
	beq.s loc_2032e2
	add.w d0,d0
	movea.l dat_20329e(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f4
	movem.l (a7)+,d4-d5
	bsr.w sub_20351c
	bsr.w sub_203376
	movem.l (a7)+,d4-d5/a0
loc_2032e2:
	addi.w #$10,d4
	dbf d6,loc_2032b6
	clr.b (a2)
	rts

sub_2032ee:
	rts

sub_2032f0:
	rts

sub_2032f2:
	moveq #$15,d6

sub_2032f4:
	move.l #$800000,d7
	move.l d0,d1
loc_2032fc:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f4
	move.l d1,d0
	bsr.w sub_203376
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2032fc
	rts

sub_20331e:
	move.l #$800000,d7
	move.l d0,d1
loc_203326:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f6
	move.l d1,d0
	bsr.w sub_203376
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203326
	rts

sub_203348:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203352:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f4
	move.l d1,d0
	bsr.w sub_203376
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203352
	rts

sub_203376:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033b2
	btst.b #$3,(a0)
	bne.s loc_203392
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203392:
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
loc_2033b2:
	btst.b #$3,(a0)
	bne.s loc_2033d4
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
loc_2033d4:
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

sub_2033f4:
	add.w (a3),d5

sub_2033f6:
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
	beq.s loc_203444
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
loc_203444:
	rts
	.incbin 13382, 214

sub_20351c:
	add.w (a3),d5

sub_20351e:
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
	.incbin 13624, 28

sub_203554:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20357e
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2035a6

sub_20357e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203582:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20351c
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2032f4
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203582
	rts
loc_2035a6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035aa:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2035d4).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203616
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2035aa
	rts
dat_2035d4:
	.incbin 13780, 50
dat_203606:
	.incbin 13830, 16

sub_203616:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203606(pc,d0.w),a3
	beq.s loc_203638
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20351c
	movem.l (a7)+,d4-d5
	bsr.w sub_2032f2
	bra.s loc_20364c
loc_203638:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20351e
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20331e
loc_20364c:
	rts

sub_20364e:
	moveq #$0,d0
	lea (dat_20ecaa).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2025dc
	movea.l (a2)+,a0
	bsr.w sub_2036a8
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200672
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203692
	jmp (loc_20bf00).l
loc_203692:
	btst.b #$1,($ff151c).l
	beq.s loc_2036a6
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2036a6
	bsr.w sub_20270a
loc_2036a6:
	rts

sub_2036a8:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2036b2:
	move.l d0,(a3)+
	dbf d1,loc_2036b2
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2036c8
	lea ($a040).w,a3
	moveq #$2,d1

sub_2036c8:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2363f0).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2036e2:
	move.w d1,d0
	movea.l a3,a0
loc_2036e6:
	move.b (a1)+,(a0)+
	dbf d0,loc_2036e6
	lea $80(a3),a3
	dbf d2,loc_2036e2
	rts

sub_2036f6:
	lea ($d000).w,a6
	bsr.w sub_203752
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20372c
	bcc.s loc_20372e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203722
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203722:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20372c:
	rts
loc_20372e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203746
	btst.b #$1,$22(a6)
	beq.s loc_203746
	add.w d1,d1
	add.w d1,d1
loc_203746:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_203752:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203764(pc,d0.w),d0
	jmp dat_203764(pc,d0.w)
dat_203764:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 14194, 28

sub_20378e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203796:
	move.b (a0),d0
	beq.s loc_2037ac
	add.w d0,d0
	add.w d0,d0
	lea (dat_203bb0).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2037ac:
	lea $40(a0),a0
	dbf d7,loc_203796
	rts

sub_2037b6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037f4
	bpl.s loc_2037e6
	btst.b #$1,$2c(a0)
	beq.s loc_2037e6
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037f4
loc_2037e6:
	btst.b #$2,$2c(a0)
	bne.s loc_2037f4
	addi.w #$38,$12(a0)
loc_2037f4:
	tst.w $12(a0)
	bmi.s loc_203808
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203808
	move.w #$1000,$12(a0)
loc_203808:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203818:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203854
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203854
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203852
	neg.w d1
loc_203852:
	add.w d1,d0
loc_203854:
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

sub_20386e:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038de
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038fa
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038fa
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038b8
	cmpi.w #$800,d3
	bcs.s loc_2038ca
	subi.w #$800,d3
	bra.s loc_2038ca
loc_2038b8:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038ca
	cmpi.w #$100,d3
	bcc.s loc_2038ca
	addi.w #$800,d3
loc_2038ca:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038fa
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038fa
loc_2038de:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038fa
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038fa:
	rts
	.incbin 14588, 30

sub_20391a:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203920:
	move.l d1,(a1)+
	dbf d0,loc_203920
	rts
dat_203928:
	.incbin 14632, 16

sub_203938:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203944:
	tst.w (a4)
	beq.w loc_203a04
	moveq #$2,d6
loc_20394c:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039fc
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039b2
	movea.l dat_203928(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203996
	cmpi.w #$800,d2
	bcs.s loc_2039a8
	subi.w #$800,d2
	bra.s loc_2039a8
loc_203996:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2039a8
	cmpi.w #$100,d2
	bcc.s loc_2039a8
	addi.w #$800,d2
loc_2039a8:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039d4
loc_2039b2:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039d4
	.incbin 14780, 24
loc_2039d4:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039f2
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039f6
loc_2039f2:
	bsr.w sub_203a26
loc_2039f6:
	bset.b #$7,$1(a0)
loc_2039fc:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20394c
loc_203a04:
	lea $80(a4),a4
	dbf d7,loc_203944
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a1e
	move.l #$0,(a2)
	rts
loc_203a1e:
	move.b #$0,-$5(a2)
	rts

sub_203a26:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a6c
	btst.l #$1,d4
	bne.w loc_203aba
loc_203a38:
	cmpi.b #$50,d5
	beq.s loc_203a6a
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
	bne.s loc_203a64
	addq.w #$1,d0
loc_203a64:
	move.w d0,(a2)+
	dbf d1,loc_203a38
loc_203a6a:
	rts
loc_203a6c:
	btst.l #$1,d4
	bne.w loc_203b00
loc_203a74:
	cmpi.b #$50,d5
	beq.s loc_203ab8
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
	bne.s loc_203ab2
	addq.w #$1,d0
loc_203ab2:
	move.w d0,(a2)+
	dbf d1,loc_203a74
loc_203ab8:
	rts
loc_203aba:
	cmpi.b #$50,d5
	beq.s loc_203afe
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
	bne.s loc_203af8
	addq.w #$1,d0
loc_203af8:
	move.w d0,(a2)+
	dbf d1,loc_203aba
loc_203afe:
	rts
loc_203b00:
	cmpi.b #$50,d5
	beq.s loc_203b52
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
	bne.s loc_203b4c
	addq.w #$1,d0
loc_203b4c:
	move.w d0,(a2)+
	dbf d1,loc_203b00
loc_203b52:
	rts
	.incbin 15188, 92
dat_203bb0:
	.incbin 15280, 274

sub_203cc2:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cd4
	move.w #$0,(a1)
	rts
loc_203cd4:
	tst.w (a1)
	bne.s loc_203cde
	move.b #$1,$1(a1)
loc_203cde:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d28
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d1a
	neg.w $10(a0)
loc_203d1a:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a54
loc_203d28:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d46
	cmpa.w #$d040,a0
	beq.s loc_203d46
	tst.b ($ff1906).l
	beq.s loc_203d46
	jmp (loc_206faa).l
loc_203d46:
	move.b $2a(a0),d0
	beq.s loc_203d70
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d62
	cmpi.b #$2d,d0
	bcs.s loc_203d6c
	move.b #$2d,d0
	bra.s loc_203d6c
loc_203d62:
	cmpi.b #$1e,d0
	bcs.s loc_203d6c
	move.b #$1e,d0
loc_203d6c:
	move.b d0,$2a(a0)
loc_203d70:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d7e(pc,d0.w),d1
	jmp dat_203d7e(pc,d1.w)
dat_203d7e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d88:
	tst.b ($d300).w
	bne.s loc_203dc6
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203dc6:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dee
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dee:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e22:
	tst.b ($ff1506).l
	bne.s loc_203e88
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e88
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e8c
	cmpi.b #$2f,d1
	bne.s loc_203e8a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e88
	tst.b $2c(a0)
	beq.s loc_203e88
	jsr (sub_20751a).l
	bne.s loc_203e88
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e80
	moveq #$0,d0
loc_203e80:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e88:
	rts
loc_203e8a:
	rts

sub_203e8c:
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

sub_203eb2:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203ebe
	neg.w d0
loc_203ebe:
	btst.b #$1,$2c(a0)
	beq.s loc_203ece
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ef6
loc_203ece:
	cmpi.w #$600,d0
	bcs.s loc_203ef6
	tst.w $14(a0)
	bpl.s loc_203ee8
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f04
	move.w #$e0,d1
	bra.s loc_203f04
loc_203ee8:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f04
	move.w #$60,d1
	bra.s loc_203f04
loc_203ef6:
	cmpi.w #$a0,d1
	beq.s loc_203f04
	bcc.s loc_203f02
	addq.w #$2,d1
	bra.s loc_203f04
loc_203f02:
	subq.w #$2,d1
loc_203f04:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203eb2
	bsr.w sub_203e22
	tst.w ($ff1588).l
	beq.s loc_203f2a
	btst.b #$4,($f605).w
	beq.s loc_203f2a
	move.b #$1,($ff1906).l
	rts
loc_203f2a:
	tst.b ($f7cc).w
	bne.s loc_203f36
	move.w ($f604).w,($f602).w
loc_203f36:
	btst.b #$0,$2c(a0)
	beq.s loc_203f5a
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f54
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f72
loc_203f54:
	bsr.w sub_20423c
	bra.s loc_203f72
loc_203f5a:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203fb8(pc,d0.w),d1
	jsr dat_203fb8(pc,d1.w)
	jsr (sub_20650c).l
loc_203f72:
	bsr.s sub_203fc6
	bsr.w sub_204086
	bsr.w sub_2040a0
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f9a
	tst.b $1c(a0)
	bne.s loc_203f9a
	move.b $1d(a0),$1c(a0)
loc_203f9a:
	bsr.w sub_205444
	tst.b $2c(a0)
	bmi.s loc_203fb2
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203fb2
	jsr (sub_206ab0).l
loc_203fb2:
	bsr.w sub_2052fa
	rts
dat_203fb8:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203fc6:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fea
	move.w $30(a0),d0
	beq.s loc_203fdc
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fea
loc_203fdc:
	btst.b #$6,$2c(a0)
	bne.s loc_203fea
	jsr (sub_20386e).l
loc_203fea:
	tst.b ($ff151f).l
	beq.s loc_20402e
	tst.w $32(a0)
	beq.s loc_20402e
	subq.w #$1,$32(a0)
	bne.s loc_20402e
	tst.b ($ff1520).l
	bne.s loc_204026
	tst.b ($ff1958).l
	bne.s loc_204026
	tst.b ($ff152e).l
	bne.s loc_204020
	move.w #$e,d0
	jsr (sub_205a54).l
loc_204020:
	jsr (sub_201d34).l
loc_204026:
	move.b #$0,($ff151f).l
loc_20402e:
	tst.b ($ff1520).l
	beq.s loc_204084
	tst.w $34(a0)
	beq.s loc_204084
	subq.w #$1,$34(a0)
	bne.s loc_204084
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20407c
	tst.b ($ff1958).l
	bne.s loc_20407c
	tst.b ($ff152e).l
	bne.s loc_204076
	move.w #$e,d0
	jsr (sub_205a54).l
loc_204076:
	jsr (sub_201d34).l
loc_20407c:
	move.b #$0,($ff1520).l
loc_204084:
	rts

sub_204086:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2040a0:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2040ac
loc_2040aa:
	rts
loc_2040ac:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2040be
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2040aa
loc_2040be:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204102
	bset.b #$6,$22(a0)
	bne.s loc_2040aa
	bsr.w sub_205d58
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2040aa
	bra.s loc_20413a
loc_204102:
	tst.w $12(a0)
	beq.s loc_20410a
	bpl.s loc_2040aa
loc_20410a:
	bclr.b #$6,$22(a0)
	beq.s loc_2040aa
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2040aa
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20413a
	move.w #$f000,$12(a0)
loc_20413a:
	jsr (sub_20751a).l
	bne.s loc_20414e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20414e:
	rts

sub_204150:
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
	bcs.s loc_20422a
	move.l #$50000,d0
loc_20422a:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20423c:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204262
	tst.b ($ff152e).l
	beq.s loc_204258
	cmpi.b #$2,($ff152e).l
	bne.s loc_204262
loc_204258:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204312
loc_204262:
	tst.b $2a(a0)
	bne.w loc_204320
	tst.b ($f784).w
	beq.w loc_204320
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204280
	neg.w d0
loc_204280:
	tst.w ($f786).w
	bne.s loc_20428c
	move.w #$1,($f786).w
loc_20428c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2042a2
	move.b #$1,($ff1502).l
	bra.w loc_205a50
loc_2042a2:
	cmpi.w #$d2,d1
	bcs.s loc_2042f6
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042f4
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2042cc
	move.w #$82,d0
	jsr (sub_205a54).l
	moveq #$0,d0
loc_2042cc:
	add.b ($f784).w,d0
	bpl.s loc_2042d6
	moveq #$0,d0
	bra.s loc_2042de
loc_2042d6:
	cmpi.b #$3,d0
	bcs.s loc_2042de
	moveq #$2,d0
loc_2042de:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204150
	move.b #$2,($ff1522).l
loc_2042f4:
	rts
loc_2042f6:
	cmpi.w #$5a,d1
	bcc.s loc_20430e
	cmp.w d2,d0
	bcc.w loc_203d88
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20430e:
	cmp.w d2,d0
	bcc.s loc_204320
loc_204312:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204320:
	rts
	bsr.w sub_203cc2
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204352
	tst.b ($ff195b).l
	beq.s loc_204340
	cmpi.b #$79,$1a(a0)
	bne.s loc_20437c
	bra.s loc_204348
loc_204340:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20437c
loc_204348:
	bsr.w sub_204be4
	jmp (sub_2037b6).l
loc_204352:
	bsr.w sub_20442a
	bsr.w sub_20423c
	bsr.w sub_204cce
	bsr.w sub_204dfa
	bsr.w sub_20449e
	bsr.w sub_204c50
	bsr.w sub_204be4
	jsr (sub_203818).l
	bsr.w sub_200e44
	bsr.w sub_204e78
loc_20437c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204398
	cmpi.b #$15,$1c(a0)
	beq.s loc_204398
	tst.w $12(a0)
	bmi.s loc_204398
	move.b #$0,$1c(a0)
loc_204398:
	bsr.w sub_20442a
	bsr.w sub_20423c
	bsr.w sub_204db8
	bsr.w sub_204b04
	bsr.w sub_204be4
	jsr (sub_2037b6).l
	btst.b #$6,$22(a0)
	beq.s loc_2043c0
	subi.w #$28,$12(a0)
loc_2043c0:
	bsr.w sub_204ec2
	bsr.w sub_204ee6
	rts
	.incbin 17354, 46
	bsr.w sub_20442a
	bsr.w sub_20423c
	bsr.w sub_204db8
	bsr.w sub_204b04
	bsr.w sub_204be4
	jsr (sub_2037b6).l
	btst.b #$6,$22(a0)
	beq.s loc_204420
	subi.w #$28,$12(a0)
loc_204420:
	bsr.w sub_204ec2
	bsr.w sub_204ee6
	rts

sub_20442a:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204496
	tst.w ($ff1506).l
	bne.s loc_204496
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204498).l,a2
loc_20445e:
	move.b (a2)+,d0
	bmi.s loc_20446e
	cmp.b d0,d1
	bne.s loc_20445e
	bset.b #$1,$2c(a0)
	rts
loc_20446e:
	bclr.b #$1,$2c(a0)
	beq.s loc_204496
	tst.w $12(a0)
	bpl.s loc_204496
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204496
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204496
	neg.w $10(a0)
loc_204496:
	rts
dat_204498:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20449e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2047c8
	tst.w $3e(a0)
	bne.w loc_204778
	btst.b #$2,($f602).w
	beq.s loc_2044c6
	bsr.w sub_204858
loc_2044c6:
	btst.b #$3,($f602).w
	beq.s loc_2044d2
	bsr.w sub_2048ce
loc_2044d2:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204778
	tst.w $14(a0)
	beq.s loc_2044f2
	tst.b $2a(a0)
	beq.w loc_204778
	bra.s loc_2044fe
loc_2044f2:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044fe:
	btst.b #$3,$22(a0)
	beq.s loc_204550
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2045a8
	cmpi.b #$1e,$0(a1)
	bne.s loc_204530
	move.b #$0,$1c(a0)
	bra.w loc_204778
loc_204530:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20458c
	cmp.w d2,d1
	bge.s loc_20457a
	bra.s loc_2045a8
loc_204550:
	jsr (sub_206814).l
	cmpi.w #$c,d1
	blt.s loc_2045a8
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204584
loc_20457a:
	btst.b #$0,$22(a0)
	bne.s loc_204594
	bra.s loc_20459e
loc_204584:
	cmpi.b #$3,$37(a0)
	bne.s loc_2045a8
loc_20458c:
	btst.b #$0,$22(a0)
	bne.s loc_20459e
loc_204594:
	move.b #$32,$1c(a0)
	bra.w loc_204778
loc_20459e:
	move.b #$6,$1c(a0)
	bra.w loc_204778
loc_2045a8:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2045bc
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2045bc:
	btst.b #$7,($f788).w
	bne.w loc_2046c0
	btst.b #$6,($f788).w
	bne.w loc_2046e0
	btst.b #$1,($f602).w
	bne.w loc_2046e0
	andi.b #$f,($f788).w
	beq.s loc_2045f4
	btst.b #$0,($f603).w
	beq.s loc_204608
	bset.b #$7,($f788).w
	bra.w loc_20479c
loc_2045f4:
	btst.b #$0,($f603).w
	beq.w loc_204608
	move.b #$1,($f788).w
	bra.w loc_20479c
loc_204608:
	btst.b #$0,($f602).w
	beq.s loc_204684
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204666
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204638
	asr.w #$1,d2
	sub.w d2,d1
loc_204638:
	btst.b #$0,$22(a0)
	beq.s loc_204644
	neg.w d0
	neg.w d1
loc_204644:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20465a
	cmp.w d0,d1
	ble.s loc_204660
	bra.s loc_20465e
loc_20465a:
	cmp.w d1,d0
	ble.s loc_204660
loc_20465e:
	move.w d1,d0
loc_204660:
	move.w d0,$14(a0)
	rts
loc_204666:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204680
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202540).l
loc_204680:
	bra.w loc_20479c
loc_204684:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2046a4
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046e0
loc_2046a4:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202540).l
	bra.w loc_204778
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2046c0:
	btst.b #$0,($f602).w
	beq.s loc_2046e0
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20479c
	addq.w #$2,($f73e).w
	bra.w loc_20479c
loc_2046e0:
	btst.b #$6,($f788).w
	bne.w loc_20475c
	andi.b #$f,($f788).w
	beq.s loc_204704
	btst.b #$1,($f603).w
	beq.s loc_204716
	bset.b #$6,($f788).w
	bra.w loc_20479c
loc_204704:
	btst.b #$1,($f603).w
	beq.s loc_204716
	move.b #$1,($f788).w
	bra.w loc_20479c
loc_204716:
	btst.b #$1,($f602).w
	beq.s loc_204778
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20475a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20475a
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20474c
	neg.w $14(a0)
loc_20474c:
	move.w #$9c,d0
	jsr (sub_202540).l
	bsr.w sub_204c78
loc_20475a:
	bra.s loc_20479c
loc_20475c:
	btst.b #$1,($f602).w
	beq.s loc_204778
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20479c
	subq.w #$2,($f73e).w
	bra.s loc_20479c
loc_204778:
	cmpi.w #$60,($f73e).w
	bne.s loc_204792
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20479c
	move.b #$0,($f788).w
	bra.s loc_20479c
loc_204792:
	bcc.s loc_204798
	addq.w #$4,($f73e).w
loc_204798:
	subq.w #$2,($f73e).w
loc_20479c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2047c8
	move.w $14(a0),d0
	beq.s loc_2047c8
	bmi.s loc_2047bc
	sub.w d5,d0
	bcc.s loc_2047b6
	move.w #$0,d0
loc_2047b6:
	move.w d0,$14(a0)
	bra.s loc_2047c8
loc_2047bc:
	add.w d5,d0
	bcc.s loc_2047c4
	move.w #$0,d0
loc_2047c4:
	move.w d0,$14(a0)
loc_2047c8:
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047e6:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204856
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204856
	bmi.s loc_2047fe
	neg.w d1
loc_2047fe:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066d4
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204856
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204852
	cmpi.b #$40,d0
	beq.s loc_204840
	cmpi.b #$80,d0
	beq.s loc_20483a
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20483a:
	sub.w d1,$12(a0)
	rts
loc_204840:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204852:
	add.w d1,$12(a0)
loc_204856:
	rts

sub_204858:
	tst.b $2a(a0)
	bne.s loc_2048cc
	move.w $14(a0),d0
	beq.s loc_204866
	bpl.s loc_204896
loc_204866:
	bset.b #$0,$22(a0)
	bne.s loc_20487a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20487a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20488a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20488a
	move.w d1,d0
loc_20488a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204896:
	sub.w d4,d0
	bcc.s loc_20489e
	move.w #$ff80,d0
loc_20489e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048cc
	cmpi.w #$400,d0
	blt.s loc_2048cc
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202540).l
loc_2048cc:
	rts

sub_2048ce:
	tst.b $2a(a0)
	bne.s loc_20493c
	move.w $14(a0),d0
	bmi.s loc_204906
	bclr.b #$0,$22(a0)
	beq.s loc_2048ee
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048ee:
	cmp.w d6,d0
	bge.s loc_2048fa
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048fa
	move.w d6,d0
loc_2048fa:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204906:
	add.w d4,d0
	bcc.s loc_20490e
	move.w #$80,d0
loc_20490e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20493c
	cmpi.w #$fc00,d0
	bgt.s loc_20493c
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202540).l
loc_20493c:
	rts
	.incbin 18750, 236
	bcc.s loc_204a30
	move.w #$0,d0
loc_204a30:
	move.w d0,$14(a0)
	bra.s loc_204a42
	dc.b $d0,$45,$64,$04,$30,$3c,$00,$00
	dc.b $31,$40,$00,$14
loc_204a42:
	tst.w $14(a0)
	bne.s loc_204a88
	move.w #$ab,d0
	jsr (sub_202540).l
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a72
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a82
loc_204a72:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a82:
	move.b #$5,$1c(a0)
loc_204a88:
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204aac
	move.w #$1000,d1
loc_204aac:
	cmpi.w #$f000,d1
	bge.s loc_204ab6
	move.w #$f000,d1
loc_204ab6:
	move.w d1,$10(a0)
	bra.w loc_2047e6
	.incbin 19134, 70

sub_204b04:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b3e
	tst.w ($ff1506).l
	bne.s loc_204b3e
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b36
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b36
	rts
loc_204b36:
	btst.b #$1,$2c(a0)
	bne.s loc_204b6e
loc_204b3e:
	btst.b #$2,($f602).w
	beq.s loc_204b58
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b58
	move.w d1,d0
loc_204b58:
	btst.b #$3,($f602).w
	beq.s loc_204b6e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b6e
	move.w d6,d0
loc_204b6e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b84
	bcc.s loc_204b80
	addq.w #$4,($f73e).w
loc_204b80:
	subq.w #$2,($f73e).w
loc_204b84:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204bb2
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204bb2
	bmi.s loc_204ba6
	sub.w d1,d0
	bcc.s loc_204ba0
	move.w #$0,d0
loc_204ba0:
	move.w d0,$10(a0)
	rts
loc_204ba6:
	sub.w d1,d0
	bcs.s loc_204bae
	move.w #$0,d0
loc_204bae:
	move.w d0,$10(a0)
loc_204bb2:
	rts
	.incbin 19380, 48

sub_204be4:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c38
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c12
	addi.w #$38,d0
loc_204c12:
	cmp.w d1,d0
	bls.s loc_204c38
loc_204c16:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c26
	rts
loc_204c26:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d88
	move.b #$6,$24(a0)
	rts
loc_204c38:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c16

sub_204c50:
	tst.b ($f7ca).w
	bne.s loc_204c76
	move.w $14(a0),d0
	bpl.s loc_204c5e
	neg.w d0
loc_204c5e:
	cmpi.w #$80,d0
	bcs.s loc_204c76
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c76
	btst.b #$1,($f602).w
	bne.s sub_204c78
loc_204c76:
	rts

sub_204c78:
	btst.b #$2,$22(a0)
	beq.s loc_204c82
	bra.s loc_204cb2
loc_204c82:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ca2
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204cb2
loc_204ca2:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204cb2:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204ccc
	cmpi.w #$200,$14(a0)
	bcc.s loc_204ccc
	move.w #$200,$14(a0)
loc_204ccc:
	rts

sub_204cce:
	tst.b $2a(a0)
	beq.s loc_204cd6
	rts
loc_204cd6:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ce8
	tst.w $14(a0)
	beq.w loc_204dae
loc_204ce8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204dae
	btst.b #$3,$22(a0)
	beq.s loc_204d04
	jsr (sub_2059da).l
	beq.s loc_204d34
loc_204d04:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20673e
	cmpi.w #$6,d1
	blt.w loc_204dae
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d2a
	move.w #$380,d2
loc_204d2a:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d34:
	jsr (sub_200a44).l
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
	jsr (sub_202540).l
	btst.b #$2,$22(a0)
	bne.s loc_204db0
	tst.b ($ff195b).l
	beq.s loc_204d92
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204da2
loc_204d92:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204da2:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204dae:
	rts
loc_204db0:
	bset.b #$4,$22(a0)
	rts

sub_204db8:
	tst.b $3c(a0)
	beq.s loc_204dea
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204dce
	move.w #$fe00,d1
loc_204dce:
	cmp.w $12(a0),d1
	ble.s loc_204de8
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204de8
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204de8:
	rts
loc_204dea:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204df8
	move.w #$f040,$12(a0)
loc_204df8:
	rts

sub_204dfa:
	tst.b $2a(a0)
	bne.s loc_204e34
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e34
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e34
	bmi.s loc_204e30
	tst.w d0
	beq.s loc_204e2e
	add.w d0,$14(a0)
loc_204e2e:
	rts
loc_204e30:
	add.w d0,$14(a0)
loc_204e34:
	rts
	.incbin 20022, 66

sub_204e78:
	nop
	tst.b $38(a0)
	bne.s loc_204eba
	tst.w $3e(a0)
	bne.s loc_204ebc
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204eba
	move.w $14(a0),d0
	bpl.s loc_204e9c
	neg.w d0
loc_204e9c:
	cmpi.w #$280,d0
	bcc.s loc_204eba
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204eba:
	rts
loc_204ebc:
	subq.w #$1,$3e(a0)
	rts

sub_204ec2:
	btst.b #$1,$2c(a0)
	bne.s loc_204ee4
	move.b $26(a0),d0
	beq.s loc_204ee4
	bpl.s loc_204eda
	addq.b #$2,d0
	bcc.s loc_204ed8
	moveq #$0,d0
loc_204ed8:
	bra.s loc_204ee0
loc_204eda:
	subq.b #$2,d0
	bcc.s loc_204ee0
	moveq #$0,d0
loc_204ee0:
	move.b d0,$26(a0)
loc_204ee4:
	rts

sub_204ee6:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200cdc).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204fca
	cmpi.b #$80,d0
	beq.w loc_20502c
	cmpi.b #$c0,d0
	beq.w loc_205088
	bsr.w sub_206a54
	tst.w d1
	bpl.s loc_204f38
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f38:
	bsr.w sub_2068b6
	tst.w d1
	bpl.s loc_204f4a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f4a:
	bsr.w sub_206766
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204fc8
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f68
	cmp.b d2,d0
	blt.s loc_204fc8
loc_204f68:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ea
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204fa6
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f98
	asr.w $12(a0)
	bra.s loc_204fba
loc_204f98:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204fa6:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204fba
	move.w #$fc0,$12(a0)
loc_204fba:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204fc8
	neg.w $14(a0)
loc_204fc8:
	rts
loc_204fca:
	bsr.w sub_206a54
	tst.w d1
	bpl.s loc_204fe4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fe4:
	bsr.w sub_20690e
	tst.w d1
	bpl.s loc_204ffe
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204ffc
	move.w #$0,$12(a0)
loc_204ffc:
	rts
loc_204ffe:
	tst.w $12(a0)
	bmi.s loc_20502a
	bsr.w sub_206766
	tst.w d1
	bpl.s loc_20502a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ea
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20502a:
	rts
loc_20502c:
	bsr.w sub_206a54
	tst.w d1
	bpl.s loc_20503e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20503e:
	bsr.w sub_2068b6
	tst.w d1
	bpl.s loc_205050
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205050:
	bsr.w sub_20690e
	tst.w d1
	bpl.s loc_205086
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205070
	move.w #$0,$12(a0)
	rts
loc_205070:
	move.b d3,$26(a0)
	bsr.w sub_20515c
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205086
	neg.w $14(a0)
loc_205086:
	rts
loc_205088:
	bsr.w sub_2068b6
	tst.w d1
	bpl.s loc_2050a2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050a2:
	bsr.w sub_20690e
	tst.w d1
	bpl.s loc_2050bc
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050ba
	move.w #$0,$12(a0)
loc_2050ba:
	rts
loc_2050bc:
	tst.w $12(a0)
	bmi.s loc_2050e8
	bsr.w sub_206766
	tst.w d1
	bpl.s loc_2050e8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ea
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050e8:
	rts

sub_2050ea:
	btst.b #$4,$22(a0)
	beq.s loc_2050f4
	nop
loc_2050f4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20514e
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20512e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20513e
loc_20512e:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20513e:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202540).l
loc_20514e:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20515c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20860, 382

sub_2052fa:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205322
	cmpi.b #$5,($ff1506).l
	beq.s loc_205322
	cmpi.b #$2,($ff1506).l
	beq.s loc_205322
	tst.b ($ff1506).l
	bne.w loc_2053e4
loc_205322:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205360
	tst.b ($ff1506).l
	bne.w loc_2053e6
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053e6
	bra.s loc_205368
loc_205360:
	cmp.b ($f7af).w,d1
	beq.w loc_2053e6
loc_205368:
	cmp.b ($f7ac).w,d1
	beq.s loc_205398
	cmp.b ($f7ad).w,d1
	beq.s loc_20537c
	bclr.b #$6,$1(a0)
	rts
loc_20537c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053fe
	btst.b #$1,$22(a0)
	beq.s loc_205398
	bclr.b #$6,$1(a0)
	rts
loc_205398:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2053aa
	bclr.b #$6,$1(a0)
	rts
loc_2053aa:
	cmpi.b #$e0,d2
	bcs.s loc_2053b8
	bset.b #$6,$1(a0)
	rts
loc_2053b8:
	btst.b #$6,$1(a0)
	bne.s loc_2053d4
	move.b $26(a0),d1
	beq.s loc_2053e4
	cmpi.b #$80,d1
	bhi.s loc_2053e4
	bset.b #$6,$1(a0)
	rts
loc_2053d4:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053e4
	bclr.b #$6,$1(a0)
loc_2053e4:
	rts
loc_2053e6:
	btst.b #$2,$22(a0)
	bne.s loc_2053f8
	move.w #$9c,d0
	jsr (sub_202540).l
loc_2053f8:
	jmp (sub_204c78).l
loc_2053fe:
	tst.w $12(a0)
	bmi.s loc_205442
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205436
	cmpi.w #$38,d1
	bcs.s loc_20542e
	cmpi.w #$80,d1
	bcs.s loc_205442
loc_205426:
	bclr.b #$6,$1(a0)
	rts
loc_20542e:
	bset.b #$6,$1(a0)
	rts
loc_205436:
	cmpi.w #$38,d1
	bcs.s loc_205426
	cmpi.w #$80,d1
	bcc.s loc_20542e
loc_205442:
	rts

sub_205444:
	lea (dat_205734).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205466
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205466:
	bsr.w sub_2056d6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054de
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2054ac
	move.b d0,$1e(a0)

sub_205490:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2054a4
	bpl.s loc_2054a4
	cmpi.b #$fd,d0
	bge.s loc_2054ae
loc_2054a4:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2054ac:
	rts
loc_2054ae:
	addq.b #$1,d0
	bne.s loc_2054be
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2054a4
loc_2054be:
	addq.b #$1,d0
	bne.s loc_2054d2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2054a4
loc_2054d2:
	addq.b #$1,d0
	bne.s loc_2054dc
	move.b $2(a1,d1.w),$1c(a0)
loc_2054dc:
	rts
loc_2054de:
	subq.b #$1,$1e(a0)
	bpl.s loc_2054ac
	addq.b #$1,d0
	bne.w loc_205598
	tst.b ($ff195b).l
	bne.w loc_205660
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205506
	not.b d0
loc_205506:
	btst.b #$1,$2c(a0)
	bne.s loc_205514
	addi.b #$10,d0
	bra.s loc_205516
loc_205514:
	addq.b #$8,d0
loc_205516:
	bpl.s loc_20551a
	moveq #$3,d1
loc_20551a:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20560c
	move.w $14(a0),d2
	bpl.s loc_205538
	neg.w d2
loc_205538:
	btst.b #$1,$2c(a0)
	beq.s loc_205550
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205936).l,a1
	bra.s loc_20557a
loc_205550:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205910).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20557a
	lea (dat_2057b4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20557a
	lea (dat_2057ac).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20557a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205588
	moveq #$0,d2
loc_205588:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205490
	add.b d3,$1a(a0)
	rts
loc_205598:
	addq.b #$1,d0
	bne.s loc_205608
	move.w $14(a0),d2
	bpl.s loc_2055a4
	neg.w d2
loc_2055a4:
	lea (dat_205892).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055e2
	lea (dat_2057c4).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055d6
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055e2
	lea (dat_20593e).l,a1
	bra.s loc_2055e2
loc_2055d6:
	cmpi.w #$600,d2
	bcc.s loc_2055e2
	lea (dat_2057bc).l,a1
loc_2055e2:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055ec
	moveq #$0,d2
loc_2055ec:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205490
loc_205608:
	addq.b #$1,d0
	bne.s loc_20564c
loc_20560c:
	move.w $14(a0),d2
	bmi.s loc_205614
	neg.w d2
loc_205614:
	addi.w #$800,d2
	bpl.s loc_20561c
	moveq #$0,d2
loc_20561c:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2058a4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205636
	lea (dat_2057cc).l,a1
loc_205636:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205490
loc_20564c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205660:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205672
	not.b d0
loc_205672:
	addi.b #$10,d0
	bpl.s loc_20567a
	moveq #$0,d1
loc_20567a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2056a8
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205598
loc_2056a8:
	move.w $14(a0),d2
	bpl.s loc_2056b0
	neg.w d2
loc_2056b0:
	lea (dat_20588c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056c2
	lea (dat_205886).l,a1
loc_2056c2:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056cc
	moveq #$0,d2
loc_2056cc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205490

sub_2056d6:
	tst.b ($ff195b).l
	beq.s loc_2056e2
	move.b dat_2056e4(pc,d0.w),d0
loc_2056e2:
	rts
dat_2056e4:
	.incbin 22244, 80
dat_205734:
	.incbin 22324, 120
dat_2057ac:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2057b4:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2057bc:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2057c4:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2057cc:
	.incbin 22476, 186
dat_205886:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20588c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205892:
	.incbin 22674, 18
dat_2058a4:
	.incbin 22692, 108
dat_205910:
	.incbin 22800, 38
dat_205936:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20593e:
	.incbin 22846, 56

sub_205976:
	tst.b (a0)
	beq.w loc_2059d8
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059d8
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059d8
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2059aa:
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
loc_2059c4:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2059c4
	dbf d1,loc_2059aa
loc_2059d8:
	rts

sub_2059da:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a4e
	move.w #$98,d0
	jsr (sub_202540).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200cdc).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205a3c
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a3c:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a4e:
	rts
loc_205a50:
	move.w #$e,d0

sub_205a54:
	cmpi.w #$67,d0
	bne.s loc_205a62
	move.b #$1,($ff1958).l
loc_205a62:
	move.w d0,($a12010).l
loc_205a68:
	move.w ($a12020).l,d0
	beq.s loc_205a68
	cmp.w ($a12020).l,d0
	bne.s loc_205a68
	move.w #$0,($a12010).l
loc_205a80:
	move.w ($a12020).l,d0
	bne.s loc_205a80
	move.w ($a12020).l,d0
	bne.s loc_205a80
	rts
	dc.b $00,$00

sub_205a94:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205ab0
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205ab0:
	subq.b #$1,$1e(a0)
	bpl.s loc_205af0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205af2
loc_205acc:
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
loc_205af0:
	rts
loc_205af2:
	addq.b #$1,d0
	bne.s loc_205b02
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205acc
loc_205b02:
	addq.b #$1,d0
	bne.s loc_205b16
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205acc
loc_205b16:
	addq.b #$1,d0
	bne.s loc_205b20
	move.b $2(a1,d1.w),$1c(a0)
loc_205b20:
	addq.b #$1,d0
	bne.s loc_205b28
	addq.b #$2,$24(a0)
loc_205b28:
	addq.b #$1,d0
	bne.s loc_205b36
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b36:
	addq.b #$1,d0
	bne.s loc_205b3e
	addq.b #$2,$25(a0)
loc_205b3e:
	rts
	.incbin 23360, 536

sub_205d58:
	rts
	.incbin 23898, 116

sub_205dce:
	tst.b $25(a0)
	bne.s loc_205dfe
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_20751a).l
	bne.s loc_205dfe
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dfe:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e0e(pc,d0.w),d0
	jmp dat_205e0e(pc,d0.w)
dat_205e0e:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e36
	andi.b #$7f,$2(a0)
loc_205e36:
	move.l #$2399e4,$4(a0)
	bsr.s sub_205dce
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e64
	move.w #$100,$1c(a0)
loc_205e64:
	lea (dat_2399d0).l,a1
	bsr.w sub_205a94
	jmp (sub_20386e).l
	tst.b $25(a0)
	beq.s loc_205e80
	jmp (sub_20391a).l
loc_205e80:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 24206, 468
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_202540).l
	.incbin 24700, 592
dat_2062cc:
	.incbin 25292, 60

sub_206308:
	bclr.b #$7,($ff156b).l
	beq.s loc_206356
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206358(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20632c:
	move.l (a1)+,(a2)+
	dbf d0,loc_20632c
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	dc.b $3a,$bc
loc_20634a:
	bvc.s dat_2062cc
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206356:
	rts
dat_206358:
	.incbin 25432, 436

sub_20650c:
	rts
loc_20650e:
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
	bne.s loc_2065c8
	move.b ($ff1593).l,($ff195b).l
loc_2065c8:
	tst.b ($ff1522).l
	bpl.s loc_2065de
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065de:
	rts

sub_2065e0:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20650e
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
	bne.s loc_20669a
	move.b ($ff1591).l,($ff195b).l
loc_20669a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2066bc
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2066bc:
	tst.b ($ff1522).l
	bpl.s loc_2066d2
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066d2:
	rts

sub_2066d4:
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
	bpl.s loc_206710
	move.b d1,d0
	bpl.s loc_20670a
	subq.b #$1,d0
loc_20670a:
	addi.b #$20,d0
	bra.s loc_20671a
loc_206710:
	move.b d1,d0
	bpl.s loc_206716
	addq.b #$1,d0
loc_206716:
	addi.b #$1f,d0
loc_20671a:
	andi.b #$c0,d0
	beq.w loc_2067ea
	cmpi.b #$80,d0
	beq.w loc_206986
	andi.b #$38,d1
	bne.s loc_206732
	addq.w #$8,d2
loc_206732:
	cmpi.b #$40,d0
	beq.w loc_206a5c
	bra.w loc_2068be

sub_20673e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069e4
	cmpi.b #$80,d0
	beq.w sub_20690e
	cmpi.b #$c0,d0
	beq.w loc_20684e

sub_206766:
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
	jsr (sub_20139a).l
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
	jsr (sub_20139a).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_2067ca:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067d8
	move.b ($f768).w,d3
	exg d0,d1
loc_2067d8:
	btst.l #$0,d3
	beq.s loc_2067e0
	move.b d2,d3
loc_2067e0:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067ea:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20139a).l
	move.b #$0,d2
loc_206806:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206812
	move.b d2,d3
loc_206812:
	rts

sub_206814:
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
	jsr (sub_20139a).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20684c
	move.b #$0,d3
loc_20684c:
	rts
loc_20684e:
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
	jsr (sub_20150a).l
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
	jsr (sub_20150a).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_2067ca

sub_2068b6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2068be:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b #$c0,d2
	bra.w loc_206806
	.incbin 26846, 48

sub_20690e:
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
	jsr (sub_20139a).l
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
	jsr (sub_20139a).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_2067ca

sub_20697e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206986:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20139a).l
	move.b #$80,d2
	bra.w loc_206806
	.incbin 27050, 58
loc_2069e4:
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
	jsr (sub_20150a).l
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
	jsr (sub_20150a).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_2067ca

sub_206a54:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a5c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b #$40,d2
	bra.w loc_206806
	.incbin 27264, 16
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206aae
	move.b #$40,d3
loc_206aae:
	rts

sub_206ab0:
	btst.b #$0,$2c(a0)
	beq.s loc_206abc
	moveq #$0,d0
	rts
loc_206abc:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ae0
	addi.w #$c,d3
	moveq #$a,d5
loc_206ae0:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206aee:
	tst.b $1(a1)
	bpl.s loc_206afa
	move.b $20(a1),d0
	bne.s loc_206b06
loc_206afa:
	lea $40(a1),a1
	dbf d6,loc_206aee
	moveq #$0,d0
	rts
loc_206b06:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206f2c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206b2e
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206b34
	bra.w loc_206afa
loc_206b2e:
	cmp.w d4,d0
	bhi.w loc_206afa
loc_206b34:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b4c
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b52
	bra.w loc_206afa
loc_206b4c:
	cmp.w d5,d0
	bhi.w loc_206afa
loc_206b52:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206bea
	cmpi.b #$c0,d1
	beq.w loc_206de0
	tst.b d1
	bmi.w loc_206b6e
	bra.s loc_206b7a
loc_206b6e:
	tst.b ($ff151f).l
	bne.s loc_206afa
	bra.w sub_206cb4
loc_206b7a:
	tst.b ($ff1956).l
	beq.s loc_206b8a
	tst.b $29(a1)
	bne.s loc_206b92
	rts
loc_206b8a:
	tst.b $29(a1)
	beq.s loc_206b92
	rts
loc_206b92:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206bae
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206bac
	addq.b #$2,$24(a1)
loc_206bac:
	rts
loc_206bae:
	tst.w $12(a0)
	bpl.s loc_206bd8
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206be8
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206be8
	addq.b #$4,$25(a1)
	rts
loc_206bd8:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206be8
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206be8:
	rts

sub_206bea:
	tst.b ($ff1521).l
	bne.s loc_206c04
	tst.b ($ff151f).l
	bne.s loc_206c04
	cmpi.b #$2,$1c(a0)
	bne.w sub_206cb4
loc_206c04:
	tst.b $21(a1)
	beq.s loc_206c2e
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206c2c
	bset.b #$7,$22(a1)
loc_206c2c:
	rts
loc_206c2e:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206c46
	moveq #$6,d0
loc_206c46:
	move.w d0,$3e(a1)
	move.w dat_206ca6(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206c60
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206c60:
	bsr.w sub_209a0c
	move.w #$96,d0
	jsr (sub_202540).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c96
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c9e
	neg.w $12(a0)
	rts
loc_206c96:
	addi.w #$100,$12(a0)
	rts
loc_206c9e:
	subi.w #$100,$12(a0)
	rts
dat_206ca6:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206cb4:
	btst.b #$0,$2c(a0)
	bne.s loc_206ccc
	tst.b ($ff1521).l
	bne.s loc_206ccc
	tst.b ($ff151f).l
	beq.s loc_206cd0
loc_206ccc:
	moveq #$ffffffff,d0
	rts
loc_206cd0:
	nop
	tst.w $30(a0)
	bne.s loc_206ccc
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206d14
	tst.w ($ff1512).l
	beq.w loc_206d7e
	jsr (sub_20751a).l
	bne.s loc_206d14
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206d14
	move.b #$1,$29(a1)
loc_206d14:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206d2a
	move.b #$0,($ff156f).l
loc_206d2a:
	move.b #$4,$24(a0)
	bsr.w sub_2050ea
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206d5a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206d5a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206d68
	neg.w $10(a0)
loc_206d68:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d7e:
	tst.w ($ff1588).l
	bne.w loc_206d14

sub_206d88:
	tst.w ($ff1906).l
	bne.s loc_206ddc
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050ea
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202540).l
loc_206ddc:
	moveq #$ffffffff,d0
	rts
loc_206de0:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206ef0
	cmpi.b #$17,d1
	beq.w loc_206e78
	cmpi.b #$1f,d1
	beq.w loc_206e78
	cmpi.b #$22,d1
	beq.w loc_206ec0
	cmpi.b #$23,d1
	beq.w loc_206e78
	cmpi.b #$2d,d1
	beq.w loc_206ece
	cmpi.b #$30,d1
	beq.w loc_206eda
	tst.b ($f7aa).w
	beq.w loc_206e76
	cmpi.b #$1,($f7aa).w
	beq.s loc_206e40
	cmpi.b #$4,($f7aa).w
	beq.s loc_206e62
	cmpi.b #$5,($f7aa).w
	beq.s loc_206e70
loc_206e40:
	cmpi.b #$3c,d1
	blt.s loc_206e76
	cmpi.b #$3f,d1
	bgt.s loc_206e76
	bsr.w sub_206bea
	tst.b $20(a1)
	bne.s loc_206e5a
	addq.b #$3,$21(a1)
loc_206e5a:
	clr.b $20(a1)
	bra.w loc_206e78
loc_206e62:
	cmpi.b #$3f,d1
	beq.s loc_206e84
	cmpi.b #$3e,d1
	beq.s loc_206e7e
	bra.s loc_206e76
loc_206e70:
	cmpi.b #$3d,d1
	beq.s loc_206e7e
loc_206e76:
	rts
loc_206e78:
	addq.b #$1,$21(a1)
	rts
loc_206e7e:
	bsr.w sub_206cb4
	bra.s loc_206e78
loc_206e84:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206ebe
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206ebe
	neg.w $10(a0)
loc_206ebe:
	rts
loc_206ec0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ecc
	addq.b #$1,$21(a1)
loc_206ecc:
	rts
loc_206ece:
	btst.b #$2,$22(a0)
	beq.w sub_206bea
	bra.s loc_206e78
loc_206eda:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206bea
	bra.s loc_206e78
loc_206ef0:
	tst.w $12(a0)
	bpl.s loc_206f1a
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f2a
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f2a
	addq.b #$4,$25(a1)
	rts
loc_206f1a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f2a
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f2a:
	rts
dat_206f2c:
	.incbin 28460, 126
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
	jsr (sub_2011b2).l
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
	bsr.w sub_20751a
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
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207134:
	jmp (sub_20386e).l
dat_20713a:
	dc.b $00,$00,$40,$00
dat_20713e:
	.incbin 28990, 458

sub_207308:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207316:
	clr.l (a2)+
	dbf d0,loc_207316
	rts

sub_20731e:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20732c(pc,d0.w),d0
	jmp dat_20732c(pc,d0.w)
dat_20732c:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2075cc).l,a0
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
	bcc.s loc_20736a
	moveq #$0,d6
loc_20736a:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207372:
	cmp.w (a0),d6
	bls.s loc_207384
	tst.b $4(a0)
	bpl.s loc_207380
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207380:
	addq.w #$8,a0
	bra.s loc_207372
loc_207384:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2073a4
loc_207392:
	cmp.w (a0),d6
	bls.s loc_2073a4
	tst.b $4(a0)
	bpl.s loc_2073a0
	addq.b #$1,$1(a2)
loc_2073a0:
	addq.w #$8,a0
	bra.s loc_207392
loc_2073a4:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20748e
	bge.s loc_207434
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207410
loc_2073de:
	cmp.w -$8(a0),d6
	bge.s loc_207410
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2073f4
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2073f4:
	bsr.w sub_2074b2
	bne.s loc_2073fe
	subq.w #$8,a0
	bra.s loc_2073de
loc_2073fe:
	tst.b $4(a0)
	bpl.s loc_20740e
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20740e:
	addq.w #$8,a0
loc_207410:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20741c:
	cmp.w -$8(a0),d6
	bgt.s loc_20742e
	tst.b -$4(a0)
	bpl.s loc_20742a
	subq.b #$1,(a2)
loc_20742a:
	subq.w #$8,a0
	bra.s loc_20741c
loc_20742e:
	move.l a0,($f770).w
	rts
loc_207434:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207448:
	cmp.w (a0),d6
	bls.s loc_20746a
	tst.b $4(a0)
	bpl.s loc_207456
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207456:
	bsr.w sub_2074b2
	beq.s loc_207448
	tst.b $4(a0)
	bpl.s loc_20746a
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20746a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20748a
loc_207478:
	cmp.w (a0),d6
	bls.s loc_20748a
	tst.b $4(a0)
	bpl.s loc_207486
	addq.b #$1,$1(a2)
loc_207486:
	addq.w #$8,a0
	bra.s loc_207478
loc_20748a:
	move.l a0,($f774).w
loc_20748e:
	rts

sub_207490:
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

sub_2074b2:
	bsr.s sub_207490
	beq.s loc_2074c4
	tst.b $4(a0)
	bpl.s loc_2074ca
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2074ca
loc_2074c4:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2074ca:
	bsr.w sub_20751a
	bne.s loc_207518
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
	bpl.s loc_2074fa
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2074fa:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20750c
	nop
	nop
	nop
	nop
loc_20750c:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207518:
	rts

sub_20751a:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207522:
	tst.b (a1)
	beq.s loc_20752e
	lea $40(a1),a1
	dbf d0,loc_207522
loc_20752e:
	rts

sub_207530:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20754e
loc_207542:
	tst.b (a1)
	beq.s loc_20754e
	lea $40(a1),a1
	dbf d0,loc_207542
loc_20754e:
	rts
loc_207550:
	move.w $8(a0),d0
loc_207554:
	tst.b $1(a0)
	bmi.s loc_2075be
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2075be
loc_207572:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2075b4
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2075ac
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2075a4
	moveq #$0,d1
	bra.s loc_2075ac
loc_2075a4:
	cmpi.w #$3,d1
	bcs.s loc_2075ac
	moveq #$2,d1
loc_2075ac:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2075b4:
	jsr (sub_20391a).l
	moveq #$1,d0
	rts
loc_2075be:
	btst.b #$7,($ff152e).l
	bne.s loc_207572
	moveq #$0,d0
	rts
dat_2075cc:
	.incbin 30156, 860
loc_207928:
	bset.l d6,d7
	dc.b $03,$69
loc_20792c:
	subx.b d2,d1
	negx.b d0
	.incbin 31024, 1430

sub_207ec6:
	btst.b #$3,$22(a0)
	beq.s loc_207f36
	btst.b #$3,$22(a1)
	beq.s loc_207f36
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207f36
	tst.b $2a(a1)
	beq.s loc_207ef8
	move.w #$ab,d0
	jsr (sub_202540).l
loc_207ef8:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207f24
	cmpi.b #$17,$1c(a1)
	beq.s loc_207f24
	bclr.b #$0,$2c(a1)
loc_207f24:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207f36
	bclr.b #$1,$22(a1)
loc_207f36:
	rts

sub_207f38:
	cmpi.b #$4,$24(a1)
	bne.s loc_207f4a
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207f4a:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207faa
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207f6c
	bclr.b #$3,$22(a0)
	bra.w sub_207ec6
loc_207f6c:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207faa
	tst.b ($ff195b).l
	beq.s loc_207f94
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207fa4
loc_207f94:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207fa4:
	move.b #$0,$1c(a1)
loc_207faa:
	bset.b #$3,$22(a1)
	beq.s loc_207fcc
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208004
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207fcc:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207ff8
	cmpi.b #$2,$24(a0)
	beq.s loc_207ffe
loc_207ff8:
	move.w $10(a1),$14(a1)
loc_207ffe:
	bclr.b #$1,$22(a1)
loc_208004:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_20800e:
	move.b #$1,$25(a0)
loc_208014:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2082c8
	btst.b #$6,$2c(a1)
	bne.w loc_2082c8
	cmpi.b #$6,$24(a1)
	bcc.w loc_2082c8
	tst.b $0(a1)
	beq.w loc_2082c8
	tst.b $1(a0)
	bpl.w loc_2082c8
	tst.b ($ff1906).l
	bne.w loc_2082c8
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2082c8
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2082c8
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208082
	btst.b #$3,$22(a0)
	bne.s loc_208094
	bra.w loc_2082c8
loc_208082:
	cmpi.b #$1,$25(a0)
	bne.s loc_208094
	tst.w $12(a1)
	beq.s loc_208094
	bmi.w loc_2082c8
loc_208094:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2082c8
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2082c8
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2080ca
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2080ca:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2080d8
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2080d8:
	cmp.w d4,d5
	bcs.w loc_20816c
	cmpi.b #$1,$25(a0)
	beq.w loc_2082c8
	cmpi.b #$a,$0(a0)
	bne.s loc_2080fa
	btst.b #$1,$22(a1)
	bne.w loc_2082c8
loc_2080fa:
	cmpi.b #$4,d5
	bls.w loc_2082c8
	bsr.w sub_208318
	move.l d0,-(a7)
	bsr.w sub_207ec6
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208124
	tst.w $10(a1)
	beq.s loc_208154
	bpl.s loc_20812c
	bra.s loc_208154
loc_208124:
	tst.w $10(a1)
	beq.s loc_208154
	bpl.s loc_208154
loc_20812c:
	bsr.w sub_2082d8
	btst.b #$1,$22(a1)
	bne.s loc_20814a
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_20814a:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208154:
	bsr.w sub_20838e
	bsr.w sub_2082d8
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_20816c:
	cmpi.b #$19,$0(a0)
	bne.s loc_20817e
	btst.b #$2,$22(a1)
	bne.w loc_2082c8
loc_20817e:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208194
	bmi.w loc_208264
loc_208194:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2081a6
	tst.w $12(a1)
	beq.s loc_2081a6
	bmi.w loc_2082c8
loc_2081a6:
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
	beq.s loc_2081f2
	bpl.s loc_2081d2
	neg.b d0
loc_2081d2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066d4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2081f2
	tst.w $10(a0)
	bpl.s loc_2081ee
	neg.w d1
loc_2081ee:
	add.w d1,$8(a1)
loc_2081f2:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20825c
	tst.w $12(a0)
	bmi.s loc_208230
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206766).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208230
	add.w d1,$c(a1)
	bra.w loc_2082c8
loc_208230:
	tst.w $12(a0)
	bpl.s loc_20825c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20697e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20825c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d88).l
	movem.l (a7)+,a0-a1
	bra.s loc_2082c8
loc_20825c:
	bsr.w sub_207f38
	moveq #$1,d0
	rts
loc_208264:
	cmpi.b #$1,$25(a0)
	beq.s loc_2082c8
	cmpi.b #$9,$0(a0)
	beq.s loc_2082c8
	cmpi.b #$a,$0(a0)
	bne.s loc_20828e
	cmpi.b #$2,$25(a0)
	beq.s loc_2082ae
	btst.b #$1,$1(a0)
	bne.s loc_2082ae
	bra.s loc_2082c8
loc_20828e:
	btst.b #$1,$22(a1)
	bne.s loc_2082ae
	tst.w $12(a0)
	beq.s loc_2082ae
	bmi.s loc_2082ae
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d88).l
	movem.l (a7)+,a0-a1
loc_2082ae:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20838e
	bsr.w sub_207ec6
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2082c8:
	bsr.w sub_20838e
	bsr.w sub_207ec6
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2082d8:
	tst.w $10(a0)
	beq.s loc_208316
	cmpi.b #$a,$0(a0)
	beq.s loc_208316
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2082f2
	neg.b d0
loc_2082f2:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066d4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208316
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d88).l
	movem.l (a7)+,a0-a1
loc_208316:
	rts

sub_208318:
	cmpi.b #$a,$0(a0)
	bne.s loc_208328
	move.b #$0,$20(a1)
	rts
loc_208328:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20837c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20838c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20834a
	tst.w $10(a2)
	beq.s loc_20838c
loc_20834a:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20835c
	cmp.w $8(a2),d1
	bcs.s loc_20838c
	bra.s loc_208362
loc_20835c:
	cmp.w $8(a2),d1
	bcc.s loc_20838c
loc_208362:
	cmpi.b #$15,$0(a0)
	beq.s loc_20838c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d88).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20837c:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20838c:
	rts

sub_20838e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2083a8
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2083a8
	move.b #$0,$20(a1)
loc_2083a8:
	rts
	.incbin 33706, 374
loc_208520:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20852e(pc,d0.w),d0
	jmp dat_20852e(pc,d0.w)
dat_20852e:
	.incbin 34094, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208520
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208584
	tst.b $1(a0)
	bpl.s loc_20858c
loc_208584:
	move.w dat_2085de(pc,d0.w),d1
	jsr dat_2085de(pc,d1.w)
loc_20858c:
	bsr.w sub_20386e
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2085be
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2085be:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20391a
	rts
dat_2085de:
	.incbin 34270, 26
	addq.b #$2,$24(a0)
	move.l #$208960,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20864e
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208966,$4(a0)
	bra.s loc_208690
loc_20864e:
	btst.l #$3,d0
	beq.s loc_20867c
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2089b0,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bf76).l
	move.l (a7)+,d0
	bra.s loc_208690
loc_20867c:
	btst.b #$1,$1(a0)
	beq.s loc_208690
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208690:
	btst.l #$1,d0
	beq.s loc_20869c
	bset.b #$5,$2(a0)
loc_20869c:
	andi.w #$2,d0
	move.w dat_2086a8(pc,d0.w),$30(a0)
	rts
dat_2086a8:
	dc.b $f0,$00,$f6,$00

sub_2086ac:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208014).l
	tst.b $1(a0)
	bpl.s loc_2086c8
	lea ($d000).w,a1
	bsr.s sub_2086ac
	bne.s loc_2086ca
loc_2086c8:
	rts
loc_2086ca:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202540).l
	.incbin 34556, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208a4c(pc,d0.w),d1
	jmp dat_208a4c(pc,d1.w)
dat_208a4c:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_208a56:
	.incbin 35414, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208aae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208aa6
	moveq #$0,d1
	bra.s loc_208aae
loc_208aa6:
	cmpi.w #$3,d1
	bcs.s loc_208aae
	moveq #$2,d1
loc_208aae:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208aca
	moveq #$6,d1
loc_208aca:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_208a56).l,a1
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
	beq.s loc_208b1a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208b12
	moveq #$0,d0
	bra.s loc_208b1a
loc_208b12:
	cmpi.w #$3,d0
	bcs.s loc_208b1a
	moveq #$2,d0
loc_208b1a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208be8
	dbf d0,loc_208b1a
	bclr.b #$7,(a2)
	bra.s loc_208b70
loc_208b2c:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208b58
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208b50
	moveq #$0,d0
	bra.s loc_208b58
loc_208b50:
	cmpi.w #$3,d0
	bcs.s loc_208b58
	moveq #$2,d0
loc_208b58:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208be8
	dbf d0,loc_208b58
	bclr.b #$7,(a2)
	bsr.w sub_207530
	bne.w loc_208bf4
loc_208b70:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208eba,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208bc6
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208bc6
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208bc6:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208be8:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_208b2c
loc_208bf4:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208c1a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208c12
	moveq #$0,d0
	bra.s loc_208c1a
loc_208c12:
	cmpi.w #$3,d0
	bcs.s loc_208c1a
	moveq #$2,d0
loc_208c1a:
	lea $1(a2),a3
loc_208c1e:
	btst.b #$0,-(a3)
	bne.w sub_20391a
	dbf d0,loc_208c1e
	tst.b $1(a0)
	bmi.s loc_208c4e
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208cc8
loc_208c4e:
	tst.w ($ff190e).l
	bne.s loc_208c5e
	move.b ($ff1913).l,$1a(a0)
loc_208c5e:
	bra.w sub_20386e
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208ccc
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208cae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208ca6
	moveq #$0,d1
	bra.s loc_208cae
loc_208ca6:
	cmpi.w #$3,d1
	bcs.s loc_208cae
	moveq #$2,d1
loc_208cae:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208eb2).l,a1
	bsr.w sub_205a94
	bra.w sub_20386e
loc_208cc8:
	bra.w sub_20391a

sub_208ccc:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208d1c
	bset.b #$1,($ff150d).l
	beq.s loc_208d06
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208d1c
	bset.b #$2,($ff150d).l
	bne.s loc_208d1c
loc_208d06:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a54).l
loc_208d1c:
	jmp (sub_202540).l
	.incbin 36130, 400
dat_208eb2:
	.incbin 36530, 402
loc_209044:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209072(pc,d0.w),d0
	jsr dat_209072(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209070
	cmpi.w #$5a,($f786).w
	bcs.s loc_20906a
	btst.b #$0,($ff1505).l
	bne.s loc_209070
loc_20906a:
	jmp (sub_20386e).l
loc_209070:
	rts
dat_209072:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20964c,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_2090a6
	move.b #$13,$1a(a0)
loc_2090a6:
	rts
loc_2090a8:
	tst.b ($ff0f01).l
	beq.s loc_2090b6
	jmp (sub_20391a).l
loc_2090b6:
	cmpi.b #$a,$28(a0)
	beq.w loc_209044
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2090da(pc,d0.w),d0
	jsr dat_2090da(pc,d0.w)
	jsr (sub_20386e).l
	jmp (loc_207550).l
dat_2090da:
	.incbin 37082, 282

sub_2091f4:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20922c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209224
	moveq #$0,d1
	bra.s loc_20922c
loc_209224:
	cmpi.w #$3,d1
	bcs.s loc_20922c
	moveq #$2,d1
loc_20922c:
	add.w d1,d0
	rts

sub_209230:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209252
	tst.b ($ff1956).l
	beq.s loc_20924a
	tst.b $29(a0)
	bne.s loc_209252
	rts
loc_20924a:
	tst.b $29(a0)
	beq.s loc_209252
	rts
loc_209252:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208014).l
	tst.b $28(a0)
	bne.s loc_209274
	tst.b ($ff0f01).l
	beq.s loc_209274
	jmp (loc_207550).l
loc_209274:
	cmpi.b #$8,$28(a0)
	bcc.w loc_2090a8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20928c(pc,d0.w),d1
	jmp dat_20928c(pc,d1.w)
dat_20928c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20964c,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2092d6
	tst.b $29(a0)
	bne.s loc_2092d6
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_2092d6:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2091f4
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209302
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209302:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20935c
	move.b $25(a0),d0
	beq.s loc_20933c
	bsr.w sub_2037b6
	jsr (sub_206814).l
	tst.w d1
	bpl.w loc_20934a
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20934a
loc_20933c:
	tst.b $1(a0)
	bpl.s loc_20934a
	lea ($d000).w,a1
	bsr.w sub_209230
loc_20934a:
	tst.w ($ff190e).l
	bne.s loc_20935c
	lea (dat_2095c4).l,a1
	bsr.w sub_205a94
loc_20935c:
	bsr.w sub_20386e
	jmp (loc_207550).l
	move.w #$96,d0
	jsr (sub_202540).l
	dc.b $58,$28,$00,$24
	move.b #$0,$20(a0)
	bsr.w sub_20751a
	bne.s loc_20939e
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20939e:
	bsr.w sub_20751a
	bne.s loc_2093c8
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_2093c8:
	bsr.w sub_2091f4
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_20386e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093ee(pc,d0.w),d1
	jsr dat_2093ee(pc,d1.w)
	bra.w sub_20386e
dat_2093ee:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20940a
	andi.b #$7f,$2(a0)
loc_20940a:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20964c,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_209452
	bsr.w sub_203818
	addi.w #$18,$12(a0)
	rts
loc_209452:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_209478
loc_209462:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a54).l
loc_209478:
	cmpi.b #$1,d0
	bne.s $2094c4
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s dat_2094ba
	bset.b #$1,($ff150d).l
	beq.w loc_209462
	cmpi.w #$c8,($ff1512).l
	bcs.s dat_2094ba
	bset.b #$2,($ff150d).l
	beq.w loc_209462
dat_2094ba:
	dc.b $30,$3c

sub_2094bc:
	ori.l #$4ef90020,(a5)
	move.l d0,$c00(a2)
	.incbin 38086, 254
dat_2095c4:
	.incbin 38340, 586
loc_20980e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209822(pc,d0.w),d0
	jsr dat_209822(pc,d0.w)
	jmp (sub_20386e).l
dat_209822:
	.incbin 38946, 146
	tst.b $28(a0)
	bmi.w loc_20980e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098ca(pc,d0.w),d0
	jmp dat_2098ca(pc,d0.w)
dat_2098ca:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$209964,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2098fa
	move.b #$3,$1a(a0)
	bra.s loc_20991a
loc_2098fa:
	tst.w ($ff1588).l
	beq.s loc_209908
	move.b #$2,$1a(a0)
loc_209908:
	tst.b $28(a0)
	beq.s loc_20991a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20991a:
	tst.b $28(a0)
	bne.s loc_20995e
	tst.b $29(a0)
	beq.s loc_20994a
	tst.w ($ff1512).l
	beq.s loc_209936
	bclr.b #$5,$2(a0)
	bra.s loc_20995e
loc_209936:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20995e
	eori.b #$20,$2(a0)
	bra.s loc_20995e
loc_20994a:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20995e
	move.b #$2,$1a(a0)
loc_20995e:
	jmp (sub_20386e).l
	.incbin 39268, 168

sub_209a0c:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_209a28
	move.l d1,(a3)
loc_209a28:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_209a52
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a54).l
loc_209a52:
	rts
loc_209a54:
	tst.w ($ff1588).l
	beq.s loc_209aaa
	bsr.w sub_209ca6
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
	lea (dat_209e06).l,a2
	moveq #$2,d6
	bsr.w sub_209e5e
	bra.w loc_209b04
loc_209aaa:
	tst.b ($ff1511).l
	beq.s loc_209ace
	bpl.s loc_209ab8
	bsr.w sub_209c50
loc_209ab8:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209d40
loc_209ace:
	tst.b ($ff150f).l
	beq.s loc_209b04
	bpl.s loc_209adc
	bsr.w sub_209c3c
loc_209adc:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209b00
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209b00:
	bsr.w sub_209d36
loc_209b04:
	tst.w ($ff1588).l
	bne.w loc_209bb0
	tst.b ($ff1510).l
	beq.w loc_209bb0
	tst.w ($f63a).w
	bne.w loc_209bb0
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209c0e
	tst.b ($f7cc).w
	bne.s loc_209b5a
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209b5a
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209b5a
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209b5a
	move.b #$9,(a1)
loc_209b5a:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209e4c
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209e56
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209bac
	move.w #$63,d1
loc_209bac:
	bsr.w sub_209e56
loc_209bb0:
	tst.b ($ff150e).l
	beq.s loc_209bc2
	clr.b ($ff150e).l
	bsr.w sub_209e2c
loc_209bc2:
	tst.b ($f7d6).w
	beq.s loc_209c0c
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209be2
	move.l #$6d400001,d0
loc_209be2:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209cc4
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209c02
	move.l #$6e800001,d0
loc_209c02:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209cc4
loc_209c0c:
	rts
loc_209c0e:
	btst.b #$7,($ff152e).l
	bne.s loc_209c3a
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d88
	move.b #$1,($ff150c).l
loc_209c3a:
	rts

sub_209c3c:
	move.l #$73600002,($c00004).l
	lea dat_209ca2(pc),a2
	move.w #$2,d2
	bra.s loc_209c6c

sub_209c50:
	lea ($c00000).l,a6
	bsr.w sub_209e2c
	move.l #$70600002,($c00004).l
	lea dat_209c9a(pc),a2
	move.w #$6,d2
loc_209c6c:
	lea (dat_233a34).l,a1
loc_209c72:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209c8e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209c82:
	move.l (a3)+,(a6)
	dbf d1,loc_209c82
loc_209c88:
	dbf d2,loc_209c72
	rts
loc_209c8e:
	move.l #$0,(a6)
	dbf d1,loc_209c8e
	bra.s loc_209c88
dat_209c9a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209ca2:
	dc.b $ff,$ff,$00,$00

sub_209ca6:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209e22
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209e22

sub_209cc4:
	lea (dat_209dfe).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209cd4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209cd8:
	sub.l d3,d1
	bcs.s loc_209ce0
	addq.w #$1,d2
	bra.s loc_209cd8
loc_209ce0:
	add.l d3,d1
	tst.w d2
	beq.s loc_209cea
	move.w #$1,d4
loc_209cea:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209cf6
	tst.w d6
	bne.s loc_209d28
loc_209cf6:
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
loc_209d1c:
	addi.l #$400000,d0
	dbf d6,loc_209cd4
	rts
loc_209d28:
	moveq #$f,d5
loc_209d2a:
	move.l #$0,(a6)
	dbf d5,loc_209d2a
	bra.s loc_209d1c

sub_209d36:
	lea (dat_209e06).l,a2
	moveq #$2,d6
	bra.s loc_209d48

sub_209d40:
	lea (dat_209dfa).l,a2
	moveq #$5,d6
loc_209d48:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209d50:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209d54:
	sub.l d3,d1
	bcs.s loc_209d5c
	addq.w #$1,d2
	bra.s loc_209d54
loc_209d5c:
	add.l d3,d1
	tst.w d2
	beq.s loc_209d66
	move.w #$1,d4
loc_209d66:
	tst.w d4
	beq.s loc_209d94
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
loc_209d94:
	addi.l #$400000,d0
	dbf d6,loc_209d50
	rts
	.incbin 40352, 32
loc_209dc0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209dc4:
	sub.l d3,d1
	bcs.s loc_209dcc
	addq.w #$1,d2
	bra.s loc_209dc4
loc_209dcc:
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
	dbf d6,loc_209dc0
	rts
dat_209dfa:
	dc.b $00,$01,$86,$a0
dat_209dfe:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209e06:
	dc.b $00,$00,$00,$64
dat_209e0a:
	dc.b $00,$00,$00,$0a
dat_209e0e:
	dc.b $00,$00,$00,$01
dat_209e12:
	.incbin 40466, 16

sub_209e22:
	moveq #$3,d6
	lea (dat_209e12).l,a2
	bra.s sub_209e5e

sub_209e2c:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209e42
	moveq #$9,d1
loc_209e42:
	lea (dat_209e0e).l,a2
	moveq #$0,d6
	bra.s sub_209e5e

sub_209e4c:
	lea (dat_209e0e).l,a2
	moveq #$0,d6
	bra.s sub_209e5e

sub_209e56:
	lea (dat_209e0a).l,a2
	moveq #$1,d6

sub_209e5e:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209e66:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209e6a:
	sub.l d3,d1
	bcs.s loc_209e72
	addq.w #$1,d2
	bra.s loc_209e6a
loc_209e72:
	add.l d3,d1
	tst.w d2
	beq.s loc_209e7c
	move.w #$1,d4
loc_209e7c:
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
	dbf d6,loc_209e66
	rts
	.incbin 40626, 712
	tst.b ($ff0f01).l
	beq.s loc_20a188
	jmp (sub_20391a).l
loc_20a188:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$2488,$2(a0)
	move.l #$239bc6,$4(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
loc_20a1b2:
	lea ($d000).w,a1
	bsr.w sub_20a228
	beq.s loc_20a21c
	move.b #$1,($ff156e).l
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$150,d0
	move.w d0,$8(a1)
	bset.b #$0,($f7cc).w
	move.w #$808,($f602).w
	move.w #$0,$10(a1)
	move.w #$0,$14(a1)
	move.b #$1,($f744).w
	move.w #$af,d0
	jsr (sub_202540).l
	jsr (sub_20751a).l
	bne.s loc_20a1b2
	move.b #$14,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
loc_20a21c:
	lea (dat_239bbe).l,a1
	jmp (sub_205a94).l

sub_20a228:
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20a264
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20a264
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_20a264
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20a264
	moveq #$1,d0
	rts
loc_20a264:
	moveq #$0,d0
	rts
	.incbin 41576, 2274
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab58(pc,d0.w),d0
	jmp dat_20ab58(pc,d0.w)
dat_20ab58:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b256,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b216).l,a2
loc_20aba6:
	jsr (sub_20751a).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b256,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20abf8
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20abf8:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20aba6
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ac20
	bge.s loc_20ac16
	neg.w d0
loc_20ac16:
	add.w d0,$a(a0)
	jmp (sub_20386e).l
loc_20ac20:
	addq.b #$4,$24(a0)
	jmp (sub_20386e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ac44
	bge.s loc_20ac3a
	neg.w d0
loc_20ac3a:
	add.w d0,$8(a0)
	jmp (sub_20386e).l
loc_20ac44:
	addq.b #$4,$24(a0)
	jmp (sub_20386e).l
	tst.b $1e(a0)
	beq.s loc_20ac5e
	subq.b #$1,$1e(a0)
	jmp (sub_20386e).l
loc_20ac5e:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ac78
	bge.s loc_20ac6e
	neg.w d0
loc_20ac6e:
	add.w d0,$a(a0)
	jmp (sub_20386e).l
loc_20ac78:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20270a).l
	tst.b $1e(a0)
	beq.s loc_20ac9a
	subq.b #$1,$1e(a0)
	jmp (sub_20386e).l
loc_20ac9a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20acb4
	bge.s loc_20acaa
	neg.w d0
loc_20acaa:
	add.w d0,$8(a0)
	jmp (sub_20386e).l
loc_20acb4:
	jmp (sub_20391a).l
	tst.l ($f680).w
	bne.s loc_20acce
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_20391a).l
loc_20acce:
	rts
	.incbin 44240, 1350
dat_20b216:
	.incbin 45590, 3306
loc_20bf00:
	lea dat_20bf52(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bf0c:
	cmp.w (a1)+,d0
	bcs.s loc_20bf14
	addq.b #$2,d1
	bra.s loc_20bf0c
loc_20bf14:
	move.b d1,($ff1574).l
	move.w dat_20bf6a(pc,d1.w),d0
	jmp (sub_20270a).l

sub_20bf24:
	lea dat_20bf52(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bf30:
	cmp.w (a1)+,d0
	bcs.s loc_20bf38
	addq.b #$2,d1
	bra.s loc_20bf30
loc_20bf38:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bf42
	rts
loc_20bf42:
	move.b d1,($ff1574).l
	move.w dat_20bf5e(pc,d1.w),d0
	jmp (loc_20273c).l
dat_20bf52:
	dc.b $07,$00,$0b,$00,$0f,$00,$14,$00
	dc.b $18,$20,$ff,$ff
dat_20bf5e:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
	dc.b $00,$0d,$00,$0e
dat_20bf6a:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07,$00,$08

sub_20bf76:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20bf84
	move.w #$4f2,d1
loc_20bf84:
	move.w d1,$2(a0)
	rts
	.incbin 49034, 1304
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c4c2(pc,d0.w),d0
	jsr dat_20c4c2(pc,d0.w)
	bsr.s sub_20c4c6
	jsr (sub_20386e).l
	move.w $36(a0),d0
	jmp (loc_207554).l
dat_20c4c2:
	dc.b $00,$0e,$00,$38

sub_20c4c6:
	lea ($d000).w,a1
	jmp (loc_208014).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$41b,$2(a0)
	move.l #$20c578,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	tst.b $3a(a0)
	bne.s loc_20c520
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c548(pc,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,$19(a0)
	move.b (a2)+,$16(a0)
	bra.s loc_20c536
loc_20c520:
	subq.b #$1,$3a(a0)
	bne.s loc_20c536
	addq.b #$1,$3c(a0)
	cmpi.b #$c,$3c(a0)
	bcs.s loc_20c536
	clr.b $3c(a0)
loc_20c536:
	clr.w $12(a0)
	tst.b $1a(a0)
	bne.s loc_20c546
	move.w #$100,$12(a0)
loc_20c546:
	rts
dat_20c548:
	.incbin 50504, 224
	tst.b $29(a0)
	bpl.s loc_20c632
	bra.w loc_20c756
loc_20c632:
	jsr (sub_20e598).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c656(pc,d0.w),d0
	jsr dat_20c656(pc,d0.w)
	jsr (sub_20386e).l
	move.w $30(a0),d0
	jmp (loc_207554).l
dat_20c656:
	dc.b $00,$06,$00,$92,$00,$ae
	move.w $8(a0),$30(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$244e,$2(a0)
	move.l #$20c748,$4(a0)
	move.b #$18,$19(a0)
	move.b #$e,$16(a0)
	move.b #$2a,$20(a0)
	move.l #$ffffb000,$2c(a0)
	addq.b #$2,$24(a0)
	jsr (sub_207530).l
	beq.s loc_20c6a8
	jmp (sub_20391a).l
loc_20c6a8:
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$3e(a1)
	tst.b $29(a0)
	beq.s loc_20c6e8
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
loc_20c6e8:
	addi.l #$10000,$c(a0)
	jsr (sub_206814).l
	tst.w d1
	bpl.s loc_20c702
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20c702:
	rts
	tst.b $1(a0)
	bpl.s loc_20c722
	addq.w #$1,$32(a0)
	move.w $32(a0),d0
	andi.w #$1f,d0
	bne.s loc_20c722
	move.w #$b1,d0
	jsr (sub_202540).l
loc_20c722:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	jsr (sub_206814).l
	add.w d1,$c(a0)
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20c746
	move.w #$199,$2a(a0)
	neg.l $2c(a0)
loc_20c746:
	rts
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e8
	dc.b $f0,$07,$00,$10,$08,$00
loc_20c756:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c76a(pc,d0.w),d0
	jsr dat_20c76a(pc,d0.w)
	jmp (sub_20386e).l
dat_20c76a:
	dc.b $00,$04,$00,$34
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$244e,$2(a0)
	move.l #$20c822,$4(a0)
	move.b #$c,$19(a0)
	move.b #$10,$16(a0)
	move.b #$ab,$20(a0)
	movea.w $3e(a0),a1
	cmpi.b #$24,$0(a1)
	beq.s loc_20c7b0
	jmp (sub_20391a).l
loc_20c7b0:
	tst.b $28(a0)
	bne.s loc_20c7ca
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20c7f4
	move.w #$3c,$2a(a0)
	eori.b #$1,$1c(a0)
loc_20c7ca:
	move.w #$ffe7,$2c(a0)
	move.w #$0,$2e(a0)
	tst.b $1c(a0)
	beq.s loc_20c7e8
	move.w #$ffed,$2c(a0)
	move.w #$fff1,$2e(a0)
loc_20c7e8:
	btst.b #$0,$1(a0)
	beq.s loc_20c7f4
	neg.w $2c(a0)
loc_20c7f4:
	move.w $8(a1),d0
	move.w $c(a1),d1
	add.w $2c(a0),d0
	add.w $2e(a0),d1
	move.w d0,$8(a0)
	move.w d1,$c(a0)
	lea dat_20c816(pc),a1
	jmp (sub_205a94).l
dat_20c816:
	.incbin 51222, 120
	cmpi.b #$2,($ff1507).l
	bne.s loc_20c89c
	move.w #$437a,d0
loc_20c89c:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	bpl.s loc_20c8a8
	neg.b d0
loc_20c8a8:
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	moveq #$3,d0
	moveq #$2,d1
	tst.b $28(a0)
	bpl.s loc_20c8c8
	moveq #$1,d0
	moveq #$8,d1
loc_20c8c8:
	move.b d0,$18(a0)
	move.b d1,$24(a0)
	rts
	.incbin 51410, 1488
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$36a,$2(a0)
	move.w #$80,$2a(a0)
	move.l #$10000,$2c(a0)
	move.l #$20cfb2,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$2e,$16(a0)
	jsr (sub_207530).l
	beq.s loc_20ceee
	jmp (sub_20391a).l
loc_20ceee:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$1,$28(a1)
	lea (a1),a2
	jsr (sub_207530).l
	beq.s loc_20cf0e
	jmp (sub_20391a).l
loc_20cf0e:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$ff,$28(a1)
	move.w #$ffd4,$3c(a1)
	move.w #$14,$3c(a2)
	bset.b #$1,$1(a2)
	bset.b #$1,$22(a2)
	lea (a1),a6
	bsr.s sub_20cf3c
	lea (a2),a6

sub_20cf3c:
	ori.b #$4,$1(a6)
	move.w #$36a,$2(a6)
	move.w a0,$3e(a6)
	move.b #$3,$18(a6)
	move.l #$20d11c,$4(a6)
	move.b #$20,$17(a6)
	move.b #$20,$19(a6)
	move.b #$1c,$16(a6)
	rts
	.incbin 53102, 1076
	tst.b $28(a0)
	bne.w loc_20d50e
	tst.b $29(a0)
	beq.s loc_20d3d6
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d6be
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d6be
	move.w $30(a0),d0
	cmp.w $30(a1),d0
	bne.w loc_20d6be
loc_20d3d6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3fc(pc,d0.w),d0
	jsr dat_20d3fc(pc,d0.w)
	jsr (sub_20386e).l
	tst.b $29(a0)
	bmi.s loc_20d3fa
	move.w $2e(a0),d0
	jmp (loc_207554).l
loc_20d3fa:
	rts
dat_20d3fc:
	dc.b $00,$08,$00,$aa,$00,$ba,$00,$fa
	lea dat_20d73e(pc),a5
	moveq #$0,d0
	move.b $29(a0),d0
	add.w d0,d0
	adda.w $0(a5,d0.w),a5
	move.w (a5)+,$2c(a0)
	lea (a0),a6
	bsr.s sub_20d466
	move.w (a5)+,d6
	bra.s loc_20d460
loc_20d420:
	jsr (sub_20751a).l
	beq.s loc_20d42e
	jmp (sub_20391a).l
loc_20d42e:
	move.b $0(a0),$0(a1)
	move.w a0,$2a(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w (a5)+,$2c(a1)
	move.w $8(a0),d0
	move.w $c(a0),d1
	add.w (a5)+,d0
	add.w (a5)+,d1
	move.w d0,$8(a1)
	move.w d1,$c(a1)
	lea (a1),a6
	bsr.s sub_20d466
loc_20d460:
	dbf d6,loc_20d420
	rts

sub_20d466:
	move.b #$2,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$5,$16(a6)
	move.w #$34c,$2(a6)
	move.l #$20d6d4,$4(a6)
	move.w $8(a0),$2e(a6)
	move.w $c(a0),$30(a6)
	rts
	move.b #$5,$16(a0)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_20800e).l
	sne $3e(a0)
	addi.w #$ffff,$2c(a0)
	bne.s loc_20d4f4
	move.b #$10,$16(a0)
	move.w #$ff,$1c(a0)
	addq.b #$2,$24(a0)
	tst.b $3e(a0)
	beq.s loc_20d4f4
	lea ($d000).w,a1
	jmp (sub_207ec6).l
loc_20d4f4:
	rts
	lea dat_20d6c4(pc),a1
	jsr (sub_205a94).l
	tst.b $1a(a0)
	bne.s loc_20d50c
	move.b #$2,$24(a0)
loc_20d50c:
	rts
loc_20d50e:
	tst.b $29(a0)
	beq.s loc_20d53a
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d6be
	move.w $2c(a0),d0
	cmp.w $2c(a1),d0
	bne.w loc_20d6be
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d6be
loc_20d53a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d560(pc,d0.w),d0
	jsr dat_20d560(pc,d0.w)
	jsr (sub_20386e).l
	tst.b $29(a0)
	bmi.s loc_20d55e
	move.w $2c(a0),d0
	jmp (loc_207554).l
loc_20d55e:
	rts
dat_20d560:
	.incbin 54624, 350
loc_20d6be:
	jmp (sub_20391a).l
dat_20d6c4:
	.incbin 54980, 122
dat_20d73e:
	.incbin 55102, 1012
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$2e,$20(a0)
	move.w #$2455,$2(a0)
	move.w $8(a0),$38(a0)
	move.w $c(a0),$3a(a0)
	lea dat_20de38(pc),a1
	move.l #$ffff0000,d0
	move.w #$80,d1
	move.w #$400,d2
	move.w #$3,d3
	tst.b $28(a0)
	beq.s loc_20db94
	lea dat_20de4c(pc),a1
	move.l #$ffff8000,d0
	move.w #$100,d1
	move.w #$300,d2
	move.w #$4,d3
loc_20db94:
	move.l a1,$4(a0)
	move.l d0,$2a(a0)
	move.w d1,$2e(a0)
	move.w d2,$34(a0)
	move.w d3,$36(a0)
	jsr (sub_207530).l
	beq.s loc_20dbb6
	jmp (sub_20391a).l
loc_20dbb6:
	move.b $0(a0),$0(a1)
	move.w a1,$3c(a0)
	move.w a0,$3e(a1)
	move.b $1(a0),$1(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b $28(a0)
	bne.s loc_20dc3a
	jsr (sub_207530).l
	beq.s loc_20dc02
	jmp (sub_20391a).l
loc_20dc02:
	move.b $0(a0),$0(a1)
	move.w a1,$3e(a0)
	move.w a0,$3e(a1)
	move.b $1(a0),$1(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b $28(a0),$28(a1)
	move.b #$fe,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20dc3a:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20dc5e
	move.w $2e(a0),$30(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20dc5e:
	move.w $3a(a0),$c(a0)
	clr.w $e(a0)
	move.w $34(a0),d0
	add.w d0,$32(a0)
	move.w $32(a0),d0
	lsr.w #$8,d0
	jsr (sub_200a44).l
	swap d0
	clr.w d0
	move.w $36(a0),d1
	asr.l d1,d0
	add.l d0,$c(a0)
	lea dat_20de32(pc),a1
	jsr (sub_205a94).l
	jsr (sub_20386e).l
	move.w $38(a0),d0
	jmp (loc_207554).l
	.incbin 56484, 398
dat_20de32:
	dc.b $00,$02,$02,$00,$01,$ff
dat_20de38:
	.incbin 56888, 20
dat_20de4c:
	.incbin 56908, 1868

sub_20e598:
	tst.b ($ff156a).l
	beq.s loc_20e5de
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e5b0
	tst.b $28(a0)
	beq.s loc_20e5de
loc_20e5b0:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_20391a).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e5dc
	move.w #$9e,d0
	jsr (sub_202540).l
loc_20e5dc:
	addq.l #$4,a7
loc_20e5de:
	rts

sub_20e5e0:
	tst.b $28(a0)
	bmi.s loc_20e610
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e600
	tst.b ($ff156d).l
	bne.s loc_20e610
	addq.l #$4,a7
	jmp (loc_207550).l
loc_20e600:
	tst.b ($ff156a).l
	bne.s loc_20e610
	addq.l #$4,a7
	jmp (sub_20391a).l
loc_20e610:
	rts
	.incbin 58898, 554
	jsr (sub_20e5e0).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e8fa
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e85c(pc,d0.w),d0
	jmp dat_20e85c(pc,d0.w)
dat_20e85c:
	.incbin 59484, 158
loc_20e8fa:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e908(pc,d0.w),d0
	jmp dat_20e908(pc,d0.w)
dat_20e908:
	.incbin 59656, 554

sub_20eb32:
	jsr (sub_206308).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20ec56).l,a1
	move.w #$3f,d6
	bsr.w sub_20ec12
	bne.s loc_20eb74
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4500,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20eb74:
	lea (dat_20ec68).l,a1
	move.w #$3f,d6
	bsr.w sub_20ec12
	bne.s loc_20eba8
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4600,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20eba8:
	lea (dat_20ec7a).l,a1
	move.w #$7f,d6
	bsr.w sub_20ec12
	bne.s loc_20ebdc
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4700,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20ebdc:
	lea (dat_20ec8c).l,a1
	move.w #$1f,d6
	bsr.w sub_20ec12
	bne.s loc_20ec10
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4900,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20ec10:
	rts

sub_20ec12:
	subq.b #$1,(a2)
	bpl.w loc_20ec4a
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20ec28
	moveq #$0,d0
loc_20ec28:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20ec38:
	move.l (a1)+,(a3)+
	dbf d6,loc_20ec38
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20ec4a:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20ec56:
	.incbin 60502, 18
dat_20ec68:
	.incbin 60520, 18
dat_20ec7a:
	.incbin 60538, 18
dat_20ec8c:
	.incbin 60556, 30
dat_20ecaa:
	.incbin 60586, 16
dat_20ecba:
	.incbin 60602, 2058
	jmp (dat_206358).l
	.incbin 62666, 1706
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
	jsr ($2038cc).l
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
	jsr ($2038cc).l
loc_20fca4:
	rts
loc_20fca6:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20fcb6
	jsr ($2038cc).l
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
	.incbin 131072, 61872
dat_22f1b0:
	.incbin 192944, 18180
dat_2338b4:
	.incbin 211124, 384
dat_233a34:
	.incbin 211508, 1536
dat_234034:
	.incbin 213044, 256
dat_234134:
	.incbin 213300, 4096
dat_235134:
	.incbin 217396, 4796
dat_2363f0:
	.incbin 222192, 13792
dat_2399d0:
	.incbin 235984, 494
dat_239bbe:
	.incbin 236478, 25666
