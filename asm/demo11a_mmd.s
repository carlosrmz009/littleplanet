; DEMO11A.MMD
; disassembled from the disc; code only, data comes from data/DEMO11A.MMD at build time
	.file "DEMO11A.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	.incbin 262, 24
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
	bsr.w sub_202216
	bsr.w sub_20218c
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20150a

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
	dc.b $0e,$ee,$0c,$c6,$0e,$ea
dat_2002ce:
	dc.b $32,$03,$08,$00,$08,$01,$08,$02
dat_2002d6:
	dc.b $0e,$ea,$0e,$ee,$0c,$c6
dat_2002dc:
	dc.b $33,$03,$08,$00,$08,$01,$08,$02
dat_2002e4:
	dc.b $0c,$c6,$0e,$ea,$0e,$ee
dat_2002ea:
	dc.b $2c,$03,$06,$00,$06,$01,$06,$02
dat_2002f2:
	dc.b $0e,$ca,$0e,$a8,$0e,$86
dat_2002f8:
	dc.b $2d,$03,$06,$00,$06,$01,$06,$02
dat_200300:
	dc.b $0e,$a8,$0e,$86,$0e,$ca
dat_200306:
	dc.b $2f,$03,$06,$00,$06,$01,$06,$02
dat_20030e:
	dc.b $0c,$86,$0e,$ca,$0e,$a8

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
	bsr.w sub_20084e
	bsr.s sub_200346
	bsr.w sub_2025aa
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
	bsr.w sub_20084e
	bsr.s sub_2003d6
	bsr.w sub_2025aa
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
	bsr.w sub_20084e
	bsr.s sub_20046e
	bsr.w sub_2025aa
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
	bsr.w sub_20084e
	bsr.s sub_200502
	bsr.w sub_2025aa
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
	lea (dat_2005a4).l,a1
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
	lea (dat_2005a4).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_20059c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20059c
	rts
dat_2005a4:
	.incbin 1444, 682

sub_20084e:
	move.w #$2300,sr
loc_200852:
	tst.b ($f62a).w
	bne.s loc_200852
	rts

sub_20085a:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200872(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200872(pc,d0.w),d0
	rts
dat_200872:
	.incbin 2162, 640

sub_200af2:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b4e
	move.w d2,d4
	tst.w d3
	bpl.w loc_200b0c
	neg.w d3
loc_200b0c:
	tst.w d4
	bpl.w loc_200b14
	neg.w d4
loc_200b14:
	cmp.w d3,d4
	bcc.w loc_200b26
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b58(pc,d4.w),d0
	bra.s loc_200b30
loc_200b26:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b58(pc,d3.w),d0
loc_200b30:
	tst.w d1
	bpl.w loc_200b3c
	neg.w d0
	addi.w #$80,d0
loc_200b3c:
	tst.w d2
	bpl.w loc_200b48
	neg.w d0
	addi.w #$100,d0
loc_200b48:
	movem.l (a7)+,d3-d4
	rts
loc_200b4e:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b58:
	.incbin 2904, 258
	btst.b #$3,$22(a0)
	beq.s loc_200c6e
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c6e:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c90
	move.b $26(a0),d0
	bpl.s loc_200c8a
	subq.b #$1,d0
loc_200c8a:
	addi.b #$20,d0
	bra.s loc_200c9c
loc_200c90:
	move.b $26(a0),d0
	bpl.s loc_200c98
	addq.b #$1,d0
loc_200c98:
	addi.b #$1f,d0
loc_200c9c:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200f26
	cmpi.b #$80,d0
	beq.w loc_200e84
	cmpi.b #$c0,d0
	beq.w loc_200de8
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
	bsr.w sub_2011b0
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
	bsr.w sub_2011b0
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200d2a
	bpl.s loc_200d2c
	cmpi.w #$fff2,d1
	blt.s loc_200d52
	add.w d1,$c(a0)
loc_200d2a:
	rts
loc_200d2c:
	cmpi.w #$e,d1
	bgt.s loc_200d38
loc_200d32:
	add.w d1,$c(a0)
	rts
loc_200d38:
	tst.b $38(a0)
	bne.s loc_200d32
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d52:
	rts
	.incbin 3412, 34
loc_200d76:
	rts
	.incbin 3448, 68

sub_200dbc:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200dca
	move.b ($f768).w,d2
	move.w d0,d1
loc_200dca:
	btst.l #$0,d2
	bne.s loc_200dd6
	move.b d2,$26(a0)
	rts
loc_200dd6:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200de8:
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
	bsr.w sub_201320
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
	bsr.w sub_201320
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200e5c
	bpl.s loc_200e5e
	cmpi.w #$fff2,d1
	blt.w loc_200d76
	add.w d1,$8(a0)
loc_200e5c:
	rts
loc_200e5e:
	cmpi.w #$e,d1
	bgt.s loc_200e6a
loc_200e64:
	add.w d1,$8(a0)
	rts
loc_200e6a:
	tst.b $38(a0)
	bne.s loc_200e64
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e84:
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
	bsr.w sub_2011b0
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
	bsr.w sub_2011b0
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200efe
	bpl.s loc_200f00
	cmpi.w #$fff2,d1
	blt.w loc_200d52
	sub.w d1,$c(a0)
loc_200efe:
	rts
loc_200f00:
	cmpi.w #$e,d1
	bgt.s loc_200f0c
loc_200f06:
	sub.w d1,$c(a0)
	rts
loc_200f0c:
	tst.b $38(a0)
	bne.s loc_200f06
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f26:
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
	bsr.w sub_201320
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
	bsr.w sub_201320
	move.w (a7)+,d0
	bsr.w sub_200dbc
	tst.w d1
	beq.s loc_200fa0
	bpl.s loc_200fa2
	cmpi.w #$fff2,d1
	blt.w loc_200d76
	sub.w d1,$8(a0)
loc_200fa0:
	rts
loc_200fa2:
	cmpi.w #$e,d1
	bgt.s loc_200fae
loc_200fa8:
	sub.w d1,$8(a0)
	rts
loc_200fae:
	tst.b $38(a0)
	bne.s loc_200fa8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200fc8:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200fde
	andi.w #$380,d0
loc_200fde:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_20103e
	bmi.s loc_201042
	cmpi.b #$5,($ff1506).l
	beq.s loc_20100e
	cmpi.b #$6,($ff1506).l
	bne.s loc_201014
loc_20100e:
	andi.w #$7fff,$2(a0)
loc_201014:
	cmpi.b #$4,($ff1506).l
	bne.s loc_201024
	bclr.b #$6,$1(a0)
loc_201024:
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
loc_20103e:
	movea.l d1,a1
	rts
loc_201042:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_2010aa
	btst.b #$6,$1(a0)
	bne.s loc_201070
	cmpi.b #$14,d1
	bne.w loc_201194
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201194
loc_201070:
	cmpi.b #$15,d1
	bne.s loc_20107e
	move.w #$60,d1
	bra.w loc_201194
loc_20107e:
	cmpi.b #$1e,d1
	bne.s loc_20108c
	move.w #$61,d1
	bra.w loc_201194
loc_20108c:
	cmpi.b #$1f,d1
	bne.s loc_20109a
	move.w #$62,d1
	bra.w loc_201194
loc_20109a:
	cmpi.b #$32,d1
	bne.w loc_201194
	move.w #$63,d1
	bra.w loc_201194
loc_2010aa:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201110
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010fa
	cmpi.b #$6,d1
	beq.s loc_2010fa
	tst.b ($ff1956).l
	beq.w loc_201194
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_20110a
	cmpi.b #$3c,d1
	beq.s loc_20110a
	cmpi.b #$37,d1
	beq.s loc_20110a
	cmpi.b #$2f,d1
	beq.s loc_20110a
	cmpi.b #$16,d1
	beq.s loc_20110a
	bra.w loc_201194
loc_2010fa:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201194
loc_20110a:
	addq.b #$1,d1
	bra.w loc_201194
loc_201110:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201180
	cmpi.b #$3,$0(a0)
	bcc.w loc_201194
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201194
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201144
	move.w #$6a,d1
	bra.s loc_201194
loc_201144:
	cmpi.b #$48,d1
	bne.s loc_201150
	move.w #$6b,d1
	bra.s loc_201194
loc_201150:
	cmpi.b #$4a,d1
	bne.s loc_20115c
	move.w #$6c,d1
	bra.s loc_201194
loc_20115c:
	cmpi.b #$10,d1
	bne.s loc_201168
	move.w #$6d,d1
	bra.s loc_201194
loc_201168:
	cmpi.b #$63,d1
	bne.s loc_201174
	move.w #$6e,d1
	bra.s loc_201194
loc_201174:
	cmpi.b #$43,d1
	bne.s loc_201194
	move.w #$6f,d1
	bra.s loc_201194
loc_201180:
	btst.b #$6,$1(a0)
	beq.s loc_201194
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201194
	move.w #$51,d1
loc_201194:
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

sub_2011b0:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_2011ca
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011ca
	btst.l d5,d4
	bne.s loc_2011d8
loc_2011ca:
	add.w a3,d2
	bsr.w sub_201270
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2011d8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011ca
	lea (dat_2385b8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011fe
	not.w d1
	neg.b (a4)
loc_2011fe:
	btst.l #$c,d4
	beq.s loc_20120e
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20120e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2386b8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20122a
	neg.w d0
loc_20122a:
	tst.w d0
	beq.s loc_2011ca
	bmi.s loc_201246
	cmpi.b #$10,d0
	beq.s loc_201262
loc_201236:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201246:
	cmpa.w #$10,a3
	bne.s loc_201256
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201236
loc_201256:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011ca
loc_201262:
	sub.w a3,d2
	bsr.w sub_201270
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201270:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_20128a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20128a
	btst.l d5,d4
	bne.s loc_201298
loc_20128a:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201298:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20128a
	lea (dat_2385b8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012be
	not.w d1
	neg.b (a4)
loc_2012be:
	btst.l #$c,d4
	beq.s loc_2012ce
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ce:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2386b8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012ea
	neg.w d0
loc_2012ea:
	tst.w d0
	beq.s loc_20128a
	bmi.s loc_201300
loc_2012f0:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201300:
	cmpa.w #$10,a3
	bne.s loc_201310
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012f0
loc_201310:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20128a
	not.w d1
	rts

sub_201320:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_20133a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20133a
	btst.l d5,d4
	bne.s loc_201348
loc_20133a:
	add.w a3,d3
	bsr.w sub_2013d0
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201348:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20133a
	lea (dat_2385b8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201376
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201376:
	btst.l #$b,d4
	beq.s loc_20137e
	neg.b (a4)
loc_20137e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2396b8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20139a
	neg.w d0
loc_20139a:
	tst.w d0
	beq.s loc_20133a
	bmi.s loc_2013b6
	cmpi.b #$10,d0
	beq.s loc_2013c2
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013b6:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20133a
loc_2013c2:
	sub.w a3,d3
	bsr.w sub_2013d0
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2013d0:
	bsr.w sub_200fc8
	cmpi.l #$210000,d1
	beq.s loc_2013ea
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013ea
	btst.l d5,d4
	bne.s loc_2013f8
loc_2013ea:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013f8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013ea
	lea (dat_2385b8).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201426
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201426:
	btst.l #$b,d4
	beq.s loc_20142e
	neg.b (a4)
loc_20142e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2396b8).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20144a
	neg.w d0
loc_20144a:
	tst.w d0
	beq.s loc_2013ea
	bmi.s loc_201460
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201460:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013ea
	not.w d1
	rts

sub_201470:
	rts
	.incbin 5234, 152
loc_20150a:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20152a
	tst.b ($ff0f01).l
	bne.s loc_20152a
	move.b #$1,($ff156a).l
loc_20152a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($ff158e).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201598
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207672
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201598
	move.b #$1,($ff1508).l
loc_201598:
	bset.b #$7,($f600).w
	bsr.w sub_20259c
	tst.b ($ff156e).l
	bne.s loc_2015be
	btst.b #$7,($ff152e).l
	beq.s loc_2015f4
	bset.b #$0,($ff151d).l
	beq.s loc_2015ca
loc_2015be:
	bsr.w sub_2004e2
	bclr.b #$0,($ff151d).l
loc_2015ca:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201664
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2015f2
	bclr.b #$7,($ff152e).l
loc_2015f2:
	rts
loc_2015f4:
	bset.b #$0,($ff151d).l
	beq.s loc_201602
	bsr.w sub_2003b6
loc_201602:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20161e
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201646
loc_20161e:
	tst.b ($ff1508).l
	bne.s loc_201664
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201646:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20164e:
	move.l #$0,(a1)+
	dbf d6,loc_20164e
	move.b #$c,($f62a).w
	bsr.w sub_20084e
	rts
loc_201664:
	cmpi.w #$800,($f78e).w
	bne.s loc_201682
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201682:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201698
	btst.b #$7,($ff152e).l
	beq.s loc_20169e
loc_201698:
	move.l #$eee0eee,d0
loc_20169e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2016a6:
	move.l d0,(a1)+
	dbf d6,loc_2016a6
loc_2016ac:
	move.b #$c,($f62a).w
	bsr.w sub_20084e
	bsr.w sub_2025aa
	bne.s loc_2016ac
	tst.l ($f680).w
	bsr.w sub_201b68
	moveq #$0,d0
	lea (dat_20fbb0).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2016d6
	bsr.w sub_2026b0
loc_2016d6:
	moveq #$1,d0
	bsr.w sub_2026b0
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2016f2:
	move.l d0,(a1)+
	dbf d1,loc_2016f2
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201704:
	move.l d0,(a1)+
	dbf d1,loc_201704
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201714:
	move.l d0,(a1)+
	dbf d1,loc_201714
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201726:
	move.l d0,(a1)+
	dbf d1,loc_201726
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201736:
	move.l d0,(a1)+
	dbf d1,loc_201736
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201746:
	move.l d0,(a1)+
	dbf d1,loc_201746
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$1,($ff1580).l
	move.w #$0,($f78e).w
	bsr.w sub_2022b8
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
	bsr.w sub_202912
	bsr.w sub_202a62
	bset.b #$2,($f754).w
	bsr.w sub_203618
	bsr.w sub_2034ce
	jsr (sub_201470).l
	bsr.w sub_201aa2
loc_2017ce:
	move.b #$c,($f62a).w
	bsr.w sub_20084e
	bsr.w sub_2025aa
	bne.s loc_2017ce
	tst.l ($f680).w
	bne.s loc_2017ce
	bsr.w sub_201a2e
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201bc8
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201832
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201832:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201874
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201874:
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
	jsr (sub_20fbaa).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201904
loc_2018fe:
	bsr.w sub_200434
	bra.s loc_201912
loc_201904:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018fe
	bsr.w sub_200314
loc_201912:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201920:
	move.b #$8,($f62a).w
	bsr.w sub_20084e
	tst.b ($f7cc).w
	bne.s loc_20193e
	btst.b #$7,($f605).w
	beq.s loc_20193e
	eori.b #$1,($f63a).w
loc_20193e:
	btst.b #$0,($f63a).w
	beq.w loc_2019be
	bsr.w sub_201c2c
	tst.w ($ff1580).l
	bne.s loc_20199e
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201996
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201920
	subq.b #$1,($ff1508).l
	bpl.s loc_201978
	clr.b ($ff1508).l
loc_201978:
	move.w #$e,d0
	jsr (sub_205cf6).l
	bsr.w sub_207672
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2019a4
loc_201996:
	andi.b #$70,d0
	beq.w loc_201920
loc_20199e:
	clr.b ($ff1508).l
loc_2019a4:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	move.w #$800,($f78e).w
	bra.w loc_20150a
loc_2019be:
	bsr.w sub_201c72
	addq.w #$1,($ff1504).l
	jsr (sub_207688).l
	jsr (sub_203a2c).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20150a
	tst.w ($ff1502).l
	bne.w loc_20150a
	tst.w ($ff1906).l
	bne.s loc_201a06
	cmpi.b #$6,($d024).w
	bcs.s loc_201a06
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201a0a
loc_201a06:
	bsr.w sub_202a62
loc_201a0a:
	jsr (sub_203bd6).l
	tst.w ($ff190e).l
	bne.s loc_201a1c
	bsr.w sub_200184
loc_201a1c:
	jsr (sub_20cf10).l
	bsr.w sub_2025aa
	bsr.w sub_201ad4
	bra.w loc_201920

sub_201a2e:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201a46
	move.w #$78,$30(a1)
loc_201a46:
	rts
	dc.b $43,$f9,$00,$ff,$19,$00,$70,$00
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	move.b $0(a1,d0.w),d0
	beq.s loc_201aa0
	subq.b #$1,d0
	lea ($d800).w,a2
	moveq #$0,d1
loc_201a68:
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
	dbf d0,loc_201a68
loc_201aa0:
	rts

sub_201aa2:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201ab4(pc,d0.w),($f796).w
	rts
dat_201ab4:
	.incbin 6836, 32

sub_201ad4:
	subq.b #$1,($ff1910).l
	bpl.s loc_201af2
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201af2:
	subq.b #$1,($ff1912).l
	bpl.s loc_201b10
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201b10:
	subq.b #$1,($ff1914).l
	bpl.s loc_201b38
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201b38
	move.b #$0,($ff1915).l
loc_201b38:
	tst.b ($ff1916).l
	beq.s loc_201b66
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201b66:
	rts

sub_201b68:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b8a
	cmpi.b #$2,d0
	bne.s loc_201b8a
	add.b ($ff156a).l,d0
loc_201b8a:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201ba2(pc,d1.w),d0
	jmp (sub_205cf6).l
dat_201ba2:
	.incbin 7074, 38

sub_201bc8:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_23571a).l,a1
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

sub_201c2c:
	move.w #$ab,d0
	jsr (sub_2023a6).l
	bset.b #$7,($f63a).w
	bne.s loc_201c70
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c56
loc_201c4c:
	move.w #$d5,d0
	jmp (sub_205cf6).l
loc_201c56:
	tst.b ($ff151f).l
	bne.s loc_201c4c
	tst.b ($ff1520).l
	bne.s loc_201c4c
	move.w #$90,d0
	jmp (sub_205cf6).l
loc_201c70:
	rts

sub_201c72:
	bclr.b #$7,($f63a).w
	beq.s loc_201cac
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c92
loc_201c88:
	move.w #$d6,d0
	jmp (sub_205cf6).l
loc_201c92:
	tst.b ($ff151f).l
	bne.s loc_201c88
	tst.b ($ff1520).l
	bne.s loc_201c88
	move.w #$91,d0
	jmp (sub_205cf6).l
loc_201cac:
	rts
	.incbin 7342, 82
loc_201d00:
	jsr (sub_2023b8).l
	tst.b ($f63a).w
	bne.s loc_201d14
	bsr.w sub_20214c
	bsr.w sub_20213a
loc_201d14:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
	.incbin 7456, 90
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201dc4
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201dc4:
	move.w ($f624).w,(a5)
	jsr (sub_20235a).l
	bra.w loc_201d00
	.incbin 7634, 70
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
	bsr.w sub_205c18
	tst.b ($f767).w
	beq.s loc_201ebc
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201ebc:
	jsr (sub_20fbaa).l
	jsr (sub_20235a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2030e4
	bsr.w sub_20261c
	jmp (loc_20ae8c).l
	.incbin 7922, 230
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
	jsr (sub_20235a).l
	lea ($d000).w,a0
	bsr.w sub_205c18
	tst.b ($f767).w
	beq.s loc_202082
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202082:
	tst.w ($f614).w
	beq.w loc_20208e
	subq.w #$1,($f614).w
loc_20208e:
	rts
	.incbin 8336, 170

sub_20213a:
	tst.b ($d02a).w
	bne.s loc_20214a
	tst.w ($f786).w
	beq.s loc_20214a
	addq.w #$1,($f786).w
loc_20214a:
	rts

sub_20214c:
	tst.w ($f780).w
	beq.s loc_202156
	addq.w #$1,($f780).w
loc_202156:
	tst.w ($f782).w
	beq.s loc_202160
	addq.w #$1,($f782).w
loc_202160:
	rts
	.incbin 8546, 42

sub_20218c:
	bsr.w sub_20233e
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20235a
	.incbin 8616, 110

sub_202216:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202292).l,a2
	moveq #$12,d7
loc_20222a:
	move.w (a2)+,(a0)
	dbf d7,loc_20222a
	move.w (dat_202294).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202250:
	move.w d0,(a1)
	dbf d7,loc_202250
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202282:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202282
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202292:
	dc.b $80,$04
dat_202294:
	.incbin 8852, 36

sub_2022b8:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2022da:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022da
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202308:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202308
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202326:
	move.l d0,(a1)+
	dbf d1,loc_202326
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202336:
	move.l d0,(a1)+
	dbf d1,loc_202336
	rts

sub_20233e:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20234e:
	btst.b #$0,($a11100).l
	bne.s loc_20234e
	rts

sub_20235a:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9064, 62

sub_2023a6:
	tst.b ($f00b).w
	bne.s loc_2023b2
	move.b d0,($f00b).w
	rts
loc_2023b2:
	move.b d0,($f00c).w
	rts

sub_2023b8:
	jsr (sub_20233e).l
	tst.b ($f00b).w
	beq.w sub_20235a
	move.b ($f00b).w,($a01c09).l
	move.b ($f00c).w,($f00b).w
	move.b #$0,($f00c).w
	bra.w sub_20235a
	.incbin 9182, 32

sub_2023fe:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024c0).l,a3
	lea ($c00000).l,a4
	bra.s loc_20241a

sub_202410:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2024d6).l,a3
loc_20241a:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202428
	adda.w #$a,a3
loc_202428:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2024ec
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202448
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202448:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202494
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202470
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202470:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20247e:
	lsr.w #$4,d0
loc_202480:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20248e
	jmp (a3)

sub_20248a:
	moveq #$0,d4
	moveq #$8,d3
loc_20248e:
	dbf d0,loc_202480
	bra.s sub_202448
loc_202494:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2024a2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2024a2:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20247e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20247e
dat_2024c0:
	.incbin 9408, 22
dat_2024d6:
	.incbin 9430, 22

sub_2024ec:
	move.b (a0)+,d0
loc_2024ee:
	cmpi.b #$ff,d0
	bne.s loc_2024f6
	rts
loc_2024f6:
	move.w d0,d7
loc_2024f8:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2024ee
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
	bne.s loc_202526
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2024f8
loc_202526:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202532:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202532
	bra.s loc_2024f8

sub_20253e:
	movem.l a1-a2,-(a7)
	lea (dat_20fbc0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202556:
	tst.l (a2)
	beq.s loc_20255e
	addq.w #$6,a2
	bra.s loc_202556
loc_20255e:
	move.w (a1)+,d0
	bmi.s loc_20256a
loc_202562:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202562
loc_20256a:
	movem.l (a7)+,a1-a2
	rts
loc_202570:
	movem.l a1-a2,-(a7)
	lea (dat_20fbc0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_20259c
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202596
loc_20258e:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20258e
loc_202596:
	movem.l (a7)+,a1-a2
	rts

sub_20259c:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2025a2:
	clr.l (a2)+
	dbf d0,loc_2025a2
	rts

sub_2025aa:
	tst.l ($f680).w
	beq.s loc_2025fe
	tst.w ($f6f8).w
	bne.s loc_2025fe
	movea.l ($f680).w,a0
	lea (dat_2024c0).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2025cc
	adda.w #$a,a3
loc_2025cc:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2024ec
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
loc_2025fe:
	rts
	dc.b $4a,$78,$f6,$f8,$67,$00,$00,$98
loc_202608:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20263a

sub_20261c:
	tst.w ($f6f8).w
	beq.s loc_20269e
	tst.b ($f744).w
	bne.s loc_202608
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20263a:
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
loc_20266e:
	movea.w #$8,a5
	bsr.w sub_20248a
	subq.w #$1,($f6f8).w
	beq.s loc_2026a0
	subq.w #$1,($f6fa).w
	bne.s loc_20266e
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20269e:
	rts
loc_2026a0:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2026a6:
	move.l $6(a0),(a0)+
	dbf d0,loc_2026a6
	rts

sub_2026b0:
	lea (dat_20fbc0).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2026c2:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2023fe
	dbf d1,loc_2026c2
	rts
	.incbin 9954, 560

sub_202912:
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20296a).l,a0
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
	bra.w loc_202996
dat_20296a:
	.incbin 10602, 44
loc_202996:
	tst.b ($ff1522).l
	beq.s loc_2029b6
	jsr (sub_206882).l
	moveq #$0,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	move.w ($d00c).w,d0
	bpl.s loc_2029b4
	moveq #$0,d0
loc_2029b4:
	bra.s loc_2029cc
loc_2029b6:
	lea (dat_202a08).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,($d008).w
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,($d00c).w
loc_2029cc:
	subi.w #$a0,d1
	bcc.s loc_2029d4
	moveq #$0,d1
loc_2029d4:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_2029de
	move.w d2,d1
loc_2029de:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029ea
	moveq #$0,d0
loc_2029ea:
	cmp.w ($f72e).w,d0
	blt.s loc_2029f4
	move.w ($f72e).w,d0
loc_2029f4:
	move.w d0,($f704).w
	bsr.w sub_202a10
	lea (dat_202a0c).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202a08:
	dc.b $00,$40,$07,$6b
dat_202a0c:
	dc.b $7f,$7f,$7f,$7f

sub_202a10:
	cmpi.w #$800,($d008).w
	bcs.s loc_202a24
	subi.w #$1e0,d0
	bcs.s loc_202a20
	lsr.w #$1,d0
loc_202a20:
	addi.w #$1e0,d0
loc_202a24:
	swap d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$1,d1
	move.w d1,($f708).w
	lsr.w #$2,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lea ($ff1e00).l,a2
	moveq #$12,d6
loc_202a5a:
	clr.l (a2)+
	dbf d6,loc_202a5a
	rts

sub_202a62:
	tst.b ($f744).w
	beq.s loc_202a6a
	rts
loc_202a6a:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202d5a
	bsr.w sub_202dfa
	bsr.w sub_2036c0
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	moveq #$0,d5
	btst.b #$1,($d02c).w
	beq.s loc_202aaa
	tst.w ($f73a).w
	beq.s loc_202aaa
	move.w ($d010).w,d5
	ext.l d5
	asl.l #$8,d5
loc_202aaa:
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	add.l d5,d4
	moveq #$6,d6
	bsr.w sub_203084
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	add.l d5,d4
	add.l d5,d4
	moveq #$4,d6
	bsr.w sub_203050
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	add.l d5,d4
	moveq #$2,d6
	bsr.w sub_20301c
	move.w ($f704).w,d0
	cmpi.w #$800,($d008).w
	bcs.s loc_202afe
	subi.w #$1e0,d0
	bcs.s loc_202afa
	lsr.w #$1,d0
loc_202afa:
	addi.w #$1e0,d0
loc_202afe:
	bsr.w sub_202fec
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($ff1e00).l,a2
	addi.l #$10000,(a2)+
	addi.l #$e000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$a000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$4800,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$2800,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$10000,(a2)+
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$2000,(a2)+
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	lea ($ff1e00).l,a2
	moveq #$9,d6
loc_202bb0:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202c8c).l,a3
	move.b $0(a3,d6.w),d5
loc_202bc6:
	move.w d1,(a1)+
	dbf d5,loc_202bc6
	dbf d6,loc_202bb0
	move.w ($f710).w,d0
	neg.w d0
	moveq #$13,d6
loc_202bd8:
	move.w d0,(a1)+
	dbf d6,loc_202bd8
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202be6:
	move.w d0,(a1)+
	dbf d6,loc_202be6
	move.w ($f708).w,d0
	neg.w d0
	move.w #$37,d6
loc_202bf6:
	move.w d0,(a1)+
	dbf d6,loc_202bf6
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202c04:
	move.w d0,(a1)+
	dbf d6,loc_202c04
	move.w ($f710).w,d0
	neg.w d0
	moveq #$13,d6
loc_202c12:
	move.w d0,(a1)+
	dbf d6,loc_202c12
	moveq #$8,d6
loc_202c1a:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202c96).l,a3
	move.b $0(a3,d6.w),d5
loc_202c30:
	move.w d1,(a1)+
	dbf d5,loc_202c30
	dbf d6,loc_202c1a
	move.w ($f710).w,d0
	neg.w d0
	moveq #$13,d6
loc_202c42:
	move.w d0,(a1)+
	dbf d6,loc_202c42
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_202c50:
	move.w d0,(a1)+
	dbf d6,loc_202c50
	move.w ($f708).w,d0
	neg.w d0
	move.w #$f,d6
loc_202c60:
	move.w d0,(a1)+
	dbf d6,loc_202c60
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$7f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	lea (dat_202ca0).l,a3
	bra.w loc_202cac
dat_202c8c:
	dc.b $01,$03,$05,$07,$07,$07,$03,$05
	dc.b $05,$03
dat_202c96:
	dc.b $01,$03,$05,$07,$0f,$03,$09,$03
	dc.b $01,$00
dat_202ca0:
	dc.b $02,$80,$00,$e0,$07,$80,$00,$80
	dc.b $7f,$ff,$03,$60
loc_202cac:
	cmp.w (a3),d4
	bcc.s loc_202ce2
loc_202cb0:
	andi.w #$7,d2
	sub.w d2,d4
	addq.w #$8,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ccc(pc,d2.w)
loc_202cc0:
	tst.w d1
	bmi.s loc_202ce0
	cmp.w (a3),d4
	bcc.s loc_202ce2
	addq.w #$8,d4
	move.w (a2)+,d0
loc_202ccc:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202cc0
loc_202ce0:
	rts
loc_202ce2:
	move.w d4,d5
	sub.w (a3),d5
	move.w $2(a3),d6
	sub.w d5,d6
	bcs.s loc_202d52
	beq.s loc_202d4c
	move.w #$e0,d3
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$8,d2
	divs.w d3,d2
	ext.l d2
	asl.l #$8,d2
	moveq #$0,d3
	move.w d0,d3
	subq.w #$1,d5
	bmi.s loc_202d1c
loc_202d10:
	move.w d3,d0
	swap d3
	add.l d2,d3
	swap d3
	dbf d5,loc_202d10
loc_202d1c:
	move.w d6,d5
	lsr.w #$3,d5
	sub.w d5,d1
	bcc.s loc_202d2e
	move.w d1,d5
	neg.w d5
	lsl.w #$3,d5
	sub.w d5,d6
	beq.s loc_202d4c
loc_202d2e:
	subq.w #$1,d6
loc_202d30:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	addq.w #$1,d4
	move.w d4,d0
	andi.w #$7,d0
	bne.s loc_202d48
	addq.w #$2,a2
loc_202d48:
	dbf d6,loc_202d30
loc_202d4c:
	addq.w #$4,a3
	bra.w loc_202cc0
loc_202d52:
	addq.w #$4,a3
	move.w d4,d2
	bra.w loc_202cb0

sub_202d5a:
	move.w ($f700).w,d4
	bsr.s sub_202d8e
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202d8c
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202d86
	bset.b #$2,($f754).w
	rts
loc_202d86:
	bset.b #$3,($f754).w
loc_202d8c:
	rts

sub_202d8e:
	move.w ($d008).w,d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202da0
	bcs.s loc_202dd0
	bra.s loc_202da6
loc_202da0:
	clr.w ($f73a).w
	rts
loc_202da6:
	cmpi.w #$10,d0
	blt.s loc_202db0
	move.w #$10,d0
loc_202db0:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202dbe
	move.w ($f72a).w,d0
loc_202dbe:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202dd0:
	cmpi.w #$fff0,d0
	bge.s loc_202dda
	move.w #$fff0,d0
loc_202dda:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202dbe
	move.w ($f728).w,d0
	bra.s loc_202dbe
	.incbin 11754, 16

sub_202dfa:
	moveq #$0,d1
	move.w ($d00c).w,d0
	sub.w ($f704).w,d0
	btst.b #$2,($d022).w
	beq.s loc_202e0e
	subq.w #$5,d0
loc_202e0e:
	btst.b #$1,($d022).w
	beq.s loc_202e2e
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202e7a
	subi.w #$40,d0
	bcc.s loc_202e7a
	tst.b ($f75c).w
	bne.s loc_202e8c
	bra.s loc_202e3a
loc_202e2e:
	sub.w ($f73e).w,d0
	bne.s loc_202e40
	tst.b ($f75c).w
	bne.s loc_202e8c
loc_202e3a:
	clr.w ($f73c).w
	rts
loc_202e40:
	cmpi.w #$60,($f73e).w
	bne.s loc_202e68
	move.w ($d014).w,d1
	bpl.s loc_202e50
	neg.w d1
loc_202e50:
	cmpi.w #$800,d1
	bcc.s loc_202e7a
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202eda
	cmpi.w #$fffa,d0
	blt.s loc_202ea4
	bra.s loc_202e92
loc_202e68:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202eda
	cmpi.w #$fffe,d0
	blt.s loc_202ea4
	bra.s loc_202e92
loc_202e7a:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202eda
	cmpi.w #$fff0,d0
	blt.s loc_202ea4
	bra.s loc_202e92
loc_202e8c:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202e92:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ee4
	bra.w loc_202eb0
loc_202ea4:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202eb0:
	cmp.w ($f72c).w,d1
	bgt.s loc_202f08
	cmpi.w #$ff00,d1
	bgt.s loc_202ed4
	andi.w #$7ff,d1
	andi.w #$7ff,($d00c).w
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f08
loc_202ed4:
	move.w ($f72c).w,d1
	bra.s loc_202f08
loc_202eda:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ee4:
	cmp.w ($f72e).w,d1
	blt.s loc_202f08
	subi.w #$800,d1
	bcs.s loc_202f04
	andi.w #$7ff,($d00c).w
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202f08
loc_202f04:
	move.w ($f72e).w,d1
loc_202f08:
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
	bne.s loc_202f4a
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202f44
	bset.b #$0,($f754).w
	rts
loc_202f44:
	bset.b #$1,($f754).w
loc_202f4a:
	rts
	.incbin 12108, 160

sub_202fec:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20301a
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_203014
	bset.b #$0,($f756).w
	rts
loc_203014:
	bset.b #$1,($f756).w
loc_20301a:
	rts

sub_20301c:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_20304e
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_203048
	bset.b d6,($f756).w
	bra.s loc_20304e
loc_203048:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_20304e:
	rts

sub_203050:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_203082
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_20307c
	bset.b d6,($f758).w
	bra.s loc_203082
loc_20307c:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_203082:
	rts

sub_203084:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_2030b6
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_2030b0
	bset.b d6,($f75a).w
	bra.s loc_2030b6
loc_2030b0:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_2030b6:
	rts
	.incbin 12472, 44

sub_2030e4:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203182
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_203180
	bclr.b #$0,(a2)
	beq.s loc_203136
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203496
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20326c
loc_203136:
	bclr.b #$1,(a2)
	beq.s loc_203150
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203496
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20326c
loc_203150:
	bclr.b #$2,(a2)
	beq.s loc_203166
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203496
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032c2
loc_203166:
	bclr.b #$3,(a2)
	beq.s loc_203180
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203496
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032c2
loc_203180:
	rts

sub_203182:
	lea (dat_20354e).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_20319e
	bclr.b #$1,(a2)
	beq.s loc_2031e8
	move.w #$e0,d4
loc_20319e:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203218(pc,d0.w),a3
	beq.s loc_2031d0
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203496
	movem.l (a7)+,d4-d5
	bsr.w sub_20326c
	movea.l (a7)+,a0
	bra.s loc_2031e8
loc_2031d0:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203498
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203298
	movea.l (a7)+,a0
loc_2031e8:
	tst.b (a2)
	bne.s loc_2031ee
	rts
loc_2031ee:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203202
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203202:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203228
dat_203218:
	.incbin 12824, 16
loc_203228:
	moveq #$f,d6
	move.l #$800000,d7
loc_203230:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20325c
	btst.b d0,(a2)
	beq.s loc_20325c
	add.w d0,d0
	movea.l dat_203218(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20336e
	movem.l (a7)+,d4-d5
	bsr.w sub_203496
	bsr.w sub_2032f0
	movem.l (a7)+,d4-d5/a0
loc_20325c:
	addi.w #$10,d4
	dbf d6,loc_203230
	clr.b (a2)
	rts
	dc.b $4e,$75,$4e,$75

sub_20326c:
	moveq #$15,d6

sub_20326e:
	move.l #$800000,d7
	move.l d0,d1
loc_203276:
	movem.l d4-d5,-(a7)
	bsr.w sub_20336e
	move.l d1,d0
	bsr.w sub_2032f0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203276
	rts

sub_203298:
	move.l #$800000,d7
	move.l d0,d1
loc_2032a0:
	movem.l d4-d5,-(a7)
	bsr.w sub_203370
	move.l d1,d0
	bsr.w sub_2032f0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2032a0
	rts

sub_2032c2:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2032cc:
	movem.l d4-d5,-(a7)
	bsr.w sub_20336e
	move.l d1,d0
	bsr.w sub_2032f0
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2032cc
	rts

sub_2032f0:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20332c
	btst.b #$3,(a0)
	bne.s loc_20330c
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20330c:
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
loc_20332c:
	btst.b #$3,(a0)
	bne.s loc_20334e
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
loc_20334e:
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

sub_20336e:
	add.w (a3),d5

sub_203370:
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
	beq.s loc_2033be
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
loc_2033be:
	rts
	.incbin 13248, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20349c
	bsr.w sub_2032f0
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 13394, 68

sub_203496:
	add.w (a3),d5

sub_203498:
	add.w $4(a3),d4

sub_20349c:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13490, 28

sub_2034ce:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2034f8
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203520

sub_2034f8:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2034fc:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203496
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20326e
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2034fc
	rts
loc_203520:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203524:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20354e).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$7f0,d0
	bsr.w sub_2035e0
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203524
	rts
dat_20354e:
	.incbin 13646, 130
dat_2035d0:
	.incbin 13776, 16

sub_2035e0:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2035d0(pc,d0.w),a3
	beq.s loc_203602
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203496
	movem.l (a7)+,d4-d5
	bsr.w sub_20326c
	bra.s loc_203616
loc_203602:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203498
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203298
loc_203616:
	rts

sub_203618:
	moveq #$0,d0
	lea (dat_20fbb0).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202410
	movea.l (a2)+,a0
	bsr.w sub_203672
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200570
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_20365c
	jmp (loc_20ceec).l
loc_20365c:
	btst.b #$1,($ff151c).l
	beq.s loc_203670
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203670
	bsr.w sub_20253e
loc_203670:
	rts

sub_203672:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20367c:
	move.l d0,(a3)+
	dbf d1,loc_20367c
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203692
	lea ($a040).w,a3
	moveq #$2,d1

sub_203692:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23aa3c).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2036ac:
	move.w d1,d0
	movea.l a3,a0
loc_2036b0:
	move.b (a1)+,(a0)+
	dbf d0,loc_2036b0
	lea $80(a3),a3
	dbf d2,loc_2036ac
	rts

sub_2036c0:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20373a(pc,d0.w),d0
	jsr dat_20373a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2036e6
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2036e6:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203714
	bcc.s loc_203716
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20370a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20370a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203714:
	rts
loc_203716:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20372e
	btst.b #$1,($d022).w
	beq.s loc_20372e
	add.w d1,d1
	add.w d1,d1
loc_20372e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20373a:
	.incbin 14138, 754

sub_203a2c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203a34:
	move.b (a0),d0
	beq.s loc_203a4a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203e4e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203a4a:
	lea $40(a0),a0
	dbf d7,loc_203a34
	rts
	.incbin 14932, 184

sub_203b0c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b7c
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b98
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b98
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203b56
	cmpi.w #$800,d3
	bcs.s loc_203b68
	subi.w #$800,d3
	bra.s loc_203b68
loc_203b56:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b68
	cmpi.w #$100,d3
	bcc.s loc_203b68
	addi.w #$800,d3
loc_203b68:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b98
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b98
loc_203b7c:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b98
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b98:
	rts
	.incbin 15258, 30

sub_203bb8:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203bbe:
	move.l d1,(a1)+
	dbf d0,loc_203bbe
	rts
dat_203bc6:
	.incbin 15302, 16

sub_203bd6:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203be2:
	tst.w (a4)
	beq.w loc_203ca2
	moveq #$2,d6
loc_203bea:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c9a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203c50
	movea.l dat_203bc6(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203c34
	cmpi.w #$800,d2
	bcs.s loc_203c46
	subi.w #$800,d2
	bra.s loc_203c46
loc_203c34:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203c46
	cmpi.w #$100,d2
	bcc.s loc_203c46
	addi.w #$800,d2
loc_203c46:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c72
loc_203c50:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c72
	.incbin 15450, 24
loc_203c72:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c90
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c94
loc_203c90:
	bsr.w sub_203cc4
loc_203c94:
	bset.b #$7,$1(a0)
loc_203c9a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203bea
loc_203ca2:
	lea $80(a4),a4
	dbf d7,loc_203be2
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203cbc
	move.l #$0,(a2)
	rts
loc_203cbc:
	move.b #$0,-$5(a2)
	rts

sub_203cc4:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203d0a
	btst.l #$1,d4
	bne.w loc_203d58
loc_203cd6:
	cmpi.b #$50,d5
	beq.s loc_203d08
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
	bne.s loc_203d02
	addq.w #$1,d0
loc_203d02:
	move.w d0,(a2)+
	dbf d1,loc_203cd6
loc_203d08:
	rts
loc_203d0a:
	btst.l #$1,d4
	bne.w loc_203d9e
loc_203d12:
	cmpi.b #$50,d5
	beq.s loc_203d56
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
	bne.s loc_203d50
	addq.w #$1,d0
loc_203d50:
	move.w d0,(a2)+
	dbf d1,loc_203d12
loc_203d56:
	rts
loc_203d58:
	cmpi.b #$50,d5
	beq.s loc_203d9c
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
	bne.s loc_203d96
	addq.w #$1,d0
loc_203d96:
	move.w d0,(a2)+
	dbf d1,loc_203d58
loc_203d9c:
	rts
loc_203d9e:
	cmpi.b #$50,d5
	beq.s loc_203df0
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
	bne.s loc_203dea
	addq.w #$1,d0
loc_203dea:
	move.w d0,(a2)+
	dbf d1,loc_203d9e
loc_203df0:
	rts
	.incbin 15858, 92
dat_203e4e:
	.incbin 15950, 262
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f66
	move.w #$0,(a1)
	rts
loc_203f66:
	tst.w (a1)
	bne.s loc_203f70
	move.b #$1,$1(a1)
loc_203f70:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203fba
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203fac
	neg.w $10(a0)
loc_203fac:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cf6
loc_203fba:
	rts
	.incbin 16316, 1688
	btst.b #$6,$22(a0)
	beq.s loc_204662
	subi.w #$28,$12(a0)
loc_204662:
	bsr.w sub_205164
	bsr.w sub_205188
	rts
	.incbin 18028, 240
	btst.b #$2,($f602).w
	beq.s loc_204768
	bsr.w sub_204afa
loc_204768:
	btst.b #$3,($f602).w
	beq.s loc_204774
	bsr.w sub_204b70
loc_204774:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204a1a
	tst.w $14(a0)
	beq.s loc_204794
	tst.b $2a(a0)
	beq.w loc_204a1a
	bra.s loc_2047a0
loc_204794:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2047a0:
	btst.b #$3,$22(a0)
	beq.s loc_2047f2
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20484a
	cmpi.b #$1e,$0(a1)
	bne.s loc_2047d2
	move.b #$0,$1c(a0)
	bra.w loc_204a1a
loc_2047d2:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20482e
	cmp.w d2,d1
	bge.s loc_20481c
	bra.s loc_20484a
loc_2047f2:
	jsr (sub_206ab6).l
	cmpi.w #$c,d1
	blt.s loc_20484a
	move.w #$ab,d0
	jsr (sub_2023a6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204826
loc_20481c:
	btst.b #$0,$22(a0)
	bne.s loc_204836
	bra.s loc_204840
loc_204826:
	cmpi.b #$3,$37(a0)
	bne.s loc_20484a
loc_20482e:
	btst.b #$0,$22(a0)
	bne.s loc_204840
loc_204836:
	move.b #$32,$1c(a0)
	bra.w loc_204a1a
loc_204840:
	move.b #$6,$1c(a0)
	bra.w loc_204a1a
loc_20484a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20485e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20485e:
	btst.b #$7,($f788).w
	bne.w loc_204962
	btst.b #$6,($f788).w
	bne.w loc_204982
	btst.b #$1,($f602).w
	bne.w loc_204982
	andi.b #$f,($f788).w
	beq.s loc_204896
	btst.b #$0,($f603).w
	beq.s loc_2048aa
	bset.b #$7,($f788).w
	bra.w loc_204a3e
loc_204896:
	btst.b #$0,($f603).w
	beq.w loc_2048aa
	move.b #$1,($f788).w
	bra.w loc_204a3e
loc_2048aa:
	btst.b #$0,($f602).w
	beq.s loc_204926
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204908
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2048da
	asr.w #$1,d2
	sub.w d2,d1
loc_2048da:
	btst.b #$0,$22(a0)
	beq.s loc_2048e6
	neg.w d0
	neg.w d1
loc_2048e6:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048fc
	cmp.w d0,d1
	ble.s loc_204902
	bra.s loc_204900
loc_2048fc:
	cmp.w d1,d0
	ble.s loc_204902
loc_204900:
	move.w d1,d0
loc_204902:
	move.w d0,$14(a0)
	rts
loc_204908:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204922
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2023a6).l
loc_204922:
	bra.w loc_204a3e
loc_204926:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204946
	move.w #$ab,d0
	jsr (sub_2023a6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204982
loc_204946:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023a6).l
	bra.w loc_204a1a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204962:
	btst.b #$0,($f602).w
	beq.s loc_204982
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a3e
	addq.w #$2,($f73e).w
	bra.w loc_204a3e
loc_204982:
	btst.b #$6,($f788).w
	bne.w loc_2049fe
	andi.b #$f,($f788).w
	beq.s loc_2049a6
	btst.b #$1,($f603).w
	beq.s loc_2049b8
	bset.b #$6,($f788).w
	bra.w loc_204a3e
loc_2049a6:
	btst.b #$1,($f603).w
	beq.s loc_2049b8
	move.b #$1,($f788).w
	bra.w loc_204a3e
loc_2049b8:
	btst.b #$1,($f602).w
	beq.s loc_204a1a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049fc
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049fc
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049ee
	neg.w $14(a0)
loc_2049ee:
	move.w #$9c,d0
	jsr (sub_2023a6).l
	bsr.w sub_204f1a
loc_2049fc:
	bra.s loc_204a3e
loc_2049fe:
	btst.b #$1,($f602).w
	beq.s loc_204a1a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a3e
	subq.w #$2,($f73e).w
	bra.s loc_204a3e
loc_204a1a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204a34
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a3e
	move.b #$0,($f788).w
	bra.s loc_204a3e
loc_204a34:
	bcc.s loc_204a3a
	addq.w #$4,($f73e).w
loc_204a3a:
	subq.w #$2,($f73e).w
loc_204a3e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a6a
	move.w $14(a0),d0
	beq.s loc_204a6a
	bmi.s loc_204a5e
	sub.w d5,d0
	bcc.s loc_204a58
	move.w #$0,d0
loc_204a58:
	move.w d0,$14(a0)
	bra.s loc_204a6a
loc_204a5e:
	add.w d5,d0
	bcc.s loc_204a66
	move.w #$0,d0
loc_204a66:
	move.w d0,$14(a0)
loc_204a6a:
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a88:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204af8
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204af8
	bmi.s loc_204aa0
	neg.w d1
loc_204aa0:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206976
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204af8
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204af4
	cmpi.b #$40,d0
	beq.s loc_204ae2
	cmpi.b #$80,d0
	beq.s loc_204adc
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204adc:
	sub.w d1,$12(a0)
	rts
loc_204ae2:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204af4:
	add.w d1,$12(a0)
loc_204af8:
	rts

sub_204afa:
	tst.b $2a(a0)
	bne.s loc_204b6e
	move.w $14(a0),d0
	beq.s loc_204b08
	bpl.s loc_204b38
loc_204b08:
	bset.b #$0,$22(a0)
	bne.s loc_204b1c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b1c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204b2c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204b2c
	move.w d1,d0
loc_204b2c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b38:
	sub.w d4,d0
	bcc.s loc_204b40
	move.w #$ff80,d0
loc_204b40:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b6e
	cmpi.w #$400,d0
	blt.s loc_204b6e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023a6).l
loc_204b6e:
	rts

sub_204b70:
	tst.b $2a(a0)
	bne.s loc_204bde
	move.w $14(a0),d0
	bmi.s loc_204ba8
	bclr.b #$0,$22(a0)
	beq.s loc_204b90
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b90:
	cmp.w d6,d0
	bge.s loc_204b9c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b9c
	move.w d6,d0
loc_204b9c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204ba8:
	add.w d4,d0
	bcc.s loc_204bb0
	move.w #$80,d0
loc_204bb0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204bde
	cmpi.w #$fc00,d0
	bgt.s loc_204bde
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023a6).l
loc_204bde:
	rts
	.incbin 19424, 164
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cf4
	.incbin 19604, 86
	move.w #$ab,d0
	jsr (sub_2023a6).l
loc_204cf4:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d14
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204d24
loc_204d14:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204d24:
	move.b #$5,$1c(a0)
	move.b $26(a0),d0
	jsr (sub_20085a).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d4e
	move.w #$1000,d1
loc_204d4e:
	cmpi.w #$f000,d1
	bge.s loc_204d58
	move.w #$f000,d1
loc_204d58:
	move.w d1,$10(a0)
	bra.w loc_204a88
	dc.b $30,$28,$00,$14,$67,$02,$6a,$0e
	dc.b $08,$e8,$00,$00,$00,$22
	move.b #$2,$1c(a0)
	rts
	.incbin 19830, 224
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204e84
	bsr.w sub_206bb0
	tst.w d1
	bpl.s loc_204e84
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204e84:
	rts
	.incbin 20102, 148

sub_204f1a:
	btst.b #$2,$22(a0)
	beq.s loc_204f24
	bra.s loc_204f54
loc_204f24:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f44
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f54
loc_204f44:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f54:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f6e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f6e
	move.w #$200,$14(a0)
loc_204f6e:
	rts
	.incbin 20336, 500

sub_205164:
	btst.b #$1,$2c(a0)
	bne.s loc_205186
	move.b $26(a0),d0
	beq.s loc_205186
	bpl.s loc_20517c
	addq.b #$2,d0
	bcc.s loc_20517a
	moveq #$0,d0
loc_20517a:
	bra.s loc_205182
loc_20517c:
	subq.b #$2,d0
	bcc.s loc_205182
	moveq #$0,d0
loc_205182:
	move.b d0,$26(a0)
loc_205186:
	rts

sub_205188:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200af2).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20526c
	cmpi.b #$80,d0
	beq.w loc_2052ce
	cmpi.b #$c0,d0
	beq.w loc_20532a
	bsr.w sub_206cf6
	tst.w d1
	bpl.s loc_2051da
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051da:
	bsr.w sub_206b58
	tst.w d1
	bpl.s loc_2051ec
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051ec:
	bsr.w sub_206a08
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20526a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20520a
	cmp.b d2,d0
	blt.s loc_20526a
loc_20520a:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20538c
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205248
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20523a
	asr.w $12(a0)
	bra.s loc_20525c
loc_20523a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205248:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20525c
	move.w #$fc0,$12(a0)
loc_20525c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20526a
	neg.w $14(a0)
loc_20526a:
	rts
loc_20526c:
	bsr.w sub_206cf6
	tst.w d1
	bpl.s loc_205286
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205286:
	bsr.w sub_206bb0
	tst.w d1
	bpl.s loc_2052a0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20529e
	move.w #$0,$12(a0)
loc_20529e:
	rts
loc_2052a0:
	tst.w $12(a0)
	bmi.s loc_2052cc
	bsr.w sub_206a08
	tst.w d1
	bpl.s loc_2052cc
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20538c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052cc:
	rts
loc_2052ce:
	bsr.w sub_206cf6
	tst.w d1
	bpl.s loc_2052e0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052e0:
	bsr.w sub_206b58
	tst.w d1
	bpl.s loc_2052f2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052f2:
	bsr.w sub_206bb0
	tst.w d1
	bpl.s loc_205328
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205312
	move.w #$0,$12(a0)
	rts
loc_205312:
	move.b d3,$26(a0)
	bsr.w sub_2053fe
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205328
	neg.w $14(a0)
loc_205328:
	rts
loc_20532a:
	bsr.w sub_206b58
	tst.w d1
	bpl.s loc_205344
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205344:
	bsr.w sub_206bb0
	tst.w d1
	bpl.s loc_20535e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20535c
	move.w #$0,$12(a0)
loc_20535c:
	rts
loc_20535e:
	tst.w $12(a0)
	bmi.s loc_20538a
	bsr.w sub_206a08
	tst.w d1
	bpl.s loc_20538a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20538c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20538a:
	rts

sub_20538c:
	btst.b #$4,$22(a0)
	beq.s loc_205396
	nop
loc_205396:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053f0
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2053d0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053e0
loc_2053d0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053e0:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2023a6).l
loc_2053f0:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053fe:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21534, 788
loc_205732:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205746
	bpl.s loc_205746
	cmpi.b #$fd,d0
	bge.s loc_205750
loc_205746:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
	rts
loc_205750:
	addq.b #$1,d0
	bne.s loc_205760
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205746
loc_205760:
	addq.b #$1,d0
	bne.s loc_205774
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205746
loc_205774:
	addq.b #$1,d0
	bne.s loc_20577e
	move.b $2(a1,d1.w),$1c(a0)
loc_20577e:
	rts
	.incbin 22400, 352
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w loc_205732
	.incbin 22766, 810

sub_205c18:
	tst.b (a0)
	beq.w loc_205c7a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c7a
	move.b d0,(a2)
	lea (dat_230f60).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c7a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c4c:
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
loc_205c66:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c66
	dbf d1,loc_205c4c
loc_205c7a:
	rts
	.incbin 23676, 122

sub_205cf6:
	cmpi.w #$67,d0
	bne.s loc_205d04
	move.b #$1,($ff1958).l
loc_205d04:
	move.w d0,($a12010).l
loc_205d0a:
	move.w ($a12020).l,d0
	beq.s loc_205d0a
	cmp.w ($a12020).l,d0
	bne.s loc_205d0a
	move.w #$0,($a12010).l
loc_205d22:
	move.w ($a12020).l,d0
	bne.s loc_205d22
	move.w ($a12020).l,d0
	bne.s loc_205d22
	rts
	.incbin 23860, 340
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205ea4(pc,d0.w),d0
	jsr dat_205ea4(pc,d0.w)
	jsr (sub_203b0c).l
	jmp (loc_2078ba).l
dat_205ea4:
	.incbin 24228, 344
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20600a(pc,d0.w),d0
	jmp dat_20600a(pc,d0.w)
dat_20600a:
	.incbin 24586, 1440
loc_2065aa:
	bclr.b #$7,($ff156b).l
	beq.s loc_2065f8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2065fa(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2065ce:
	move.l (a1)+,(a2)+
	dbf d0,loc_2065ce
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2065f8:
	rts
dat_2065fa:
	.incbin 26106, 438
loc_2067b0:
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
	bne.s loc_20686a
	move.b ($ff1593).l,($ff195b).l
loc_20686a:
	tst.b ($ff1522).l
	bpl.s loc_206880
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206880:
	rts

sub_206882:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2067b0
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
	bne.s loc_20693c
	move.b ($ff1591).l,($ff195b).l
loc_20693c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20695e
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_20695e:
	tst.b ($ff1522).l
	bpl.s loc_206974
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206974:
	rts

sub_206976:
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
	bpl.s loc_2069b2
	move.b d1,d0
	bpl.s loc_2069ac
	subq.b #$1,d0
loc_2069ac:
	addi.b #$20,d0
	bra.s loc_2069bc
loc_2069b2:
	move.b d1,d0
	bpl.s loc_2069b8
	addq.b #$1,d0
loc_2069b8:
	addi.b #$1f,d0
loc_2069bc:
	andi.b #$c0,d0
	beq.w loc_206a8c
	cmpi.b #$80,d0
	beq.w loc_206c28
	andi.b #$38,d1
	bne.s loc_2069d4
	addq.w #$8,d2
loc_2069d4:
	cmpi.b #$40,d0
	beq.w loc_206cfe
	bra.w loc_206b60
	.incbin 27104, 40

sub_206a08:
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
	jsr (sub_2011b0).l
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
	jsr (sub_2011b0).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206a6c:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206a7a
	move.b ($f768).w,d3
	exg d0,d1
loc_206a7a:
	btst.l #$0,d3
	beq.s loc_206a82
	move.b d2,d3
loc_206a82:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206a8c:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011b0).l
	move.b #$0,d2
loc_206aa8:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ab4
	move.b d2,d3
loc_206ab4:
	rts

sub_206ab6:
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
	jsr (sub_2011b0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206aee
	move.b #$0,d3
loc_206aee:
	rts
	.incbin 27376, 38
	moveq #$e,d5
	jsr (sub_201320).l
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
	jsr (sub_201320).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206a6c

sub_206b58:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b60:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.b #$c0,d2
	bra.w loc_206aa8
	.incbin 27520, 48

sub_206bb0:
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
	jsr (sub_2011b0).l
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
	jsr (sub_2011b0).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206a6c

sub_206c20:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c28:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2011b0).l
	move.b #$80,d2
	bra.w loc_206aa8
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
	jsr (sub_2011b0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c84
	move.b #$80,d3
loc_206c84:
	rts
	.incbin 27782, 86
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206a6c

sub_206cf6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206cfe:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201320).l
	move.b #$40,d2
	bra.w loc_206aa8
	.incbin 27938, 706

sub_206fe4:
	tst.w ($ff1906).l
	bne.s loc_207038
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20538c
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2023a6).l
loc_207038:
	moveq #$ffffffff,d0
	rts
	.incbin 28732, 1590

sub_207672:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207680:
	clr.l (a2)+
	dbf d0,loc_207680
	rts

sub_207688:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207696(pc,d0.w),d0
	jmp dat_207696(pc,d0.w)
dat_207696:
	.incbin 30358, 332
loc_2077e2:
	cmp.w (a0),d6
	bls.s loc_2077f4
	tst.b $4(a0)
	bpl.s loc_2077f0
	addq.b #$1,$1(a2)
loc_2077f0:
	addq.w #$8,a0
	bra.s loc_2077e2
loc_2077f4:
	move.l a0,($f774).w
	rts
	.incbin 30714, 138

sub_207884:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20788c:
	tst.b (a1)
	beq.s loc_207898
	lea $40(a1),a1
	dbf d0,loc_20788c
loc_207898:
	rts

sub_20789a:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078b8
loc_2078ac:
	tst.b (a1)
	beq.s loc_2078b8
	lea $40(a1),a1
	dbf d0,loc_2078ac
loc_2078b8:
	rts
loc_2078ba:
	move.w $8(a0),d0
loc_2078be:
	tst.b $1(a0)
	bmi.s loc_207928
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207928
loc_2078dc:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20791e
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207916
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20790e
	moveq #$0,d1
	bra.s loc_207916
loc_20790e:
	cmpi.w #$3,d1
	bcs.s loc_207916
	moveq #$2,d1
loc_207916:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20791e:
	jsr (sub_203bb8).l
	moveq #$1,d0
	rts
loc_207928:
	btst.b #$7,($ff152e).l
	bne.s loc_2078dc
	moveq #$0,d0
	rts
	.incbin 31030, 4276
	moveq #$0,d0
	move.b ($ff152e).l,d0
	andi.b #$7f,d0
	cmpi.b #$2,d0
	bne.s loc_208a02
	add.b ($ff156a).l,d0
loc_208a02:
	add.w d0,d0
	add.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_208a1a(pc,d0.w),$2(a0)
	ori.w #$4000,$2(a0)
	rts
dat_208a1a:
	.incbin 35354, 288
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
	bpl.s loc_208b5c
	moveq #$0,d1
	bra.s loc_208b64
loc_208b5c:
	cmpi.w #$3,d1
	bcs.s loc_208b64
	moveq #$2,d1
loc_208b64:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208b9c
	cmpi.b #$6,$24(a6)
	bcc.s loc_208b9c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208b9e(pc,d0.w),d1
	jsr dat_208b9e(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208b9c
	jmp (loc_2078ba).l
loc_208b9c:
	rts
dat_208b9e:
	.incbin 35742, 850

sub_208ef0:
	btst.b #$3,$22(a0)
	beq.s loc_208f60
	btst.b #$3,$22(a1)
	beq.s loc_208f60
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208f60
	tst.b $2a(a1)
	beq.s loc_208f22
	move.w #$ab,d0
	jsr (sub_2023a6).l
loc_208f22:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208f4e
	cmpi.b #$17,$1c(a1)
	beq.s loc_208f4e
	bclr.b #$0,$2c(a1)
loc_208f4e:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f60
	bclr.b #$1,$22(a1)
loc_208f60:
	rts

sub_208f62:
	cmpi.b #$4,$24(a1)
	bne.s loc_208f74
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208f74:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208fd4
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f96
	bclr.b #$3,$22(a0)
	bra.w sub_208ef0
loc_208f96:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208fd4
	tst.b ($ff195b).l
	beq.s loc_208fbe
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208fce
loc_208fbe:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208fce:
	move.b #$0,$1c(a1)
loc_208fd4:
	bset.b #$3,$22(a1)
	beq.s loc_208ff6
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20902e
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208ff6:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_209022
	cmpi.b #$2,$24(a0)
	beq.s loc_209028
loc_209022:
	move.w $10(a1),$14(a1)
loc_209028:
	bclr.b #$1,$22(a1)
loc_20902e:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25
loc_20903e:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2092f2
	btst.b #$6,$2c(a1)
	bne.w loc_2092f2
	cmpi.b #$6,$24(a1)
	bcc.w loc_2092f2
	tst.b $0(a1)
	beq.w loc_2092f2
	tst.b $1(a0)
	bpl.w loc_2092f2
	tst.b ($ff1906).l
	bne.w loc_2092f2
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2092f2
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2092f2
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2090ac
	btst.b #$3,$22(a0)
	bne.s loc_2090be
	bra.w loc_2092f2
loc_2090ac:
	cmpi.b #$1,$25(a0)
	bne.s loc_2090be
	tst.w $12(a1)
	beq.s loc_2090be
	bmi.w loc_2092f2
loc_2090be:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2092f2
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2092f2
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2090f4
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2090f4:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_209102
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_209102:
	cmp.w d4,d5
	bcs.w loc_209196
	cmpi.b #$1,$25(a0)
	beq.w loc_2092f2
	cmpi.b #$a,$0(a0)
	bne.s loc_209124
	btst.b #$1,$22(a1)
	bne.w loc_2092f2
loc_209124:
	cmpi.b #$4,d5
	bls.w loc_2092f2
	bsr.w sub_209342
	move.l d0,-(a7)
	bsr.w sub_208ef0
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20914e
	tst.w $10(a1)
	beq.s loc_20917e
	bpl.s loc_209156
	bra.s loc_20917e
loc_20914e:
	tst.w $10(a1)
	beq.s loc_20917e
	bpl.s loc_20917e
loc_209156:
	bsr.w sub_209302
	btst.b #$1,$22(a1)
	bne.s loc_209174
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209174:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20917e:
	bsr.w sub_2093b8
	bsr.w sub_209302
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209196:
	cmpi.b #$19,$0(a0)
	bne.s loc_2091a8
	btst.b #$2,$22(a1)
	bne.w loc_2092f2
loc_2091a8:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2091be
	bmi.w loc_20928e
loc_2091be:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2091d0
	tst.w $12(a1)
	beq.s loc_2091d0
	bmi.w loc_2092f2
loc_2091d0:
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
	beq.s loc_20921c
	bpl.s loc_2091fc
	neg.b d0
loc_2091fc:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206976).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20921c
	tst.w $10(a0)
	bpl.s loc_209218
	neg.w d1
loc_209218:
	add.w d1,$8(a1)
loc_20921c:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209286
	tst.w $12(a0)
	bmi.s loc_20925a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a08).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20925a
	add.w d1,$c(a1)
	bra.w loc_2092f2
loc_20925a:
	tst.w $12(a0)
	bpl.s loc_209286
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c20).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209286
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fe4).l
	movem.l (a7)+,a0-a1
	bra.s loc_2092f2
loc_209286:
	bsr.w sub_208f62
	moveq #$1,d0
	rts
loc_20928e:
	cmpi.b #$1,$25(a0)
	beq.s loc_2092f2
	cmpi.b #$9,$0(a0)
	beq.s loc_2092f2
	cmpi.b #$a,$0(a0)
	bne.s loc_2092b8
	cmpi.b #$2,$25(a0)
	beq.s loc_2092d8
	btst.b #$1,$1(a0)
	bne.s loc_2092d8
	bra.s loc_2092f2
loc_2092b8:
	btst.b #$1,$22(a1)
	bne.s loc_2092d8
	tst.w $12(a0)
	beq.s loc_2092d8
	bmi.s loc_2092d8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fe4).l
	movem.l (a7)+,a0-a1
loc_2092d8:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2093b8
	bsr.w sub_208ef0
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2092f2:
	bsr.w sub_2093b8
	bsr.w sub_208ef0
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209302:
	tst.w $10(a0)
	beq.s loc_209340
	cmpi.b #$a,$0(a0)
	beq.s loc_209340
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_20931c
	neg.b d0
loc_20931c:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206976).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209340
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fe4).l
	movem.l (a7)+,a0-a1
loc_209340:
	rts

sub_209342:
	cmpi.b #$a,$0(a0)
	bne.s loc_209352
	move.b #$0,$20(a1)
	rts
loc_209352:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2093a6
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2093b6
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209374
	tst.w $10(a2)
	beq.s loc_2093b6
loc_209374:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209386
	cmp.w $8(a2),d1
	bcs.s loc_2093b6
	bra.s loc_20938c
loc_209386:
	cmp.w $8(a2),d1
	bcc.s loc_2093b6
loc_20938c:
	cmpi.b #$15,$0(a0)
	beq.s loc_2093b6
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fe4).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2093a6:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2093b6:
	rts

sub_2093b8:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2093d2
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2093d2
	move.b #$0,$20(a1)
loc_2093d2:
	rts
	.incbin 37844, 2296
dat_209ccc:
	.incbin 40140, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209d24
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209d1c
	moveq #$0,d1
	bra.s loc_209d24
loc_209d1c:
	cmpi.w #$3,d1
	bcs.s loc_209d24
	moveq #$2,d1
loc_209d24:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209d40
	moveq #$6,d1
loc_209d40:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209ccc).l,a1
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
	beq.s loc_209d90
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209d88
	moveq #$0,d0
	bra.s loc_209d90
loc_209d88:
	cmpi.w #$3,d0
	bcs.s loc_209d90
	moveq #$2,d0
loc_209d90:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209e5e
	dbf d0,loc_209d90
	bclr.b #$7,(a2)
	bra.s loc_209de6
loc_209da2:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209dce
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209dc6
	moveq #$0,d0
	bra.s loc_209dce
loc_209dc6:
	cmpi.w #$3,d0
	bcs.s loc_209dce
	moveq #$2,d0
loc_209dce:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209e5e
	dbf d0,loc_209dce
	bclr.b #$7,(a2)
	bsr.w sub_20789a
	bne.w loc_209e6a
loc_209de6:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a130,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209e3c
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209e3c
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209e3c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209e5e:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209da2
loc_209e6a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209e90
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209e88
	moveq #$0,d0
	bra.s loc_209e90
loc_209e88:
	cmpi.w #$3,d0
	bcs.s loc_209e90
	moveq #$2,d0
loc_209e90:
	lea $1(a2),a3
loc_209e94:
	btst.b #$0,-(a3)
	bne.w sub_203bb8
	dbf d0,loc_209e94
	tst.b $1(a0)
	bmi.s loc_209ec4
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209f3e
loc_209ec4:
	tst.w ($ff190e).l
	bne.s loc_209ed4
	move.b ($ff1913).l,$1a(a0)
loc_209ed4:
	bra.w sub_203b0c
	.incbin 40664, 102
loc_209f3e:
	bra.w sub_203bb8
	.incbin 40770, 3914
loc_20ae8c:
	tst.w ($ff1588).l
	beq.s loc_20aee2
	bsr.w sub_20b0de
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
	lea (dat_20b23e).l,a2
	moveq #$2,d6
	bsr.w sub_20b296
	bra.w loc_20af3c
loc_20aee2:
	tst.b ($ff1511).l
	beq.s loc_20af06
	bpl.s loc_20aef0
	bsr.w sub_20b088
loc_20aef0:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b178
loc_20af06:
	tst.b ($ff150f).l
	beq.s loc_20af3c
	bpl.s loc_20af14
	bsr.w sub_20b074
loc_20af14:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20af38
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20af38:
	bsr.w sub_20b16e
loc_20af3c:
	tst.w ($ff1588).l
	bne.w loc_20afe8
	tst.b ($ff1510).l
	beq.w loc_20afe8
	tst.w ($f63a).w
	bne.w loc_20afe8
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b046
	tst.b ($f7cc).w
	bne.s loc_20af92
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af92
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af92
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20af92
	move.b #$9,(a1)
loc_20af92:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b284
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b28e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20afe4
	move.w #$63,d1
loc_20afe4:
	bsr.w sub_20b28e
loc_20afe8:
	tst.b ($ff150e).l
	beq.s loc_20affa
	clr.b ($ff150e).l
	bsr.w sub_20b264
loc_20affa:
	tst.b ($f7d6).w
	beq.s loc_20b044
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b01a
	move.l #$6d400001,d0
loc_20b01a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b0fc
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b03a
	move.l #$6e800001,d0
loc_20b03a:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b0fc
loc_20b044:
	rts
loc_20b046:
	btst.b #$7,($ff152e).l
	bne.s loc_20b072
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206fe4
	move.b #$1,($ff150c).l
loc_20b072:
	rts

sub_20b074:
	move.l #$73600002,($c00004).l
	lea dat_20b0da(pc),a2
	move.w #$2,d2
	bra.s loc_20b0a4

sub_20b088:
	lea ($c00000).l,a6
	bsr.w sub_20b264
	move.l #$70600002,($c00004).l
	lea dat_20b0d2(pc),a2
	move.w #$6,d2
loc_20b0a4:
	lea (dat_23589a).l,a1
loc_20b0aa:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b0c6
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b0ba:
	move.l (a3)+,(a6)
	dbf d1,loc_20b0ba
loc_20b0c0:
	dbf d2,loc_20b0aa
	rts
loc_20b0c6:
	move.l #$0,(a6)
	dbf d1,loc_20b0c6
	bra.s loc_20b0c0
dat_20b0d2:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b0da:
	dc.b $ff,$ff,$00,$00

sub_20b0de:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b25a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b25a

sub_20b0fc:
	lea (dat_20b236).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20b10c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b110:
	sub.l d3,d1
	bcs.s loc_20b118
	addq.w #$1,d2
	bra.s loc_20b110
loc_20b118:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b122
	move.w #$1,d4
loc_20b122:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b12e
	tst.w d6
	bne.s loc_20b160
loc_20b12e:
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
loc_20b154:
	addi.l #$400000,d0
	dbf d6,loc_20b10c
	rts
loc_20b160:
	moveq #$f,d5
loc_20b162:
	move.l #$0,(a6)
	dbf d5,loc_20b162
	bra.s loc_20b154

sub_20b16e:
	lea (dat_20b23e).l,a2
	moveq #$2,d6
	bra.s loc_20b180

sub_20b178:
	lea (dat_20b232).l,a2
	moveq #$5,d6
loc_20b180:
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20b188:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b18c:
	sub.l d3,d1
	bcs.s loc_20b194
	addq.w #$1,d2
	bra.s loc_20b18c
loc_20b194:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b19e
	move.w #$1,d4
loc_20b19e:
	tst.w d4
	beq.s loc_20b1cc
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
loc_20b1cc:
	addi.l #$400000,d0
	dbf d6,loc_20b188
	rts
	.incbin 45528, 32
loc_20b1f8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1fc:
	sub.l d3,d1
	bcs.s loc_20b204
	addq.w #$1,d2
	bra.s loc_20b1fc
loc_20b204:
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
	dbf d6,loc_20b1f8
	rts
dat_20b232:
	dc.b $00,$01,$86,$a0
dat_20b236:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b23e:
	dc.b $00,$00,$00,$64
dat_20b242:
	dc.b $00,$00,$00,$0a
dat_20b246:
	dc.b $00,$00,$00,$01
dat_20b24a:
	.incbin 45642, 16

sub_20b25a:
	moveq #$3,d6
	lea (dat_20b24a).l,a2
	bra.s sub_20b296

sub_20b264:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b27a
	moveq #$9,d1
loc_20b27a:
	lea (dat_20b246).l,a2
	moveq #$0,d6
	bra.s sub_20b296

sub_20b284:
	lea (dat_20b246).l,a2
	moveq #$0,d6
	bra.s sub_20b296

sub_20b28e:
	lea (dat_20b242).l,a2
	moveq #$1,d6

sub_20b296:
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20b29e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b2a2:
	sub.l d3,d1
	bcs.s loc_20b2aa
	addq.w #$1,d2
	bra.s loc_20b2a2
loc_20b2aa:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b2b4
	move.w #$1,d4
loc_20b2b4:
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
	dbf d6,loc_20b29e
	rts
	.incbin 45802, 7170
loc_20ceec:
	lea dat_20cf3e(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cef8:
	cmp.w (a1)+,d0
	bcs.s loc_20cf00
	addq.b #$2,d1
	bra.s loc_20cef8
loc_20cf00:
	move.b d1,($ff1574).l
	move.w dat_20cf52(pc,d1.w),d0
	jmp (sub_20253e).l

sub_20cf10:
	lea dat_20cf3e(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cf1c:
	cmp.w (a1)+,d0
	bcs.s loc_20cf24
	addq.b #$2,d1
	bra.s loc_20cf1c
loc_20cf24:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cf2e
	rts
loc_20cf2e:
	move.b d1,($ff1574).l
	move.w dat_20cf48(pc,d1.w),d0
	jmp (loc_202570).l
dat_20cf3e:
	dc.b $06,$80,$0f,$80,$19,$80,$1f,$80
	dc.b $ff,$ff
dat_20cf48:
	dc.b $00,$08,$00,$09,$00,$0a,$00,$0b
	dc.b $00,$0c
dat_20cf52:
	.incbin 53074, 3492
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd12(pc,d0.w),d0
	jsr dat_20dd12(pc,d0.w)
	jsr (sub_203b0c).l
	move.w $2a(a0),d0
	bra.w loc_2078be
dat_20dd12:
	.incbin 56594, 2090
loc_20e53c:
	jmp (sub_203bb8).l
	.incbin 58690, 34
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$fb,$20(a0)
	move.w #$403,d0
	tst.b ($ff1507).l
	beq.s loc_20e58c
	move.w #$3af,d0
loc_20e58c:
	move.w d0,$2(a0)
	move.l #$20e7d2,$4(a0)
	move.l #$20e816,$2c(a0)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b #$24,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207884).l
	bne.w loc_20e53c
	move.b #$24,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$64,$8(a1)
	addq.w #$4,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20e670
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20e670:
	lea ($d000).w,a1
	jmp (loc_20903e).l
	.incbin 59002, 5424

sub_20fbaa:
	jmp (loc_2065aa).l
dat_20fbb0:
	.incbin 64432, 16
dat_20fbc0:
	.incbin 64448, 66624
dat_220000:
	.incbin 131072, 69472
dat_230f60:
	.incbin 200544, 18362
dat_23571a:
	.incbin 218906, 384
dat_23589a:
	.incbin 219290, 11550
dat_2385b8:
	.incbin 230840, 256
dat_2386b8:
	.incbin 231096, 4096
dat_2396b8:
	.incbin 235192, 4996
dat_23aa3c:
	.incbin 240188, 21956
