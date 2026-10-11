; R11B__.MMD
; disassembled from the disc; code only, data comes from data/R11B__.MMD at build time
	.file "R11B__.MMD", 262144

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
	bsr.w sub_20749c
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
	lea (dat_20f196).l,a2
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
	bsr.w sub_202a12
	bset.b #$2,($f754).w
	bsr.w sub_2033fe
	bsr.w sub_20330e
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
	jsr (sub_20f190).l
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
	jsr (sub_205acc).l
	bsr.w sub_20749c
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
	jsr (sub_2074b2).l
	jsr (sub_203812).l
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
	bsr.w sub_202a12
loc_2019a8:
	jsr (sub_2039bc).l
	tst.w ($ff190e).l
	bne.s loc_2019ba
	bsr.w sub_200184
loc_2019ba:
	jsr (sub_20cf3a).l
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
	jmp (sub_205acc).l
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
	jmp (sub_205acc).l
loc_201bf4:
	tst.b ($ff151f).l
	bne.s loc_201bea
	tst.b ($ff1520).l
	bne.s loc_201bea
	move.w #$90,d0
	jmp (sub_205acc).l
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
	jmp (sub_205acc).l
loc_201c30:
	tst.b ($ff151f).l
	bne.s loc_201c26
	tst.b ($ff1520).l
	bne.s loc_201c26
	move.w #$91,d0
	jmp (sub_205acc).l
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
	bsr.w sub_2059ee
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
	jsr (sub_20f190).l
	jsr (sub_2022c6).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202f04
	bsr.w sub_2025ba
	jmp (loc_20acbc).l
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
	bsr.w sub_202f04
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
	lea (dat_20f1a6).l,a1
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
	lea (dat_20f1a6).l,a1
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
	lea (dat_20f1a6).l,a1
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
	jsr (sub_206658).l
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
	dc.b $00,$50,$01,$e8
dat_2029d4:
	dc.b $8c,$7f,$1e,$1e

sub_2029d8:
	swap d0
	asr.l #$4,d0
	add.l d0,d0
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
	add.w d1,d2
	move.w d2,($f710).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	rts

sub_202a12:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a1e
	rts
loc_202a1e:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b7a
	bsr.w sub_202c1a
	bsr.w sub_2034a6
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_202ea4
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202e70
	lea ($a810).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	add.l d5,d5
	bsr.w sub_202d6c
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
	move.w #$1,d1
loc_202ada:
	move.w d0,(a1)+
	dbf d1,loc_202ada
	move.w ($a804).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$1,d1
loc_202aee:
	move.w d0,(a1)+
	dbf d1,loc_202aee
	move.w ($a808).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$1,d1
loc_202b02:
	move.w d0,(a1)+
	dbf d1,loc_202b02
	move.w ($a80c).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$1,d1
loc_202b16:
	move.w d0,(a1)+
	dbf d1,loc_202b16
	move.w #$9,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202b26:
	move.w d0,(a1)+
	dbf d1,loc_202b26
	move.w #$17,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202b36:
	move.w d0,(a1)+
	dbf d1,loc_202b36
	lea ($cc00).w,a1
	lea ($a810).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b64(pc,d2.w)
loc_202b62:
	move.w (a2)+,d0
loc_202b64:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b62
	rts

sub_202b7a:
	move.w ($f700).w,d4
	bsr.s sub_202bae
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202bac
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ba6
	bset.b #$2,($f754).w
	rts
loc_202ba6:
	bset.b #$3,($f754).w
loc_202bac:
	rts

sub_202bae:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bc0
	bcs.s loc_202bf0
	bra.s loc_202bc6
loc_202bc0:
	clr.w ($f73a).w
	rts
loc_202bc6:
	cmpi.w #$10,d0
	blt.s loc_202bd0
	move.w #$10,d0
loc_202bd0:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bde
	move.w ($f72a).w,d0
loc_202bde:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202bf0:
	cmpi.w #$fff0,d0
	bge.s loc_202bfa
	move.w #$fff0,d0
loc_202bfa:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bde
	move.w ($f728).w,d0
	bra.s loc_202bde
	.incbin 11274, 16

sub_202c1a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c2e
	subq.w #$5,d0
loc_202c2e:
	btst.b #$1,$22(a6)
	beq.s loc_202c4e
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c9a
	subi.w #$40,d0
	bcc.s loc_202c9a
	tst.b ($f75c).w
	bne.s loc_202cac
	bra.s loc_202c5a
loc_202c4e:
	sub.w ($f73e).w,d0
	bne.s loc_202c60
	tst.b ($f75c).w
	bne.s loc_202cac
loc_202c5a:
	clr.w ($f73c).w
	rts
loc_202c60:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c88
	move.w $14(a6),d1
	bpl.s loc_202c70
	neg.w d1
loc_202c70:
	cmpi.w #$800,d1
	bcc.s loc_202c9a
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202cfa
	cmpi.w #$fffa,d0
	blt.s loc_202cc4
	bra.s loc_202cb2
loc_202c88:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202cfa
	cmpi.w #$fffe,d0
	blt.s loc_202cc4
	bra.s loc_202cb2
loc_202c9a:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202cfa
	cmpi.w #$fff0,d0
	blt.s loc_202cc4
	bra.s loc_202cb2
loc_202cac:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202cb2:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202d04
	bra.w loc_202cd0
loc_202cc4:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cd0:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d28
	cmpi.w #$ff00,d1
	bgt.s loc_202cf4
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d28
loc_202cf4:
	move.w ($f72c).w,d1
	bra.s loc_202d28
loc_202cfa:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202d04:
	cmp.w ($f72e).w,d1
	blt.s loc_202d28
	subi.w #$800,d1
	bcs.s loc_202d24
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d28
loc_202d24:
	move.w ($f72e).w,d1
loc_202d28:
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
	bne.s loc_202d6a
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d64
	bset.b #$0,($f754).w
	rts
loc_202d64:
	bset.b #$1,($f754).w
loc_202d6a:
	rts

sub_202d6c:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202da0
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d9a
	bset.b #$2,($f756).w
	bra.s loc_202da0
loc_202d9a:
	bset.b #$3,($f756).w
loc_202da0:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dd4
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dce
	bset.b #$0,($f756).w
	rts
loc_202dce:
	bset.b #$1,($f756).w
loc_202dd4:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e0a
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202e04
	bset.b #$4,($f756).w
	rts
loc_202e04:
	bset.b #$5,($f756).w
loc_202e0a:
	rts
	.incbin 11788, 100

sub_202e70:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202ea2
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e9c
	bset.b d6,($f758).w
	bra.s loc_202ea2
loc_202e9c:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202ea2:
	rts

sub_202ea4:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ed6
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202ed0
	bset.b d6,($f75a).w
	bra.s loc_202ed6
loc_202ed0:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ed6:
	rts
	.incbin 11992, 44

sub_202f04:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fc2
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2030a8
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030aa
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fc0
	bclr.b #$0,(a2)
	beq.s loc_202f76
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032d6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ac
loc_202f76:
	bclr.b #$1,(a2)
	beq.s loc_202f90
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032d6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030ac
loc_202f90:
	bclr.b #$2,(a2)
	beq.s loc_202fa6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032d6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203102
loc_202fa6:
	bclr.b #$3,(a2)
	beq.s loc_202fc0
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032d6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203102
loc_202fc0:
	rts

sub_202fc2:
	lea (dat_203394).l,a0
	adda.w #$1,a0
	move.w #$fff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fe0
	bclr.b #$1,(a2)
	beq.s loc_20302a
	move.w #$e0,d4
loc_202fe0:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20305a(pc,d0.w),a3
	beq.s loc_203012
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d6
	movem.l (a7)+,d4-d5
	bsr.w sub_2030ac
	movea.l (a7)+,a0
	bra.s loc_20302a
loc_203012:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d8
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030d8
	movea.l (a7)+,a0
loc_20302a:
	tst.b (a2)
	bne.s loc_203030
	rts
loc_203030:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203044
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203044:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20306a
dat_20305a:
	.incbin 12378, 16
loc_20306a:
	moveq #$f,d6
	move.l #$800000,d7
loc_203072:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_20309c
	add.w d0,d0
	movea.l dat_20305a(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ae
	movem.l (a7)+,d4-d5
	bsr.w sub_2032d6
	bsr.w sub_203130
	movem.l (a7)+,d4-d5/a0
loc_20309c:
	addi.w #$10,d4
	dbf d6,loc_203072
	clr.b (a2)
	rts

sub_2030a8:
	rts

sub_2030aa:
	rts

sub_2030ac:
	moveq #$15,d6

sub_2030ae:
	move.l #$800000,d7
	move.l d0,d1
loc_2030b6:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ae
	move.l d1,d0
	bsr.w sub_203130
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030b6
	rts

sub_2030d8:
	move.l #$800000,d7
	move.l d0,d1
loc_2030e0:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031b0
	move.l d1,d0
	bsr.w sub_203130
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030e0
	rts

sub_203102:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20310c:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031ae
	move.l d1,d0
	bsr.w sub_203130
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20310c
	rts

sub_203130:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20316c
	btst.b #$3,(a0)
	bne.s loc_20314c
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20314c:
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
loc_20316c:
	btst.b #$3,(a0)
	bne.s loc_20318e
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
loc_20318e:
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

sub_2031ae:
	add.w (a3),d5

sub_2031b0:
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
	beq.s loc_2031fe
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
loc_2031fe:
	rts
	.incbin 12800, 30
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
	.incbin 12856, 158

sub_2032d6:
	add.w (a3),d5

sub_2032d8:
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
	.incbin 13042, 28

sub_20330e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203338
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203362

sub_203338:
	move.w #$fff0,d4
	moveq #$f,d6
loc_20333e:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032d6
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030ae
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20333e
	rts
loc_203362:
	move.w #$fff0,d4
	moveq #$f,d6
loc_203368:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203394).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033c6
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203368
	rts
	dc.b $00,$00
dat_203394:
	.incbin 13204, 34
dat_2033b6:
	.incbin 13238, 16

sub_2033c6:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2033b6(pc,d0.w),a3
	beq.s loc_2033e8
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d6
	movem.l (a7)+,d4-d5
	bsr.w sub_2030ac
	bra.s loc_2033fc
loc_2033e8:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d8
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030d8
loc_2033fc:
	rts

sub_2033fe:
	moveq #$0,d0
	lea (dat_20f196).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023ae
	movea.l (a2)+,a0
	bsr.w sub_203458
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200570
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203442
	jmp (loc_20cf16).l
loc_203442:
	btst.b #$1,($ff151c).l
	beq.s loc_203456
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203456
	bsr.w sub_2024dc
loc_203456:
	rts

sub_203458:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203462:
	move.l d0,(a3)+
	dbf d1,loc_203462
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203478
	lea ($a040).w,a3
	moveq #$2,d1

sub_203478:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23b594).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203492:
	move.w d1,d0
	movea.l a3,a0
loc_203496:
	move.b (a1)+,(a0)+
	dbf d0,loc_203496
	lea $80(a3),a3
	dbf d2,loc_203492
	rts

sub_2034a6:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203520(pc,d0.w),d0
	jsr dat_203520(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034cc
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034cc:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034fa
	bcc.s loc_2034fc
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034f0
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034f0:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034fa:
	rts
loc_2034fc:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203514
	btst.b #$1,($d022).w
	beq.s loc_203514
	add.w d1,d1
	add.w d1,d1
loc_203514:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203520:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203540(pc,d0.w),d0
	jmp dat_203540(pc,d0.w)
dat_203540:
	dc.b $00,$06,$00,$66,$00,$6e
	cmpi.b #$1,($ff152e).l
	bne.s loc_2035a6
	cmpi.w #$1c16,($d008).w
	bcs.s loc_203566
	cmpi.w #$21c6,($d008).w
	bcc.s loc_203566
	move.w #$88,($f73e).w
loc_203566:
	move.w #$710,($f726).w
	cmpi.w #$840,($f700).w
	bcs.s loc_2035a4
	tst.b ($ff1510).l
	beq.s loc_203590
	cmpi.w #$820,($f728).w
	bcc.s loc_203590
	move.w #$820,($f728).w
	move.w #$820,($f720).w
loc_203590:
	move.w #$410,($f726).w
	cmpi.w #$e00,($f700).w
	bcs.s loc_2035a4
	move.w #$310,($f726).w
loc_2035a4:
	rts
loc_2035a6:
	move.w #$310,($f726).w
	rts
	.incbin 13742, 176
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203670(pc,d0.w),d0
	jmp dat_203670(pc,d0.w)
dat_203670:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $03,$10,$f7,$26,$4e,$75
	move.w #$e10,d0
	move.w #$1f8,d1
	bsr.w sub_2037cc
	bne.s loc_203698
	tst.b ($f7a7).w
	bne.s loc_20369a
	move.w #$320,($f726).w
loc_203698:
	rts
loc_20369a:
	move.w #$1f8,($f72e).w
	move.w #$1f8,($f726).w
	rts
	.incbin 13992, 292

sub_2037cc:
	cmp.w ($d008).w,d0
	ble.s loc_2037d6
	moveq #$0,d0
	rts
loc_2037d6:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_2037e2
	neg.w d1
loc_2037e2:
	cmpi.w #$4,d1
	bge.s loc_2037ee
	move.w ($f726).w,($f72e).w
loc_2037ee:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_20380e
	cmp.w ($f72a).w,d0
	ble.s loc_203806
	move.w ($f72a).w,d0
loc_203806:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_20380e:
	moveq #$1,d0
	rts

sub_203812:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20381a:
	move.b (a0),d0
	beq.s loc_203830
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c34).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203830:
	lea $40(a0),a0
	dbf d7,loc_20381a
	rts

sub_20383a:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203878
	bpl.s loc_20386a
	btst.b #$1,$2c(a0)
	beq.s loc_20386a
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203878
loc_20386a:
	btst.b #$2,$2c(a0)
	bne.s loc_203878
	addi.w #$38,$12(a0)
loc_203878:
	tst.w $12(a0)
	bmi.s loc_20388c
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20388c
	move.w #$1000,$12(a0)
loc_20388c:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20389c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038d8
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038d8
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038d6
	neg.w d1
loc_2038d6:
	add.w d1,d0
loc_2038d8:
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

sub_2038f2:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203962
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20397e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_20397e
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20393c
	cmpi.w #$800,d3
	bcs.s loc_20394e
	subi.w #$800,d3
	bra.s loc_20394e
loc_20393c:
	cmpi.w #$700,($f704).w
	bcs.s loc_20394e
	cmpi.w #$100,d3
	bcc.s loc_20394e
	addi.w #$800,d3
loc_20394e:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_20397e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_20397e
loc_203962:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_20397e
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_20397e:
	rts
	.incbin 14720, 30

sub_20399e:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2039a4:
	move.l d1,(a1)+
	dbf d0,loc_2039a4
	rts
dat_2039ac:
	.incbin 14764, 16

sub_2039bc:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039c8:
	tst.w (a4)
	beq.w loc_203a88
	moveq #$2,d6
loc_2039d0:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a80
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a36
	movea.l dat_2039ac(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a1a
	cmpi.w #$800,d2
	bcs.s loc_203a2c
	subi.w #$800,d2
	bra.s loc_203a2c
loc_203a1a:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a2c
	cmpi.w #$100,d2
	bcc.s loc_203a2c
	addi.w #$800,d2
loc_203a2c:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a58
loc_203a36:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a58
	.incbin 14912, 24
loc_203a58:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a76
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a7a
loc_203a76:
	bsr.w sub_203aaa
loc_203a7a:
	bset.b #$7,$1(a0)
loc_203a80:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039d0
loc_203a88:
	lea $80(a4),a4
	dbf d7,loc_2039c8
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203aa2
	move.l #$0,(a2)
	rts
loc_203aa2:
	move.b #$0,-$5(a2)
	rts

sub_203aaa:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203af0
	btst.l #$1,d4
	bne.w loc_203b3e
loc_203abc:
	cmpi.b #$50,d5
	beq.s loc_203aee
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
	bne.s loc_203ae8
	addq.w #$1,d0
loc_203ae8:
	move.w d0,(a2)+
	dbf d1,loc_203abc
loc_203aee:
	rts
loc_203af0:
	btst.l #$1,d4
	bne.w loc_203b84
loc_203af8:
	cmpi.b #$50,d5
	beq.s loc_203b3c
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
	bne.s loc_203b36
	addq.w #$1,d0
loc_203b36:
	move.w d0,(a2)+
	dbf d1,loc_203af8
loc_203b3c:
	rts
loc_203b3e:
	cmpi.b #$50,d5
	beq.s loc_203b82
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
	bne.s loc_203b7c
	addq.w #$1,d0
loc_203b7c:
	move.w d0,(a2)+
	dbf d1,loc_203b3e
loc_203b82:
	rts
loc_203b84:
	cmpi.b #$50,d5
	beq.s loc_203bd6
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
	bne.s loc_203bd0
	addq.w #$1,d0
loc_203bd0:
	move.w d0,(a2)+
	dbf d1,loc_203b84
loc_203bd6:
	rts
	.incbin 15320, 92
dat_203c34:
	.incbin 15412, 262

sub_203d3a:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203d4c
	move.w #$0,(a1)
	rts
loc_203d4c:
	tst.w (a1)
	bne.s loc_203d56
	move.b #$1,$1(a1)
loc_203d56:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203da0
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d92
	neg.w $10(a0)
loc_203d92:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205acc
loc_203da0:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203dbe
	cmpa.w #$d040,a0
	beq.s loc_203dbe
	tst.b ($ff1906).l
	beq.s loc_203dbe
	jmp (loc_207042).l
loc_203dbe:
	move.b $2a(a0),d0
	beq.s loc_203de8
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203dda
	cmpi.b #$2d,d0
	bcs.s loc_203de4
	move.b #$2d,d0
	bra.s loc_203de4
loc_203dda:
	cmpi.b #$1e,d0
	bcs.s loc_203de4
	move.b #$1e,d0
loc_203de4:
	move.b d0,$2a(a0)
loc_203de8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203df6(pc,d0.w),d1
	jmp dat_203df6(pc,d1.w)
dat_203df6:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203e00:
	tst.b ($d300).w
	bne.s loc_203e3e
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203e3e:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203e66
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203e66:
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e9a:
	tst.b ($ff1506).l
	bne.s loc_203f00
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203f00
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f04
	cmpi.b #$2f,d1
	bne.s loc_203f02
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203f00
	tst.b $2c(a0)
	beq.s loc_203f00
	jsr (sub_2076ae).l
	bne.s loc_203f00
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203ef8
	moveq #$0,d0
loc_203ef8:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203f00:
	rts
loc_203f02:
	rts

sub_203f04:
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

sub_203f2a:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203f36
	neg.w d0
loc_203f36:
	btst.b #$1,$2c(a0)
	beq.s loc_203f46
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f6e
loc_203f46:
	cmpi.w #$600,d0
	bcs.s loc_203f6e
	tst.w $14(a0)
	bpl.s loc_203f60
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f7c
	move.w #$e0,d1
	bra.s loc_203f7c
loc_203f60:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f7c
	move.w #$60,d1
	bra.s loc_203f7c
loc_203f6e:
	cmpi.w #$a0,d1
	beq.s loc_203f7c
	bcc.s loc_203f7a
	addq.w #$2,d1
	bra.s loc_203f7c
loc_203f7a:
	subq.w #$2,d1
loc_203f7c:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203f2a
	bsr.w sub_203e9a
	tst.w ($ff1588).l
	beq.s loc_203fa2
	btst.b #$4,($f605).w
	beq.s loc_203fa2
	move.b #$1,($ff1906).l
	rts
loc_203fa2:
	tst.b ($f7cc).w
	bne.s loc_203fae
	move.w ($f604).w,($f602).w
loc_203fae:
	btst.b #$0,$2c(a0)
	beq.s loc_203fd2
	cmpi.b #$6,($ff1506).l
	bne.s loc_203fcc
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203fea
loc_203fcc:
	bsr.w sub_2042b4
	bra.s loc_203fea
loc_203fd2:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204030(pc,d0.w),d1
	jsr dat_204030(pc,d1.w)
	jsr (sub_206584).l
loc_203fea:
	bsr.s sub_20403e
	bsr.w sub_2040fe
	bsr.w sub_204118
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204012
	tst.b $1c(a0)
	bne.s loc_204012
	move.b $1d(a0),$1c(a0)
loc_204012:
	bsr.w sub_2054bc
	tst.b $2c(a0)
	bmi.s loc_20402a
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20402a
	jsr (sub_206b28).l
loc_20402a:
	bsr.w sub_205372
	rts
dat_204030:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20403e:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204062
	move.w $30(a0),d0
	beq.s loc_204054
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204062
loc_204054:
	btst.b #$6,$2c(a0)
	bne.s loc_204062
	jsr (sub_2038f2).l
loc_204062:
	tst.b ($ff151f).l
	beq.s loc_2040a6
	tst.w $32(a0)
	beq.s loc_2040a6
	subq.w #$1,$32(a0)
	bne.s loc_2040a6
	tst.b ($ff1520).l
	bne.s loc_20409e
	tst.b ($ff1958).l
	bne.s loc_20409e
	tst.b ($ff152e).l
	bne.s loc_204098
	move.w #$e,d0
	jsr (sub_205acc).l
loc_204098:
	jsr (sub_201b06).l
loc_20409e:
	move.b #$0,($ff151f).l
loc_2040a6:
	tst.b ($ff1520).l
	beq.s loc_2040fc
	tst.w $34(a0)
	beq.s loc_2040fc
	subq.w #$1,$34(a0)
	bne.s loc_2040fc
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2040f4
	tst.b ($ff1958).l
	bne.s loc_2040f4
	tst.b ($ff152e).l
	bne.s loc_2040ee
	move.w #$e,d0
	jsr (sub_205acc).l
loc_2040ee:
	jsr (sub_201b06).l
loc_2040f4:
	move.b #$0,($ff1520).l
loc_2040fc:
	rts

sub_2040fe:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204118:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204124
loc_204122:
	rts
loc_204124:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204136
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204122
loc_204136:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20417a
	bset.b #$6,$22(a0)
	bne.s loc_204122
	bsr.w sub_205dd0
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204122
	bra.s loc_2041b2
loc_20417a:
	tst.w $12(a0)
	beq.s loc_204182
	bpl.s loc_204122
loc_204182:
	bclr.b #$6,$22(a0)
	beq.s loc_204122
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204122
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2041b2
	move.w #$f000,$12(a0)
loc_2041b2:
	jsr (sub_2076ae).l
	bne.s loc_2041c6
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2041c6:
	rts

sub_2041c8:
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
	bcs.s loc_2042a2
	move.l #$50000,d0
loc_2042a2:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2042b4:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2042da
	tst.b ($ff152e).l
	beq.s loc_2042d0
	cmpi.b #$2,($ff152e).l
	bne.s loc_2042da
loc_2042d0:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20438a
loc_2042da:
	tst.b $2a(a0)
	bne.w loc_204398
	tst.b ($f784).w
	beq.w loc_204398
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2042f8
	neg.w d0
loc_2042f8:
	tst.w ($f786).w
	bne.s loc_204304
	move.w #$1,($f786).w
loc_204304:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20431a
	move.b #$1,($ff1502).l
	bra.w loc_205ac8
loc_20431a:
	cmpi.w #$d2,d1
	bcs.s loc_20436e
	cmpi.b #$2,($ff1522).l
	beq.s loc_20436c
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204344
	move.w #$82,d0
	jsr (sub_205acc).l
	moveq #$0,d0
loc_204344:
	add.b ($f784).w,d0
	bpl.s loc_20434e
	moveq #$0,d0
	bra.s loc_204356
loc_20434e:
	cmpi.b #$3,d0
	bcs.s loc_204356
	moveq #$2,d0
loc_204356:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2041c8
	move.b #$2,($ff1522).l
loc_20436c:
	rts
loc_20436e:
	cmpi.w #$5a,d1
	bcc.s loc_204386
	cmp.w d2,d0
	bcc.w loc_203e00
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204386:
	cmp.w d2,d0
	bcc.s loc_204398
loc_20438a:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204398:
	rts
	bsr.w sub_203d3a
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2043ca
	tst.b ($ff195b).l
	beq.s loc_2043b8
	cmpi.b #$79,$1a(a0)
	bne.s loc_2043f4
	bra.s loc_2043c0
loc_2043b8:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2043f4
loc_2043c0:
	bsr.w sub_204c5c
	jmp (sub_20383a).l
loc_2043ca:
	bsr.w sub_2044a2
	bsr.w sub_2042b4
	bsr.w sub_204d46
	bsr.w sub_204e72
	bsr.w sub_204516
	bsr.w sub_204cc8
	bsr.w sub_204c5c
	jsr (sub_20389c).l
	bsr.w sub_200c16
	bsr.w sub_204ef0
loc_2043f4:
	rts
	tst.b ($f7c7).w
	bne.s loc_204410
	cmpi.b #$15,$1c(a0)
	beq.s loc_204410
	tst.w $12(a0)
	bmi.s loc_204410
	move.b #$0,$1c(a0)
loc_204410:
	bsr.w sub_2044a2
	bsr.w sub_2042b4
	bsr.w sub_204e30
	bsr.w sub_204b7c
	bsr.w sub_204c5c
	jsr (sub_20383a).l
	btst.b #$6,$22(a0)
	beq.s loc_204438
	subi.w #$28,$12(a0)
loc_204438:
	bsr.w sub_204f3a
	bsr.w sub_204f5e
	rts
	bsr.w sub_2044a2
	bsr.w sub_2042b4
	bsr.w sub_204d46
	bsr.w sub_204eae
	bsr.w sub_2049b6
	bsr.w sub_204c5c
	tst.b $2a(a0)
	bne.s loc_204466
	jsr (sub_20389c).l
loc_204466:
	bsr.w sub_200c16
	bsr.w sub_204ef0
	rts
	bsr.w sub_2044a2
	bsr.w sub_2042b4
	bsr.w sub_204e30
	bsr.w sub_204b7c
	bsr.w sub_204c5c
	jsr (sub_20383a).l
	btst.b #$6,$22(a0)
	beq.s loc_204498
	subi.w #$28,$12(a0)
loc_204498:
	bsr.w sub_204f3a
	bsr.w sub_204f5e
	rts

sub_2044a2:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20450e
	tst.w ($ff1506).l
	bne.s loc_20450e
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204510).l,a2
loc_2044d6:
	move.b (a2)+,d0
	bmi.s loc_2044e6
	cmp.b d0,d1
	bne.s loc_2044d6
	bset.b #$1,$2c(a0)
	rts
loc_2044e6:
	bclr.b #$1,$2c(a0)
	beq.s loc_20450e
	tst.w $12(a0)
	bpl.s loc_20450e
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20450e
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20450e
	neg.w $10(a0)
loc_20450e:
	rts
dat_204510:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204516:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204840
	tst.w $3e(a0)
	bne.w loc_2047f0
	btst.b #$2,($f602).w
	beq.s loc_20453e
	bsr.w sub_2048d0
loc_20453e:
	btst.b #$3,($f602).w
	beq.s loc_20454a
	bsr.w sub_204946
loc_20454a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2047f0
	tst.w $14(a0)
	beq.s loc_20456a
	tst.b $2a(a0)
	beq.w loc_2047f0
	bra.s loc_204576
loc_20456a:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204576:
	btst.b #$3,$22(a0)
	beq.s loc_2045c8
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204620
	cmpi.b #$1e,$0(a1)
	bne.s loc_2045a8
	move.b #$0,$1c(a0)
	bra.w loc_2047f0
loc_2045a8:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204604
	cmp.w d2,d1
	bge.s loc_2045f2
	bra.s loc_204620
loc_2045c8:
	jsr (sub_20688c).l
	cmpi.w #$c,d1
	blt.s loc_204620
	move.w #$ab,d0
	jsr (sub_202312).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2045fc
loc_2045f2:
	btst.b #$0,$22(a0)
	bne.s loc_20460c
	bra.s loc_204616
loc_2045fc:
	cmpi.b #$3,$37(a0)
	bne.s loc_204620
loc_204604:
	btst.b #$0,$22(a0)
	bne.s loc_204616
loc_20460c:
	move.b #$32,$1c(a0)
	bra.w loc_2047f0
loc_204616:
	move.b #$6,$1c(a0)
	bra.w loc_2047f0
loc_204620:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204634
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204634:
	btst.b #$7,($f788).w
	bne.w loc_204738
	btst.b #$6,($f788).w
	bne.w loc_204758
	btst.b #$1,($f602).w
	bne.w loc_204758
	andi.b #$f,($f788).w
	beq.s loc_20466c
	btst.b #$0,($f603).w
	beq.s loc_204680
	bset.b #$7,($f788).w
	bra.w loc_204814
loc_20466c:
	btst.b #$0,($f603).w
	beq.w loc_204680
	move.b #$1,($f788).w
	bra.w loc_204814
loc_204680:
	btst.b #$0,($f602).w
	beq.s loc_2046fc
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2046de
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2046b0
	asr.w #$1,d2
	sub.w d2,d1
loc_2046b0:
	btst.b #$0,$22(a0)
	beq.s loc_2046bc
	neg.w d0
	neg.w d1
loc_2046bc:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2046d2
	cmp.w d0,d1
	ble.s loc_2046d8
	bra.s loc_2046d6
loc_2046d2:
	cmp.w d1,d0
	ble.s loc_2046d8
loc_2046d6:
	move.w d1,d0
loc_2046d8:
	move.w d0,$14(a0)
	rts
loc_2046de:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046f8
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202312).l
loc_2046f8:
	bra.w loc_204814
loc_2046fc:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20471c
	move.w #$ab,d0
	jsr (sub_202312).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204758
loc_20471c:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202312).l
	bra.w loc_2047f0
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204738:
	btst.b #$0,($f602).w
	beq.s loc_204758
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204814
	addq.w #$2,($f73e).w
	bra.w loc_204814
loc_204758:
	btst.b #$6,($f788).w
	bne.w loc_2047d4
	andi.b #$f,($f788).w
	beq.s loc_20477c
	btst.b #$1,($f603).w
	beq.s loc_20478e
	bset.b #$6,($f788).w
	bra.w loc_204814
loc_20477c:
	btst.b #$1,($f603).w
	beq.s loc_20478e
	move.b #$1,($f788).w
	bra.w loc_204814
loc_20478e:
	btst.b #$1,($f602).w
	beq.s loc_2047f0
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2047d2
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047d2
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047c4
	neg.w $14(a0)
loc_2047c4:
	move.w #$9c,d0
	jsr (sub_202312).l
	bsr.w sub_204cf0
loc_2047d2:
	bra.s loc_204814
loc_2047d4:
	btst.b #$1,($f602).w
	beq.s loc_2047f0
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204814
	subq.w #$2,($f73e).w
	bra.s loc_204814
loc_2047f0:
	cmpi.w #$60,($f73e).w
	bne.s loc_20480a
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204814
	move.b #$0,($f788).w
	bra.s loc_204814
loc_20480a:
	bcc.s loc_204810
	addq.w #$4,($f73e).w
loc_204810:
	subq.w #$2,($f73e).w
loc_204814:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204840
	move.w $14(a0),d0
	beq.s loc_204840
	bmi.s loc_204834
	sub.w d5,d0
	bcc.s loc_20482e
	move.w #$0,d0
loc_20482e:
	move.w d0,$14(a0)
	bra.s loc_204840
loc_204834:
	add.w d5,d0
	bcc.s loc_20483c
	move.w #$0,d0
loc_20483c:
	move.w d0,$14(a0)
loc_204840:
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_20485e:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2048ce
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2048ce
	bmi.s loc_204876
	neg.w d1
loc_204876:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20674c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2048ce
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2048ca
	cmpi.b #$40,d0
	beq.s loc_2048b8
	cmpi.b #$80,d0
	beq.s loc_2048b2
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048b2:
	sub.w d1,$12(a0)
	rts
loc_2048b8:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2048ca:
	add.w d1,$12(a0)
loc_2048ce:
	rts

sub_2048d0:
	tst.b $2a(a0)
	bne.s loc_204944
	move.w $14(a0),d0
	beq.s loc_2048de
	bpl.s loc_20490e
loc_2048de:
	bset.b #$0,$22(a0)
	bne.s loc_2048f2
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048f2:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204902
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204902
	move.w d1,d0
loc_204902:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20490e:
	sub.w d4,d0
	bcc.s loc_204916
	move.w #$ff80,d0
loc_204916:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204944
	cmpi.w #$400,d0
	blt.s loc_204944
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202312).l
loc_204944:
	rts

sub_204946:
	tst.b $2a(a0)
	bne.s loc_2049b4
	move.w $14(a0),d0
	bmi.s loc_20497e
	bclr.b #$0,$22(a0)
	beq.s loc_204966
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204966:
	cmp.w d6,d0
	bge.s loc_204972
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204972
	move.w d6,d0
loc_204972:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20497e:
	add.w d4,d0
	bcc.s loc_204986
	move.w #$80,d0
loc_204986:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2049b4
	cmpi.w #$fc00,d0
	bgt.s loc_2049b4
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202312).l
loc_2049b4:
	rts

sub_2049b6:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204b00
	tst.w $3e(a0)
	bne.s loc_2049ee
	btst.b #$2,($f602).w
	beq.s loc_2049e2
	bsr.w sub_204b36
loc_2049e2:
	btst.b #$3,($f602).w
	beq.s loc_2049ee
	bsr.w sub_204b5a
loc_2049ee:
	tst.b $2a(a0)
	beq.w loc_204a98
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a0e
	asr.w #$1,d2
	sub.w d2,d1
loc_204a0e:
	btst.b #$0,$22(a0)
	beq.s loc_204a1a
	neg.w d0
	neg.w d1
loc_204a1a:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a30
	cmp.w d0,d1
	ble.s loc_204a36
	bra.s loc_204a34
loc_204a30:
	cmp.w d1,d0
	ble.s loc_204a36
loc_204a34:
	move.w d1,d0
loc_204a36:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a6a
	rts
loc_204a44:
	move.w #$ab,d0
	jsr (sub_202312).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204aca
loc_204a6a:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204a44
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202312).l
	btst.b #$0,$22(a0)
	bne.s loc_204a90
	bsr.w sub_204b5a
	bra.s loc_204a98
loc_204a90:
	bsr.w sub_204b36
	bra.s loc_204a98
	dc.b $4e,$75
loc_204a98:
	move.w $14(a0),d0
	beq.s loc_204aba
	bmi.s loc_204aae
	sub.w d5,d0
	bcc.s loc_204aa8
	move.w #$0,d0
loc_204aa8:
	move.w d0,$14(a0)
	bra.s loc_204aba
loc_204aae:
	add.w d5,d0
	bcc.s loc_204ab6
	move.w #$0,d0
loc_204ab6:
	move.w d0,$14(a0)
loc_204aba:
	tst.w $14(a0)
	bne.s loc_204b00
	move.w #$ab,d0
	jsr (sub_202312).l
loc_204aca:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204aea
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204afa
loc_204aea:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204afa:
	move.b #$5,$1c(a0)
loc_204b00:
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204b24
	move.w #$1000,d1
loc_204b24:
	cmpi.w #$f000,d1
	bge.s loc_204b2e
	move.w #$f000,d1
loc_204b2e:
	move.w d1,$10(a0)
	bra.w loc_20485e

sub_204b36:
	move.w $14(a0),d0
	beq.s loc_204b3e
	bpl.s loc_204b4c
loc_204b3e:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b4c:
	sub.w d4,d0
	bcc.s loc_204b54
	move.w #$ff80,d0
loc_204b54:
	move.w d0,$14(a0)
	rts

sub_204b5a:
	move.w $14(a0),d0
	bmi.s loc_204b6e
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b6e:
	add.w d4,d0
	bcc.s loc_204b76
	move.w #$80,d0
loc_204b76:
	move.w d0,$14(a0)
	rts

sub_204b7c:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204bb6
	tst.w ($ff1506).l
	bne.s loc_204bb6
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204bae
	cmpi.w #$840,$8(a0)
	bcc.s loc_204bae
	rts
loc_204bae:
	btst.b #$1,$2c(a0)
	bne.s loc_204be6
loc_204bb6:
	btst.b #$2,($f602).w
	beq.s loc_204bd0
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204bd0
	move.w d1,d0
loc_204bd0:
	btst.b #$3,($f602).w
	beq.s loc_204be6
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204be6
	move.w d6,d0
loc_204be6:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204bfc
	bcc.s loc_204bf8
	addq.w #$4,($f73e).w
loc_204bf8:
	subq.w #$2,($f73e).w
loc_204bfc:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204c2a
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204c2a
	bmi.s loc_204c1e
	sub.w d1,d0
	bcc.s loc_204c18
	move.w #$0,d0
loc_204c18:
	move.w d0,$10(a0)
	rts
loc_204c1e:
	sub.w d1,d0
	bcs.s loc_204c26
	move.w #$0,d0
loc_204c26:
	move.w d0,$10(a0)
loc_204c2a:
	rts
	.incbin 19500, 22
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
	rts

sub_204c5c:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204cb0
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c8a
	addi.w #$38,d0
loc_204c8a:
	cmp.w d1,d0
	bls.s loc_204cb0
loc_204c8e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c9e
	rts
loc_204c9e:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206dba
	move.b #$6,$24(a0)
	rts
loc_204cb0:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c8e

sub_204cc8:
	tst.b ($f7ca).w
	bne.s loc_204cee
	move.w $14(a0),d0
	bpl.s loc_204cd6
	neg.w d0
loc_204cd6:
	cmpi.w #$80,d0
	bcs.s loc_204cee
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204cee
	btst.b #$1,($f602).w
	bne.s sub_204cf0
loc_204cee:
	rts

sub_204cf0:
	btst.b #$2,$22(a0)
	beq.s loc_204cfa
	bra.s loc_204d2a
loc_204cfa:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d1a
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d2a
loc_204d1a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d2a:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204d44
	cmpi.w #$200,$14(a0)
	bcc.s loc_204d44
	move.w #$200,$14(a0)
loc_204d44:
	rts

sub_204d46:
	tst.b $2a(a0)
	beq.s loc_204d4e
	rts
loc_204d4e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204d60
	tst.w $14(a0)
	beq.w loc_204e26
loc_204d60:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204e26
	btst.b #$3,$22(a0)
	beq.s loc_204d7c
	jsr (sub_205a52).l
	beq.s loc_204dac
loc_204d7c:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2067b6
	cmpi.w #$6,d1
	blt.w loc_204e26
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204da2
	move.w #$380,d2
loc_204da2:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204dac:
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
	bne.s loc_204e28
	tst.b ($ff195b).l
	beq.s loc_204e0a
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e1a
loc_204e0a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e1a:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204e26:
	rts
loc_204e28:
	bset.b #$4,$22(a0)
	rts

sub_204e30:
	tst.b $3c(a0)
	beq.s loc_204e62
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204e46
	move.w #$fe00,d1
loc_204e46:
	cmp.w $12(a0),d1
	ble.s loc_204e60
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204e60
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204e60:
	rts
loc_204e62:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e70
	move.w #$f040,$12(a0)
loc_204e70:
	rts

sub_204e72:
	tst.b $2a(a0)
	bne.s loc_204eac
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204eac
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204eac
	bmi.s loc_204ea8
	tst.w d0
	beq.s loc_204ea6
	add.w d0,$14(a0)
loc_204ea6:
	rts
loc_204ea8:
	add.w d0,$14(a0)
loc_204eac:
	rts

sub_204eae:
	tst.b $2a(a0)
	bne.s loc_204eee
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204eee
	move.b $26(a0),d0
	jsr (sub_200816).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204ee4
	tst.w d0
	bpl.s loc_204ede
	asr.l #$2,d0
loc_204ede:
	add.w d0,$14(a0)
	rts
loc_204ee4:
	tst.w d0
	bmi.s loc_204eea
	asr.l #$2,d0
loc_204eea:
	add.w d0,$14(a0)
loc_204eee:
	rts

sub_204ef0:
	nop
	tst.b $38(a0)
	bne.s loc_204f32
	tst.w $3e(a0)
	bne.s loc_204f34
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204f32
	move.w $14(a0),d0
	bpl.s loc_204f14
	neg.w d0
loc_204f14:
	cmpi.w #$280,d0
	bcc.s loc_204f32
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204f32:
	rts
loc_204f34:
	subq.w #$1,$3e(a0)
	rts

sub_204f3a:
	btst.b #$1,$2c(a0)
	bne.s loc_204f5c
	move.b $26(a0),d0
	beq.s loc_204f5c
	bpl.s loc_204f52
	addq.b #$2,d0
	bcc.s loc_204f50
	moveq #$0,d0
loc_204f50:
	bra.s loc_204f58
loc_204f52:
	subq.b #$2,d0
	bcc.s loc_204f58
	moveq #$0,d0
loc_204f58:
	move.b d0,$26(a0)
loc_204f5c:
	rts

sub_204f5e:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200aae).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205042
	cmpi.b #$80,d0
	beq.w loc_2050a4
	cmpi.b #$c0,d0
	beq.w loc_205100
	bsr.w sub_206acc
	tst.w d1
	bpl.s loc_204fb0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fb0:
	bsr.w sub_20692e
	tst.w d1
	bpl.s loc_204fc2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fc2:
	bsr.w sub_2067de
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205040
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204fe0
	cmp.b d2,d0
	blt.s loc_205040
loc_204fe0:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205162
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20501e
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205010
	asr.w $12(a0)
	bra.s loc_205032
loc_205010:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20501e:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205032
	move.w #$fc0,$12(a0)
loc_205032:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205040
	neg.w $14(a0)
loc_205040:
	rts
loc_205042:
	bsr.w sub_206acc
	tst.w d1
	bpl.s loc_20505c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20505c:
	bsr.w sub_206986
	tst.w d1
	bpl.s loc_205076
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205074
	move.w #$0,$12(a0)
loc_205074:
	rts
loc_205076:
	tst.w $12(a0)
	bmi.s loc_2050a2
	bsr.w sub_2067de
	tst.w d1
	bpl.s loc_2050a2
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205162
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050a2:
	rts
loc_2050a4:
	bsr.w sub_206acc
	tst.w d1
	bpl.s loc_2050b6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050b6:
	bsr.w sub_20692e
	tst.w d1
	bpl.s loc_2050c8
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050c8:
	bsr.w sub_206986
	tst.w d1
	bpl.s loc_2050fe
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2050e8
	move.w #$0,$12(a0)
	rts
loc_2050e8:
	move.b d3,$26(a0)
	bsr.w sub_2051d4
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2050fe
	neg.w $14(a0)
loc_2050fe:
	rts
loc_205100:
	bsr.w sub_20692e
	tst.w d1
	bpl.s loc_20511a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20511a:
	bsr.w sub_206986
	tst.w d1
	bpl.s loc_205134
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205132
	move.w #$0,$12(a0)
loc_205132:
	rts
loc_205134:
	tst.w $12(a0)
	bmi.s loc_205160
	bsr.w sub_2067de
	tst.w d1
	bpl.s loc_205160
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205162
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205160:
	rts

sub_205162:
	btst.b #$4,$22(a0)
	beq.s loc_20516c
	nop
loc_20516c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2051c6
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2051a6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2051b6
loc_2051a6:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2051b6:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202312).l
loc_2051c6:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2051d4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20980, 382

sub_205372:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20539a
	cmpi.b #$5,($ff1506).l
	beq.s loc_20539a
	cmpi.b #$2,($ff1506).l
	beq.s loc_20539a
	tst.b ($ff1506).l
	bne.w loc_20545c
loc_20539a:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2053d8
	tst.b ($ff1506).l
	bne.w loc_20545e
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20545e
	bra.s loc_2053e0
loc_2053d8:
	cmp.b ($f7af).w,d1
	beq.w loc_20545e
loc_2053e0:
	cmp.b ($f7ac).w,d1
	beq.s loc_205410
	cmp.b ($f7ad).w,d1
	beq.s loc_2053f4
	bclr.b #$6,$1(a0)
	rts
loc_2053f4:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205476
	btst.b #$1,$22(a0)
	beq.s loc_205410
	bclr.b #$6,$1(a0)
	rts
loc_205410:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205422
	bclr.b #$6,$1(a0)
	rts
loc_205422:
	cmpi.b #$e0,d2
	bcs.s loc_205430
	bset.b #$6,$1(a0)
	rts
loc_205430:
	btst.b #$6,$1(a0)
	bne.s loc_20544c
	move.b $26(a0),d1
	beq.s loc_20545c
	cmpi.b #$80,d1
	bhi.s loc_20545c
	bset.b #$6,$1(a0)
	rts
loc_20544c:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20545c
	bclr.b #$6,$1(a0)
loc_20545c:
	rts
loc_20545e:
	btst.b #$2,$22(a0)
	bne.s loc_205470
	move.w #$9c,d0
	jsr (sub_202312).l
loc_205470:
	jmp (sub_204cf0).l
loc_205476:
	tst.w $12(a0)
	bmi.s loc_2054ba
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2054ae
	cmpi.w #$38,d1
	bcs.s loc_2054a6
	cmpi.w #$80,d1
	bcs.s loc_2054ba
loc_20549e:
	bclr.b #$6,$1(a0)
	rts
loc_2054a6:
	bset.b #$6,$1(a0)
	rts
loc_2054ae:
	cmpi.w #$38,d1
	bcs.s loc_20549e
	cmpi.w #$80,d1
	bcc.s loc_2054a6
loc_2054ba:
	rts

sub_2054bc:
	lea (dat_2057ac).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2054de
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2054de:
	bsr.w sub_20574e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205556
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205524
	move.b d0,$1e(a0)

sub_205508:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20551c
	bpl.s loc_20551c
	cmpi.b #$fd,d0
	bge.s loc_205526
loc_20551c:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205524:
	rts
loc_205526:
	addq.b #$1,d0
	bne.s loc_205536
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20551c
loc_205536:
	addq.b #$1,d0
	bne.s loc_20554a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20551c
loc_20554a:
	addq.b #$1,d0
	bne.s loc_205554
	move.b $2(a1,d1.w),$1c(a0)
loc_205554:
	rts
loc_205556:
	subq.b #$1,$1e(a0)
	bpl.s loc_205524
	addq.b #$1,d0
	bne.w loc_205610
	tst.b ($ff195b).l
	bne.w loc_2056d8
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20557e
	not.b d0
loc_20557e:
	btst.b #$1,$2c(a0)
	bne.s loc_20558c
	addi.b #$10,d0
	bra.s loc_20558e
loc_20558c:
	addq.b #$8,d0
loc_20558e:
	bpl.s loc_205592
	moveq #$3,d1
loc_205592:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205684
	move.w $14(a0),d2
	bpl.s loc_2055b0
	neg.w d2
loc_2055b0:
	btst.b #$1,$2c(a0)
	beq.s loc_2055c8
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2059ae).l,a1
	bra.s loc_2055f2
loc_2055c8:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205988).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2055f2
	lea (dat_20582c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2055f2
	lea (dat_205824).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2055f2:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205600
	moveq #$0,d2
loc_205600:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205508
	add.b d3,$1a(a0)
	rts
loc_205610:
	addq.b #$1,d0
	bne.s loc_205680
	move.w $14(a0),d2
	bpl.s loc_20561c
	neg.w d2
loc_20561c:
	lea (dat_20590a).l,a1
	tst.b ($ff195b).l
	bne.s loc_20565a
	lea (dat_20583c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20564e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20565a
	lea (dat_2059b6).l,a1
	bra.s loc_20565a
loc_20564e:
	cmpi.w #$600,d2
	bcc.s loc_20565a
	lea (dat_205834).l,a1
loc_20565a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205664
	moveq #$0,d2
loc_205664:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205508
loc_205680:
	addq.b #$1,d0
	bne.s loc_2056c4
loc_205684:
	move.w $14(a0),d2
	bmi.s loc_20568c
	neg.w d2
loc_20568c:
	addi.w #$800,d2
	bpl.s loc_205694
	moveq #$0,d2
loc_205694:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20591c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2056ae
	lea (dat_205844).l,a1
loc_2056ae:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205508
loc_2056c4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2056d8:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056ea
	not.b d0
loc_2056ea:
	addi.b #$10,d0
	bpl.s loc_2056f2
	moveq #$0,d1
loc_2056f2:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205720
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205610
loc_205720:
	move.w $14(a0),d2
	bpl.s loc_205728
	neg.w d2
loc_205728:
	lea (dat_205904).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20573a
	lea (dat_2058fe).l,a1
loc_20573a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205744
	moveq #$0,d2
loc_205744:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205508

sub_20574e:
	tst.b ($ff195b).l
	beq.s loc_20575a
	move.b dat_20575c(pc,d0.w),d0
loc_20575a:
	rts
dat_20575c:
	.incbin 22364, 80
dat_2057ac:
	.incbin 22444, 120
dat_205824:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20582c:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205834:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20583c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205844:
	.incbin 22596, 186
dat_2058fe:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205904:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20590a:
	.incbin 22794, 18
dat_20591c:
	.incbin 22812, 108
dat_205988:
	.incbin 22920, 38
dat_2059ae:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2059b6:
	.incbin 22966, 56

sub_2059ee:
	tst.b (a0)
	beq.w loc_205a50
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205a50
	move.b d0,(a2)
	lea (dat_231b1c).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205a50
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205a22:
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
loc_205a3c:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205a3c
	dbf d1,loc_205a22
loc_205a50:
	rts

sub_205a52:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ac6
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
	bne.s loc_205ab4
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205ab4:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ac6:
	rts
loc_205ac8:
	move.w #$e,d0

sub_205acc:
	cmpi.w #$67,d0
	bne.s loc_205ada
	move.b #$1,($ff1958).l
loc_205ada:
	move.w d0,($a12010).l
loc_205ae0:
	move.w ($a12020).l,d0
	beq.s loc_205ae0
	cmp.w ($a12020).l,d0
	bne.s loc_205ae0
	move.w #$0,($a12010).l
loc_205af8:
	move.w ($a12020).l,d0
	bne.s loc_205af8
	move.w ($a12020).l,d0
	bne.s loc_205af8
	rts
	dc.b $00,$00

sub_205b0c:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205b28
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205b28:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b68
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b6a
loc_205b44:
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
loc_205b68:
	rts
loc_205b6a:
	addq.b #$1,d0
	bne.s loc_205b7a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205b44
loc_205b7a:
	addq.b #$1,d0
	bne.s loc_205b8e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205b44
loc_205b8e:
	addq.b #$1,d0
	bne.s loc_205b98
	move.b $2(a1,d1.w),$1c(a0)
loc_205b98:
	addq.b #$1,d0
	bne.s loc_205ba0
	addq.b #$2,$24(a0)
loc_205ba0:
	addq.b #$1,d0
	bne.s loc_205bae
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205bae:
	addq.b #$1,d0
	bne.s loc_205bb6
	addq.b #$2,$25(a0)
loc_205bb6:
	rts
	.incbin 23480, 536

sub_205dd0:
	rts
	.incbin 24018, 308
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f1a(pc,d0.w),d0
	jsr dat_205f1a(pc,d0.w)
	jmp (sub_2038f2).l
dat_205f1a:
	.incbin 24346, 156
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205fd0
	dc.b $54,$68,$00,$0c
loc_205fd0:
	lea (dat_236a94).l,a1
	bra.w sub_205b0c
	.incbin 24538, 698
loc_206294:
	tst.b ($ff1956).l
	beq.s loc_2062a2
	andi.b #$7f,$2(a0)
loc_2062a2:
	lea (dat_21d400).l,a1
	jsr (sub_205b0c).l
	bra.w loc_206352
	.incbin 25266, 160
loc_206352:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_206364
	rts
loc_206364:
	cmp.b $24(a0),d0
	beq.s loc_20637a
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_20637a:
	jmp (sub_2038f2).l
loc_206380:
	bclr.b #$7,($ff156b).l
	beq.s loc_2063ce
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2063d0(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2063a4:
	move.l (a1)+,(a2)+
	dbf d0,loc_2063a4
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2063ce:
	rts
dat_2063d0:
	.incbin 25552, 170
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2064ca
	neg.w $14(a1)
	bra.s loc_2064ca
	.incbin 25754, 48
loc_2064ca:
	bset.b #$2,$22(a1)
	bne.s loc_2064e8
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2064e8:
	rts
	.incbin 25834, 146
loc_20657c:
	moveq #$1,d0
	rts
	dc.b $70,$00,$4e,$75

sub_206584:
	rts
loc_206586:
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
	bne.s loc_206640
	move.b ($ff1593).l,($ff195b).l
loc_206640:
	tst.b ($ff1522).l
	bpl.s loc_206656
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206656:
	rts

sub_206658:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206586
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
	bne.s loc_206712
	move.b ($ff1591).l,($ff195b).l
loc_206712:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206734
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206734:
	tst.b ($ff1522).l
	bpl.s loc_20674a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20674a:
	rts

sub_20674c:
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
	bpl.s loc_206788
	move.b d1,d0
	bpl.s loc_206782
	subq.b #$1,d0
loc_206782:
	addi.b #$20,d0
	bra.s loc_206792
loc_206788:
	move.b d1,d0
	bpl.s loc_20678e
	addq.b #$1,d0
loc_20678e:
	addi.b #$1f,d0
loc_206792:
	andi.b #$c0,d0
	beq.w loc_206862
	cmpi.b #$80,d0
	beq.w loc_2069fe
	andi.b #$38,d1
	bne.s loc_2067aa
	addq.w #$8,d2
loc_2067aa:
	cmpi.b #$40,d0
	beq.w loc_206ad4
	bra.w loc_206936

sub_2067b6:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206a5c
	cmpi.b #$80,d0
	beq.w sub_206986
	cmpi.b #$c0,d0
	beq.w loc_2068c6

sub_2067de:
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
loc_206842:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206850
	move.b ($f768).w,d3
	exg d0,d1
loc_206850:
	btst.l #$0,d3
	beq.s loc_206858
	move.b d2,d3
loc_206858:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206862:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20116c).l
	move.b #$0,d2
loc_20687e:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20688a
	move.b d2,d3
loc_20688a:
	rts

sub_20688c:
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
	beq.s loc_2068c4
	move.b #$0,d3
loc_2068c4:
	rts
loc_2068c6:
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
	bra.w loc_206842

sub_20692e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206936:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012dc).l
	move.b #$c0,d2
	bra.w loc_20687e
	.incbin 26966, 48

sub_206986:
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
	bra.w loc_206842

sub_2069f6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069fe:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20116c).l
	move.b #$80,d2
	bra.w loc_20687e
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
	beq.s loc_206a5a
	move.b #$80,d3
loc_206a5a:
	rts
loc_206a5c:
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
	bra.w loc_206842

sub_206acc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ad4:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012dc).l
	move.b #$40,d2
	bra.w loc_20687e
	.incbin 27384, 48

sub_206b28:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206b4c
	addi.w #$c,d3
	moveq #$a,d5
loc_206b4c:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206b5a:
	tst.b $1(a1)
	bpl.s loc_206b66
	move.b $20(a1),d0
	bne.s loc_206b72
loc_206b66:
	lea $40(a1),a1
	dbf d6,loc_206b5a
	moveq #$0,d0
	rts
loc_206b72:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206ed8).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206b9a
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206ba0
	bra.w loc_206b66
loc_206b9a:
	cmp.w d4,d0
	bhi.w loc_206b66
loc_206ba0:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206bb8
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206bbe
	bra.w loc_206b66
loc_206bb8:
	cmp.w d5,d0
	bhi.w loc_206b66
loc_206bbe:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206c32
	cmpi.b #$c0,d1
	beq.w loc_206e12
	tst.b d1
	bmi.w loc_206cfc
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206bf6
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206bf4
	addq.b #$2,$24(a1)
loc_206bf4:
	rts
loc_206bf6:
	tst.w $12(a0)
	bpl.s loc_206c20
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206c30
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206c30
	addq.b #$4,$25(a1)
	rts
loc_206c20:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206c30
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206c30:
	rts

sub_206c32:
	tst.b ($ff1521).l
	bne.s loc_206c4c
	tst.b ($ff151f).l
	bne.s loc_206c4c
	cmpi.b #$2,$1c(a0)
	bne.w loc_206cfc
loc_206c4c:
	tst.b $21(a1)
	beq.s loc_206c76
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206c74
	bset.b #$7,$22(a1)
loc_206c74:
	rts
loc_206c76:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206c8e
	moveq #$6,d0
loc_206c8e:
	move.w d0,$3e(a1)
	move.w dat_206cee(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206ca8
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206ca8:
	bsr.w sub_20ac74
	move.w #$96,d0
	jsr (sub_202312).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206cde
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206ce6
	neg.w $12(a0)
	rts
loc_206cde:
	addi.w #$100,$12(a0)
	rts
loc_206ce6:
	subi.w #$100,$12(a0)
	rts
dat_206cee:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206cf6:
	bset.b #$7,$22(a1)
loc_206cfc:
	tst.b ($ff1521).l
	bne.s loc_206d0c
	tst.b ($ff151f).l
	beq.s loc_206d10
loc_206d0c:
	moveq #$ffffffff,d0
	rts
loc_206d10:
	nop
	tst.w $30(a0)
	bne.s loc_206d0c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206d46
	tst.w ($ff1512).l
	beq.w loc_206db0
	jsr (sub_2076ae).l
	bne.s loc_206d46
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206d46:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206d5c
	move.b #$0,($ff156f).l
loc_206d5c:
	move.b #$4,$24(a0)
	bsr.w sub_205162
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206d8c
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206d8c:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206d9a
	neg.w $10(a0)
loc_206d9a:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206db0:
	tst.w ($ff1588).l
	bne.w loc_206d46

sub_206dba:
	tst.w ($ff1906).l
	bne.s loc_206e0e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205162
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
loc_206e0e:
	moveq #$ffffffff,d0
	rts
loc_206e12:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206ec4
	cmpi.b #$b,d1
	beq.w loc_206e8e
	cmpi.b #$c,d1
	beq.w loc_206e92
	cmpi.b #$17,d1
	beq.w loc_206ec4
	cmpi.b #$21,d1
	beq.w loc_206ec4
	cmpi.b #$23,d1
	beq.w loc_206ec4
	cmpi.b #$2f,d1
	beq.w loc_206eca
	cmpi.b #$3a,d1
	beq.w loc_206eca
	cmpi.b #$3b,d1
	beq.w loc_206eca
	cmpi.b #$1,($f7aa).w
	bne.s loc_206e8c
	cmpi.b #$3c,d1
	blt.s loc_206e8c
	cmpi.b #$3f,d1
	bgt.s loc_206e8c
	bsr.w sub_206c32
	tst.b $20(a1)
	bne.s loc_206e84
	addq.b #$3,$21(a1)
loc_206e84:
	clr.b $20(a1)
	bra.w loc_206ec4
loc_206e8c:
	rts
loc_206e8e:
	bra.w loc_206cf6
loc_206e92:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206ec0
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206eac
	subi.w #$10,d0
loc_206eac:
	sub.w d2,d0
	bcc.s loc_206eb8
	addi.w #$18,d0
	bcs.s loc_206ebc
	bra.s loc_206ec0
loc_206eb8:
	cmp.w d4,d0
	bhi.s loc_206ec0
loc_206ebc:
	bra.w loc_206cfc
loc_206ec0:
	bra.w sub_206c32
loc_206ec4:
	addq.b #$1,$21(a1)
	rts
loc_206eca:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ed6
	addq.b #$1,$21(a1)
loc_206ed6:
	rts
dat_206ed8:
	.incbin 28376, 362
loc_207042:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_207058
	move.l #$4000,(dat_2071d2).l
	bra.s loc_207078
loc_207058:
	addi.l #$2000,(dat_2071d2).l
	cmpi.l #$80000,(dat_2071d2).l
	bls.s loc_207078
	move.l #$80000,(dat_2071d2).l
loc_207078:
	move.l (dat_2071d2).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20708a
	sub.l d0,$c(a0)
loc_20708a:
	btst.b #$1,($f604).w
	beq.s loc_207096
	add.l d0,$c(a0)
loc_207096:
	btst.b #$2,($f604).w
	beq.s loc_2070a2
	sub.l d0,$8(a0)
loc_2070a2:
	btst.b #$3,($f604).w
	beq.s loc_2070ae
	add.l d0,$8(a0)
loc_2070ae:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f84).l
	move.w (a1),($ff194e).l
	lea (dat_2071d6).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2070f0
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2070ea
	move.b #$0,d1
loc_2070ea:
	move.b d1,($ff1904).l
loc_2070f0:
	btst.b #$7,($f605).w
	beq.s loc_207110
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20710a
	add.b (a2),d1
loc_20710a:
	move.b d1,($ff1904).l
loc_207110:
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
	beq.s loc_20719c
	bsr.w sub_2076ae
	bne.s loc_20719c
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
loc_20719c:
	btst.b #$4,($f605).w
	beq.s loc_2071cc
	move.b #$0,($ff1906).l
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2071cc:
	jmp (sub_2038f2).l
dat_2071d2:
	dc.b $00,$00,$40,$00
dat_2071d6:
	.incbin 29142, 710

sub_20749c:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2074aa:
	clr.l (a2)+
	dbf d0,loc_2074aa
	rts

sub_2074b2:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2074c0(pc,d0.w),d0
	jmp dat_2074c0(pc,d0.w)
dat_2074c0:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207760).l,a0
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
	bcc.s loc_2074fe
	moveq #$0,d6
loc_2074fe:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207506:
	cmp.w (a0),d6
	bls.s loc_207518
	tst.b $4(a0)
	bpl.s loc_207514
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207514:
	addq.w #$8,a0
	bra.s loc_207506
loc_207518:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207538
loc_207526:
	cmp.w (a0),d6
	bls.s loc_207538
	tst.b $4(a0)
	bpl.s loc_207534
	addq.b #$1,$1(a2)
loc_207534:
	addq.w #$8,a0
	bra.s loc_207526
loc_207538:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207622
	bge.s loc_2075c8
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2075a4
loc_207572:
	cmp.w -$8(a0),d6
	bge.s loc_2075a4
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207588
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207588:
	bsr.w sub_207646
	bne.s loc_207592
	subq.w #$8,a0
	bra.s loc_207572
loc_207592:
	tst.b $4(a0)
	bpl.s loc_2075a2
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2075a2:
	addq.w #$8,a0
loc_2075a4:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2075b0:
	cmp.w -$8(a0),d6
	bgt.s loc_2075c2
	tst.b -$4(a0)
	bpl.s loc_2075be
	subq.b #$1,(a2)
loc_2075be:
	subq.w #$8,a0
	bra.s loc_2075b0
loc_2075c2:
	move.l a0,($f770).w
	rts
loc_2075c8:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2075dc:
	cmp.w (a0),d6
	bls.s loc_2075fe
	tst.b $4(a0)
	bpl.s loc_2075ea
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2075ea:
	bsr.w sub_207646
	beq.s loc_2075dc
	tst.b $4(a0)
	bpl.s loc_2075fe
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2075fe:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20761e
loc_20760c:
	cmp.w (a0),d6
	bls.s loc_20761e
	tst.b $4(a0)
	bpl.s loc_20761a
	addq.b #$1,$1(a2)
loc_20761a:
	addq.w #$8,a0
	bra.s loc_20760c
loc_20761e:
	move.l a0,($f774).w
loc_207622:
	rts

sub_207624:
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

sub_207646:
	bsr.s sub_207624
	beq.s loc_207658
	tst.b $4(a0)
	bpl.s loc_20765e
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20765e
loc_207658:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20765e:
	bsr.w sub_2076ae
	bne.s loc_2076ac
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
	bpl.s loc_20768e
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20768e:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2076a0
	nop
	nop
	nop
	nop
loc_2076a0:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2076ac:
	rts

sub_2076ae:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2076b6:
	tst.b (a1)
	beq.s loc_2076c2
	lea $40(a1),a1
	dbf d0,loc_2076b6
loc_2076c2:
	rts

sub_2076c4:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2076e2
loc_2076d6:
	tst.b (a1)
	beq.s loc_2076e2
	lea $40(a1),a1
	dbf d0,loc_2076d6
loc_2076e2:
	rts
loc_2076e4:
	move.w $8(a0),d0
loc_2076e8:
	tst.b $1(a0)
	bmi.s loc_207752
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207752
loc_207706:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207748
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207740
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207738
	moveq #$0,d1
	bra.s loc_207740
loc_207738:
	cmpi.w #$3,d1
	bcs.s loc_207740
	moveq #$2,d1
loc_207740:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207748:
	jsr (sub_20399e).l
	moveq #$1,d0
	rts
loc_207752:
	btst.b #$7,($ff152e).l
	bne.s loc_207706
	moveq #$0,d0
	rts
dat_207760:
	.incbin 30560, 5562

sub_208d1a:
	btst.b #$3,$22(a0)
	beq.s loc_208d8a
	btst.b #$3,$22(a1)
	beq.s loc_208d8a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208d8a
	tst.b $2a(a1)
	beq.s loc_208d4c
	move.w #$ab,d0
	jsr (sub_202312).l
loc_208d4c:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208d78
	cmpi.b #$17,$1c(a1)
	beq.s loc_208d78
	bclr.b #$0,$2c(a1)
loc_208d78:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d8a
	bclr.b #$1,$22(a1)
loc_208d8a:
	rts

sub_208d8c:
	cmpi.b #$4,$24(a1)
	bne.s loc_208d9e
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208d9e:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208dfe
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208dc0
	bclr.b #$3,$22(a0)
	bra.w sub_208d1a
loc_208dc0:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208dfe
	tst.b ($ff195b).l
	beq.s loc_208de8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208df8
loc_208de8:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208df8:
	move.b #$0,$1c(a1)
loc_208dfe:
	bset.b #$3,$22(a1)
	beq.s loc_208e20
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208e58
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208e20:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208e4c
	cmpi.b #$2,$24(a0)
	beq.s loc_208e52
loc_208e4c:
	move.w $10(a1),$14(a1)
loc_208e52:
	bclr.b #$1,$22(a1)
loc_208e58:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208e62:
	move.b #$1,$25(a0)
loc_208e68:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20911c
	btst.b #$6,$2c(a1)
	bne.w loc_20911c
	cmpi.b #$6,$24(a1)
	bcc.w loc_20911c
	tst.b $0(a1)
	beq.w loc_20911c
	tst.b $1(a0)
	bpl.w loc_20911c
	tst.b ($ff1906).l
	bne.w loc_20911c
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20911c
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20911c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ed6
	btst.b #$3,$22(a0)
	bne.s loc_208ee8
	bra.w loc_20911c
loc_208ed6:
	cmpi.b #$1,$25(a0)
	bne.s loc_208ee8
	tst.w $12(a1)
	beq.s loc_208ee8
	bmi.w loc_20911c
loc_208ee8:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20911c
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20911c
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208f1e
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208f1e:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208f2c
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208f2c:
	cmp.w d4,d5
	bcs.w loc_208fc0
	cmpi.b #$1,$25(a0)
	beq.w loc_20911c
	cmpi.b #$a,$0(a0)
	bne.s loc_208f4e
	btst.b #$1,$22(a1)
	bne.w loc_20911c
loc_208f4e:
	cmpi.b #$4,d5
	bls.w loc_20911c
	bsr.w sub_20916c
	move.l d0,-(a7)
	bsr.w sub_208d1a
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208f78
	tst.w $10(a1)
	beq.s loc_208fa8
	bpl.s loc_208f80
	bra.s loc_208fa8
loc_208f78:
	tst.w $10(a1)
	beq.s loc_208fa8
	bpl.s loc_208fa8
loc_208f80:
	bsr.w sub_20912c
	btst.b #$1,$22(a1)
	bne.s loc_208f9e
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208f9e:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208fa8:
	bsr.w sub_2091e2
	bsr.w sub_20912c
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208fc0:
	cmpi.b #$19,$0(a0)
	bne.s loc_208fd2
	btst.b #$2,$22(a1)
	bne.w loc_20911c
loc_208fd2:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208fe8
	bmi.w loc_2090b8
loc_208fe8:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208ffa
	tst.w $12(a1)
	beq.s loc_208ffa
	bmi.w loc_20911c
loc_208ffa:
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
	beq.s loc_209046
	bpl.s loc_209026
	neg.b d0
loc_209026:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20674c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209046
	tst.w $10(a0)
	bpl.s loc_209042
	neg.w d1
loc_209042:
	add.w d1,$8(a1)
loc_209046:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2090b0
	tst.w $12(a0)
	bmi.s loc_209084
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2067de).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209084
	add.w d1,$c(a1)
	bra.w loc_20911c
loc_209084:
	tst.w $12(a0)
	bpl.s loc_2090b0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2069f6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090b0
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dba).l
	movem.l (a7)+,a0-a1
	bra.s loc_20911c
loc_2090b0:
	bsr.w sub_208d8c
	moveq #$1,d0
	rts
loc_2090b8:
	cmpi.b #$1,$25(a0)
	beq.s loc_20911c
	cmpi.b #$9,$0(a0)
	beq.s loc_20911c
	cmpi.b #$a,$0(a0)
	bne.s loc_2090e2
	cmpi.b #$2,$25(a0)
	beq.s loc_209102
	btst.b #$1,$1(a0)
	bne.s loc_209102
	bra.s loc_20911c
loc_2090e2:
	btst.b #$1,$22(a1)
	bne.s loc_209102
	tst.w $12(a0)
	beq.s loc_209102
	bmi.s loc_209102
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dba).l
	movem.l (a7)+,a0-a1
loc_209102:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2091e2
	bsr.w sub_208d1a
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20911c:
	bsr.w sub_2091e2
	bsr.w sub_208d1a
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_20912c:
	tst.w $10(a0)
	beq.s loc_20916a
	cmpi.b #$a,$0(a0)
	beq.s loc_20916a
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209146
	neg.b d0
loc_209146:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20674c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20916a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dba).l
	movem.l (a7)+,a0-a1
loc_20916a:
	rts

sub_20916c:
	cmpi.b #$a,$0(a0)
	bne.s loc_20917c
	move.b #$0,$20(a1)
	rts
loc_20917c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2091d0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2091e0
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_20919e
	tst.w $10(a2)
	beq.s loc_2091e0
loc_20919e:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2091b0
	cmp.w $8(a2),d1
	bcs.s loc_2091e0
	bra.s loc_2091b6
loc_2091b0:
	cmp.w $8(a2),d1
	bcc.s loc_2091e0
loc_2091b6:
	cmpi.b #$15,$0(a0)
	beq.s loc_2091e0
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206dba).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2091d0:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2091e0:
	rts

sub_2091e2:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2091fc
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2091fc
	move.b #$0,$20(a1)
loc_2091fc:
	rts
	.incbin 37374, 968
loc_2095c6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2095d4(pc,d0.w),d0
	jmp dat_2095d4(pc,d0.w)
dat_2095d4:
	.incbin 38356, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2095c6
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20962a
	tst.b $1(a0)
	bpl.s loc_209632
loc_20962a:
	move.w dat_209684(pc,d0.w),d1
	jsr dat_209684(pc,d1.w)
loc_209632:
	bsr.w sub_2038f2
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209664
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209664:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20399e
	rts
dat_209684:
	.incbin 38532, 26
	addq.b #$2,$24(a0)
	move.l #$209a06,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2096f4
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209a0c,$4(a0)
	bra.s loc_209736
loc_2096f4:
	btst.l #$3,d0
	beq.s loc_209722
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209a56,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cf80).l
	move.l (a7)+,d0
	bra.s loc_209736
loc_209722:
	btst.b #$1,$1(a0)
	beq.s loc_209736
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209736:
	btst.l #$1,d0
	beq.s loc_209742
	bset.b #$5,$2(a0)
loc_209742:
	andi.w #$2,d0
	move.w dat_20974e(pc,d0.w),$30(a0)
	rts
dat_20974e:
	dc.b $f0,$00,$f6,$00

sub_209752:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e68).l
	tst.b $1(a0)
	bpl.s loc_20976e
	lea ($d000).w,a1
	bsr.s sub_209752
	bne.s loc_209770
loc_20976e:
	rts
loc_209770:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202312).l
	.incbin 38818, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209af2(pc,d0.w),d1
	jmp dat_209af2(pc,d1.w)
dat_209af2:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209afc:
	.incbin 39676, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209b54
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b4c
	moveq #$0,d1
	bra.s loc_209b54
loc_209b4c:
	cmpi.w #$3,d1
	bcs.s loc_209b54
	moveq #$2,d1
loc_209b54:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209b70
	moveq #$6,d1
loc_209b70:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209afc).l,a1
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
	beq.s loc_209bc0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209bb8
	moveq #$0,d0
	bra.s loc_209bc0
loc_209bb8:
	cmpi.w #$3,d0
	bcs.s loc_209bc0
	moveq #$2,d0
loc_209bc0:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209c8e
	dbf d0,loc_209bc0
	bclr.b #$7,(a2)
	bra.s loc_209c16
loc_209bd2:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209bfe
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209bf6
	moveq #$0,d0
	bra.s loc_209bfe
loc_209bf6:
	cmpi.w #$3,d0
	bcs.s loc_209bfe
	moveq #$2,d0
loc_209bfe:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209c8e
	dbf d0,loc_209bfe
	bclr.b #$7,(a2)
	bsr.w sub_2076c4
	bne.w loc_209c9a
loc_209c16:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209f60,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c6c
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209c6c
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209c6c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209c8e:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209bd2
loc_209c9a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209cc0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209cb8
	moveq #$0,d0
	bra.s loc_209cc0
loc_209cb8:
	cmpi.w #$3,d0
	bcs.s loc_209cc0
	moveq #$2,d0
loc_209cc0:
	lea $1(a2),a3
loc_209cc4:
	btst.b #$0,-(a3)
	bne.w sub_20399e
	dbf d0,loc_209cc4
	tst.b $1(a0)
	bmi.s loc_209cf4
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209d6e
loc_209cf4:
	tst.w ($ff190e).l
	bne.s loc_209d04
	move.b ($ff1913).l,$1a(a0)
loc_209d04:
	bra.w sub_2038f2
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209d72
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209d54
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209d4c
	moveq #$0,d1
	bra.s loc_209d54
loc_209d4c:
	cmpi.w #$3,d1
	bcs.s loc_209d54
	moveq #$2,d1
loc_209d54:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209f58).l,a1
	bsr.w sub_205b0c
	bra.w sub_2038f2
loc_209d6e:
	bra.w sub_20399e

sub_209d72:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209dc2
	bset.b #$1,($ff150d).l
	beq.s loc_209dac
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209dc2
	bset.b #$2,($ff150d).l
	bne.s loc_209dc2
loc_209dac:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205acc).l
loc_209dc2:
	jmp (sub_202312).l
	.incbin 40392, 400
dat_209f58:
	.incbin 40792, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a118(pc,d0.w),d0
	jsr dat_20a118(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_20399e
	rts
dat_20a118:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a260,$4(a0)
	moveq #$5,d0
	jsr (sub_20cf80).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a22c
	tst.b ($ff152e).l
	beq.s loc_20a192
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a178
	btst.b #$3,$22(a0)
	bne.s loc_20a198
	bra.s loc_20a192
loc_20a178:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a192
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a192:
	jmp (sub_2038f2).l
loc_20a198:
	addq.b #$2,$24(a0)
	bsr.w sub_20a22c
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a1b8
	jmp (sub_20399e).l
loc_20a1b8:
	jmp (sub_2038f2).l
	.incbin 41406, 110

sub_20a22c:
	lea ($d000).w,a1
	bsr.w sub_20a234

sub_20a234:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208e62).l
	.incbin 41538, 106
loc_20a2ac:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2da(pc,d0.w),d0
	jsr dat_20a2da(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a2d8
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a2d2
	btst.b #$0,($ff1505).l
	bne.s loc_20a2d8
loc_20a2d2:
	jmp (sub_2038f2).l
loc_20a2d8:
	rts
dat_20a2da:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a8b4,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a30e
	move.b #$13,$1a(a0)
loc_20a30e:
	rts
loc_20a310:
	tst.b ($ff0f01).l
	beq.s loc_20a31e
	jmp (sub_20399e).l
loc_20a31e:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a2ac
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a342(pc,d0.w),d0
	jsr dat_20a342(pc,d0.w)
	jsr (sub_2038f2).l
	jmp (loc_2076e4).l
dat_20a342:
	.incbin 41794, 282

sub_20a45c:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a494
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a48c
	moveq #$0,d1
	bra.s loc_20a494
loc_20a48c:
	cmpi.w #$3,d1
	bcs.s loc_20a494
	moveq #$2,d1
loc_20a494:
	add.w d1,d0
	rts

sub_20a498:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a4ba
	tst.b ($ff1956).l
	beq.s loc_20a4b2
	tst.b $29(a0)
	bne.s loc_20a4ba
	rts
loc_20a4b2:
	tst.b $29(a0)
	beq.s loc_20a4ba
	rts
loc_20a4ba:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208e68).l
	tst.b $28(a0)
	bne.s loc_20a4dc
	tst.b ($ff0f01).l
	beq.s loc_20a4dc
	jmp (loc_2076e4).l
loc_20a4dc:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a310
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4f4(pc,d0.w),d1
	jmp dat_20a4f4(pc,d1.w)
dat_20a4f4:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a8b4,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a53e
	tst.b $29(a0)
	bne.s loc_20a53e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a53e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a45c
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a56a
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a56a:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a5c4
	move.b $25(a0),d0
	beq.s loc_20a5a4
	bsr.w sub_20383a
	jsr (sub_20688c).l
	tst.w d1
	bpl.w loc_20a5b2
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a5b2
loc_20a5a4:
	tst.b $1(a0)
	bpl.s loc_20a5b2
	lea ($d000).w,a1
	bsr.w sub_20a498
loc_20a5b2:
	tst.w ($ff190e).l
	bne.s loc_20a5c4
	lea (dat_20a82c).l,a1
	bsr.w sub_205b0c
loc_20a5c4:
	bsr.w sub_2038f2
	jmp (loc_2076e4).l
	.incbin 42446, 606
dat_20a82c:
	.incbin 43052, 586
loc_20aa76:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa8a(pc,d0.w),d0
	jsr dat_20aa8a(pc,d0.w)
	jmp (sub_2038f2).l
dat_20aa8a:
	.incbin 43658, 146
	tst.b $28(a0)
	bmi.w loc_20aa76
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab32(pc,d0.w),d0
	jmp dat_20ab32(pc,d0.w)
dat_20ab32:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20abcc,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ab62
	move.b #$3,$1a(a0)
	bra.s loc_20ab82
loc_20ab62:
	tst.w ($ff1588).l
	beq.s loc_20ab70
	move.b #$2,$1a(a0)
loc_20ab70:
	tst.b $28(a0)
	beq.s loc_20ab82
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ab82:
	tst.b $28(a0)
	bne.s loc_20abc6
	tst.b $29(a0)
	beq.s loc_20abb2
	tst.w ($ff1512).l
	beq.s loc_20ab9e
	bclr.b #$5,$2(a0)
	bra.s loc_20abc6
loc_20ab9e:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20abc6
	eori.b #$20,$2(a0)
	bra.s loc_20abc6
loc_20abb2:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20abc6
	move.b #$2,$1a(a0)
loc_20abc6:
	jmp (sub_2038f2).l
	.incbin 43980, 168

sub_20ac74:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ac90
	move.l d1,(a3)
loc_20ac90:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20acba
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205acc).l
loc_20acba:
	rts
loc_20acbc:
	tst.w ($ff1588).l
	beq.s loc_20ad12
	bsr.w sub_20af0e
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
	lea (dat_20b06e).l,a2
	moveq #$2,d6
	bsr.w sub_20b0c6
	bra.w loc_20ad6c
loc_20ad12:
	tst.b ($ff1511).l
	beq.s loc_20ad36
	bpl.s loc_20ad20
	bsr.w sub_20aeb8
loc_20ad20:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20afa8
loc_20ad36:
	tst.b ($ff150f).l
	beq.s loc_20ad6c
	bpl.s loc_20ad44
	bsr.w sub_20aea4
loc_20ad44:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20ad68
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20ad68:
	bsr.w sub_20af9e
loc_20ad6c:
	tst.w ($ff1588).l
	bne.w loc_20ae18
	tst.b ($ff1510).l
	beq.w loc_20ae18
	tst.w ($f63a).w
	bne.w loc_20ae18
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ae76
	tst.b ($f7cc).w
	bne.s loc_20adc2
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20adc2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20adc2
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20adc2
	move.b #$9,(a1)
loc_20adc2:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b0b4
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b0be
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20ae14
	move.w #$63,d1
loc_20ae14:
	bsr.w sub_20b0be
loc_20ae18:
	tst.b ($ff150e).l
	beq.s loc_20ae2a
	clr.b ($ff150e).l
	bsr.w sub_20b094
loc_20ae2a:
	tst.b ($f7d6).w
	beq.s loc_20ae74
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ae4a
	move.l #$6d400001,d0
loc_20ae4a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20af2c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ae6a
	move.l #$6e800001,d0
loc_20ae6a:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20af2c
loc_20ae74:
	rts
loc_20ae76:
	btst.b #$7,($ff152e).l
	bne.s loc_20aea2
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206dba
	move.b #$1,($ff150c).l
loc_20aea2:
	rts

sub_20aea4:
	move.l #$73600002,($c00004).l
	lea dat_20af0a(pc),a2
	move.w #$2,d2
	bra.s loc_20aed4

sub_20aeb8:
	lea ($c00000).l,a6
	bsr.w sub_20b094
	move.l #$70600002,($c00004).l
	lea dat_20af02(pc),a2
	move.w #$6,d2
loc_20aed4:
	lea (dat_236456).l,a1
loc_20aeda:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20aef6
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20aeea:
	move.l (a3)+,(a6)
	dbf d1,loc_20aeea
loc_20aef0:
	dbf d2,loc_20aeda
	rts
loc_20aef6:
	move.l #$0,(a6)
	dbf d1,loc_20aef6
	bra.s loc_20aef0
dat_20af02:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20af0a:
	dc.b $ff,$ff,$00,$00

sub_20af0e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b08a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b08a

sub_20af2c:
	lea (dat_20b066).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20af3c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af40:
	sub.l d3,d1
	bcs.s loc_20af48
	addq.w #$1,d2
	bra.s loc_20af40
loc_20af48:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af52
	move.w #$1,d4
loc_20af52:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20af5e
	tst.w d6
	bne.s loc_20af90
loc_20af5e:
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
loc_20af84:
	addi.l #$400000,d0
	dbf d6,loc_20af3c
	rts
loc_20af90:
	moveq #$f,d5
loc_20af92:
	move.l #$0,(a6)
	dbf d5,loc_20af92
	bra.s loc_20af84

sub_20af9e:
	lea (dat_20b06e).l,a2
	moveq #$2,d6
	bra.s loc_20afb0

sub_20afa8:
	lea (dat_20b062).l,a2
	moveq #$5,d6
loc_20afb0:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20afb8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20afbc:
	sub.l d3,d1
	bcs.s loc_20afc4
	addq.w #$1,d2
	bra.s loc_20afbc
loc_20afc4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20afce
	move.w #$1,d4
loc_20afce:
	tst.w d4
	beq.s loc_20affc
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
loc_20affc:
	addi.l #$400000,d0
	dbf d6,loc_20afb8
	rts
	.incbin 45064, 32
loc_20b028:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b02c:
	sub.l d3,d1
	bcs.s loc_20b034
	addq.w #$1,d2
	bra.s loc_20b02c
loc_20b034:
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
	dbf d6,loc_20b028
	rts
dat_20b062:
	dc.b $00,$01,$86,$a0
dat_20b066:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b06e:
	dc.b $00,$00,$00,$64
dat_20b072:
	dc.b $00,$00,$00,$0a
dat_20b076:
	dc.b $00,$00,$00,$01
dat_20b07a:
	.incbin 45178, 16

sub_20b08a:
	moveq #$3,d6
	lea (dat_20b07a).l,a2
	bra.s sub_20b0c6

sub_20b094:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b0aa
	moveq #$9,d1
loc_20b0aa:
	lea (dat_20b076).l,a2
	moveq #$0,d6
	bra.s sub_20b0c6

sub_20b0b4:
	lea (dat_20b076).l,a2
	moveq #$0,d6
	bra.s sub_20b0c6

sub_20b0be:
	lea (dat_20b072).l,a2
	moveq #$1,d6

sub_20b0c6:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20b0ce:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b0d2:
	sub.l d3,d1
	bcs.s loc_20b0da
	addq.w #$1,d2
	bra.s loc_20b0d2
loc_20b0da:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b0e4
	move.w #$1,d4
loc_20b0e4:
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
	dbf d6,loc_20b0ce
	rts
	jsr (sub_20edfc).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b13e(pc,d0.w),d0
	jsr dat_20b13e(pc,d0.w)
	jsr (sub_2038f2).l
	move.w $2e(a0),d0
	jmp (loc_2076e8).l
dat_20b13e:
	dc.b $00,$06,$00,$60,$00,$7a
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20b210,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$13,$16(a0)
	move.b #$29,$20(a0)
	move.w $8(a0),$2e(a0)
	moveq #$2,d0
	jsr (sub_20cf80).l
	tst.b $28(a0)
	bne.s loc_20b18e
	move.l #$ffff0000,d0
	moveq #$0,d1
	bra.s loc_20b196
loc_20b18e:
	move.l #$ffff8000,d0
	moveq #$1,d1
loc_20b196:
	move.l d0,$2a(a0)
	move.b d1,$1c(a0)
	move.l #$10000,d0
	add.l d0,$c(a0)
	jsr (sub_20688c).l
	tst.w d1
	bpl.s loc_20b1b6
	addq.b #$2,$24(a0)
loc_20b1b6:
	rts
loc_20b1b8:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2e(a0),d0
	bpl.s loc_20b1cc
	neg.w d0
loc_20b1cc:
	cmpi.w #$80,d0
	bge.s loc_20b1f2
	jsr (sub_20688c).l
	cmpi.w #$fff9,d1
	blt.s loc_20b1f2
	cmpi.w #$7,d1
	bgt.s loc_20b1f2
	add.w d1,$c(a0)
	lea dat_20b204(pc),a1
	jmp (sub_205b0c).l
loc_20b1f2:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b1b8
dat_20b204:
	.incbin 45572, 124
	jsr (sub_20edfc).l
	tst.b $24(a0)
	bne.w loc_20b310
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
	jsr (sub_20cf80).l
	tst.b $28(a0)
	bne.s loc_20b2ea
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b394(pc),a1
	bra.s loc_20b2fc
loc_20b2ea:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b3b6(pc),a1
loc_20b2fc:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b310:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b324
	neg.w d0
loc_20b324:
	cmpi.w #$80,d0
	blt.s loc_20b346
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b346:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_200816).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b382(pc),a1
	jsr (sub_205b0c).l
	jsr (sub_2038f2).l
	move.w $2a(a0),d0
	jmp (loc_2076e8).l
dat_20b382:
	.incbin 45954, 18
dat_20b394:
	.incbin 45972, 34
dat_20b3b6:
	.incbin 46006, 40
	jsr (sub_20edfc).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b402(pc,d0.w),d0
	jsr dat_20b402(pc,d0.w)
	jsr (sub_2038f2).l
	move.w $2a(a0),d0
	jmp (loc_2076e8).l
dat_20b402:
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
	jsr (sub_20cf80).l
	tst.b $28(a0)
	bne.s loc_20b458
	lea dat_20b54c(pc),a1
	lea dat_20b530(pc),a2
	move.l #$ffff0000,d0
	bra.s loc_20b466
loc_20b458:
	lea dat_20b588(pc),a1
	lea dat_20b53e(pc),a2
	move.l #$ffff8000,d0
loc_20b466:
	move.l a1,$4(a0)
	move.l a2,$30(a0)
	move.l d0,$2c(a0)
	tst.w ($ff1906).l
	bne.s loc_20b482
	lea ($d000).w,a1
	bsr.s sub_20b4c4
	bcs.s loc_20b4b8
loc_20b482:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b496
	neg.w d0
loc_20b496:
	cmpi.w #$80,d0
	blt.s loc_20b4ae
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.s loc_20b482
loc_20b4ae:
	movea.l $30(a0),a1
	jmp (sub_205b0c).l
loc_20b4b8:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	rts

sub_20b4c4:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffd0,d0
	subi.w #$70,d0
	bcc.s loc_20b4e8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,d1
	subi.w #$ffd0,d1
	subi.w #$60,d1
loc_20b4e8:
	rts
	movea.l $30(a0),a1
	jmp (sub_205b0c).l
	addq.w #$6,$c(a0)
	jsr (sub_20688c).l
	cmpi.w #$fff8,d1
	bgt.s loc_20b520
	subi.w #$fff8,d1
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
	tst.b $1(a0)
	bpl.s loc_20b520
	move.w #$a7,d0
	jsr (sub_202312).l
loc_20b520:
	rts
	tst.b $1(a0)
	bmi.s loc_20b52e
	jmp (loc_207706).l
loc_20b52e:
	rts
dat_20b530:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $06,$02,$03,$04,$fc,$00
dat_20b53e:
	dc.b $00,$04,$00,$08,$04,$00,$01,$ff
	dc.b $0e,$02,$03,$04,$fc,$00
dat_20b54c:
	.incbin 46412, 60
dat_20b588:
	.incbin 46472, 2790
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c092(pc,d0.w),d0
	jsr dat_20c092(pc,d0.w)
	jsr (sub_2038f2).l
	cmpi.b #$4,$24(a0)
	bge.s loc_20c090
	jmp (loc_2076e4).l
loc_20c090:
	rts
dat_20c092:
	dc.b $00,$08,$00,$7a,$00,$a8,$00,$d4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$44be,$2(a0)
	lea dat_20c386(pc),a1
	lea dat_20c450(pc),a2
	move.b $28(a0),d0
	bpl.s loc_20c0c6
	lea dat_20c4b6(pc),a1
	lea dat_20c7c4(pc),a2
loc_20c0c6:
	move.l a1,$4(a0)
	btst.l #$4,d0
	beq.s loc_20c0dc
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20c0dc:
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
	bpl.s loc_20c102
	neg.b d1
loc_20c102:
	addq.b #$1,d1
	asl.b #$3,d1
	addq.b #$2,d1
	move.b d1,$16(a0)
	lea ($d000).w,a1
	jsr (sub_208e62).l
	bne.s loc_20c11a
	rts
loc_20c11a:
	jsr (sub_208d1a).l
	move.w #$a3,d0
	jsr (sub_202312).l
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	bpl.w loc_20c192
	bra.w loc_20c296
	.incbin 49466, 88
loc_20c192:
	move.b $28(a0),d0
	suba.l a4,a4
	btst.l #$4,d0
	beq.s loc_20c1a2
	lea loc_20c192(pc),a4
loc_20c1a2:
	lea dat_20c450(pc),a6
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
	bne.s loc_20c1ca
	neg.w d0
	neg.w d1
loc_20c1ca:
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
loc_20c1e8:
	move.w a5,d5
	move.w a2,d3
	move.w d2,d1
loc_20c1ee:
	jsr (sub_2076ae).l
	bne.w loc_20c27e
	move.b (a6)+,d0
	bmi.w loc_20c268
	move.b d0,$1a(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.w #$44be,$2(a1)
	move.l #$20c478,$4(a1)
	move.l #$20000,$2c(a1)
	move.b $3f(a0),$0(a1)
	move.b $24(a0),$24(a1)
	cmpa.w #$0,a4
	beq.s loc_20c242
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
loc_20c242:
	tst.w d6
	bne.s loc_20c25c
	st $3e(a1)
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$9,$16(a1)
loc_20c25c:
	move.w d4,$c(a1)
	move.w d3,$8(a1)
	move.w d1,$2a(a1)
loc_20c268:
	add.w a3,d3
	addi.w #$c,d1
	dbf d5,loc_20c1ee
	addi.w #$fff0,d4
	addq.w #$5,d2
	dbf d6,loc_20c1e8
	bra.s loc_20c290
loc_20c27e:
	lea ($d000).w,a1
	jsr (sub_208e62).l
	beq.s loc_20c290
	jsr (sub_208d1a).l
loc_20c290:
	jmp (sub_20399e).l
loc_20c296:
	move.b $28(a0),d2
	lea dat_20c7c4(pc),a6
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
	bne.w loc_20c2d4
	lsl.b #$2,d2
	bra.s loc_20c2e6
loc_20c2d4:
	lea ($d000).w,a1
	move.w $10(a1),d0
	btst.l #$5,d2
	beq.s loc_20c2e4
	neg.w d0
loc_20c2e4:
	tst.w d0
loc_20c2e6:
	bpl.s loc_20c2f2
	lea $0(a6,d5.w),a6
	neg.w d4
	neg.w d3
	neg.w d6
loc_20c2f2:
	add.w $8(a0),d4
	move.w #$9,d2
	move.b $0(a0),$3f(a0)
loc_20c300:
	jsr (sub_2076ae).l
	bne.w loc_20c36e
	move.b #$3,$18(a1)
	move.w #$44be,$2(a1)
	ori.b #$4,$1(a1)
	move.l #$20c7fe,$4(a1)
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
	dbf d5,loc_20c300
	bra.s loc_20c380
loc_20c36e:
	lea ($d000).w,a1
	jsr (sub_208e62).l
	beq.s loc_20c380
	jsr (sub_208d1a).l
loc_20c380:
	jmp (sub_20399e).l
dat_20c386:
	.incbin 50054, 202
dat_20c450:
	.incbin 50256, 102
dat_20c4b6:
	.incbin 50358, 782
dat_20c7c4:
	.incbin 51140, 1874
loc_20cf16:
	lea dat_20cf68(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cf22:
	cmp.w (a1)+,d0
	bcs.s loc_20cf2a
	addq.b #$2,d1
	bra.s loc_20cf22
loc_20cf2a:
	move.b d1,($ff1574).l
	move.w dat_20cf78(pc,d1.w),d0
	jmp (sub_2024dc).l

sub_20cf3a:
	lea dat_20cf68(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cf46:
	cmp.w (a1)+,d0
	bcs.s loc_20cf4e
	addq.b #$2,d1
	bra.s loc_20cf46
loc_20cf4e:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cf58
	rts
loc_20cf58:
	move.b d1,($ff1574).l
	move.w dat_20cf70(pc,d1.w),d0
	jmp (loc_20250e).l
dat_20cf68:
	dc.b $11,$00,$1a,$00,$20,$00,$ff,$ff
dat_20cf70:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
dat_20cf78:
	dc.b $00,$02,$00,$06,$00,$07,$00,$08

sub_20cf80:
	lea (dat_20cfa2).l,a1
	add.w d0,d0
	move.w dat_20cfa2(pc,d0.w),d4
	lea dat_20cfa2(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cfa2:
	.incbin 53154, 72
	jsr (sub_20ee44).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20d10c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d00a(pc,d0.w),d0
	jmp dat_20d00a(pc,d0.w)
dat_20d00a:
	.incbin 53258, 258
loc_20d10c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d11a(pc,d0.w),d0
	jmp dat_20d11a(pc,d0.w)
dat_20d11a:
	.incbin 53530, 3350
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de3e(pc,d0.w),d0
	jmp dat_20de3e(pc,d0.w)
dat_20de3e:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e53c,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e4fc).l,a2
loc_20de8c:
	jsr (sub_2076ae).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e53c,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20dede
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20dede:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20de8c
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20df06
	bge.s loc_20defc
	neg.w d0
loc_20defc:
	add.w d0,$a(a0)
	jmp (sub_2038f2).l
loc_20df06:
	addq.b #$4,$24(a0)
	jmp (sub_2038f2).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20df2a
	bge.s loc_20df20
	neg.w d0
loc_20df20:
	add.w d0,$8(a0)
	jmp (sub_2038f2).l
loc_20df2a:
	addq.b #$4,$24(a0)
	jmp (sub_2038f2).l
	tst.b $1e(a0)
	beq.s loc_20df44
	subq.b #$1,$1e(a0)
	jmp (sub_2038f2).l
loc_20df44:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20df5e
	bge.s loc_20df54
	neg.w d0
loc_20df54:
	add.w d0,$a(a0)
	jmp (sub_2038f2).l
loc_20df5e:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024dc).l
	tst.b $1e(a0)
	beq.s loc_20df80
	subq.b #$1,$1e(a0)
	jmp (sub_2038f2).l
loc_20df80:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20df9a
	bge.s loc_20df90
	neg.w d0
loc_20df90:
	add.w d0,$8(a0)
	jmp (sub_2038f2).l
loc_20df9a:
	jmp (sub_20399e).l
	tst.l ($f680).w
	bne.s loc_20dfb4
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_20399e).l
loc_20dfb4:
	rts
	.incbin 57270, 1350
dat_20e4fc:
	.incbin 58620, 2304

sub_20edfc:
	tst.b ($ff156a).l
	beq.s loc_20ee42
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ee14
	tst.b $28(a0)
	beq.s loc_20ee42
loc_20ee14:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_20399e).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20ee40
	move.w #$9e,d0
	jsr (sub_202312).l
loc_20ee40:
	addq.l #$4,a7
loc_20ee42:
	rts

sub_20ee44:
	tst.b $28(a0)
	bmi.s loc_20ee74
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ee64
	tst.b ($ff156d).l
	bne.s loc_20ee74
	addq.l #$4,a7
	jmp (loc_2076e4).l
loc_20ee64:
	tst.b ($ff156a).l
	bne.s loc_20ee74
	addq.l #$4,a7
	jmp (sub_20399e).l
loc_20ee74:
	rts
	.incbin 61046, 794

sub_20f190:
	jmp (loc_206380).l
dat_20f196:
	.incbin 61846, 16
dat_20f1a6:
	.incbin 61862, 2584
	jmp (loc_20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 54800
dat_21d400:
	.incbin 119808, 11264
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
	.incbin 238196, 4896
dat_23b594:
	.incbin 243092, 19052
