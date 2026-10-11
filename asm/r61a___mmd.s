; R61A__.MMD
; disassembled from the disc; code only, data comes from data/R61A__.MMD at build time
	.file "R61A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$ce
	jmp (loc_201c44).l
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
	bsr.w sub_20217a
	bsr.w sub_202122
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2014be

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200206).l,a1
	lea (dat_20020e).l,a2
	bsr.w sub_2001c8
	lea (dat_200214).l,a1
	lea (dat_20021c).l,a2
	bsr.w sub_2001c8
	lea (dat_200222).l,a1
	lea (dat_20022a).l,a2
	bsr.w sub_2001c8
	lea (dat_200230).l,a1
	lea (dat_2002e8).l,a2

sub_2001c8:
	subq.b #$1,(a5)
	bpl.s loc_2001fc
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
	bcs.s loc_2001e8
	moveq #$0,d0
loc_2001e8:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001fc:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200206:
	dc.b $21,$03,$01,$00,$01,$01,$01,$02
dat_20020e:
	dc.b $00,$ee,$00,$0e,$00,$00
dat_200214:
	dc.b $22,$03,$01,$00,$01,$01,$01,$02
dat_20021c:
	dc.b $00,$0e,$00,$00,$00,$ee
dat_200222:
	dc.b $23,$03,$01,$00,$01,$01,$01,$02
dat_20022a:
	dc.b $00,$00,$00,$ee,$00,$0e
dat_200230:
	.incbin 560, 184
dat_2002e8:
	dc.b $00,$00,$0c,$28,$00,$ee,$0e,$ee

sub_2002f0:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200302:
	move.w d1,(a0)+
	dbf d0,loc_200302
	move.w #$15,d4
loc_20030c:
	move.b #$12,($f62a).w
	bsr.w sub_200802
	bsr.s sub_200322
	bsr.w sub_202540
	dbf d4,loc_20030c
	rts

sub_200322:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200338:
	bsr.s sub_200366
	dbf d0,loc_200338
	cmpi.b #$1,($ff1506).l
	bne.s loc_200364
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20035e:
	bsr.s sub_200366
	dbf d0,loc_20035e
loc_200364:
	rts

sub_200366:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20038e
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20037c
	move.w d1,(a0)+
	rts
loc_20037c:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_20038a
	move.w d1,(a0)+
	rts
loc_20038a:
	addq.w #$2,(a0)+
	rts
loc_20038e:
	addq.w #$2,a0
	rts

sub_200392:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20039c:
	move.b #$12,($f62a).w
	bsr.w sub_200802
	bsr.s sub_2003b2
	bsr.w sub_202540
	dbf d4,loc_20039c
	rts

sub_2003b2:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003c2:
	bsr.s sub_2003e0
	dbf d0,loc_2003c2
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003d8:
	bsr.s sub_2003e0
	dbf d0,loc_2003d8
	rts

sub_2003e0:
	move.w (a0),d2
	beq.s loc_20040c
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003f0
	subq.w #$2,(a0)+
	rts
loc_2003f0:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_2003fe
	subi.w #$20,(a0)+
	rts
loc_2003fe:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_20040c
	subi.w #$200,(a0)+
	rts
loc_20040c:
	addq.w #$2,a0
	rts

sub_200410:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20042a:
	move.w d1,(a0)+
	dbf d0,loc_20042a
	move.w #$15,d4
loc_200434:
	move.b #$12,($f62a).w
	bsr.w sub_200802
	bsr.s sub_20044a
	bsr.w sub_202540
	dbf d4,loc_200434
	rts

sub_20044a:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200460:
	bsr.s sub_20048e
	dbf d0,loc_200460
	cmpi.b #$1,($ff1506).l
	bne.s loc_20048c
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200486:
	bsr.s sub_20048e
	dbf d0,loc_200486
loc_20048c:
	rts

sub_20048e:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004ba
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004a6
	cmp.w d2,d1
	bcs.s loc_2004a6
	move.w d1,(a0)+
	rts
loc_2004a6:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004b6
	cmp.w d2,d1
	bcs.s loc_2004b6
	move.w d1,(a0)+
	rts
loc_2004b6:
	subq.w #$2,(a0)+
	rts
loc_2004ba:
	addq.w #$2,a0
	rts

sub_2004be:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004c8:
	move.b #$12,($f62a).w
	bsr.w sub_200802
	bsr.s sub_2004de
	bsr.w sub_202540
	dbf d4,loc_2004c8
	rts

sub_2004de:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004ee:
	bsr.s sub_20050c
	dbf d0,loc_2004ee
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200504:
	bsr.s sub_20050c
	dbf d0,loc_200504
	rts

sub_20050c:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200548
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200524
	addq.w #$2,(a0)+
	rts
loc_200524:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200536
	addi.w #$20,(a0)+
	rts
loc_200536:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200548
	addi.w #$200,(a0)+
	rts
loc_200548:
	addq.w #$2,a0
	rts

sub_20054c:
	lea (dat_2005b8).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200560:
	move.l (a2)+,(a3)+
	dbf d7,loc_200560
	rts

sub_200568:
	lea (dat_2005b8).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200578:
	move.l (a2)+,(a3)+
	dbf d7,loc_200578
	rts
	dc.b $43,$f9,$00,$20,$05,$b8
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200594:
	move.l (a2)+,(a3)+
	dbf d7,loc_200594
	rts
	dc.b $43,$f9,$00,$20,$05,$b8
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_2005b0:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005b0
	rts
dat_2005b8:
	.incbin 1464, 586

sub_200802:
	move.w #$2300,sr
loc_200806:
	tst.b ($f62a).w
	bne.s loc_200806
	rts

sub_20080e:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200826(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200826(pc,d0.w),d0
	rts
dat_200826:
	.incbin 2086, 640

sub_200aa6:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200b02
	move.w d2,d4
	tst.w d3
	bpl.w loc_200ac0
	neg.w d3
loc_200ac0:
	tst.w d4
	bpl.w loc_200ac8
	neg.w d4
loc_200ac8:
	cmp.w d3,d4
	bcc.w loc_200ada
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200b0c(pc,d4.w),d0
	bra.s loc_200ae4
loc_200ada:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200b0c(pc,d3.w),d0
loc_200ae4:
	tst.w d1
	bpl.w loc_200af0
	neg.w d0
	addi.w #$80,d0
loc_200af0:
	tst.w d2
	bpl.w loc_200afc
	neg.w d0
	addi.w #$100,d0
loc_200afc:
	movem.l (a7)+,d3-d4
	rts
loc_200b02:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200b0c:
	.incbin 2828, 258

sub_200c0e:
	btst.b #$3,$22(a0)
	beq.s loc_200c22
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200c22:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200c44
	move.b $26(a0),d0
	bpl.s loc_200c3e
	subq.b #$1,d0
loc_200c3e:
	addi.b #$20,d0
	bra.s loc_200c50
loc_200c44:
	move.b $26(a0),d0
	bpl.s loc_200c4c
	addq.b #$1,d0
loc_200c4c:
	addi.b #$1f,d0
loc_200c50:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200eda
	cmpi.b #$80,d0
	beq.w loc_200e38
	cmpi.b #$c0,d0
	beq.w loc_200d9c
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
	bsr.w sub_201164
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
	bsr.w sub_201164
	move.w (a7)+,d0
	bsr.w sub_200d70
	tst.w d1
	beq.s loc_200cde
	bpl.s loc_200ce0
	cmpi.w #$fff2,d1
	blt.s loc_200d06
	add.w d1,$c(a0)
loc_200cde:
	rts
loc_200ce0:
	cmpi.w #$e,d1
	bgt.s loc_200cec
loc_200ce6:
	add.w d1,$c(a0)
	rts
loc_200cec:
	tst.b $38(a0)
	bne.s loc_200ce6
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d06:
	rts
	.incbin 3336, 34
loc_200d2a:
	rts
	.incbin 3372, 68

sub_200d70:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d7e
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d7e:
	btst.l #$0,d2
	bne.s loc_200d8a
	move.b d2,$26(a0)
	rts
loc_200d8a:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d9c:
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
	bsr.w sub_2012d4
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
	bsr.w sub_2012d4
	move.w (a7)+,d0
	bsr.w sub_200d70
	tst.w d1
	beq.s loc_200e10
	bpl.s loc_200e12
	cmpi.w #$fff2,d1
	blt.w loc_200d2a
	add.w d1,$8(a0)
loc_200e10:
	rts
loc_200e12:
	cmpi.w #$e,d1
	bgt.s loc_200e1e
loc_200e18:
	add.w d1,$8(a0)
	rts
loc_200e1e:
	tst.b $38(a0)
	bne.s loc_200e18
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e38:
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
	bsr.w sub_201164
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
	bsr.w sub_201164
	move.w (a7)+,d0
	bsr.w sub_200d70
	tst.w d1
	beq.s loc_200eb2
	bpl.s loc_200eb4
	cmpi.w #$fff2,d1
	blt.w loc_200d06
	sub.w d1,$c(a0)
loc_200eb2:
	rts
loc_200eb4:
	cmpi.w #$e,d1
	bgt.s loc_200ec0
loc_200eba:
	sub.w d1,$c(a0)
	rts
loc_200ec0:
	tst.b $38(a0)
	bne.s loc_200eba
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200eda:
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
	bsr.w sub_2012d4
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
	bsr.w sub_2012d4
	move.w (a7)+,d0
	bsr.w sub_200d70
	tst.w d1
	beq.s loc_200f54
	bpl.s loc_200f56
	cmpi.w #$fff2,d1
	blt.w loc_200d2a
	sub.w d1,$8(a0)
loc_200f54:
	rts
loc_200f56:
	cmpi.w #$e,d1
	bgt.s loc_200f62
loc_200f5c:
	sub.w d1,$8(a0)
	rts
loc_200f62:
	tst.b $38(a0)
	bne.s loc_200f5c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f7c:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f92
	andi.w #$380,d0
loc_200f92:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ff2
	bmi.s loc_200ff6
	cmpi.b #$5,($ff1506).l
	beq.s loc_200fc2
	cmpi.b #$6,($ff1506).l
	bne.s loc_200fc8
loc_200fc2:
	andi.w #$7fff,$2(a0)
loc_200fc8:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fd8
	bclr.b #$6,$1(a0)
loc_200fd8:
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
loc_200ff2:
	movea.l d1,a1
	rts
loc_200ff6:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20105e
	btst.b #$6,$1(a0)
	bne.s loc_201024
	cmpi.b #$14,d1
	bne.w loc_201148
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201148
loc_201024:
	cmpi.b #$15,d1
	bne.s loc_201032
	move.w #$60,d1
	bra.w loc_201148
loc_201032:
	cmpi.b #$1e,d1
	bne.s loc_201040
	move.w #$61,d1
	bra.w loc_201148
loc_201040:
	cmpi.b #$1f,d1
	bne.s loc_20104e
	move.w #$62,d1
	bra.w loc_201148
loc_20104e:
	cmpi.b #$32,d1
	bne.w loc_201148
	move.w #$63,d1
	bra.w loc_201148
loc_20105e:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2010c4
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_2010ae
	cmpi.b #$6,d1
	beq.s loc_2010ae
	tst.b ($ff1956).l
	beq.w loc_201148
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2010be
	cmpi.b #$3c,d1
	beq.s loc_2010be
	cmpi.b #$37,d1
	beq.s loc_2010be
	cmpi.b #$2f,d1
	beq.s loc_2010be
	cmpi.b #$16,d1
	beq.s loc_2010be
	bra.w loc_201148
loc_2010ae:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201148
loc_2010be:
	addq.b #$1,d1
	bra.w loc_201148
loc_2010c4:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201134
	cmpi.b #$3,$0(a0)
	bcc.w loc_201148
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201148
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2010f8
	move.w #$6a,d1
	bra.s loc_201148
loc_2010f8:
	cmpi.b #$48,d1
	bne.s loc_201104
	move.w #$6b,d1
	bra.s loc_201148
loc_201104:
	cmpi.b #$4a,d1
	bne.s loc_201110
	move.w #$6c,d1
	bra.s loc_201148
loc_201110:
	cmpi.b #$10,d1
	bne.s loc_20111c
	move.w #$6d,d1
	bra.s loc_201148
loc_20111c:
	cmpi.b #$63,d1
	bne.s loc_201128
	move.w #$6e,d1
	bra.s loc_201148
loc_201128:
	cmpi.b #$43,d1
	bne.s loc_201148
	move.w #$6f,d1
	bra.s loc_201148
loc_201134:
	btst.b #$6,$1(a0)
	beq.s loc_201148
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201148
	move.w #$51,d1
loc_201148:
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

sub_201164:
	bsr.w sub_200f7c
	cmpi.l #$210000,d1
	beq.s loc_20117e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20117e
	btst.l d5,d4
	bne.s loc_20118c
loc_20117e:
	add.w a3,d2
	bsr.w sub_201224
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20118c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20117e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011b2
	not.w d1
	neg.b (a4)
loc_2011b2:
	btst.l #$c,d4
	beq.s loc_2011c2
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011c2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011de
	neg.w d0
loc_2011de:
	tst.w d0
	beq.s loc_20117e
	bmi.s loc_2011fa
	cmpi.b #$10,d0
	beq.s loc_201216
loc_2011ea:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011fa:
	cmpa.w #$10,a3
	bne.s loc_20120a
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011ea
loc_20120a:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20117e
loc_201216:
	sub.w a3,d2
	bsr.w sub_201224
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201224:
	bsr.w sub_200f7c
	cmpi.l #$210000,d1
	beq.s loc_20123e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20123e
	btst.l d5,d4
	bne.s loc_20124c
loc_20123e:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20124c:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20123e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201272
	not.w d1
	neg.b (a4)
loc_201272:
	btst.l #$c,d4
	beq.s loc_201282
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201282:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2347f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20129e
	neg.w d0
loc_20129e:
	tst.w d0
	beq.s loc_20123e
	bmi.s loc_2012b4
loc_2012a4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012b4:
	cmpa.w #$10,a3
	bne.s loc_2012c4
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012a4
loc_2012c4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20123e
	not.w d1
	rts

sub_2012d4:
	bsr.w sub_200f7c
	cmpi.l #$210000,d1
	beq.s loc_2012ee
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012ee
	btst.l d5,d4
	bne.s loc_2012fc
loc_2012ee:
	add.w a3,d3
	bsr.w sub_201384
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2012fc:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012ee
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20132a
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20132a:
	btst.l #$b,d4
	beq.s loc_201332
	neg.b (a4)
loc_201332:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20134e
	neg.w d0
loc_20134e:
	tst.w d0
	beq.s loc_2012ee
	bmi.s loc_20136a
	cmpi.b #$10,d0
	beq.s loc_201376
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20136a:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012ee
loc_201376:
	sub.w a3,d3
	bsr.w sub_201384
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201384:
	bsr.w sub_200f7c
	cmpi.l #$210000,d1
	beq.s loc_20139e
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20139e
	btst.l d5,d4
	bne.s loc_2013ac
loc_20139e:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2013ac:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20139e
	lea (dat_2346f6).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2013da
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2013da:
	btst.l #$b,d4
	beq.s loc_2013e2
	neg.b (a4)
loc_2013e2:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2357f6).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2013fe
	neg.w d0
loc_2013fe:
	tst.w d0
	beq.s loc_20139e
	bmi.s loc_201414
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201414:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20139e
	not.w d1
	rts

sub_201424:
	rts
	.incbin 5158, 152
loc_2014be:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2014de
	tst.b ($ff0f01).l
	bne.s loc_2014de
	move.b #$1,($ff156a).l
loc_2014de:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201544
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20770e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201544
	move.b #$1,($ff1508).l
loc_201544:
	bset.b #$7,($f600).w
	bsr.w sub_202532
	tst.b ($ff156e).l
	bne.s loc_20156a
	btst.b #$7,($ff152e).l
	beq.s loc_2015a0
	bset.b #$0,($ff151d).l
	beq.s loc_201576
loc_20156a:
	bsr.w sub_2004be
	bclr.b #$0,($ff151d).l
loc_201576:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201610
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20159e
	bclr.b #$7,($ff152e).l
loc_20159e:
	rts
loc_2015a0:
	bset.b #$0,($ff151d).l
	beq.s loc_2015ae
	bsr.w sub_200392
loc_2015ae:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2015ca
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2015f2
loc_2015ca:
	tst.b ($ff1508).l
	bne.s loc_201610
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2015f2:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015fa:
	move.l #$0,(a1)+
	dbf d6,loc_2015fa
	move.b #$c,($f62a).w
	bsr.w sub_200802
	rts
loc_201610:
	cmpi.w #$800,($f78e).w
	bne.s loc_20162e
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20162e:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201644
	btst.b #$7,($ff152e).l
	beq.s loc_20164a
loc_201644:
	move.l #$eee0eee,d0
loc_20164a:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201652:
	move.l d0,(a1)+
	dbf d6,loc_201652
loc_201658:
	move.b #$c,($f62a).w
	bsr.w sub_200802
	bsr.w sub_202540
	bne.s loc_201658
	tst.l ($f680).w
	bsr.w sub_201afe
	moveq #$0,d0
	lea (dat_20fe32).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201682
	bsr.w sub_202646
loc_201682:
	moveq #$1,d0
	bsr.w sub_202646
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20169e:
	move.l d0,(a1)+
	dbf d1,loc_20169e
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2016b0:
	move.l d0,(a1)+
	dbf d1,loc_2016b0
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2016c0:
	move.l d0,(a1)+
	dbf d1,loc_2016c0
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2016d2:
	move.l d0,(a1)+
	dbf d1,loc_2016d2
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2016e2:
	move.l d0,(a1)+
	dbf d1,loc_2016e2
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2016f2:
	move.l d0,(a1)+
	dbf d1,loc_2016f2
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20221c
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
	bsr.w sub_200568
	moveq #$3,d0
	bsr.w sub_20054c
	bsr.w sub_2028a8
	bsr.w sub_2029fc
	bset.b #$2,($f754).w
	bsr.w sub_2033fe
	bsr.w sub_203304
	jsr (sub_201424).l
	bsr.w sub_201a38
loc_201772:
	move.b #$c,($f62a).w
	bsr.w sub_200802
	bsr.w sub_202540
	bne.s loc_201772
	tst.l ($f680).w
	bne.s loc_201772
	bsr.w sub_2019c4
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201b5e
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2017d6
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2017d6:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201818
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201818:
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
	jsr (sub_20fcbe).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2018a8
loc_2018a2:
	bsr.w sub_200410
	bra.s loc_2018b6
loc_2018a8:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2018a2
	bsr.w sub_2002f0
loc_2018b6:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2018c4:
	move.b #$8,($f62a).w
	bsr.w sub_200802
	tst.b ($f7cc).w
	bne.s loc_2018e2
	btst.b #$7,($f605).w
	beq.s loc_2018e2
	eori.b #$1,($f63a).w
loc_2018e2:
	btst.b #$0,($f63a).w
	beq.w loc_201954
	bsr.w sub_201bc2
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201932
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2018c4
	subq.b #$1,($ff1508).l
	bpl.s loc_201914
	clr.b ($ff1508).l
loc_201914:
	move.w #$e,d0
	jsr (sub_205e2e).l
	bsr.w sub_20770e
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201940
loc_201932:
	andi.b #$70,d0
	beq.w loc_2018c4
	clr.b ($ff1508).l
loc_201940:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2014be
loc_201954:
	bsr.w sub_201c08
	addq.w #$1,($ff1504).l
	jsr (sub_207724).l
	jsr (sub_203804).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2014be
	tst.w ($ff1502).l
	bne.w loc_2014be
	tst.w ($ff1906).l
	bne.s loc_20199c
	cmpi.b #$6,($d024).w
	bcs.s loc_20199c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2019a0
loc_20199c:
	bsr.w sub_2029fc
loc_2019a0:
	jsr (sub_2039ae).l
	tst.w ($ff190e).l
	bne.s loc_2019b2
	bsr.w sub_200184
loc_2019b2:
	jsr (sub_20ca2a).l
	bsr.w sub_202540
	bsr.w sub_201a6a
	bra.w loc_2018c4

sub_2019c4:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019dc
	move.w #$78,$30(a1)
loc_2019dc:
	rts
	.incbin 6622, 90

sub_201a38:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201a4a(pc,d0.w),($f796).w
	rts
dat_201a4a:
	.incbin 6730, 32

sub_201a6a:
	subq.b #$1,($ff1910).l
	bpl.s loc_201a88
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201a88:
	subq.b #$1,($ff1912).l
	bpl.s loc_201aa6
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201aa6:
	subq.b #$1,($ff1914).l
	bpl.s loc_201ace
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201ace
	move.b #$0,($ff1915).l
loc_201ace:
	tst.b ($ff1916).l
	beq.s loc_201afc
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201afc:
	rts

sub_201afe:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201b20
	cmpi.b #$2,d0
	bne.s loc_201b20
	add.b ($ff156a).l,d0
loc_201b20:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201b38(pc,d1.w),d0
	jmp (sub_205e2e).l
dat_201b38:
	.incbin 6968, 38

sub_201b5e:
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

sub_201bc2:
	move.w #$ab,d0
	jsr (sub_20230a).l
	bset.b #$7,($f63a).w
	bne.s loc_201c06
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201bec
loc_201be2:
	move.w #$d5,d0
	jmp (sub_205e2e).l
loc_201bec:
	tst.b ($ff151f).l
	bne.s loc_201be2
	tst.b ($ff1520).l
	bne.s loc_201be2
	move.w #$90,d0
	jmp (sub_205e2e).l
loc_201c06:
	rts

sub_201c08:
	bclr.b #$7,($f63a).w
	beq.s loc_201c42
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201c28
loc_201c1e:
	move.w #$d6,d0
	jmp (sub_205e2e).l
loc_201c28:
	tst.b ($ff151f).l
	bne.s loc_201c1e
	tst.b ($ff1520).l
	bne.s loc_201c1e
	move.w #$91,d0
	jmp (sub_205e2e).l
loc_201c42:
	rts
loc_201c44:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201cd0
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201c80
	move.w #$700,d0
loc_201c7c:
	dbf d0,loc_201c7c
loc_201c80:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201cb6(pc,d0.w),d0
	jsr dat_201cb6(pc,d0.w)
loc_201c96:
	jsr (sub_20232e).l
	tst.b ($f63a).w
	bne.s loc_201caa
	bsr.w sub_2020e2
	bsr.w sub_2020d0
loc_201caa:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201cb6:
	.incbin 7350, 26
loc_201cd0:
	tst.b ($ff1957).l
	beq.w loc_201c96
	cmpi.b #$2,($ff1506).l
	bne.w loc_201c96
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201cfe
	move.w #$700,d0
loc_201cfa:
	dbf d0,loc_201cfa
loc_201cfe:
	move.w #$1,($f6fc).w
	jsr (sub_2022a2).l
	tst.b ($f64e).w
	bne.s loc_201d36
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201d5a
loc_201d36:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201d5a:
	move.w ($f624).w,(a5)
	jsr (sub_2022be).l
	bra.w loc_201c96
	.incbin 7528, 60
	jsr (sub_2022a2).l
	bsr.w sub_20213e
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
	beq.s loc_201e52
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201e52:
	jsr (sub_20fcbe).l
	jsr (sub_2022be).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202efa
	bsr.w sub_2025b2
	jmp (loc_20b25a).l
	dc.b $4e,$75
	jsr (sub_2022a2).l
	bsr.w sub_20213e
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
	jsr (sub_2022be).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202efa
	bra.w loc_202596
	.incbin 7978, 16
	bsr.w sub_202026
	cmpi.b #$1,($ff1903).l
	bne.s loc_201f5c
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201f5c:
	move.w ($f624).w,(a5)
	bra.w loc_202596
	.incbin 8036, 194

sub_202026:
	jsr (sub_2022a2).l
	bsr.w sub_20213e
	tst.b ($f64e).w
	bne.s loc_20205c
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202080
loc_20205c:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202080:
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
	jmp (sub_2022be).l
	dc.b $4e,$73

sub_2020d0:
	tst.b ($d02a).w
	bne.s loc_2020e0
	tst.w ($f786).w
	beq.s loc_2020e0
	addq.w #$1,($f786).w
loc_2020e0:
	rts

sub_2020e2:
	tst.w ($f780).w
	beq.s loc_2020ec
	addq.w #$1,($f780).w
loc_2020ec:
	tst.w ($f782).w
	beq.s loc_2020f6
	addq.w #$1,($f782).w
loc_2020f6:
	rts
	.incbin 8440, 42

sub_202122:
	bsr.w sub_2022a2
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2022be

sub_20213e:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20214c
	addq.w #$2,a1

sub_20214c:
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

sub_20217a:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2021f6).l,a2
	moveq #$12,d7
loc_20218e:
	move.w (a2)+,(a0)
	dbf d7,loc_20218e
	move.w (dat_2021f8).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2021b4:
	move.w d0,(a1)
	dbf d7,loc_2021b4
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2021e6:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021e6
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2021f6:
	dc.b $80,$04
dat_2021f8:
	.incbin 8696, 36

sub_20221c:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20223e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20223e
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20226c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20226c
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20228a:
	move.l d0,(a1)+
	dbf d1,loc_20228a
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20229a:
	move.l d0,(a1)+
	dbf d1,loc_20229a
	rts

sub_2022a2:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2022b2:
	btst.b #$0,($a11100).l
	bne.s loc_2022b2
	rts

sub_2022be:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8908, 62

sub_20230a:
	tst.b ($f00a).w
	bne.s loc_202316
	move.b d0,($f00a).w
	rts
loc_202316:
	tst.b ($f00b).w
	bne.s loc_202322
	move.b d0,($f00b).w
	rts
loc_202322:
	tst.b ($f00c).w
	bne.s loc_20232c
	move.b d0,($f00c).w
loc_20232c:
	rts

sub_20232e:
	jsr (sub_2022a2).l
	tst.b ($f00a).w
	beq.s loc_202348
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202348:
	tst.b ($f00b).w
	beq.s loc_20235c
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20235c:
	tst.b ($f00c).w
	beq.s loc_202370
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202370:
	bra.w sub_2022be
	.incbin 9076, 32

sub_202394:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202456).l,a3
	lea ($c00000).l,a4
	bra.s loc_2023b0

sub_2023a6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20246c).l,a3
loc_2023b0:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2023be
	adda.w #$a,a3
loc_2023be:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202482
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2023de
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2023de:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20242a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202406
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202406:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202414:
	lsr.w #$4,d0
loc_202416:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202424
	jmp (a3)

sub_202420:
	moveq #$0,d4
	moveq #$8,d3
loc_202424:
	dbf d0,loc_202416
	bra.s sub_2023de
loc_20242a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202438
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202438:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202414
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202414
loc_202456:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202420
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202420
	rts
dat_20246c:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202420
	rts

sub_202482:
	move.b (a0)+,d0
loc_202484:
	cmpi.b #$ff,d0
	bne.s loc_20248c
	rts
loc_20248c:
	move.w d0,d7
loc_20248e:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202484
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
	bne.s loc_2024bc
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20248e
loc_2024bc:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2024c8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2024c8
	bra.s loc_20248e

sub_2024d4:
	movem.l a1-a2,-(a7)
	lea (dat_20fe42).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2024ec:
	tst.l (a2)
	beq.s loc_2024f4
	addq.w #$6,a2
	bra.s loc_2024ec
loc_2024f4:
	move.w (a1)+,d0
	bmi.s loc_202500
loc_2024f8:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2024f8
loc_202500:
	movem.l (a7)+,a1-a2
	rts
	movem.l a1-a2,-(a7)
	lea (dat_20fe42).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202532
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20252c
loc_202524:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202524
loc_20252c:
	movem.l (a7)+,a1-a2
	rts

sub_202532:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202538:
	clr.l (a2)+
	dbf d0,loc_202538
	rts

sub_202540:
	tst.l ($f680).w
	beq.s loc_202594
	tst.w ($f6f8).w
	bne.s loc_202594
	movea.l ($f680).w,a0
	lea (loc_202456).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202562
	adda.w #$a,a3
loc_202562:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202482
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
loc_202594:
	rts
loc_202596:
	tst.w ($f6f8).w
	beq.w loc_202634
loc_20259e:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2025d0

sub_2025b2:
	tst.w ($f6f8).w
	beq.s loc_202634
	tst.b ($f744).w
	bne.s loc_20259e
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2025d0:
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
loc_202604:
	movea.w #$8,a5
	bsr.w sub_202420
	subq.w #$1,($f6f8).w
	beq.s loc_202636
	subq.w #$1,($f6fa).w
	bne.s loc_202604
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202634:
	rts
loc_202636:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20263c:
	move.l $6(a0),(a0)+
	dbf d0,loc_20263c
	rts

sub_202646:
	lea (dat_20fe42).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202658:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202394
	dbf d1,loc_202658
	rts
	.incbin 9848, 560

sub_2028a8:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202904).l,a0
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
	bra.w loc_202930
dat_202904:
	dc.b $00,$04,$00,$00,$22,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_202910:
	.incbin 10512, 32
loc_202930:
	tst.b ($ff1522).l
	beq.s loc_202950
	jsr (sub_2069b8).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20294e
	moveq #$0,d0
loc_20294e:
	bra.s loc_20298c
loc_202950:
	lea (dat_2029c8).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202972
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202910).l,a1
	adda.w d0,a1
	bra.s loc_20297c
loc_202972:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_20297c:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_20298c:
	subi.w #$a0,d1
	bcc.s loc_202994
	moveq #$0,d1
loc_202994:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_20299e
	move.w d2,d1
loc_20299e:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_2029aa
	moveq #$0,d0
loc_2029aa:
	cmp.w ($f72e).w,d0
	blt.s loc_2029b4
	move.w ($f72e).w,d0
loc_2029b4:
	move.w d0,($f704).w
	bsr.w sub_2029d0
	lea (dat_2029cc).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2029c8:
	dc.b $00,$30,$04,$ac
dat_2029cc:
	dc.b $7f,$7f,$7f,$7f

sub_2029d0:
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

sub_2029fc:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202a08
	rts
loc_202a08:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b70
	bsr.w sub_202c10
	bsr.w sub_203498
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e9a
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e66
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202e32
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202e02
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
	bsr.w sub_202ae8
	move.w ($f718).w,d0
	neg.w d0
	moveq #$13,d6
loc_202aac:
	move.w d0,(a1)+
	dbf d6,loc_202aac
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202aba:
	move.w d0,(a1)+
	dbf d6,loc_202aba
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202b2e
dat_202ade:
	dc.b $05,$03,$03,$02,$02,$01,$01,$01
	dc.b $01,$01

sub_202ae8:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$9,d6
	adda.w #$3c,a1
loc_202b00:
	move.b d3,d0
	jsr (sub_20080e).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202ade(pc,d6.w),d1
loc_202b1c:
	move.w d5,-(a1)
	dbf d1,loc_202b1c
	addq.b #$6,d3
	dbf d6,loc_202b00
	adda.w #$3c,a1
	rts
loc_202b2e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202b3c(pc,d2.w)
loc_202b3a:
	move.w (a2)+,d0
loc_202b3c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202b3a
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
	dbf d1,loc_202b3a
	rts

sub_202b70:
	move.w ($f700).w,d4
	bsr.s sub_202ba4
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ba2
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b9c
	bset.b #$2,($f754).w
	rts
loc_202b9c:
	bset.b #$3,($f754).w
loc_202ba2:
	rts

sub_202ba4:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202bb6
	bcs.s loc_202be6
	bra.s loc_202bbc
loc_202bb6:
	clr.w ($f73a).w
	rts
loc_202bbc:
	cmpi.w #$10,d0
	blt.s loc_202bc6
	move.w #$10,d0
loc_202bc6:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202bd4
	move.w ($f72a).w,d0
loc_202bd4:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202be6:
	cmpi.w #$fff0,d0
	bge.s loc_202bf0
	move.w #$fff0,d0
loc_202bf0:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202bd4
	move.w ($f728).w,d0
	bra.s loc_202bd4
	.incbin 11264, 16

sub_202c10:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202c24
	subq.w #$5,d0
loc_202c24:
	btst.b #$1,$22(a6)
	beq.s loc_202c44
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c90
	subi.w #$40,d0
	bcc.s loc_202c90
	tst.b ($f75c).w
	bne.s loc_202ca2
	bra.s loc_202c50
loc_202c44:
	sub.w ($f73e).w,d0
	bne.s loc_202c56
	tst.b ($f75c).w
	bne.s loc_202ca2
loc_202c50:
	clr.w ($f73c).w
	rts
loc_202c56:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c7e
	move.w $14(a6),d1
	bpl.s loc_202c66
	neg.w d1
loc_202c66:
	cmpi.w #$800,d1
	bcc.s loc_202c90
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202cf0
	cmpi.w #$fffa,d0
	blt.s loc_202cba
	bra.s loc_202ca8
loc_202c7e:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202cf0
	cmpi.w #$fffe,d0
	blt.s loc_202cba
	bra.s loc_202ca8
loc_202c90:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202cf0
	cmpi.w #$fff0,d0
	blt.s loc_202cba
	bra.s loc_202ca8
loc_202ca2:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202ca8:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202cfa
	bra.w loc_202cc6
loc_202cba:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cc6:
	cmp.w ($f72c).w,d1
	bgt.s loc_202d1e
	cmpi.w #$ff00,d1
	bgt.s loc_202cea
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d1e
loc_202cea:
	move.w ($f72c).w,d1
	bra.s loc_202d1e
loc_202cf0:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202cfa:
	cmp.w ($f72e).w,d1
	blt.s loc_202d1e
	subi.w #$800,d1
	bcs.s loc_202d1a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202d1e
loc_202d1a:
	move.w ($f72e).w,d1
loc_202d1e:
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
	bne.s loc_202d60
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d5a
	bset.b #$0,($f754).w
	rts
loc_202d5a:
	bset.b #$1,($f754).w
loc_202d60:
	rts
	.incbin 11618, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e00
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202dfa
	bset.b #$4,($f756).w
	rts
loc_202dfa:
	bset.b #$5,($f756).w
loc_202e00:
	rts

sub_202e02:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202e30
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202e2a
	bset.b #$0,($f756).w
	rts
loc_202e2a:
	bset.b #$1,($f756).w
loc_202e30:
	rts

sub_202e32:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e64
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e5e
	bset.b d6,($f756).w
	bra.s loc_202e64
loc_202e5e:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e64:
	rts

sub_202e66:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e98
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e92
	bset.b d6,($f758).w
	bra.s loc_202e98
loc_202e92:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e98:
	rts

sub_202e9a:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ecc
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202ec6
	bset.b d6,($f75a).w
	bra.s loc_202ecc
loc_202ec6:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ecc:
	rts
	.incbin 11982, 44

sub_202efa:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202fb8
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20309e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2030a0
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202fb6
	bclr.b #$0,(a2)
	beq.s loc_202f6c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032cc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030a2
loc_202f6c:
	bclr.b #$1,(a2)
	beq.s loc_202f86
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032cc
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030a2
loc_202f86:
	bclr.b #$2,(a2)
	beq.s loc_202f9c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032cc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030f8
loc_202f9c:
	bclr.b #$3,(a2)
	beq.s loc_202fb6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2032cc
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030f8
loc_202fb6:
	rts

sub_202fb8:
	lea (dat_203384).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202fd4
	bclr.b #$1,(a2)
	beq.s loc_20301e
	move.w #$e0,d4
loc_202fd4:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20304e(pc,d0.w),a3
	beq.s loc_203006
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032cc
	movem.l (a7)+,d4-d5
	bsr.w sub_2030a2
	movea.l (a7)+,a0
	bra.s loc_20301e
loc_203006:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ce
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030ce
	movea.l (a7)+,a0
loc_20301e:
	tst.b (a2)
	bne.s loc_203024
	rts
loc_203024:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203038
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203038:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20305e
dat_20304e:
	.incbin 12366, 16
loc_20305e:
	moveq #$f,d6
	move.l #$800000,d7
loc_203066:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_203092
	btst.b d0,(a2)
	beq.s loc_203092
	add.w d0,d0
	movea.l dat_20304e(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031a4
	movem.l (a7)+,d4-d5
	bsr.w sub_2032cc
	bsr.w sub_203126
	movem.l (a7)+,d4-d5/a0
loc_203092:
	addi.w #$10,d4
	dbf d6,loc_203066
	clr.b (a2)
	rts

sub_20309e:
	rts

sub_2030a0:
	rts

sub_2030a2:
	moveq #$15,d6

sub_2030a4:
	move.l #$800000,d7
	move.l d0,d1
loc_2030ac:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031a4
	move.l d1,d0
	bsr.w sub_203126
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030ac
	rts

sub_2030ce:
	move.l #$800000,d7
	move.l d0,d1
loc_2030d6:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031a6
	move.l d1,d0
	bsr.w sub_203126
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2030d6
	rts

sub_2030f8:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203102:
	movem.l d4-d5,-(a7)
	bsr.w sub_2031a4
	move.l d1,d0
	bsr.w sub_203126
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203102
	rts

sub_203126:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203162
	btst.b #$3,(a0)
	bne.s loc_203142
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203142:
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
loc_203162:
	btst.b #$3,(a0)
	bne.s loc_203184
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
loc_203184:
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

sub_2031a4:
	add.w (a3),d5

sub_2031a6:
	add.w $4(a3),d4

sub_2031aa:
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
	beq.s loc_2031f4
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
loc_2031f4:
	rts
	.incbin 12790, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2031aa
	bne.s loc_20325a
	movem.l (a7)+,d3-d5
	bra.s loc_203284
loc_20325a:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_203288
	bne.s loc_203284
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2032d2
	bsr.w sub_203126
	movem.l (a7)+,d3-d5
loc_203284:
	movea.l (a7)+,a0
	rts

sub_203288:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2032c8
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2032c8
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2032c8
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2032c8
	moveq #$0,d0
	rts
loc_2032c8:
	moveq #$1,d0
	rts

sub_2032cc:
	add.w (a3),d5

sub_2032ce:
	add.w $4(a3),d4

sub_2032d2:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13032, 28

sub_203304:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20332e
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203356

sub_20332e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203332:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2032cc
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2030a4
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203332
	rts
loc_203356:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20335a:
	movem.l d4-d6/a0,-(a7)
	lea (dat_203384).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2033c6
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_20335a
	rts
dat_203384:
	.incbin 13188, 50
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
	bsr.w sub_2032cc
	movem.l (a7)+,d4-d5
	bsr.w sub_2030a2
	bra.s loc_2033fc
loc_2033e8:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ce
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2030ce
loc_2033fc:
	rts

sub_2033fe:
	moveq #$0,d0
	lea (dat_20fe32).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023a6
	movea.l (a2)+,a0
	bsr.w sub_20344a
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20054c
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203448
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203448
	bsr.w sub_2024d4
loc_203448:
	rts

sub_20344a:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203454:
	move.l d0,(a3)+
	dbf d1,loc_203454
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20346a
	lea ($a040).w,a3
	moveq #$2,d1

sub_20346a:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236a4e).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203484:
	move.w d1,d0
	movea.l a3,a0
loc_203488:
	move.b (a1)+,(a0)+
	dbf d0,loc_203488
	lea $80(a3),a3
	dbf d2,loc_203484
	rts

sub_203498:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203512(pc,d0.w),d0
	jsr dat_203512(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2034be
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2034be:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034ec
	bcc.s loc_2034ee
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2034e2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2034e2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034ec:
	rts
loc_2034ee:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203506
	btst.b #$1,($d022).w
	beq.s loc_203506
	add.w d1,d1
	add.w d1,d1
loc_203506:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203512:
	.incbin 13586, 224
	btst.b #$4,($f7a7).w
	bne.s loc_203602
	move.w #$710,($f726).w
	rts
loc_203602:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_2037be
	bne.w loc_20364e
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_203632
	cmpi.w #$498,$c(a1)
	ble.s loc_20362c
	move.w #$5d0,d0
	bra.s loc_203636
loc_20362c:
	move.w #$3d0,d0
	bra.s loc_203636
loc_203632:
	move.w #$1d0,d0
loc_203636:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_203644
	neg.w d0
loc_203644:
	cmpi.w #$2,d0
	bgt.s loc_20364e
	move.w d1,($f72e).w
loc_20364e:
	rts
	.incbin 13904, 366

sub_2037be:
	cmp.w ($d008).w,d0
	ble.s loc_2037c8
	moveq #$0,d0
	rts
loc_2037c8:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_2037d4
	neg.w d1
loc_2037d4:
	cmpi.w #$4,d1
	bge.s loc_2037e0
	move.w ($f726).w,($f72e).w
loc_2037e0:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203800
	cmp.w ($f72a).w,d0
	ble.s loc_2037f8
	move.w ($f72a).w,d0
loc_2037f8:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203800:
	moveq #$1,d0
	rts

sub_203804:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20380c:
	move.b (a0),d0
	beq.s loc_203822
	add.w d0,d0
	add.w d0,d0
	lea (dat_203c26).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203822:
	lea $40(a0),a0
	dbf d7,loc_20380c
	rts

sub_20382c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_20386a
	bpl.s loc_20385c
	btst.b #$1,$2c(a0)
	beq.s loc_20385c
	cmpi.w #$f800,$12(a0)
	bcs.s loc_20386a
loc_20385c:
	btst.b #$2,$2c(a0)
	bne.s loc_20386a
	addi.w #$38,$12(a0)
loc_20386a:
	tst.w $12(a0)
	bmi.s loc_20387e
	cmpi.w #$1000,$12(a0)
	bcs.s loc_20387e
	move.w #$1000,$12(a0)
loc_20387e:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_20388e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2038ca
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2038ca
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2038c8
	neg.w d1
loc_2038c8:
	add.w d1,d0
loc_2038ca:
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

sub_2038e4:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203954
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203970
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203970
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_20392e
	cmpi.w #$800,d3
	bcs.s loc_203940
	subi.w #$800,d3
	bra.s loc_203940
loc_20392e:
	cmpi.w #$700,($f704).w
	bcs.s loc_203940
	cmpi.w #$100,d3
	bcc.s loc_203940
	addi.w #$800,d3
loc_203940:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203970
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203970
loc_203954:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203970
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203970:
	rts
	.incbin 14706, 30

sub_203990:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203996:
	move.l d1,(a1)+
	dbf d0,loc_203996
	rts
dat_20399e:
	.incbin 14750, 16

sub_2039ae:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2039ba:
	tst.w (a4)
	beq.w loc_203a7a
	moveq #$2,d6
loc_2039c2:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a72
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203a28
	movea.l dat_20399e(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203a0c
	cmpi.w #$800,d2
	bcs.s loc_203a1e
	subi.w #$800,d2
	bra.s loc_203a1e
loc_203a0c:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203a1e
	cmpi.w #$100,d2
	bcc.s loc_203a1e
	addi.w #$800,d2
loc_203a1e:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a4a
loc_203a28:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a4a
	.incbin 14898, 24
loc_203a4a:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a68
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a6c
loc_203a68:
	bsr.w sub_203a9c
loc_203a6c:
	bset.b #$7,$1(a0)
loc_203a72:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2039c2
loc_203a7a:
	lea $80(a4),a4
	dbf d7,loc_2039ba
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a94
	move.l #$0,(a2)
	rts
loc_203a94:
	move.b #$0,-$5(a2)
	rts

sub_203a9c:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203ae2
	btst.l #$1,d4
	bne.w loc_203b30
loc_203aae:
	cmpi.b #$50,d5
	beq.s loc_203ae0
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
	bne.s loc_203ada
	addq.w #$1,d0
loc_203ada:
	move.w d0,(a2)+
	dbf d1,loc_203aae
loc_203ae0:
	rts
loc_203ae2:
	btst.l #$1,d4
	bne.w loc_203b76
loc_203aea:
	cmpi.b #$50,d5
	beq.s loc_203b2e
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
	bne.s loc_203b28
	addq.w #$1,d0
loc_203b28:
	move.w d0,(a2)+
	dbf d1,loc_203aea
loc_203b2e:
	rts
loc_203b30:
	cmpi.b #$50,d5
	beq.s loc_203b74
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
	bne.s loc_203b6e
	addq.w #$1,d0
loc_203b6e:
	move.w d0,(a2)+
	dbf d1,loc_203b30
loc_203b74:
	rts
loc_203b76:
	cmpi.b #$50,d5
	beq.s loc_203bc8
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
	bne.s loc_203bc2
	addq.w #$1,d0
loc_203bc2:
	move.w d0,(a2)+
	dbf d1,loc_203b76
loc_203bc8:
	rts
	.incbin 15306, 92
dat_203c26:
	.incbin 15398, 246

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
	jsr (sub_207920).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_20230a).l
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
	jsr (sub_2038e4).l
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
	jsr (sub_201afe).l
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
	jsr (sub_201afe).l
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
	jmp (sub_20382c).l
loc_204662:
	bsr.w sub_204896
	bsr.w sub_204560
	bsr.w sub_2050fe
	bsr.w sub_205218
	bsr.w sub_20490c
	bsr.w sub_20508c
	bsr.w sub_205020
	jsr (sub_20388e).l
	bsr.w sub_200c0e
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
	jsr (sub_20382c).l
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
	jsr (sub_20388e).l
loc_204706:
	bsr.w sub_200c0e
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
	jsr (sub_20382c).l
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
	jsr (sub_20080e).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_200f7c).l
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
	jsr (sub_20230a).l
loc_204ad6:
	bra.w loc_204bf2
loc_204ada:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204afa
	move.w #$ab,d0
	jsr (sub_20230a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204b36
loc_204afa:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20230a).l
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
	jsr (sub_20230a).l
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
	jsr (sub_20080e).l
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
	jsr (sub_20230a).l
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
	jsr (sub_20230a).l
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
	jsr (sub_20230a).l
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
	jsr (sub_20230a).l
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
	jsr (sub_20080e).l
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
	jsr (sub_20080e).l
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
	jsr (sub_20230a).l
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
	jsr (sub_20080e).l
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
	jsr (sub_20080e).l
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
	jsr (sub_200aa6).l
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
	jsr (sub_20388e).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20559e
	subi.w #$20,$12(a0)
loc_20559e:
	bsr.w sub_2055b4
	bsr.w sub_205020
	bsr.w sub_20446a
	bsr.w sub_205824
	jmp (sub_2038e4).l

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
	jsr (sub_20382c).l
	bsr.w sub_20446a
	bsr.w sub_205824
	jmp (sub_2038e4).l

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
	jsr (sub_207920).l
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
	bsr.w sub_20770e
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
	jsr (sub_200aa6).l
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
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_205fdc:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$239fb8,$4(a0)
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
	jsr (sub_207920).l
	bne.s loc_20609a
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_206044
	addq.b #$2,$24(a1)
loc_206044:
	move.l #$239fb8,$4(a1)
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
	jmp (sub_203990).l
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
	jmp (sub_20230a).l
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
	jsr (sub_20080e).l
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
	dc.b $43,$f9,$00,$23,$9f,$b2,$60,$00
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
	jsr (sub_207920).l
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
	move.l #$239e20,$4(a0)
	bsr.s sub_2061a8
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_20623e
	move.w #$100,$1c(a0)
loc_20623e:
	lea (dat_239e0c).l,a1
	bsr.w sub_205e6e
	jmp (sub_2038e4).l
	tst.b $25(a0)
	beq.s loc_20625a
	jmp (sub_203990).l
loc_20625a:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20627c(pc,d0.w),d0
	jsr dat_20627c(pc,d0.w)
	jmp (sub_2038e4).l
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
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$239c34,$4(a0)
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
	jmp (sub_203990).l
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
	lea (dat_239b0c).l,a1
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
	jmp (sub_2038e4).l

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
	jsr (sub_2038e4).l
loc_206762:
	jmp (loc_207956).l
dat_206768:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$239c34,$4(a0)
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
	jsr (sub_201164).l
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
	jsr (sub_201164).l
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
	jsr (sub_201164).l
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

sub_206bf0:
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
	jsr (sub_201164).l
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
	jsr (sub_2012d4).l
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
	jsr (sub_2012d4).l
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
	jsr (sub_2012d4).l
	move.b #$c0,d2
	bra.w loc_206bde
dat_206cb6:
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
	jsr (sub_201164).l
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
	jsr (sub_201164).l
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
	jsr (sub_201164).l
	move.b #$80,d2
	bra.w loc_206bde

sub_206d82:
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
	jsr (sub_201164).l
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
	jsr (sub_2012d4).l
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
	jsr (sub_2012d4).l
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
	jsr (sub_2012d4).l
	move.b #$40,d2
	bra.w loc_206bde
loc_206e58:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012d4).l
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
	bsr.w sub_20b212
	move.w #$96,d0
	jsr (sub_20230a).l
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
	jsr (sub_207920).l
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
	jsr (sub_20230a).l
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
	jsr (sub_200f7c).l
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
	bsr.w sub_207920
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
	jmp (sub_2038e4).l
dat_207474:
	dc.b $00,$00,$40,$00
dat_207478:
	.incbin 29816, 662

sub_20770e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20771c:
	clr.l (a2)+
	dbf d0,loc_20771c
	rts

sub_207724:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207732(pc,d0.w),d0
	jmp dat_207732(pc,d0.w)
dat_207732:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2079d2).l,a0
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
	bcc.s loc_207770
	moveq #$0,d6
loc_207770:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207778:
	cmp.w (a0),d6
	bls.s loc_20778a
	tst.b $4(a0)
	bpl.s loc_207786
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207786:
	addq.w #$8,a0
	bra.s loc_207778
loc_20778a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077aa
loc_207798:
	cmp.w (a0),d6
	bls.s loc_2077aa
	tst.b $4(a0)
	bpl.s loc_2077a6
	addq.b #$1,$1(a2)
loc_2077a6:
	addq.w #$8,a0
	bra.s loc_207798
loc_2077aa:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207894
	bge.s loc_20783a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207816
loc_2077e4:
	cmp.w -$8(a0),d6
	bge.s loc_207816
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077fa
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077fa:
	bsr.w sub_2078b8
	bne.s loc_207804
	subq.w #$8,a0
	bra.s loc_2077e4
loc_207804:
	tst.b $4(a0)
	bpl.s loc_207814
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207814:
	addq.w #$8,a0
loc_207816:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207822:
	cmp.w -$8(a0),d6
	bgt.s loc_207834
	tst.b -$4(a0)
	bpl.s loc_207830
	subq.b #$1,(a2)
loc_207830:
	subq.w #$8,a0
	bra.s loc_207822
loc_207834:
	move.l a0,($f770).w
	rts
loc_20783a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20784e:
	cmp.w (a0),d6
	bls.s loc_207870
	tst.b $4(a0)
	bpl.s loc_20785c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20785c:
	bsr.w sub_2078b8
	beq.s loc_20784e
	tst.b $4(a0)
	bpl.s loc_207870
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207870:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207890
loc_20787e:
	cmp.w (a0),d6
	bls.s loc_207890
	tst.b $4(a0)
	bpl.s loc_20788c
	addq.b #$1,$1(a2)
loc_20788c:
	addq.w #$8,a0
	bra.s loc_20787e
loc_207890:
	move.l a0,($f774).w
loc_207894:
	rts

sub_207896:
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

sub_2078b8:
	bsr.s sub_207896
	beq.s loc_2078ca
	tst.b $4(a0)
	bpl.s loc_2078d0
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078d0
loc_2078ca:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078d0:
	bsr.w sub_207920
	bne.s loc_20791e
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
	bpl.s loc_207900
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207900:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207912
	nop
	nop
	nop
	nop
loc_207912:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20791e:
	rts

sub_207920:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207928:
	tst.b (a1)
	beq.s loc_207934
	lea $40(a1),a1
	dbf d0,loc_207928
loc_207934:
	rts

sub_207936:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207954
loc_207948:
	tst.b (a1)
	beq.s loc_207954
	lea $40(a1),a1
	dbf d0,loc_207948
loc_207954:
	rts
loc_207956:
	move.w $8(a0),d0
loc_20795a:
	tst.b $1(a0)
	bmi.s loc_2079c4
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2079c4
loc_207978:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2079ba
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2079b2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2079aa
	moveq #$0,d1
	bra.s loc_2079b2
loc_2079aa:
	cmpi.w #$3,d1
	bcs.s loc_2079b2
	moveq #$2,d1
loc_2079b2:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2079ba:
	jsr (sub_203990).l
	moveq #$1,d0
	rts
loc_2079c4:
	btst.b #$7,($ff152e).l
	bne.s loc_207978
	moveq #$0,d0
	rts
dat_2079d2:
	.incbin 31186, 3976
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208974(pc,d0.w),d0
	jsr dat_208974(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_208974:
	dc.b $00,$0e,$00,$2c,$00,$7c,$00,$8c
	dc.b $00,$9c,$00,$e2,$01,$72
	ori.b #$4,$1(a0)
	move.w #$310,$2(a0)
	move.l #$208d94,$4(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $2a(a0)
	beq.s loc_2089ee
	subq.b #$1,$2a(a0)
	bne.s loc_2089ee
	jsr (sub_207920).l
	bne.s loc_2089ee
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
loc_2089ee:
	rts
	bsr.w sub_208ca0
	lea (dat_208d18).l,a1
	jmp (sub_205e6e).l
	.incbin 35328, 576
loc_208c40:
	movea.l a1,a2
	jsr (sub_207920).l
	bne.s loc_208c9e
	bset.b #$0,$2c(a2)
	bset.b #$6,$2c(a2)
	move.l a2,$2a(a1)
	move.b #$5,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
	move.w #$2e1,$2(a1)
	move.l #$208d94,$4(a1)
	move.b #$18,$17(a1)
	move.b #$18,$19(a1)
	move.b #$18,$16(a1)
	move.b #$8,$1a(a1)
	move.b #$8,$24(a1)
loc_208c9e:
	rts

sub_208ca0:
	cmpi.b #$1,$1c(a0)
	bne.s loc_208cb8
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208cb8
	bsr.s sub_208cba
	bne.s loc_208c40
loc_208cb8:
	rts

sub_208cba:
	tst.b ($ff151f).l
	bne.s loc_208d14
	tst.b ($ff1521).l
	bne.s loc_208d14
	cmpi.b #$4,$24(a1)
	bcc.s loc_208d14
	tst.b $2c(a1)
	bne.s loc_208d14
	move.b $17(a1),d1
	ext.w d1
	addi.w #$10,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_208d14
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208d14
	move.b $16(a1),d1
	ext.w d1
	addi.w #$20,d1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_208d14
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_208d14
	moveq #$1,d0
	rts
loc_208d14:
	moveq #$0,d0
	rts
dat_208d18:
	.incbin 36120, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208e6c(pc,d0.w),d0
	jsr dat_208e6c(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_208e6c:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$209000,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_207936).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$209000,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_209814).l
	beq.s loc_208f10
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208f10:
	rts
	.incbin 36626, 190
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_208ffe
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (sub_20981a).l
loc_208ffe:
	rts
	.incbin 36864, 32
	btst.b #$7,($ff152e).l
	beq.s loc_20906a
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20906a
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
	bpl.s loc_20905a
	moveq #$0,d1
	bra.s loc_209062
loc_20905a:
	cmpi.w #$3,d1
	bcs.s loc_209062
	moveq #$2,d1
loc_209062:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20906a:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_20909a
	cmpi.b #$6,$24(a6)
	bcc.s loc_20909a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20909c(pc,d0.w),d1
	jsr dat_20909c(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_20909a
	jmp (loc_207956).l
loc_20909a:
	rts
dat_20909c:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$239c34,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_209332(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_2091b2
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_2091b2
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_2091b2
	tst.b $2c(a6)
	bne.w loc_2091b2
	cmpi.b #$4,$24(a6)
	bne.s loc_20913a
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_20913a:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_209150
	bset.b #$6,$2c(a6)
loc_209150:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_20916e
	bset.b #$6,$1(a6)
loc_20916e:
	cmpi.b #$4,$24(a6)
	bne.s loc_20917a
	subq.b #$2,$24(a6)
loc_20917a:
	move.w #$0,$10(a6)
	move.w #$0,$12(a6)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a6)
	bset.b #$1,$22(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	clr.b $32(a0)
	move.w #$91,d0
	jsr (sub_20230a).l
loc_2091b2:
	rts
	move.b #$2,$1c(a6)
	bsr.w sub_20928a
	addq.b #$2,$24(a0)
	move.w #$91,d0
	jsr (sub_20230a).l
	rts
	move.b #$2,$1c(a6)
	addq.l #$4,a7
	subq.b #$1,$2e(a0)
	bpl.s loc_20921e
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
	bcs.s loc_209206
	moveq #$0,d1
	bra.s loc_209274
loc_209206:
	move.b d1,$3a(a0)
loc_20920a:
	movea.l $3c(a0),a2
	move.w $0(a2,d1.w),$36(a0)
	move.w $2(a2,d1.w),$38(a0)
	bra.w sub_20928a
loc_20921e:
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
	bmi.s loc_209254
loc_209252:
	rts
loc_209254:
	move.b ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_209252
	andi.w #$7fff,d1
	add.b d1,d1
	move.b d1,d0
	add.b d0,d0
	add.b d0,d1
	add.b $3b(a0),d1
	move.b d1,$3a(a0)
	bra.s loc_20920a
loc_209274:
	andi.w #$7ff,$c(a6)
	clr.b $24(a0)
	clr.b $2c(a6)
	move.w #$2,$24(a0)
	rts

sub_20928a:
	moveq #$0,d0
	move.w $14(a6),d2
	move.w $14(a6),d3
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	bge.s loc_2092a6
	neg.w d0
	neg.w d2
loc_2092a6:
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	bge.s loc_2092ba
	neg.w d1
	neg.w d3
loc_2092ba:
	cmp.w d0,d1
	bcs.s loc_2092f8
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
	beq.s loc_2092e4
	swap d0
	divs.w d1,d0
loc_2092e4:
	move.w d0,$10(a6)
	move.w d3,$12(a6)
	tst.w d1
	bpl.s loc_2092f2
	neg.w d1
loc_2092f2:
	move.w d1,$2e(a0)
	rts
loc_2092f8:
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
	beq.s loc_20931e
	swap d1
	divs.w d0,d1
loc_20931e:
	move.w d1,$12(a6)
	move.w d2,$10(a6)
	tst.w d0
	bpl.s loc_20932c
	neg.w d0
loc_20932c:
	move.w d0,$2e(a0)
	rts
dat_209332:
	.incbin 37682, 922

sub_2096cc:
	btst.b #$3,$22(a0)
	beq.s loc_20973c
	btst.b #$3,$22(a1)
	beq.s loc_20973c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20973c
	tst.b $2a(a1)
	beq.s loc_2096fe
	move.w #$ab,d0
	jsr (sub_20230a).l
loc_2096fe:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20972a
	cmpi.b #$17,$1c(a1)
	beq.s loc_20972a
	bclr.b #$0,$2c(a1)
loc_20972a:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20973c
	bclr.b #$1,$22(a1)
loc_20973c:
	rts

sub_20973e:
	cmpi.b #$4,$24(a1)
	bne.s loc_209750
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209750:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2097b0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209772
	bclr.b #$3,$22(a0)
	bra.w sub_2096cc
loc_209772:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2097b0
	tst.b ($ff195b).l
	beq.s loc_20979a
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2097aa
loc_20979a:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2097aa:
	move.b #$0,$1c(a1)
loc_2097b0:
	bset.b #$3,$22(a1)
	beq.s loc_2097d2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20980a
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2097d2:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2097fe
	cmpi.b #$2,$24(a0)
	beq.s loc_209804
loc_2097fe:
	move.w $10(a1),$14(a1)
loc_209804:
	bclr.b #$1,$22(a1)
loc_20980a:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_209814:
	move.b #$1,$25(a0)

sub_20981a:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209ace
	btst.b #$6,$2c(a1)
	bne.w loc_209ace
	cmpi.b #$6,$24(a1)
	bcc.w loc_209ace
	tst.b $0(a1)
	beq.w loc_209ace
	tst.b $1(a0)
	bpl.w loc_209ace
	tst.b ($ff1906).l
	bne.w loc_209ace
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209ace
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209ace
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209888
	btst.b #$3,$22(a0)
	bne.s loc_20989a
	bra.w loc_209ace
loc_209888:
	cmpi.b #$1,$25(a0)
	bne.s loc_20989a
	tst.w $12(a1)
	beq.s loc_20989a
	bmi.w loc_209ace
loc_20989a:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209ace
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209ace
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2098d0
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2098d0:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2098de
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2098de:
	cmp.w d4,d5
	bcs.w loc_209972
	cmpi.b #$1,$25(a0)
	beq.w loc_209ace
	cmpi.b #$a,$0(a0)
	bne.s loc_209900
	btst.b #$1,$22(a1)
	bne.w loc_209ace
loc_209900:
	cmpi.b #$4,d5
	bls.w loc_209ace
	bsr.w sub_209b1e
	move.l d0,-(a7)
	bsr.w sub_2096cc
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20992a
	tst.w $10(a1)
	beq.s loc_20995a
	bpl.s loc_209932
	bra.s loc_20995a
loc_20992a:
	tst.w $10(a1)
	beq.s loc_20995a
	bpl.s loc_20995a
loc_209932:
	bsr.w sub_209ade
	btst.b #$1,$22(a1)
	bne.s loc_209950
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209950:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20995a:
	bsr.w sub_209b94
	bsr.w sub_209ade
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209972:
	cmpi.b #$19,$0(a0)
	bne.s loc_209984
	btst.b #$2,$22(a1)
	bne.w loc_209ace
loc_209984:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20999a
	bmi.w loc_209a6a
loc_20999a:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2099ac
	tst.w $12(a1)
	beq.s loc_2099ac
	bmi.w loc_209ace
loc_2099ac:
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
	beq.s loc_2099f8
	bpl.s loc_2099d8
	neg.b d0
loc_2099d8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206aac).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2099f8
	tst.w $10(a0)
	bpl.s loc_2099f4
	neg.w d1
loc_2099f4:
	add.w d1,$8(a1)
loc_2099f8:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209a62
	tst.w $12(a0)
	bmi.s loc_209a36
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b3e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a36
	add.w d1,$c(a1)
	bra.w loc_209ace
loc_209a36:
	tst.w $12(a0)
	bpl.s loc_209a62
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d56).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209a62
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,a0-a1
	bra.s loc_209ace
loc_209a62:
	bsr.w sub_20973e
	moveq #$1,d0
	rts
loc_209a6a:
	cmpi.b #$1,$25(a0)
	beq.s loc_209ace
	cmpi.b #$9,$0(a0)
	beq.s loc_209ace
	cmpi.b #$a,$0(a0)
	bne.s loc_209a94
	cmpi.b #$2,$25(a0)
	beq.s loc_209ab4
	btst.b #$1,$1(a0)
	bne.s loc_209ab4
	bra.s loc_209ace
loc_209a94:
	btst.b #$1,$22(a1)
	bne.s loc_209ab4
	tst.w $12(a0)
	beq.s loc_209ab4
	bmi.s loc_209ab4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,a0-a1
loc_209ab4:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209b94
	bsr.w sub_2096cc
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209ace:
	bsr.w sub_209b94
	bsr.w sub_2096cc
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209ade:
	tst.w $10(a0)
	beq.s loc_209b1c
	cmpi.b #$a,$0(a0)
	beq.s loc_209b1c
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209af8
	neg.b d0
loc_209af8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206aac).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209b1c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,a0-a1
loc_209b1c:
	rts

sub_209b1e:
	cmpi.b #$a,$0(a0)
	bne.s loc_209b2e
	move.b #$0,$20(a1)
	rts
loc_209b2e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209b82
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209b92
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209b50
	tst.w $10(a2)
	beq.s loc_209b92
loc_209b50:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209b62
	cmp.w $8(a2),d1
	bcs.s loc_209b92
	bra.s loc_209b68
loc_209b62:
	cmp.w $8(a2),d1
	bcc.s loc_209b92
loc_209b68:
	cmpi.b #$15,$0(a0)
	beq.s loc_209b92
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207130).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209b82:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209b92:
	rts

sub_209b94:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209bae
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209bae
	move.b #$0,$20(a1)
loc_209bae:
	rts
	.incbin 39856, 374
loc_209d26:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d34(pc,d0.w),d0
	jmp dat_209d34(pc,d0.w)
dat_209d34:
	.incbin 40244, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209d26
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209d8a
	tst.b $1(a0)
	bpl.s loc_209d92
loc_209d8a:
	move.w dat_209de4(pc,d0.w),d1
	jsr dat_209de4(pc,d1.w)
loc_209d92:
	bsr.w sub_2038e4
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209dc4
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209dc4:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203990
	rts
dat_209de4:
	.incbin 40420, 26
	addq.b #$2,$24(a0)
	move.l #$20a166,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209e54
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20a16c,$4(a0)
	bra.s loc_209e96
loc_209e54:
	btst.l #$3,d0
	beq.s loc_209e82
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20a1b6,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ca2a).l
	move.l (a7)+,d0
	bra.s loc_209e96
loc_209e82:
	btst.b #$1,$1(a0)
	beq.s loc_209e96
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209e96:
	btst.l #$1,d0
	beq.s loc_209ea2
	bset.b #$5,$2(a0)
loc_209ea2:
	andi.w #$2,d0
	move.w dat_209eae(pc,d0.w),$30(a0)
	rts
dat_209eae:
	dc.b $f0,$00,$f6,$00

sub_209eb2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20981a).l
	tst.b $1(a0)
	bpl.s loc_209ece
	lea ($d000).w,a1
	bsr.s sub_209eb2
	bne.s loc_209ed0
loc_209ece:
	rts
loc_209ed0:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20230a).l
	lea (dat_20a158).l,a1
	bra.w sub_205e6e
	.incbin 40716, 24

sub_209f24:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20981a).l
	tst.b $1(a0)
	bpl.s loc_209f46
	lea ($d000).w,a1
	bsr.s sub_209f24
	btst.b #$5,$22(a0)
	bne.s loc_209f48
loc_209f46:
	rts
loc_209f48:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209f76
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209f76:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209f90
	move.b #$0,$1c(a1)
loc_209f90:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20230a).l
	.incbin 40874, 430
dat_20a158:
	.incbin 41304, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a252(pc,d0.w),d1
	jmp dat_20a252(pc,d1.w)
dat_20a252:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20a25c:
	.incbin 41564, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a2b4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a2ac
	moveq #$0,d1
	bra.s loc_20a2b4
loc_20a2ac:
	cmpi.w #$3,d1
	bcs.s loc_20a2b4
	moveq #$2,d1
loc_20a2b4:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20a2d0
	moveq #$6,d1
loc_20a2d0:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20a25c).l,a1
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
	beq.s loc_20a320
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a318
	moveq #$0,d0
	bra.s loc_20a320
loc_20a318:
	cmpi.w #$3,d0
	bcs.s loc_20a320
	moveq #$2,d0
loc_20a320:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a3ee
	dbf d0,loc_20a320
	bclr.b #$7,(a2)
	bra.s loc_20a376
loc_20a332:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a35e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a356
	moveq #$0,d0
	bra.s loc_20a35e
loc_20a356:
	cmpi.w #$3,d0
	bcs.s loc_20a35e
	moveq #$2,d0
loc_20a35e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a3ee
	dbf d0,loc_20a35e
	bclr.b #$7,(a2)
	bsr.w sub_207936
	bne.w loc_20a3fa
loc_20a376:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a6c0,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3cc
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a3cc
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a3cc:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a3ee:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20a332
loc_20a3fa:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a420
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a418
	moveq #$0,d0
	bra.s loc_20a420
loc_20a418:
	cmpi.w #$3,d0
	bcs.s loc_20a420
	moveq #$2,d0
loc_20a420:
	lea $1(a2),a3
loc_20a424:
	btst.b #$0,-(a3)
	bne.w sub_203990
	dbf d0,loc_20a424
	tst.b $1(a0)
	bmi.s loc_20a454
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a4ce
loc_20a454:
	tst.w ($ff190e).l
	bne.s loc_20a464
	move.b ($ff1913).l,$1a(a0)
loc_20a464:
	bra.w sub_2038e4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a4d2
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a4b4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a4ac
	moveq #$0,d1
	bra.s loc_20a4b4
loc_20a4ac:
	cmpi.w #$3,d1
	bcs.s loc_20a4b4
	moveq #$2,d1
loc_20a4b4:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a6b8).l,a1
	bsr.w sub_205e6e
	bra.w sub_2038e4
loc_20a4ce:
	bra.w sub_203990

sub_20a4d2:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a522
	bset.b #$1,($ff150d).l
	beq.s loc_20a50c
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a522
	bset.b #$2,($ff150d).l
	bne.s loc_20a522
loc_20a50c:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e2e).l
loc_20a522:
	jmp (sub_20230a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a536(pc,d0.w),d1
	jmp dat_20a536(pc,d1.w)
dat_20a536:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a552
	move.w d0,d5
loc_20a552:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a562
loc_20a55a:
	bsr.w sub_207920
	bne.w loc_20a618
loc_20a562:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a6c0,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5c0
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a5c0
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a5c0:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a608
	move.w d4,d0
	jsr (sub_20080e).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a608
	subi.w #$80,d4
	bcc.s loc_20a608
	move.w #$288,d4
loc_20a608:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a55a
loc_20a618:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20230a).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_20388e
	addi.w #$18,$12(a0)
	bmi.s loc_20a678
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a678
	jsr (sub_206bec).l
	tst.w d1
	bpl.s loc_20a678
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a678:
	tst.b ($ff1916).l
	beq.s loc_20a6b4
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a6b4
	bra.w sub_2038e4
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a4d2
	lea (dat_20a6b8).l,a1
	bsr.w sub_205e6e
	bra.w sub_2038e4
loc_20a6b4:
	bra.w sub_203990
dat_20a6b8:
	.incbin 42680, 402
loc_20a84a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a878(pc,d0.w),d0
	jsr dat_20a878(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a876
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a870
	btst.b #$0,($ff1505).l
	bne.s loc_20a876
loc_20a870:
	jmp (sub_2038e4).l
loc_20a876:
	rts
dat_20a878:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20ae52,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a8ac
	move.b #$13,$1a(a0)
loc_20a8ac:
	rts
loc_20a8ae:
	tst.b ($ff0f01).l
	beq.s loc_20a8bc
	jmp (sub_203990).l
loc_20a8bc:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a84a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8e0(pc,d0.w),d0
	jsr dat_20a8e0(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20a8e0:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae52,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a92e
	tst.b $29(a0)
	bne.s loc_20a92e
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a92e:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a9fa
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a956
	addq.b #$2,$1a(a0)
loc_20a956:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a96a
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a96a:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a9d0
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a99c
	tst.b $29(a0)
	beq.s loc_20a994
	tst.b ($ff1956).l
	beq.s loc_20a9d0
	bra.s loc_20a99c
loc_20a994:
	tst.b ($ff1956).l
	bne.s loc_20a9d0
loc_20a99c:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a9fa
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a9ca
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a9ca:
	jsr (sub_205e2e).l
loc_20a9d0:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a9e2
	lea (dat_20adca).l,a1
	bra.w sub_205e6e
loc_20a9e2:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a9f8
	addq.b #$2,$1a(a0)
loc_20a9f8:
	rts

sub_20a9fa:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20aa32
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20aa2a
	moveq #$0,d1
	bra.s loc_20aa32
loc_20aa2a:
	cmpi.w #$3,d1
	bcs.s loc_20aa32
	moveq #$2,d1
loc_20aa32:
	add.w d1,d0
	rts

sub_20aa36:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aa58
	tst.b ($ff1956).l
	beq.s loc_20aa50
	tst.b $29(a0)
	bne.s loc_20aa58
	rts
loc_20aa50:
	tst.b $29(a0)
	beq.s loc_20aa58
	rts
loc_20aa58:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20981a).l
	tst.b $28(a0)
	bne.s loc_20aa7a
	tst.b ($ff0f01).l
	beq.s loc_20aa7a
	jmp (loc_207956).l
loc_20aa7a:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a8ae
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa92(pc,d0.w),d1
	jmp dat_20aa92(pc,d1.w)
dat_20aa92:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20ae52,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20aadc
	tst.b $29(a0)
	bne.s loc_20aadc
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20aadc:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a9fa
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20ab08
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20ab08:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20ab62
	move.b $25(a0),d0
	beq.s loc_20ab42
	bsr.w sub_20382c
	jsr (sub_206bec).l
	tst.w d1
	bpl.w loc_20ab50
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20ab50
loc_20ab42:
	tst.b $1(a0)
	bpl.s loc_20ab50
	lea ($d000).w,a1
	bsr.w sub_20aa36
loc_20ab50:
	tst.w ($ff190e).l
	bne.s loc_20ab62
	lea (dat_20adca).l,a1
	bsr.w sub_205e6e
loc_20ab62:
	bsr.w sub_2038e4
	jmp (loc_207956).l
	.incbin 43884, 606
dat_20adca:
	.incbin 44490, 586
loc_20b014:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b028(pc,d0.w),d0
	jsr dat_20b028(pc,d0.w)
	jmp (sub_2038e4).l
dat_20b028:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20b068,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20b062
	jmp (sub_203990).l
loc_20b062:
	subq.w #$2,$c(a0)
	rts
	.incbin 45160, 82
	tst.b $28(a0)
	bmi.w loc_20b014
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b0d0(pc,d0.w),d0
	jmp dat_20b0d0(pc,d0.w)
dat_20b0d0:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20b16a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20b100
	move.b #$3,$1a(a0)
	bra.s loc_20b120
loc_20b100:
	tst.w ($ff1588).l
	beq.s loc_20b10e
	move.b #$2,$1a(a0)
loc_20b10e:
	tst.b $28(a0)
	beq.s loc_20b120
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20b120:
	tst.b $28(a0)
	bne.s loc_20b164
	tst.b $29(a0)
	beq.s loc_20b150
	tst.w ($ff1512).l
	beq.s loc_20b13c
	bclr.b #$5,$2(a0)
	bra.s loc_20b164
loc_20b13c:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20b164
	eori.b #$20,$2(a0)
	bra.s loc_20b164
loc_20b150:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20b164
	move.b #$2,$1a(a0)
loc_20b164:
	jmp (sub_2038e4).l
	.incbin 45418, 168

sub_20b212:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20b22e
	move.l d1,(a3)
loc_20b22e:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20b258
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205e2e).l
loc_20b258:
	rts
loc_20b25a:
	tst.w ($ff1588).l
	beq.s loc_20b2b0
	bsr.w sub_20b4ac
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
	lea (dat_20b60c).l,a2
	moveq #$2,d6
	bsr.w sub_20b664
	bra.w loc_20b30a
loc_20b2b0:
	tst.b ($ff1511).l
	beq.s loc_20b2d4
	bpl.s loc_20b2be
	bsr.w sub_20b456
loc_20b2be:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b546
loc_20b2d4:
	tst.b ($ff150f).l
	beq.s loc_20b30a
	bpl.s loc_20b2e2
	bsr.w sub_20b442
loc_20b2e2:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20b306
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20b306:
	bsr.w sub_20b53c
loc_20b30a:
	tst.w ($ff1588).l
	bne.w loc_20b3b6
	tst.b ($ff1510).l
	beq.w loc_20b3b6
	tst.w ($f63a).w
	bne.w loc_20b3b6
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b414
	tst.b ($f7cc).w
	bne.s loc_20b360
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b360
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20b360
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20b360
	move.b #$9,(a1)
loc_20b360:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b652
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b65c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b3b2
	move.w #$63,d1
loc_20b3b2:
	bsr.w sub_20b65c
loc_20b3b6:
	tst.b ($ff150e).l
	beq.s loc_20b3c8
	clr.b ($ff150e).l
	bsr.w sub_20b632
loc_20b3c8:
	tst.b ($f7d6).w
	beq.s loc_20b412
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b3e8
	move.l #$6d400001,d0
loc_20b3e8:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b4ca
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b408
	move.l #$6e800001,d0
loc_20b408:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b4ca
loc_20b412:
	rts
loc_20b414:
	btst.b #$7,($ff152e).l
	bne.s loc_20b440
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207130
	move.b #$1,($ff150c).l
loc_20b440:
	rts

sub_20b442:
	move.l #$73600002,($c00004).l
	lea dat_20b4a8(pc),a2
	move.w #$2,d2
	bra.s loc_20b472

sub_20b456:
	lea ($c00000).l,a6
	bsr.w sub_20b632
	move.l #$70600002,($c00004).l
	lea dat_20b4a0(pc),a2
	move.w #$6,d2
loc_20b472:
	lea (dat_2330bc).l,a1
loc_20b478:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b494
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b488:
	move.l (a3)+,(a6)
	dbf d1,loc_20b488
loc_20b48e:
	dbf d2,loc_20b478
	rts
loc_20b494:
	move.l #$0,(a6)
	dbf d1,loc_20b494
	bra.s loc_20b48e
dat_20b4a0:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b4a8:
	dc.b $ff,$ff,$00,$00

sub_20b4ac:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b628
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b628

sub_20b4ca:
	lea (dat_20b604).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b4da:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b4de:
	sub.l d3,d1
	bcs.s loc_20b4e6
	addq.w #$1,d2
	bra.s loc_20b4de
loc_20b4e6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b4f0
	move.w #$1,d4
loc_20b4f0:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b4fc
	tst.w d6
	bne.s loc_20b52e
loc_20b4fc:
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
loc_20b522:
	addi.l #$400000,d0
	dbf d6,loc_20b4da
	rts
loc_20b52e:
	moveq #$f,d5
loc_20b530:
	move.l #$0,(a6)
	dbf d5,loc_20b530
	bra.s loc_20b522

sub_20b53c:
	lea (dat_20b60c).l,a2
	moveq #$2,d6
	bra.s loc_20b54e

sub_20b546:
	lea (dat_20b600).l,a2
	moveq #$5,d6
loc_20b54e:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b556:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b55a:
	sub.l d3,d1
	bcs.s loc_20b562
	addq.w #$1,d2
	bra.s loc_20b55a
loc_20b562:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b56c
	move.w #$1,d4
loc_20b56c:
	tst.w d4
	beq.s loc_20b59a
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
loc_20b59a:
	addi.l #$400000,d0
	dbf d6,loc_20b556
	rts
	.incbin 46502, 90
dat_20b600:
	dc.b $00,$01,$86,$a0
dat_20b604:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b60c:
	dc.b $00,$00,$00,$64
dat_20b610:
	dc.b $00,$00,$00,$0a
dat_20b614:
	dc.b $00,$00,$00,$01
dat_20b618:
	.incbin 46616, 16

sub_20b628:
	moveq #$3,d6
	lea (dat_20b618).l,a2
	bra.s sub_20b664

sub_20b632:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b648
	moveq #$9,d1
loc_20b648:
	lea (dat_20b614).l,a2
	moveq #$0,d6
	bra.s sub_20b664

sub_20b652:
	lea (dat_20b614).l,a2
	moveq #$0,d6
	bra.s sub_20b664

sub_20b65c:
	lea (dat_20b610).l,a2
	moveq #$1,d6

sub_20b664:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b66c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b670:
	sub.l d3,d1
	bcs.s loc_20b678
	addq.w #$1,d2
	bra.s loc_20b670
loc_20b678:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b682
	move.w #$1,d4
loc_20b682:
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
	dbf d6,loc_20b66c
	rts
	.incbin 46776, 2910
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c224(pc,d0.w),d0
	jmp dat_20c224(pc,d0.w)
dat_20c224:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c922,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c8e2).l,a2
loc_20c272:
	jsr (sub_207920).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c922,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c2c4
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c2c4:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c272
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c2ec
	bge.s loc_20c2e2
	neg.w d0
loc_20c2e2:
	add.w d0,$a(a0)
	jmp (sub_2038e4).l
loc_20c2ec:
	addq.b #$4,$24(a0)
	jmp (sub_2038e4).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c310
	bge.s loc_20c306
	neg.w d0
loc_20c306:
	add.w d0,$8(a0)
	jmp (sub_2038e4).l
loc_20c310:
	addq.b #$4,$24(a0)
	jmp (sub_2038e4).l
	tst.b $1e(a0)
	beq.s loc_20c32a
	subq.b #$1,$1e(a0)
	jmp (sub_2038e4).l
loc_20c32a:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c344
	bge.s loc_20c33a
	neg.w d0
loc_20c33a:
	add.w d0,$a(a0)
	jmp (sub_2038e4).l
loc_20c344:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024d4).l
	tst.b $1e(a0)
	beq.s loc_20c366
	subq.b #$1,$1e(a0)
	jmp (sub_2038e4).l
loc_20c366:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c380
	bge.s loc_20c376
	neg.w d0
loc_20c376:
	add.w d0,$8(a0)
	jmp (sub_2038e4).l
loc_20c380:
	jmp (sub_203990).l
	tst.l ($f680).w
	bne.s loc_20c39a
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203990).l
loc_20c39a:
	rts
	.incbin 50076, 1350
dat_20c8e2:
	.incbin 51426, 328

sub_20ca2a:
	rts
	tst.b $28(a0)
	bmi.w loc_20cb64
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ca4e(pc,d0.w),d0
	jsr dat_20ca4e(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20ca4e:
	dc.b $00,$0e,$00,$5e
loc_20ca52:
	lea ($d000).w,a1
	jmp (sub_209814).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$340,$2(a0)
	move.l #$20cb8c,$4(a0)
	move.b #$28,$16(a0)
	move.b #$20,$19(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	jsr (sub_207920).l
	bne.s loc_20ca9c
	move.w #$ffe0,d0
	bsr.w sub_20cb2a
loc_20ca9c:
	jsr (sub_207920).l
	bne.s loc_20caac
	move.w #$20,d0
	bsr.w sub_20cb2a
loc_20caac:
	jsr sub_20cae2(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	tst.b $3c(a0)
	beq.s loc_20cacc
	tst.b $3a(a0)
	beq.s loc_20cade
loc_20cacc:
	cmpi.b #$21,$3b(a0)
	bcs.s loc_20cade
	lea ($d000).w,a1
	jmp (sub_2096cc).l
loc_20cade:
	jmp loc_20ca52(pc)

sub_20cae2:
	tst.b $3a(a0)
	beq.s loc_20caee
	subq.b #$1,$3a(a0)
	bne.s loc_20cb28
loc_20caee:
	tst.b $3c(a0)
	beq.s loc_20cb0a
	subq.b #$1,$3b(a0)
	bcc.s loc_20cb28
	clr.b $3b(a0)
	clr.b $3c(a0)
	move.b #$3c,$3a(a0)
	rts
loc_20cb0a:
	addq.b #$8,$3b(a0)
	cmpi.b #$50,$3b(a0)
	bcs.s loc_20cb28
	move.b #$50,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20cb28:
	rts

sub_20cb2a:
	move.b #$20,$0(a1)
	move.w a0,$34(a1)
	move.b #$ff,$28(a1)
	add.w $8(a0),d0
	move.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	ori.b #$4,$1(a1)
	move.l #$20cb8c,$4(a1)
	move.b #$28,$16(a1)
	move.b #$1,$1a(a1)
	rts
loc_20cb64:
	movea.w $34(a0),a1
	cmpi.b #$20,$0(a1)
	bne.s loc_20cb86
	move.w $c(a1),$c(a0)
	lea ($d000).w,a1
	jsr (sub_20981a).l
	jmp (sub_2038e4).l
loc_20cb86:
	jmp (sub_203990).l
	.incbin 52108, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbcc(pc,d0.w),d0
	jsr dat_20cbcc(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20cbcc:
	dc.b $00,$06,$00,$3a,$00,$bc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$6358,$2(a0)
	move.l #$20ce82,$4(a0)
	move.b #$10,$16(a0)
	move.b #$10,$19(a0)
	move.b $28(a0),$1a(a0)
	bsr.w sub_20ccf4
	tst.b $28(a0)
	beq.s loc_20cc5a
	bsr.w sub_20cce2
	tst.w $3a(a0)
	bne.s loc_20cc5c
	bsr.w sub_20cd38
	cmpi.b #$2,($ff152e).l
	bne.s loc_20cc2c
	tst.b ($ff156a).l
	bne.s loc_20cc5a
loc_20cc2c:
	tst.b ($ff1507).l
	bne.s loc_20cc3e
	move.w ($f704).w,d0
	cmpi.w #$400,d0
	bcc.s loc_20cc5a
loc_20cc3e:
	move.w #$168,d0
	move.b ($ff152e).l,d1
	beq.s loc_20cc56
	move.w #$1e0,d0
	subq.b #$1,d1
	beq.s loc_20cc56
	move.w #$f0,d0
loc_20cc56:
	move.w d0,$3a(a0)
loc_20cc5a:
	rts
loc_20cc5c:
	subq.w #$1,$3a(a0)
	bne.s loc_20cc5a
	addq.b #$2,$24(a0)
	move.w #$78,$3a(a0)
	move.w #$5a,$30(a0)
	clr.b $2e(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20cc88
	move.w #$b2,d0
	jsr (sub_20230a).l
loc_20cc88:
	bsr.w sub_20cce2
	tst.w $30(a0)
	beq.s loc_20cca6
	move.b $3c(a0),d0
	bsr.w sub_20ce5c
	subq.w #$1,$30(a0)
	beq.s loc_20cca2
	rts
loc_20cca2:
	bsr.w sub_20cd38
loc_20cca6:
	move.b $3c(a0),d0
	addq.b #$1,d0
	move.b d0,($ff195a).l
	moveq #$0,d0
	move.b $3c(a0),d0
	bsr.w sub_20cd80
	subq.w #$1,$3a(a0)
	bne.s loc_20cce0
	subq.b #$2,$24(a0)
	clr.b ($ff195a).l
	addq.b #$1,$3c(a0)
	cmpi.b #$3,$3c(a0)
	bcs.s loc_20cce0
	clr.b $3c(a0)
	clr.w $3e(a0)
loc_20cce0:
	rts

sub_20cce2:
	lea ($d000).w,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	rts

sub_20ccf4:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20ccfc:
	cmpi.b #$21,$0(a1)
	bne.s loc_20cd0a
	tst.b $28(a1)
	bne.s loc_20cd36
loc_20cd0a:
	lea $40(a1),a1
	dbf d0,loc_20ccfc
	jsr (sub_207920).l
	bne.s loc_20cd36
	move.b #$21,$0(a1)
	move.b #$1,$28(a1)
	lea ($d000).w,a2
	move.w $8(a2),$8(a1)
	move.w $c(a2),$c(a1)
loc_20cd36:
	rts

sub_20cd38:
	lea ($fb40).w,a3
	move.w #$626,d0
	move.w #$646,d2
	move.b ($ff152e).l,d1
	beq.s loc_20cd6e
	lea ($fb7a).w,a3
	move.w #$222,d0
	move.w #$680,d2
	subq.b #$1,d1
	beq.s loc_20cd6e
	move.w #$402,d0
	move.w #$246,d2
	tst.b ($ff156a).l
	beq.s loc_20cd6e
	rts
loc_20cd6e:
	lea ($fb64).w,a2
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d0,(a2)+
	move.w d2,(a3)+
	rts
dat_20cd7c:
	dc.b $00,$02,$04,$00

sub_20cd80:
	move.b dat_20cd7c(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	lea (dat_20ce28).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20cdaa
	lea (dat_20ce0e).l,a1
	subq.b #$1,d1
	beq.s loc_20cdaa
	lea (dat_20ce42).l,a1
loc_20cdaa:
	moveq #$0,d1
	move.b $3e(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3e(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20cdc8
	clr.b $3e(a0)
loc_20cdc8:
	lea ($fb40).w,a2
	lea (dat_20ce38).l,a1
	move.b ($ff152e).l,d1
	beq.s loc_20cdee
	lea ($fb7a).w,a2
	lea (dat_20ce1e).l,a1
	subq.b #$1,d1
	beq.s loc_20cdee
	lea (dat_20ce52).l,a1
loc_20cdee:
	moveq #$0,d1
	move.b $3f(a0),d1
	add.b d1,d1
	lea $0(a1,d1.w),a1
	move.w (a1)+,(a2)+
	addq.b #$1,$3f(a0)
	move.w (a1),d1
	cmpi.w #$ffff,d1
	bne.s loc_20ce0c
	clr.b $3f(a0)
loc_20ce0c:
	rts
dat_20ce0e:
	.incbin 52750, 16
dat_20ce1e:
	dc.b $0a,$60,$0a,$a0,$0a,$60,$0a,$a0
	dc.b $ff,$ff
dat_20ce28:
	.incbin 52776, 16
dat_20ce38:
	dc.b $08,$46,$08,$4a,$08,$46,$08,$4a
	dc.b $ff,$ff
dat_20ce42:
	.incbin 52802, 16
dat_20ce52:
	dc.b $02,$44,$02,$48,$02,$44,$02,$48
	dc.b $ff,$ff

sub_20ce5c:
	move.b dat_20ce7e(pc,d0.w),d0
	lea ($fb64).w,a2
	lea $0(a2,d0.w),a2
	move.w #$80,d0
	tst.b $2e(a0)
	beq.s loc_20ce74
	moveq #$0,d0
loc_20ce74:
	move.w d0,(a2)
	eori.b #$1,$2e(a0)
	rts
dat_20ce7e:
	.incbin 52862, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cebc(pc,d0.w),d0
	jsr dat_20cebc(pc,d0.w)
	jsr (sub_2038e4).l
	move.w $36(a0),d0
	jmp (loc_20795a).l
dat_20cebc:
	dc.b $00,$16,$00,$4c
loc_20cec0:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209814).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cfa0,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cf18(pc,d0.w),d0
	jmp dat_20cf18(pc,d0.w)
dat_20cf18:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cf84
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cec0
	bsr.w sub_20cf84
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cec0
	move.l $8(a0),-(a7)
	bsr.w sub_20cf84
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cec0
	move.l $8(a0),-(a7)
	bsr.w sub_20cf84
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cec0

sub_20cf84:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_20080e).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 53152, 18
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cfcc(pc,d0.w),d0
	jsr dat_20cfcc(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20cfcc:
	dc.b $00,$0e,$00,$38,$00,$52,$00,$a8
loc_20cfd4:
	jmp (loc_20d0f0).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$43e8,$2(a0)
	move.l #$20d0e2,$4(a0)
	move.b #$10,$16(a0)
	move.b #$20,$19(a0)
	jsr sub_20d0ba(pc)
	bne.s loc_20d01a
	move.w #$fa00,$12(a0)
	move.w #$10,$3e(a0)
	addq.b #$2,$24(a0)
loc_20d01a:
	bra.w loc_20cfd4
	jsr sub_20d098(pc)
	jsr (sub_206d82).l
	tst.w d1
	bpl.s loc_20d030
	clr.w $12(a0)
loc_20d030:
	jsr (sub_206bec).l
	tst.w d1
	bpl.s loc_20d070
	jsr sub_20d0ba(pc)
	bne.s loc_20d060
	move.w #$fa00,$12(a0)
	move.w #$10,$3e(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d070
	move.w #$b4,d0
	jsr (sub_20230a).l
	bra.s loc_20d070
loc_20d060:
	move.w #$fe80,$12(a0)
	move.w #$10,$3e(a0)
	addq.b #$2,$24(a0)
loc_20d070:
	bra.w loc_20cfd4
	.incbin 53364, 36

sub_20d098:
	move.w $12(a0),d0
	add.w $3e(a0),d0
	bmi.s loc_20d0ac
	cmpi.w #$600,d0
	bcs.s loc_20d0ac
	move.w #$600,d0
loc_20d0ac:
	move.w d0,$12(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts

sub_20d0ba:
	cmpi.b #$2,($ff152e).l
	bcc.s loc_20d0da
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_20d0d4
	addi.b #$1e,d0
loc_20d0d4:
	cmp.b ($f7b3).w,d0
	beq.s loc_20d0de
loc_20d0da:
	moveq #$0,d0
	rts
loc_20d0de:
	moveq #$ffffffff,d0
	rts
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e0
	dc.b $f0,$0f,$08,$00,$00,$00
loc_20d0f0:
	lea ($d000).w,a1
	move.w $12(a1),d0
	bpl.s loc_20d104
	neg.w d0
	cmpi.w #$600,d0
	bgt.w loc_20d158
loc_20d104:
	tst.w $12(a0)
	beq.s loc_20d112
	move.b #$4,$2e(a0)
	bra.s loc_20d118
loc_20d112:
	move.b #$0,$2e(a0)
loc_20d118:
	move.b $2e(a0),d0
	add.b d0,$16(a0)
	lea ($d000).w,a1
	bsr.s sub_20d130
	move.b $2e(a0),d0
	sub.b d0,$16(a0)
	rts

sub_20d130:
	move.w $12(a1),$30(a0)
	btst.b #$3,$22(a1)
	beq.s loc_20d14a
	btst.b #$1,$22(a1)
	bne.s loc_20d14a
	clr.w $12(a1)
loc_20d14a:
	jsr (sub_20981a).l
	bne.s loc_20d15a
	move.w $30(a0),$12(a1)
loc_20d158:
	rts
loc_20d15a:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d184
	move.l $c(a0),$c(a1)
	move.b $16(a1),d0
	ext.w d0
	addi.w #$10,d0
	sub.w d0,$c(a1)
	tst.w $12(a0)
	bge.s loc_20d184
	move.w $12(a0),$12(a1)
	rts
loc_20d184:
	clr.w $12(a1)
	rts
	.incbin 53642, 626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d416(pc,d0.w),d0
	jsr dat_20d416(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20d416:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d420:
	tst.b $1a(a0)
	beq.s loc_20d428
	rts
loc_20d428:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20981a).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d56a,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d476
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d476:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d486
	neg.w d0
loc_20d486:
	cmpi.w #$40,d0
	bcc.s loc_20d4c6
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d4a2
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d4a2:
	sub.w d1,d0
	bcs.s loc_20d4c6
	cmpi.w #$40,d0
	bcc.s loc_20d4c6
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d4c6
	move.w #$a4,d0
	jsr (sub_20230a).l
loc_20d4c6:
	bra.w loc_20d420
	clr.b $3c(a0)
	jsr sub_20d548(pc)
	cmpi.b #$3,$1a(a0)
	bne.s loc_20d4de
	addq.b #$2,$24(a0)
loc_20d4de:
	bra.w loc_20d420
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d4f2
	neg.w d0
loc_20d4f2:
	cmpi.w #$40,d0
	bcc.s loc_20d52a
	move.w $8(a1),d1
	move.w $8(a0),d0
	tst.b $28(a0)
	bne.s loc_20d50e
	move.w $8(a1),d0
	move.w $8(a0),d1
loc_20d50e:
	sub.w d1,d0
	bcs.s loc_20d52a
	cmpi.w #$40,d0
	bcs.s loc_20d52a
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	move.w #$a4,d0
	jsr (sub_20230a).l
loc_20d52a:
	bra.w loc_20d420
	move.b #$1,$3c(a0)
	jsr sub_20d548(pc)
	tst.b $1a(a0)
	bne.s loc_20d544
	move.b #$2,$24(a0)
loc_20d544:
	bra.w loc_20d420

sub_20d548:
	addi.b #$40,$3a(a0)
	bcs.s loc_20d552
	rts
loc_20d552:
	tst.b $3c(a0)
	bne.s loc_20d55e
	addq.b #$1,$1a(a0)
	rts
loc_20d55e:
	subq.b #$1,$1a(a0)
	bcc.s loc_20d568
	clr.b $1a(a0)
loc_20d568:
	rts
	.incbin 54634, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d5b4(pc,d0.w),d0
	jsr dat_20d5b4(pc,d0.w)
	jsr (sub_2038e4).l
	move.w $36(a0),d0
	jmp (loc_20795a).l
dat_20d5b4:
	dc.b $00,$12,$00,$48

sub_20d5b8:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209814).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d880,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d7e6
	lea dat_20d876(pc),a1
	jsr (sub_205e6e).l
	lea ($d000).w,a1
	bsr.w sub_20d5b8
	beq.s loc_20d65a
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d650
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d64c
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d64c:
	move.b d0,$39(a1)
loc_20d650:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d65a
	bra.s loc_20d67a
loc_20d65a:
	rts
	.incbin 54876, 30
loc_20d67a:
	addq.b #$4,$2b(a1)
	move.b $2b(a1),d0
	jsr (sub_20080e).l
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
	move.b dat_20d6d8(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d6ba
	addq.b #$1,$39(a1)
loc_20d6ba:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d6ce
	move.w ($f606).w,($f602).w
loc_20d6ce:
	bsr.w sub_20d6e8
	bra.w loc_20d736
	dc.b $4e,$75
dat_20d6d8:
	.incbin 55000, 16

sub_20d6e8:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d714
	btst.b #$2,($f602).w
	beq.s loc_20d700
	addq.b #$1,$39(a1)
	bra.s loc_20d734
loc_20d700:
	btst.b #$3,($f602).w
	beq.s loc_20d734
	subq.b #$1,$39(a1)
	bcc.s loc_20d734
	clr.b $39(a1)
	bra.s loc_20d734
loc_20d714:
	btst.b #$3,($f602).w
	beq.s loc_20d722
	addq.b #$1,$39(a1)
	bra.s loc_20d734
loc_20d722:
	btst.b #$2,($f602).w
	beq.s loc_20d734
	subq.b #$1,$39(a1)
	bcc.s loc_20d734
	clr.b $39(a1)
loc_20d734:
	rts
loc_20d736:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d7dc
	clr.b $2c(a1)
	move.w #$680,d2
	moveq #$0,d0
	move.b $26(a1),d0
	subi.b #$40,d0
	jsr (sub_20080e).l
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
	beq.s loc_20d796
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d7a2
loc_20d796:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d7a2:
	btst.b #$2,$22(a1)
	bne.s loc_20d7de
	tst.b ($ff195b).l
	beq.s loc_20d7c0
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d7d0
loc_20d7c0:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d7d0:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d7dc:
	rts
loc_20d7de:
	bset.b #$4,$22(a1)
	rts

sub_20d7e6:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d7f6(pc,d0.w),d0
	jmp dat_20d7f6(pc,d0.w)
dat_20d7f6:
	dc.b $00,$26,$00,$44,$00,$08,$00,$18
	bsr.w sub_20d85a
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	bsr.w sub_20d85a
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 55324, 28
	rts
	.incbin 55354, 32

sub_20d85a:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_20080e).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d876:
	.incbin 55414, 118
	jsr (sub_20fc44).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d90c(pc,d0.w),d0
	jsr dat_20d90c(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20d90c:
	dc.b $00,$08,$00,$8c,$01,$08,$01,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2438,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.l #$70000,$2e(a0)
	move.l #loc_206e58,$36(a0)
	move.w #$fff0,$34(a0)
	move.b #$1,$1a(a0)
	bsr.w sub_20db08
	movea.l #$20db2a,a1
	move.l #$ffff6000,d0
	move.b #$7,d1
	tst.b $28(a0)
	beq.s loc_20d97c
	movea.l #$20db4e,a1
	move.l #$ffff8000,d0
	move.b #$3,d1
loc_20d97c:
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
	jsr (sub_206bec).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d9d2
	tst.w $3e(a0)
	bpl.w loc_20dad4
	cmp.w $3e(a0),d1
	ble.w loc_20dad4
	bra.s loc_20d9f4
loc_20d9d2:
	tst.w $3e(a0)
	bmi.s loc_20d9f4
	addi.l #$2000,$2e(a0)
	cmpi.l #$70000,$2e(a0)
	blt.s loc_20d9f2
	move.l #$70000,$2e(a0)
loc_20d9f2:
	rts
loc_20d9f4:
	addq.b #$2,$24(a0)
	move.w $3e(a0),d0
	add.w d0,$c(a0)
	move.w #$1,d0
	tst.b $28(a0)
	beq.s loc_20da0e
	move.w #$14,d0
loc_20da0e:
	move.w d0,$3a(a0)
	rts
	tst.b $28(a0)
	beq.s loc_20da44
	move.w #$7,d6
	move.w $3a(a0),d0
	cmpi.w #$6,d0
	beq.s loc_20da3c
	cmpi.w #$b,d0
	beq.s loc_20da3a
	cmpi.w #$f,d0
	beq.s loc_20da3c
	cmpi.w #$12,d0
	bne.s loc_20da44
loc_20da3a:
	neg.w d6
loc_20da3c:
	add.w d6,$c(a0)
	bsr.w sub_20db08
loc_20da44:
	subq.w #$1,$3a(a0)
	bne.s loc_20da72
	addq.b #$2,$24(a0)
	subq.w #$7,$c(a0)
	bsr.w sub_20db08
	move.l #$fffa0000,d0
	tst.b $28(a0)
	beq.s loc_20da68
	move.l #$fffb0000,d0
loc_20da68:
	move.l d0,$2e(a0)
	subq.b #$1,$32(a0)
	bmi.s loc_20dad4
loc_20da72:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206d82).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20daaa
	tst.w $3e(a0)
	bpl.s loc_20dad4
	cmp.w $3e(a0),d1
	ble.s loc_20dad4
	bra.s loc_20dabc
loc_20daaa:
	tst.w $3e(a0)
	bmi.s loc_20dabc
	addi.l #$2000,$2e(a0)
	bpl.s loc_20dac8
	rts
loc_20dabc:
	move.w $3e(a0),d0
	sub.w d0,$c(a0)
	clr.l $2e(a0)
loc_20dac8:
	subq.b #$4,$24(a0)
	subi.w #$b,$c(a0)
	bra.s sub_20db08
loc_20dad4:
	move.b $33(a0),$32(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
	neg.w $34(a0)
	lea (loc_206e58).l,a1
	lea (dat_206cb6).l,a2
	cmpa.l $36(a0),a1
	bne.s loc_20db02
	exg a1,a2
loc_20db02:
	move.l a1,$36(a0)
	rts

sub_20db08:
	tst.b $1a(a0)
	beq.s loc_20db16
	moveq #$0,d0
	moveq #$13,d1
	moveq #$2f,d2
	bra.s loc_20db1c
loc_20db16:
	moveq #$1,d0
	moveq #$1c,d1
	moveq #$30,d2
loc_20db1c:
	move.b d0,$1a(a0)
	move.b d1,$16(a0)
	move.b d2,$20(a0)
	rts
	.incbin 56106, 72
	tst.b $28(a0)
	bmi.w loc_20df82
	jsr (sub_20fc44).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dba4(pc,d0.w),d0
	jsr dat_20dba4(pc,d0.w)
	lea dat_20de10(pc),a1
	jsr (sub_205e6e).l
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20dba4:
	.incbin 56228, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$a457,$2(a0)
	move.b #$31,$20(a0)
	move.w #$fff8,$30(a0)
	lea dat_20de1c(pc),a1
	move.l #$ffff0000,d0
	tst.b $28(a0)
	beq.s loc_20dc06
	lea dat_20df04(pc),a1
	move.l #$ffff8000,d0
loc_20dc06:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	addq.b #$2,$24(a0)
	move.w #$200,d0
	tst.b $28(a0)
	beq.s loc_20dc20
	move.w #$400,d0
loc_20dc20:
	move.w d0,$2a(a0)
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20dc4e
	tst.w $32(a0)
	beq.s loc_20dc3e
	subq.w #$1,$32(a0)
	bra.s loc_20dc4e
loc_20dc3e:
	lea ($d000).w,a1
	bsr.s sub_20dc5c
	beq.s loc_20dc4e
	move.b #$c,$24(a0)
	rts
loc_20dc4e:
	subq.w #$1,$2a(a0)
	bpl.s loc_20dc5a
	move.b #$6,$24(a0)
loc_20dc5a:
	rts

sub_20dc5c:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dca6
	move.w $8(a1),d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20dca6
	btst.b #$0,$1(a0)
	sne d2
	eor.b d1,d2
	beq.s loc_20dca2
	neg.l $2c(a0)
	neg.w $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20dca2:
	moveq #$ffffffff,d0
	rts
loc_20dca6:
	moveq #$0,d0
	rts
	.incbin 56490, 62
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20dd2c
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	move.b #$1,$1c(a0)
	move.b #$32,$20(a0)
	move.b #$10,$16(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w $30(a0),d0
	add.w d0,$8(a0)
	addq.w #$4,$c(a0)
loc_20dd2c:
	rts
	subq.w #$1,$2a(a0)
	bpl.w loc_20ddd0
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	jsr (sub_207920).l
	bne.w loc_20ddd0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $1(a0),$1(a1)
	move.w $2(a0),$2(a1)
	move.l #$20e00e,$4(a1)
	move.b #$1,$18(a1)
	move.b #$10,$16(a1)
	move.b #$10,$17(a1)
	move.b #$10,$19(a1)
	move.b #$b3,$20(a1)
	move.w $c(a0),$c(a1)
	addi.w #$17,$c(a1)
	move.l #$20000,$30(a1)
	move.w $8(a0),$8(a1)
	move.w #$7,d0
	move.l #$20000,d1
	btst.b #$0,$1(a0)
	bne.s loc_20ddb8
	neg.w d0
	neg.l d1
loc_20ddb8:
	add.w d0,$8(a1)
	move.l d1,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20ddd0
	move.w #$a0,d0
	jsr (sub_20230a).l
loc_20ddd0:
	rts
	subq.w #$1,$2a(a0)
	bpl.s loc_20de0e
	move.b #$2,$24(a0)
	move.w #$3c,$32(a0)
	move.b #$0,$1c(a0)
	move.b #$31,$20(a0)
	move.b #$c,$16(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.w $30(a0),d0
	sub.w d0,$8(a0)
	subq.w #$4,$c(a0)
loc_20de0e:
	rts
dat_20de10:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $01,$02,$03,$ff
dat_20de1c:
	.incbin 56860, 232
dat_20df04:
	.incbin 57092, 126
loc_20df82:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20df9c(pc,d0.w),d0
	jsr dat_20df9c(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20df9c:
	dc.b $00,$08,$00,$12,$00,$2a,$00,$46
	addq.b #$2,$24(a0)
	move.w #$3,$2a(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20dfc4
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$a,$2a(a0)
loc_20dfc4:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20dfe0
	addq.b #$2,$24(a0)
loc_20dfe0:
	rts
	.incbin 57314, 112
	tst.b $29(a0)
	bmi.w loc_20e3b8
	jsr (sub_20fc44).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e07a(pc,d0.w),d0
	jsr dat_20e07a(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20e07a:
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
	lea dat_20e206(pc),a1
	tst.b $28(a0)
	beq.s loc_20e0ca
	lea dat_20e2ee(pc),a1
loc_20e0ca:
	move.l a1,$4(a0)
	subq.w #$1,$32(a0)
	bpl.s loc_20e0d8
	addq.b #$2,$24(a0)
loc_20e0d8:
	rts
	lea ($d000).w,a1
	bsr.s sub_20e0e8
	bcc.s loc_20e0e6
	addq.b #$2,$24(a0)
loc_20e0e6:
	rts

sub_20e0e8:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20e10e
	move.w $8(a1),d0
	sub.w $8(a0),d0
	move.w d0,$34(a0)
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20e10e:
	rts
	addq.b #$2,$24(a0)
	move.l #$10000,d0
	move.l #$ffff8000,d1
	move.w #$60,d2
	tst.b $28(a0)
	beq.s loc_20e13a
	move.l #$c000,d0
	move.l #$6000,d1
	move.w #$2a,d2
loc_20e13a:
	tst.w $34(a0)
	bmi.s loc_20e142
	neg.l d0
loc_20e142:
	move.l d0,$2a(a0)
	move.l d1,$2e(a0)
	move.w d2,$32(a0)
	subq.w #$1,$32(a0)
	bpl.s loc_20e158
	addq.b #$2,$24(a0)
loc_20e158:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	lea dat_20e1fe(pc),a1
	jmp (sub_205e6e).l
	addq.b #$2,$24(a0)
	move.w #$0,$32(a0)
	move.l #$10000,d0
	tst.b $28(a0)
	beq.s loc_20e18e
	move.l #$c000,d0
loc_20e18e:
	tst.w $34(a0)
	bmi.s loc_20e196
	neg.l d0
loc_20e196:
	move.l d0,$2a(a0)
	tst.b $28(a0)
	bne.s loc_20e1ec
	andi.w #$3f,$32(a0)
	bne.s loc_20e1e8
	lea ($d000).w,a1
	bsr.w sub_20e0e8
	bcc.s loc_20e1e8
	jsr (sub_207920).l
	bne.s loc_20e1e8
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	addi.w #$a,$c(a1)
	move.b #$ff,$29(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
loc_20e1e8:
	addq.w #$1,$32(a0)
loc_20e1ec:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	lea dat_20e1fe(pc),a1
	jmp (sub_205e6e).l
dat_20e1fe:
	dc.b $00,$02,$03,$01,$02,$03,$02,$ff
dat_20e206:
	.incbin 57862, 232
dat_20e2ee:
	.incbin 58094, 202
loc_20e3b8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e3d2(pc,d0.w),d0
	jsr dat_20e3d2(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20e3d2:
	.incbin 58322, 198
	tst.b $29(a0)
	beq.s loc_20e4a6
	bmi.w loc_20e714
	bra.w loc_20e6f4
loc_20e4a6:
	jsr (sub_20fc44).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e4c6(pc,d0.w),d0
	jsr dat_20e4c6(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20e4c6:
	.incbin 58566, 18
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
	lea dat_20e79e(pc),a1
	tst.b $28(a0)
	beq.s loc_20e52a
	lea dat_20e7f6(pc),a1
loc_20e52a:
	move.l a1,$4(a0)
	jsr (sub_207936).l
	beq.s loc_20e53c
	jmp (sub_203990).l
loc_20e53c:
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
	bne.s loc_20e5b6
	move.w #$79,$2a(a0)
	move.b #$2,d6
	lea ($d000).w,a1
	bsr.w sub_20e5b8
	bcs.s loc_20e5b2
	neg.b d6
loc_20e5b2:
	add.b d6,$24(a0)
loc_20e5b6:
	rts

sub_20e5b8:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$28,d0
	subi.w #$78,d0
	bcc.s loc_20e5da
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$ff58,d0
	subi.w #$150,d0
loc_20e5da:
	rts
	.incbin 58844, 280
loc_20e6f4:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e70e
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e70e
	jmp (sub_2038e4).l
loc_20e70e:
	jmp (sub_203990).l
loc_20e714:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e726
	jmp (sub_203990).l
loc_20e726:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e738
	moveq #$0,d0
loc_20e738:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_2038e4).l
	.incbin 59216, 78
dat_20e79e:
	.incbin 59294, 88
dat_20e7f6:
	.incbin 59382, 274
	jsr (sub_20fc8c).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ea2a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e928(pc,d0.w),d0
	jmp dat_20e928(pc,d0.w)
dat_20e928:
	.incbin 59688, 258
loc_20ea2a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea38(pc,d0.w),d0
	jmp dat_20ea38(pc,d0.w)
dat_20ea38:
	.incbin 59960, 448
	tst.b $28(a0)
	bmi.w loc_20ecaa
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ec24(pc,d0.w),d0
	jsr dat_20ec24(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_20981a).l
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20ec24:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$3a8,$2(a0)
	move.l #$20ee7e,$4(a0)
	move.w a0,$2a(a0)
	st $34(a0)
	move.w #$0,$32(a0)
	tst.b $34(a0)
	beq.s loc_20eca8
	sf $34(a0)
	lea dat_20ee86(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.w $32(a0),d0
	adda.w $0(a1,d0.w),a1
	move.l a1,$2c(a0)
	addq.w #$2,$32(a0)
	cmpi.w #$8,$32(a0)
	blt.s loc_20ec9c
	clr.w $32(a0)
loc_20ec9c:
	bsr.w sub_20ee3c
	beq.s loc_20eca8
	jmp (sub_203990).l
loc_20eca8:
	rts
loc_20ecaa:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ee36
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.w loc_20ee36
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ece2(pc,d0.w),d0
	jsr dat_20ece2(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_20981a).l
	jmp (sub_2038e4).l
dat_20ece2:
	.incbin 60642, 20
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.l #$0,$38(a0)
	move.l #$0,$3c(a0)
	movea.l $2c(a0),a1
	move.b -$1(a1),d0
	bne.s loc_20ed22
	move.l #$ffff8000,$3c(a0)
loc_20ed22:
	subq.b #$1,d0
	bne.s loc_20ed2e
	move.l #$8000,$38(a0)
loc_20ed2e:
	subq.b #$1,d0
	bne.s loc_20ed3a
	move.l #$8000,$3c(a0)
loc_20ed3a:
	subq.b #$1,d0
	bne.s loc_20ed46
	move.l #$ffff8000,$38(a0)
loc_20ed46:
	movea.w $2a(a0),a1
	cmpi.b #$2,$28(a1)
	bne.s loc_20ed64
	moveq #$1,d0
	tst.w $3c(a0)
	bpl.s loc_20ed5c
	moveq #$ffffffff,d0
loc_20ed5c:
	move.w d0,$34(a0)
	move.w d0,$12(a0)
loc_20ed64:
	move.l $38(a0),d0
	add.l d0,$8(a0)
	move.l $3c(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ed7e
	addq.b #$2,$24(a0)
loc_20ed7e:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ed98
	move.w #$0,d0
loc_20ed98:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20edb8
	addq.b #$2,$24(a0)
	bsr.w sub_20ee3c
	beq.s loc_20edb8
	addq.b #$2,$24(a0)
	movea.w $2a(a0),a1
	st $34(a1)
loc_20edb8:
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
	bpl.s loc_20edea
	addq.b #$2,$24(a0)
loc_20edea:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ee04
	move.w #$0,d0
loc_20ee04:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ee20
	movea.w $36(a0),a1
	tst.b $28(a1)
	bpl.s loc_20ee1c
	addq.b #$2,$24(a1)
loc_20ee1c:
	addq.b #$2,$24(a0)
loc_20ee20:
	rts
	lea ($d000).w,a1
	jsr (sub_20981a).l
	beq.s loc_20ee34
	jsr (sub_2096cc).l
loc_20ee34:
	addq.l #$4,a7
loc_20ee36:
	jmp (sub_203990).l

sub_20ee3c:
	movea.l $2c(a0),a6
	tst.b (a6)+
	bmi.s loc_20ee7c
	jsr (sub_207920).l
	bne.s loc_20ee7c
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
loc_20ee7c:
	rts
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
dat_20ee86:
	.incbin 61062, 562
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f0cc(pc,d0.w),d0
	jsr dat_20f0cc(pc,d0.w)
	jmp (sub_2038e4).l
dat_20f0cc:
	.incbin 61644, 158
	tst.b $28(a0)
	bne.w loc_20f3b2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f18c(pc,d0.w),d0
	jsr dat_20f18c(pc,d0.w)
	jsr (sub_2038e4).l
	jmp (loc_207956).l
dat_20f18c:
	dc.b $00,$06,$00,$d4,$01,$be
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	move.w #$3b8,$2(a0)
	move.l #$20f3ee,$4(a0)
	jsr (sub_207920).l
	bne.w loc_20f3c0
	bsr.w sub_20f20c
	move.w a1,$2a(a0)
	subi.w #$28,$8(a1)
	subi.w #$18,$c(a1)
	jsr (sub_207920).l
	bne.w loc_20f3c0
	bsr.w sub_20f20c
	move.w a1,$2c(a0)
	addi.w #$28,$8(a1)
	addi.w #$18,$c(a1)
	bset.b #$0,$1(a1)
	bset.b #$0,$22(a1)
	rts

sub_20f20c:
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
	lea loc_20f2cc(pc),a1
	tst.w $12(a0)
	beq.s loc_20f26e
	lea loc_20f2ee(pc),a1
loc_20f26e:
	jsr (a1)
	move.w a0,-(a7)
	movea.w $2c(a0),a0
	lea ($d000).w,a1
	jsr (sub_209814).l
	jsr (sub_2038e4).l
	movea.w (a7)+,a0
	move.w a0,-(a7)
	movea.w $2a(a0),a0
	lea ($d000).w,a1
	jsr (sub_209814).l
	sne $3f(a0)
	jsr (sub_2038e4).l
	movea.w (a7)+,a0
	movea.w $2a(a0),a1
	tst.b $3f(a1)
	bne.s loc_20f2b8
	lea dat_20f3c6(pc),a1
	jmp (sub_205e6e).l
loc_20f2b8:
	move.b #$4,$24(a0)
	move.w #$3,$2e(a0)
	move.b #$8,$1a(a0)
	rts
loc_20f2cc:
	tst.w $2e(a0)
	bmi.s loc_20f2ec
	subq.w #$1,$2e(a0)
	bmi.s loc_20f2e2
	cmpi.w #$3c,$2e(a0)
	beq.s loc_20f2e8
	bra.s loc_20f2ec
loc_20f2e2:
	move.w #$100,$12(a0)
loc_20f2e8:
	addq.b #$1,$1c(a0)
loc_20f2ec:
	rts
loc_20f2ee:
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
	blt.s loc_20f31a
	neg.w d0
loc_20f31a:
	add.w d0,d3
	move.w a0,-(a7)
	movea.w a2,a0
	jsr (sub_206bf0).l
	movea.w (a7)+,a0
	tst.w d1
	bmi.s loc_20f32e
	rts
loc_20f32e:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	add.w d1,$c(a0)
	add.w d1,$c(a1)
	add.w d1,$c(a2)
	move.w #$0,$12(a0)
	rts
	.incbin 62282, 104
loc_20f3b2:
	movea.w $2a(a0),a1
	cmpi.b #$2c,$0(a1)
	bne.s loc_20f3c0
	rts
loc_20f3c0:
	jmp (sub_203990).l
dat_20f3c6:
	.incbin 62406, 2174

sub_20fc44:
	tst.b ($ff156a).l
	beq.s loc_20fc8a
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc5c
	tst.b $28(a0)
	beq.s loc_20fc8a
loc_20fc5c:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203990).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fc88
	move.w #$9e,d0
	jsr (sub_20230a).l
loc_20fc88:
	addq.l #$4,a7
loc_20fc8a:
	rts

sub_20fc8c:
	tst.b $28(a0)
	bmi.s loc_20fcbc
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fcac
	tst.b ($ff156d).l
	bne.s loc_20fcbc
	addq.l #$4,a7
	jmp (loc_207956).l
loc_20fcac:
	tst.b ($ff156a).l
	bne.s loc_20fcbc
	addq.l #$4,a7
	jmp (sub_203990).l
loc_20fcbc:
	rts

sub_20fcbe:
	jsr (sub_2066e2).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fe1a).l,a1
	move.w #$3f,d6
	bsr.w sub_20fdd6
	bne.s loc_20fd00
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4440,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd00:
	lea (dat_20fe28).l,a1
	move.w #$1f,d6
	bsr.w sub_20fdd6
	bne.s loc_20fd34
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$43c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd34:
	lea (dat_20fdbc).l,a1
	move.w #$1f,d6
	bsr.w sub_20fd6a
	bne.s loc_20fd68
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4340,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd68:
	rts

sub_20fd6a:
	subq.b #$1,(a2)
	bpl.s loc_20fdb0
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fd7a
	moveq #$0,d0
loc_20fd7a:
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
loc_20fd9e:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fd9e
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fdb0:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fdbc:
	.incbin 64956, 26

sub_20fdd6:
	subq.b #$1,(a2)
	bpl.w loc_20fe0e
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fdec
	moveq #$0,d0
loc_20fdec:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fdfc:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fdfc
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fe0e:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe1a:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20fe28:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fe32:
	.incbin 65074, 16
dat_20fe42:
	.incbin 65090, 65982
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
	.incbin 219126, 4696
dat_236a4e:
	.incbin 223822, 12478
dat_239b0c:
	.incbin 236300, 768
dat_239e0c:
	.incbin 237068, 25076
