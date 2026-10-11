; R82D__.MMD
; disassembled from the disc; code only, data comes from data/R82D__.MMD at build time
	.file "R82D__.MMD", 262144

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
	lea (dat_236c7e).l,a2
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
	lea (dat_236d7e).l,a2
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
	lea (dat_236c7e).l,a2
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
	lea (dat_236d7e).l,a2
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
	lea (dat_236c7e).l,a2
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
	lea (dat_237d7e).l,a2
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
	lea (dat_236c7e).l,a2
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
	lea (dat_237d7e).l,a2
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
	bsr.w sub_20730e
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
	lea (dat_20fcae).l,a2
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
	bsr.w sub_203668
	bsr.w sub_20357e
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
	jsr (sub_20fae8).l
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
	jsr (sub_205a6e).l
	bsr.w sub_20730e
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
	jsr (sub_207324).l
	jsr (sub_2037a8).l
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
	jsr (sub_203952).l
	tst.w ($ff190e).l
	bne.s loc_201be8
	bsr.w sub_200184
loc_201be8:
	jsr (sub_20ce7a).l
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
	jmp (sub_205a6e).l
dat_201d6e:
	.incbin 7534, 38

sub_201d94:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_23320c).l,a1
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
	jmp (sub_205a6e).l
loc_201e22:
	tst.b ($ff151f).l
	bne.s loc_201e18
	tst.b ($ff1520).l
	bne.s loc_201e18
	move.w #$90,d0
	jmp (sub_205a6e).l
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
	jmp (sub_205a6e).l
loc_201e5e:
	tst.b ($ff151f).l
	bne.s loc_201e54
	tst.b ($ff1520).l
	bne.s loc_201e54
	move.w #$91,d0
	jmp (sub_205a6e).l
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
	bsr.w sub_205990
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
	jsr (sub_20fae8).l
	jsr (sub_2024f4).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203174
	bsr.w sub_2027e8
	jmp (loc_20a6a8).l
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
	bsr.w sub_203174
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
	lea (dat_20fcbe).l,a1
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
	lea (dat_20fcbe).l,a1
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
	lea (dat_20fcbe).l,a1
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
	jsr (sub_20671e).l
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
	dc.b $00,$2e,$04,$8c
dat_202c02:
	dc.b $7f,$7f,$7f,$7f

sub_202c06:
	swap d0
	lsr.l #$3,d0
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
	bsr.w sub_202dea
	bsr.w sub_202e8a
	bsr.w sub_203710
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_203114
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_2030e0
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_2030ac
	move.l ($f704).w,d0
	lsr.l #$3,d0
	swap d0
	bsr.w sub_20307c
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
	moveq #$5,d6
loc_202ce0:
	move.w d0,(a1)+
	dbf d6,loc_202ce0
	bsr.w sub_202d38
	move.w ($f710).w,d0
	neg.w d0
	moveq #$11,d6
loc_202cf2:
	move.w d0,(a1)+
	dbf d6,loc_202cf2
	bsr.w sub_202d5e
	move.w ($f708).w,d0
	neg.w d0
	moveq #$9,d6
loc_202d04:
	move.w d0,(a1)+
	dbf d6,loc_202d04
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202da8
dat_202d28:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
dat_202d30:
	dc.b $00,$00,$00,$00,$01,$09,$01,$00

sub_202d38:
	bsr.w sub_202d8c
	move.w ($f718).w,d3
	moveq #$6,d6
loc_202d42:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d28(pc,d6.w),d5
loc_202d4c:
	move.w d0,(a1)+
	dbf d5,loc_202d4c
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d42
	rts

sub_202d5e:
	bsr.w sub_202d8c
	move.w ($f718).w,d3
	adda.w #$24,a1
	moveq #$6,d6
loc_202d6c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202d30(pc,d6.w),d5
loc_202d76:
	move.w d0,-(a1)
	dbf d5,loc_202d76
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202d6c
	adda.w #$24,a1
	rts

sub_202d8c:
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
	rts
loc_202da8:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202db6(pc,d2.w)
loc_202db4:
	move.w (a2)+,d0
loc_202db6:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202db4
	rts
	.incbin 11724, 30

sub_202dea:
	move.w ($f700).w,d4
	bsr.s sub_202e1e
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202e1c
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202e16
	bset.b #$2,($f754).w
	rts
loc_202e16:
	bset.b #$3,($f754).w
loc_202e1c:
	rts

sub_202e1e:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202e30
	bcs.s loc_202e60
	bra.s loc_202e36
loc_202e30:
	clr.w ($f73a).w
	rts
loc_202e36:
	cmpi.w #$10,d0
	blt.s loc_202e40
	move.w #$10,d0
loc_202e40:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202e4e
	move.w ($f72a).w,d0
loc_202e4e:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202e60:
	cmpi.w #$fff0,d0
	bge.s loc_202e6a
	move.w #$fff0,d0
loc_202e6a:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202e4e
	move.w ($f728).w,d0
	bra.s loc_202e4e
	.incbin 11898, 16

sub_202e8a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202e9e
	subq.w #$5,d0
loc_202e9e:
	btst.b #$1,$22(a6)
	beq.s loc_202ebe
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202f0a
	subi.w #$40,d0
	bcc.s loc_202f0a
	tst.b ($f75c).w
	bne.s loc_202f1c
	bra.s loc_202eca
loc_202ebe:
	sub.w ($f73e).w,d0
	bne.s loc_202ed0
	tst.b ($f75c).w
	bne.s loc_202f1c
loc_202eca:
	clr.w ($f73c).w
	rts
loc_202ed0:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ef8
	move.w $14(a6),d1
	bpl.s loc_202ee0
	neg.w d1
loc_202ee0:
	cmpi.w #$800,d1
	bcc.s loc_202f0a
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202f6a
	cmpi.w #$fffa,d0
	blt.s loc_202f34
	bra.s loc_202f22
loc_202ef8:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202f6a
	cmpi.w #$fffe,d0
	blt.s loc_202f34
	bra.s loc_202f22
loc_202f0a:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202f6a
	cmpi.w #$fff0,d0
	blt.s loc_202f34
	bra.s loc_202f22
loc_202f1c:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202f22:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202f74
	bra.w loc_202f40
loc_202f34:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f40:
	cmp.w ($f72c).w,d1
	bgt.s loc_202f98
	cmpi.w #$ff00,d1
	bgt.s loc_202f64
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f98
loc_202f64:
	move.w ($f72c).w,d1
	bra.s loc_202f98
loc_202f6a:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202f74:
	cmp.w ($f72e).w,d1
	blt.s loc_202f98
	subi.w #$800,d1
	bcs.s loc_202f94
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f98
loc_202f94:
	move.w ($f72e).w,d1
loc_202f98:
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
	bne.s loc_202fda
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202fd4
	bset.b #$0,($f754).w
	rts
loc_202fd4:
	bset.b #$1,($f754).w
loc_202fda:
	rts
	.incbin 12252, 160

sub_20307c:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_2030aa
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_2030a4
	bset.b #$0,($f756).w
	rts
loc_2030a4:
	bset.b #$1,($f756).w
loc_2030aa:
	rts

sub_2030ac:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030de
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030d8
	bset.b d6,($f756).w
	bra.s loc_2030de
loc_2030d8:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_2030de:
	rts

sub_2030e0:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203112
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_20310c
	bset.b d6,($f758).w
	bra.s loc_203112
loc_20310c:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203112:
	rts

sub_203114:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_203146
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203140
	bset.b d6,($f75a).w
	bra.s loc_203146
loc_203140:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_203146:
	rts
	.incbin 12616, 44

sub_203174:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203232
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203318
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20331a
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203230
	bclr.b #$0,(a2)
	beq.s loc_2031e6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331c
loc_2031e6:
	bclr.b #$1,(a2)
	beq.s loc_203200
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331c
loc_203200:
	bclr.b #$2,(a2)
	beq.s loc_203216
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203372
loc_203216:
	bclr.b #$3,(a2)
	beq.s loc_203230
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203372
loc_203230:
	rts

sub_203232:
	lea (dat_2035fe).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20324e
	bclr.b #$1,(a2)
	beq.s loc_203298
	move.w #$e0,d4
loc_20324e:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_2032c8(pc,d0.w),a3
	beq.s loc_203280
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203546
	movem.l (a7)+,d4-d5
	bsr.w sub_20331c
	movea.l (a7)+,a0
	bra.s loc_203298
loc_203280:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203548
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203348
	movea.l (a7)+,a0
loc_203298:
	tst.b (a2)
	bne.s loc_20329e
	rts
loc_20329e:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_2032b2
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_2032b2:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_2032d8
dat_2032c8:
	.incbin 13000, 16
loc_2032d8:
	moveq #$f,d6
	move.l #$800000,d7
loc_2032e0:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20330c
	btst.b d0,(a2)
	beq.s loc_20330c
	add.w d0,d0
	movea.l dat_2032c8(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	movem.l (a7)+,d4-d5
	bsr.w sub_203546
	bsr.w sub_2033a0
	movem.l (a7)+,d4-d5/a0
loc_20330c:
	addi.w #$10,d4
	dbf d6,loc_2032e0
	clr.b (a2)
	rts

sub_203318:
	rts

sub_20331a:
	rts

sub_20331c:
	moveq #$15,d6

sub_20331e:
	move.l #$800000,d7
	move.l d0,d1
loc_203326:
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	move.l d1,d0
	bsr.w sub_2033a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203326
	rts

sub_203348:
	move.l #$800000,d7
	move.l d0,d1
loc_203350:
	movem.l d4-d5,-(a7)
	bsr.w sub_203420
	move.l d1,d0
	bsr.w sub_2033a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203350
	rts

sub_203372:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20337c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	move.l d1,d0
	bsr.w sub_2033a0
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20337c
	rts

sub_2033a0:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033dc
	btst.b #$3,(a0)
	bne.s loc_2033bc
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033bc:
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
loc_2033dc:
	btst.b #$3,(a0)
	bne.s loc_2033fe
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
loc_2033fe:
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

sub_20341e:
	add.w (a3),d5

sub_203420:
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
	beq.s loc_20346e
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
loc_20346e:
	rts
	.incbin 13424, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20354c
	bsr.w sub_2033a0
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 13570, 68

sub_203546:
	add.w (a3),d5

sub_203548:
	add.w $4(a3),d4

sub_20354c:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13666, 28

sub_20357e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2035a8
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2035d0

sub_2035a8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035ac:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203546
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20331e
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2035ac
	rts
loc_2035d0:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035d4:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2035fe).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_203630
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2035d4
	rts
dat_2035fe:
	.incbin 13822, 34
dat_203620:
	.incbin 13856, 16

sub_203630:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_203620(pc,d0.w),a3
	beq.s loc_203652
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203546
	movem.l (a7)+,d4-d5
	bsr.w sub_20331c
	bra.s loc_203666
loc_203652:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203548
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203348
loc_203666:
	rts

sub_203668:
	moveq #$0,d0
	lea (dat_20fcae).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2025dc
	movea.l (a2)+,a0
	bsr.w sub_2036c2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200672
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2036ac
	jmp (loc_20ce56).l
loc_2036ac:
	btst.b #$1,($ff151c).l
	beq.s loc_2036c0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2036c0
	bsr.w sub_20270a
loc_2036c0:
	rts

sub_2036c2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2036cc:
	move.l d0,(a3)+
	dbf d1,loc_2036cc
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2036e2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2036e2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23903a).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2036fc:
	move.w d1,d0
	movea.l a3,a0
loc_203700:
	move.b (a1)+,(a0)+
	dbf d0,loc_203700
	lea $80(a3),a3
	dbf d2,loc_2036fc
	rts

sub_203710:
	lea ($d000).w,a6
	bsr.w sub_20376c
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203746
	bcc.s loc_203748
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20373c
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20373c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203746:
	rts
loc_203748:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203760
	btst.b #$1,$22(a6)
	beq.s loc_203760
	add.w d1,d1
	add.w d1,d1
loc_203760:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_20376c:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20377e(pc,d0.w),d0
	jmp dat_20377e(pc,d0.w)
dat_20377e:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 14220, 28

sub_2037a8:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2037b0:
	move.b (a0),d0
	beq.s loc_2037c6
	add.w d0,d0
	add.w d0,d0
	lea (dat_203bca).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2037c6:
	lea $40(a0),a0
	dbf d7,loc_2037b0
	rts

sub_2037d0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20380e
	bpl.s loc_203800
	btst.b #$1,$2c(a0)
	beq.s loc_203800
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20380e
loc_203800:
	btst.b #$2,$2c(a0)
	bne.s loc_20380e
	addi.w #$38,$12(a0)
loc_20380e:
	tst.w $12(a0)
	bmi.s loc_203822
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203822
	move.w #$1000,$12(a0)
loc_203822:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203832:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20386e
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20386e
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20386c
	neg.w d1
loc_20386c:
	add.w d1,d0
loc_20386e:
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

sub_203888:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038f8
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203914
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203914
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038d2
	cmpi.w #$800,d3
	bcs.s loc_2038e4
	subi.w #$800,d3
	bra.s loc_2038e4
loc_2038d2:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038e4
	cmpi.w #$100,d3
	bcc.s loc_2038e4
	addi.w #$800,d3
loc_2038e4:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203914
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203914
loc_2038f8:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203914
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203914:
	rts
	.incbin 14614, 30

sub_203934:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20393a:
	move.l d1,(a1)+
	dbf d0,loc_20393a
	rts
dat_203942:
	.incbin 14658, 16

sub_203952:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_20395e:
	tst.w (a4)
	beq.w loc_203a1e
	moveq #$2,d6
loc_203966:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a16
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039cc
	movea.l dat_203942(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2039b0
	cmpi.w #$800,d2
	bcs.s loc_2039c2
	subi.w #$800,d2
	bra.s loc_2039c2
loc_2039b0:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2039c2
	cmpi.w #$100,d2
	bcc.s loc_2039c2
	addi.w #$800,d2
loc_2039c2:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039ee
loc_2039cc:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039ee
	.incbin 14806, 24
loc_2039ee:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a0c
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a10
loc_203a0c:
	bsr.w sub_203a40
loc_203a10:
	bset.b #$7,$1(a0)
loc_203a16:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203966
loc_203a1e:
	lea $80(a4),a4
	dbf d7,loc_20395e
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a38
	move.l #$0,(a2)
	rts
loc_203a38:
	move.b #$0,-$5(a2)
	rts

sub_203a40:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a86
	btst.l #$1,d4
	bne.w loc_203ad4
loc_203a52:
	cmpi.b #$50,d5
	beq.s loc_203a84
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
	bne.s loc_203a7e
	addq.w #$1,d0
loc_203a7e:
	move.w d0,(a2)+
	dbf d1,loc_203a52
loc_203a84:
	rts
loc_203a86:
	btst.l #$1,d4
	bne.w loc_203b1a
loc_203a8e:
	cmpi.b #$50,d5
	beq.s loc_203ad2
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
	bne.s loc_203acc
	addq.w #$1,d0
loc_203acc:
	move.w d0,(a2)+
	dbf d1,loc_203a8e
loc_203ad2:
	rts
loc_203ad4:
	cmpi.b #$50,d5
	beq.s loc_203b18
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
	bne.s loc_203b12
	addq.w #$1,d0
loc_203b12:
	move.w d0,(a2)+
	dbf d1,loc_203ad4
loc_203b18:
	rts
loc_203b1a:
	cmpi.b #$50,d5
	beq.s loc_203b6c
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
	bne.s loc_203b66
	addq.w #$1,d0
loc_203b66:
	move.w d0,(a2)+
	dbf d1,loc_203b1a
loc_203b6c:
	rts
	.incbin 15214, 92
dat_203bca:
	.incbin 15306, 274

sub_203cdc:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cee
	move.w #$0,(a1)
	rts
loc_203cee:
	tst.w (a1)
	bne.s loc_203cf8
	move.b #$1,$1(a1)
loc_203cf8:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d42
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d34
	neg.w $10(a0)
loc_203d34:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a6e
loc_203d42:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d60
	cmpa.w #$d040,a0
	beq.s loc_203d60
	tst.b ($ff1906).l
	beq.s loc_203d60
	jmp (loc_2070e8).l
loc_203d60:
	move.b $2a(a0),d0
	beq.s loc_203d8a
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d7c
	cmpi.b #$2d,d0
	bcs.s loc_203d86
	move.b #$2d,d0
	bra.s loc_203d86
loc_203d7c:
	cmpi.b #$1e,d0
	bcs.s loc_203d86
	move.b #$1e,d0
loc_203d86:
	move.b d0,$2a(a0)
loc_203d8a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d98(pc,d0.w),d1
	jmp dat_203d98(pc,d1.w)
dat_203d98:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203da2:
	tst.b ($d300).w
	bne.s loc_203de0
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203de0:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e08
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e08:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e3c:
	tst.b ($ff1506).l
	bne.s loc_203ea2
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203ea2
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203ea6
	cmpi.b #$2f,d1
	bne.s loc_203ea4
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203ea2
	tst.b $2c(a0)
	beq.s loc_203ea2
	jsr (sub_207520).l
	bne.s loc_203ea2
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e9a
	moveq #$0,d0
loc_203e9a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203ea2:
	rts
loc_203ea4:
	rts

sub_203ea6:
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

sub_203ecc:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203ed8
	neg.w d0
loc_203ed8:
	btst.b #$1,$2c(a0)
	beq.s loc_203ee8
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f10
loc_203ee8:
	cmpi.w #$600,d0
	bcs.s loc_203f10
	tst.w $14(a0)
	bpl.s loc_203f02
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f1e
	move.w #$e0,d1
	bra.s loc_203f1e
loc_203f02:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f1e
	move.w #$60,d1
	bra.s loc_203f1e
loc_203f10:
	cmpi.w #$a0,d1
	beq.s loc_203f1e
	bcc.s loc_203f1c
	addq.w #$2,d1
	bra.s loc_203f1e
loc_203f1c:
	subq.w #$2,d1
loc_203f1e:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203ecc
	bsr.w sub_203e3c
	tst.w ($ff1588).l
	beq.s loc_203f44
	btst.b #$4,($f605).w
	beq.s loc_203f44
	move.b #$1,($ff1906).l
	rts
loc_203f44:
	tst.b ($f7cc).w
	bne.s loc_203f50
	move.w ($f604).w,($f602).w
loc_203f50:
	btst.b #$0,$2c(a0)
	beq.s loc_203f74
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f6e
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f8c
loc_203f6e:
	bsr.w sub_204256
	bra.s loc_203f8c
loc_203f74:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203fd2(pc,d0.w),d1
	jsr dat_203fd2(pc,d1.w)
	jsr (sub_206576).l
loc_203f8c:
	bsr.s sub_203fe0
	bsr.w sub_2040a0
	bsr.w sub_2040ba
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203fb4
	tst.b $1c(a0)
	bne.s loc_203fb4
	move.b $1d(a0),$1c(a0)
loc_203fb4:
	bsr.w sub_20545e
	tst.b $2c(a0)
	bmi.s loc_203fcc
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203fcc
	jsr (sub_206bee).l
loc_203fcc:
	bsr.w sub_205314
	rts
dat_203fd2:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203fe0:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204004
	move.w $30(a0),d0
	beq.s loc_203ff6
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204004
loc_203ff6:
	btst.b #$6,$2c(a0)
	bne.s loc_204004
	jsr (sub_203888).l
loc_204004:
	tst.b ($ff151f).l
	beq.s loc_204048
	tst.w $32(a0)
	beq.s loc_204048
	subq.w #$1,$32(a0)
	bne.s loc_204048
	tst.b ($ff1520).l
	bne.s loc_204040
	tst.b ($ff1958).l
	bne.s loc_204040
	tst.b ($ff152e).l
	bne.s loc_20403a
	move.w #$e,d0
	jsr (sub_205a6e).l
loc_20403a:
	jsr (sub_201d34).l
loc_204040:
	move.b #$0,($ff151f).l
loc_204048:
	tst.b ($ff1520).l
	beq.s loc_20409e
	tst.w $34(a0)
	beq.s loc_20409e
	subq.w #$1,$34(a0)
	bne.s loc_20409e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204096
	tst.b ($ff1958).l
	bne.s loc_204096
	tst.b ($ff152e).l
	bne.s loc_204090
	move.w #$e,d0
	jsr (sub_205a6e).l
loc_204090:
	jsr (sub_201d34).l
loc_204096:
	move.b #$0,($ff1520).l
loc_20409e:
	rts

sub_2040a0:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2040ba:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2040c6
loc_2040c4:
	rts
loc_2040c6:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2040d8
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2040c4
loc_2040d8:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20411c
	bset.b #$6,$22(a0)
	bne.s loc_2040c4
	bsr.w sub_205d72
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2040c4
	bra.s loc_204154
loc_20411c:
	tst.w $12(a0)
	beq.s loc_204124
	bpl.s loc_2040c4
loc_204124:
	bclr.b #$6,$22(a0)
	beq.s loc_2040c4
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2040c4
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204154
	move.w #$f000,$12(a0)
loc_204154:
	jsr (sub_207520).l
	bne.s loc_204168
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204168:
	rts

sub_20416a:
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
	bcs.s loc_204244
	move.l #$50000,d0
loc_204244:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204256:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20427c
	tst.b ($ff152e).l
	beq.s loc_204272
	cmpi.b #$2,($ff152e).l
	bne.s loc_20427c
loc_204272:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20432c
loc_20427c:
	tst.b $2a(a0)
	bne.w loc_20433a
	tst.b ($f784).w
	beq.w loc_20433a
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20429a
	neg.w d0
loc_20429a:
	tst.w ($f786).w
	bne.s loc_2042a6
	move.w #$1,($f786).w
loc_2042a6:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2042bc
	move.b #$1,($ff1502).l
	bra.w loc_205a6a
loc_2042bc:
	cmpi.w #$d2,d1
	bcs.s loc_204310
	cmpi.b #$2,($ff1522).l
	beq.s loc_20430e
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2042e6
	move.w #$82,d0
	jsr (sub_205a6e).l
	moveq #$0,d0
loc_2042e6:
	add.b ($f784).w,d0
	bpl.s loc_2042f0
	moveq #$0,d0
	bra.s loc_2042f8
loc_2042f0:
	cmpi.b #$3,d0
	bcs.s loc_2042f8
	moveq #$2,d0
loc_2042f8:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20416a
	move.b #$2,($ff1522).l
loc_20430e:
	rts
loc_204310:
	cmpi.w #$5a,d1
	bcc.s loc_204328
	cmp.w d2,d0
	bcc.w loc_203da2
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204328:
	cmp.w d2,d0
	bcc.s loc_20433a
loc_20432c:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20433a:
	rts
	bsr.w sub_203cdc
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20436c
	tst.b ($ff195b).l
	beq.s loc_20435a
	cmpi.b #$79,$1a(a0)
	bne.s loc_204396
	bra.s loc_204362
loc_20435a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204396
loc_204362:
	bsr.w sub_204bfe
	jmp (sub_2037d0).l
loc_20436c:
	bsr.w sub_204444
	bsr.w sub_204256
	bsr.w sub_204ce8
	bsr.w sub_204e14
	bsr.w sub_2044b8
	bsr.w sub_204c6a
	bsr.w sub_204bfe
	jsr (sub_203832).l
	bsr.w sub_200e44
	bsr.w sub_204e92
loc_204396:
	rts
	.incbin 17304, 76
	bsr.w sub_204444
	bsr.w sub_204256
	bsr.w sub_204ce8
	bsr.w sub_204e50
	bsr.w sub_204958
	bsr.w sub_204bfe
	tst.b $2a(a0)
	bne.s loc_204408
	jsr (sub_203832).l
loc_204408:
	bsr.w sub_200e44
	bsr.w sub_204e92
	rts
	bsr.w sub_204444
	bsr.w sub_204256
	bsr.w sub_204dd2
	bsr.w sub_204b1e
	bsr.w sub_204bfe
	jsr (sub_2037d0).l
	btst.b #$6,$22(a0)
	beq.s loc_20443a
	subi.w #$28,$12(a0)
loc_20443a:
	bsr.w sub_204edc
	bsr.w sub_204f00
	rts

sub_204444:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2044b0
	tst.w ($ff1506).l
	bne.s loc_2044b0
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2044b2).l,a2
loc_204478:
	move.b (a2)+,d0
	bmi.s loc_204488
	cmp.b d0,d1
	bne.s loc_204478
	bset.b #$1,$2c(a0)
	rts
loc_204488:
	bclr.b #$1,$2c(a0)
	beq.s loc_2044b0
	tst.w $12(a0)
	bpl.s loc_2044b0
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2044b0
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044b0
	neg.w $10(a0)
loc_2044b0:
	rts
dat_2044b2:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2044b8:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2047e2
	tst.w $3e(a0)
	bne.w loc_204792
	btst.b #$2,($f602).w
	beq.s loc_2044e0
	bsr.w sub_204872
loc_2044e0:
	btst.b #$3,($f602).w
	beq.s loc_2044ec
	bsr.w sub_2048e8
loc_2044ec:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204792
	tst.w $14(a0)
	beq.s loc_20450c
	tst.b $2a(a0)
	beq.w loc_204792
	bra.s loc_204518
loc_20450c:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204518:
	btst.b #$3,$22(a0)
	beq.s loc_20456a
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2045c2
	cmpi.b #$1e,$0(a1)
	bne.s loc_20454a
	move.b #$0,$1c(a0)
	bra.w loc_204792
loc_20454a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2045a6
	cmp.w d2,d1
	bge.s loc_204594
	bra.s loc_2045c2
loc_20456a:
	jsr (sub_206952).l
	cmpi.w #$c,d1
	blt.s loc_2045c2
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20459e
loc_204594:
	btst.b #$0,$22(a0)
	bne.s loc_2045ae
	bra.s loc_2045b8
loc_20459e:
	cmpi.b #$3,$37(a0)
	bne.s loc_2045c2
loc_2045a6:
	btst.b #$0,$22(a0)
	bne.s loc_2045b8
loc_2045ae:
	move.b #$32,$1c(a0)
	bra.w loc_204792
loc_2045b8:
	move.b #$6,$1c(a0)
	bra.w loc_204792
loc_2045c2:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2045d6
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2045d6:
	btst.b #$7,($f788).w
	bne.w loc_2046da
	btst.b #$6,($f788).w
	bne.w loc_2046fa
	btst.b #$1,($f602).w
	bne.w loc_2046fa
	andi.b #$f,($f788).w
	beq.s loc_20460e
	btst.b #$0,($f603).w
	beq.s loc_204622
	bset.b #$7,($f788).w
	bra.w loc_2047b6
loc_20460e:
	btst.b #$0,($f603).w
	beq.w loc_204622
	move.b #$1,($f788).w
	bra.w loc_2047b6
loc_204622:
	btst.b #$0,($f602).w
	beq.s loc_20469e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204680
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204652
	asr.w #$1,d2
	sub.w d2,d1
loc_204652:
	btst.b #$0,$22(a0)
	beq.s loc_20465e
	neg.w d0
	neg.w d1
loc_20465e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204674
	cmp.w d0,d1
	ble.s loc_20467a
	bra.s loc_204678
loc_204674:
	cmp.w d1,d0
	ble.s loc_20467a
loc_204678:
	move.w d1,d0
loc_20467a:
	move.w d0,$14(a0)
	rts
loc_204680:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20469a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202540).l
loc_20469a:
	bra.w loc_2047b6
loc_20469e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2046be
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046fa
loc_2046be:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202540).l
	bra.w loc_204792
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2046da:
	btst.b #$0,($f602).w
	beq.s loc_2046fa
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2047b6
	addq.w #$2,($f73e).w
	bra.w loc_2047b6
loc_2046fa:
	btst.b #$6,($f788).w
	bne.w loc_204776
	andi.b #$f,($f788).w
	beq.s loc_20471e
	btst.b #$1,($f603).w
	beq.s loc_204730
	bset.b #$6,($f788).w
	bra.w loc_2047b6
loc_20471e:
	btst.b #$1,($f603).w
	beq.s loc_204730
	move.b #$1,($f788).w
	bra.w loc_2047b6
loc_204730:
	btst.b #$1,($f602).w
	beq.s loc_204792
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204774
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204774
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204766
	neg.w $14(a0)
loc_204766:
	move.w #$9c,d0
	jsr (sub_202540).l
	bsr.w sub_204c92
loc_204774:
	bra.s loc_2047b6
loc_204776:
	btst.b #$1,($f602).w
	beq.s loc_204792
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2047b6
	subq.w #$2,($f73e).w
	bra.s loc_2047b6
loc_204792:
	cmpi.w #$60,($f73e).w
	bne.s loc_2047ac
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2047b6
	move.b #$0,($f788).w
	bra.s loc_2047b6
loc_2047ac:
	bcc.s loc_2047b2
	addq.w #$4,($f73e).w
loc_2047b2:
	subq.w #$2,($f73e).w
loc_2047b6:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2047e2
	move.w $14(a0),d0
	beq.s loc_2047e2
	bmi.s loc_2047d6
	sub.w d5,d0
	bcc.s loc_2047d0
	move.w #$0,d0
loc_2047d0:
	move.w d0,$14(a0)
	bra.s loc_2047e2
loc_2047d6:
	add.w d5,d0
	bcc.s loc_2047de
	move.w #$0,d0
loc_2047de:
	move.w d0,$14(a0)
loc_2047e2:
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204800:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204870
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204870
	bmi.s loc_204818
	neg.w d1
loc_204818:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206812
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204870
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20486c
	cmpi.b #$40,d0
	beq.s loc_20485a
	cmpi.b #$80,d0
	beq.s loc_204854
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204854:
	sub.w d1,$12(a0)
	rts
loc_20485a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20486c:
	add.w d1,$12(a0)
loc_204870:
	rts

sub_204872:
	tst.b $2a(a0)
	bne.s loc_2048e6
	move.w $14(a0),d0
	beq.s loc_204880
	bpl.s loc_2048b0
loc_204880:
	bset.b #$0,$22(a0)
	bne.s loc_204894
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204894:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_2048a4
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_2048a4
	move.w d1,d0
loc_2048a4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048b0:
	sub.w d4,d0
	bcc.s loc_2048b8
	move.w #$ff80,d0
loc_2048b8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048e6
	cmpi.w #$400,d0
	blt.s loc_2048e6
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202540).l
loc_2048e6:
	rts

sub_2048e8:
	tst.b $2a(a0)
	bne.s loc_204956
	move.w $14(a0),d0
	bmi.s loc_204920
	bclr.b #$0,$22(a0)
	beq.s loc_204908
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204908:
	cmp.w d6,d0
	bge.s loc_204914
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204914
	move.w d6,d0
loc_204914:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204920:
	add.w d4,d0
	bcc.s loc_204928
	move.w #$80,d0
loc_204928:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204956
	cmpi.w #$fc00,d0
	bgt.s loc_204956
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202540).l
loc_204956:
	rts

sub_204958:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204aa2
	tst.w $3e(a0)
	bne.s loc_204990
	btst.b #$2,($f602).w
	beq.s loc_204984
	bsr.w sub_204ad8
loc_204984:
	btst.b #$3,($f602).w
	beq.s loc_204990
	bsr.w sub_204afc
loc_204990:
	tst.b $2a(a0)
	beq.w loc_204a3a
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2049b0
	asr.w #$1,d2
	sub.w d2,d1
loc_2049b0:
	btst.b #$0,$22(a0)
	beq.s loc_2049bc
	neg.w d0
	neg.w d1
loc_2049bc:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2049d2
	cmp.w d0,d1
	ble.s loc_2049d8
	bra.s loc_2049d6
loc_2049d2:
	cmp.w d1,d0
	ble.s loc_2049d8
loc_2049d6:
	move.w d1,d0
loc_2049d8:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a0c
	rts
loc_2049e6:
	move.w #$ab,d0
	jsr (sub_202540).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a6c
loc_204a0c:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_2049e6
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202540).l
	btst.b #$0,$22(a0)
	bne.s loc_204a32
	bsr.w sub_204afc
	bra.s loc_204a3a
loc_204a32:
	bsr.w sub_204ad8
	bra.s loc_204a3a
	dc.b $4e,$75
loc_204a3a:
	move.w $14(a0),d0
	beq.s loc_204a5c
	bmi.s loc_204a50
	sub.w d5,d0
	bcc.s loc_204a4a
	move.w #$0,d0
loc_204a4a:
	move.w d0,$14(a0)
	bra.s loc_204a5c
loc_204a50:
	add.w d5,d0
	bcc.s loc_204a58
	move.w #$0,d0
loc_204a58:
	move.w d0,$14(a0)
loc_204a5c:
	tst.w $14(a0)
	bne.s loc_204aa2
	move.w #$ab,d0
	jsr (sub_202540).l
loc_204a6c:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a8c
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a9c
loc_204a8c:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a9c:
	move.b #$5,$1c(a0)
loc_204aa2:
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204ac6
	move.w #$1000,d1
loc_204ac6:
	cmpi.w #$f000,d1
	bge.s loc_204ad0
	move.w #$f000,d1
loc_204ad0:
	move.w d1,$10(a0)
	bra.w loc_204800

sub_204ad8:
	move.w $14(a0),d0
	beq.s loc_204ae0
	bpl.s loc_204aee
loc_204ae0:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204aee:
	sub.w d4,d0
	bcc.s loc_204af6
	move.w #$ff80,d0
loc_204af6:
	move.w d0,$14(a0)
	rts

sub_204afc:
	move.w $14(a0),d0
	bmi.s loc_204b10
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b10:
	add.w d4,d0
	bcc.s loc_204b18
	move.w #$80,d0
loc_204b18:
	move.w d0,$14(a0)
	rts

sub_204b1e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b58
	tst.w ($ff1506).l
	bne.s loc_204b58
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b50
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b50
	rts
loc_204b50:
	btst.b #$1,$2c(a0)
	bne.s loc_204b88
loc_204b58:
	btst.b #$2,($f602).w
	beq.s loc_204b72
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b72
	move.w d1,d0
loc_204b72:
	btst.b #$3,($f602).w
	beq.s loc_204b88
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b88
	move.w d6,d0
loc_204b88:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b9e
	bcc.s loc_204b9a
	addq.w #$4,($f73e).w
loc_204b9a:
	subq.w #$2,($f73e).w
loc_204b9e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204bcc
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204bcc
	bmi.s loc_204bc0
	sub.w d1,d0
	bcc.s loc_204bba
	move.w #$0,d0
loc_204bba:
	move.w d0,$10(a0)
	rts
loc_204bc0:
	sub.w d1,d0
	bcs.s loc_204bc8
	move.w #$0,d0
loc_204bc8:
	move.w d0,$10(a0)
loc_204bcc:
	rts
	.incbin 19406, 48

sub_204bfe:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c52
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c2c
	addi.w #$38,d0
loc_204c2c:
	cmp.w d1,d0
	bls.s loc_204c52
loc_204c30:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c40
	rts
loc_204c40:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206ec6
	move.b #$6,$24(a0)
	rts
loc_204c52:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c30

sub_204c6a:
	tst.b ($f7ca).w
	bne.s loc_204c90
	move.w $14(a0),d0
	bpl.s loc_204c78
	neg.w d0
loc_204c78:
	cmpi.w #$80,d0
	bcs.s loc_204c90
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c90
	btst.b #$1,($f602).w
	bne.s sub_204c92
loc_204c90:
	rts

sub_204c92:
	btst.b #$2,$22(a0)
	beq.s loc_204c9c
	bra.s loc_204ccc
loc_204c9c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cbc
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ccc
loc_204cbc:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ccc:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204ce6
	cmpi.w #$200,$14(a0)
	bcc.s loc_204ce6
	move.w #$200,$14(a0)
loc_204ce6:
	rts

sub_204ce8:
	tst.b $2a(a0)
	beq.s loc_204cf0
	rts
loc_204cf0:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d02
	tst.w $14(a0)
	beq.w loc_204dc8
loc_204d02:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204dc8
	btst.b #$3,$22(a0)
	beq.s loc_204d1e
	jsr (sub_2059f4).l
	beq.s loc_204d4e
loc_204d1e:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20687c
	cmpi.w #$6,d1
	blt.w loc_204dc8
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d44
	move.w #$380,d2
loc_204d44:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d4e:
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
	bne.s loc_204dca
	tst.b ($ff195b).l
	beq.s loc_204dac
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204dbc
loc_204dac:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204dbc:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204dc8:
	rts
loc_204dca:
	bset.b #$4,$22(a0)
	rts

sub_204dd2:
	tst.b $3c(a0)
	beq.s loc_204e04
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204de8
	move.w #$fe00,d1
loc_204de8:
	cmp.w $12(a0),d1
	ble.s loc_204e02
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204e02
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204e02:
	rts
loc_204e04:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e12
	move.w #$f040,$12(a0)
loc_204e12:
	rts

sub_204e14:
	tst.b $2a(a0)
	bne.s loc_204e4e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e4e
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e4e
	bmi.s loc_204e4a
	tst.w d0
	beq.s loc_204e48
	add.w d0,$14(a0)
loc_204e48:
	rts
loc_204e4a:
	add.w d0,$14(a0)
loc_204e4e:
	rts

sub_204e50:
	tst.b $2a(a0)
	bne.s loc_204e90
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e90
	move.b $26(a0),d0
	jsr (sub_200a44).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e86
	tst.w d0
	bpl.s loc_204e80
	asr.l #$2,d0
loc_204e80:
	add.w d0,$14(a0)
	rts
loc_204e86:
	tst.w d0
	bmi.s loc_204e8c
	asr.l #$2,d0
loc_204e8c:
	add.w d0,$14(a0)
loc_204e90:
	rts

sub_204e92:
	nop
	tst.b $38(a0)
	bne.s loc_204ed4
	tst.w $3e(a0)
	bne.s loc_204ed6
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ed4
	move.w $14(a0),d0
	bpl.s loc_204eb6
	neg.w d0
loc_204eb6:
	cmpi.w #$280,d0
	bcc.s loc_204ed4
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204ed4:
	rts
loc_204ed6:
	subq.w #$1,$3e(a0)
	rts

sub_204edc:
	btst.b #$1,$2c(a0)
	bne.s loc_204efe
	move.b $26(a0),d0
	beq.s loc_204efe
	bpl.s loc_204ef4
	addq.b #$2,d0
	bcc.s loc_204ef2
	moveq #$0,d0
loc_204ef2:
	bra.s loc_204efa
loc_204ef4:
	subq.b #$2,d0
	bcc.s loc_204efa
	moveq #$0,d0
loc_204efa:
	move.b d0,$26(a0)
loc_204efe:
	rts

sub_204f00:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200cdc).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204fe4
	cmpi.b #$80,d0
	beq.w loc_205046
	cmpi.b #$c0,d0
	beq.w loc_2050a2
	bsr.w sub_206b92
	tst.w d1
	bpl.s loc_204f52
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f52:
	bsr.w sub_2069f4
	tst.w d1
	bpl.s loc_204f64
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f64:
	bsr.w sub_2068a4
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204fe2
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f82
	cmp.b d2,d0
	blt.s loc_204fe2
loc_204f82:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205104
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204fc0
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204fb2
	asr.w $12(a0)
	bra.s loc_204fd4
loc_204fb2:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204fc0:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204fd4
	move.w #$fc0,$12(a0)
loc_204fd4:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204fe2
	neg.w $14(a0)
loc_204fe2:
	rts
loc_204fe4:
	bsr.w sub_206b92
	tst.w d1
	bpl.s loc_204ffe
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204ffe:
	bsr.w sub_206a4c
	tst.w d1
	bpl.s loc_205018
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205016
	move.w #$0,$12(a0)
loc_205016:
	rts
loc_205018:
	tst.w $12(a0)
	bmi.s loc_205044
	bsr.w sub_2068a4
	tst.w d1
	bpl.s loc_205044
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205104
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205044:
	rts
loc_205046:
	bsr.w sub_206b92
	tst.w d1
	bpl.s loc_205058
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205058:
	bsr.w sub_2069f4
	tst.w d1
	bpl.s loc_20506a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20506a:
	bsr.w sub_206a4c
	tst.w d1
	bpl.s loc_2050a0
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20508a
	move.w #$0,$12(a0)
	rts
loc_20508a:
	move.b d3,$26(a0)
	bsr.w sub_205176
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2050a0
	neg.w $14(a0)
loc_2050a0:
	rts
loc_2050a2:
	bsr.w sub_2069f4
	tst.w d1
	bpl.s loc_2050bc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050bc:
	bsr.w sub_206a4c
	tst.w d1
	bpl.s loc_2050d6
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050d4
	move.w #$0,$12(a0)
loc_2050d4:
	rts
loc_2050d6:
	tst.w $12(a0)
	bmi.s loc_205102
	bsr.w sub_2068a4
	tst.w d1
	bpl.s loc_205102
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205104
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205102:
	rts

sub_205104:
	btst.b #$4,$22(a0)
	beq.s loc_20510e
	nop
loc_20510e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205168
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205148
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205158
loc_205148:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205158:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202540).l
loc_205168:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205176:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20886, 114
	bsr.w sub_205220
	jsr (sub_2037d0).l
	bsr.w sub_2040a0
	bsr.w sub_20545e
	jmp (sub_203888).l

sub_205220:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_20528e
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_205254
	clr.b ($ff1508).l
loc_205254:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20526e
	tst.b ($ff0f01).l
	beq.s loc_20526e
	move.b #$0,($ff1508).l
	bra.s loc_205288
loc_20526e:
	jsr (sub_207520).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_20528e
loc_205288:
	move.w #$3c,$3a(a0)
loc_20528e:
	rts
	tst.w $3a(a0)
	beq.w loc_205312
	subq.w #$1,$3a(a0)
	bne.w loc_205312
	move.w #$1,($ff1502).l
	jsr (sub_2024d8).l
	move.b #$1,($a01c3e).l
	jsr (sub_2024f4).l
	bsr.w sub_20730e
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2052e0
	cmpi.b #$1,($ff152e).l
	bne.s loc_2052e0
	bclr.b #$1,($ff151c).l
loc_2052e0:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20530e
	cmpi.b #$1,($ff152e).l
	bne.s loc_205308
	tst.b ($ff158e).l
	beq.s loc_20530e
	move.b #$1,($ff1522).l
	bra.s loc_20530e
loc_205308:
	clr.b ($ff1522).l
loc_20530e:
	bra.w sub_205a6e
loc_205312:
	rts

sub_205314:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20533c
	cmpi.b #$5,($ff1506).l
	beq.s loc_20533c
	cmpi.b #$2,($ff1506).l
	beq.s loc_20533c
	tst.b ($ff1506).l
	bne.w loc_2053fe
loc_20533c:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20537a
	tst.b ($ff1506).l
	bne.w loc_205400
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205400
	bra.s loc_205382
loc_20537a:
	cmp.b ($f7af).w,d1
	beq.w loc_205400
loc_205382:
	cmp.b ($f7ac).w,d1
	beq.s loc_2053b2
	cmp.b ($f7ad).w,d1
	beq.s loc_205396
	bclr.b #$6,$1(a0)
	rts
loc_205396:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205418
	btst.b #$1,$22(a0)
	beq.s loc_2053b2
	bclr.b #$6,$1(a0)
	rts
loc_2053b2:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2053c4
	bclr.b #$6,$1(a0)
	rts
loc_2053c4:
	cmpi.b #$e0,d2
	bcs.s loc_2053d2
	bset.b #$6,$1(a0)
	rts
loc_2053d2:
	btst.b #$6,$1(a0)
	bne.s loc_2053ee
	move.b $26(a0),d1
	beq.s loc_2053fe
	cmpi.b #$80,d1
	bhi.s loc_2053fe
	bset.b #$6,$1(a0)
	rts
loc_2053ee:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053fe
	bclr.b #$6,$1(a0)
loc_2053fe:
	rts
loc_205400:
	btst.b #$2,$22(a0)
	bne.s loc_205412
	move.w #$9c,d0
	jsr (sub_202540).l
loc_205412:
	jmp (sub_204c92).l
loc_205418:
	tst.w $12(a0)
	bmi.s loc_20545c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205450
	cmpi.w #$38,d1
	bcs.s loc_205448
	cmpi.w #$80,d1
	bcs.s loc_20545c
loc_205440:
	bclr.b #$6,$1(a0)
	rts
loc_205448:
	bset.b #$6,$1(a0)
	rts
loc_205450:
	cmpi.w #$38,d1
	bcs.s loc_205440
	cmpi.w #$80,d1
	bcc.s loc_205448
loc_20545c:
	rts

sub_20545e:
	lea (dat_20574e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205480
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205480:
	bsr.w sub_2056f0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054f8
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2054c6
	move.b d0,$1e(a0)

sub_2054aa:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2054be
	bpl.s loc_2054be
	cmpi.b #$fd,d0
	bge.s loc_2054c8
loc_2054be:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2054c6:
	rts
loc_2054c8:
	addq.b #$1,d0
	bne.s loc_2054d8
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2054be
loc_2054d8:
	addq.b #$1,d0
	bne.s loc_2054ec
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2054be
loc_2054ec:
	addq.b #$1,d0
	bne.s loc_2054f6
	move.b $2(a1,d1.w),$1c(a0)
loc_2054f6:
	rts
loc_2054f8:
	subq.b #$1,$1e(a0)
	bpl.s loc_2054c6
	addq.b #$1,d0
	bne.w loc_2055b2
	tst.b ($ff195b).l
	bne.w loc_20567a
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205520
	not.b d0
loc_205520:
	btst.b #$1,$2c(a0)
	bne.s loc_20552e
	addi.b #$10,d0
	bra.s loc_205530
loc_20552e:
	addq.b #$8,d0
loc_205530:
	bpl.s loc_205534
	moveq #$3,d1
loc_205534:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205626
	move.w $14(a0),d2
	bpl.s loc_205552
	neg.w d2
loc_205552:
	btst.b #$1,$2c(a0)
	beq.s loc_20556a
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205950).l,a1
	bra.s loc_205594
loc_20556a:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_20592a).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205594
	lea (dat_2057ce).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205594
	lea (dat_2057c6).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205594:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2055a2
	moveq #$0,d2
loc_2055a2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2054aa
	add.b d3,$1a(a0)
	rts
loc_2055b2:
	addq.b #$1,d0
	bne.s loc_205622
	move.w $14(a0),d2
	bpl.s loc_2055be
	neg.w d2
loc_2055be:
	lea (dat_2058ac).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055fc
	lea (dat_2057de).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055f0
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055fc
	lea (dat_205958).l,a1
	bra.s loc_2055fc
loc_2055f0:
	cmpi.w #$600,d2
	bcc.s loc_2055fc
	lea (dat_2057d6).l,a1
loc_2055fc:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205606
	moveq #$0,d2
loc_205606:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054aa
loc_205622:
	addq.b #$1,d0
	bne.s loc_205666
loc_205626:
	move.w $14(a0),d2
	bmi.s loc_20562e
	neg.w d2
loc_20562e:
	addi.w #$800,d2
	bpl.s loc_205636
	moveq #$0,d2
loc_205636:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2058be).l,a1
	tst.b ($ff195b).l
	bne.s loc_205650
	lea (dat_2057e6).l,a1
loc_205650:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054aa
loc_205666:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20567a:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20568c
	not.b d0
loc_20568c:
	addi.b #$10,d0
	bpl.s loc_205694
	moveq #$0,d1
loc_205694:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2056c2
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2055b2
loc_2056c2:
	move.w $14(a0),d2
	bpl.s loc_2056ca
	neg.w d2
loc_2056ca:
	lea (dat_2058a6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056dc
	lea (dat_2058a0).l,a1
loc_2056dc:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056e6
	moveq #$0,d2
loc_2056e6:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2054aa

sub_2056f0:
	tst.b ($ff195b).l
	beq.s loc_2056fc
	move.b dat_2056fe(pc,d0.w),d0
loc_2056fc:
	rts
dat_2056fe:
	.incbin 22270, 80
dat_20574e:
	.incbin 22350, 120
dat_2057c6:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2057ce:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2057d6:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2057de:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2057e6:
	.incbin 22502, 186
dat_2058a0:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_2058a6:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2058ac:
	.incbin 22700, 18
dat_2058be:
	.incbin 22718, 108
dat_20592a:
	.incbin 22826, 38
dat_205950:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205958:
	.incbin 22872, 56

sub_205990:
	tst.b (a0)
	beq.w loc_2059f2
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059f2
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059f2
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2059c4:
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
loc_2059de:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2059de
	dbf d1,loc_2059c4
loc_2059f2:
	rts

sub_2059f4:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a68
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
	bne.s loc_205a56
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a56:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a68:
	rts
loc_205a6a:
	move.w #$e,d0

sub_205a6e:
	cmpi.w #$67,d0
	bne.s loc_205a7c
	move.b #$1,($ff1958).l
loc_205a7c:
	move.w d0,($a12010).l
loc_205a82:
	move.w ($a12020).l,d0
	beq.s loc_205a82
	cmp.w ($a12020).l,d0
	bne.s loc_205a82
	move.w #$0,($a12010).l
loc_205a9a:
	move.w ($a12020).l,d0
	bne.s loc_205a9a
	move.w ($a12020).l,d0
	bne.s loc_205a9a
	rts
	dc.b $00,$00

sub_205aae:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205aca
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205aca:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b0a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b0c
loc_205ae6:
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
loc_205b0a:
	rts
loc_205b0c:
	addq.b #$1,d0
	bne.s loc_205b1c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205ae6
loc_205b1c:
	addq.b #$1,d0
	bne.s loc_205b30
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205ae6
loc_205b30:
	addq.b #$1,d0
	bne.s loc_205b3a
	move.b $2(a1,d1.w),$1c(a0)
loc_205b3a:
	addq.b #$1,d0
	bne.s loc_205b42
	addq.b #$2,$24(a0)
loc_205b42:
	addq.b #$1,d0
	bne.s loc_205b50
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b50:
	addq.b #$1,d0
	bne.s loc_205b58
	addq.b #$2,$25(a0)
loc_205b58:
	rts
	.incbin 23386, 536

sub_205d72:
	rts
	.incbin 23924, 618
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fec(pc,d0.w),d0
	jmp dat_205fec(pc,d0.w)
dat_205fec:
	dc.b $00,$06,$00,$32,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #dat_23ca3a,$4(a0)
	move.w #$3e4,$2(a0)
	tst.b ($ff152e).l
	bne.s loc_206018
	move.w #$39e,$2(a0)
loc_206018:
	move.b #$1,$18(a0)
	lea (dat_23ca3a).l,a1
	bsr.w sub_205aae
	jmp (sub_203888).l
	.incbin 24622, 756

sub_206322:
	bclr.b #$7,($ff156b).l
	beq.s loc_206370
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206372(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206346:
	move.l (a1)+,(a2)+
	dbf d0,loc_206346
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206370:
	rts
dat_206372:
	.incbin 25458, 516

sub_206576:
	cmpi.b #$2,($ff1507).l
	bne.s loc_206582
	rts
loc_206582:
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
	bsr.s sub_2065f8
	bne.s loc_2065da
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
	bsr.s sub_2065f8
	beq.s loc_2065f6
loc_2065da:
	move.w #$1,d0
	btst.l #$b,d4
	beq.s loc_2065e6
	neg.w d0
loc_2065e6:
	andi.w #$7ff,d4
	cmpi.w #$114,d4
	bne.s loc_2065f2
	neg.w d0
loc_2065f2:
	add.w d0,$8(a0)
loc_2065f6:
	rts

sub_2065f8:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_206610
	add.b ($ff156a).l,d1
loc_206610:
	add.w d1,d1
	move.w dat_206634(pc,d1.w),d1
	lea dat_206634(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206620:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206630
	addq.w #$2,d1
	dbf d6,loc_206620
	moveq #$0,d0
	rts
loc_206630:
	moveq #$1,d0
	rts
dat_206634:
	.incbin 26164, 24
loc_20664c:
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
	bne.s loc_206706
	move.b ($ff1593).l,($ff195b).l
loc_206706:
	tst.b ($ff1522).l
	bpl.s loc_20671c
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20671c:
	rts

sub_20671e:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20664c
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
	bne.s loc_2067d8
	move.b ($ff1591).l,($ff195b).l
loc_2067d8:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2067fa
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2067fa:
	tst.b ($ff1522).l
	bpl.s loc_206810
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206810:
	rts

sub_206812:
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
	bpl.s loc_20684e
	move.b d1,d0
	bpl.s loc_206848
	subq.b #$1,d0
loc_206848:
	addi.b #$20,d0
	bra.s loc_206858
loc_20684e:
	move.b d1,d0
	bpl.s loc_206854
	addq.b #$1,d0
loc_206854:
	addi.b #$1f,d0
loc_206858:
	andi.b #$c0,d0
	beq.w loc_206928
	cmpi.b #$80,d0
	beq.w loc_206ac4
	andi.b #$38,d1
	bne.s loc_206870
	addq.w #$8,d2
loc_206870:
	cmpi.b #$40,d0
	beq.w loc_206b9a
	bra.w loc_2069fc

sub_20687c:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206b22
	cmpi.b #$80,d0
	beq.w sub_206a4c
	cmpi.b #$c0,d0
	beq.w loc_20698c

sub_2068a4:
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
loc_206908:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206916
	move.b ($f768).w,d3
	exg d0,d1
loc_206916:
	btst.l #$0,d3
	beq.s loc_20691e
	move.b d2,d3
loc_20691e:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206928:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20139a).l
	move.b #$0,d2
loc_206944:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206950
	move.b d2,d3
loc_206950:
	rts

sub_206952:
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
	beq.s loc_20698a
	move.b #$0,d3
loc_20698a:
	rts
loc_20698c:
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
	bra.w loc_206908

sub_2069f4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069fc:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b #$c0,d2
	bra.w loc_206944
	.incbin 27164, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a4a
	move.b #$c0,d3
loc_206a4a:
	rts

sub_206a4c:
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
	bra.w loc_206908

sub_206abc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ac4:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20139a).l
	move.b #$80,d2
	bra.w loc_206944
	.incbin 27368, 58
loc_206b22:
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
	bra.w loc_206908

sub_206b92:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b9a:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20150a).l
	move.b #$40,d2
	bra.w loc_206944
	.incbin 27582, 32
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bec
	move.b #$40,d3
loc_206bec:
	rts

sub_206bee:
	btst.b #$0,$2c(a0)
	beq.s loc_206bfa
	moveq #$0,d0
	rts
loc_206bfa:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206c1e
	addi.w #$c,d3
	moveq #$a,d5
loc_206c1e:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206c2c:
	tst.b $1(a1)
	bpl.s loc_206c38
	move.b $20(a1),d0
	bne.s loc_206c44
loc_206c38:
	lea $40(a1),a1
	dbf d6,loc_206c2c
	moveq #$0,d0
	rts
loc_206c44:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20706a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206c6c
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206c72
	bra.w loc_206c38
loc_206c6c:
	cmp.w d4,d0
	bhi.w loc_206c38
loc_206c72:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206c8a
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206c90
	bra.w loc_206c38
loc_206c8a:
	cmp.w d5,d0
	bhi.w loc_206c38
loc_206c90:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206d28
	cmpi.b #$c0,d1
	beq.w loc_206f1e
	tst.b d1
	bmi.w loc_206cac
	bra.s loc_206cb8
loc_206cac:
	tst.b ($ff151f).l
	bne.s loc_206c38
	bra.w sub_206df2
loc_206cb8:
	tst.b ($ff1956).l
	beq.s loc_206cc8
	tst.b $29(a1)
	bne.s loc_206cd0
	rts
loc_206cc8:
	tst.b $29(a1)
	beq.s loc_206cd0
	rts
loc_206cd0:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206cec
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206cea
	addq.b #$2,$24(a1)
loc_206cea:
	rts
loc_206cec:
	tst.w $12(a0)
	bpl.s loc_206d16
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206d26
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206d26
	addq.b #$4,$25(a1)
	rts
loc_206d16:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206d26
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206d26:
	rts

sub_206d28:
	tst.b ($ff1521).l
	bne.s loc_206d42
	tst.b ($ff151f).l
	bne.s loc_206d42
	cmpi.b #$2,$1c(a0)
	bne.w sub_206df2
loc_206d42:
	tst.b $21(a1)
	beq.s loc_206d6c
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206d6a
	bset.b #$7,$22(a1)
loc_206d6a:
	rts
loc_206d6c:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206d84
	moveq #$6,d0
loc_206d84:
	move.w d0,$3e(a1)
	move.w dat_206de4(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206d9e
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206d9e:
	bsr.w sub_20a660
	move.w #$96,d0
	jsr (sub_202540).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206dd4
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206ddc
	neg.w $12(a0)
	rts
loc_206dd4:
	addi.w #$100,$12(a0)
	rts
loc_206ddc:
	subi.w #$100,$12(a0)
	rts
dat_206de4:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206df2:
	btst.b #$0,$2c(a0)
	bne.s loc_206e0a
	tst.b ($ff1521).l
	bne.s loc_206e0a
	tst.b ($ff151f).l
	beq.s loc_206e0e
loc_206e0a:
	moveq #$ffffffff,d0
	rts
loc_206e0e:
	nop
	tst.w $30(a0)
	bne.s loc_206e0a
	movea.l a1,a2

sub_206e18:
	tst.b ($ff151e).l
	bne.s loc_206e52
	tst.w ($ff1512).l
	beq.w loc_206ebc
	jsr (sub_207520).l
	bne.s loc_206e52
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206e52
	move.b #$1,$29(a1)
loc_206e52:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206e68
	move.b #$0,($ff156f).l
loc_206e68:
	move.b #$4,$24(a0)
	bsr.w sub_205104
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206e98
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206e98:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206ea6
	neg.w $10(a0)
loc_206ea6:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206ebc:
	tst.w ($ff1588).l
	bne.w loc_206e52

sub_206ec6:
	tst.w ($ff1906).l
	bne.s loc_206f1a
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205104
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
loc_206f1a:
	moveq #$ffffffff,d0
	rts
loc_206f1e:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_20702e
	cmpi.b #$17,d1
	beq.w loc_206fb6
	cmpi.b #$1f,d1
	beq.w loc_206fb6
	cmpi.b #$22,d1
	beq.w loc_206ffe
	cmpi.b #$23,d1
	beq.w loc_206fb6
	cmpi.b #$2d,d1
	beq.w loc_20700c
	cmpi.b #$30,d1
	beq.w loc_207018
	tst.b ($f7aa).w
	beq.w loc_206fb4
	cmpi.b #$1,($f7aa).w
	beq.s loc_206f7e
	cmpi.b #$4,($f7aa).w
	beq.s loc_206fa0
	cmpi.b #$5,($f7aa).w
	beq.s loc_206fae
loc_206f7e:
	cmpi.b #$3c,d1
	blt.s loc_206fb4
	cmpi.b #$3f,d1
	bgt.s loc_206fb4
	bsr.w sub_206d28
	tst.b $20(a1)
	bne.s loc_206f98
	addq.b #$3,$21(a1)
loc_206f98:
	clr.b $20(a1)
	bra.w loc_206fb6
loc_206fa0:
	cmpi.b #$3f,d1
	beq.s loc_206fc2
	cmpi.b #$3e,d1
	beq.s loc_206fbc
	bra.s loc_206fb4
loc_206fae:
	cmpi.b #$3d,d1
	beq.s loc_206fbc
loc_206fb4:
	rts
loc_206fb6:
	addq.b #$1,$21(a1)
	rts
loc_206fbc:
	bsr.w sub_206df2
	bra.s loc_206fb6
loc_206fc2:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206ffc
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206ffc
	neg.w $10(a0)
loc_206ffc:
	rts
loc_206ffe:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20700a
	addq.b #$1,$21(a1)
loc_20700a:
	rts
loc_20700c:
	btst.b #$2,$22(a0)
	beq.w sub_206d28
	bra.s loc_206fb6
loc_207018:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206d28
	bra.s loc_206fb6
loc_20702e:
	tst.w $12(a0)
	bpl.s loc_207058
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207068
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207068
	addq.b #$4,$25(a1)
	rts
loc_207058:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207068
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207068:
	rts
dat_20706a:
	.incbin 28778, 126
loc_2070e8:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2070fe
	move.l #$4000,(dat_207278).l
	bra.s loc_20711e
loc_2070fe:
	addi.l #$2000,(dat_207278).l
	cmpi.l #$80000,(dat_207278).l
	bls.s loc_20711e
	move.l #$80000,(dat_207278).l
loc_20711e:
	move.l (dat_207278).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207130
	sub.l d0,$c(a0)
loc_207130:
	btst.b #$1,($f604).w
	beq.s loc_20713c
	add.l d0,$c(a0)
loc_20713c:
	btst.b #$2,($f604).w
	beq.s loc_207148
	sub.l d0,$8(a0)
loc_207148:
	btst.b #$3,($f604).w
	beq.s loc_207154
	add.l d0,$8(a0)
loc_207154:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_2011b2).l
	move.w (a1),($ff194e).l
	lea (dat_20727c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207196
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207190
	move.b #$0,d1
loc_207190:
	move.b d1,($ff1904).l
loc_207196:
	btst.b #$7,($f605).w
	beq.s loc_2071b6
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_2071b0
	add.b (a2),d1
loc_2071b0:
	move.b d1,($ff1904).l
loc_2071b6:
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
	beq.s loc_207242
	bsr.w sub_207520
	bne.s loc_207242
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
loc_207242:
	btst.b #$4,($f605).w
	beq.s loc_207272
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207272:
	jmp (sub_203888).l
dat_207278:
	dc.b $00,$00,$40,$00
dat_20727c:
	.incbin 29308, 146

sub_20730e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20731c:
	clr.l (a2)+
	dbf d0,loc_20731c
	rts

sub_207324:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207332(pc,d0.w),d0
	jmp dat_207332(pc,d0.w)
dat_207332:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2075d2).l,a0
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
	bcc.s loc_207370
	moveq #$0,d6
loc_207370:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207378:
	cmp.w (a0),d6
	bls.s loc_20738a
	tst.b $4(a0)
	bpl.s loc_207386
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207386:
	addq.w #$8,a0
	bra.s loc_207378
loc_20738a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2073aa
loc_207398:
	cmp.w (a0),d6
	bls.s loc_2073aa
	tst.b $4(a0)
	bpl.s loc_2073a6
	addq.b #$1,$1(a2)
loc_2073a6:
	addq.w #$8,a0
	bra.s loc_207398
loc_2073aa:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207494
	bge.s loc_20743a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207416
loc_2073e4:
	cmp.w -$8(a0),d6
	bge.s loc_207416
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2073fa
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2073fa:
	bsr.w sub_2074b8
	bne.s loc_207404
	subq.w #$8,a0
	bra.s loc_2073e4
loc_207404:
	tst.b $4(a0)
	bpl.s loc_207414
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207414:
	addq.w #$8,a0
loc_207416:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207422:
	cmp.w -$8(a0),d6
	bgt.s loc_207434
	tst.b -$4(a0)
	bpl.s loc_207430
	subq.b #$1,(a2)
loc_207430:
	subq.w #$8,a0
	bra.s loc_207422
loc_207434:
	move.l a0,($f770).w
	rts
loc_20743a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20744e:
	cmp.w (a0),d6
	bls.s loc_207470
	tst.b $4(a0)
	bpl.s loc_20745c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20745c:
	bsr.w sub_2074b8
	beq.s loc_20744e
	tst.b $4(a0)
	bpl.s loc_207470
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207470:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207490
loc_20747e:
	cmp.w (a0),d6
	bls.s loc_207490
	tst.b $4(a0)
	bpl.s loc_20748c
	addq.b #$1,$1(a2)
loc_20748c:
	addq.w #$8,a0
	bra.s loc_20747e
loc_207490:
	move.l a0,($f774).w
loc_207494:
	rts

sub_207496:
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

sub_2074b8:
	bsr.s sub_207496
	beq.s loc_2074ca
	tst.b $4(a0)
	bpl.s loc_2074d0
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2074d0
loc_2074ca:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2074d0:
	bsr.w sub_207520
	bne.s loc_20751e
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
	bpl.s loc_207500
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207500:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207512
	nop
	nop
	nop
	nop
loc_207512:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20751e:
	rts

sub_207520:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207528:
	tst.b (a1)
	beq.s loc_207534
	lea $40(a1),a1
	dbf d0,loc_207528
loc_207534:
	rts

sub_207536:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207554
loc_207548:
	tst.b (a1)
	beq.s loc_207554
	lea $40(a1),a1
	dbf d0,loc_207548
loc_207554:
	rts
loc_207556:
	move.w $8(a0),d0
loc_20755a:
	tst.b $1(a0)
	bmi.s loc_2075c4
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2075c4
loc_207578:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2075ba
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2075b2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2075aa
	moveq #$0,d1
	bra.s loc_2075b2
loc_2075aa:
	cmpi.w #$3,d1
	bcs.s loc_2075b2
	moveq #$2,d1
loc_2075b2:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2075ba:
	jsr (sub_203934).l
	moveq #$1,d0
	rts
loc_2075c4:
	btst.b #$7,($ff152e).l
	bne.s loc_207578
	moveq #$0,d0
	rts
dat_2075d2:
	.incbin 30162, 5448

sub_208b1a:
	btst.b #$3,$22(a0)
	beq.s loc_208b8a
	btst.b #$3,$22(a1)
	beq.s loc_208b8a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208b8a
	tst.b $2a(a1)
	beq.s loc_208b4c
	move.w #$ab,d0
	jsr (sub_202540).l
loc_208b4c:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208b78
	cmpi.b #$17,$1c(a1)
	beq.s loc_208b78
	bclr.b #$0,$2c(a1)
loc_208b78:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208b8a
	bclr.b #$1,$22(a1)
loc_208b8a:
	rts

sub_208b8c:
	cmpi.b #$4,$24(a1)
	bne.s loc_208b9e
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208b9e:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208bfe
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208bc0
	bclr.b #$3,$22(a0)
	bra.w sub_208b1a
loc_208bc0:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208bfe
	tst.b ($ff195b).l
	beq.s loc_208be8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208bf8
loc_208be8:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208bf8:
	move.b #$0,$1c(a1)
loc_208bfe:
	bset.b #$3,$22(a1)
	beq.s loc_208c20
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208c58
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208c20:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208c4c
	cmpi.b #$2,$24(a0)
	beq.s loc_208c52
loc_208c4c:
	move.w $10(a1),$14(a1)
loc_208c52:
	bclr.b #$1,$22(a1)
loc_208c58:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_208c68:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208f1c
	btst.b #$6,$2c(a1)
	bne.w loc_208f1c
	cmpi.b #$6,$24(a1)
	bcc.w loc_208f1c
	tst.b $0(a1)
	beq.w loc_208f1c
	tst.b $1(a0)
	bpl.w loc_208f1c
	tst.b ($ff1906).l
	bne.w loc_208f1c
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208f1c
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208f1c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208cd6
	btst.b #$3,$22(a0)
	bne.s loc_208ce8
	bra.w loc_208f1c
loc_208cd6:
	cmpi.b #$1,$25(a0)
	bne.s loc_208ce8
	tst.w $12(a1)
	beq.s loc_208ce8
	bmi.w loc_208f1c
loc_208ce8:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208f1c
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208f1c
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208d1e
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208d1e:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208d2c
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208d2c:
	cmp.w d4,d5
	bcs.w loc_208dc0
	cmpi.b #$1,$25(a0)
	beq.w loc_208f1c
	cmpi.b #$a,$0(a0)
	bne.s loc_208d4e
	btst.b #$1,$22(a1)
	bne.w loc_208f1c
loc_208d4e:
	cmpi.b #$4,d5
	bls.w loc_208f1c
	bsr.w sub_208f6c
	move.l d0,-(a7)
	bsr.w sub_208b1a
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208d78
	tst.w $10(a1)
	beq.s loc_208da8
	bpl.s loc_208d80
	bra.s loc_208da8
loc_208d78:
	tst.w $10(a1)
	beq.s loc_208da8
	bpl.s loc_208da8
loc_208d80:
	bsr.w sub_208f2c
	btst.b #$1,$22(a1)
	bne.s loc_208d9e
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208d9e:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208da8:
	bsr.w sub_208fe2
	bsr.w sub_208f2c
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208dc0:
	cmpi.b #$19,$0(a0)
	bne.s loc_208dd2
	btst.b #$2,$22(a1)
	bne.w loc_208f1c
loc_208dd2:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208de8
	bmi.w loc_208eb8
loc_208de8:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208dfa
	tst.w $12(a1)
	beq.s loc_208dfa
	bmi.w loc_208f1c
loc_208dfa:
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
	beq.s loc_208e46
	bpl.s loc_208e26
	neg.b d0
loc_208e26:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206812).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208e46
	tst.w $10(a0)
	bpl.s loc_208e42
	neg.w d1
loc_208e42:
	add.w d1,$8(a1)
loc_208e46:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208eb0
	tst.w $12(a0)
	bmi.s loc_208e84
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2068a4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208e84
	add.w d1,$c(a1)
	bra.w loc_208f1c
loc_208e84:
	tst.w $12(a0)
	bpl.s loc_208eb0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206abc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208eb0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ec6).l
	movem.l (a7)+,a0-a1
	bra.s loc_208f1c
loc_208eb0:
	bsr.w sub_208b8c
	moveq #$1,d0
	rts
loc_208eb8:
	cmpi.b #$1,$25(a0)
	beq.s loc_208f1c
	cmpi.b #$9,$0(a0)
	beq.s loc_208f1c
	cmpi.b #$a,$0(a0)
	bne.s loc_208ee2
	cmpi.b #$2,$25(a0)
	beq.s loc_208f02
	btst.b #$1,$1(a0)
	bne.s loc_208f02
	bra.s loc_208f1c
loc_208ee2:
	btst.b #$1,$22(a1)
	bne.s loc_208f02
	tst.w $12(a0)
	beq.s loc_208f02
	bmi.s loc_208f02
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ec6).l
	movem.l (a7)+,a0-a1
loc_208f02:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208fe2
	bsr.w sub_208b1a
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208f1c:
	bsr.w sub_208fe2
	bsr.w sub_208b1a
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208f2c:
	tst.w $10(a0)
	beq.s loc_208f6a
	cmpi.b #$a,$0(a0)
	beq.s loc_208f6a
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208f46
	neg.b d0
loc_208f46:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206812).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f6a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ec6).l
	movem.l (a7)+,a0-a1
loc_208f6a:
	rts

sub_208f6c:
	cmpi.b #$a,$0(a0)
	bne.s loc_208f7c
	move.b #$0,$20(a1)
	rts
loc_208f7c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208fd0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208fe0
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208f9e
	tst.w $10(a2)
	beq.s loc_208fe0
loc_208f9e:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208fb0
	cmp.w $8(a2),d1
	bcs.s loc_208fe0
	bra.s loc_208fb6
loc_208fb0:
	cmp.w $8(a2),d1
	bcc.s loc_208fe0
loc_208fb6:
	cmpi.b #$15,$0(a0)
	beq.s loc_208fe0
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ec6).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208fd0:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208fe0:
	rts

sub_208fe2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208ffc
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208ffc
	move.b #$0,$20(a1)
loc_208ffc:
	rts
	.incbin 36862, 374
loc_209174:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209182(pc,d0.w),d0
	jmp dat_209182(pc,d0.w)
dat_209182:
	.incbin 37250, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209174
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2091d8
	tst.b $1(a0)
	bpl.s loc_2091e0
loc_2091d8:
	move.w dat_209232(pc,d0.w),d1
	jsr dat_209232(pc,d1.w)
loc_2091e0:
	bsr.w sub_203888
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209212
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209212:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203934
	rts
dat_209232:
	.incbin 37426, 26
	addq.b #$2,$24(a0)
	move.l #$2095b4,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2092a2
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2095ba,$4(a0)
	bra.s loc_2092e4
loc_2092a2:
	btst.l #$3,d0
	beq.s loc_2092d0
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209604,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cec0).l
	move.l (a7)+,d0
	bra.s loc_2092e4
loc_2092d0:
	btst.b #$1,$1(a0)
	beq.s loc_2092e4
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_2092e4:
	btst.l #$1,d0
	beq.s loc_2092f0
	bset.b #$5,$2(a0)
loc_2092f0:
	andi.w #$2,d0
	move.w dat_2092fc(pc,d0.w),$30(a0)
	rts
dat_2092fc:
	.incbin 37628, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2096a0(pc,d0.w),d1
	jmp dat_2096a0(pc,d1.w)
dat_2096a0:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2096aa:
	.incbin 38570, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209702
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2096fa
	moveq #$0,d1
	bra.s loc_209702
loc_2096fa:
	cmpi.w #$3,d1
	bcs.s loc_209702
	moveq #$2,d1
loc_209702:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20971e
	moveq #$6,d1
loc_20971e:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2096aa).l,a1
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
	beq.s loc_20976e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209766
	moveq #$0,d0
	bra.s loc_20976e
loc_209766:
	cmpi.w #$3,d0
	bcs.s loc_20976e
	moveq #$2,d0
loc_20976e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20983c
	dbf d0,loc_20976e
	bclr.b #$7,(a2)
	bra.s loc_2097c4
loc_209780:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2097ac
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2097a4
	moveq #$0,d0
	bra.s loc_2097ac
loc_2097a4:
	cmpi.w #$3,d0
	bcs.s loc_2097ac
	moveq #$2,d0
loc_2097ac:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20983c
	dbf d0,loc_2097ac
	bclr.b #$7,(a2)
	bsr.w sub_207536
	bne.w loc_209848
loc_2097c4:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209b0e,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20981a
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20981a
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20981a:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20983c:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209780
loc_209848:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20986e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209866
	moveq #$0,d0
	bra.s loc_20986e
loc_209866:
	cmpi.w #$3,d0
	bcs.s loc_20986e
	moveq #$2,d0
loc_20986e:
	lea $1(a2),a3
loc_209872:
	btst.b #$0,-(a3)
	bne.w sub_203934
	dbf d0,loc_209872
	tst.b $1(a0)
	bmi.s loc_2098a2
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20991c
loc_2098a2:
	tst.w ($ff190e).l
	bne.s loc_2098b2
	move.b ($ff1913).l,$1a(a0)
loc_2098b2:
	bra.w sub_203888
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209920
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209902
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2098fa
	moveq #$0,d1
	bra.s loc_209902
loc_2098fa:
	cmpi.w #$3,d1
	bcs.s loc_209902
	moveq #$2,d1
loc_209902:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209b06).l,a1
	bsr.w sub_205aae
	bra.w sub_203888
loc_20991c:
	bra.w sub_203934

sub_209920:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209970
	bset.b #$1,($ff150d).l
	beq.s loc_20995a
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209970
	bset.b #$2,($ff150d).l
	bne.s loc_209970
loc_20995a:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a6e).l
loc_209970:
	jmp (sub_202540).l
	.incbin 39286, 400
dat_209b06:
	.incbin 39686, 402
loc_209c98:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209cc6(pc,d0.w),d0
	jsr dat_209cc6(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209cc4
	cmpi.w #$5a,($f786).w
	bcs.s loc_209cbe
	btst.b #$0,($ff1505).l
	bne.s loc_209cc4
loc_209cbe:
	jmp (sub_203888).l
loc_209cc4:
	rts
dat_209cc6:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a2a0,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209cfa
	move.b #$13,$1a(a0)
loc_209cfa:
	rts
loc_209cfc:
	tst.b ($ff0f01).l
	beq.s loc_209d0a
	jmp (sub_203934).l
loc_209d0a:
	cmpi.b #$a,$28(a0)
	beq.w loc_209c98
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d2e(pc,d0.w),d0
	jsr dat_209d2e(pc,d0.w)
	jsr (sub_203888).l
	jmp (loc_207556).l
dat_209d2e:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a2a0,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d7c
	tst.b $29(a0)
	bne.s loc_209d7c
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209d7c:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209e48
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209da4
	addq.b #$2,$1a(a0)
loc_209da4:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209db8
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209db8:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209e1e
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209dea
	tst.b $29(a0)
	beq.s loc_209de2
	tst.b ($ff1956).l
	beq.s loc_209e1e
	bra.s loc_209dea
loc_209de2:
	tst.b ($ff1956).l
	bne.s loc_209e1e
loc_209dea:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209e48
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209e18
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209e18:
	jsr (sub_205a6e).l
loc_209e1e:
	rts
	.incbin 40480, 40

sub_209e48:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209e80
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209e78
	moveq #$0,d1
	bra.s loc_209e80
loc_209e78:
	cmpi.w #$3,d1
	bcs.s loc_209e80
	moveq #$2,d1
loc_209e80:
	add.w d1,d0
	rts

sub_209e84:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209ea6
	tst.b ($ff1956).l
	beq.s loc_209e9e
	tst.b $29(a0)
	bne.s loc_209ea6
	rts
loc_209e9e:
	tst.b $29(a0)
	beq.s loc_209ea6
	rts
loc_209ea6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208c68).l
	tst.b $28(a0)
	bne.s loc_209ec8
	tst.b ($ff0f01).l
	beq.s loc_209ec8
	jmp (loc_207556).l
loc_209ec8:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209cfc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ee0(pc,d0.w),d1
	jmp dat_209ee0(pc,d1.w)
dat_209ee0:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a2a0,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f2a
	tst.b $29(a0)
	bne.s loc_209f2a
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209f2a:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209e48
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209f56
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209f56:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209fb0
	move.b $25(a0),d0
	beq.s loc_209f90
	bsr.w sub_2037d0
	jsr (sub_206952).l
	tst.w d1
	bpl.w loc_209f9e
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209f9e
loc_209f90:
	tst.b $1(a0)
	bpl.s loc_209f9e
	lea ($d000).w,a1
	bsr.w sub_209e84
loc_209f9e:
	tst.w ($ff190e).l
	bne.s loc_209fb0
	lea (dat_20a218).l,a1
	bsr.w sub_205aae
loc_209fb0:
	bsr.w sub_203888
	jmp (loc_207556).l
	.incbin 40890, 606
dat_20a218:
	.incbin 41496, 586
loc_20a462:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a476(pc,d0.w),d0
	jsr dat_20a476(pc,d0.w)
	jmp (sub_203888).l
dat_20a476:
	.incbin 42102, 146
	tst.b $28(a0)
	bmi.w loc_20a462
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a51e(pc,d0.w),d0
	jmp dat_20a51e(pc,d0.w)
dat_20a51e:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a5b8,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a54e
	move.b #$3,$1a(a0)
	bra.s loc_20a56e
loc_20a54e:
	tst.w ($ff1588).l
	beq.s loc_20a55c
	move.b #$2,$1a(a0)
loc_20a55c:
	tst.b $28(a0)
	beq.s loc_20a56e
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a56e:
	tst.b $28(a0)
	bne.s loc_20a5b2
	tst.b $29(a0)
	beq.s loc_20a59e
	tst.w ($ff1512).l
	beq.s loc_20a58a
	bclr.b #$5,$2(a0)
	bra.s loc_20a5b2
loc_20a58a:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a5b2
	eori.b #$20,$2(a0)
	bra.s loc_20a5b2
loc_20a59e:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a5b2
	move.b #$2,$1a(a0)
loc_20a5b2:
	jmp (sub_203888).l
	.incbin 42424, 168

sub_20a660:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a67c
	move.l d1,(a3)
loc_20a67c:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a6a6
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a6e).l
loc_20a6a6:
	rts
loc_20a6a8:
	tst.w ($ff1588).l
	beq.s loc_20a6fe
	bsr.w sub_20a8fa
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
	lea (dat_20aa5a).l,a2
	moveq #$2,d6
	bsr.w sub_20aab2
	bra.w loc_20a758
loc_20a6fe:
	tst.b ($ff1511).l
	beq.s loc_20a722
	bpl.s loc_20a70c
	bsr.w sub_20a8a4
loc_20a70c:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a994
loc_20a722:
	tst.b ($ff150f).l
	beq.s loc_20a758
	bpl.s loc_20a730
	bsr.w sub_20a890
loc_20a730:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a754
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a754:
	bsr.w sub_20a98a
loc_20a758:
	tst.w ($ff1588).l
	bne.w loc_20a804
	tst.b ($ff1510).l
	beq.w loc_20a804
	tst.w ($f63a).w
	bne.w loc_20a804
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a862
	tst.b ($f7cc).w
	bne.s loc_20a7ae
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a7ae
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a7ae
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a7ae
	move.b #$9,(a1)
loc_20a7ae:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20aaa0
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20aaaa
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a800
	move.w #$63,d1
loc_20a800:
	bsr.w sub_20aaaa
loc_20a804:
	tst.b ($ff150e).l
	beq.s loc_20a816
	clr.b ($ff150e).l
	bsr.w sub_20aa80
loc_20a816:
	tst.b ($f7d6).w
	beq.s loc_20a860
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a836
	move.l #$6d400001,d0
loc_20a836:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a918
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a856
	move.l #$6e800001,d0
loc_20a856:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a918
loc_20a860:
	rts
loc_20a862:
	btst.b #$7,($ff152e).l
	bne.s loc_20a88e
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206ec6
	move.b #$1,($ff150c).l
loc_20a88e:
	rts

sub_20a890:
	move.l #$73600002,($c00004).l
	lea dat_20a8f6(pc),a2
	move.w #$2,d2
	bra.s loc_20a8c0

sub_20a8a4:
	lea ($c00000).l,a6
	bsr.w sub_20aa80
	move.l #$70600002,($c00004).l
	lea dat_20a8ee(pc),a2
	move.w #$6,d2
loc_20a8c0:
	lea (dat_23338c).l,a1
loc_20a8c6:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a8e2
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a8d6:
	move.l (a3)+,(a6)
	dbf d1,loc_20a8d6
loc_20a8dc:
	dbf d2,loc_20a8c6
	rts
loc_20a8e2:
	move.l #$0,(a6)
	dbf d1,loc_20a8e2
	bra.s loc_20a8dc
dat_20a8ee:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a8f6:
	dc.b $ff,$ff,$00,$00

sub_20a8fa:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20aa76
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20aa76

sub_20a918:
	lea (dat_20aa52).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a928:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a92c:
	sub.l d3,d1
	bcs.s loc_20a934
	addq.w #$1,d2
	bra.s loc_20a92c
loc_20a934:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a93e
	move.w #$1,d4
loc_20a93e:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a94a
	tst.w d6
	bne.s loc_20a97c
loc_20a94a:
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
loc_20a970:
	addi.l #$400000,d0
	dbf d6,loc_20a928
	rts
loc_20a97c:
	moveq #$f,d5
loc_20a97e:
	move.l #$0,(a6)
	dbf d5,loc_20a97e
	bra.s loc_20a970

sub_20a98a:
	lea (dat_20aa5a).l,a2
	moveq #$2,d6
	bra.s loc_20a99c

sub_20a994:
	lea (dat_20aa4e).l,a2
	moveq #$5,d6
loc_20a99c:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20a9a4:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a9a8:
	sub.l d3,d1
	bcs.s loc_20a9b0
	addq.w #$1,d2
	bra.s loc_20a9a8
loc_20a9b0:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a9ba
	move.w #$1,d4
loc_20a9ba:
	tst.w d4
	beq.s loc_20a9e8
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
loc_20a9e8:
	addi.l #$400000,d0
	dbf d6,loc_20a9a4
	rts
	.incbin 43508, 90
dat_20aa4e:
	dc.b $00,$01,$86,$a0
dat_20aa52:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20aa5a:
	dc.b $00,$00,$00,$64
dat_20aa5e:
	dc.b $00,$00,$00,$0a
dat_20aa62:
	dc.b $00,$00,$00,$01
dat_20aa66:
	.incbin 43622, 16

sub_20aa76:
	moveq #$3,d6
	lea (dat_20aa66).l,a2
	bra.s sub_20aab2

sub_20aa80:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20aa96
	moveq #$9,d1
loc_20aa96:
	lea (dat_20aa62).l,a2
	moveq #$0,d6
	bra.s sub_20aab2

sub_20aaa0:
	lea (dat_20aa62).l,a2
	moveq #$0,d6
	bra.s sub_20aab2

sub_20aaaa:
	lea (dat_20aa5e).l,a2
	moveq #$1,d6

sub_20aab2:
	moveq #$0,d4
	lea (dat_23338c).l,a1
loc_20aaba:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aabe:
	sub.l d3,d1
	bcs.s loc_20aac6
	addq.w #$1,d2
	bra.s loc_20aabe
loc_20aac6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aad0
	move.w #$1,d4
loc_20aad0:
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
	dbf d6,loc_20aaba
	rts
	.incbin 43782, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b556(pc,d0.w),d1
	jmp dat_20b556(pc,d1.w)
dat_20b556:
	dc.b $00,$04,$00,$66
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$8,$19(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	move.b #$18,$34(a0)
	move.b #$48,$38(a0)
	move.b $28(a0),d1
	andi.b #$f,d1
	beq.s loc_20b59e
	move.b #$10,$34(a0)
	move.b #$30,$38(a0)
loc_20b59e:
	move.b $28(a0),d1
	andi.b #$f0,d1
	ext.w d1
	asl.w #$3,d1
	move.w d1,$36(a0)
	move.b $22(a0),d0
	ror.b #$2,d0
	andi.b #$c0,d0
	move.b d0,$26(a0)
	bsr.w sub_20b5c6
	jmp (loc_207556).l

sub_20b5c6:
	moveq #$0,d2
	move.b $38(a0),d2
	move.w d2,d3
	add.w d3,d3
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $32(a0),d0
	add.w d2,d0
	cmp.w d3,d0
	bcc.s loc_20b5fe
	move.w $c(a1),d1
	sub.w $30(a0),d1
	add.w d2,d1
	cmp.w d3,d1
	bcc.s loc_20b5fe
	btst.b #$1,$22(a1)
	beq.s loc_20b60e
	clr.b $3a(a0)
	rts
loc_20b5fe:
	tst.b $3a(a0)
	beq.s loc_20b60c
	clr.b $38(a1)
	clr.b $3a(a0)
loc_20b60c:
	rts
loc_20b60e:
	tst.b $3a(a0)
	bne.s loc_20b638
	move.b #$1,$3a(a0)
	btst.b #$2,$22(a1)
	bne.s loc_20b626
	clr.b $1c(a1)
loc_20b626:
	bclr.b #$5,$22(a1)
	move.b #$1,$1d(a1)
	move.b #$1,$38(a1)
loc_20b638:
	move.w $14(a1),d0
	tst.w $36(a0)
	bpl.s loc_20b65e
	cmpi.w #$fc00,d0
	ble.s loc_20b650
	move.w #$fc00,$14(a1)
	rts
loc_20b650:
	cmpi.w #$f100,d0
	bge.s loc_20b65c
	move.w #$f100,$14(a1)
loc_20b65c:
	rts
loc_20b65e:
	cmpi.w #$400,d0
	bge.s loc_20b66c
	move.w #$400,$14(a1)
	rts
loc_20b66c:
	cmpi.w #$f00,d0
	ble.s loc_20b678
	move.w #$f00,$14(a1)
loc_20b678:
	rts
	.incbin 46714, 1684
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd1c(pc,d0.w),d0
	jmp dat_20bd1c(pc,d0.w)
dat_20bd1c:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205a6e).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20bdf2,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20bd78
	tst.b ($ff1508).l
	beq.s loc_20bd80
	move.l #$20bdf6,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20bd80
loc_20bd78:
	tst.b ($ff1508).l
	bne.s loc_20bd90
loc_20bd80:
	bset.b #$7,($ff156b).l
	jsr (sub_207520).l
	beq.s loc_20bd96
loc_20bd90:
	jmp (sub_203934).l
loc_20bd96:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20bdd8
	move.w #$6e,d0
	jmp (sub_205a6e).l
loc_20bdd8:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bdec
	bge.s loc_20bde8
	neg.w d0
loc_20bde8:
	add.w d0,$8(a0)
loc_20bdec:
	jmp (sub_203888).l
	.incbin 48626, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be38(pc,d0.w),d0
	jmp dat_20be38(pc,d0.w)
dat_20be38:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c536,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c4f6).l,a2
loc_20be86:
	jsr (sub_207520).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c536,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bed8
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bed8:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20be86
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf00
	bge.s loc_20bef6
	neg.w d0
loc_20bef6:
	add.w d0,$a(a0)
	jmp (sub_203888).l
loc_20bf00:
	addq.b #$4,$24(a0)
	jmp (sub_203888).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf24
	bge.s loc_20bf1a
	neg.w d0
loc_20bf1a:
	add.w d0,$8(a0)
	jmp (sub_203888).l
loc_20bf24:
	addq.b #$4,$24(a0)
	jmp (sub_203888).l
	tst.b $1e(a0)
	beq.s loc_20bf3e
	subq.b #$1,$1e(a0)
	jmp (sub_203888).l
loc_20bf3e:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf58
	bge.s loc_20bf4e
	neg.w d0
loc_20bf4e:
	add.w d0,$a(a0)
	jmp (sub_203888).l
loc_20bf58:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20270a).l
	tst.b $1e(a0)
	beq.s loc_20bf7a
	subq.b #$1,$1e(a0)
	jmp (sub_203888).l
loc_20bf7a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf94
	bge.s loc_20bf8a
	neg.w d0
loc_20bf8a:
	add.w d0,$8(a0)
	jmp (sub_203888).l
loc_20bf94:
	jmp (sub_203934).l
	tst.l ($f680).w
	bne.s loc_20bfae
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203934).l
loc_20bfae:
	rts
	.incbin 49072, 1350
dat_20c4f6:
	.incbin 50422, 1728
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbd0(pc,d0.w),d0
	jsr dat_20cbd0(pc,d0.w)
	jsr (sub_203888).l
	jmp (loc_207556).l
dat_20cbd0:
	dc.b $00,$04,$01,$00
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20cde2,$4(a0)
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
	move.w dat_20cc5c(pc,d1.w),d2
	move.w d2,$32(a0)
	move.b d0,d1
	andi.w #$40,d1
	lsr.w #$5,d1
	move.w dat_20cc64(pc,d1.w),d2
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
	move.w dat_20cc56(pc,d1.w),d1
	jmp dat_20cc56(pc,d1.w)
dat_20cc56:
	dc.b $00,$1a,$00,$3e,$00,$1a
dat_20cc5c:
	dc.b $00,$00,$01,$00,$02,$00,$03,$00
dat_20cc64:
	dc.b $00,$20,$00,$30
dat_20cc68:
	dc.b $00,$04,$00,$08,$00,$10,$00,$20
	move.b #$0,$1a(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	move.b d0,d1
	andi.w #$c,d1
	lsr.w #$1,d1
	move.w dat_20cc68(pc,d1.w),d2
	move.w d2,$34(a0)
	rts
	.incbin 52372, 60
	tst.w $12(a0)
	bpl.s loc_20cce0
	lea ($d000).w,a1
	jsr (sub_208c68).l
loc_20cce0:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$3,d0
	cmpi.b #$1,d0
	bne.s loc_20cd36
	btst.b #$7,$3e(a0)
	beq.s loc_20cd12
	move.w $c(a0),d0
	subq.b #$1,$3a(a0)
	bcc.w loc_20cd5a
	bclr.b #$7,$3e(a0)
	bra.s loc_20cd36
loc_20cd12:
	move.w $32(a0),d0
	cmpi.w #$100,d0
	beq.s loc_20cd24
	cmpi.w #$300,d0
	beq.s loc_20cd24
	bra.s loc_20cd36
loc_20cd24:
	bset.b #$7,$3e(a0)
	move.b $38(a0),$3a(a0)
	move.w $c(a0),d0
	bra.s loc_20cd5a
loc_20cd36:
	move.w $32(a0),d1
	add.w $34(a0),d1
	andi.w #$3ff,d1
	move.w d1,$32(a0)
	lsr.w #$2,d1
	move.w d1,d0
	jsr (sub_200a44).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
loc_20cd5a:
	move.w d0,$c(a0)
	swap d0
	sub.l (a7)+,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	moveq #$0,d1
	move.b $28(a0),d1
	andi.b #$3,d1
	cmpi.b #$1,d1
	bne.s loc_20cdbe
	move.w $32(a0),d0
	cmpi.w #$210,d0
	bne.s loc_20cdbe
	lea ($d000).w,a1
	jsr (sub_208c68).l
	bne.s loc_20cd90
	rts
loc_20cd90:
	moveq #$0,d1
	move.b $28(a0),d1
	andi.w #$80,d1
	lsr.w #$6,d1
	move.w dat_20cdd0(pc,d1.w),d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts
loc_20cdbe:
	tst.w $12(a0)
	bmi.s loc_20cdce
	lea ($d000).w,a1
	jsr (sub_208c68).l
loc_20cdce:
	rts
dat_20cdd0:
	.incbin 52688, 134
loc_20ce56:
	lea dat_20cea8(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ce62:
	cmp.w (a1)+,d0
	bcs.s loc_20ce6a
	addq.b #$2,d1
	bra.s loc_20ce62
loc_20ce6a:
	move.b d1,($ff1574).l
	move.w dat_20ceb8(pc,d1.w),d0
	jmp (sub_20270a).l

sub_20ce7a:
	lea dat_20cea8(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ce86:
	cmp.w (a1)+,d0
	bcs.s loc_20ce8e
	addq.b #$2,d1
	bra.s loc_20ce86
loc_20ce8e:
	cmp.b ($ff1574).l,d1
	bne.s loc_20ce98
	rts
loc_20ce98:
	move.b d1,($ff1574).l
	move.w dat_20ceb0(pc,d1.w),d0
	jmp (loc_20273c).l
dat_20cea8:
	dc.b $03,$00,$06,$00,$15,$00,$ff,$ff
dat_20ceb0:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20ceb8:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20cec0:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20cece
	move.w #$4f2,d1
loc_20cece:
	move.w d1,$2(a0)
	rts
	.incbin 52948, 1244
	cmpi.b #$f8,$28(a0)
	beq.w loc_20d630
	tst.b $28(a0)
	bmi.w loc_20d4aa
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3e0(pc,d0.w),d0
	jsr dat_20d3e0(pc,d0.w)
	jsr (sub_203888).l
	move.w $36(a0),d0
	jmp (loc_20755a).l
dat_20d3e0:
	.incbin 54240, 202
loc_20d4aa:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d4fe(pc,d0.w),d0
	jsr dat_20d4fe(pc,d0.w)
	jsr (sub_203888).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20d4ee
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20d4f8
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20d4ee:
	move.w $36(a0),d0
	jmp (loc_20755a).l
loc_20d4f8:
	jmp (sub_203934).l
dat_20d4fe:
	dc.b $00,$04,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$1,$18(a0)
	move.l #$20d620,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.b #$0,$28(a0)
	bne.s loc_20d558
	move.b #$1,$1a(a0)
	move.b #$12,$19(a0)
	move.b #$8,$16(a0)
	move.b #$83,$20(a0)
loc_20d558:
	moveq #$0,d5
	move.b $28(a0),d5
	neg.b d5
	cmpi.b #$5,d5
	bcc.s loc_20d590
	cmpi.b #$3,d5
	bcc.s loc_20d56e
	bra.s loc_20d5aa
loc_20d56e:
	move.w #$8488,$2(a0)
	move.b #$83,$20(a0)
	tst.b ($ff1956).l
	beq.s loc_20d5aa
	clr.b $20(a0)
loc_20d586:
	lea ($d000).w,a1
	jmp (sub_208b1a).l
loc_20d590:
	move.b #$3,$18(a0)
	move.b #$83,$20(a0)
	tst.b ($ff1956).l
	bne.s loc_20d5aa
	clr.b $20(a0)
	bra.s loc_20d586
loc_20d5aa:
	tst.b $1a(a0)
	bne.w loc_20d60c
	clr.b $20(a0)
	lea ($d000).w,a1
	jsr (sub_208c68).l
	beq.s loc_20d60a
	btst.b #$3,$22(a0)
	beq.s loc_20d60a
	tst.b ($ff1521).l
	bne.s loc_20d60a
	tst.b ($ff151f).l
	bne.s loc_20d60a
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20d608
	tst.w $30(a0)
	bne.s loc_20d608
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206e18).l
loc_20d608:
	movea.l (a7)+,a0
loc_20d60a:
	rts
loc_20d60c:
	btst.b #$7,$1(a0)
	beq.s loc_20d61e
	lea ($d000).w,a1
	jsr (sub_208c68).l
loc_20d61e:
	rts
	.incbin 54816, 16
loc_20d630:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d64a(pc,d0.w),d0
	jsr dat_20d64a(pc,d0.w)
	jsr (sub_203888).l
	jmp (loc_207556).l
dat_20d64a:
	.incbin 54858, 3500
	move.w dat_20e3fe(pc,d0.w),d0
	jmp dat_20e3fe(pc,d0.w)
dat_20e3fe:
	.incbin 58366, 2416
	jsr (sub_20f74c).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ee2c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ed8e(pc,d0.w),d0
	jmp dat_20ed8e(pc,d0.w)
dat_20ed8e:
	.incbin 60814, 158
loc_20ee2c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ee3a(pc,d0.w),d0
	jmp dat_20ee3a(pc,d0.w)
dat_20ee3a:
	.incbin 60986, 1226
	tst.b $29(a0)
	bmi.w loc_20f444
	tst.b $28(a0)
	bpl.s loc_20f320
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.w loc_20f5b4
loc_20f320:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f346(pc,d0.w),d0
	jsr dat_20f346(pc,d0.w)
	jsr (sub_203888).l
	tst.b $28(a0)
	bmi.s loc_20f344
	move.w $2a(a0),d0
	jmp (loc_20755a).l
loc_20f344:
	rts
dat_20f346:
	dc.b $00,$08,$00,$20,$00,$42,$00,$ec
	move.w $8(a0),$2a(a0)
	movea.l a0,a6
	bsr.w sub_20f3f8
	move.b #$2,$24(a0)
	move.b #$5,$1a(a0)
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$fec0,d0
	subi.w #$280,d0
	bcc.s loc_20f386
	addq.b #$2,$24(a0)
	move.b #$0,$1a(a0)
loc_20f386:
	rts
	.incbin 62344, 112

sub_20f3f8:
	move.b #$6,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.w #$33c,$2(a6)
	move.b #$8,$17(a6)
	move.b #$8,$19(a6)
	move.b #$4,$16(a6)
	move.l #$20f5d0,$4(a6)
	move.w $c(a0),$c(a6)
	rts
	.incbin 62514, 18
loc_20f444:
	movea.w $3e(a0),a1
	cmpi.b #$20,$0(a1)
	bne.w loc_20f5b4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f466(pc,d0.w),d0
	jsr dat_20f466(pc,d0.w)
	jmp (sub_203888).l
dat_20f466:
	.incbin 62566, 334
loc_20f5b4:
	jmp (sub_203934).l
	.incbin 62906, 402

sub_20f74c:
	tst.b $28(a0)
	bmi.s loc_20f77c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f76c
	tst.b ($ff156d).l
	bne.s loc_20f77c
	addq.l #$4,a7
	jmp (loc_207556).l
loc_20f76c:
	tst.b ($ff156a).l
	bne.s loc_20f77c
	addq.l #$4,a7
	jmp (sub_203934).l
loc_20f77c:
	rts
	.incbin 63358, 584
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20fad8,$4(a0)
	move.b #$8,$19(a0)
	move.b #$6,$16(a0)
	move.w $8(a0),$36(a0)
	move.w #$100,$10(a0)
	moveq #$e,d0
	jsr (sub_20cec0).l
	jsr (sub_207536).l
	beq.s loc_20fa0c
	jmp (sub_203934).l
loc_20fa0c:
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
	bpl.s loc_20fa4c
	move.w #$40,$3a(a0)
loc_20fa4c:
	jsr (sub_206952).l
	tst.w d1
	bpl.s loc_20fa66
	add.w d1,$c(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	rts
loc_20fa66:
	addq.w #$1,$c(a0)
	rts
	.incbin 64108, 124

sub_20fae8:
	jsr (sub_206322).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fc40).l,a1
	move.w #$3f,d6
	bsr.w sub_20fbfc
	bne.s loc_20fb2a
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$46a0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fb2a:
	lea (dat_20fc52).l,a1
	move.w #$3f,d6
	bsr.w sub_20fbfc
	bne.s loc_20fb5e
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$47a0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fb5e:
	lea (dat_20fc64).l,a1
	move.w #$7f,d6
	bsr.w sub_20fbfc
	bne.s loc_20fb92
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$48a0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fb92:
	lea (dat_20fc76).l,a1
	move.w #$1f,d6
	bsr.w sub_20fbfc
	bne.s loc_20fbc6
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4aa0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fbc6:
	lea (dat_20fc94).l,a1
	move.w #$1f,d6
	bsr.w sub_20fbfc
	bne.s loc_20fbfa
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4b20,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fbfa:
	rts

sub_20fbfc:
	subq.b #$1,(a2)
	bpl.w loc_20fc34
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fc12
	moveq #$0,d0
loc_20fc12:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fc22:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fc22
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fc34:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fc40:
	.incbin 64576, 18
dat_20fc52:
	.incbin 64594, 18
dat_20fc64:
	.incbin 64612, 18
dat_20fc76:
	.incbin 64630, 30
dat_20fc94:
	.incbin 64660, 26
dat_20fcae:
	.incbin 64686, 16
dat_20fcbe:
	.incbin 64702, 66370
dat_220000:
	.incbin 131072, 61872
dat_22f1b0:
	.incbin 192944, 16476
dat_23320c:
	.incbin 209420, 384
dat_23338c:
	.incbin 209804, 14578
dat_236c7e:
	.incbin 224382, 256
dat_236d7e:
	.incbin 224638, 4096
dat_237d7e:
	.incbin 228734, 4796
dat_23903a:
	.incbin 233530, 14848
dat_23ca3a:
	.incbin 248378, 13766
