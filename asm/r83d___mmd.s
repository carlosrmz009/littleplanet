; R83D__.MMD
; disassembled from the disc; code only, data comes from data/R83D__.MMD at build time
	.file "R83D__.MMD", 262144

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
	lea (dat_236d78).l,a2
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
	lea (dat_236e78).l,a2
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
	lea (dat_236d78).l,a2
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
	lea (dat_236e78).l,a2
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
	lea (dat_236d78).l,a2
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
	lea (dat_237e78).l,a2
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
	lea (dat_236d78).l,a2
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
	lea (dat_237e78).l,a2
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
	bsr.w sub_2073b8
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
	lea (dat_20fd20).l,a2
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
	bsr.w sub_202acc
	bsr.w sub_202bea
	bset.b #$2,($f754).w
	bsr.w sub_203594
	bsr.w sub_2034aa
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
	jsr (sub_20fb4e).l
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
	jsr (sub_20598c).l
	bsr.w sub_2073b8
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
	jsr (sub_2073ce).l
	jsr (sub_2036c6).l
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
	bsr.w sub_202bea
loc_201bd6:
	jsr (sub_203870).l
	tst.w ($ff190e).l
	bne.s loc_201be8
	bsr.w sub_200184
loc_201be8:
	jsr (sub_20d9c8).l
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
	jmp (sub_20598c).l
dat_201d6e:
	.incbin 7534, 38

sub_201d94:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_233306).l,a1
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
	jmp (sub_20598c).l
loc_201e22:
	tst.b ($ff151f).l
	bne.s loc_201e18
	tst.b ($ff1520).l
	bne.s loc_201e18
	move.w #$90,d0
	jmp (sub_20598c).l
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
	jmp (sub_20598c).l
loc_201e5e:
	tst.b ($ff151f).l
	bne.s loc_201e54
	tst.b ($ff1520).l
	bne.s loc_201e54
	move.w #$91,d0
	jmp (sub_20598c).l
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
	bsr.w sub_2058ae
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
	jsr (sub_20fb4e).l
	jsr (sub_2024f4).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030a2
	bsr.w sub_2027e8
	jmp (loc_2095d4).l
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
	bsr.w sub_2030a2
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
	lea (dat_20fd30).l,a1
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
	.incbin 10044, 44

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
	lea (dat_20fd30).l,a1
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
	.incbin 10414, 542

sub_202acc:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202b28).l,a0
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
	bra.w loc_202b34
dat_202b28:
	dc.b $00,$04,$00,$00,$0e,$97,$00,$00
	dc.b $03,$10,$00,$60
loc_202b34:
	tst.b ($ff1522).l
	beq.s loc_202b54
	jsr (sub_20663c).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202b52
	moveq #$0,d0
loc_202b52:
	bra.s loc_202b6a
loc_202b54:
	lea (dat_202ba6).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202b6a:
	subi.w #$a0,d1
	bcc.s loc_202b72
	moveq #$0,d1
loc_202b72:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202b7c
	move.w d2,d1
loc_202b7c:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202b88
	moveq #$0,d0
loc_202b88:
	cmp.w ($f72e).w,d0
	blt.s loc_202b92
	move.w ($f72e).w,d0
loc_202b92:
	move.w d0,($f704).w
	bsr.w sub_202bae
	lea (dat_202baa).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202ba6:
	dc.b $00,$30,$02,$4c
dat_202baa:
	dc.b $7f,$7f,$7f,$7f

sub_202bae:
	swap d0
	lsr.l #$3,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	move.w d1,($f710).w
	addi.w #$70,($f710).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d1,d2
	move.w d2,($f718).w
	addi.w #$70,($f718).w
	lsl.l #$1,d1
	move.w d1,($f708).w
	addi.w #$70,($f708).w
	rts

sub_202bea:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202bf6
	rts
loc_202bf6:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202d18
	bsr.w sub_202db8
	bsr.w sub_20362e
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_203042
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$8,d4
	moveq #$4,d6
	bsr.w sub_20300e
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$2,d6
	bsr.w sub_202fda
	move.w ($f704).w,d0
	lsr.w #$3,d0
	bsr.w sub_202faa
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
	move.w ($f708).w,d0
	neg.w d0
	moveq #$21,d6
loc_202c96:
	move.w d0,(a1)+
	dbf d6,loc_202c96
	move.w ($f718).w,d0
	neg.w d0
	moveq #$5,d6
loc_202ca4:
	move.w d0,(a1)+
	dbf d6,loc_202ca4
	move.w ($f710).w,d0
	neg.w d0
	moveq #$7,d6
loc_202cb2:
	move.w d0,(a1)+
	dbf d6,loc_202cb2
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202cd6
loc_202cd6:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ce4(pc,d2.w)
loc_202ce2:
	move.w (a2)+,d0
loc_202ce4:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ce2
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
	dbf d1,loc_202ce2
	rts

sub_202d18:
	move.w ($f700).w,d4
	bsr.s sub_202d4c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d4a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d44
	bset.b #$2,($f754).w
	rts
loc_202d44:
	bset.b #$3,($f754).w
loc_202d4a:
	rts

sub_202d4c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202d5e
	bcs.s loc_202d8e
	bra.s loc_202d64
loc_202d5e:
	clr.w ($f73a).w
	rts
loc_202d64:
	cmpi.w #$10,d0
	blt.s loc_202d6e
	move.w #$10,d0
loc_202d6e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d7c
	move.w ($f72a).w,d0
loc_202d7c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d8e:
	cmpi.w #$fff0,d0
	bge.s loc_202d98
	move.w #$fff0,d0
loc_202d98:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d7c
	move.w ($f728).w,d0
	bra.s loc_202d7c
	.incbin 11688, 16

sub_202db8:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202dcc
	subq.w #$5,d0
loc_202dcc:
	btst.b #$1,$22(a6)
	beq.s loc_202dec
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e38
	subi.w #$40,d0
	bcc.s loc_202e38
	tst.b ($f75c).w
	bne.s loc_202e4a
	bra.s loc_202df8
loc_202dec:
	sub.w ($f73e).w,d0
	bne.s loc_202dfe
	tst.b ($f75c).w
	bne.s loc_202e4a
loc_202df8:
	clr.w ($f73c).w
	rts
loc_202dfe:
	cmpi.w #$60,($f73e).w
	bne.s loc_202e26
	move.w $14(a6),d1
	bpl.s loc_202e0e
	neg.w d1
loc_202e0e:
	cmpi.w #$800,d1
	bcc.s loc_202e38
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e98
	cmpi.w #$fffa,d0
	blt.s loc_202e62
	bra.s loc_202e50
loc_202e26:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e98
	cmpi.w #$fffe,d0
	blt.s loc_202e62
	bra.s loc_202e50
loc_202e38:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e98
	cmpi.w #$fff0,d0
	blt.s loc_202e62
	bra.s loc_202e50
loc_202e4a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e50:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ea2
	bra.w loc_202e6e
loc_202e62:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e6e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202ec6
	cmpi.w #$ff00,d1
	bgt.s loc_202e92
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202ec6
loc_202e92:
	move.w ($f72c).w,d1
	bra.s loc_202ec6
loc_202e98:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ea2:
	cmp.w ($f72e).w,d1
	blt.s loc_202ec6
	subi.w #$800,d1
	bcs.s loc_202ec2
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202ec6
loc_202ec2:
	move.w ($f72e).w,d1
loc_202ec6:
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
	bne.s loc_202f08
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202f02
	bset.b #$0,($f754).w
	rts
loc_202f02:
	bset.b #$1,($f754).w
loc_202f08:
	rts
	.incbin 12042, 122
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fa8
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202fa2
	bset.b #$4,($f756).w
	rts
loc_202fa2:
	bset.b #$5,($f756).w
loc_202fa8:
	rts

sub_202faa:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202fd8
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202fd2
	bset.b #$0,($f756).w
	rts
loc_202fd2:
	bset.b #$1,($f756).w
loc_202fd8:
	rts

sub_202fda:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_20300c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_203006
	bset.b d6,($f756).w
	bra.s loc_20300c
loc_203006:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_20300c:
	rts

sub_20300e:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203040
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_20303a
	bset.b d6,($f758).w
	bra.s loc_203040
loc_20303a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203040:
	rts

sub_203042:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203074
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_20306e
	bset.b d6,($f75a).w
	bra.s loc_203074
loc_20306e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203074:
	rts
	.incbin 12406, 20
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203160
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_203246

sub_2030a2:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203160
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203246
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203248
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_20315e
	bclr.b #$0,(a2)
	beq.s loc_203114
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203472
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324a
loc_203114:
	bclr.b #$1,(a2)
	beq.s loc_20312e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203472
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20324a
loc_20312e:
	bclr.b #$2,(a2)
	beq.s loc_203144
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203472
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032a0
loc_203144:
	bclr.b #$3,(a2)
	beq.s loc_20315e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203472
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032a0
loc_20315e:
	rts

sub_203160:
	lea (dat_20352a).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20317c
	bclr.b #$1,(a2)
	beq.s loc_2031c6
	move.w #$e0,d4
loc_20317c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2031f6(pc,d0.w),a3
	beq.s loc_2031ae
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203472
	movem.l (a7)+,d4-d5
	bsr.w sub_20324a
	movea.l (a7)+,a0
	bra.s loc_2031c6
loc_2031ae:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203474
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203276
	movea.l (a7)+,a0
loc_2031c6:
	tst.b (a2)
	bne.s loc_2031cc
	rts
loc_2031cc:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2031e0
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2031e0:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203206
dat_2031f6:
	.incbin 12790, 16
loc_203206:
	moveq #$f,d6
	move.l #$800000,d7
loc_20320e:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20323a
	btst.b d0,(a2)
	beq.s loc_20323a
	add.w d0,d0
	movea.l dat_2031f6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20334c
	movem.l (a7)+,d4-d5
	bsr.w sub_203472
	bsr.w sub_2032ce
	movem.l (a7)+,d4-d5/a0
loc_20323a:
	addi.w #$10,d4
	dbf d6,loc_20320e
	clr.b (a2)
	rts

sub_203246:
	rts

sub_203248:
	rts

sub_20324a:
	moveq #$15,d6

sub_20324c:
	move.l #$800000,d7
	move.l d0,d1
loc_203254:
	movem.l d4-d5,-(a7)
	bsr.w sub_20334c
	move.l d1,d0
	bsr.w sub_2032ce
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203254
	rts

sub_203276:
	move.l #$800000,d7
	move.l d0,d1
loc_20327e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20334e
	move.l d1,d0
	bsr.w sub_2032ce
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20327e
	rts

sub_2032a0:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2032aa:
	movem.l d4-d5,-(a7)
	bsr.w sub_20334c
	move.l d1,d0
	bsr.w sub_2032ce
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2032aa
	rts

sub_2032ce:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20330a
	btst.b #$3,(a0)
	bne.s loc_2032ea
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2032ea:
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
loc_20330a:
	btst.b #$3,(a0)
	bne.s loc_20332c
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
loc_20332c:
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

sub_20334c:
	add.w (a3),d5

sub_20334e:
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
	beq.s loc_20339c
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
loc_20339c:
	rts
	.incbin 13214, 212

sub_203472:
	add.w (a3),d5

sub_203474:
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
	.incbin 13454, 28

sub_2034aa:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034d4
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2034fc

sub_2034d4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034d8:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203472
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20324c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034d8
	rts
loc_2034fc:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203500:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20352a).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20355c
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203500
	rts
dat_20352a:
	.incbin 13610, 34
dat_20354c:
	.incbin 13644, 16

sub_20355c:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20354c(pc,d0.w),a3
	beq.s loc_20357e
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203472
	movem.l (a7)+,d4-d5
	bsr.w sub_20324a
	bra.s loc_203592
loc_20357e:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203474
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203276
loc_203592:
	rts

sub_203594:
	moveq #$0,d0
	lea (dat_20fd20).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2025dc
	movea.l (a2)+,a0
	bsr.w sub_2035e0
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200672
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2035de
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035de
	bsr.w sub_20270a
loc_2035de:
	rts

sub_2035e0:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035ea:
	move.l d0,(a3)+
	dbf d1,loc_2035ea
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203600
	lea ($a040).w,a3
	moveq #$2,d1

sub_203600:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_239134).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20361a:
	move.w d1,d0
	movea.l a3,a0
loc_20361e:
	move.b (a1)+,(a0)+
	dbf d0,loc_20361e
	lea $80(a3),a3
	dbf d2,loc_20361a
	rts

sub_20362e:
	lea ($d000).w,a6
	bsr.w sub_20368a
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203664
	bcc.s loc_203666
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20365a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20365a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203664:
	rts
loc_203666:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20367e
	btst.b #$1,$22(a6)
	beq.s loc_20367e
	add.w d1,d1
	add.w d1,d1
loc_20367e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_20368a:
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
	move.w d0,($f72e).w
	move.w d0,($f726).w
	rts

sub_2036c6:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2036ce:
	move.b (a0),d0
	beq.s loc_2036e4
	add.w d0,d0
	add.w d0,d0
	lea (dat_203ae8).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2036e4:
	lea $40(a0),a0
	dbf d7,loc_2036ce
	rts

sub_2036ee:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20372c
	bpl.s loc_20371e
	btst.b #$1,$2c(a0)
	beq.s loc_20371e
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20372c
loc_20371e:
	btst.b #$2,$2c(a0)
	bne.s loc_20372c
	addi.w #$38,$12(a0)
loc_20372c:
	tst.w $12(a0)
	bmi.s loc_203740
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203740
	move.w #$1000,$12(a0)
loc_203740:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203750:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20378c
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20378c
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20378a
	neg.w d1
loc_20378a:
	add.w d1,d0
loc_20378c:
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

sub_2037a6:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203816
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203832
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203832
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2037f0
	cmpi.w #$800,d3
	bcs.s loc_203802
	subi.w #$800,d3
	bra.s loc_203802
loc_2037f0:
	cmpi.w #$700,($f704).w
	bcs.s loc_203802
	cmpi.w #$100,d3
	bcc.s loc_203802
	addi.w #$800,d3
loc_203802:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203832
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203832
loc_203816:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203832
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203832:
	rts
	.incbin 14388, 30

sub_203852:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203858:
	move.l d1,(a1)+
	dbf d0,loc_203858
	rts
dat_203860:
	.incbin 14432, 16

sub_203870:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_20387c:
	tst.w (a4)
	beq.w loc_20393c
	moveq #$2,d6
loc_203884:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203934
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2038ea
	movea.l dat_203860(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2038ce
	cmpi.w #$800,d2
	bcs.s loc_2038e0
	subi.w #$800,d2
	bra.s loc_2038e0
loc_2038ce:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2038e0
	cmpi.w #$100,d2
	bcc.s loc_2038e0
	addi.w #$800,d2
loc_2038e0:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_20390c
loc_2038ea:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_20390c
	.incbin 14580, 24
loc_20390c:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_20392a
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_20392e
loc_20392a:
	bsr.w sub_20395e
loc_20392e:
	bset.b #$7,$1(a0)
loc_203934:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203884
loc_20393c:
	lea $80(a4),a4
	dbf d7,loc_20387c
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203956
	move.l #$0,(a2)
	rts
loc_203956:
	move.b #$0,-$5(a2)
	rts

sub_20395e:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_2039a4
	btst.l #$1,d4
	bne.w loc_2039f2
loc_203970:
	cmpi.b #$50,d5
	beq.s loc_2039a2
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
	bne.s loc_20399c
	addq.w #$1,d0
loc_20399c:
	move.w d0,(a2)+
	dbf d1,loc_203970
loc_2039a2:
	rts
loc_2039a4:
	btst.l #$1,d4
	bne.w loc_203a38
loc_2039ac:
	cmpi.b #$50,d5
	beq.s loc_2039f0
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
	bne.s loc_2039ea
	addq.w #$1,d0
loc_2039ea:
	move.w d0,(a2)+
	dbf d1,loc_2039ac
loc_2039f0:
	rts
loc_2039f2:
	cmpi.b #$50,d5
	beq.s loc_203a36
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
	bne.s loc_203a30
	addq.w #$1,d0
loc_203a30:
	move.w d0,(a2)+
	dbf d1,loc_2039f2
loc_203a36:
	rts
loc_203a38:
	cmpi.b #$50,d5
	beq.s loc_203a8a
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
	bne.s loc_203a84
	addq.w #$1,d0
loc_203a84:
	move.w d0,(a2)+
	dbf d1,loc_203a38
loc_203a8a:
	rts
	.incbin 14988, 92
dat_203ae8:
	.incbin 15080, 274

sub_203bfa:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203c0c
	move.w #$0,(a1)
	rts
loc_203c0c:
	tst.w (a1)
	bne.s loc_203c16
	move.b #$1,$1(a1)
loc_203c16:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203c60
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203c52
	neg.w $10(a0)
loc_203c52:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_20598c
loc_203c60:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203c7e
	cmpa.w #$d040,a0
	beq.s loc_203c7e
	tst.b ($ff1906).l
	beq.s loc_203c7e
	jmp (loc_207006).l
loc_203c7e:
	move.b $2a(a0),d0
	beq.s loc_203ca8
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203c9a
	cmpi.b #$2d,d0
	bcs.s loc_203ca4
	move.b #$2d,d0
	bra.s loc_203ca4
loc_203c9a:
	cmpi.b #$1e,d0
	bcs.s loc_203ca4
	move.b #$1e,d0
loc_203ca4:
	move.b d0,$2a(a0)
loc_203ca8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203cb6(pc,d0.w),d1
	jmp dat_203cb6(pc,d1.w)
dat_203cb6:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203cc0:
	tst.b ($d300).w
	bne.s loc_203cfe
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203cfe:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203d26
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203d26:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203d5a:
	tst.b ($ff1506).l
	bne.s loc_203dc0
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203dc0
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203dc4
	cmpi.b #$2f,d1
	bne.s loc_203dc2
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203dc0
	tst.b $2c(a0)
	beq.s loc_203dc0
	jsr (sub_2075ca).l
	bne.s loc_203dc0
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203db8
	moveq #$0,d0
loc_203db8:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203dc0:
	rts
loc_203dc2:
	rts

sub_203dc4:
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

sub_203dea:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203df6
	neg.w d0
loc_203df6:
	btst.b #$1,$2c(a0)
	beq.s loc_203e06
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203e2e
loc_203e06:
	cmpi.w #$600,d0
	bcs.s loc_203e2e
	tst.w $14(a0)
	bpl.s loc_203e20
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203e3c
	move.w #$e0,d1
	bra.s loc_203e3c
loc_203e20:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203e3c
	move.w #$60,d1
	bra.s loc_203e3c
loc_203e2e:
	cmpi.w #$a0,d1
	beq.s loc_203e3c
	bcc.s loc_203e3a
	addq.w #$2,d1
	bra.s loc_203e3c
loc_203e3a:
	subq.w #$2,d1
loc_203e3c:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203dea
	bsr.w sub_203d5a
	tst.w ($ff1588).l
	beq.s loc_203e62
	btst.b #$4,($f605).w
	beq.s loc_203e62
	move.b #$1,($ff1906).l
	rts
loc_203e62:
	tst.b ($f7cc).w
	bne.s loc_203e6e
	move.w ($f604).w,($f602).w
loc_203e6e:
	btst.b #$0,$2c(a0)
	beq.s loc_203e92
	cmpi.b #$6,($ff1506).l
	bne.s loc_203e8c
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203eaa
loc_203e8c:
	bsr.w sub_204174
	bra.s loc_203eaa
loc_203e92:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203ef0(pc,d0.w),d1
	jsr dat_203ef0(pc,d1.w)
	jsr (sub_206494).l
loc_203eaa:
	bsr.s sub_203efe
	bsr.w sub_203fbe
	bsr.w sub_203fd8
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203ed2
	tst.b $1c(a0)
	bne.s loc_203ed2
	move.b $1d(a0),$1c(a0)
loc_203ed2:
	bsr.w sub_20537c
	tst.b $2c(a0)
	bmi.s loc_203eea
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203eea
	jsr (sub_206b0c).l
loc_203eea:
	bsr.w sub_205232
	rts
dat_203ef0:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203efe:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203f22
	move.w $30(a0),d0
	beq.s loc_203f14
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203f22
loc_203f14:
	btst.b #$6,$2c(a0)
	bne.s loc_203f22
	jsr (sub_2037a6).l
loc_203f22:
	tst.b ($ff151f).l
	beq.s loc_203f66
	tst.w $32(a0)
	beq.s loc_203f66
	subq.w #$1,$32(a0)
	bne.s loc_203f66
	tst.b ($ff1520).l
	bne.s loc_203f5e
	tst.b ($ff1958).l
	bne.s loc_203f5e
	tst.b ($ff152e).l
	bne.s loc_203f58
	move.w #$e,d0
	jsr (sub_20598c).l
loc_203f58:
	jsr (sub_201d34).l
loc_203f5e:
	move.b #$0,($ff151f).l
loc_203f66:
	tst.b ($ff1520).l
	beq.s loc_203fbc
	tst.w $34(a0)
	beq.s loc_203fbc
	subq.w #$1,$34(a0)
	bne.s loc_203fbc
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203fb4
	tst.b ($ff1958).l
	bne.s loc_203fb4
	tst.b ($ff152e).l
	bne.s loc_203fae
	move.w #$e,d0
	jsr (sub_20598c).l
loc_203fae:
	jsr (sub_201d34).l
loc_203fb4:
	move.b #$0,($ff1520).l
loc_203fbc:
	rts

sub_203fbe:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_203fd8:
	cmpi.b #$2,($ff1506).l
	beq.s loc_203fe4
loc_203fe2:
	rts
loc_203fe4:
	cmpi.b #$1,($ff1507).l
	bne.s loc_203ff6
	cmpi.w #$c8,$8(a0)
	bcs.s loc_203fe2
loc_203ff6:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20403a
	bset.b #$6,$22(a0)
	bne.s loc_203fe2
	bsr.w sub_205c90
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_203fe2
	bra.s loc_204072
loc_20403a:
	tst.w $12(a0)
	beq.s loc_204042
	bpl.s loc_203fe2
loc_204042:
	bclr.b #$6,$22(a0)
	beq.s loc_203fe2
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_203fe2
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204072
	move.w #$f000,$12(a0)
loc_204072:
	jsr (sub_2075ca).l
	bne.s loc_204086
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204086:
	rts

sub_204088:
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
	bcs.s loc_204162
	move.l #$50000,d0
loc_204162:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204174:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20419a
	tst.b ($ff152e).l
	beq.s loc_204190
	cmpi.b #$2,($ff152e).l
	bne.s loc_20419a
loc_204190:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20424a
loc_20419a:
	tst.b $2a(a0)
	bne.w loc_204258
	tst.b ($f784).w
	beq.w loc_204258
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2041b8
	neg.w d0
loc_2041b8:
	tst.w ($f786).w
	bne.s loc_2041c4
	move.w #$1,($f786).w
loc_2041c4:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2041da
	move.b #$1,($ff1502).l
	bra.w loc_205988
loc_2041da:
	cmpi.w #$d2,d1
	bcs.s loc_20422e
	cmpi.b #$2,($ff1522).l
	beq.s loc_20422c
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204204
	move.w #$82,d0
	jsr (sub_20598c).l
	moveq #$0,d0
loc_204204:
	add.b ($f784).w,d0
	bpl.s loc_20420e
	moveq #$0,d0
	bra.s loc_204216
loc_20420e:
	cmpi.b #$3,d0
	bcs.s loc_204216
	moveq #$2,d0
loc_204216:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204088
	move.b #$2,($ff1522).l
loc_20422c:
	rts
loc_20422e:
	cmpi.w #$5a,d1
	bcc.s loc_204246
	cmp.w d2,d0
	bcc.w loc_203cc0
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204246:
	cmp.w d2,d0
	bcc.s loc_204258
loc_20424a:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204258:
	rts
	bsr.w sub_203bfa
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20428a
	tst.b ($ff195b).l
	beq.s loc_204278
	cmpi.b #$79,$1a(a0)
	bne.s loc_2042b4
	bra.s loc_204280
loc_204278:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2042b4
loc_204280:
	bsr.w sub_204b1c
	jmp (sub_2036ee).l
loc_20428a:
	bsr.w sub_204362
	bsr.w sub_204174
	bsr.w sub_204c06
	bsr.w sub_204d32
	bsr.w sub_2043d6
	bsr.w sub_204b88
	bsr.w sub_204b1c
	jsr (sub_203750).l
	bsr.w sub_200e44
	bsr.w sub_204db0
loc_2042b4:
	rts
	.incbin 17078, 172

sub_204362:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2043ce
	tst.w ($ff1506).l
	bne.s loc_2043ce
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2043d0).l,a2
loc_204396:
	move.b (a2)+,d0
	bmi.s loc_2043a6
	cmp.b d0,d1
	bne.s loc_204396
	bset.b #$1,$2c(a0)
	rts
loc_2043a6:
	bclr.b #$1,$2c(a0)
	beq.s loc_2043ce
	tst.w $12(a0)
	bpl.s loc_2043ce
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2043ce
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2043ce
	neg.w $10(a0)
loc_2043ce:
	rts
dat_2043d0:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2043d6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204700
	tst.w $3e(a0)
	bne.w loc_2046b0
	btst.b #$2,($f602).w
	beq.s loc_2043fe
	bsr.w sub_204790
loc_2043fe:
	btst.b #$3,($f602).w
	beq.s loc_20440a
	bsr.w sub_204806
loc_20440a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2046b0
	tst.w $14(a0)
	beq.s loc_20442a
	tst.b $2a(a0)
	beq.w loc_2046b0
	bra.s loc_204436
loc_20442a:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204436:
	btst.b #$3,$22(a0)
	beq.s loc_204488
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2044e0
	cmpi.b #$1e,$0(a1)
	bne.s loc_204468
	move.b #$0,$1c(a0)
	bra.w loc_2046b0
loc_204468:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2044c4
	cmp.w d2,d1
	bge.s loc_2044b2
	bra.s loc_2044e0
loc_204488:
	jsr (sub_206870).l
	cmpi.w #$c,d1
	blt.s loc_2044e0
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2044bc
loc_2044b2:
	btst.b #$0,$22(a0)
	bne.s loc_2044cc
	bra.s loc_2044d6
loc_2044bc:
	cmpi.b #$3,$37(a0)
	bne.s loc_2044e0
loc_2044c4:
	btst.b #$0,$22(a0)
	bne.s loc_2044d6
loc_2044cc:
	move.b #$32,$1c(a0)
	bra.w loc_2046b0
loc_2044d6:
	move.b #$6,$1c(a0)
	bra.w loc_2046b0
loc_2044e0:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2044f4
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2044f4:
	btst.b #$7,($f788).w
	bne.w loc_2045f8
	btst.b #$6,($f788).w
	bne.w loc_204618
	btst.b #$1,($f602).w
	bne.w loc_204618
	andi.b #$f,($f788).w
	beq.s loc_20452c
	btst.b #$0,($f603).w
	beq.s loc_204540
	bset.b #$7,($f788).w
	bra.w loc_2046d4
loc_20452c:
	btst.b #$0,($f603).w
	beq.w loc_204540
	move.b #$1,($f788).w
	bra.w loc_2046d4
loc_204540:
	btst.b #$0,($f602).w
	beq.s loc_2045bc
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20459e
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204570
	asr.w #$1,d2
	sub.w d2,d1
loc_204570:
	btst.b #$0,$22(a0)
	beq.s loc_20457c
	neg.w d0
	neg.w d1
loc_20457c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204592
	cmp.w d0,d1
	ble.s loc_204598
	bra.s loc_204596
loc_204592:
	cmp.w d1,d0
	ble.s loc_204598
loc_204596:
	move.w d1,d0
loc_204598:
	move.w d0,$14(a0)
	rts
loc_20459e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2045b8
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202540).l
loc_2045b8:
	bra.w loc_2046d4
loc_2045bc:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2045dc
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204618
loc_2045dc:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202540).l
	bra.w loc_2046b0
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2045f8:
	btst.b #$0,($f602).w
	beq.s loc_204618
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2046d4
	addq.w #$2,($f73e).w
	bra.w loc_2046d4
loc_204618:
	btst.b #$6,($f788).w
	bne.w loc_204694
	andi.b #$f,($f788).w
	beq.s loc_20463c
	btst.b #$1,($f603).w
	beq.s loc_20464e
	bset.b #$6,($f788).w
	bra.w loc_2046d4
loc_20463c:
	btst.b #$1,($f603).w
	beq.s loc_20464e
	move.b #$1,($f788).w
	bra.w loc_2046d4
loc_20464e:
	btst.b #$1,($f602).w
	beq.s loc_2046b0
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204692
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204692
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204684
	neg.w $14(a0)
loc_204684:
	move.w #$9c,d0
	jsr (sub_202540).l
	bsr.w sub_204bb0
loc_204692:
	bra.s loc_2046d4
loc_204694:
	btst.b #$1,($f602).w
	beq.s loc_2046b0
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2046d4
	subq.w #$2,($f73e).w
	bra.s loc_2046d4
loc_2046b0:
	cmpi.w #$60,($f73e).w
	bne.s loc_2046ca
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2046d4
	move.b #$0,($f788).w
	bra.s loc_2046d4
loc_2046ca:
	bcc.s loc_2046d0
	addq.w #$4,($f73e).w
loc_2046d0:
	subq.w #$2,($f73e).w
loc_2046d4:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204700
	move.w $14(a0),d0
	beq.s loc_204700
	bmi.s loc_2046f4
	sub.w d5,d0
	bcc.s loc_2046ee
	move.w #$0,d0
loc_2046ee:
	move.w d0,$14(a0)
	bra.s loc_204700
loc_2046f4:
	add.w d5,d0
	bcc.s loc_2046fc
	move.w #$0,d0
loc_2046fc:
	move.w d0,$14(a0)
loc_204700:
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_20478e
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_20478e
	bmi.s loc_204736
	neg.w d1
loc_204736:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206730
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_20478e
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20478a
	cmpi.b #$40,d0
	beq.s loc_204778
	cmpi.b #$80,d0
	beq.s loc_204772
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204772:
	sub.w d1,$12(a0)
	rts
loc_204778:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20478a:
	add.w d1,$12(a0)
loc_20478e:
	rts

sub_204790:
	tst.b $2a(a0)
	bne.s loc_204804
	move.w $14(a0),d0
	beq.s loc_20479e
	bpl.s loc_2047ce
loc_20479e:
	bset.b #$0,$22(a0)
	bne.s loc_2047b2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2047b2:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2047c2
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2047c2
	move.w d1,d0
loc_2047c2:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2047ce:
	sub.w d4,d0
	bcc.s loc_2047d6
	move.w #$ff80,d0
loc_2047d6:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204804
	cmpi.w #$400,d0
	blt.s loc_204804
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202540).l
loc_204804:
	rts

sub_204806:
	tst.b $2a(a0)
	bne.s loc_204874
	move.w $14(a0),d0
	bmi.s loc_20483e
	bclr.b #$0,$22(a0)
	beq.s loc_204826
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204826:
	cmp.w d6,d0
	bge.s loc_204832
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204832
	move.w d6,d0
loc_204832:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20483e:
	add.w d4,d0
	bcc.s loc_204846
	move.w #$80,d0
loc_204846:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204874
	cmpi.w #$fc00,d0
	bgt.s loc_204874
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202540).l
loc_204874:
	rts
	.incbin 18550, 678

sub_204b1c:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204b70
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204b4a
	addi.w #$38,d0
loc_204b4a:
	cmp.w d1,d0
	bls.s loc_204b70
loc_204b4e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204b5e
	rts
loc_204b5e:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206de4
	move.b #$6,$24(a0)
	rts
loc_204b70:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b4e

sub_204b88:
	tst.b ($f7ca).w
	bne.s loc_204bae
	move.w $14(a0),d0
	bpl.s loc_204b96
	neg.w d0
loc_204b96:
	cmpi.w #$80,d0
	bcs.s loc_204bae
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204bae
	btst.b #$1,($f602).w
	bne.s sub_204bb0
loc_204bae:
	rts

sub_204bb0:
	btst.b #$2,$22(a0)
	beq.s loc_204bba
	bra.s loc_204bea
loc_204bba:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204bda
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204bea
loc_204bda:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204bea:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c04
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c04
	move.w #$200,$14(a0)
loc_204c04:
	rts

sub_204c06:
	tst.b $2a(a0)
	beq.s loc_204c0e
	rts
loc_204c0e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204c20
	tst.w $14(a0)
	beq.w loc_204ce6
loc_204c20:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204ce6
	btst.b #$3,$22(a0)
	beq.s loc_204c3c
	jsr (sub_205912).l
	beq.s loc_204c6c
loc_204c3c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20679a
	cmpi.w #$6,d1
	blt.w loc_204ce6
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204c62
	move.w #$380,d2
loc_204c62:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204c6c:
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
	bne.s loc_204ce8
	tst.b ($ff195b).l
	beq.s loc_204cca
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204cda
loc_204cca:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204cda:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204ce6:
	rts
loc_204ce8:
	bset.b #$4,$22(a0)
	rts
	.incbin 19696, 66

sub_204d32:
	tst.b $2a(a0)
	bne.s loc_204d6c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204d6c
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204d6c
	bmi.s loc_204d68
	tst.w d0
	beq.s loc_204d66
	add.w d0,$14(a0)
loc_204d66:
	rts
loc_204d68:
	add.w d0,$14(a0)
loc_204d6c:
	rts
	.incbin 19822, 66

sub_204db0:
	nop
	tst.b $38(a0)
	bne.s loc_204df2
	tst.w $3e(a0)
	bne.s loc_204df4
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204df2
	move.w $14(a0),d0
	bpl.s loc_204dd4
	neg.w d0
loc_204dd4:
	cmpi.w #$280,d0
	bcc.s loc_204df2
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204df2:
	rts
loc_204df4:
	subq.w #$1,$3e(a0)
	rts
	.incbin 19962, 410
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204fa8
	move.w #$0,$12(a0)
	rts
loc_204fa8:
	move.b d3,$26(a0)
	bsr.w sub_205094
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204fbe
	neg.w $14(a0)
loc_204fbe:
	rts
	.incbin 20416, 98

sub_205022:
	btst.b #$4,$22(a0)
	beq.s loc_20502c
	nop
loc_20502c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205086
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205066
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205076
loc_205066:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205076:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202540).l
loc_205086:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205094:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20660, 382

sub_205232:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20525a
	cmpi.b #$5,($ff1506).l
	beq.s loc_20525a
	cmpi.b #$2,($ff1506).l
	beq.s loc_20525a
	tst.b ($ff1506).l
	bne.w loc_20531c
loc_20525a:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205298
	tst.b ($ff1506).l
	bne.w loc_20531e
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20531e
	bra.s loc_2052a0
loc_205298:
	cmp.b ($f7af).w,d1
	beq.w loc_20531e
loc_2052a0:
	cmp.b ($f7ac).w,d1
	beq.s loc_2052d0
	cmp.b ($f7ad).w,d1
	beq.s loc_2052b4
	bclr.b #$6,$1(a0)
	rts
loc_2052b4:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205336
	btst.b #$1,$22(a0)
	beq.s loc_2052d0
	bclr.b #$6,$1(a0)
	rts
loc_2052d0:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2052e2
	bclr.b #$6,$1(a0)
	rts
loc_2052e2:
	cmpi.b #$e0,d2
	bcs.s loc_2052f0
	bset.b #$6,$1(a0)
	rts
loc_2052f0:
	btst.b #$6,$1(a0)
	bne.s loc_20530c
	move.b $26(a0),d1
	beq.s loc_20531c
	cmpi.b #$80,d1
	bhi.s loc_20531c
	bset.b #$6,$1(a0)
	rts
loc_20530c:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20531c
	bclr.b #$6,$1(a0)
loc_20531c:
	rts
loc_20531e:
	btst.b #$2,$22(a0)
	bne.s loc_205330
	move.w #$9c,d0
	jsr (sub_202540).l
loc_205330:
	jmp (sub_204bb0).l
loc_205336:
	tst.w $12(a0)
	bmi.s loc_20537a
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20536e
	cmpi.w #$38,d1
	bcs.s loc_205366
	cmpi.w #$80,d1
	bcs.s loc_20537a
loc_20535e:
	bclr.b #$6,$1(a0)
	rts
loc_205366:
	bset.b #$6,$1(a0)
	rts
loc_20536e:
	cmpi.w #$38,d1
	bcs.s loc_20535e
	cmpi.w #$80,d1
	bcc.s loc_205366
loc_20537a:
	rts

sub_20537c:
	lea (dat_20566c).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20539e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20539e:
	bsr.w sub_20560e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205416
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2053e4
	move.b d0,$1e(a0)

sub_2053c8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2053dc
	bpl.s loc_2053dc
	cmpi.b #$fd,d0
	bge.s loc_2053e6
loc_2053dc:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2053e4:
	rts
loc_2053e6:
	addq.b #$1,d0
	bne.s loc_2053f6
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2053dc
loc_2053f6:
	addq.b #$1,d0
	bne.s loc_20540a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2053dc
loc_20540a:
	addq.b #$1,d0
	bne.s loc_205414
	move.b $2(a1,d1.w),$1c(a0)
loc_205414:
	rts
loc_205416:
	subq.b #$1,$1e(a0)
	bpl.s loc_2053e4
	addq.b #$1,d0
	bne.w loc_2054d0
	tst.b ($ff195b).l
	bne.w loc_205598
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20543e
	not.b d0
loc_20543e:
	btst.b #$1,$2c(a0)
	bne.s loc_20544c
	addi.b #$10,d0
	bra.s loc_20544e
loc_20544c:
	addq.b #$8,d0
loc_20544e:
	bpl.s loc_205452
	moveq #$3,d1
loc_205452:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205544
	move.w $14(a0),d2
	bpl.s loc_205470
	neg.w d2
loc_205470:
	btst.b #$1,$2c(a0)
	beq.s loc_205488
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_20586e).l,a1
	bra.s loc_2054b2
loc_205488:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205848).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2054b2
	lea (dat_2056ec).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2054b2
	lea (dat_2056e4).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2054b2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2054c0
	moveq #$0,d2
loc_2054c0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2053c8
	add.b d3,$1a(a0)
	rts
loc_2054d0:
	addq.b #$1,d0
	bne.s loc_205540
	move.w $14(a0),d2
	bpl.s loc_2054dc
	neg.w d2
loc_2054dc:
	lea (dat_2057ca).l,a1
	tst.b ($ff195b).l
	bne.s loc_20551a
	lea (dat_2056fc).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20550e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20551a
	lea (dat_205876).l,a1
	bra.s loc_20551a
loc_20550e:
	cmpi.w #$600,d2
	bcc.s loc_20551a
	lea (dat_2056f4).l,a1
loc_20551a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205524
	moveq #$0,d2
loc_205524:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2053c8
loc_205540:
	addq.b #$1,d0
	bne.s loc_205584
loc_205544:
	move.w $14(a0),d2
	bmi.s loc_20554c
	neg.w d2
loc_20554c:
	addi.w #$800,d2
	bpl.s loc_205554
	moveq #$0,d2
loc_205554:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2057dc).l,a1
	tst.b ($ff195b).l
	bne.s loc_20556e
	lea (dat_205704).l,a1
loc_20556e:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2053c8
loc_205584:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205598:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2055aa
	not.b d0
loc_2055aa:
	addi.b #$10,d0
	bpl.s loc_2055b2
	moveq #$0,d1
loc_2055b2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2055e0
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2054d0
loc_2055e0:
	move.w $14(a0),d2
	bpl.s loc_2055e8
	neg.w d2
loc_2055e8:
	lea (dat_2057c4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055fa
	lea (dat_2057be).l,a1
loc_2055fa:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205604
	moveq #$0,d2
loc_205604:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2053c8

sub_20560e:
	tst.b ($ff195b).l
	beq.s loc_20561a
	move.b dat_20561c(pc,d0.w),d0
loc_20561a:
	rts
dat_20561c:
	.incbin 22044, 80
dat_20566c:
	.incbin 22124, 120
dat_2056e4:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2056ec:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2056f4:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2056fc:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205704:
	.incbin 22276, 186
dat_2057be:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2057c4:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2057ca:
	.incbin 22474, 18
dat_2057dc:
	.incbin 22492, 108
dat_205848:
	.incbin 22600, 38
dat_20586e:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205876:
	.incbin 22646, 56

sub_2058ae:
	tst.b (a0)
	beq.w loc_205910
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205910
	move.b d0,(a2)
	lea (dat_21e538).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205910
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2058e2:
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
loc_2058fc:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2058fc
	dbf d1,loc_2058e2
loc_205910:
	rts

sub_205912:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205986
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
	bne.s loc_205974
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205974:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205986:
	rts
loc_205988:
	move.w #$e,d0

sub_20598c:
	cmpi.w #$67,d0
	bne.s loc_20599a
	move.b #$1,($ff1958).l
loc_20599a:
	move.w d0,($a12010).l
loc_2059a0:
	move.w ($a12020).l,d0
	beq.s loc_2059a0
	cmp.w ($a12020).l,d0
	bne.s loc_2059a0
	move.w #$0,($a12010).l
loc_2059b8:
	move.w ($a12020).l,d0
	bne.s loc_2059b8
	move.w ($a12020).l,d0
	bne.s loc_2059b8
	rts
	dc.b $00,$00

sub_2059cc:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2059e8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2059e8:
	subq.b #$1,$1e(a0)
	bpl.s loc_205a28
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205a2a
loc_205a04:
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
loc_205a28:
	rts
loc_205a2a:
	addq.b #$1,d0
	bne.s loc_205a3a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a04
loc_205a3a:
	addq.b #$1,d0
	bne.s loc_205a4e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a04
loc_205a4e:
	addq.b #$1,d0
	bne.s loc_205a58
	move.b $2(a1,d1.w),$1c(a0)
loc_205a58:
	addq.b #$1,d0
	bne.s loc_205a60
	addq.b #$2,$24(a0)
loc_205a60:
	addq.b #$1,d0
	bne.s loc_205a6e
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205a6e:
	addq.b #$1,d0
	bne.s loc_205a76
	addq.b #$2,$25(a0)
loc_205a76:
	rts
	.incbin 23160, 536

sub_205c90:
	rts
	.incbin 23698, 306
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dda(pc,d0.w),d0
	jsr dat_205dda(pc,d0.w)
	jmp (sub_2037a6).l
dat_205dda:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e08
	andi.b #$7f,$2(a0)
loc_205e08:
	move.l #$23bd36,$4(a0)
	tst.b $28(a0)
	bne.s loc_205e2e
	bsr.w sub_205e9a
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205e90
loc_205e2e:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206870).l
	tst.w d1
	bpl.s loc_205e8c
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205e76
	bsr.w sub_205e9a
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205ec0
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205e76:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205e90
loc_205e8c:
	addq.w #$2,$c(a0)
loc_205e90:
	lea (dat_23bd1a).l,a1
	bra.w sub_2059cc

sub_205e9a:
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

sub_205ec0:
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
	.incbin 24288, 864

sub_206240:
	bclr.b #$7,($ff156b).l
	beq.s loc_20628e
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206290(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206264:
	move.l (a1)+,(a2)+
	dbf d0,loc_206264
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20628e:
	rts
dat_206290:
	.incbin 25232, 516

sub_206494:
	cmpi.b #$2,($ff1507).l
	bne.s loc_2064a0
	rts
loc_2064a0:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_2011b2).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_206516
	bne.s loc_2064f8
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_2011b2).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_206516
	beq.s loc_206514
loc_2064f8:
	move.w #$1,d0
	btst.l #$b,d4
	beq.s loc_206504
	neg.w d0
loc_206504:
	andi.w #$7ff,d4
	cmpi.w #$114,d4
	bne.s loc_206510
	neg.w d0
loc_206510:
	add.w d0,$8(a0)
loc_206514:
	rts

sub_206516:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_20652e
	add.b ($ff156a).l,d1
loc_20652e:
	add.w d1,d1
	move.w dat_206552(pc,d1.w),d1
	lea dat_206552(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_20653e:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_20654e
	addq.w #$2,d1
	dbf d6,loc_20653e
	moveq #$0,d0
	rts
loc_20654e:
	moveq #$1,d0
	rts
dat_206552:
	.incbin 25938, 24
loc_20656a:
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
	bne.s loc_206624
	move.b ($ff1593).l,($ff195b).l
loc_206624:
	tst.b ($ff1522).l
	bpl.s loc_20663a
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20663a:
	rts

sub_20663c:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20656a
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
	bne.s loc_2066f6
	move.b ($ff1591).l,($ff195b).l
loc_2066f6:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206718
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206718:
	tst.b ($ff1522).l
	bpl.s loc_20672e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20672e:
	rts

sub_206730:
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
	bpl.s loc_20676c
	move.b d1,d0
	bpl.s loc_206766
	subq.b #$1,d0
loc_206766:
	addi.b #$20,d0
	bra.s loc_206776
loc_20676c:
	move.b d1,d0
	bpl.s loc_206772
	addq.b #$1,d0
loc_206772:
	addi.b #$1f,d0
loc_206776:
	andi.b #$c0,d0
	beq.w loc_206846
	cmpi.b #$80,d0
	beq.w loc_2069e2
	andi.b #$38,d1
	bne.s loc_20678e
	addq.w #$8,d2
loc_20678e:
	cmpi.b #$40,d0
	beq.w loc_206ab8
	bra.w loc_20691a

sub_20679a:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206a40
	cmpi.b #$80,d0
	beq.w loc_20696a
	cmpi.b #$c0,d0
	beq.w loc_2068aa

sub_2067c2:
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
loc_206826:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206834
	move.b ($f768).w,d3
	exg d0,d1
loc_206834:
	btst.l #$0,d3
	beq.s loc_20683c
	move.b d2,d3
loc_20683c:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206846:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20139a).l
	move.b #$0,d2
loc_206862:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20686e
	move.b d2,d3
loc_20686e:
	rts

sub_206870:
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
	beq.s loc_2068a8
	move.b #$0,d3
loc_2068a8:
	rts
loc_2068aa:
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
	bra.w loc_206826
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20691a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b #$c0,d2
	bra.w loc_206862
loc_20693a:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206968
	move.b #$c0,d3
loc_206968:
	rts
loc_20696a:
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
	bra.w loc_206826

sub_2069da:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069e2:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20139a).l
	move.b #$80,d2
	bra.w loc_206862
	.incbin 27142, 58
loc_206a40:
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
	bra.w loc_206826
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206ab8:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b #$40,d2
	bra.w loc_206862
loc_206adc:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b0a
	move.b #$40,d3
loc_206b0a:
	rts

sub_206b0c:
	btst.b #$0,$2c(a0)
	beq.s loc_206b18
	moveq #$0,d0
	rts
loc_206b18:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206b3c
	addi.w #$c,d3
	moveq #$a,d5
loc_206b3c:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206b4a:
	tst.b $1(a1)
	bpl.s loc_206b56
	move.b $20(a1),d0
	bne.s loc_206b62
loc_206b56:
	lea $40(a1),a1
	dbf d6,loc_206b4a
	moveq #$0,d0
	rts
loc_206b62:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206f88).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206b8a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206b90
	bra.w loc_206b56
loc_206b8a:
	cmp.w d4,d0
	bhi.w loc_206b56
loc_206b90:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206ba8
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206bae
	bra.w loc_206b56
loc_206ba8:
	cmp.w d5,d0
	bhi.w loc_206b56
loc_206bae:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206c46
	cmpi.b #$c0,d1
	beq.w loc_206e3c
	tst.b d1
	bmi.w loc_206bca
	bra.s loc_206bd6
loc_206bca:
	tst.b ($ff151f).l
	bne.s loc_206b56
	bra.w sub_206d10
loc_206bd6:
	tst.b ($ff1956).l
	beq.s loc_206be6
	tst.b $29(a1)
	bne.s loc_206bee
	rts
loc_206be6:
	tst.b $29(a1)
	beq.s loc_206bee
	rts
loc_206bee:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206c0a
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206c08
	addq.b #$2,$24(a1)
loc_206c08:
	rts
loc_206c0a:
	tst.w $12(a0)
	bpl.s loc_206c34
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206c44
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206c44
	addq.b #$4,$25(a1)
	rts
loc_206c34:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206c44
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206c44:
	rts

sub_206c46:
	tst.b ($ff1521).l
	bne.s loc_206c60
	tst.b ($ff151f).l
	bne.s loc_206c60
	cmpi.b #$2,$1c(a0)
	bne.w sub_206d10
loc_206c60:
	tst.b $21(a1)
	beq.s loc_206c8a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206c88
	bset.b #$7,$22(a1)
loc_206c88:
	rts
loc_206c8a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206ca2
	moveq #$6,d0
loc_206ca2:
	move.w d0,$3e(a1)
	move.w dat_206d02(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206cbc
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206cbc:
	bsr.w sub_20958c
	move.w #$96,d0
	jsr (sub_202540).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206cf2
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206cfa
	neg.w $12(a0)
	rts
loc_206cf2:
	addi.w #$100,$12(a0)
	rts
loc_206cfa:
	subi.w #$100,$12(a0)
	rts
dat_206d02:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206d10:
	btst.b #$0,$2c(a0)
	bne.s loc_206d28
	tst.b ($ff1521).l
	bne.s loc_206d28
	tst.b ($ff151f).l
	beq.s loc_206d2c
loc_206d28:
	moveq #$ffffffff,d0
	rts
loc_206d2c:
	nop
	tst.w $30(a0)
	bne.s loc_206d28
	movea.l a1,a2

sub_206d36:
	tst.b ($ff151e).l
	bne.s loc_206d70
	tst.w ($ff1512).l
	beq.w loc_206dda
	jsr (sub_2075ca).l
	bne.s loc_206d70
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206d70
	move.b #$1,$29(a1)
loc_206d70:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206d86
	move.b #$0,($ff156f).l
loc_206d86:
	move.b #$4,$24(a0)
	bsr.w sub_205022
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206db6
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206db6:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206dc4
	neg.w $10(a0)
loc_206dc4:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206dda:
	tst.w ($ff1588).l
	bne.w loc_206d70

sub_206de4:
	tst.w ($ff1906).l
	bne.s loc_206e38
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205022
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
loc_206e38:
	moveq #$ffffffff,d0
	rts
loc_206e3c:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206f4c
	cmpi.b #$17,d1
	beq.w loc_206ed4
	cmpi.b #$1f,d1
	beq.w loc_206ed4
	cmpi.b #$22,d1
	beq.w loc_206f1c
	cmpi.b #$23,d1
	beq.w loc_206ed4
	cmpi.b #$2d,d1
	beq.w loc_206f2a
	cmpi.b #$30,d1
	beq.w loc_206f36
	tst.b ($f7aa).w
	beq.w loc_206ed2
	cmpi.b #$1,($f7aa).w
	beq.s loc_206e9c
	cmpi.b #$4,($f7aa).w
	beq.s loc_206ebe
	cmpi.b #$5,($f7aa).w
	beq.s loc_206ecc
loc_206e9c:
	cmpi.b #$3c,d1
	blt.s loc_206ed2
	cmpi.b #$3f,d1
	bgt.s loc_206ed2
	bsr.w sub_206c46
	tst.b $20(a1)
	bne.s loc_206eb6
	addq.b #$3,$21(a1)
loc_206eb6:
	clr.b $20(a1)
	bra.w loc_206ed4
loc_206ebe:
	cmpi.b #$3f,d1
	beq.s loc_206ee0
	cmpi.b #$3e,d1
	beq.s loc_206eda
	bra.s loc_206ed2
loc_206ecc:
	cmpi.b #$3d,d1
	beq.s loc_206eda
loc_206ed2:
	rts
loc_206ed4:
	addq.b #$1,$21(a1)
	rts
loc_206eda:
	bsr.w sub_206d10
	bra.s loc_206ed4
loc_206ee0:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206f1a
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206f1a
	neg.w $10(a0)
loc_206f1a:
	rts
loc_206f1c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f28
	addq.b #$1,$21(a1)
loc_206f28:
	rts
loc_206f2a:
	btst.b #$2,$22(a0)
	beq.w sub_206c46
	bra.s loc_206ed4
loc_206f36:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206c46
	bra.s loc_206ed4
loc_206f4c:
	tst.w $12(a0)
	bpl.s loc_206f76
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f86
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f86
	addq.b #$4,$25(a1)
	rts
loc_206f76:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f86
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f86:
	rts
dat_206f88:
	.incbin 28552, 126
loc_207006:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20701c
	move.l #$4000,(dat_207196).l
	bra.s loc_20703c
loc_20701c:
	addi.l #$2000,(dat_207196).l
	cmpi.l #$80000,(dat_207196).l
	bls.s loc_20703c
	move.l #$80000,(dat_207196).l
loc_20703c:
	move.l (dat_207196).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20704e
	sub.l d0,$c(a0)
loc_20704e:
	btst.b #$1,($f604).w
	beq.s loc_20705a
	add.l d0,$c(a0)
loc_20705a:
	btst.b #$2,($f604).w
	beq.s loc_207066
	sub.l d0,$8(a0)
loc_207066:
	btst.b #$3,($f604).w
	beq.s loc_207072
	add.l d0,$8(a0)
loc_207072:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_2011b2).l
	move.w (a1),($ff194e).l
	lea (dat_20719a).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2070b4
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2070ae
	move.b #$0,d1
loc_2070ae:
	move.b d1,($ff1904).l
loc_2070b4:
	btst.b #$7,($f605).w
	beq.s loc_2070d4
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2070ce
	add.b (a2),d1
loc_2070ce:
	move.b d1,($ff1904).l
loc_2070d4:
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
	beq.s loc_207160
	bsr.w sub_2075ca
	bne.s loc_207160
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
loc_207160:
	btst.b #$4,($f605).w
	beq.s loc_207190
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207190:
	jmp (sub_2037a6).l
dat_207196:
	dc.b $00,$00,$40,$00
dat_20719a:
	.incbin 29082, 542

sub_2073b8:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2073c6:
	clr.l (a2)+
	dbf d0,loc_2073c6
	rts

sub_2073ce:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2073dc(pc,d0.w),d0
	jmp dat_2073dc(pc,d0.w)
dat_2073dc:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20767c).l,a0
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
	bcc.s loc_20741a
	moveq #$0,d6
loc_20741a:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207422:
	cmp.w (a0),d6
	bls.s loc_207434
	tst.b $4(a0)
	bpl.s loc_207430
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207430:
	addq.w #$8,a0
	bra.s loc_207422
loc_207434:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207454
loc_207442:
	cmp.w (a0),d6
	bls.s loc_207454
	tst.b $4(a0)
	bpl.s loc_207450
	addq.b #$1,$1(a2)
loc_207450:
	addq.w #$8,a0
	bra.s loc_207442
loc_207454:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20753e
	bge.s loc_2074e4
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2074c0
loc_20748e:
	cmp.w -$8(a0),d6
	bge.s loc_2074c0
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2074a4
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2074a4:
	bsr.w sub_207562
	bne.s loc_2074ae
	subq.w #$8,a0
	bra.s loc_20748e
loc_2074ae:
	tst.b $4(a0)
	bpl.s loc_2074be
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2074be:
	addq.w #$8,a0
loc_2074c0:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2074cc:
	cmp.w -$8(a0),d6
	bgt.s loc_2074de
	tst.b -$4(a0)
	bpl.s loc_2074da
	subq.b #$1,(a2)
loc_2074da:
	subq.w #$8,a0
	bra.s loc_2074cc
loc_2074de:
	move.l a0,($f770).w
	rts
loc_2074e4:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2074f8:
	cmp.w (a0),d6
	bls.s loc_20751a
	tst.b $4(a0)
	bpl.s loc_207506
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207506:
	bsr.w sub_207562
	beq.s loc_2074f8
	tst.b $4(a0)
	bpl.s loc_20751a
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20751a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20753a
loc_207528:
	cmp.w (a0),d6
	bls.s loc_20753a
	tst.b $4(a0)
	bpl.s loc_207536
	addq.b #$1,$1(a2)
loc_207536:
	addq.w #$8,a0
	bra.s loc_207528
loc_20753a:
	move.l a0,($f774).w
loc_20753e:
	rts

sub_207540:
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

sub_207562:
	bsr.s sub_207540
	beq.s loc_207574
	tst.b $4(a0)
	bpl.s loc_20757a
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20757a
loc_207574:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20757a:
	bsr.w sub_2075ca
	bne.s loc_2075c8
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
	bpl.s loc_2075aa
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2075aa:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2075bc
	nop
	nop
	nop
	nop
loc_2075bc:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2075c8:
	rts

sub_2075ca:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2075d2:
	tst.b (a1)
	beq.s loc_2075de
	lea $40(a1),a1
	dbf d0,loc_2075d2
loc_2075de:
	rts

sub_2075e0:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2075fe
loc_2075f2:
	tst.b (a1)
	beq.s loc_2075fe
	lea $40(a1),a1
	dbf d0,loc_2075f2
loc_2075fe:
	rts
loc_207600:
	move.w $8(a0),d0
loc_207604:
	tst.b $1(a0)
	bmi.s loc_20766e
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20766e
loc_207622:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207664
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20765c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207654
	moveq #$0,d1
	bra.s loc_20765c
loc_207654:
	cmpi.w #$3,d1
	bcs.s loc_20765c
	moveq #$2,d1
loc_20765c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207664:
	jsr (sub_203852).l
	moveq #$1,d0
	rts
loc_20766e:
	btst.b #$7,($ff152e).l
	bne.s loc_207622
	moveq #$0,d0
	rts
dat_20767c:
	.incbin 30332, 970

sub_207a46:
	btst.b #$3,$22(a0)
	beq.s loc_207ab6
	btst.b #$3,$22(a1)
	beq.s loc_207ab6
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207ab6
	tst.b $2a(a1)
	beq.s loc_207a78
	move.w #$ab,d0
	jsr (sub_202540).l
loc_207a78:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207aa4
	cmpi.b #$17,$1c(a1)
	beq.s loc_207aa4
	bclr.b #$0,$2c(a1)
loc_207aa4:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207ab6
	bclr.b #$1,$22(a1)
loc_207ab6:
	rts

sub_207ab8:
	cmpi.b #$4,$24(a1)
	bne.s loc_207aca
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207aca:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207b2a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207aec
	bclr.b #$3,$22(a0)
	bra.w sub_207a46
loc_207aec:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207b2a
	tst.b ($ff195b).l
	beq.s loc_207b14
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207b24
loc_207b14:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207b24:
	move.b #$0,$1c(a1)
loc_207b2a:
	bset.b #$3,$22(a1)
	beq.s loc_207b4c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207b84
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207b4c:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207b78
	cmpi.b #$2,$24(a0)
	beq.s loc_207b7e
loc_207b78:
	move.w $10(a1),$14(a1)
loc_207b7e:
	bclr.b #$1,$22(a1)
loc_207b84:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207b8e:
	move.b #$1,$25(a0)

sub_207b94:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207e48
	btst.b #$6,$2c(a1)
	bne.w loc_207e48
	cmpi.b #$6,$24(a1)
	bcc.w loc_207e48
	tst.b $0(a1)
	beq.w loc_207e48
	tst.b $1(a0)
	bpl.w loc_207e48
	tst.b ($ff1906).l
	bne.w loc_207e48
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207e48
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207e48
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207c02
	btst.b #$3,$22(a0)
	bne.s loc_207c14
	bra.w loc_207e48
loc_207c02:
	cmpi.b #$1,$25(a0)
	bne.s loc_207c14
	tst.w $12(a1)
	beq.s loc_207c14
	bmi.w loc_207e48
loc_207c14:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207e48
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207e48
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207c4a
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207c4a:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207c58
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207c58:
	cmp.w d4,d5
	bcs.w loc_207cec
	cmpi.b #$1,$25(a0)
	beq.w loc_207e48
	cmpi.b #$a,$0(a0)
	bne.s loc_207c7a
	btst.b #$1,$22(a1)
	bne.w loc_207e48
loc_207c7a:
	cmpi.b #$4,d5
	bls.w loc_207e48
	bsr.w sub_207e98
	move.l d0,-(a7)
	bsr.w sub_207a46
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207ca4
	tst.w $10(a1)
	beq.s loc_207cd4
	bpl.s loc_207cac
	bra.s loc_207cd4
loc_207ca4:
	tst.w $10(a1)
	beq.s loc_207cd4
	bpl.s loc_207cd4
loc_207cac:
	bsr.w sub_207e58
	btst.b #$1,$22(a1)
	bne.s loc_207cca
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207cca:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207cd4:
	bsr.w sub_207f0e
	bsr.w sub_207e58
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207cec:
	cmpi.b #$19,$0(a0)
	bne.s loc_207cfe
	btst.b #$2,$22(a1)
	bne.w loc_207e48
loc_207cfe:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207d14
	bmi.w loc_207de4
loc_207d14:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207d26
	tst.w $12(a1)
	beq.s loc_207d26
	bmi.w loc_207e48
loc_207d26:
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
	beq.s loc_207d72
	bpl.s loc_207d52
	neg.b d0
loc_207d52:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206730).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207d72
	tst.w $10(a0)
	bpl.s loc_207d6e
	neg.w d1
loc_207d6e:
	add.w d1,$8(a1)
loc_207d72:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207ddc
	tst.w $12(a0)
	bmi.s loc_207db0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2067c2).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207db0
	add.w d1,$c(a1)
	bra.w loc_207e48
loc_207db0:
	tst.w $12(a0)
	bpl.s loc_207ddc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069da).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ddc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206de4).l
	movem.l (a7)+,a0-a1
	bra.s loc_207e48
loc_207ddc:
	bsr.w sub_207ab8
	moveq #$1,d0
	rts
loc_207de4:
	cmpi.b #$1,$25(a0)
	beq.s loc_207e48
	cmpi.b #$9,$0(a0)
	beq.s loc_207e48
	cmpi.b #$a,$0(a0)
	bne.s loc_207e0e
	cmpi.b #$2,$25(a0)
	beq.s loc_207e2e
	btst.b #$1,$1(a0)
	bne.s loc_207e2e
	bra.s loc_207e48
loc_207e0e:
	btst.b #$1,$22(a1)
	bne.s loc_207e2e
	tst.w $12(a0)
	beq.s loc_207e2e
	bmi.s loc_207e2e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206de4).l
	movem.l (a7)+,a0-a1
loc_207e2e:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_207f0e
	bsr.w sub_207a46
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207e48:
	bsr.w sub_207f0e
	bsr.w sub_207a46
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207e58:
	tst.w $10(a0)
	beq.s loc_207e96
	cmpi.b #$a,$0(a0)
	beq.s loc_207e96
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207e72
	neg.b d0
loc_207e72:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206730).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e96
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206de4).l
	movem.l (a7)+,a0-a1
loc_207e96:
	rts

sub_207e98:
	cmpi.b #$a,$0(a0)
	bne.s loc_207ea8
	move.b #$0,$20(a1)
	rts
loc_207ea8:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207efc
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_207f0c
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207eca
	tst.w $10(a2)
	beq.s loc_207f0c
loc_207eca:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207edc
	cmp.w $8(a2),d1
	bcs.s loc_207f0c
	bra.s loc_207ee2
loc_207edc:
	cmp.w $8(a2),d1
	bcc.s loc_207f0c
loc_207ee2:
	cmpi.b #$15,$0(a0)
	beq.s loc_207f0c
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206de4).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_207efc:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_207f0c:
	rts

sub_207f0e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207f28
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_207f28
	move.b #$0,$20(a1)
loc_207f28:
	rts
	.incbin 32554, 374
loc_2080a0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2080ae(pc,d0.w),d0
	jmp dat_2080ae(pc,d0.w)
dat_2080ae:
	.incbin 32942, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2080a0
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208104
	tst.b $1(a0)
	bpl.s loc_20810c
loc_208104:
	move.w dat_20815e(pc,d0.w),d1
	jsr dat_20815e(pc,d1.w)
loc_20810c:
	bsr.w sub_2037a6
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20813e
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20813e:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203852
	rts
dat_20815e:
	.incbin 33118, 26
	addq.b #$2,$24(a0)
	move.l #$2084e0,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2081ce
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2084e6,$4(a0)
	bra.s loc_208210
loc_2081ce:
	btst.l #$3,d0
	beq.s loc_2081fc
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208530,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20d9ca).l
	move.l (a7)+,d0
	bra.s loc_208210
loc_2081fc:
	btst.b #$1,$1(a0)
	beq.s loc_208210
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208210:
	btst.l #$1,d0
	beq.s loc_20821c
	bset.b #$5,$2(a0)
loc_20821c:
	andi.w #$2,d0
	move.w dat_208228(pc,d0.w),$30(a0)
	rts
dat_208228:
	dc.b $f0,$00,$f6,$00

sub_20822c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207b94).l
	tst.b $1(a0)
	bpl.s loc_208248
	lea ($d000).w,a1
	bsr.s sub_20822c
	bne.s loc_20824a
loc_208248:
	rts
loc_20824a:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202540).l
	.incbin 33404, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2085cc(pc,d0.w),d1
	jmp dat_2085cc(pc,d1.w)
dat_2085cc:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2085d6:
	.incbin 34262, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20862e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208626
	moveq #$0,d1
	bra.s loc_20862e
loc_208626:
	cmpi.w #$3,d1
	bcs.s loc_20862e
	moveq #$2,d1
loc_20862e:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20864a
	moveq #$6,d1
loc_20864a:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2085d6).l,a1
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
	beq.s loc_20869a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208692
	moveq #$0,d0
	bra.s loc_20869a
loc_208692:
	cmpi.w #$3,d0
	bcs.s loc_20869a
	moveq #$2,d0
loc_20869a:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208768
	dbf d0,loc_20869a
	bclr.b #$7,(a2)
	bra.s loc_2086f0
loc_2086ac:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2086d8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2086d0
	moveq #$0,d0
	bra.s loc_2086d8
loc_2086d0:
	cmpi.w #$3,d0
	bcs.s loc_2086d8
	moveq #$2,d0
loc_2086d8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208768
	dbf d0,loc_2086d8
	bclr.b #$7,(a2)
	bsr.w sub_2075e0
	bne.w loc_208774
loc_2086f0:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208a3a,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208746
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208746
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208746:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208768:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2086ac
loc_208774:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20879a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208792
	moveq #$0,d0
	bra.s loc_20879a
loc_208792:
	cmpi.w #$3,d0
	bcs.s loc_20879a
	moveq #$2,d0
loc_20879a:
	lea $1(a2),a3
loc_20879e:
	btst.b #$0,-(a3)
	bne.w sub_203852
	dbf d0,loc_20879e
	tst.b $1(a0)
	bmi.s loc_2087ce
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208848
loc_2087ce:
	tst.w ($ff190e).l
	bne.s loc_2087de
	move.b ($ff1913).l,$1a(a0)
loc_2087de:
	bra.w sub_2037a6
	.incbin 34786, 102
loc_208848:
	bra.w sub_203852
	.incbin 34892, 888
loc_208bc4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208bf2(pc,d0.w),d0
	jsr dat_208bf2(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208bf0
	cmpi.w #$5a,($f786).w
	bcs.s loc_208bea
	btst.b #$0,($ff1505).l
	bne.s loc_208bf0
loc_208bea:
	jmp (sub_2037a6).l
loc_208bf0:
	rts
dat_208bf2:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$2091cc,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208c26
	move.b #$13,$1a(a0)
loc_208c26:
	rts
loc_208c28:
	tst.b ($ff0f01).l
	beq.s loc_208c36
	jmp (sub_203852).l
loc_208c36:
	cmpi.b #$a,$28(a0)
	beq.w loc_208bc4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208c5a(pc,d0.w),d0
	jsr dat_208c5a(pc,d0.w)
	jsr (sub_2037a6).l
	jmp (loc_207600).l
dat_208c5a:
	.incbin 35930, 282

sub_208d74:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208dac
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208da4
	moveq #$0,d1
	bra.s loc_208dac
loc_208da4:
	cmpi.w #$3,d1
	bcs.s loc_208dac
	moveq #$2,d1
loc_208dac:
	add.w d1,d0
	rts

sub_208db0:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208dd2
	tst.b ($ff1956).l
	beq.s loc_208dca
	tst.b $29(a0)
	bne.s loc_208dd2
	rts
loc_208dca:
	tst.b $29(a0)
	beq.s loc_208dd2
	rts
loc_208dd2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207b94).l
	tst.b $28(a0)
	bne.s loc_208df4
	tst.b ($ff0f01).l
	beq.s loc_208df4
	jmp (loc_207600).l
loc_208df4:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208c28
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e0c(pc,d0.w),d1
	jmp dat_208e0c(pc,d1.w)
dat_208e0c:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2091cc,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208e56
	tst.b $29(a0)
	bne.s loc_208e56
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208e56:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208d74
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208e82
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208e82:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208edc
	move.b $25(a0),d0
	beq.s loc_208ebc
	bsr.w sub_2036ee
	jsr (sub_206870).l
	tst.w d1
	bpl.w loc_208eca
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208eca
loc_208ebc:
	tst.b $1(a0)
	bpl.s loc_208eca
	lea ($d000).w,a1
	bsr.w sub_208db0
loc_208eca:
	tst.w ($ff190e).l
	bne.s loc_208edc
	lea (dat_209144).l,a1
	bsr.w sub_2059cc
loc_208edc:
	bsr.w sub_2037a6
	jmp (loc_207600).l
	.incbin 36582, 606
dat_209144:
	.incbin 37188, 586
loc_20938e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093a2(pc,d0.w),d0
	jsr dat_2093a2(pc,d0.w)
	jmp (sub_2037a6).l
dat_2093a2:
	.incbin 37794, 146
	tst.b $28(a0)
	bmi.w loc_20938e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20944a(pc,d0.w),d0
	jmp dat_20944a(pc,d0.w)
dat_20944a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2094e4,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20947a
	move.b #$3,$1a(a0)
	bra.s loc_20949a
loc_20947a:
	tst.w ($ff1588).l
	beq.s loc_209488
	move.b #$2,$1a(a0)
loc_209488:
	tst.b $28(a0)
	beq.s loc_20949a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20949a:
	tst.b $28(a0)
	bne.s loc_2094de
	tst.b $29(a0)
	beq.s loc_2094ca
	tst.w ($ff1512).l
	beq.s loc_2094b6
	bclr.b #$5,$2(a0)
	bra.s loc_2094de
loc_2094b6:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2094de
	eori.b #$20,$2(a0)
	bra.s loc_2094de
loc_2094ca:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2094de
	move.b #$2,$1a(a0)
loc_2094de:
	jmp (sub_2037a6).l
	.incbin 38116, 168

sub_20958c:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2095a8
	move.l d1,(a3)
loc_2095a8:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2095d2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_20598c).l
loc_2095d2:
	rts
loc_2095d4:
	tst.w ($ff1588).l
	beq.s loc_20962a
	bsr.w sub_209826
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
	lea (dat_209986).l,a2
	moveq #$2,d6
	bsr.w sub_2099de
	bra.w loc_209684
loc_20962a:
	tst.b ($ff1511).l
	beq.s loc_20964e
	bpl.s loc_209638
	bsr.w sub_2097d0
loc_209638:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_2098c0
loc_20964e:
	tst.b ($ff150f).l
	beq.s loc_209684
	bpl.s loc_20965c
	bsr.w sub_2097bc
loc_20965c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209680
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209680:
	bsr.w sub_2098b6
loc_209684:
	tst.w ($ff1588).l
	bne.w loc_209730
	tst.b ($ff1510).l
	beq.w loc_209730
	tst.w ($f63a).w
	bne.w loc_209730
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20978e
	tst.b ($f7cc).w
	bne.s loc_2096da
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2096da
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2096da
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_2096da
	move.b #$9,(a1)
loc_2096da:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_2099cc
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_2099d6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20972c
	move.w #$63,d1
loc_20972c:
	bsr.w sub_2099d6
loc_209730:
	tst.b ($ff150e).l
	beq.s loc_209742
	clr.b ($ff150e).l
	bsr.w sub_2099ac
loc_209742:
	tst.b ($f7d6).w
	beq.s loc_20978c
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209762
	move.l #$6d400001,d0
loc_209762:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209844
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209782
	move.l #$6e800001,d0
loc_209782:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209844
loc_20978c:
	rts
loc_20978e:
	btst.b #$7,($ff152e).l
	bne.s loc_2097ba
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206de4
	move.b #$1,($ff150c).l
loc_2097ba:
	rts

sub_2097bc:
	move.l #$73600002,($c00004).l
	lea dat_209822(pc),a2
	move.w #$2,d2
	bra.s loc_2097ec

sub_2097d0:
	lea ($c00000).l,a6
	bsr.w sub_2099ac
	move.l #$70600002,($c00004).l
	lea dat_20981a(pc),a2
	move.w #$6,d2
loc_2097ec:
	lea (dat_233486).l,a1
loc_2097f2:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20980e
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209802:
	move.l (a3)+,(a6)
	dbf d1,loc_209802
loc_209808:
	dbf d2,loc_2097f2
	rts
loc_20980e:
	move.l #$0,(a6)
	dbf d1,loc_20980e
	bra.s loc_209808
dat_20981a:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209822:
	dc.b $ff,$ff,$00,$00

sub_209826:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_2099a2
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_2099a2

sub_209844:
	lea (dat_20997e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_233486).l,a1
loc_209854:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209858:
	sub.l d3,d1
	bcs.s loc_209860
	addq.w #$1,d2
	bra.s loc_209858
loc_209860:
	add.l d3,d1
	tst.w d2
	beq.s loc_20986a
	move.w #$1,d4
loc_20986a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209876
	tst.w d6
	bne.s loc_2098a8
loc_209876:
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
loc_20989c:
	addi.l #$400000,d0
	dbf d6,loc_209854
	rts
loc_2098a8:
	moveq #$f,d5
loc_2098aa:
	move.l #$0,(a6)
	dbf d5,loc_2098aa
	bra.s loc_20989c

sub_2098b6:
	lea (dat_209986).l,a2
	moveq #$2,d6
	bra.s loc_2098c8

sub_2098c0:
	lea (dat_20997a).l,a2
	moveq #$5,d6
loc_2098c8:
	moveq #$0,d4
	lea (dat_233486).l,a1
loc_2098d0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2098d4:
	sub.l d3,d1
	bcs.s loc_2098dc
	addq.w #$1,d2
	bra.s loc_2098d4
loc_2098dc:
	add.l d3,d1
	tst.w d2
	beq.s loc_2098e6
	move.w #$1,d4
loc_2098e6:
	tst.w d4
	beq.s loc_209914
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
loc_209914:
	addi.l #$400000,d0
	dbf d6,loc_2098d0
	rts
	.incbin 39200, 32
loc_209940:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209944:
	sub.l d3,d1
	bcs.s loc_20994c
	addq.w #$1,d2
	bra.s loc_209944
loc_20994c:
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
	dbf d6,loc_209940
	rts
dat_20997a:
	dc.b $00,$01,$86,$a0
dat_20997e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209986:
	dc.b $00,$00,$00,$64
dat_20998a:
	dc.b $00,$00,$00,$0a
dat_20998e:
	dc.b $00,$00,$00,$01
dat_209992:
	.incbin 39314, 16

sub_2099a2:
	moveq #$3,d6
	lea (dat_209992).l,a2
	bra.s sub_2099de

sub_2099ac:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_2099c2
	moveq #$9,d1
loc_2099c2:
	lea (dat_20998e).l,a2
	moveq #$0,d6
	bra.s sub_2099de

sub_2099cc:
	lea (dat_20998e).l,a2
	moveq #$0,d6
	bra.s sub_2099de

sub_2099d6:
	lea (dat_20998a).l,a2
	moveq #$1,d6

sub_2099de:
	moveq #$0,d4
	lea (dat_233486).l,a1
loc_2099e6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2099ea:
	sub.l d3,d1
	bcs.s loc_2099f2
	addq.w #$1,d2
	bra.s loc_2099ea
loc_2099f2:
	add.l d3,d1
	tst.w d2
	beq.s loc_2099fc
	move.w #$1,d4
loc_2099fc:
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
	dbf d6,loc_2099e6
	rts
	.incbin 39474, 5154
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ae62(pc,d0.w),d0
	jmp dat_20ae62(pc,d0.w)
dat_20ae62:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b560,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b520).l,a2
loc_20aeb0:
	jsr (sub_2075ca).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b560,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20af02
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20af02:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20aeb0
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20af2a
	bge.s loc_20af20
	neg.w d0
loc_20af20:
	add.w d0,$a(a0)
	jmp (sub_2037a6).l
loc_20af2a:
	addq.b #$4,$24(a0)
	jmp (sub_2037a6).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20af4e
	bge.s loc_20af44
	neg.w d0
loc_20af44:
	add.w d0,$8(a0)
	jmp (sub_2037a6).l
loc_20af4e:
	addq.b #$4,$24(a0)
	jmp (sub_2037a6).l
	tst.b $1e(a0)
	beq.s loc_20af68
	subq.b #$1,$1e(a0)
	jmp (sub_2037a6).l
loc_20af68:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20af82
	bge.s loc_20af78
	neg.w d0
loc_20af78:
	add.w d0,$a(a0)
	jmp (sub_2037a6).l
loc_20af82:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20270a).l
	tst.b $1e(a0)
	beq.s loc_20afa4
	subq.b #$1,$1e(a0)
	jmp (sub_2037a6).l
loc_20afa4:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20afbe
	bge.s loc_20afb4
	neg.w d0
loc_20afb4:
	add.w d0,$8(a0)
	jmp (sub_2037a6).l
loc_20afbe:
	jmp (sub_203852).l
	tst.l ($f680).w
	bne.s loc_20afd8
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203852).l
loc_20afd8:
	rts
	.incbin 45018, 1350
dat_20b520:
	.incbin 46368, 8742
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20d954,$4(a0)
	move.w #$498,$2(a0)
	move.b #$3,$18(a0)
	move.w $c(a0),$30(a0)
	clr.w $12(a0)
	clr.w $10(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$30,d1
	lsr.w #$3,d1
	move.w dat_20d7ce(pc,d1.w),d2
	move.w d2,$32(a0)
	move.b d0,d1
	andi.w #$40,d1
	lsr.w #$5,d1
	move.w dat_20d7d6(pc,d1.w),d2
	move.w d2,$36(a0)
	move.w $32(a0),d2
	move.w d0,d3
	lsr.w #$2,d2
	move.w d2,d0
	jsr (sub_200a44).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
	move.w d3,d0
	move.w d0,d1
	andi.w #$3,d1
	lsl.w #$1,d1
	move.w dat_20d7c8(pc,d1.w),d1
	jmp dat_20d7c8(pc,d1.w)
dat_20d7c8:
	dc.b $00,$1a,$00,$3e,$00,$1a
dat_20d7ce:
	dc.b $00,$00,$01,$00,$02,$00,$03,$00
dat_20d7d6:
	.incbin 55254, 498

sub_20d9c8:
	rts

sub_20d9ca:
	cmpi.b #$e,d0
	bne.s loc_20d9d8
	move.w #$372,$2(a0)
	rts
loc_20d9d8:
	cmpi.b #$f,d0
	bne.s loc_20d9e4
	move.w #$4f2,$2(a0)
loc_20d9e4:
	rts
	.incbin 55782, 920
	tst.b $28(a0)
	bmi.w loc_20de6e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dda4(pc,d0.w),d0
	jsr dat_20dda4(pc,d0.w)
	jsr (sub_2037a6).l
	move.w $36(a0),d0
	jmp (loc_207604).l
dat_20dda4:
	.incbin 56740, 202
loc_20de6e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dec2(pc,d0.w),d0
	jsr dat_20dec2(pc,d0.w)
	jsr (sub_2037a6).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20deb2
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20debc
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20deb2:
	move.w $36(a0),d0
	jmp (loc_207604).l
loc_20debc:
	jmp (sub_203852).l
dat_20dec2:
	dc.b $00,$04,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20dfb2,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$ff,$28(a0)
	beq.s loc_20df1c
	move.b #$1,$1a(a0)
	move.b #$12,$19(a0)
	move.b #$8,$16(a0)
	move.b #$83,$20(a0)
loc_20df1c:
	tst.b $1a(a0)
	bne.w loc_20df8c
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20df34
	neg.w d0
loc_20df34:
	cmpi.w #$20,d0
	bcc.s loc_20df8a
	jsr (sub_207b94).l
	beq.s loc_20df8a
	btst.b #$3,$22(a0)
	beq.s loc_20df8a
	tst.b ($ff1521).l
	bne.s loc_20df8a
	tst.b ($ff151f).l
	bne.s loc_20df8a
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20df88
	tst.w $30(a0)
	bne.s loc_20df88
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206d36).l
loc_20df88:
	movea.l (a7)+,a0
loc_20df8a:
	rts
loc_20df8c:
	btst.b #$7,$1(a0)
	beq.s loc_20dfb0
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20dfa4
	neg.w d0
loc_20dfa4:
	cmpi.w #$20,d0
	bcc.s loc_20dfb0
	jsr (sub_207b94).l
loc_20dfb0:
	rts
	.incbin 57266, 606
	tst.b $29(a0)
	bne.w loc_20e3a2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e226(pc,d0.w),d0
	jmp dat_20e226(pc,d0.w)
dat_20e226:
	dc.b $00,$0a,$00,$66,$00,$a4,$00,$be
	dc.b $01,$66
	move.b #$4,$1(a0)
	move.l #$20e40a,$4(a0)
	move.b #$11,$16(a0)
	move.w #$44d8,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e256
	move.w #$437a,d0
loc_20e256:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	bpl.s loc_20e262
	neg.b d0
loc_20e262:
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	moveq #$3,d0
	moveq #$2,d1
	tst.b $28(a0)
	bpl.s loc_20e282
	moveq #$1,d0
	moveq #$8,d1
loc_20e282:
	move.b d0,$18(a0)
	move.b d1,$24(a0)
	rts
	lea ($d000).w,a1
	jsr (sub_207b8e).l
	beq.s loc_20e2be
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20e2b0
	neg.w d0
loc_20e2b0:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_202540).l
loc_20e2be:
	jsr (sub_2037a6).l
	jmp (loc_207600).l
	.incbin 58058, 122
	lea ($d000).w,a1
	jsr (sub_207b8e).l
	beq.s loc_20e356
	jsr (sub_207a46).l
loc_20e356:
	subq.b #$1,$28(a0)
	ble.w loc_20e404
	subq.b #$2,$24(a0)
	subq.b #$1,$1a(a0)
	subq.b #$8,$17(a0)
	subq.b #$8,$19(a0)
	move.w #$7,$2a(a0)
	move.w $2c(a0),d0
	add.w d0,$8(a0)
	lea ($d000).w,a1
	jsr (sub_207b8e).l
	jmp (sub_2037a6).l
	.incbin 58252, 22
loc_20e3a2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e3b0(pc,d0.w),d0
	jmp dat_20e3b0(pc,d0.w)
dat_20e3b0:
	.incbin 58288, 84
loc_20e404:
	jmp (sub_203852).l
	.incbin 58378, 408
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e5ca(pc,d0.w),d0
	jsr dat_20e5ca(pc,d0.w)
	lea dat_20e7d4(pc),a1
	jsr (sub_2059cc).l
	jsr (sub_2037a6).l
	move.w $36(a0),d0
	jmp (loc_207604).l
dat_20e5ca:
	.incbin 58826, 522
dat_20e7d4:
	.incbin 59348, 2222
	jsr (sub_20f374).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20f140
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f0a2(pc,d0.w),d0
	jmp dat_20f0a2(pc,d0.w)
dat_20f0a2:
	.incbin 61602, 158
loc_20f140:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f14e(pc,d0.w),d0
	jmp dat_20f14e(pc,d0.w)
dat_20f14e:
	.incbin 61774, 550

sub_20f374:
	tst.b $28(a0)
	bmi.s loc_20f3a4
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f394
	tst.b ($ff156d).l
	bne.s loc_20f3a4
	addq.l #$4,a7
	jmp (loc_207600).l
loc_20f394:
	tst.b ($ff156a).l
	bne.s loc_20f3a4
	addq.l #$4,a7
	jmp (sub_203852).l
loc_20f3a4:
	rts
	.incbin 62374, 1640
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fa26(pc,d0.w),d0
	jsr dat_20fa26(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_207604).l
dat_20fa26:
	dc.b $00,$06,$00,$8c,$00,$ac
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20fb3e,$4(a0)
	move.b #$8,$19(a0)
	move.b #$6,$16(a0)
	move.w $8(a0),$36(a0)
	move.w #$100,$10(a0)
	moveq #$e,d0
	jsr (sub_20d9ca).l
	jsr (sub_2075e0).l
	beq.s loc_20fa72
	jmp (sub_203852).l
loc_20fa72:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$10,$c(a1)
	move.b #$f0,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$28(a1)
	move.w #$50,$3a(a0)
	tst.b $28(a0)
	bpl.s loc_20fab2
	move.w #$40,$3a(a0)
loc_20fab2:
	jsr (sub_206870).l
	tst.w d1
	bpl.s loc_20facc
	add.w d1,$c(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	rts
loc_20facc:
	addq.w #$1,$c(a0)
	rts
	move.w #$20,d3
	lea (loc_20693a).l,a1
	tst.w $10(a0)
	bpl.s loc_20faec
	move.w #$ffe8,d3
	lea (loc_206adc).l,a1
loc_20faec:
	jsr (a1)
	cmpi.w #$7,d1
	bmi.s loc_20fb1e
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcc.s loc_20fb00
	neg.w d0
loc_20fb00:
	cmp.w $3a(a0),d0
	bcc.s loc_20fb1e
	jsr (sub_206870).l
	cmpi.w #$fff9,d1
	blt.s loc_20fb1e
	cmpi.w #$7,d1
	bgt.s loc_20fb1e
	add.w d1,$c(a0)
	bra.s loc_20fb22
loc_20fb1e:
	neg.w $10(a0)
loc_20fb22:
	jsr (sub_203750).l
	lea dat_20fb38(pc),a1
	jsr (sub_2059cc).l
	jmp (sub_2037a6).l
dat_20fb38:
	.incbin 64312, 22

sub_20fb4e:
	jsr (sub_206240).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fcb2).l,a1
	move.w #$3f,d6
	bsr.w sub_20fc6e
	bne.s loc_20fb90
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7a60,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fb90:
	lea (dat_20fcc4).l,a1
	move.w #$3f,d6
	bsr.w sub_20fc6e
	bne.s loc_20fbc4
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7b60,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fbc4:
	lea (dat_20fcd6).l,a1
	move.w #$7f,d6
	bsr.w sub_20fc6e
	bne.s loc_20fbf8
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7c60,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fbf8:
	lea (dat_20fce8).l,a1
	move.w #$1f,d6
	bsr.w sub_20fc6e
	bne.s loc_20fc2c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7ee0,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fc2c:
	tst.b ($ff1959).l
	beq.s loc_20fc38
	tst.b (a4)
	beq.s loc_20fc6c
loc_20fc38:
	lea (dat_20fd06).l,a1
	move.w #$1f,d6
	bsr.w sub_20fc6e
	bne.s loc_20fc6c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7e60,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fc6c:
	rts

sub_20fc6e:
	subq.b #$1,(a2)
	bpl.w loc_20fca6
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fc84
	moveq #$0,d0
loc_20fc84:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fc94:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fc94
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fca6:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fcb2:
	.incbin 64690, 18
dat_20fcc4:
	.incbin 64708, 18
dat_20fcd6:
	.incbin 64726, 18
dat_20fce8:
	.incbin 64744, 30
dat_20fd06:
	.incbin 64774, 26
dat_20fd20:
	.incbin 64800, 16
dat_20fd30:
	.incbin 64816, 59400
dat_21e538:
	.incbin 124216, 6856
dat_220000:
	.incbin 131072, 78598
dat_233306:
	.incbin 209670, 384
dat_233486:
	.incbin 210054, 14578
dat_236d78:
	.incbin 224632, 256
dat_236e78:
	.incbin 224888, 4096
dat_237e78:
	.incbin 228984, 4796
dat_239134:
	.incbin 233780, 11238
dat_23bd1a:
	.incbin 245018, 17126
