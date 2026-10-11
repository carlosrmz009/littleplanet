; R12B__.MMD
; disassembled from the disc; code only, data comes from data/R12B__.MMD at build time
	.file "R12B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$d6
	jmp (loc_201c4c).l
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
	bsr.w sub_202182
	bsr.w sub_20212a
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2014c6

sub_200184:
	bra.w loc_200228
	.incbin 392, 160
loc_200228:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_2002c0).l,a1
	lea (dat_2002c8).l,a2
	bsr.s sub_200282
	lea (dat_2002ce).l,a1
	lea (dat_2002d6).l,a2
	bsr.s sub_200282
	lea (dat_2002dc).l,a1
	lea (dat_2002e4).l,a2
	bsr.s sub_200282
	lea (dat_2002ea).l,a1
	lea (dat_2002f2).l,a2
	bsr.s sub_200282
	lea (dat_2002f8).l,a1
	lea (dat_200300).l,a2
	bsr.s sub_200282
	lea (dat_200306).l,a1
	lea (dat_20030e).l,a2

sub_200282:
	subq.b #$1,(a5)
	bpl.s loc_2002b6
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
	bcs.s loc_2002a2
	moveq #$0,d0
loc_2002a2:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2002b6:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2002c0:
	dc.b $31,$03,$08,$00,$08,$01,$08,$02
dat_2002c8:
	dc.b $0e,$ea,$0c,$e6,$08,$c4
dat_2002ce:
	dc.b $32,$03,$08,$00,$08,$01,$08,$02
dat_2002d6:
	dc.b $08,$c4,$0e,$ea,$0c,$e6
dat_2002dc:
	dc.b $33,$03,$08,$00,$08,$01,$08,$02
dat_2002e4:
	dc.b $0c,$e6,$08,$c4,$0e,$ea
dat_2002ea:
	dc.b $2c,$03,$06,$00,$06,$01,$06,$02
dat_2002f2:
	dc.b $0e,$ec,$0c,$e6,$08,$c4
dat_2002f8:
	dc.b $2d,$03,$06,$00,$06,$01,$06,$02
dat_200300:
	dc.b $0c,$e6,$08,$c4,$0e,$ec
dat_200306:
	dc.b $2f,$03,$06,$00,$06,$01,$06,$02
dat_20030e:
	dc.b $08,$c4,$0e,$ec,$0c,$e6

sub_200314:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200326:
	move.w d1,(a0)+
	dbf d0,loc_200326
	move.w #$15,d4
loc_200330:
	move.b #$12,($f62a).w
	bsr.w sub_20080a
	bsr.s sub_200346
	bsr.w sub_202548
	dbf d4,loc_200330
	rts

sub_200346:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20035c:
	bsr.s sub_20038a
	dbf d0,loc_20035c
	cmpi.b #$1,($ff1506).l
	bne.s loc_200388
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200382:
	bsr.s sub_20038a
	dbf d0,loc_200382
loc_200388:
	rts

sub_20038a:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003b2
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2003a0
	move.w d1,(a0)+
	rts
loc_2003a0:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2003ae
	move.w d1,(a0)+
	rts
loc_2003ae:
	addq.w #$2,(a0)+
	rts
loc_2003b2:
	addq.w #$2,a0
	rts

sub_2003b6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003c0:
	move.b #$12,($f62a).w
	bsr.w sub_20080a
	bsr.s sub_2003d6
	bsr.w sub_202548
	dbf d4,loc_2003c0
	rts

sub_2003d6:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003e6:
	bsr.s sub_200404
	dbf d0,loc_2003e6
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003fc:
	bsr.s sub_200404
	dbf d0,loc_2003fc
	rts

sub_200404:
	move.w (a0),d2
	beq.s loc_200430
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200414
	subq.w #$2,(a0)+
	rts
loc_200414:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200422
	subi.w #$20,(a0)+
	rts
loc_200422:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200430
	subi.w #$200,(a0)+
	rts
loc_200430:
	addq.w #$2,a0
	rts

sub_200434:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20044e:
	move.w d1,(a0)+
	dbf d0,loc_20044e
	move.w #$15,d4
loc_200458:
	move.b #$12,($f62a).w
	bsr.w sub_20080a
	bsr.s sub_20046e
	bsr.w sub_202548
	dbf d4,loc_200458
	rts

sub_20046e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200484:
	bsr.s sub_2004b2
	dbf d0,loc_200484
	cmpi.b #$1,($ff1506).l
	bne.s loc_2004b0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004aa:
	bsr.s sub_2004b2
	dbf d0,loc_2004aa
loc_2004b0:
	rts

sub_2004b2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004de
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004ca
	cmp.w d2,d1
	bcs.s loc_2004ca
	move.w d1,(a0)+
	rts
loc_2004ca:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004da
	cmp.w d2,d1
	bcs.s loc_2004da
	move.w d1,(a0)+
	rts
loc_2004da:
	subq.w #$2,(a0)+
	rts
loc_2004de:
	addq.w #$2,a0
	rts

sub_2004e2:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004ec:
	move.b #$12,($f62a).w
	bsr.w sub_20080a
	bsr.s sub_200502
	bsr.w sub_202548
	dbf d4,loc_2004ec
	rts

sub_200502:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200512:
	bsr.s sub_200530
	dbf d0,loc_200512
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200528:
	bsr.s sub_200530
	dbf d0,loc_200528
	rts

sub_200530:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20056c
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200548
	addq.w #$2,(a0)+
	rts
loc_200548:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20055a
	addi.w #$20,(a0)+
	rts
loc_20055a:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20056c
	addi.w #$200,(a0)+
	rts
loc_20056c:
	addq.w #$2,a0
	rts

sub_200570:
	lea (dat_2005c0).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200584:
	move.l (a2)+,(a3)+
	dbf d7,loc_200584
	rts

sub_20058c:
	lea (dat_2005c0).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20059c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20059c
	rts
	.incbin 1444, 28
dat_2005c0:
	.incbin 1472, 586

sub_20080a:
	move.w #$2300,sr
loc_20080e:
	tst.b ($f62a).w
	bne.s loc_20080e
	rts

sub_200816:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20082e(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20082e(pc,d0.w),d0
	rts
dat_20082e:
	.incbin 2094, 640

sub_200aae:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b0a
	move.w d2,d4
	tst.w d3
	bpl.w loc_200ac8
	neg.w d3
loc_200ac8:
	tst.w d4
	bpl.w loc_200ad0
	neg.w d4
loc_200ad0:
	cmp.w d3,d4
	bcc.w loc_200ae2
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b14(pc,d4.w),d0
	bra.s loc_200aec
loc_200ae2:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b14(pc,d3.w),d0
loc_200aec:
	tst.w d1
	bpl.w loc_200af8
	neg.w d0
	addi.w #$80,d0
loc_200af8:
	tst.w d2
	bpl.w loc_200b04
	neg.w d0
	addi.w #$100,d0
loc_200b04:
	movem.l (a7)+,d3-d4
	rts
loc_200b0a:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b14:
	.incbin 2836, 258

sub_200c16:
	btst.b #$3,$22(a0)
	beq.s loc_200c2a
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c2a:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c4c
	move.b $26(a0),d0
	bpl.s loc_200c46
	subq.b #$1,d0
loc_200c46:
	addi.b #$20,d0
	bra.s loc_200c58
loc_200c4c:
	move.b $26(a0),d0
	bpl.s loc_200c54
	addq.b #$1,d0
loc_200c54:
	addi.b #$1f,d0
loc_200c58:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200ee2
	cmpi.b #$80,d0
	beq.w loc_200e40
	cmpi.b #$c0,d0
	beq.w loc_200da4
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
	bsr.w sub_20116c
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
	bsr.w sub_20116c
	move.w (a7)+,d0
	bsr.w sub_200d78
	tst.w d1
	beq.s loc_200ce6
	bpl.s loc_200ce8
	cmpi.w #$fff2,d1
	blt.s loc_200d0e
	add.w d1,$c(a0)
loc_200ce6:
	rts
loc_200ce8:
	cmpi.w #$e,d1
	bgt.s loc_200cf4
loc_200cee:
	add.w d1,$c(a0)
	rts
loc_200cf4:
	tst.b $38(a0)
	bne.s loc_200cee
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d0e:
	rts
	.incbin 3344, 34
loc_200d32:
	rts
	.incbin 3380, 68

sub_200d78:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d86
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d86:
	btst.l #$0,d2
	bne.s loc_200d92
	move.b d2,$26(a0)
	rts
loc_200d92:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200da4:
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
	bsr.w sub_2012dc
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
	bsr.w sub_2012dc
	move.w (a7)+,d0
	bsr.w sub_200d78
	tst.w d1
	beq.s loc_200e18
	bpl.s loc_200e1a
	cmpi.w #$fff2,d1
	blt.w loc_200d32
	add.w d1,$8(a0)
loc_200e18:
	rts
loc_200e1a:
	cmpi.w #$e,d1
	bgt.s loc_200e26
loc_200e20:
	add.w d1,$8(a0)
	rts
loc_200e26:
	tst.b $38(a0)
	bne.s loc_200e20
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e40:
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
	bsr.w sub_20116c
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
	bsr.w sub_20116c
	move.w (a7)+,d0
	bsr.w sub_200d78
	tst.w d1
	beq.s loc_200eba
	bpl.s loc_200ebc
	cmpi.w #$fff2,d1
	blt.w loc_200d0e
	sub.w d1,$c(a0)
loc_200eba:
	rts
loc_200ebc:
	cmpi.w #$e,d1
	bgt.s loc_200ec8
loc_200ec2:
	sub.w d1,$c(a0)
	rts
loc_200ec8:
	tst.b $38(a0)
	bne.s loc_200ec2
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200ee2:
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
	bsr.w sub_2012dc
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
	bsr.w sub_2012dc
	move.w (a7)+,d0
	bsr.w sub_200d78
	tst.w d1
	beq.s loc_200f5c
	bpl.s loc_200f5e
	cmpi.w #$fff2,d1
	blt.w loc_200d32
	sub.w d1,$8(a0)
loc_200f5c:
	rts
loc_200f5e:
	cmpi.w #$e,d1
	bgt.s loc_200f6a
loc_200f64:
	sub.w d1,$8(a0)
	rts
loc_200f6a:
	tst.b $38(a0)
	bne.s loc_200f64
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f84:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f9a
	andi.w #$380,d0
loc_200f9a:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ffa
	bmi.s loc_200ffe
	cmpi.b #$5,($ff1506).l
	beq.s loc_200fca
	cmpi.b #$6,($ff1506).l
	bne.s loc_200fd0
loc_200fca:
	andi.w #$7fff,$2(a0)
loc_200fd0:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fe0
	bclr.b #$6,$1(a0)
loc_200fe0:
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
loc_200ffa:
	movea.l d1,a1
	rts
loc_200ffe:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_201066
	btst.b #$6,$1(a0)
	bne.s loc_20102c
	cmpi.b #$14,d1
	bne.w loc_201150
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201150
loc_20102c:
	cmpi.b #$15,d1
	bne.s loc_20103a
	move.w #$60,d1
	bra.w loc_201150
loc_20103a:
	cmpi.b #$1e,d1
	bne.s loc_201048
	move.w #$61,d1
	bra.w loc_201150
loc_201048:
	cmpi.b #$1f,d1
	bne.s loc_201056
	move.w #$62,d1
	bra.w loc_201150
loc_201056:
	cmpi.b #$32,d1
	bne.w loc_201150
	move.w #$63,d1
	bra.w loc_201150
loc_201066:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2010cc
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010b6
	cmpi.b #$6,d1
	beq.s loc_2010b6
	tst.b ($ff1956).l
	beq.w loc_201150
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2010c6
	cmpi.b #$3c,d1
	beq.s loc_2010c6
	cmpi.b #$37,d1
	beq.s loc_2010c6
	cmpi.b #$2f,d1
	beq.s loc_2010c6
	cmpi.b #$16,d1
	beq.s loc_2010c6
	bra.w loc_201150
loc_2010b6:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201150
loc_2010c6:
	addq.b #$1,d1
	bra.w loc_201150
loc_2010cc:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20113c
	cmpi.b #$3,$0(a0)
	bcc.w loc_201150
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201150
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201100
	move.w #$6a,d1
	bra.s loc_201150
loc_201100:
	cmpi.b #$48,d1
	bne.s loc_20110c
	move.w #$6b,d1
	bra.s loc_201150
loc_20110c:
	cmpi.b #$4a,d1
	bne.s loc_201118
	move.w #$6c,d1
	bra.s loc_201150
loc_201118:
	cmpi.b #$10,d1
	bne.s loc_201124
	move.w #$6d,d1
	bra.s loc_201150
loc_201124:
	cmpi.b #$63,d1
	bne.s loc_201130
	move.w #$6e,d1
	bra.s loc_201150
loc_201130:
	cmpi.b #$43,d1
	bne.s loc_201150
	move.w #$6f,d1
	bra.s loc_201150
loc_20113c:
	btst.b #$6,$1(a0)
	beq.s loc_201150
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201150
	move.w #$51,d1
loc_201150:
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

sub_20116c:
	bsr.w sub_200f84
	cmpi.l #$210000,d1
	beq.s loc_201186
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201186
	btst.l d5,d4
	bne.s loc_201194
loc_201186:
	add.w a3,d2
	bsr.w sub_20122c
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201194:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201186
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011ba
	not.w d1
	neg.b (a4)
loc_2011ba:
	btst.l #$c,d4
	beq.s loc_2011ca
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011ca:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011e6
	neg.w d0
loc_2011e6:
	tst.w d0
	beq.s loc_201186
	bmi.s loc_201202
	cmpi.b #$10,d0
	beq.s loc_20121e
loc_2011f2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201202:
	cmpa.w #$10,a3
	bne.s loc_201212
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011f2
loc_201212:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201186
loc_20121e:
	sub.w a3,d2
	bsr.w sub_20122c
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_20122c:
	bsr.w sub_200f84
	cmpi.l #$210000,d1
	beq.s loc_201246
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201246
	btst.l d5,d4
	bne.s loc_201254
loc_201246:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201254:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201246
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20127a
	not.w d1
	neg.b (a4)
loc_20127a:
	btst.l #$c,d4
	beq.s loc_20128a
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20128a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012a6
	neg.w d0
loc_2012a6:
	tst.w d0
	beq.s loc_201246
	bmi.s loc_2012bc
loc_2012ac:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012bc:
	cmpa.w #$10,a3
	bne.s loc_2012cc
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012ac
loc_2012cc:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201246
	not.w d1
	rts

sub_2012dc:
	bsr.w sub_200f84
	cmpi.l #$210000,d1
	beq.s loc_2012f6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012f6
	btst.l d5,d4
	bne.s loc_201304
loc_2012f6:
	add.w a3,d3
	bsr.w sub_20138c
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201304:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012f6
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201332
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201332:
	btst.l #$b,d4
	beq.s loc_20133a
	neg.b (a4)
loc_20133a:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23a274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201356
	neg.w d0
loc_201356:
	tst.w d0
	beq.s loc_2012f6
	bmi.s loc_201372
	cmpi.b #$10,d0
	beq.s loc_20137e
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201372:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012f6
loc_20137e:
	sub.w a3,d3
	bsr.w sub_20138c
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_20138c:
	bsr.w sub_200f84
	cmpi.l #$210000,d1
	beq.s loc_2013a6
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013a6
	btst.l d5,d4
	bne.s loc_2013b4
loc_2013a6:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013b4:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013a6
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2013e2
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013e2:
	btst.l #$b,d4
	beq.s loc_2013ea
	neg.b (a4)
loc_2013ea:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23a274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201406
	neg.w d0
loc_201406:
	tst.w d0
	beq.s loc_2013a6
	bmi.s loc_20141c
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20141c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013a6
	not.w d1
	rts

sub_20142c:
	rts
	.incbin 5166, 152
loc_2014c6:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014e6
	tst.b ($ff0f01).l
	bne.s loc_2014e6
	move.b #$1,($ff156a).l
loc_2014e6:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_20154c
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207442
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_20154c
	move.b #$1,($ff1508).l
loc_20154c:
	bset.b #$7,($f600).w
	bsr.w sub_20253a
	tst.b ($ff156e).l
	bne.s loc_201572
	btst.b #$7,($ff152e).l
	beq.s loc_2015a8
	bset.b #$0,($ff151d).l
	beq.s loc_20157e
loc_201572:
	bsr.w sub_2004e2
	bclr.b #$0,($ff151d).l
loc_20157e:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201618
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015a6
	bclr.b #$7,($ff152e).l
loc_2015a6:
	rts
loc_2015a8:
	bset.b #$0,($ff151d).l
	beq.s loc_2015b6
	bsr.w sub_2003b6
loc_2015b6:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2015d2
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015fa
loc_2015d2:
	tst.b ($ff1508).l
	bne.s loc_201618
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015fa:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201602:
	move.l #$0,(a1)+
	dbf d6,loc_201602
	move.b #$c,($f62a).w
	bsr.w sub_20080a
	rts
loc_201618:
	cmpi.w #$800,($f78e).w
	bne.s loc_201636
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201636:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20164c
	btst.b #$7,($ff152e).l
	beq.s loc_201652
loc_20164c:
	move.l #$eee0eee,d0
loc_201652:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20165a:
	move.l d0,(a1)+
	dbf d6,loc_20165a
loc_201660:
	move.b #$c,($f62a).w
	bsr.w sub_20080a
	bsr.w sub_202548
	bne.s loc_201660
	tst.l ($f680).w
	bsr.w sub_201b06
	moveq #$0,d0
	lea (dat_20f038).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20168a
	bsr.w sub_20264e
loc_20168a:
	moveq #$1,d0
	bsr.w sub_20264e
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016a6:
	move.l d0,(a1)+
	dbf d1,loc_2016a6
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016b8:
	move.l d0,(a1)+
	dbf d1,loc_2016b8
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2016c8:
	move.l d0,(a1)+
	dbf d1,loc_2016c8
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2016da:
	move.l d0,(a1)+
	dbf d1,loc_2016da
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2016ea:
	move.l d0,(a1)+
	dbf d1,loc_2016ea
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016fa:
	move.l d0,(a1)+
	dbf d1,loc_2016fa
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202224
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
	bsr.w sub_20058c
	moveq #$3,d0
	bsr.w sub_200570
	bsr.w sub_2028b0
	bsr.w sub_202a1e
	bset.b #$2,($f754).w
	bsr.w sub_203410
	bsr.w sub_203326
	jsr (sub_20142c).l
	bsr.w sub_201a40
loc_20177a:
	move.b #$c,($f62a).w
	bsr.w sub_20080a
	bsr.w sub_202548
	bne.s loc_20177a
	tst.l ($f680).w
	bne.s loc_20177a
	bsr.w sub_2019cc
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b66
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2017de
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2017de:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201820
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201820:
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
	jsr (sub_20f032).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018b0
loc_2018aa:
	bsr.w sub_200434
	bra.s loc_2018be
loc_2018b0:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018aa
	bsr.w sub_200314
loc_2018be:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2018cc:
	move.b #$8,($f62a).w
	bsr.w sub_20080a
	tst.b ($f7cc).w
	bne.s loc_2018ea
	btst.b #$7,($f605).w
	beq.s loc_2018ea
	eori.b #$1,($f63a).w
loc_2018ea:
	btst.b #$0,($f63a).w
	beq.w loc_20195c
	bsr.w sub_201bca
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20193a
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2018cc
	subq.b #$1,($ff1508).l
	bpl.s loc_20191c
	clr.b ($ff1508).l
loc_20191c:
	move.w #$e,d0
	jsr (sub_205ade).l
	bsr.w sub_207442
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201948
loc_20193a:
	andi.b #$70,d0
	beq.w loc_2018cc
	clr.b ($ff1508).l
loc_201948:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2014c6
loc_20195c:
	bsr.w sub_201c10
	addq.w #$1,($ff1504).l
	jsr (sub_207458).l
	jsr (sub_203824).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014c6
	tst.w ($ff1502).l
	bne.w loc_2014c6
	tst.w ($ff1906).l
	bne.s loc_2019a4
	cmpi.b #$6,($d024).w
	bcs.s loc_2019a4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019a8
loc_2019a4:
	bsr.w sub_202a1e
loc_2019a8:
	jsr (sub_2039ce).l
	tst.w ($ff190e).l
	bne.s loc_2019ba
	bsr.w sub_200184
loc_2019ba:
	jsr (sub_20cba0).l
	bsr.w sub_202548
	bsr.w sub_201a72
	bra.w loc_2018cc

sub_2019cc:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019e4
	move.w #$78,$30(a1)
loc_2019e4:
	rts
	.incbin 6630, 90

sub_201a40:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a52(pc,d0.w),($f796).w
	rts
dat_201a52:
	.incbin 6738, 32

sub_201a72:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a90
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a90:
	subq.b #$1,($ff1912).l
	bpl.s loc_201aae
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201aae:
	subq.b #$1,($ff1914).l
	bpl.s loc_201ad6
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201ad6
	move.b #$0,($ff1915).l
loc_201ad6:
	tst.b ($ff1916).l
	beq.s loc_201b04
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b04:
	rts

sub_201b06:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b28
	cmpi.b #$2,d0
	bne.s loc_201b28
	add.b ($ff156a).l,d0
loc_201b28:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b40(pc,d1.w),d0
	jmp (sub_205ade).l
dat_201b40:
	.incbin 6976, 38

sub_201b66:
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

sub_201bca:
	move.w #$ab,d0
	jsr (sub_202312).l
	bset.b #$7,($f63a).w
	bne.s loc_201c0e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bf4
loc_201bea:
	move.w #$d5,d0
	jmp (sub_205ade).l
loc_201bf4:
	tst.b ($ff151f).l
	bne.s loc_201bea
	tst.b ($ff1520).l
	bne.s loc_201bea
	move.w #$90,d0
	jmp (sub_205ade).l
loc_201c0e:
	rts

sub_201c10:
	bclr.b #$7,($f63a).w
	beq.s loc_201c4a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c30
loc_201c26:
	move.w #$d6,d0
	jmp (sub_205ade).l
loc_201c30:
	tst.b ($ff151f).l
	bne.s loc_201c26
	tst.b ($ff1520).l
	bne.s loc_201c26
	move.w #$91,d0
	jmp (sub_205ade).l
loc_201c4a:
	rts
loc_201c4c:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201cd8
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c88
	move.w #$700,d0
loc_201c84:
	dbf d0,loc_201c84
loc_201c88:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201cbe(pc,d0.w),d0
	jsr dat_201cbe(pc,d0.w)
loc_201c9e:
	jsr (sub_202336).l
	tst.b ($f63a).w
	bne.s loc_201cb2
	bsr.w sub_2020ea
	bsr.w sub_2020d8
loc_201cb2:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201cbe:
	.incbin 7358, 26
loc_201cd8:
	tst.b ($ff1957).l
	beq.w loc_201c9e
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c9e
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201d06
	move.w #$700,d0
loc_201d02:
	dbf d0,loc_201d02
loc_201d06:
	move.w #$1,($f6fc).w
	jsr (sub_2022aa).l
	tst.b ($f64e).w
	bne.s loc_201d3e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d62
loc_201d3e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d62:
	move.w ($f624).w,(a5)
	jsr (sub_2022c6).l
	bra.w loc_201c9e
	.incbin 7536, 60
	jsr (sub_2022aa).l
	bsr.w sub_202146
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
	bsr.w sub_205a00
	tst.b ($f767).w
	beq.s loc_201e5a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e5a:
	jsr (sub_20f032).l
	jsr (sub_2022c6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f1e
	bsr.w sub_2025ba
	jmp (loc_20ac1a).l
	dc.b $4e,$75
	jsr (sub_2022aa).l
	bsr.w sub_202146
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
	jsr (sub_2022c6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f1e
	bra.w loc_20259e
	.incbin 7986, 16
	bsr.w sub_20202e
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f64
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f64:
	move.w ($f624).w,(a5)
	bra.w loc_20259e
	.incbin 8044, 138
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
	tst.w ($f614).w
	beq.w loc_20202c
	subq.w #$1,($f614).w
loc_20202c:
	rts

sub_20202e:
	jsr (sub_2022aa).l
	bsr.w sub_202146
	tst.b ($f64e).w
	bne.s loc_202064
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202088
loc_202064:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202088:
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
	jmp (sub_2022c6).l
	dc.b $4e,$73

sub_2020d8:
	tst.b ($d02a).w
	bne.s loc_2020e8
	tst.w ($f786).w
	beq.s loc_2020e8
	addq.w #$1,($f786).w
loc_2020e8:
	rts

sub_2020ea:
	tst.w ($f780).w
	beq.s loc_2020f4
	addq.w #$1,($f780).w
loc_2020f4:
	tst.w ($f782).w
	beq.s loc_2020fe
	addq.w #$1,($f782).w
loc_2020fe:
	rts
	.incbin 8448, 42

sub_20212a:
	bsr.w sub_2022aa
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022c6

sub_202146:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202154
	addq.w #$2,a1

sub_202154:
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

sub_202182:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021fe).l,a2
	moveq #$12,d7
loc_202196:
	move.w (a2)+,(a0)
	dbf d7,loc_202196
	move.w (dat_202200).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021bc:
	move.w d0,(a1)
	dbf d7,loc_2021bc
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021ee:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021ee
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021fe:
	dc.b $80,$04
dat_202200:
	.incbin 8704, 36

sub_202224:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202246:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202246
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202274:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202274
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202292:
	move.l d0,(a1)+
	dbf d1,loc_202292
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2022a2:
	move.l d0,(a1)+
	dbf d1,loc_2022a2
	rts

sub_2022aa:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022ba:
	btst.b #$0,($a11100).l
	bne.s loc_2022ba
	rts

sub_2022c6:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8916, 62

sub_202312:
	tst.b ($f00a).w
	bne.s loc_20231e
	move.b d0,($f00a).w
	rts
loc_20231e:
	tst.b ($f00b).w
	bne.s loc_20232a
	move.b d0,($f00b).w
	rts
loc_20232a:
	tst.b ($f00c).w
	bne.s loc_202334
	move.b d0,($f00c).w
loc_202334:
	rts

sub_202336:
	jsr (sub_2022aa).l
	tst.b ($f00a).w
	beq.s loc_202350
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202350:
	tst.b ($f00b).w
	beq.s loc_202364
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202364:
	tst.b ($f00c).w
	beq.s loc_202378
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202378:
	bra.w sub_2022c6
	.incbin 9084, 32

sub_20239c:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20245e).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023b8

sub_2023ae:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202474).l,a3
loc_2023b8:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023c6
	adda.w #$a,a3
loc_2023c6:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_20248a
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2023e6
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2023e6:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202432
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20240e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20240e:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20241c:
	lsr.w #$4,d0
loc_20241e:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20242c
	jmp (a3)

sub_202428:
	moveq #$0,d4
	moveq #$8,d3
loc_20242c:
	dbf d0,loc_20241e
	bra.s sub_2023e6
loc_202432:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202440
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202440:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20241c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20241c
loc_20245e:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202428
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202428
	rts
dat_202474:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202428
	rts

sub_20248a:
	move.b (a0)+,d0
loc_20248c:
	cmpi.b #$ff,d0
	bne.s loc_202494
	rts
loc_202494:
	move.w d0,d7
loc_202496:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_20248c
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
	bne.s loc_2024c4
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202496
loc_2024c4:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2024d0:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2024d0
	bra.s loc_202496

sub_2024dc:
	movem.l a1-a2,-(a7)
	lea (dat_20f048).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024f4:
	tst.l (a2)
	beq.s loc_2024fc
	addq.w #$6,a2
	bra.s loc_2024f4
loc_2024fc:
	move.w (a1)+,d0
	bmi.s loc_202508
loc_202500:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202500
loc_202508:
	movem.l (a7)+,a1-a2
	rts
loc_20250e:
	movem.l a1-a2,-(a7)
	lea (dat_20f048).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_20253a
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202534
loc_20252c:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20252c
loc_202534:
	movem.l (a7)+,a1-a2
	rts

sub_20253a:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202540:
	clr.l (a2)+
	dbf d0,loc_202540
	rts

sub_202548:
	tst.l ($f680).w
	beq.s loc_20259c
	tst.w ($f6f8).w
	bne.s loc_20259c
	movea.l ($f680).w,a0
	lea (loc_20245e).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20256a
	adda.w #$a,a3
loc_20256a:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_20248a
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
loc_20259c:
	rts
loc_20259e:
	tst.w ($f6f8).w
	beq.w loc_20263c
loc_2025a6:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2025d8

sub_2025ba:
	tst.w ($f6f8).w
	beq.s loc_20263c
	tst.b ($f744).w
	bne.s loc_2025a6
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2025d8:
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
loc_20260c:
	movea.w #$8,a5
	bsr.w sub_202428
	subq.w #$1,($f6f8).w
	beq.s loc_20263e
	subq.w #$1,($f6fa).w
	bne.s loc_20260c
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20263c:
	rts
loc_20263e:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202644:
	move.l $6(a0),(a0)+
	dbf d0,loc_202644
	rts

sub_20264e:
	lea (dat_20f048).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202660:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_20239c
	dbf d1,loc_202660
	rts
	.incbin 9856, 560

sub_2028b0:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20290c).l,a0
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
	bra.w loc_202938
dat_20290c:
	dc.b $00,$04,$00,$00,$28,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202918:
	.incbin 10520, 32
loc_202938:
	tst.b ($ff1522).l
	beq.s loc_202958
	jsr (sub_20666a).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202956
	moveq #$0,d0
loc_202956:
	bra.s loc_202994
loc_202958:
	lea (dat_2029d0).l,a1
	tst.w ($ff1580).l
	bpl.s loc_20297a
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202918).l,a1
	adda.w d0,a1
	bra.s loc_202984
loc_20297a:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202984:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202994:
	subi.w #$a0,d1
	bcc.s loc_20299c
	moveq #$0,d1
loc_20299c:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029a6
	move.w d2,d1
loc_2029a6:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029b2
	moveq #$0,d0
loc_2029b2:
	cmp.w ($f72e).w,d0
	blt.s loc_2029bc
	move.w ($f72e).w,d0
loc_2029bc:
	move.w d0,($f704).w
	bsr.w sub_2029d8
	lea (dat_2029d4).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029d0:
	dc.b $00,$50,$01,$85
dat_2029d4:
	dc.b $91,$b6,$7f,$7f

sub_2029d8:
	swap d0
	asr.l #$4,d0
	move.l d0,d2
	add.l d2,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$1,d1
	move.w d1,($f708).w
	lsr.w #$2,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d2,d1
	move.w d1,($f710).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	rts

sub_202a1e:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a2a
	rts
loc_202a2a:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b94
	bsr.w sub_202c34
	bsr.w sub_2034b8
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_202ebe
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202e8a
	lea ($a820).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	move.l d5,d3
	add.l d5,d5
	add.l d3,d5
	bsr.w sub_202d86
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
	addi.l #$e000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$a000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$5000,(a2)+
	addi.l #$4000,(a2)+
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	lea ($a800).w,a2
	moveq #$7,d6
loc_202afa:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202b68).l,a3
	move.b $0(a3,d6.w),d5
loc_202b10:
	move.w d1,(a1)+
	dbf d5,loc_202b10
	dbf d6,loc_202afa
	move.w #$7,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202b24:
	move.w d0,(a1)+
	dbf d1,loc_202b24
	move.w #$7,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202b34:
	move.w d0,(a1)+
	dbf d1,loc_202b34
	move.w #$1f,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202b44:
	move.w d0,(a1)+
	dbf d1,loc_202b44
	lea ($cc00).w,a1
	lea ($a820).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b70
dat_202b68:
	dc.b $01,$01,$01,$01,$01,$01,$01,$01
loc_202b70:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b7e(pc,d2.w)
loc_202b7c:
	move.w (a2)+,d0
loc_202b7e:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b7c
	rts

sub_202b94:
	move.w ($f700).w,d4
	bsr.s sub_202bc8
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bc6
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202bc0
	bset.b #$2,($f754).w
	rts
loc_202bc0:
	bset.b #$3,($f754).w
loc_202bc6:
	rts

sub_202bc8:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bda
	bcs.s loc_202c0a
	bra.s loc_202be0
loc_202bda:
	clr.w ($f73a).w
	rts
loc_202be0:
	cmpi.w #$10,d0
	blt.s loc_202bea
	move.w #$10,d0
loc_202bea:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bf8
	move.w ($f72a).w,d0
loc_202bf8:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202c0a:
	cmpi.w #$fff0,d0
	bge.s loc_202c14
	move.w #$fff0,d0
loc_202c14:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bf8
	move.w ($f728).w,d0
	bra.s loc_202bf8
	.incbin 11300, 16

sub_202c34:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c48
	subq.w #$5,d0
loc_202c48:
	btst.b #$1,$22(a6)
	beq.s loc_202c68
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202cb4
	subi.w #$40,d0
	bcc.s loc_202cb4
	tst.b ($f75c).w
	bne.s loc_202cc6
	bra.s loc_202c74
loc_202c68:
	sub.w ($f73e).w,d0
	bne.s loc_202c7a
	tst.b ($f75c).w
	bne.s loc_202cc6
loc_202c74:
	clr.w ($f73c).w
	rts
loc_202c7a:
	cmpi.w #$60,($f73e).w
	bne.s loc_202ca2
	move.w $14(a6),d1
	bpl.s loc_202c8a
	neg.w d1
loc_202c8a:
	cmpi.w #$800,d1
	bcc.s loc_202cb4
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202d14
	cmpi.w #$fffa,d0
	blt.s loc_202cde
	bra.s loc_202ccc
loc_202ca2:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202d14
	cmpi.w #$fffe,d0
	blt.s loc_202cde
	bra.s loc_202ccc
loc_202cb4:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202d14
	cmpi.w #$fff0,d0
	blt.s loc_202cde
	bra.s loc_202ccc
loc_202cc6:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202ccc:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d1e
	bra.w loc_202cea
loc_202cde:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cea:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d42
	cmpi.w #$ff00,d1
	bgt.s loc_202d0e
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d42
loc_202d0e:
	move.w ($f72c).w,d1
	bra.s loc_202d42
loc_202d14:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d1e:
	cmp.w ($f72e).w,d1
	blt.s loc_202d42
	subi.w #$800,d1
	bcs.s loc_202d3e
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d42
loc_202d3e:
	move.w ($f72e).w,d1
loc_202d42:
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
	bne.s loc_202d84
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d7e
	bset.b #$0,($f754).w
	rts
loc_202d7e:
	bset.b #$1,($f754).w
loc_202d84:
	rts

sub_202d86:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202dba
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202db4
	bset.b #$2,($f756).w
	bra.s loc_202dba
loc_202db4:
	bset.b #$3,($f756).w
loc_202dba:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dee
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202de8
	bset.b #$0,($f756).w
	rts
loc_202de8:
	bset.b #$1,($f756).w
loc_202dee:
	rts
	.incbin 11760, 114
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e88
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e82
	bset.b d6,($f756).w
	bra.s loc_202e88
loc_202e82:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e88:
	rts

sub_202e8a:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ebc
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202eb6
	bset.b d6,($f758).w
	bra.s loc_202ebc
loc_202eb6:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ebc:
	rts

sub_202ebe:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ef0
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202eea
	bset.b d6,($f75a).w
	bra.s loc_202ef0
loc_202eea:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ef0:
	rts
	.incbin 12018, 44

sub_202f1e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fdc
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030c0
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030c2
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fda
	bclr.b #$0,(a2)
	beq.s loc_202f90
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032ee
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030c4
loc_202f90:
	bclr.b #$1,(a2)
	beq.s loc_202faa
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032ee
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030c4
loc_202faa:
	bclr.b #$2,(a2)
	beq.s loc_202fc0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032ee
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20311a
loc_202fc0:
	bclr.b #$3,(a2)
	beq.s loc_202fda
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032ee
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20311a
loc_202fda:
	rts

sub_202fdc:
	lea (dat_2033a6).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202ff8
	bclr.b #$1,(a2)
	beq.s loc_203042
	move.w #$e0,d4
loc_202ff8:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203072(pc,d0.w),a3
	beq.s loc_20302a
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ee
	movem.l (a7)+,d4-d5
	bsr.w sub_2030c4
	movea.l (a7)+,a0
	bra.s loc_203042
loc_20302a:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032f0
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030f0
	movea.l (a7)+,a0
loc_203042:
	tst.b (a2)
	bne.s loc_203048
	rts
loc_203048:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_20305c
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_20305c:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203082
dat_203072:
	.incbin 12402, 16
loc_203082:
	moveq #$f,d6
	move.l #$800000,d7
loc_20308a:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2030b4
	add.w d0,d0
	movea.l dat_203072(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031c6
	movem.l (a7)+,d4-d5
	bsr.w sub_2032ee
	bsr.w sub_203148
	movem.l (a7)+,d4-d5/a0
loc_2030b4:
	addi.w #$10,d4
	dbf d6,loc_20308a
	clr.b (a2)
	rts

sub_2030c0:
	rts

sub_2030c2:
	rts

sub_2030c4:
	moveq #$15,d6

sub_2030c6:
	move.l #$800000,d7
	move.l d0,d1
loc_2030ce:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031c6
	move.l d1,d0
	bsr.w sub_203148
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030ce
	rts

sub_2030f0:
	move.l #$800000,d7
	move.l d0,d1
loc_2030f8:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031c8
	move.l d1,d0
	bsr.w sub_203148
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030f8
	rts

sub_20311a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203124:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031c6
	move.l d1,d0
	bsr.w sub_203148
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203124
	rts

sub_203148:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203184
	btst.b #$3,(a0)
	bne.s loc_203164
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203164:
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
loc_203184:
	btst.b #$3,(a0)
	bne.s loc_2031a6
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
loc_2031a6:
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

sub_2031c6:
	add.w (a3),d5

sub_2031c8:
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
	beq.s loc_203216
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
loc_203216:
	rts
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
	.incbin 12880, 158

sub_2032ee:
	add.w (a3),d5

sub_2032f0:
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
	.incbin 13066, 28

sub_203326:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203350
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203378

sub_203350:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203354:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032ee
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030c6
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203354
	rts
loc_203378:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20337c:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2033a6).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033d8
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20337c
	rts
dat_2033a6:
	.incbin 13222, 34
dat_2033c8:
	.incbin 13256, 16

sub_2033d8:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033c8(pc,d0.w),a3
	beq.s loc_2033fa
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ee
	movem.l (a7)+,d4-d5
	bsr.w sub_2030c4
	bra.s loc_20340e
loc_2033fa:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032f0
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030f0
loc_20340e:
	rts

sub_203410:
	moveq #$0,d0
	lea (dat_20f038).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023ae
	movea.l (a2)+,a0
	bsr.w sub_20346a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200570
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203454
	jmp (loc_20cb7c).l
loc_203454:
	btst.b #$1,($ff151c).l
	beq.s loc_203468
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203468
	bsr.w sub_2024dc
loc_203468:
	rts

sub_20346a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203474:
	move.l d0,(a3)+
	dbf d1,loc_203474
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20348a
	lea ($a040).w,a3
	moveq #$2,d1

sub_20348a:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23b5f8).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2034a4:
	move.w d1,d0
	movea.l a3,a0
loc_2034a8:
	move.b (a1)+,(a0)+
	dbf d0,loc_2034a8
	lea $80(a3),a3
	dbf d2,loc_2034a4
	rts

sub_2034b8:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203532(pc,d0.w),d0
	jsr dat_203532(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034de
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034de:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20350c
	bcc.s loc_20350e
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203502
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203502:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20350c:
	rts
loc_20350e:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203526
	btst.b #$1,($d022).w
	beq.s loc_203526
	add.w d1,d1
	add.w d1,d1
loc_203526:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203532:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203552(pc,d0.w),d0
	jmp dat_203552(pc,d0.w)
dat_203552:
	.incbin 13650, 102
	move.w #$310,($f726).w
	rts
	.incbin 13760, 612

sub_203824:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20382c:
	move.b (a0),d0
	beq.s loc_203842
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c46).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203842:
	lea $40(a0),a0
	dbf d7,loc_20382c
	rts

sub_20384c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20388a
	bpl.s loc_20387c
	btst.b #$1,$2c(a0)
	beq.s loc_20387c
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20388a
loc_20387c:
	btst.b #$2,$2c(a0)
	bne.s loc_20388a
	addi.w #$38,$12(a0)
loc_20388a:
	tst.w $12(a0)
	bmi.s loc_20389e
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20389e
	move.w #$1000,$12(a0)
loc_20389e:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2038ae:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038ea
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038ea
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038e8
	neg.w d1
loc_2038e8:
	add.w d1,d0
loc_2038ea:
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

sub_203904:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203974
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203990
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203990
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20394e
	cmpi.w #$800,d3
	bcs.s loc_203960
	subi.w #$800,d3
	bra.s loc_203960
loc_20394e:
	cmpi.w #$700,($f704).w
	bcs.s loc_203960
	cmpi.w #$100,d3
	bcc.s loc_203960
	addi.w #$800,d3
loc_203960:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203990
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203990
loc_203974:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203990
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203990:
	rts
	.incbin 14738, 30

sub_2039b0:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039b6:
	move.l d1,(a1)+
	dbf d0,loc_2039b6
	rts
dat_2039be:
	.incbin 14782, 16

sub_2039ce:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039da:
	tst.w (a4)
	beq.w loc_203a9a
	moveq #$2,d6
loc_2039e2:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a92
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a48
	movea.l dat_2039be(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a2c
	cmpi.w #$800,d2
	bcs.s loc_203a3e
	subi.w #$800,d2
	bra.s loc_203a3e
loc_203a2c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a3e
	cmpi.w #$100,d2
	bcc.s loc_203a3e
	addi.w #$800,d2
loc_203a3e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a6a
loc_203a48:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a6a
	.incbin 14930, 24
loc_203a6a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a88
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a8c
loc_203a88:
	bsr.w sub_203abc
loc_203a8c:
	bset.b #$7,$1(a0)
loc_203a92:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039e2
loc_203a9a:
	lea $80(a4),a4
	dbf d7,loc_2039da
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203ab4
	move.l #$0,(a2)
	rts
loc_203ab4:
	move.b #$0,-$5(a2)
	rts

sub_203abc:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203b02
	btst.l #$1,d4
	bne.w loc_203b50
loc_203ace:
	cmpi.b #$50,d5
	beq.s loc_203b00
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
	bne.s loc_203afa
	addq.w #$1,d0
loc_203afa:
	move.w d0,(a2)+
	dbf d1,loc_203ace
loc_203b00:
	rts
loc_203b02:
	btst.l #$1,d4
	bne.w loc_203b96
loc_203b0a:
	cmpi.b #$50,d5
	beq.s loc_203b4e
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
	bne.s loc_203b48
	addq.w #$1,d0
loc_203b48:
	move.w d0,(a2)+
	dbf d1,loc_203b0a
loc_203b4e:
	rts
loc_203b50:
	cmpi.b #$50,d5
	beq.s loc_203b94
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
	bne.s loc_203b8e
	addq.w #$1,d0
loc_203b8e:
	move.w d0,(a2)+
	dbf d1,loc_203b50
loc_203b94:
	rts
loc_203b96:
	cmpi.b #$50,d5
	beq.s loc_203be8
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
	bne.s loc_203be2
	addq.w #$1,d0
loc_203be2:
	move.w d0,(a2)+
	dbf d1,loc_203b96
loc_203be8:
	rts
	.incbin 15338, 92
dat_203c46:
	.incbin 15430, 262

sub_203d4c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d5e
	move.w #$0,(a1)
	rts
loc_203d5e:
	tst.w (a1)
	bne.s loc_203d68
	move.b #$1,$1(a1)
loc_203d68:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203db2
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203da4
	neg.w $10(a0)
loc_203da4:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205ade
loc_203db2:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203dd0
	cmpa.w #$d040,a0
	beq.s loc_203dd0
	tst.b ($ff1906).l
	beq.s loc_203dd0
	jmp (loc_207054).l
loc_203dd0:
	move.b $2a(a0),d0
	beq.s loc_203dfa
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203dec
	cmpi.b #$2d,d0
	bcs.s loc_203df6
	move.b #$2d,d0
	bra.s loc_203df6
loc_203dec:
	cmpi.b #$1e,d0
	bcs.s loc_203df6
	move.b #$1e,d0
loc_203df6:
	move.b d0,$2a(a0)
loc_203dfa:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203e08(pc,d0.w),d1
	jmp dat_203e08(pc,d1.w)
dat_203e08:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e12:
	tst.b ($d300).w
	bne.s loc_203e50
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e50:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e78
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e78:
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203eac:
	tst.b ($ff1506).l
	bne.s loc_203f12
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f12
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f16
	cmpi.b #$2f,d1
	bne.s loc_203f14
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f12
	tst.b $2c(a0)
	beq.s loc_203f12
	jsr (sub_207654).l
	bne.s loc_203f12
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203f0a
	moveq #$0,d0
loc_203f0a:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f12:
	rts
loc_203f14:
	rts

sub_203f16:
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

sub_203f3c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f48
	neg.w d0
loc_203f48:
	btst.b #$1,$2c(a0)
	beq.s loc_203f58
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f80
loc_203f58:
	cmpi.w #$600,d0
	bcs.s loc_203f80
	tst.w $14(a0)
	bpl.s loc_203f72
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f8e
	move.w #$e0,d1
	bra.s loc_203f8e
loc_203f72:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f8e
	move.w #$60,d1
	bra.s loc_203f8e
loc_203f80:
	cmpi.w #$a0,d1
	beq.s loc_203f8e
	bcc.s loc_203f8c
	addq.w #$2,d1
	bra.s loc_203f8e
loc_203f8c:
	subq.w #$2,d1
loc_203f8e:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f3c
	bsr.w sub_203eac
	tst.w ($ff1588).l
	beq.s loc_203fb4
	btst.b #$4,($f605).w
	beq.s loc_203fb4
	move.b #$1,($ff1906).l
	rts
loc_203fb4:
	tst.b ($f7cc).w
	bne.s loc_203fc0
	move.w ($f604).w,($f602).w
loc_203fc0:
	btst.b #$0,$2c(a0)
	beq.s loc_203fe4
	cmpi.b #$6,($ff1506).l
	bne.s loc_203fde
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203ffc
loc_203fde:
	bsr.w sub_2042c6
	bra.s loc_203ffc
loc_203fe4:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204042(pc,d0.w),d1
	jsr dat_204042(pc,d1.w)
	jsr (sub_206596).l
loc_203ffc:
	bsr.s sub_204050
	bsr.w sub_204110
	bsr.w sub_20412a
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204024
	tst.b $1c(a0)
	bne.s loc_204024
	move.b $1d(a0),$1c(a0)
loc_204024:
	bsr.w sub_2054ce
	tst.b $2c(a0)
	bmi.s loc_20403c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20403c
	jsr (sub_206b3a).l
loc_20403c:
	bsr.w sub_205384
	rts
dat_204042:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204050:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204074
	move.w $30(a0),d0
	beq.s loc_204066
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204074
loc_204066:
	btst.b #$6,$2c(a0)
	bne.s loc_204074
	jsr (sub_203904).l
loc_204074:
	tst.b ($ff151f).l
	beq.s loc_2040b8
	tst.w $32(a0)
	beq.s loc_2040b8
	subq.w #$1,$32(a0)
	bne.s loc_2040b8
	tst.b ($ff1520).l
	bne.s loc_2040b0
	tst.b ($ff1958).l
	bne.s loc_2040b0
	tst.b ($ff152e).l
	bne.s loc_2040aa
	move.w #$e,d0
	jsr (sub_205ade).l
loc_2040aa:
	jsr (sub_201b06).l
loc_2040b0:
	move.b #$0,($ff151f).l
loc_2040b8:
	tst.b ($ff1520).l
	beq.s loc_20410e
	tst.w $34(a0)
	beq.s loc_20410e
	subq.w #$1,$34(a0)
	bne.s loc_20410e
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204106
	tst.b ($ff1958).l
	bne.s loc_204106
	tst.b ($ff152e).l
	bne.s loc_204100
	move.w #$e,d0
	jsr (sub_205ade).l
loc_204100:
	jsr (sub_201b06).l
loc_204106:
	move.b #$0,($ff1520).l
loc_20410e:
	rts

sub_204110:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20412a:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204136
loc_204134:
	rts
loc_204136:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204148
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204134
loc_204148:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20418c
	bset.b #$6,$22(a0)
	bne.s loc_204134
	bsr.w sub_205de2
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204134
	bra.s loc_2041c4
loc_20418c:
	tst.w $12(a0)
	beq.s loc_204194
	bpl.s loc_204134
loc_204194:
	bclr.b #$6,$22(a0)
	beq.s loc_204134
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204134
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041c4
	move.w #$f000,$12(a0)
loc_2041c4:
	jsr (sub_207654).l
	bne.s loc_2041d8
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2041d8:
	rts

sub_2041da:
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
	bcs.s loc_2042b4
	move.l #$50000,d0
loc_2042b4:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042c6:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042ec
	tst.b ($ff152e).l
	beq.s loc_2042e2
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042ec
loc_2042e2:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20439c
loc_2042ec:
	tst.b $2a(a0)
	bne.w loc_2043aa
	tst.b ($f784).w
	beq.w loc_2043aa
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20430a
	neg.w d0
loc_20430a:
	tst.w ($f786).w
	bne.s loc_204316
	move.w #$1,($f786).w
loc_204316:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20432c
	move.b #$1,($ff1502).l
	bra.w loc_205ada
loc_20432c:
	cmpi.w #$d2,d1
	bcs.s loc_204380
	cmpi.b #$2,($ff1522).l
	beq.s loc_20437e
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204356
	move.w #$82,d0
	jsr (sub_205ade).l
	moveq #$0,d0
loc_204356:
	add.b ($f784).w,d0
	bpl.s loc_204360
	moveq #$0,d0
	bra.s loc_204368
loc_204360:
	cmpi.b #$3,d0
	bcs.s loc_204368
	moveq #$2,d0
loc_204368:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041da
	move.b #$2,($ff1522).l
loc_20437e:
	rts
loc_204380:
	cmpi.w #$5a,d1
	bcc.s loc_204398
	cmp.w d2,d0
	bcc.w loc_203e12
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204398:
	cmp.w d2,d0
	bcc.s loc_2043aa
loc_20439c:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2043aa:
	rts
	bsr.w sub_203d4c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043dc
	tst.b ($ff195b).l
	beq.s loc_2043ca
	cmpi.b #$79,$1a(a0)
	bne.s loc_204406
	bra.s loc_2043d2
loc_2043ca:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204406
loc_2043d2:
	bsr.w sub_204c6e
	jmp (sub_20384c).l
loc_2043dc:
	bsr.w sub_2044b4
	bsr.w sub_2042c6
	bsr.w sub_204d58
	bsr.w sub_204e84
	bsr.w sub_204528
	bsr.w sub_204cda
	bsr.w sub_204c6e
	jsr (sub_2038ae).l
	bsr.w sub_200c16
	bsr.w sub_204f02
loc_204406:
	rts
	tst.b ($f7c7).w
	bne.s loc_204422
	cmpi.b #$15,$1c(a0)
	beq.s loc_204422
	tst.w $12(a0)
	bmi.s loc_204422
	move.b #$0,$1c(a0)
loc_204422:
	bsr.w sub_2044b4
	bsr.w sub_2042c6
	bsr.w sub_204e42
	bsr.w sub_204b8e
	bsr.w sub_204c6e
	jsr (sub_20384c).l
	btst.b #$6,$22(a0)
	beq.s loc_20444a
	subi.w #$28,$12(a0)
loc_20444a:
	bsr.w sub_204f4c
	bsr.w sub_204f70
	rts
	bsr.w sub_2044b4
	bsr.w sub_2042c6
	bsr.w sub_204d58
	bsr.w sub_204ec0
	bsr.w sub_2049c8
	bsr.w sub_204c6e
	tst.b $2a(a0)
	bne.s loc_204478
	jsr (sub_2038ae).l
loc_204478:
	bsr.w sub_200c16
	bsr.w sub_204f02
	rts
	bsr.w sub_2044b4
	bsr.w sub_2042c6
	bsr.w sub_204e42
	bsr.w sub_204b8e
	bsr.w sub_204c6e
	jsr (sub_20384c).l
	btst.b #$6,$22(a0)
	beq.s loc_2044aa
	subi.w #$28,$12(a0)
loc_2044aa:
	bsr.w sub_204f4c
	bsr.w sub_204f70
	rts

sub_2044b4:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204520
	tst.w ($ff1506).l
	bne.s loc_204520
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204522).l,a2
loc_2044e8:
	move.b (a2)+,d0
	bmi.s loc_2044f8
	cmp.b d0,d1
	bne.s loc_2044e8
	bset.b #$1,$2c(a0)
	rts
loc_2044f8:
	bclr.b #$1,$2c(a0)
	beq.s loc_204520
	tst.w $12(a0)
	bpl.s loc_204520
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204520
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204520
	neg.w $10(a0)
loc_204520:
	rts
dat_204522:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204528:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204852
	tst.w $3e(a0)
	bne.w loc_204802
	btst.b #$2,($f602).w
	beq.s loc_204550
	bsr.w sub_2048e2
loc_204550:
	btst.b #$3,($f602).w
	beq.s loc_20455c
	bsr.w sub_204958
loc_20455c:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204802
	tst.w $14(a0)
	beq.s loc_20457c
	tst.b $2a(a0)
	beq.w loc_204802
	bra.s loc_204588
loc_20457c:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204588:
	btst.b #$3,$22(a0)
	beq.s loc_2045da
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204632
	cmpi.b #$1e,$0(a1)
	bne.s loc_2045ba
	move.b #$0,$1c(a0)
	bra.w loc_204802
loc_2045ba:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204616
	cmp.w d2,d1
	bge.s loc_204604
	bra.s loc_204632
loc_2045da:
	jsr (sub_20689e).l
	cmpi.w #$c,d1
	blt.s loc_204632
	move.w #$ab,d0
	jsr (sub_202312).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20460e
loc_204604:
	btst.b #$0,$22(a0)
	bne.s loc_20461e
	bra.s loc_204628
loc_20460e:
	cmpi.b #$3,$37(a0)
	bne.s loc_204632
loc_204616:
	btst.b #$0,$22(a0)
	bne.s loc_204628
loc_20461e:
	move.b #$32,$1c(a0)
	bra.w loc_204802
loc_204628:
	move.b #$6,$1c(a0)
	bra.w loc_204802
loc_204632:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204646
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204646:
	btst.b #$7,($f788).w
	bne.w loc_20474a
	btst.b #$6,($f788).w
	bne.w loc_20476a
	btst.b #$1,($f602).w
	bne.w loc_20476a
	andi.b #$f,($f788).w
	beq.s loc_20467e
	btst.b #$0,($f603).w
	beq.s loc_204692
	bset.b #$7,($f788).w
	bra.w loc_204826
loc_20467e:
	btst.b #$0,($f603).w
	beq.w loc_204692
	move.b #$1,($f788).w
	bra.w loc_204826
loc_204692:
	btst.b #$0,($f602).w
	beq.s loc_20470e
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046f0
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046c2
	asr.w #$1,d2
	sub.w d2,d1
loc_2046c2:
	btst.b #$0,$22(a0)
	beq.s loc_2046ce
	neg.w d0
	neg.w d1
loc_2046ce:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046e4
	cmp.w d0,d1
	ble.s loc_2046ea
	bra.s loc_2046e8
loc_2046e4:
	cmp.w d1,d0
	ble.s loc_2046ea
loc_2046e8:
	move.w d1,d0
loc_2046ea:
	move.w d0,$14(a0)
	rts
loc_2046f0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20470a
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202312).l
loc_20470a:
	bra.w loc_204826
loc_20470e:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20472e
	move.w #$ab,d0
	jsr (sub_202312).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20476a
loc_20472e:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202312).l
	bra.w loc_204802
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20474a:
	btst.b #$0,($f602).w
	beq.s loc_20476a
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204826
	addq.w #$2,($f73e).w
	bra.w loc_204826
loc_20476a:
	btst.b #$6,($f788).w
	bne.w loc_2047e6
	andi.b #$f,($f788).w
	beq.s loc_20478e
	btst.b #$1,($f603).w
	beq.s loc_2047a0
	bset.b #$6,($f788).w
	bra.w loc_204826
loc_20478e:
	btst.b #$1,($f603).w
	beq.s loc_2047a0
	move.b #$1,($f788).w
	bra.w loc_204826
loc_2047a0:
	btst.b #$1,($f602).w
	beq.s loc_204802
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047e4
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047e4
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047d6
	neg.w $14(a0)
loc_2047d6:
	move.w #$9c,d0
	jsr (sub_202312).l
	bsr.w sub_204d02
loc_2047e4:
	bra.s loc_204826
loc_2047e6:
	btst.b #$1,($f602).w
	beq.s loc_204802
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204826
	subq.w #$2,($f73e).w
	bra.s loc_204826
loc_204802:
	cmpi.w #$60,($f73e).w
	bne.s loc_20481c
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204826
	move.b #$0,($f788).w
	bra.s loc_204826
loc_20481c:
	bcc.s loc_204822
	addq.w #$4,($f73e).w
loc_204822:
	subq.w #$2,($f73e).w
loc_204826:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204852
	move.w $14(a0),d0
	beq.s loc_204852
	bmi.s loc_204846
	sub.w d5,d0
	bcc.s loc_204840
	move.w #$0,d0
loc_204840:
	move.w d0,$14(a0)
	bra.s loc_204852
loc_204846:
	add.w d5,d0
	bcc.s loc_20484e
	move.w #$0,d0
loc_20484e:
	move.w d0,$14(a0)
loc_204852:
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204870:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2048e0
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048e0
	bmi.s loc_204888
	neg.w d1
loc_204888:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20675e
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048e0
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048dc
	cmpi.b #$40,d0
	beq.s loc_2048ca
	cmpi.b #$80,d0
	beq.s loc_2048c4
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048c4:
	sub.w d1,$12(a0)
	rts
loc_2048ca:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048dc:
	add.w d1,$12(a0)
loc_2048e0:
	rts

sub_2048e2:
	tst.b $2a(a0)
	bne.s loc_204956
	move.w $14(a0),d0
	beq.s loc_2048f0
	bpl.s loc_204920
loc_2048f0:
	bset.b #$0,$22(a0)
	bne.s loc_204904
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204904:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204914
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204914
	move.w d1,d0
loc_204914:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204920:
	sub.w d4,d0
	bcc.s loc_204928
	move.w #$ff80,d0
loc_204928:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204956
	cmpi.w #$400,d0
	blt.s loc_204956
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202312).l
loc_204956:
	rts

sub_204958:
	tst.b $2a(a0)
	bne.s loc_2049c6
	move.w $14(a0),d0
	bmi.s loc_204990
	bclr.b #$0,$22(a0)
	beq.s loc_204978
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204978:
	cmp.w d6,d0
	bge.s loc_204984
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204984
	move.w d6,d0
loc_204984:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204990:
	add.w d4,d0
	bcc.s loc_204998
	move.w #$80,d0
loc_204998:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049c6
	cmpi.w #$fc00,d0
	bgt.s loc_2049c6
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202312).l
loc_2049c6:
	rts

sub_2049c8:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b12
	tst.w $3e(a0)
	bne.s loc_204a00
	btst.b #$2,($f602).w
	beq.s loc_2049f4
	bsr.w sub_204b48
loc_2049f4:
	btst.b #$3,($f602).w
	beq.s loc_204a00
	bsr.w sub_204b6c
loc_204a00:
	tst.b $2a(a0)
	beq.w loc_204aaa
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a20
	asr.w #$1,d2
	sub.w d2,d1
loc_204a20:
	btst.b #$0,$22(a0)
	beq.s loc_204a2c
	neg.w d0
	neg.w d1
loc_204a2c:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a42
	cmp.w d0,d1
	ble.s loc_204a48
	bra.s loc_204a46
loc_204a42:
	cmp.w d1,d0
	ble.s loc_204a48
loc_204a46:
	move.w d1,d0
loc_204a48:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a7c
	rts
loc_204a56:
	move.w #$ab,d0
	jsr (sub_202312).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204adc
loc_204a7c:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a56
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202312).l
	btst.b #$0,$22(a0)
	bne.s loc_204aa2
	bsr.w sub_204b6c
	bra.s loc_204aaa
loc_204aa2:
	bsr.w sub_204b48
	bra.s loc_204aaa
	dc.b $4e,$75
loc_204aaa:
	move.w $14(a0),d0
	beq.s loc_204acc
	bmi.s loc_204ac0
	sub.w d5,d0
	bcc.s loc_204aba
	move.w #$0,d0
loc_204aba:
	move.w d0,$14(a0)
	bra.s loc_204acc
loc_204ac0:
	add.w d5,d0
	bcc.s loc_204ac8
	move.w #$0,d0
loc_204ac8:
	move.w d0,$14(a0)
loc_204acc:
	tst.w $14(a0)
	bne.s loc_204b12
	move.w #$ab,d0
	jsr (sub_202312).l
loc_204adc:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204afc
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204b0c
loc_204afc:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204b0c:
	move.b #$5,$1c(a0)
loc_204b12:
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b36
	move.w #$1000,d1
loc_204b36:
	cmpi.w #$f000,d1
	bge.s loc_204b40
	move.w #$f000,d1
loc_204b40:
	move.w d1,$10(a0)
	bra.w loc_204870

sub_204b48:
	move.w $14(a0),d0
	beq.s loc_204b50
	bpl.s loc_204b5e
loc_204b50:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b5e:
	sub.w d4,d0
	bcc.s loc_204b66
	move.w #$ff80,d0
loc_204b66:
	move.w d0,$14(a0)
	rts

sub_204b6c:
	move.w $14(a0),d0
	bmi.s loc_204b80
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b80:
	add.w d4,d0
	bcc.s loc_204b88
	move.w #$80,d0
loc_204b88:
	move.w d0,$14(a0)
	rts

sub_204b8e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204bc8
	tst.w ($ff1506).l
	bne.s loc_204bc8
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204bc0
	cmpi.w #$840,$8(a0)
	bcc.s loc_204bc0
	rts
loc_204bc0:
	btst.b #$1,$2c(a0)
	bne.s loc_204bf8
loc_204bc8:
	btst.b #$2,($f602).w
	beq.s loc_204be2
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204be2
	move.w d1,d0
loc_204be2:
	btst.b #$3,($f602).w
	beq.s loc_204bf8
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204bf8
	move.w d6,d0
loc_204bf8:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204c0e
	bcc.s loc_204c0a
	addq.w #$4,($f73e).w
loc_204c0a:
	subq.w #$2,($f73e).w
loc_204c0e:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c3c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c3c
	bmi.s loc_204c30
	sub.w d1,d0
	bcc.s loc_204c2a
	move.w #$0,d0
loc_204c2a:
	move.w d0,$10(a0)
	rts
loc_204c30:
	sub.w d1,d0
	bcs.s loc_204c38
	move.w #$0,d0
loc_204c38:
	move.w d0,$10(a0)
loc_204c3c:
	rts
	.incbin 19518, 48

sub_204c6e:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204cc2
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c9c
	addi.w #$38,d0
loc_204c9c:
	cmp.w d1,d0
	bls.s loc_204cc2
loc_204ca0:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204cb0
	rts
loc_204cb0:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206dcc
	move.b #$6,$24(a0)
	rts
loc_204cc2:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ca0

sub_204cda:
	tst.b ($f7ca).w
	bne.s loc_204d00
	move.w $14(a0),d0
	bpl.s loc_204ce8
	neg.w d0
loc_204ce8:
	cmpi.w #$80,d0
	bcs.s loc_204d00
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204d00
	btst.b #$1,($f602).w
	bne.s sub_204d02
loc_204d00:
	rts

sub_204d02:
	btst.b #$2,$22(a0)
	beq.s loc_204d0c
	bra.s loc_204d3c
loc_204d0c:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d2c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d3c
loc_204d2c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d3c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d56
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d56
	move.w #$200,$14(a0)
loc_204d56:
	rts

sub_204d58:
	tst.b $2a(a0)
	beq.s loc_204d60
	rts
loc_204d60:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d72
	tst.w $14(a0)
	beq.w loc_204e38
loc_204d72:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e38
	btst.b #$3,$22(a0)
	beq.s loc_204d8e
	jsr (sub_205a64).l
	beq.s loc_204dbe
loc_204d8e:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2067c8
	cmpi.w #$6,d1
	blt.w loc_204e38
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204db4
	move.w #$380,d2
loc_204db4:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204dbe:
	jsr (sub_200816).l
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
	jsr (sub_202312).l
	btst.b #$2,$22(a0)
	bne.s loc_204e3a
	tst.b ($ff195b).l
	beq.s loc_204e1c
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e2c
loc_204e1c:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e2c:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e38:
	rts
loc_204e3a:
	bset.b #$4,$22(a0)
	rts

sub_204e42:
	tst.b $3c(a0)
	beq.s loc_204e74
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e58
	move.w #$fe00,d1
loc_204e58:
	cmp.w $12(a0),d1
	ble.s loc_204e72
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204e72
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204e72:
	rts
loc_204e74:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e82
	move.w #$f040,$12(a0)
loc_204e82:
	rts

sub_204e84:
	tst.b $2a(a0)
	bne.s loc_204ebe
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204ebe
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204ebe
	bmi.s loc_204eba
	tst.w d0
	beq.s loc_204eb8
	add.w d0,$14(a0)
loc_204eb8:
	rts
loc_204eba:
	add.w d0,$14(a0)
loc_204ebe:
	rts

sub_204ec0:
	tst.b $2a(a0)
	bne.s loc_204f00
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204f00
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204ef6
	tst.w d0
	bpl.s loc_204ef0
	asr.l #$2,d0
loc_204ef0:
	add.w d0,$14(a0)
	rts
loc_204ef6:
	tst.w d0
	bmi.s loc_204efc
	asr.l #$2,d0
loc_204efc:
	add.w d0,$14(a0)
loc_204f00:
	rts

sub_204f02:
	nop
	tst.b $38(a0)
	bne.s loc_204f44
	tst.w $3e(a0)
	bne.s loc_204f46
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f44
	move.w $14(a0),d0
	bpl.s loc_204f26
	neg.w d0
loc_204f26:
	cmpi.w #$280,d0
	bcc.s loc_204f44
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f44:
	rts
loc_204f46:
	subq.w #$1,$3e(a0)
	rts

sub_204f4c:
	btst.b #$1,$2c(a0)
	bne.s loc_204f6e
	move.b $26(a0),d0
	beq.s loc_204f6e
	bpl.s loc_204f64
	addq.b #$2,d0
	bcc.s loc_204f62
	moveq #$0,d0
loc_204f62:
	bra.s loc_204f6a
loc_204f64:
	subq.b #$2,d0
	bcc.s loc_204f6a
	moveq #$0,d0
loc_204f6a:
	move.b d0,$26(a0)
loc_204f6e:
	rts

sub_204f70:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200aae).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205054
	cmpi.b #$80,d0
	beq.w loc_2050b6
	cmpi.b #$c0,d0
	beq.w loc_205112
	bsr.w sub_206ade
	tst.w d1
	bpl.s loc_204fc2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fc2:
	bsr.w sub_206940
	tst.w d1
	bpl.s loc_204fd4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fd4:
	bsr.w sub_2067f0
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205052
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204ff2
	cmp.b d2,d0
	blt.s loc_205052
loc_204ff2:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205174
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205030
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205022
	asr.w $12(a0)
	bra.s loc_205044
loc_205022:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205030:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205044
	move.w #$fc0,$12(a0)
loc_205044:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205052
	neg.w $14(a0)
loc_205052:
	rts
loc_205054:
	bsr.w sub_206ade
	tst.w d1
	bpl.s loc_20506e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20506e:
	bsr.w sub_206998
	tst.w d1
	bpl.s loc_205088
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205086
	move.w #$0,$12(a0)
loc_205086:
	rts
loc_205088:
	tst.w $12(a0)
	bmi.s loc_2050b4
	bsr.w sub_2067f0
	tst.w d1
	bpl.s loc_2050b4
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205174
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050b4:
	rts
loc_2050b6:
	bsr.w sub_206ade
	tst.w d1
	bpl.s loc_2050c8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050c8:
	bsr.w sub_206940
	tst.w d1
	bpl.s loc_2050da
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050da:
	bsr.w sub_206998
	tst.w d1
	bpl.s loc_205110
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050fa
	move.w #$0,$12(a0)
	rts
loc_2050fa:
	move.b d3,$26(a0)
	bsr.w sub_2051e6
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205110
	neg.w $14(a0)
loc_205110:
	rts
loc_205112:
	bsr.w sub_206940
	tst.w d1
	bpl.s loc_20512c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20512c:
	bsr.w sub_206998
	tst.w d1
	bpl.s loc_205146
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205144
	move.w #$0,$12(a0)
loc_205144:
	rts
loc_205146:
	tst.w $12(a0)
	bmi.s loc_205172
	bsr.w sub_2067f0
	tst.w d1
	bpl.s loc_205172
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205174
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205172:
	rts

sub_205174:
	btst.b #$4,$22(a0)
	beq.s loc_20517e
	nop
loc_20517e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2051d8
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2051b8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2051c8
loc_2051b8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2051c8:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202312).l
loc_2051d8:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2051e6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2038ae).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205220
	subi.w #$20,$12(a0)
loc_205220:
	jsr (sub_206596).l
	bsr.w sub_20523c
	bsr.w sub_204c6e
	bsr.w sub_204110
	bsr.w sub_2054ce
	jmp (sub_203904).l

sub_20523c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206dcc
	bsr.w sub_204f70
	btst.b #$1,$22(a0)
	bne.s loc_205276
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205276:
	rts
	.incbin 21112, 268

sub_205384:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2053ac
	cmpi.b #$5,($ff1506).l
	beq.s loc_2053ac
	cmpi.b #$2,($ff1506).l
	beq.s loc_2053ac
	tst.b ($ff1506).l
	bne.w loc_20546e
loc_2053ac:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053ea
	tst.b ($ff1506).l
	bne.w loc_205470
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205470
	bra.s loc_2053f2
loc_2053ea:
	cmp.b ($f7af).w,d1
	beq.w loc_205470
loc_2053f2:
	cmp.b ($f7ac).w,d1
	beq.s loc_205422
	cmp.b ($f7ad).w,d1
	beq.s loc_205406
	bclr.b #$6,$1(a0)
	rts
loc_205406:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205488
	btst.b #$1,$22(a0)
	beq.s loc_205422
	bclr.b #$6,$1(a0)
	rts
loc_205422:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205434
	bclr.b #$6,$1(a0)
	rts
loc_205434:
	cmpi.b #$e0,d2
	bcs.s loc_205442
	bset.b #$6,$1(a0)
	rts
loc_205442:
	btst.b #$6,$1(a0)
	bne.s loc_20545e
	move.b $26(a0),d1
	beq.s loc_20546e
	cmpi.b #$80,d1
	bhi.s loc_20546e
	bset.b #$6,$1(a0)
	rts
loc_20545e:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20546e
	bclr.b #$6,$1(a0)
loc_20546e:
	rts
loc_205470:
	btst.b #$2,$22(a0)
	bne.s loc_205482
	move.w #$9c,d0
	jsr (sub_202312).l
loc_205482:
	jmp (sub_204d02).l
loc_205488:
	tst.w $12(a0)
	bmi.s loc_2054cc
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2054c0
	cmpi.w #$38,d1
	bcs.s loc_2054b8
	cmpi.w #$80,d1
	bcs.s loc_2054cc
loc_2054b0:
	bclr.b #$6,$1(a0)
	rts
loc_2054b8:
	bset.b #$6,$1(a0)
	rts
loc_2054c0:
	cmpi.w #$38,d1
	bcs.s loc_2054b0
	cmpi.w #$80,d1
	bcc.s loc_2054b8
loc_2054cc:
	rts

sub_2054ce:
	lea (dat_2057be).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054f0
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054f0:
	bsr.w sub_205760
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205568
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205536
	move.b d0,$1e(a0)

sub_20551a:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20552e
	bpl.s loc_20552e
	cmpi.b #$fd,d0
	bge.s loc_205538
loc_20552e:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205536:
	rts
loc_205538:
	addq.b #$1,d0
	bne.s loc_205548
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20552e
loc_205548:
	addq.b #$1,d0
	bne.s loc_20555c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20552e
loc_20555c:
	addq.b #$1,d0
	bne.s loc_205566
	move.b $2(a1,d1.w),$1c(a0)
loc_205566:
	rts
loc_205568:
	subq.b #$1,$1e(a0)
	bpl.s loc_205536
	addq.b #$1,d0
	bne.w loc_205622
	tst.b ($ff195b).l
	bne.w loc_2056ea
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205590
	not.b d0
loc_205590:
	btst.b #$1,$2c(a0)
	bne.s loc_20559e
	addi.b #$10,d0
	bra.s loc_2055a0
loc_20559e:
	addq.b #$8,d0
loc_2055a0:
	bpl.s loc_2055a4
	moveq #$3,d1
loc_2055a4:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205696
	move.w $14(a0),d2
	bpl.s loc_2055c2
	neg.w d2
loc_2055c2:
	btst.b #$1,$2c(a0)
	beq.s loc_2055da
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2059c0).l,a1
	bra.s loc_205604
loc_2055da:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_20599a).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205604
	lea (dat_20583e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205604
	lea (dat_205836).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205604:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205612
	moveq #$0,d2
loc_205612:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20551a
	add.b d3,$1a(a0)
	rts
loc_205622:
	addq.b #$1,d0
	bne.s loc_205692
	move.w $14(a0),d2
	bpl.s loc_20562e
	neg.w d2
loc_20562e:
	lea (dat_20591c).l,a1
	tst.b ($ff195b).l
	bne.s loc_20566c
	lea (dat_20584e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205660
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20566c
	lea (dat_2059c8).l,a1
	bra.s loc_20566c
loc_205660:
	cmpi.w #$600,d2
	bcc.s loc_20566c
	lea (dat_205846).l,a1
loc_20566c:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205676
	moveq #$0,d2
loc_205676:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20551a
loc_205692:
	addq.b #$1,d0
	bne.s loc_2056d6
loc_205696:
	move.w $14(a0),d2
	bmi.s loc_20569e
	neg.w d2
loc_20569e:
	addi.w #$800,d2
	bpl.s loc_2056a6
	moveq #$0,d2
loc_2056a6:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20592e).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056c0
	lea (dat_205856).l,a1
loc_2056c0:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20551a
loc_2056d6:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056ea:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056fc
	not.b d0
loc_2056fc:
	addi.b #$10,d0
	bpl.s loc_205704
	moveq #$0,d1
loc_205704:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205732
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205622
loc_205732:
	move.w $14(a0),d2
	bpl.s loc_20573a
	neg.w d2
loc_20573a:
	lea (dat_205916).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20574c
	lea (dat_205910).l,a1
loc_20574c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205756
	moveq #$0,d2
loc_205756:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20551a

sub_205760:
	tst.b ($ff195b).l
	beq.s loc_20576c
	move.b dat_20576e(pc,d0.w),d0
loc_20576c:
	rts
dat_20576e:
	.incbin 22382, 80
dat_2057be:
	.incbin 22462, 120
dat_205836:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20583e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205846:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20584e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205856:
	.incbin 22614, 186
dat_205910:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205916:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20591c:
	.incbin 22812, 18
dat_20592e:
	.incbin 22830, 108
dat_20599a:
	.incbin 22938, 38
dat_2059c0:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2059c8:
	.incbin 22984, 56

sub_205a00:
	tst.b (a0)
	beq.w loc_205a62
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a62
	move.b d0,(a2)
	lea (dat_231b1c).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a62
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a34:
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
loc_205a4e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a4e
	dbf d1,loc_205a34
loc_205a62:
	rts

sub_205a64:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ad8
	move.w #$98,d0
	jsr (sub_202312).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200aae).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205ac6
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205ac6:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ad8:
	rts
loc_205ada:
	move.w #$e,d0

sub_205ade:
	cmpi.w #$67,d0
	bne.s loc_205aec
	move.b #$1,($ff1958).l
loc_205aec:
	move.w d0,($a12010).l
loc_205af2:
	move.w ($a12020).l,d0
	beq.s loc_205af2
	cmp.w ($a12020).l,d0
	bne.s loc_205af2
	move.w #$0,($a12010).l
loc_205b0a:
	move.w ($a12020).l,d0
	bne.s loc_205b0a
	move.w ($a12020).l,d0
	bne.s loc_205b0a
	rts
	dc.b $00,$00

sub_205b1e:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b3a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b3a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b7a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b7c
loc_205b56:
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
loc_205b7a:
	rts
loc_205b7c:
	addq.b #$1,d0
	bne.s loc_205b8c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b56
loc_205b8c:
	addq.b #$1,d0
	bne.s loc_205ba0
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b56
loc_205ba0:
	addq.b #$1,d0
	bne.s loc_205baa
	move.b $2(a1,d1.w),$1c(a0)
loc_205baa:
	addq.b #$1,d0
	bne.s loc_205bb2
	addq.b #$2,$24(a0)
loc_205bb2:
	addq.b #$1,d0
	bne.s loc_205bc0
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205bc0:
	addq.b #$1,d0
	bne.s loc_205bc8
	addq.b #$2,$25(a0)
loc_205bc8:
	rts
	.incbin 23498, 536

sub_205de2:
	rts
	.incbin 24036, 116

sub_205e58:
	tst.b $25(a0)
	bne.s loc_205e88
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207654).l
	bne.s loc_205e88
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205e88:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e98(pc,d0.w),d0
	jmp dat_205e98(pc,d0.w)
dat_205e98:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205ec0
	andi.b #$7f,$2(a0)
loc_205ec0:
	move.l #$21d714,$4(a0)
	bsr.s sub_205e58
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205eee
	move.w #$100,$1c(a0)
loc_205eee:
	lea (dat_21d700).l,a1
	bsr.w sub_205b1e
	jmp (sub_203904).l
	tst.b $25(a0)
	beq.s loc_205f0a
	jmp (sub_2039b0).l
loc_205f0a:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f2c(pc,d0.w),d0
	jsr dat_205f2c(pc,d0.w)
	jmp (sub_203904).l
dat_205f2c:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205f5a
	andi.b #$7f,$2(a0)
loc_205f5a:
	move.l #$236ab0,$4(a0)
	tst.b $28(a0)
	bne.s loc_205f80
	bsr.w sub_205fec
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205fe2
loc_205f80:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_20689e).l
	tst.w d1
	bpl.s loc_205fde
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205fc8
	bsr.w sub_205fec
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_206012
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205fc8:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205fe2
loc_205fde:
	addq.w #$2,$c(a0)
loc_205fe2:
	lea (dat_236a94).l,a1
	bra.w sub_205b1e

sub_205fec:
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

sub_206012:
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
	bra.s loc_205fe2
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205fe2
	.incbin 24654, 582
dat_206294:
	.incbin 25236, 254
loc_206392:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063e0
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063e2(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063b6:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063b6
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063e0:
	rts
dat_2063e2:
	.incbin 25570, 410
dat_20657c:
	.incbin 25980, 26

sub_206596:
	rts
loc_206598:
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
	bne.s loc_206652
	move.b ($ff1593).l,($ff195b).l
loc_206652:
	tst.b ($ff1522).l
	bpl.s loc_206668
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206668:
	rts

sub_20666a:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206598
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
	bne.s loc_206724
	move.b ($ff1591).l,($ff195b).l
loc_206724:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206746
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206746:
	tst.b ($ff1522).l
	bpl.s loc_20675c
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20675c:
	rts

sub_20675e:
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
	bpl.s loc_20679a
	move.b d1,d0
	bpl.s loc_206794
	subq.b #$1,d0
loc_206794:
	addi.b #$20,d0
	bra.s loc_2067a4
loc_20679a:
	move.b d1,d0
	bpl.s loc_2067a0
	addq.b #$1,d0
loc_2067a0:
	addi.b #$1f,d0
loc_2067a4:
	andi.b #$c0,d0
	beq.w loc_206874
	cmpi.b #$80,d0
	beq.w loc_206a10
	andi.b #$38,d1
	bne.s loc_2067bc
	addq.w #$8,d2
loc_2067bc:
	cmpi.b #$40,d0
	beq.w loc_206ae6
	bra.w loc_206948

sub_2067c8:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206a6e
	cmpi.b #$80,d0
	beq.w sub_206998
	cmpi.b #$c0,d0
	beq.w loc_2068d8

sub_2067f0:
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
	jsr (sub_20116c).l
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
	jsr (sub_20116c).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206854:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206862
	move.b ($f768).w,d3
	exg d0,d1
loc_206862:
	btst.l #$0,d3
	beq.s loc_20686a
	move.b d2,d3
loc_20686a:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206874:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20116c).l
	move.b #$0,d2
loc_206890:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20689c
	move.b d2,d3
loc_20689c:
	rts

sub_20689e:
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
	jsr (sub_20116c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2068d6
	move.b #$0,d3
loc_2068d6:
	rts
loc_2068d8:
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
	jsr (sub_2012dc).l
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
	jsr (sub_2012dc).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206854

sub_206940:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206948:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012dc).l
	move.b #$c0,d2
	bra.w loc_206890
	.incbin 26984, 46
	rts

sub_206998:
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
	jsr (sub_20116c).l
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
	jsr (sub_20116c).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206854

sub_206a08:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a10:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20116c).l
	move.b #$80,d2
	bra.w loc_206890
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
	jsr (sub_20116c).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a6c
	move.b #$80,d3
loc_206a6c:
	rts
loc_206a6e:
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
	jsr (sub_2012dc).l
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
	jsr (sub_2012dc).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206854

sub_206ade:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ae6:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012dc).l
	move.b #$40,d2
	bra.w loc_206890
	.incbin 27402, 48

sub_206b3a:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206b5e
	addi.w #$c,d3
	moveq #$a,d5
loc_206b5e:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206b6c:
	tst.b $1(a1)
	bpl.s loc_206b78
	move.b $20(a1),d0
	bne.s loc_206b84
loc_206b78:
	lea $40(a1),a1
	dbf d6,loc_206b6c
	moveq #$0,d0
	rts
loc_206b84:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206eea).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206bac
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206bb2
	bra.w loc_206b78
loc_206bac:
	cmp.w d4,d0
	bhi.w loc_206b78
loc_206bb2:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206bca
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206bd0
	bra.w loc_206b78
loc_206bca:
	cmp.w d5,d0
	bhi.w loc_206b78
loc_206bd0:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206c44
	cmpi.b #$c0,d1
	beq.w loc_206e24
	tst.b d1
	bmi.w loc_206d0e
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206c08
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206c06
	addq.b #$2,$24(a1)
loc_206c06:
	rts
loc_206c08:
	tst.w $12(a0)
	bpl.s loc_206c32
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206c42
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206c42
	addq.b #$4,$25(a1)
	rts
loc_206c32:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206c42
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206c42:
	rts

sub_206c44:
	tst.b ($ff1521).l
	bne.s loc_206c5e
	tst.b ($ff151f).l
	bne.s loc_206c5e
	cmpi.b #$2,$1c(a0)
	bne.w loc_206d0e
loc_206c5e:
	tst.b $21(a1)
	beq.s loc_206c88
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206c86
	bset.b #$7,$22(a1)
loc_206c86:
	rts
loc_206c88:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206ca0
	moveq #$6,d0
loc_206ca0:
	move.w d0,$3e(a1)
	move.w dat_206d00(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206cba
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206cba:
	bsr.w sub_20abd2
	move.w #$96,d0
	jsr (sub_202312).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206cf0
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206cf8
	neg.w $12(a0)
	rts
loc_206cf0:
	addi.w #$100,$12(a0)
	rts
loc_206cf8:
	subi.w #$100,$12(a0)
	rts
dat_206d00:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206d08:
	bset.b #$7,$22(a1)
loc_206d0e:
	tst.b ($ff1521).l
	bne.s loc_206d1e
	tst.b ($ff151f).l
	beq.s loc_206d22
loc_206d1e:
	moveq #$ffffffff,d0
	rts
loc_206d22:
	nop
	tst.w $30(a0)
	bne.s loc_206d1e
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206d58
	tst.w ($ff1512).l
	beq.w loc_206dc2
	jsr (sub_207654).l
	bne.s loc_206d58
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206d58:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206d6e
	move.b #$0,($ff156f).l
loc_206d6e:
	move.b #$4,$24(a0)
	bsr.w sub_205174
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206d9e
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206d9e:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206dac
	neg.w $10(a0)
loc_206dac:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206dc2:
	tst.w ($ff1588).l
	bne.w loc_206d58

sub_206dcc:
	tst.w ($ff1906).l
	bne.s loc_206e20
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205174
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202312).l
loc_206e20:
	moveq #$ffffffff,d0
	rts
loc_206e24:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206ed6
	cmpi.b #$b,d1
	beq.w loc_206ea0
	cmpi.b #$c,d1
	beq.w loc_206ea4
	cmpi.b #$17,d1
	beq.w loc_206ed6
	cmpi.b #$21,d1
	beq.w loc_206ed6
	cmpi.b #$23,d1
	beq.w loc_206ed6
	cmpi.b #$2f,d1
	beq.w loc_206edc
	cmpi.b #$3a,d1
	beq.w loc_206edc
	cmpi.b #$3b,d1
	beq.w loc_206edc
	cmpi.b #$1,($f7aa).w
	bne.s loc_206e9e
	cmpi.b #$3c,d1
	blt.s loc_206e9e
	cmpi.b #$3f,d1
	bgt.s loc_206e9e
	bsr.w sub_206c44
	tst.b $20(a1)
	bne.s loc_206e96
	addq.b #$3,$21(a1)
loc_206e96:
	clr.b $20(a1)
	bra.w loc_206ed6
loc_206e9e:
	rts
loc_206ea0:
	bra.w loc_206d08
loc_206ea4:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206ed2
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206ebe
	subi.w #$10,d0
loc_206ebe:
	sub.w d2,d0
	bcc.s loc_206eca
	addi.w #$18,d0
	bcs.s loc_206ece
	bra.s loc_206ed2
loc_206eca:
	cmp.w d4,d0
	bhi.s loc_206ed2
loc_206ece:
	bra.w loc_206d0e
loc_206ed2:
	bra.w sub_206c44
loc_206ed6:
	addq.b #$1,$21(a1)
	rts
loc_206edc:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ee8
	addq.b #$1,$21(a1)
loc_206ee8:
	rts
dat_206eea:
	.incbin 28394, 362
loc_207054:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20706a
	move.l #$4000,(dat_2071e4).l
	bra.s loc_20708a
loc_20706a:
	addi.l #$2000,(dat_2071e4).l
	cmpi.l #$80000,(dat_2071e4).l
	bls.s loc_20708a
	move.l #$80000,(dat_2071e4).l
loc_20708a:
	move.l (dat_2071e4).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20709c
	sub.l d0,$c(a0)
loc_20709c:
	btst.b #$1,($f604).w
	beq.s loc_2070a8
	add.l d0,$c(a0)
loc_2070a8:
	btst.b #$2,($f604).w
	beq.s loc_2070b4
	sub.l d0,$8(a0)
loc_2070b4:
	btst.b #$3,($f604).w
	beq.s loc_2070c0
	add.l d0,$8(a0)
loc_2070c0:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f84).l
	move.w (a1),($ff194e).l
	lea (dat_2071e8).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207102
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2070fc
	move.b #$0,d1
loc_2070fc:
	move.b d1,($ff1904).l
loc_207102:
	btst.b #$7,($f605).w
	beq.s loc_207122
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20711c
	add.b (a2),d1
loc_20711c:
	move.b d1,($ff1904).l
loc_207122:
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
	beq.s loc_2071ae
	bsr.w sub_207654
	bne.s loc_2071ae
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
loc_2071ae:
	btst.b #$4,($f605).w
	beq.s loc_2071de
	move.b #$0,($ff1906).l
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2071de:
	jmp (sub_203904).l
dat_2071e4:
	dc.b $00,$00,$40,$00
dat_2071e8:
	.incbin 29160, 602

sub_207442:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207450:
	clr.l (a2)+
	dbf d0,loc_207450
	rts

sub_207458:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207466(pc,d0.w),d0
	jmp dat_207466(pc,d0.w)
dat_207466:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207706).l,a0
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
	bcc.s loc_2074a4
	moveq #$0,d6
loc_2074a4:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2074ac:
	cmp.w (a0),d6
	bls.s loc_2074be
	tst.b $4(a0)
	bpl.s loc_2074ba
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074ba:
	addq.w #$8,a0
	bra.s loc_2074ac
loc_2074be:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2074de
loc_2074cc:
	cmp.w (a0),d6
	bls.s loc_2074de
	tst.b $4(a0)
	bpl.s loc_2074da
	addq.b #$1,$1(a2)
loc_2074da:
	addq.w #$8,a0
	bra.s loc_2074cc
loc_2074de:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2075c8
	bge.s loc_20756e
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20754a
loc_207518:
	cmp.w -$8(a0),d6
	bge.s loc_20754a
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20752e
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20752e:
	bsr.w sub_2075ec
	bne.s loc_207538
	subq.w #$8,a0
	bra.s loc_207518
loc_207538:
	tst.b $4(a0)
	bpl.s loc_207548
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207548:
	addq.w #$8,a0
loc_20754a:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207556:
	cmp.w -$8(a0),d6
	bgt.s loc_207568
	tst.b -$4(a0)
	bpl.s loc_207564
	subq.b #$1,(a2)
loc_207564:
	subq.w #$8,a0
	bra.s loc_207556
loc_207568:
	move.l a0,($f770).w
	rts
loc_20756e:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207582:
	cmp.w (a0),d6
	bls.s loc_2075a4
	tst.b $4(a0)
	bpl.s loc_207590
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207590:
	bsr.w sub_2075ec
	beq.s loc_207582
	tst.b $4(a0)
	bpl.s loc_2075a4
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2075a4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2075c4
loc_2075b2:
	cmp.w (a0),d6
	bls.s loc_2075c4
	tst.b $4(a0)
	bpl.s loc_2075c0
	addq.b #$1,$1(a2)
loc_2075c0:
	addq.w #$8,a0
	bra.s loc_2075b2
loc_2075c4:
	move.l a0,($f774).w
loc_2075c8:
	rts

sub_2075ca:
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

sub_2075ec:
	bsr.s sub_2075ca
	beq.s loc_2075fe
	tst.b $4(a0)
	bpl.s loc_207604
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207604
loc_2075fe:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207604:
	bsr.w sub_207654
	bne.s loc_207652
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
	bpl.s loc_207634
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207634:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207646
	nop
	nop
	nop
	nop
loc_207646:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207652:
	rts

sub_207654:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20765c:
	tst.b (a1)
	beq.s loc_207668
	lea $40(a1),a1
	dbf d0,loc_20765c
loc_207668:
	rts

sub_20766a:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207688
loc_20767c:
	tst.b (a1)
	beq.s loc_207688
	lea $40(a1),a1
	dbf d0,loc_20767c
loc_207688:
	rts
loc_20768a:
	move.w $8(a0),d0
loc_20768e:
	tst.b $1(a0)
	bmi.s loc_2076f8
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2076f8
loc_2076ac:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2076ee
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2076e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2076de
	moveq #$0,d1
	bra.s loc_2076e6
loc_2076de:
	cmpi.w #$3,d1
	bcs.s loc_2076e6
	moveq #$2,d1
loc_2076e6:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2076ee:
	jsr (sub_2039b0).l
	moveq #$1,d0
	rts
loc_2076f8:
	btst.b #$7,($ff152e).l
	bne.s loc_2076ac
	moveq #$0,d0
	rts
dat_207706:
	.incbin 30470, 4474
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bset.b #$6,$2(a1,d0.w)
	rts
	.incbin 34968, 992

sub_208c78:
	btst.b #$3,$22(a0)
	beq.s loc_208ce8
	btst.b #$3,$22(a1)
	beq.s loc_208ce8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208ce8
	tst.b $2a(a1)
	beq.s loc_208caa
	move.w #$ab,d0
	jsr (sub_202312).l
loc_208caa:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208cd6
	cmpi.b #$17,$1c(a1)
	beq.s loc_208cd6
	bclr.b #$0,$2c(a1)
loc_208cd6:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ce8
	bclr.b #$1,$22(a1)
loc_208ce8:
	rts

sub_208cea:
	cmpi.b #$4,$24(a1)
	bne.s loc_208cfc
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208cfc:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208d5c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d1e
	bclr.b #$3,$22(a0)
	bra.w sub_208c78
loc_208d1e:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208d5c
	tst.b ($ff195b).l
	beq.s loc_208d46
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208d56
loc_208d46:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208d56:
	move.b #$0,$1c(a1)
loc_208d5c:
	bset.b #$3,$22(a1)
	beq.s loc_208d7e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208db6
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208d7e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208daa
	cmpi.b #$2,$24(a0)
	beq.s loc_208db0
loc_208daa:
	move.w $10(a1),$14(a1)
loc_208db0:
	bclr.b #$1,$22(a1)
loc_208db6:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208dc0:
	move.b #$1,$25(a0)

sub_208dc6:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20907a
	btst.b #$6,$2c(a1)
	bne.w loc_20907a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20907a
	tst.b $0(a1)
	beq.w loc_20907a
	tst.b $1(a0)
	bpl.w loc_20907a
	tst.b ($ff1906).l
	bne.w loc_20907a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20907a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20907a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e34
	btst.b #$3,$22(a0)
	bne.s loc_208e46
	bra.w loc_20907a
loc_208e34:
	cmpi.b #$1,$25(a0)
	bne.s loc_208e46
	tst.w $12(a1)
	beq.s loc_208e46
	bmi.w loc_20907a
loc_208e46:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20907a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20907a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208e7c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208e7c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208e8a
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208e8a:
	cmp.w d4,d5
	bcs.w loc_208f1e
	cmpi.b #$1,$25(a0)
	beq.w loc_20907a
	cmpi.b #$a,$0(a0)
	bne.s loc_208eac
	btst.b #$1,$22(a1)
	bne.w loc_20907a
loc_208eac:
	cmpi.b #$4,d5
	bls.w loc_20907a
	bsr.w sub_2090ca
	move.l d0,-(a7)
	bsr.w sub_208c78
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208ed6
	tst.w $10(a1)
	beq.s loc_208f06
	bpl.s loc_208ede
	bra.s loc_208f06
loc_208ed6:
	tst.w $10(a1)
	beq.s loc_208f06
	bpl.s loc_208f06
loc_208ede:
	bsr.w sub_20908a
	btst.b #$1,$22(a1)
	bne.s loc_208efc
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208efc:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208f06:
	bsr.w sub_209140
	bsr.w sub_20908a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208f1e:
	cmpi.b #$19,$0(a0)
	bne.s loc_208f30
	btst.b #$2,$22(a1)
	bne.w loc_20907a
loc_208f30:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208f46
	bmi.w loc_209016
loc_208f46:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208f58
	tst.w $12(a1)
	beq.s loc_208f58
	bmi.w loc_20907a
loc_208f58:
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
	beq.s loc_208fa4
	bpl.s loc_208f84
	neg.b d0
loc_208f84:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20675e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208fa4
	tst.w $10(a0)
	bpl.s loc_208fa0
	neg.w d1
loc_208fa0:
	add.w d1,$8(a1)
loc_208fa4:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_20900e
	tst.w $12(a0)
	bmi.s loc_208fe2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2067f0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208fe2
	add.w d1,$c(a1)
	bra.w loc_20907a
loc_208fe2:
	tst.w $12(a0)
	bpl.s loc_20900e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a08).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20900e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dcc).l
	movem.l (a7)+,a0-a1
	bra.s loc_20907a
loc_20900e:
	bsr.w sub_208cea
	moveq #$1,d0
	rts
loc_209016:
	cmpi.b #$1,$25(a0)
	beq.s loc_20907a
	cmpi.b #$9,$0(a0)
	beq.s loc_20907a
	cmpi.b #$a,$0(a0)
	bne.s loc_209040
	cmpi.b #$2,$25(a0)
	beq.s loc_209060
	btst.b #$1,$1(a0)
	bne.s loc_209060
	bra.s loc_20907a
loc_209040:
	btst.b #$1,$22(a1)
	bne.s loc_209060
	tst.w $12(a0)
	beq.s loc_209060
	bmi.s loc_209060
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dcc).l
	movem.l (a7)+,a0-a1
loc_209060:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209140
	bsr.w sub_208c78
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20907a:
	bsr.w sub_209140
	bsr.w sub_208c78
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_20908a:
	tst.w $10(a0)
	beq.s loc_2090c8
	cmpi.b #$a,$0(a0)
	beq.s loc_2090c8
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2090a4
	neg.b d0
loc_2090a4:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20675e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090c8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dcc).l
	movem.l (a7)+,a0-a1
loc_2090c8:
	rts

sub_2090ca:
	cmpi.b #$a,$0(a0)
	bne.s loc_2090da
	move.b #$0,$20(a1)
	rts
loc_2090da:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20912e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20913e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2090fc
	tst.w $10(a2)
	beq.s loc_20913e
loc_2090fc:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_20910e
	cmp.w $8(a2),d1
	bcs.s loc_20913e
	bra.s loc_209114
loc_20910e:
	cmp.w $8(a2),d1
	bcc.s loc_20913e
loc_209114:
	cmpi.b #$15,$0(a0)
	beq.s loc_20913e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dcc).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20912e:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20913e:
	rts

sub_209140:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20915a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20915a
	move.b #$0,$20(a1)
loc_20915a:
	rts
	.incbin 37212, 594
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093c8(pc,d0.w),d0
	jsr dat_2093c8(pc,d0.w)
	jsr (sub_203904).l
	jmp (loc_20768a).l
dat_2093c8:
	dc.b $00,$04,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$209418,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$0,$1a(a0)
	moveq #$b,d0
	jsr (sub_20cbec).l
	tst.b $1(a0)
	bpl.s loc_209416
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208dc6).l
loc_209416:
	rts
	.incbin 37912, 268
loc_209524:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209532(pc,d0.w),d0
	jmp dat_209532(pc,d0.w)
dat_209532:
	.incbin 38194, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209524
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209588
	tst.b $1(a0)
	bpl.s loc_209590
loc_209588:
	move.w dat_2095e2(pc,d0.w),d1
	jsr dat_2095e2(pc,d1.w)
loc_209590:
	bsr.w sub_203904
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2095c2
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2095c2:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039b0
	rts
dat_2095e2:
	.incbin 38370, 26
	addq.b #$2,$24(a0)
	move.l #$209964,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209652
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20996a,$4(a0)
	bra.s loc_209694
loc_209652:
	btst.l #$3,d0
	beq.s loc_209680
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2099b4,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cbec).l
	move.l (a7)+,d0
	bra.s loc_209694
loc_209680:
	btst.b #$1,$1(a0)
	beq.s loc_209694
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209694:
	btst.l #$1,d0
	beq.s loc_2096a0
	bset.b #$5,$2(a0)
loc_2096a0:
	andi.w #$2,d0
	move.w dat_2096ac(pc,d0.w),$30(a0)
	rts
dat_2096ac:
	dc.b $f0,$00,$f6,$00

sub_2096b0:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208dc6).l
	tst.b $1(a0)
	bpl.s loc_2096cc
	lea ($d000).w,a1
	bsr.s sub_2096b0
	bne.s loc_2096ce
loc_2096cc:
	rts
loc_2096ce:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202312).l
	lea (dat_209956).l,a1
	bra.w sub_205b1e
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_209722:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208dc6).l
	tst.b $1(a0)
	bpl.s loc_209744
	lea ($d000).w,a1
	bsr.s sub_209722
	btst.b #$5,$22(a0)
	bne.s loc_209746
loc_209744:
	rts
loc_209746:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209774
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209774:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_20978e
	move.b #$0,$1c(a1)
loc_20978e:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202312).l
	.incbin 38824, 430
dat_209956:
	.incbin 39254, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a50(pc,d0.w),d1
	jmp dat_209a50(pc,d1.w)
dat_209a50:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209a5a:
	.incbin 39514, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209ab2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209aaa
	moveq #$0,d1
	bra.s loc_209ab2
loc_209aaa:
	cmpi.w #$3,d1
	bcs.s loc_209ab2
	moveq #$2,d1
loc_209ab2:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209ace
	moveq #$6,d1
loc_209ace:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209a5a).l,a1
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
	beq.s loc_209b1e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b16
	moveq #$0,d0
	bra.s loc_209b1e
loc_209b16:
	cmpi.w #$3,d0
	bcs.s loc_209b1e
	moveq #$2,d0
loc_209b1e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209bec
	dbf d0,loc_209b1e
	bclr.b #$7,(a2)
	bra.s loc_209b74
loc_209b30:
	swap d1
	lea $1(a2),a3
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
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209bec
	dbf d0,loc_209b5c
	bclr.b #$7,(a2)
	bsr.w sub_20766a
	bne.w loc_209bf8
loc_209b74:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209ebe,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209bca
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209bca
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209bca:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209bec:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209b30
loc_209bf8:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209c1e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209c16
	moveq #$0,d0
	bra.s loc_209c1e
loc_209c16:
	cmpi.w #$3,d0
	bcs.s loc_209c1e
	moveq #$2,d0
loc_209c1e:
	lea $1(a2),a3
loc_209c22:
	btst.b #$0,-(a3)
	bne.w sub_2039b0
	dbf d0,loc_209c22
	tst.b $1(a0)
	bmi.s loc_209c52
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209ccc
loc_209c52:
	tst.w ($ff190e).l
	bne.s loc_209c62
	move.b ($ff1913).l,$1a(a0)
loc_209c62:
	bra.w sub_203904
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209cd0
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209cb2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209caa
	moveq #$0,d1
	bra.s loc_209cb2
loc_209caa:
	cmpi.w #$3,d1
	bcs.s loc_209cb2
	moveq #$2,d1
loc_209cb2:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209eb6).l,a1
	bsr.w sub_205b1e
	bra.w sub_203904
loc_209ccc:
	bra.w sub_2039b0

sub_209cd0:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209d20
	bset.b #$1,($ff150d).l
	beq.s loc_209d0a
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209d20
	bset.b #$2,($ff150d).l
	bne.s loc_209d20
loc_209d0a:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205ade).l
loc_209d20:
	jmp (sub_202312).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d34(pc,d0.w),d1
	jmp dat_209d34(pc,d1.w)
dat_209d34:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209d50
	move.w d0,d5
loc_209d50:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209d60
loc_209d58:
	bsr.w sub_207654
	bne.w loc_209e16
loc_209d60:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209ebe,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209dbe
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209dbe
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209dbe:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209e06
	move.w d4,d0
	jsr (sub_200816).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209e06
	subi.w #$80,d4
	bcc.s loc_209e06
	move.w #$288,d4
loc_209e06:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209d58
loc_209e16:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202312).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2038ae
	addi.w #$18,$12(a0)
	bmi.s loc_209e76
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209e76
	jsr (sub_20689e).l
	tst.w d1
	bpl.s loc_209e76
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209e76:
	tst.b ($ff1916).l
	beq.s loc_209eb2
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209eb2
	bra.w sub_203904
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209cd0
	lea (dat_209eb6).l,a1
	bsr.w sub_205b1e
	bra.w sub_203904
loc_209eb2:
	bra.w sub_2039b0
dat_209eb6:
	.incbin 40630, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a076(pc,d0.w),d0
	jsr dat_20a076(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2039b0
	rts
dat_20a076:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a1be,$4(a0)
	moveq #$5,d0
	jsr (sub_20cbec).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a18a
	tst.b ($ff152e).l
	beq.s loc_20a0f0
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a0d6
	btst.b #$3,$22(a0)
	bne.s loc_20a0f6
	bra.s loc_20a0f0
loc_20a0d6:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a0f0
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a0f0:
	jmp (sub_203904).l
loc_20a0f6:
	addq.b #$2,$24(a0)
	bsr.w sub_20a18a
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a116
	jmp (sub_2039b0).l
loc_20a116:
	jmp (sub_203904).l
	.incbin 41244, 110

sub_20a18a:
	lea ($d000).w,a1
	bsr.w sub_20a192

sub_20a192:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208dc0).l
	.incbin 41376, 106
loc_20a20a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a238(pc,d0.w),d0
	jsr dat_20a238(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a236
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a230
	btst.b #$0,($ff1505).l
	bne.s loc_20a236
loc_20a230:
	jmp (sub_203904).l
loc_20a236:
	rts
dat_20a238:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a812,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a26c
	move.b #$13,$1a(a0)
loc_20a26c:
	rts
loc_20a26e:
	tst.b ($ff0f01).l
	beq.s loc_20a27c
	jmp (sub_2039b0).l
loc_20a27c:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a20a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2a0(pc,d0.w),d0
	jsr dat_20a2a0(pc,d0.w)
	jsr (sub_203904).l
	jmp (loc_20768a).l
dat_20a2a0:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a812,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a2ee
	tst.b $29(a0)
	bne.s loc_20a2ee
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a2ee:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a3ba
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a316
	addq.b #$2,$1a(a0)
loc_20a316:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a32a
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a32a:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a390
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a35c
	tst.b $29(a0)
	beq.s loc_20a354
	tst.b ($ff1956).l
	beq.s loc_20a390
	bra.s loc_20a35c
loc_20a354:
	tst.b ($ff1956).l
	bne.s loc_20a390
loc_20a35c:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a3ba
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a38a
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a38a:
	jsr (sub_205ade).l
loc_20a390:
	rts
	.incbin 41874, 40

sub_20a3ba:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a3f2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a3ea
	moveq #$0,d1
	bra.s loc_20a3f2
loc_20a3ea:
	cmpi.w #$3,d1
	bcs.s loc_20a3f2
	moveq #$2,d1
loc_20a3f2:
	add.w d1,d0
	rts

sub_20a3f6:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a418
	tst.b ($ff1956).l
	beq.s loc_20a410
	tst.b $29(a0)
	bne.s loc_20a418
	rts
loc_20a410:
	tst.b $29(a0)
	beq.s loc_20a418
	rts
loc_20a418:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208dc6).l
	tst.b $28(a0)
	bne.s loc_20a43a
	tst.b ($ff0f01).l
	beq.s loc_20a43a
	jmp (loc_20768a).l
loc_20a43a:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a26e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a452(pc,d0.w),d1
	jmp dat_20a452(pc,d1.w)
dat_20a452:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a812,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a49c
	tst.b $29(a0)
	bne.s loc_20a49c
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a49c:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a3ba
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a4c8
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a4c8:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a522
	move.b $25(a0),d0
	beq.s loc_20a502
	bsr.w sub_20384c
	jsr (sub_20689e).l
	tst.w d1
	bpl.w loc_20a510
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a510
loc_20a502:
	tst.b $1(a0)
	bpl.s loc_20a510
	lea ($d000).w,a1
	bsr.w sub_20a3f6
loc_20a510:
	tst.w ($ff190e).l
	bne.s loc_20a522
	lea (dat_20a78a).l,a1
	bsr.w sub_205b1e
loc_20a522:
	bsr.w sub_203904
	jmp (loc_20768a).l
	.incbin 42284, 606
dat_20a78a:
	.incbin 42890, 586
loc_20a9d4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a9e8(pc,d0.w),d0
	jsr dat_20a9e8(pc,d0.w)
	jmp (sub_203904).l
dat_20a9e8:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20aa28,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20aa22
	jmp (sub_2039b0).l
loc_20aa22:
	subq.w #$2,$c(a0)
	rts
	.incbin 43560, 82
	tst.b $28(a0)
	bmi.w loc_20a9d4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa90(pc,d0.w),d0
	jmp dat_20aa90(pc,d0.w)
dat_20aa90:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ab2a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20aac0
	move.b #$3,$1a(a0)
	bra.s loc_20aae0
loc_20aac0:
	tst.w ($ff1588).l
	beq.s loc_20aace
	move.b #$2,$1a(a0)
loc_20aace:
	tst.b $28(a0)
	beq.s loc_20aae0
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20aae0:
	tst.b $28(a0)
	bne.s loc_20ab24
	tst.b $29(a0)
	beq.s loc_20ab10
	tst.w ($ff1512).l
	beq.s loc_20aafc
	bclr.b #$5,$2(a0)
	bra.s loc_20ab24
loc_20aafc:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ab24
	eori.b #$20,$2(a0)
	bra.s loc_20ab24
loc_20ab10:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ab24
	move.b #$2,$1a(a0)
loc_20ab24:
	jmp (sub_203904).l
	.incbin 43818, 168

sub_20abd2:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20abee
	move.l d1,(a3)
loc_20abee:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ac18
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205ade).l
loc_20ac18:
	rts
loc_20ac1a:
	tst.w ($ff1588).l
	beq.s loc_20ac70
	bsr.w sub_20ae6c
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
	lea (dat_20afcc).l,a2
	moveq #$2,d6
	bsr.w sub_20b024
	bra.w loc_20acca
loc_20ac70:
	tst.b ($ff1511).l
	beq.s loc_20ac94
	bpl.s loc_20ac7e
	bsr.w sub_20ae16
loc_20ac7e:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20af06
loc_20ac94:
	tst.b ($ff150f).l
	beq.s loc_20acca
	bpl.s loc_20aca2
	bsr.w sub_20ae02
loc_20aca2:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20acc6
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20acc6:
	bsr.w sub_20aefc
loc_20acca:
	tst.w ($ff1588).l
	bne.w loc_20ad76
	tst.b ($ff1510).l
	beq.w loc_20ad76
	tst.w ($f63a).w
	bne.w loc_20ad76
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20add4
	tst.b ($f7cc).w
	bne.s loc_20ad20
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ad20
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ad20
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ad20
	move.b #$9,(a1)
loc_20ad20:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b012
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b01c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ad72
	move.w #$63,d1
loc_20ad72:
	bsr.w sub_20b01c
loc_20ad76:
	tst.b ($ff150e).l
	beq.s loc_20ad88
	clr.b ($ff150e).l
	bsr.w sub_20aff2
loc_20ad88:
	tst.b ($f7d6).w
	beq.s loc_20add2
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ada8
	move.l #$6d400001,d0
loc_20ada8:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ae8a
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20adc8
	move.l #$6e800001,d0
loc_20adc8:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ae8a
loc_20add2:
	rts
loc_20add4:
	btst.b #$7,($ff152e).l
	bne.s loc_20ae00
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206dcc
	move.b #$1,($ff150c).l
loc_20ae00:
	rts

sub_20ae02:
	move.l #$73600002,($c00004).l
	lea dat_20ae68(pc),a2
	move.w #$2,d2
	bra.s loc_20ae32

sub_20ae16:
	lea ($c00000).l,a6
	bsr.w sub_20aff2
	move.l #$70600002,($c00004).l
	lea dat_20ae60(pc),a2
	move.w #$6,d2
loc_20ae32:
	lea (dat_236456).l,a1
loc_20ae38:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ae54
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ae48:
	move.l (a3)+,(a6)
	dbf d1,loc_20ae48
loc_20ae4e:
	dbf d2,loc_20ae38
	rts
loc_20ae54:
	move.l #$0,(a6)
	dbf d1,loc_20ae54
	bra.s loc_20ae4e
dat_20ae60:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ae68:
	dc.b $ff,$ff,$00,$00

sub_20ae6c:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20afe8
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20afe8

sub_20ae8a:
	lea (dat_20afc4).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20ae9a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae9e:
	sub.l d3,d1
	bcs.s loc_20aea6
	addq.w #$1,d2
	bra.s loc_20ae9e
loc_20aea6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aeb0
	move.w #$1,d4
loc_20aeb0:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20aebc
	tst.w d6
	bne.s loc_20aeee
loc_20aebc:
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
loc_20aee2:
	addi.l #$400000,d0
	dbf d6,loc_20ae9a
	rts
loc_20aeee:
	moveq #$f,d5
loc_20aef0:
	move.l #$0,(a6)
	dbf d5,loc_20aef0
	bra.s loc_20aee2

sub_20aefc:
	lea (dat_20afcc).l,a2
	moveq #$2,d6
	bra.s loc_20af0e

sub_20af06:
	lea (dat_20afc0).l,a2
	moveq #$5,d6
loc_20af0e:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20af16:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af1a:
	sub.l d3,d1
	bcs.s loc_20af22
	addq.w #$1,d2
	bra.s loc_20af1a
loc_20af22:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af2c
	move.w #$1,d4
loc_20af2c:
	tst.w d4
	beq.s loc_20af5a
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
loc_20af5a:
	addi.l #$400000,d0
	dbf d6,loc_20af16
	rts
	.incbin 44902, 32
loc_20af86:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af8a:
	sub.l d3,d1
	bcs.s loc_20af92
	addq.w #$1,d2
	bra.s loc_20af8a
loc_20af92:
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
	dbf d6,loc_20af86
	rts
dat_20afc0:
	dc.b $00,$01,$86,$a0
dat_20afc4:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20afcc:
	dc.b $00,$00,$00,$64
dat_20afd0:
	dc.b $00,$00,$00,$0a
dat_20afd4:
	dc.b $00,$00,$00,$01
dat_20afd8:
	.incbin 45016, 16

sub_20afe8:
	moveq #$3,d6
	lea (dat_20afd8).l,a2
	bra.s sub_20b024

sub_20aff2:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b008
	moveq #$9,d1
loc_20b008:
	lea (dat_20afd4).l,a2
	moveq #$0,d6
	bra.s sub_20b024

sub_20b012:
	lea (dat_20afd4).l,a2
	moveq #$0,d6
	bra.s sub_20b024

sub_20b01c:
	lea (dat_20afd0).l,a2
	moveq #$1,d6

sub_20b024:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20b02c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b030:
	sub.l d3,d1
	bcs.s loc_20b038
	addq.w #$1,d2
	bra.s loc_20b030
loc_20b038:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b042
	move.w #$1,d4
loc_20b042:
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
	dbf d6,loc_20b02c
	rts
	jsr (sub_20ea68).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b09c(pc,d0.w),d0
	jsr dat_20b09c(pc,d0.w)
	jsr (sub_203904).l
	move.w $2e(a0),d0
	jmp (loc_20768e).l
dat_20b09c:
	dc.b $00,$06,$00,$60,$00,$7a
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20b16e,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$13,$16(a0)
	move.b #$29,$20(a0)
	move.w $8(a0),$2e(a0)
	moveq #$2,d0
	jsr (sub_20cbec).l
	tst.b $28(a0)
	bne.s loc_20b0ec
	move.l #$ffff0000,d0
	moveq #$0,d1
	bra.s loc_20b0f4
loc_20b0ec:
	move.l #$ffff8000,d0
	moveq #$1,d1
loc_20b0f4:
	move.l d0,$2a(a0)
	move.b d1,$1c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_20689e).l
	tst.w d1
	bpl.s loc_20b114
	addq.b #$2,$24(a0)
loc_20b114:
	rts
loc_20b116:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2e(a0),d0
	bpl.s loc_20b12a
	neg.w d0
loc_20b12a:
	cmpi.w #$80,d0
	bge.s loc_20b150
	jsr (sub_20689e).l
	cmpi.w #$fff9,d1
	blt.s loc_20b150
	cmpi.w #$7,d1
	bgt.s loc_20b150
	add.w d1,$c(a0)
	lea dat_20b162(pc),a1
	jmp (sub_205b1e).l
loc_20b150:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b116
dat_20b162:
	.incbin 45410, 124
	jsr (sub_20ea68).l
	tst.b $24(a0)
	bne.w loc_20b26e
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
	jsr (sub_20cbec).l
	tst.b $28(a0)
	bne.s loc_20b248
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b2f2(pc),a1
	bra.s loc_20b25a
loc_20b248:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b314(pc),a1
loc_20b25a:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b26e:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b282
	neg.w d0
loc_20b282:
	cmpi.w #$80,d0
	blt.s loc_20b2a4
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b2a4:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_200816).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b2e0(pc),a1
	jsr (sub_205b1e).l
	jsr (sub_203904).l
	move.w $2a(a0),d0
	jmp (loc_20768e).l
dat_20b2e0:
	.incbin 45792, 18
dat_20b2f2:
	.incbin 45810, 34
dat_20b314:
	.incbin 45844, 532
	cmpi.b #$1,$28(a0)
	beq.w loc_20b76a
	jsr (sub_20ea68).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b556(pc,d0.w),d0
	jsr dat_20b556(pc,d0.w)
	jsr (sub_203904).l
	move.w $2a(a0),d0
	jmp (loc_20768e).l
dat_20b556:
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
	jsr (sub_20cbec).l
	tst.b $28(a0)
	bne.s loc_20b5ae
	lea dat_20b72c(pc),a1
	lea dat_20b706(pc),a2
	move.l #$ffff6000,d0
	bra.s loc_20b5bc
loc_20b5ae:
	lea dat_20b742(pc),a1
	lea dat_20b712(pc),a2
	move.l #$ffffb000,d0
loc_20b5bc:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_20689e).l
	tst.w d1
	bpl.s loc_20b5e0
	addq.b #$2,$24(a0)
loc_20b5e0:
	rts
loc_20b5e2:
	tst.w ($ff1906).l
	bne.s loc_20b604
	tst.b $28(a0)
	bne.s loc_20b604
	tst.w $34(a0)
	beq.s loc_20b5fc
	subq.w #$1,$34(a0)
	bra.s loc_20b604
loc_20b5fc:
	lea ($d000).w,a1
	bsr.s sub_20b656
	bcs.s loc_20b650
loc_20b604:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b618
	neg.w d0
loc_20b618:
	cmpi.w #$80,d0
	bge.s loc_20b63e
	jsr (sub_20689e).l
	cmpi.w #$fff9,d1
	blt.s loc_20b63e
	cmpi.w #$7,d1
	bgt.s loc_20b63e
	add.w d1,$c(a0)
	movea.l $30(a0),a1
	jmp (sub_205b1e).l
loc_20b63e:
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b5e2
loc_20b650:
	addq.b #$2,$24(a0)
	rts

sub_20b656:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b67a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffb0,d1
	subi.w #$a0,d1
loc_20b67a:
	rts
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	movea.l $30(a0),a1
	jmp (sub_205b1e).l
	move.b #$4,$24(a0)
	move.b #$0,$1c(a0)
	move.w #$78,$34(a0)
	tst.b $28(a0)
	bne.s loc_20b6d4
	jsr (sub_207654).l
	bne.s loc_20b6d4
	tst.b $1(a0)
	bpl.s loc_20b6c0
	move.w #$a0,d0
	jsr (sub_202312).l
loc_20b6c0:
	bsr.s sub_20b6d6
	sf $3f(a1)
	jsr (sub_207654).l
	bne.s loc_20b6d4
	bsr.s sub_20b6d6
	st $3f(a1)
loc_20b6d4:
	rts

sub_20b6d6:
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w $2(a0),$2(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$a,$c(a1)
	rts
dat_20b706:
	dc.b $00,$04,$00,$08,$1d,$00,$01,$ff
	dc.b $3b,$02,$fc,$00
dat_20b712:
	.incbin 46866, 26
dat_20b72c:
	.incbin 46892, 22
dat_20b742:
	.incbin 46914, 40
loc_20b76a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b77e(pc,d0.w),d0
	jsr dat_20b77e(pc,d0.w)
	jmp (sub_203904).l
dat_20b77e:
	dc.b $00,$04,$00,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$ad,$20(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20b834,$4(a0)
	move.l #$0,$32(a0)
	move.l #$2000,$36(a0)
	tst.b $3f(a0)
	bne.s loc_20b7d0
	move.l #$20000,d0
	move.l #$fffc0000,d1
	bra.s loc_20b7dc
loc_20b7d0:
	move.l #$fffe0000,d0
	move.l #$fffc0000,d1
loc_20b7dc:
	move.l d0,$2a(a0)
	move.l d1,$2e(a0)
	rts
	tst.b $1(a0)
	bmi.s loc_20b7f2
	jmp (sub_2039b0).l
loc_20b7f2:
	jsr (sub_20689e).l
	tst.w d1
	bpl.s loc_20b802
	jmp (sub_2039b0).l
loc_20b802:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	move.l $32(a0),d0
	add.l d0,$2a(a0)
	move.l $36(a0),d0
	add.l d0,$2e(a0)
	lea dat_20b82c(pc),a1
	jmp (sub_205b1e).l
dat_20b82c:
	.incbin 47148, 684

sub_20bad8:
	tst.b ($ff1906).l
	bne.s loc_20baf0
	cmpi.b #$6,$24(a1)
	bcc.s loc_20baf0
	tst.w $12(a1)
	bmi.s loc_20baf0
	bra.s loc_20bafa
loc_20baf0:
	bclr.b #$3,$22(a0)
	moveq #$0,d1
	rts
loc_20bafa:
	lea (dat_20bb86).l,a2
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
	bpl.s loc_20bb7c
	move.b $1(a2),d2
	ext.w d2
	neg.w d2
	move.w d0,d4
	move.w d1,d5
	sub.w d2,d4
	add.w d3,d5
	cmp.w d5,d4
	bpl.s loc_20bb7c
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
	bpl.s loc_20bb7c
	move.b $3(a2),d2
	ext.w d2
	neg.w d2
	move.w d0,d4
	move.w d1,d5
	sub.w d2,d4
	add.w d3,d5
	cmp.w d5,d4
	bpl.s loc_20bb7c
	bset.b #$3,$22(a0)
	moveq #$ffffffff,d1
	rts
loc_20bb7c:
	bclr.b #$3,$22(a0)
	moveq #$0,d1
	rts
dat_20bb86:
	.incbin 48006, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bbba(pc,d0.w),d0
	jsr dat_20bbba(pc,d0.w)
	jmp (loc_20768a).l
dat_20bbba:
	dc.b $00,$0e,$01,$90,$00,$7e,$01,$c0
	dc.b $00,$ae,$01,$f8,$00,$e6
	move.l #$20be8a,$4(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$18,$17(a0)
	move.b #$4,$16(a0)
	moveq #$7,d0
	jsr sub_20cbec(pc)
	move.b #$3,d0
	move.b #$2,d1
	tst.b $28(a0)
	bne.s loc_20bc0a
	btst.b #$0,$1(a0)
	beq.s loc_20bc1e
loc_20bc0a:
	move.b #$4,d0
	move.b #$4,d1
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
loc_20bc1e:
	move.b d0,$1c(a0)
	move.b d1,$24(a0)
	rts
loc_20bc28:
	lea dat_20be54(pc),a1
	jsr (sub_205b1e).l
	jmp (sub_203904).l
	lea ($d000).w,a1
	moveq #$3,d0
	bsr.w sub_20bad8
	tst.b d1
	beq.s loc_20bc64
	move.l $c(a0),d0
	moveq #$0,d1
	move.b $16(a1),d1
	swap d1
	sub.l d1,d0
	move.l d0,$c(a1)
	move.b #$c,$24(a0)
	move.b #$4,$1c(a0)
loc_20bc64:
	bra.w loc_20bc28
	.incbin 48232, 226
	lea ($d000).w,a1
	moveq #$5,d0
	bsr.w sub_20bad8
	tst.b d1
	beq.s loc_20bd76
	move.l $c(a0),d0
	moveq #$0,d1
	move.b $16(a1),d1
	swap d1
	sub.l d1,d0
	move.l d0,$c(a1)
	move.b #$a,$24(a0)
	move.b #$3,$1c(a0)
loc_20bd76:
	bra.w loc_20bc28
	.incbin 48506, 218
dat_20be54:
	.incbin 48724, 1724
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c526(pc,d0.w),d0
	jsr dat_20c526(pc,d0.w)
	jsr (sub_203904).l
	rts
dat_20c526:
	dc.b $00,$16,$00,$e8

sub_20c52a:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208dc0).l
	ori.b #$4,$1(a0)
	move.w #$44be,$2(a0)
	move.b #$2,$18(a0)
	move.w $8(a0),$38(a0)
	move.w $c(a0),$3a(a0)
	move.w $c(a0),$36(a0)
	move.l #$20c98e,d0
	cmpi.w #$0,($ff1506).l
	beq.s loc_20c586
	move.l #$20c98e,d0
	cmpi.w #$1,($ff1506).l
	beq.s loc_20c586
	move.l #$20c98e,d0
loc_20c586:
	move.l d0,$4(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$3,d0
	move.b d0,$1a(a0)
	move.b dat_20c606(pc,d0.w),$19(a0)
	move.b #$8,$16(a0)
	lsr.b #$2,d1
	andi.w #$3,d1
	move.b dat_20c60a(pc,d1.w),$2d(a0)
	move.b $29(a0),d0
	beq.s loc_20c600
	jsr (sub_207654).l
	beq.s loc_20c5c4
	jmp (loc_20c964).l
loc_20c5c4:
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
loc_20c600:
	addq.b #$2,$24(a0)
	rts
dat_20c606:
	dc.b $10,$20,$30,$00
dat_20c60a:
	dc.b $02,$03,$04,$06
	tst.w ($ff190e).l
	beq.s loc_20c61a
	bra.w sub_20c52a
loc_20c61a:
	move.b $28(a0),d0
	lsr.b #$4,d0
	andi.w #$f,d0
	add.w d0,d0
	move.w dat_20c65a(pc,d0.w),d0
	jsr dat_20c65a(pc,d0.w)
	move.w $38(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c64c
	rts
loc_20c64c:
	lea ($d000).w,a1
	jsr (sub_208c78).l
	bra.w loc_20c964
dat_20c65a:
	.incbin 50778, 28
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jmp (sub_20c52a).l
	move.l $8(a0),-(a7)
	jsr sub_20c94c(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	addq.b #$1,$2a(a0)
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
loc_20c6a8:
	move.l (a7)+,d0
	move.l $8(a0),d1
	sub.l d0,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
loc_20c6b6:
	jsr sub_20c52a(pc)
	beq.s loc_20c6ce
	move.b $2c(a0),d0
	cmpi.b #$8,d0
	bcc.s loc_20c6ca
	addq.b #$1,$2c(a0)
loc_20c6ca:
	moveq #$1,d0
	rts
loc_20c6ce:
	moveq #$0,d0
	move.b $2c(a0),d0
	beq.s loc_20c6da
	subq.b #$1,$2c(a0)
loc_20c6da:
	moveq #$0,d0
	rts
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c94c(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c94c(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c6a8
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c94c(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c94c(pc)
	neg.w d0
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c6a8

sub_20c728:
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c6b6
	move.b $2b(a0),d0
	bne.s loc_20c754
	jsr sub_20c728(pc)
	bne.s loc_20c74a
	rts
loc_20c74a:
	move.b #$1e,$2e(a0)
	addq.b #$2,$2b(a0)
loc_20c754:
	move.b $2e(a0),d0
	beq.s loc_20c762
	subq.b #$1,$2e(a0)
	bra.w sub_20c728
loc_20c762:
	jsr sub_20c52a(pc)
	move.l $c(a0),d1
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	move.l d1,$c(a0)
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20c788
	addi.w #$40,$12(a0)
loc_20c788:
	move.w ($f704).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c7a6
	lea ($d000).w,a1
	jsr (sub_208c78).l
	jmp (sub_2039b0).l
loc_20c7a6:
	rts
	.incbin 51112, 420

sub_20c94c:
	moveq #$0,d0
	move.b $2a(a0),d0
	jsr (sub_200816).l
	moveq #$0,d2
	move.b $2d(a0),d2
	muls.w d2,d0
	asr.w #$4,d0
	rts
loc_20c964:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c988
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c988:
	jmp (sub_2039b0).l
	.incbin 51598, 494
loc_20cb7c:
	lea dat_20cbce(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cb88:
	cmp.w (a1)+,d0
	bcs.s loc_20cb90
	addq.b #$2,d1
	bra.s loc_20cb88
loc_20cb90:
	move.b d1,($ff1574).l
	move.w dat_20cbe2(pc,d1.w),d0
	jmp (sub_2024dc).l

sub_20cba0:
	lea dat_20cbce(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cbac:
	cmp.w (a1)+,d0
	bcs.s loc_20cbb4
	addq.b #$2,d1
	bra.s loc_20cbac
loc_20cbb4:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cbbe
	rts
loc_20cbbe:
	move.b d1,($ff1574).l
	move.w dat_20cbd8(pc,d1.w),d0
	jmp (loc_20250e).l
dat_20cbce:
	dc.b $0b,$00,$15,$00,$18,$00,$1c,$00
	dc.b $ff,$ff
dat_20cbd8:
	dc.b $00,$0a,$00,$0b,$00,$0c,$00,$0d
	dc.b $00,$0e
dat_20cbe2:
	dc.b $00,$02,$00,$06,$00,$07,$00,$08
	dc.b $00,$09

sub_20cbec:
	lea (dat_20cc0e).l,a1
	add.w d0,d0
	move.w dat_20cc0e(pc,d0.w),d4
	lea dat_20cc0e(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cc0e:
	.incbin 52238, 72
	jsr (sub_20eab0).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20cd78
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc76(pc,d0.w),d0
	jmp dat_20cc76(pc,d0.w)
dat_20cc76:
	.incbin 52342, 258
loc_20cd78:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cd86(pc,d0.w),d0
	jmp dat_20cd86(pc,d0.w)
dat_20cd86:
	.incbin 52614, 1100
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d1f0(pc,d0.w),d0
	jsr dat_20d1f0(pc,d0.w)
	cmpi.b #$4,$24(a0)
	beq.s loc_20d1ee
	jmp (sub_203904).l
loc_20d1ee:
	rts
dat_20d1f0:
	.incbin 53744, 264
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d31c(pc,d0.w),d0
	jsr dat_20d31c(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20d316
	jsr (sub_203904).l
loc_20d316:
	jmp (loc_20768a).l
dat_20d31c:
	.incbin 54044, 1920
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20daaa(pc,d0.w),d0
	jmp dat_20daaa(pc,d0.w)
dat_20daaa:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e1a8,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e168).l,a2
loc_20daf8:
	jsr (sub_207654).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e1a8,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20db4a
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20db4a:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20daf8
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20db72
	bge.s loc_20db68
	neg.w d0
loc_20db68:
	add.w d0,$a(a0)
	jmp (sub_203904).l
loc_20db72:
	addq.b #$4,$24(a0)
	jmp (sub_203904).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20db96
	bge.s loc_20db8c
	neg.w d0
loc_20db8c:
	add.w d0,$8(a0)
	jmp (sub_203904).l
loc_20db96:
	addq.b #$4,$24(a0)
	jmp (sub_203904).l
	tst.b $1e(a0)
	beq.s loc_20dbb0
	subq.b #$1,$1e(a0)
	jmp (sub_203904).l
loc_20dbb0:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dbca
	bge.s loc_20dbc0
	neg.w d0
loc_20dbc0:
	add.w d0,$a(a0)
	jmp (sub_203904).l
loc_20dbca:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024dc).l
	tst.b $1e(a0)
	beq.s loc_20dbec
	subq.b #$1,$1e(a0)
	jmp (sub_203904).l
loc_20dbec:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dc06
	bge.s loc_20dbfc
	neg.w d0
loc_20dbfc:
	add.w d0,$8(a0)
	jmp (sub_203904).l
loc_20dc06:
	jmp (sub_2039b0).l
	tst.l ($f680).w
	bne.s loc_20dc20
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2039b0).l
loc_20dc20:
	rts
	.incbin 56354, 1350
dat_20e168:
	.incbin 57704, 1878
	lea ($d000).w,a1
	jsr (sub_208dc6).l
	beq.s loc_20e8d0
	jsr (sub_208c78).l
loc_20e8d0:
	movea.l $2c(a0),a6
	move.b (a6)+,d0
	bmi.s loc_20e922
	addq.b #$1,$2a(a0)
	cmp.b $2a(a0),d0
	bne.s loc_20e920
	move.b (a6)+,d5
	move.b (a6)+,d6
	move.l a6,$2c(a0)
	ext.w d5
	ext.w d6
	jsr (sub_207654).l
	bne.s loc_20e920
	move.b #$18,$0(a1)
	move.b #$1,$25(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	add.w d5,$8(a1)
	add.w d6,$c(a1)
	move.w #$9e,d0
	jsr (sub_202312).l
loc_20e920:
	rts
loc_20e922:
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
	rts
	.incbin 59694, 314

sub_20ea68:
	tst.b ($ff156a).l
	beq.s loc_20eaae
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ea80
	tst.b $28(a0)
	beq.s loc_20eaae
loc_20ea80:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2039b0).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20eaac
	move.w #$9e,d0
	jsr (sub_202312).l
loc_20eaac:
	addq.l #$4,a7
loc_20eaae:
	rts

sub_20eab0:
	tst.b $28(a0)
	bmi.s loc_20eae0
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ead0
	tst.b ($ff156d).l
	bne.s loc_20eae0
	addq.l #$4,a7
	jmp (loc_20768a).l
loc_20ead0:
	tst.b ($ff156a).l
	bne.s loc_20eae0
	addq.l #$4,a7
	jmp (sub_2039b0).l
loc_20eae0:
	rts
	.incbin 60130, 1360

sub_20f032:
	jmp (loc_206392).l
dat_20f038:
	.incbin 61496, 16
dat_20f048:
	.incbin 61512, 2934
	jmp (dat_20657c).l
	.incbin 64452, 550
	jmp (dat_206294).l
	.incbin 65008, 55568
dat_21d700:
	.incbin 120576, 10496
dat_220000:
	.incbin 131072, 72476
dat_231b1c:
	.incbin 203548, 18362
dat_2362d6:
	.incbin 221910, 384
dat_236456:
	.incbin 222294, 1598
dat_236a94:
	.incbin 223892, 9952
dat_239174:
	.incbin 233844, 256
dat_239274:
	.incbin 234100, 4096
dat_23a274:
	.incbin 238196, 4996
dat_23b5f8:
	.incbin 243192, 18952
