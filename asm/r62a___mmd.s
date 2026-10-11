; R62A__.MMD
; disassembled from the disc; code only, data comes from data/R62A__.MMD at build time
	.file "R62A__.MMD", 262144

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
	bsr.w sub_2076c2
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
	lea (dat_20fec6).l,a2
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
	bsr.w sub_202896
	bsr.w sub_2029a4
	bset.b #$2,($f754).w
	bsr.w sub_2033a6
	bsr.w sub_2032ac
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
	jsr (sub_20fd52).l
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
	jsr (sub_205dd6).l
	bsr.w sub_2076c2
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
	jsr (sub_2076d8).l
	jsr (sub_2037ac).l
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
	bsr.w sub_2029a4
loc_2019a0:
	jsr (sub_203956).l
	tst.w ($ff190e).l
	bne.s loc_2019b2
	bsr.w sub_200184
loc_2019b2:
	jsr (sub_20c6a6).l
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
	jmp (sub_205dd6).l
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
	jmp (sub_205dd6).l
loc_201bec:
	tst.b ($ff151f).l
	bne.s loc_201be2
	tst.b ($ff1520).l
	bne.s loc_201be2
	move.w #$90,d0
	jmp (sub_205dd6).l
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
	jmp (sub_205dd6).l
loc_201c28:
	tst.b ($ff151f).l
	bne.s loc_201c1e
	tst.b ($ff1520).l
	bne.s loc_201c1e
	move.w #$91,d0
	jmp (sub_205dd6).l
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
	bsr.w sub_205d02
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
	jsr (sub_20fd52).l
	jsr (sub_2022be).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202ea2
	bsr.w sub_2025b2
	jmp (loc_20aed6).l
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
	bsr.w sub_202ea2
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
	lea (dat_20fed6).l,a1
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
	lea (dat_20fed6).l,a1
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
	lea (dat_20fed6).l,a1
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
	.incbin 9848, 542

sub_202896:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2028f2).l,a0
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
	bra.w loc_2028fe
dat_2028f2:
	dc.b $00,$04,$00,$00,$23,$97,$00,$00
	dc.b $07,$10,$00,$60
loc_2028fe:
	tst.b ($ff1522).l
	beq.s loc_20291e
	jsr (sub_206960).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_20291c
	moveq #$0,d0
loc_20291c:
	bra.s loc_202934
loc_20291e:
	lea (dat_202970).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202934:
	subi.w #$a0,d1
	bcc.s loc_20293c
	moveq #$0,d1
loc_20293c:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202946
	move.w d2,d1
loc_202946:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202952
	moveq #$0,d0
loc_202952:
	cmp.w ($f72e).w,d0
	blt.s loc_20295c
	move.w ($f72e).w,d0
loc_20295c:
	move.w d0,($f704).w
	bsr.w sub_202978
	lea (dat_202974).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202970:
	dc.b $00,$30,$01,$9c
dat_202974:
	dc.b $7f,$7f,$7f,$7f

sub_202978:
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

sub_2029a4:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2029b0
	rts
loc_2029b0:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b18
	bsr.w sub_202bb8
	bsr.w sub_203440
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e42
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202e0e
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202dda
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202daa
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
	bsr.w sub_202a90
	move.w ($f718).w,d0
	neg.w d0
	moveq #$13,d6
loc_202a54:
	move.w d0,(a1)+
	dbf d6,loc_202a54
	move.w ($f710).w,d0
	neg.w d0
	moveq #$2d,d6
loc_202a62:
	move.w d0,(a1)+
	dbf d6,loc_202a62
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202ad6
dat_202a86:
	dc.b $05,$03,$03,$02,$02,$01,$01,$01
	dc.b $01,$01

sub_202a90:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$0,d3
	move.w ($f708).w,d4
	moveq #$9,d6
	adda.w #$3c,a1
loc_202aa8:
	move.b d3,d0
	jsr (sub_20080e).l
	move.w #$100,d5
	sub.w d1,d5
	muls.w d2,d5
	lsr.l #$8,d5
	add.w d4,d5
	neg.w d5
	moveq #$0,d1
	move.b dat_202a86(pc,d6.w),d1
loc_202ac4:
	move.w d5,-(a1)
	dbf d1,loc_202ac4
	addq.b #$6,d3
	dbf d6,loc_202aa8
	adda.w #$3c,a1
	rts
loc_202ad6:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ae4(pc,d2.w)
loc_202ae2:
	move.w (a2)+,d0
loc_202ae4:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ae2
	rts
	.incbin 11002, 30

sub_202b18:
	move.w ($f700).w,d4
	bsr.s sub_202b4c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b4a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b44
	bset.b #$2,($f754).w
	rts
loc_202b44:
	bset.b #$3,($f754).w
loc_202b4a:
	rts

sub_202b4c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b5e
	bcs.s loc_202b8e
	bra.s loc_202b64
loc_202b5e:
	clr.w ($f73a).w
	rts
loc_202b64:
	cmpi.w #$10,d0
	blt.s loc_202b6e
	move.w #$10,d0
loc_202b6e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b7c
	move.w ($f72a).w,d0
loc_202b7c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b8e:
	cmpi.w #$fff0,d0
	bge.s loc_202b98
	move.w #$fff0,d0
loc_202b98:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b7c
	move.w ($f728).w,d0
	bra.s loc_202b7c
	.incbin 11176, 16

sub_202bb8:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202bcc
	subq.w #$5,d0
loc_202bcc:
	btst.b #$1,$22(a6)
	beq.s loc_202bec
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c38
	subi.w #$40,d0
	bcc.s loc_202c38
	tst.b ($f75c).w
	bne.s loc_202c4a
	bra.s loc_202bf8
loc_202bec:
	sub.w ($f73e).w,d0
	bne.s loc_202bfe
	tst.b ($f75c).w
	bne.s loc_202c4a
loc_202bf8:
	clr.w ($f73c).w
	rts
loc_202bfe:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c26
	move.w $14(a6),d1
	bpl.s loc_202c0e
	neg.w d1
loc_202c0e:
	cmpi.w #$800,d1
	bcc.s loc_202c38
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c98
	cmpi.w #$fffa,d0
	blt.s loc_202c62
	bra.s loc_202c50
loc_202c26:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c98
	cmpi.w #$fffe,d0
	blt.s loc_202c62
	bra.s loc_202c50
loc_202c38:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c98
	cmpi.w #$fff0,d0
	blt.s loc_202c62
	bra.s loc_202c50
loc_202c4a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c50:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202ca2
	bra.w loc_202c6e
loc_202c62:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c6e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202cc6
	cmpi.w #$ff00,d1
	bgt.s loc_202c92
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cc6
loc_202c92:
	move.w ($f72c).w,d1
	bra.s loc_202cc6
loc_202c98:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ca2:
	cmp.w ($f72e).w,d1
	blt.s loc_202cc6
	subi.w #$800,d1
	bcs.s loc_202cc2
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cc6
loc_202cc2:
	move.w ($f72e).w,d1
loc_202cc6:
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
	bne.s loc_202d08
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202d02
	bset.b #$0,($f754).w
	rts
loc_202d02:
	bset.b #$1,($f754).w
loc_202d08:
	rts
	.incbin 11530, 160

sub_202daa:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dd8
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202dd2
	bset.b #$0,($f756).w
	rts
loc_202dd2:
	bset.b #$1,($f756).w
loc_202dd8:
	rts

sub_202dda:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202e0c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202e06
	bset.b d6,($f756).w
	bra.s loc_202e0c
loc_202e06:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202e0c:
	rts

sub_202e0e:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e40
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e3a
	bset.b d6,($f758).w
	bra.s loc_202e40
loc_202e3a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e40:
	rts

sub_202e42:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e74
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e6e
	bset.b d6,($f75a).w
	bra.s loc_202e74
loc_202e6e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e74:
	rts
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f756).w,a2
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f60
	lea ($f758).w,a2
	lea ($f710).w,a3
	bra.w sub_203046

sub_202ea2:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f60
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203046
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203048
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f5e
	bclr.b #$0,(a2)
	beq.s loc_202f14
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203274
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20304a
loc_202f14:
	bclr.b #$1,(a2)
	beq.s loc_202f2e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203274
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20304a
loc_202f2e:
	bclr.b #$2,(a2)
	beq.s loc_202f44
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203274
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2030a0
loc_202f44:
	bclr.b #$3,(a2)
	beq.s loc_202f5e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203274
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2030a0
loc_202f5e:
	rts

sub_202f60:
	lea (dat_20332c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f7c
	bclr.b #$1,(a2)
	beq.s loc_202fc6
	move.w #$e0,d4
loc_202f7c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202ff6(pc,d0.w),a3
	beq.s loc_202fae
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203274
	movem.l (a7)+,d4-d5
	bsr.w sub_20304a
	movea.l (a7)+,a0
	bra.s loc_202fc6
loc_202fae:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203276
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203076
	movea.l (a7)+,a0
loc_202fc6:
	tst.b (a2)
	bne.s loc_202fcc
	rts
loc_202fcc:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fe0
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fe0:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203006
dat_202ff6:
	.incbin 12278, 16
loc_203006:
	moveq #$f,d6
	move.l #$800000,d7
loc_20300e:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20303a
	btst.b d0,(a2)
	beq.s loc_20303a
	add.w d0,d0
	movea.l dat_202ff6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20314c
	movem.l (a7)+,d4-d5
	bsr.w sub_203274
	bsr.w sub_2030ce
	movem.l (a7)+,d4-d5/a0
loc_20303a:
	addi.w #$10,d4
	dbf d6,loc_20300e
	clr.b (a2)
	rts

sub_203046:
	rts

sub_203048:
	rts

sub_20304a:
	moveq #$15,d6

sub_20304c:
	move.l #$800000,d7
	move.l d0,d1
loc_203054:
	movem.l d4-d5,-(a7)
	bsr.w sub_20314c
	move.l d1,d0
	bsr.w sub_2030ce
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203054
	rts

sub_203076:
	move.l #$800000,d7
	move.l d0,d1
loc_20307e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20314e
	move.l d1,d0
	bsr.w sub_2030ce
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20307e
	rts

sub_2030a0:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_2030aa:
	movem.l d4-d5,-(a7)
	bsr.w sub_20314c
	move.l d1,d0
	bsr.w sub_2030ce
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_2030aa
	rts

sub_2030ce:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20310a
	btst.b #$3,(a0)
	bne.s loc_2030ea
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030ea:
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
loc_20310a:
	btst.b #$3,(a0)
	bne.s loc_20312c
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
loc_20312c:
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

sub_20314c:
	add.w (a3),d5

sub_20314e:
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
	beq.s loc_20319c
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
loc_20319c:
	rts
	.incbin 12702, 214

sub_203274:
	add.w (a3),d5

sub_203276:
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
	.incbin 12944, 28

sub_2032ac:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032d6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032fe

sub_2032d6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032da:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203274
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20304c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032da
	rts
loc_2032fe:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203302:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20332c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20336e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203302
	rts
dat_20332c:
	.incbin 13100, 50
dat_20335e:
	.incbin 13150, 16

sub_20336e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20335e(pc,d0.w),a3
	beq.s loc_203390
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203274
	movem.l (a7)+,d4-d5
	bsr.w sub_20304a
	bra.s loc_2033a4
loc_203390:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203276
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203076
loc_2033a4:
	rts

sub_2033a6:
	moveq #$0,d0
	lea (dat_20fec6).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2023a6
	movea.l (a2)+,a0
	bsr.w sub_2033f2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20054c
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2033f0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033f0
	bsr.w sub_2024d4
loc_2033f0:
	rts

sub_2033f2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033fc:
	move.l d0,(a3)+
	dbf d1,loc_2033fc
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203412
	lea ($a040).w,a3
	moveq #$2,d1

sub_203412:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_236b16).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20342c:
	move.w d1,d0
	movea.l a3,a0
loc_203430:
	move.b (a1)+,(a0)+
	dbf d0,loc_203430
	lea $80(a3),a3
	dbf d2,loc_20342c
	rts

sub_203440:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2034ba(pc,d0.w),d0
	jsr dat_2034ba(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203466
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203466:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203494
	bcc.s loc_203496
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20348a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20348a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203494:
	rts
loc_203496:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034ae
	btst.b #$1,($d022).w
	beq.s loc_2034ae
	add.w d1,d1
	add.w d1,d1
loc_2034ae:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2034ba:
	.incbin 13498, 224
	btst.b #$4,($f7a7).w
	bne.s loc_2035aa
	move.w #$710,($f726).w
	rts
loc_2035aa:
	move.w #$ba0,d0
	move.w #$1d0,d1
	bsr.w sub_203766
	bne.w loc_2035f6
	lea ($d000).w,a1
	cmpi.w #$298,$c(a1)
	ble.s loc_2035da
	cmpi.w #$498,$c(a1)
	ble.s loc_2035d4
	move.w #$5d0,d0
	bra.s loc_2035de
loc_2035d4:
	move.w #$3d0,d0
	bra.s loc_2035de
loc_2035da:
	move.w #$1d0,d0
loc_2035de:
	move.w d0,d1
	move.w d0,($f726).w
	sub.w ($f72e).w,d0
	bge.s loc_2035ec
	neg.w d0
loc_2035ec:
	cmpi.w #$2,d0
	bgt.s loc_2035f6
	move.w d1,($f72e).w
loc_2035f6:
	rts
	.incbin 13816, 366

sub_203766:
	cmp.w ($d008).w,d0
	ble.s loc_203770
	moveq #$0,d0
	rts
loc_203770:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_20377c
	neg.w d1
loc_20377c:
	cmpi.w #$4,d1
	bge.s loc_203788
	move.w ($f726).w,($f72e).w
loc_203788:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_2037a8
	cmp.w ($f72a).w,d0
	ble.s loc_2037a0
	move.w ($f72a).w,d0
loc_2037a0:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_2037a8:
	moveq #$1,d0
	rts

sub_2037ac:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2037b4:
	move.b (a0),d0
	beq.s loc_2037ca
	add.w d0,d0
	add.w d0,d0
	lea (dat_203bce).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2037ca:
	lea $40(a0),a0
	dbf d7,loc_2037b4
	rts

sub_2037d4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203812
	bpl.s loc_203804
	btst.b #$1,$2c(a0)
	beq.s loc_203804
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203812
loc_203804:
	btst.b #$2,$2c(a0)
	bne.s loc_203812
	addi.w #$38,$12(a0)
loc_203812:
	tst.w $12(a0)
	bmi.s loc_203826
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203826
	move.w #$1000,$12(a0)
loc_203826:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203836:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203872
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203872
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203870
	neg.w d1
loc_203870:
	add.w d1,d0
loc_203872:
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

sub_20388c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038fc
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203918
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203918
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038d6
	cmpi.w #$800,d3
	bcs.s loc_2038e8
	subi.w #$800,d3
	bra.s loc_2038e8
loc_2038d6:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038e8
	cmpi.w #$100,d3
	bcc.s loc_2038e8
	addi.w #$800,d3
loc_2038e8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203918
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203918
loc_2038fc:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203918
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203918:
	rts
	.incbin 14618, 30

sub_203938:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20393e:
	move.l d1,(a1)+
	dbf d0,loc_20393e
	rts
dat_203946:
	.incbin 14662, 16

sub_203956:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203962:
	tst.w (a4)
	beq.w loc_203a22
	moveq #$2,d6
loc_20396a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a1a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039d0
	movea.l dat_203946(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2039b4
	cmpi.w #$800,d2
	bcs.s loc_2039c6
	subi.w #$800,d2
	bra.s loc_2039c6
loc_2039b4:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2039c6
	cmpi.w #$100,d2
	bcc.s loc_2039c6
	addi.w #$800,d2
loc_2039c6:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039f2
loc_2039d0:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039f2
	.incbin 14810, 24
loc_2039f2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a10
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a14
loc_203a10:
	bsr.w sub_203a44
loc_203a14:
	bset.b #$7,$1(a0)
loc_203a1a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20396a
loc_203a22:
	lea $80(a4),a4
	dbf d7,loc_203962
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a3c
	move.l #$0,(a2)
	rts
loc_203a3c:
	move.b #$0,-$5(a2)
	rts

sub_203a44:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a8a
	btst.l #$1,d4
	bne.w loc_203ad8
loc_203a56:
	cmpi.b #$50,d5
	beq.s loc_203a88
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
	bne.s loc_203a82
	addq.w #$1,d0
loc_203a82:
	move.w d0,(a2)+
	dbf d1,loc_203a56
loc_203a88:
	rts
loc_203a8a:
	btst.l #$1,d4
	bne.w loc_203b1e
loc_203a92:
	cmpi.b #$50,d5
	beq.s loc_203ad6
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
	bne.s loc_203ad0
	addq.w #$1,d0
loc_203ad0:
	move.w d0,(a2)+
	dbf d1,loc_203a92
loc_203ad6:
	rts
loc_203ad8:
	cmpi.b #$50,d5
	beq.s loc_203b1c
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
	bne.s loc_203b16
	addq.w #$1,d0
loc_203b16:
	move.w d0,(a2)+
	dbf d1,loc_203ad8
loc_203b1c:
	rts
loc_203b1e:
	cmpi.b #$50,d5
	beq.s loc_203b70
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
	bne.s loc_203b6a
	addq.w #$1,d0
loc_203b6a:
	move.w d0,(a2)+
	dbf d1,loc_203b1e
loc_203b70:
	rts
	.incbin 15218, 92
dat_203bce:
	.incbin 15310, 246

sub_203cc4:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203cd6
	move.w #$0,(a1)
	rts
loc_203cd6:
	tst.w (a1)
	bne.s loc_203ce0
	move.b #$1,$1(a1)
loc_203ce0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d2a
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d1c
	neg.w $10(a0)
loc_203d1c:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205dd6
loc_203d2a:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d48
	cmpa.w #$d040,a0
	beq.s loc_203d48
	tst.b ($ff1906).l
	beq.s loc_203d48
	jmp (loc_20728c).l
loc_203d48:
	move.b $2a(a0),d0
	beq.s loc_203d72
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d64
	cmpi.b #$2d,d0
	bcs.s loc_203d6e
	move.b #$2d,d0
	bra.s loc_203d6e
loc_203d64:
	cmpi.b #$1e,d0
	bcs.s loc_203d6e
	move.b #$1e,d0
loc_203d6e:
	move.b d0,$2a(a0)
loc_203d72:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d80(pc,d0.w),d1
	jmp dat_203d80(pc,d1.w)
dat_203d80:
	dc.b $00,$4c,$05,$34,$17,$ac,$18,$18
	dc.b $18,$a0
loc_203d8a:
	tst.b ($d300).w
	bne.s loc_203dc8
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203dc8:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203df0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203df0:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e24:
	tst.b ($ff1506).l
	bne.s loc_203e8a
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_203e8a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203f04
	cmpi.b #$2f,d1
	bne.s loc_203e8c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e8a
	tst.b $2c(a0)
	beq.s loc_203e8a
	jsr (sub_2078d4).l
	bne.s loc_203e8a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e82
	moveq #$0,d0
loc_203e82:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e8a:
	rts
loc_203e8c:
	rts
	.incbin 16014, 118

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
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203fa8
	cmpi.b #$4,$24(a0)
	bcc.s loc_203fa8
	btst.b #$3,$2c(a0)
	bne.s loc_203fa8
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f7c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$103,d0
	bne.s loc_203fa8
	bset.b #$3,$2c(a0)
	move.w #$0,$10(a0)
	move.w #$fe00,d0
	tst.w $12(a0)
	bmi.s loc_203f74
	neg.w d0
loc_203f74:
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
loc_203fa8:
	rts

sub_203faa:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204046
	cmpi.b #$2,($ff1522).l
	beq.w loc_204046
	btst.b #$0,$2c(a0)
	bne.s loc_204046
	btst.b #$2,$2c(a0)
	bne.s loc_204046
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f7c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_204046
	move.w ($f786).w,d0
	beq.s loc_204008
	clr.w ($f786).w
	clr.b ($ff1521).l
	cmpi.w #$5a,d0
	bcs.s loc_204008
	clr.b ($f784).w
loc_204008:
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
loc_204046:
	rts

sub_204048:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_2040a6
	cmpi.b #$4,$24(a0)
	bcc.s loc_2040a6
	tst.b ($ff1521).l
	bne.s loc_2040a6
	tst.b ($ff151f).l
	bne.s loc_2040a6
	tst.w $30(a0)
	bne.s loc_2040a6
	moveq #$0,d0
	move.b ($ff195a).l,d0
	beq.s loc_2040a6
	subq.b #$1,d0
	add.w d0,d0
	move.w dat_2040a8(pc,d0.w),d0
	lea dat_2040a8(pc,d0.w),a3
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f7c).l
	move.w (a1),d0
	andi.w #$7ff,d0
loc_20409a:
	move.w (a3)+,d1
	bmi.s loc_2040a6
	cmp.w d1,d0
	bne.s loc_20409a
	bra.w loc_20702e
loc_2040a6:
	rts
dat_2040a8:
	.incbin 16552, 32

sub_2040c8:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204182
	tst.b ($ff1521).l
	bne.w loc_204182
	tst.b ($ff151f).l
	bne.w loc_204182
	cmpi.w #$980,$8(a0)
	bcs.s loc_2040f8
	cmpi.w #$a20,$8(a0)
	bcs.w loc_204182
loc_2040f8:
	btst.b #$7,($f7a7).w
	bne.w loc_204182
	tst.w $30(a0)
	bne.s loc_204182
	cmpi.b #$2,($ff1507).l
	bne.s loc_20412c
	cmpi.w #$a10,$8(a0)
	bcs.s loc_204144
	tst.b ($ff1958).l
	beq.s loc_204182
	tst.b ($ff156a).l
	bne.s loc_20413e
	bra.s loc_204144
loc_20412c:
	cmpi.b #$2,($ff152e).l
	bne.s loc_204144
	tst.b ($ff156a).l
	beq.s loc_204144
loc_20413e:
	tst.b ($f668).w
	beq.s loc_204182
loc_204144:
	move.w $8(a0),d3
	move.w $c(a0),d2
	jsr (sub_200f7c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$2,d6
	lea (dat_204184).l,a1
	cmpi.b #$2,($ff152e).l
	bne.s loc_204178
	tst.b ($ff156a).l
	bne.s loc_204178
	lea (dat_20418a).l,a1
loc_204178:
	cmp.w (a1)+,d0
	beq.w loc_20702e
	dbf d6,loc_204178
loc_204182:
	rts
dat_204184:
	dc.b $02,$43,$02,$44,$02,$45
dat_20418a:
	dc.b $02,$87,$02,$88,$02,$89

sub_204190:
	cmpi.b #$2b,$1c(a0)
	beq.w loc_204260
	tst.b ($f7a7).w
	bne.w loc_204260
	cmpi.b #$2,($ff152e).l
	bcc.s loc_2041c4
	move.b #$3c,d0
	tst.b ($ff152e).l
	beq.s loc_2041bc
	addi.b #$1e,d0
loc_2041bc:
	cmp.b ($f7b3).w,d0
	beq.w loc_204260
loc_2041c4:
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
	beq.s loc_20421c
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
	bne.s loc_204260
loc_20421c:
	move.w #$ea00,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	bset.b #$2,$22(a0)
	bne.s loc_204260
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
	move.b #$2,$1c(a0)
	move.w #$da,d0
	jsr (sub_20230a).l
loc_204260:
	rts

sub_204262:
	rts
	.incbin 16996, 80
	bsr.s sub_204262
	bsr.w sub_203e24
	tst.w ($ff1588).l
	beq.s loc_2042d4
	btst.b #$4,($f605).w
	beq.s loc_2042d4
	move.b #$1,($ff1906).l
	rts
loc_2042d4:
	tst.b ($f7cc).w
	bne.s loc_2042e0
	move.w ($f604).w,($f602).w
loc_2042e0:
	btst.b #$0,$2c(a0)
	beq.s loc_2042ee
	bsr.w sub_204508
	bra.s loc_204314
loc_2042ee:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204344(pc,d0.w),d1
	jsr dat_204344(pc,d1.w)
	bsr.w sub_204190
	bsr.w sub_2040c8
	bsr.w sub_204048
	bsr.w sub_203faa
	bsr.w sub_203f2a
loc_204314:
	bsr.s sub_204352
	bsr.w sub_204412
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	bsr.w sub_2057cc
	tst.b $2c(a0)
	bmi.s loc_20433e
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20433e
	jsr (sub_206e30).l
loc_20433e:
	bsr.w sub_205690
	rts
dat_204344:
	dc.b $02,$84,$02,$f2,$03,$46,$03,$74
	dc.b $81,$82,$83,$84,$85,$86

sub_204352:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204376
	move.w $30(a0),d0
	beq.s loc_204368
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204376
loc_204368:
	btst.b #$6,$2c(a0)
	bne.s loc_204376
	jsr (sub_20388c).l
loc_204376:
	tst.b ($ff151f).l
	beq.s loc_2043ba
	tst.w $32(a0)
	beq.s loc_2043ba
	subq.w #$1,$32(a0)
	bne.s loc_2043ba
	tst.b ($ff1520).l
	bne.s loc_2043b2
	tst.b ($ff1958).l
	bne.s loc_2043b2
	tst.b ($ff152e).l
	bne.s loc_2043ac
	move.w #$e,d0
	jsr (sub_205dd6).l
loc_2043ac:
	jsr (sub_201afe).l
loc_2043b2:
	move.b #$0,($ff151f).l
loc_2043ba:
	tst.b ($ff1520).l
	beq.s loc_204410
	tst.w $34(a0)
	beq.s loc_204410
	subq.w #$1,$34(a0)
	bne.s loc_204410
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204408
	tst.b ($ff1958).l
	bne.s loc_204408
	tst.b ($ff152e).l
	bne.s loc_204402
	move.w #$e,d0
	jsr (sub_205dd6).l
loc_204402:
	jsr (sub_201afe).l
loc_204408:
	move.b #$0,($ff1520).l
loc_204410:
	rts

sub_204412:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts
	dc.b $4e,$75

sub_20442e:
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
	bcs.s loc_204500
	move.l #$50000,d0
loc_204500:
	move.l d0,($ff1570).l
	rts

sub_204508:
	tst.b $2a(a0)
	bne.w loc_2045c6
	tst.b ($f784).w
	beq.w loc_2045c6
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204526
	neg.w d0
loc_204526:
	tst.w ($f786).w
	bne.s loc_204532
	move.w #$1,($f786).w
loc_204532:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204548
	move.b #$1,($ff1502).l
	bra.w loc_205dd2
loc_204548:
	cmpi.w #$d2,d1
	bcs.s loc_20459c
	cmpi.b #$2,($ff1522).l
	beq.s loc_20459a
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204572
	move.w #$82,d0
	jsr (sub_205dd6).l
	moveq #$0,d0
loc_204572:
	add.b ($f784).w,d0
	bpl.s loc_20457c
	moveq #$0,d0
	bra.s loc_204584
loc_20457c:
	cmpi.b #$3,d0
	bcs.s loc_204584
	moveq #$2,d0
loc_204584:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20442e
	move.b #$2,($ff1522).l
loc_20459a:
	rts
loc_20459c:
	cmpi.w #$5a,d1
	bcc.s loc_2045b4
	cmp.w d2,d0
	bcc.w loc_203d8a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2045b4:
	cmp.w d2,d0
	bcc.s loc_2045c6
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2045c6:
	rts
	tst.b ($f75f).w
	beq.s loc_2045da
	cmpi.b #$5,$1c(a0)
	bne.s loc_204634
	clr.b ($f75f).w
loc_2045da:
	bsr.w sub_203cc4
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20460a
	tst.b ($ff195b).l
	beq.s loc_2045f8
	cmpi.b #$79,$1a(a0)
	bne.s loc_204634
	bra.s loc_204600
loc_2045f8:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204634
loc_204600:
	bsr.w sub_204fc8
	jmp (sub_2037d4).l
loc_20460a:
	bsr.w sub_20483e
	bsr.w sub_204508
	bsr.w sub_2050a6
	bsr.w sub_2051c0
	bsr.w sub_2048b4
	bsr.w sub_205034
	bsr.w sub_204fc8
	jsr (sub_203836).l
	bsr.w sub_200c0e
	bsr.w sub_20523e
loc_204634:
	rts
	tst.w $12(a0)
	bmi.s loc_20464a
	cmpi.b #$2c,$1c(a0)
	beq.s loc_20464a
	move.b #$0,$1c(a0)
loc_20464a:
	btst.b #$2,$2c(a0)
	beq.s loc_204658
	bsr.w sub_2047aa
	bra.s loc_204684
loc_204658:
	bsr.w sub_20483e
	bsr.w sub_204508
	bsr.w sub_20518c
	bsr.w sub_204ef4
	bsr.w sub_204fc8
	jsr (sub_2037d4).l
	btst.b #$6,$22(a0)
	beq.s loc_204680
	subi.w #$28,$12(a0)
loc_204680:
	bsr.w sub_205280
loc_204684:
	bsr.w sub_2052a4
	rts
	bsr.w sub_20483e
	bsr.w sub_204508
	bsr.w sub_2050a6
	bsr.w sub_2051fc
	bsr.w sub_204d3c
	bsr.w sub_204fc8
	tst.b $2a(a0)
	bne.s loc_2046ae
	jsr (sub_203836).l
loc_2046ae:
	bsr.w sub_200c0e
	bsr.w sub_20523e
	rts
	btst.b #$3,$2c(a0)
	beq.s loc_2046ca
	bsr.w sub_20470e
	bsr.w sub_204508
	bra.s loc_204708
loc_2046ca:
	btst.b #$2,$2c(a0)
	beq.s loc_2046dc
	bsr.w sub_2047aa
	bsr.w sub_204508
	bra.s loc_204708
loc_2046dc:
	bsr.w sub_20483e
	bsr.w sub_204508
	bsr.w sub_20518c
	bsr.w sub_204ef4
	bsr.w sub_204fc8
	jsr (sub_2037d4).l
	btst.b #$6,$22(a0)
	beq.s loc_204704
	subi.w #$28,$12(a0)
loc_204704:
	bsr.w sub_205280
loc_204708:
	bsr.w sub_2052a4
	rts

sub_20470e:
	btst.b #$4,$2c(a0)
	beq.s loc_204742
	move.b $2b(a0),d0
	andi.b #$7f,d0
	bne.s loc_204752
	move.w #$f400,$10(a0)
	tst.b $2b(a0)
	bmi.s loc_204730
	neg.w $10(a0)
loc_204730:
	andi.b #$7f,$2(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	rts
loc_204742:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204752
	bset.b #$4,$2c(a0)
loc_204752:
	addq.b #$8,$2b(a0)
	ori.w #$8000,$2(a0)
	move.b $2b(a0),d0
	bpl.s loc_204768
	andi.w #$7fff,$2(a0)
loc_204768:
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
	beq.s loc_2047a8
	neg.w $12(a0)
loc_2047a8:
	rts

sub_2047aa:
	move.w $8(a0),d3
	move.w $c(a0),d2
	subi.w #$18,d2
	jsr (sub_200f7c).l
	move.w (a1),d0
	andi.w #$7ff,d0
	cmpi.w #$159,d0
	bne.s loc_2047d2
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2047ec
loc_2047d2:
	bclr.b #$2,$2c(a0)
	addi.w #$10,$c(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	rts
loc_2047ec:
	moveq #$2,d0
	btst.b #$2,($f602).w
	beq.s loc_204806
	neg.w d0
	bset.b #$0,$22(a0)
	bset.b #$0,$1(a0)
	bra.s loc_20481a
loc_204806:
	btst.b #$3,($f602).w
	beq.s loc_20483c
	bclr.b #$0,$22(a0)
	bclr.b #$0,$1(a0)
loc_20481a:
	add.w d0,$8(a0)
	subq.b #$1,$1f(a0)
	bpl.s loc_20483c
	move.b #$7,$1f(a0)
	addq.b #$1,$1b(a0)
	cmpi.b #$4,$1b(a0)
	bcs.s loc_20483c
	move.b #$0,$1b(a0)
loc_20483c:
	rts

sub_20483e:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2048aa
	tst.w ($ff1506).l
	bne.s loc_2048aa
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2048ac).l,a2
loc_204872:
	move.b (a2)+,d0
	bmi.s loc_204882
	cmp.b d0,d1
	bne.s loc_204872
	bset.b #$1,$2c(a0)
	rts
loc_204882:
	bclr.b #$1,$2c(a0)
	beq.s loc_2048aa
	tst.w $12(a0)
	bpl.s loc_2048aa
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2048aa
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2048aa
	neg.w $10(a0)
loc_2048aa:
	rts
dat_2048ac:
	dc.b $06,$07,$08,$44,$45,$46,$49,$ff

sub_2048b4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204bc6
	tst.w $3e(a0)
	bne.w loc_204b76
	btst.b #$2,($f602).w
	beq.s loc_2048dc
	bsr.w sub_204c56
loc_2048dc:
	btst.b #$3,($f602).w
	beq.s loc_2048e8
	bsr.w sub_204ccc
loc_2048e8:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204b76
	tst.w $14(a0)
	beq.s loc_204908
	tst.b $2a(a0)
	beq.w loc_204b76
	bra.s loc_204914
loc_204908:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204914:
	btst.b #$3,$22(a0)
	beq.s loc_204964
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.s loc_2049a6
	cmpi.b #$1e,$0(a1)
	bne.s loc_204944
	move.b #$0,$1c(a0)
	bra.w loc_204b76
loc_204944:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20498a
	cmp.w d2,d1
	bge.s loc_204978
	bra.s loc_2049a6
loc_204964:
	jsr (sub_206b94).l
	cmpi.w #$c,d1
	blt.s loc_2049a6
	cmpi.b #$3,$36(a0)
	bne.s loc_204982
loc_204978:
	btst.b #$0,$22(a0)
	bne.s loc_204992
	bra.s loc_20499c
loc_204982:
	cmpi.b #$3,$37(a0)
	bne.s loc_2049a6
loc_20498a:
	btst.b #$0,$22(a0)
	bne.s loc_20499c
loc_204992:
	move.b #$32,$1c(a0)
	bra.w loc_204b76
loc_20499c:
	move.b #$6,$1c(a0)
	bra.w loc_204b76
loc_2049a6:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2049ba
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2049ba:
	btst.b #$7,($f788).w
	bne.w loc_204abe
	btst.b #$6,($f788).w
	bne.w loc_204ade
	btst.b #$1,($f602).w
	bne.w loc_204ade
	andi.b #$f,($f788).w
	beq.s loc_2049f2
	btst.b #$0,($f603).w
	beq.s loc_204a06
	bset.b #$7,($f788).w
	bra.w loc_204b9a
loc_2049f2:
	btst.b #$0,($f603).w
	beq.w loc_204a06
	move.b #$1,($f788).w
	bra.w loc_204b9a
loc_204a06:
	btst.b #$0,($f602).w
	beq.s loc_204a82
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204a64
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204a36
	asr.w #$1,d2
	sub.w d2,d1
loc_204a36:
	btst.b #$0,$22(a0)
	beq.s loc_204a42
	neg.w d0
	neg.w d1
loc_204a42:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204a58
	cmp.w d0,d1
	ble.s loc_204a5e
	bra.s loc_204a5c
loc_204a58:
	cmp.w d1,d0
	ble.s loc_204a5e
loc_204a5c:
	move.w d1,d0
loc_204a5e:
	move.w d0,$14(a0)
	rts
loc_204a64:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a7e
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20230a).l
loc_204a7e:
	bra.w loc_204b9a
loc_204a82:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204aa2
	move.w #$ab,d0
	jsr (sub_20230a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ade
loc_204aa2:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20230a).l
	bra.w loc_204b76
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204abe:
	btst.b #$0,($f602).w
	beq.s loc_204ade
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204b9a
	addq.w #$2,($f73e).w
	bra.w loc_204b9a
loc_204ade:
	btst.b #$6,($f788).w
	bne.w loc_204b5a
	andi.b #$f,($f788).w
	beq.s loc_204b02
	btst.b #$1,($f603).w
	beq.s loc_204b14
	bset.b #$6,($f788).w
	bra.w loc_204b9a
loc_204b02:
	btst.b #$1,($f603).w
	beq.s loc_204b14
	move.b #$1,($f788).w
	bra.w loc_204b9a
loc_204b14:
	btst.b #$1,($f602).w
	beq.s loc_204b76
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204b58
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204b58
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204b4a
	neg.w $14(a0)
loc_204b4a:
	move.w #$9c,d0
	jsr (sub_20230a).l
	bsr.w sub_20505c
loc_204b58:
	bra.s loc_204b9a
loc_204b5a:
	btst.b #$1,($f602).w
	beq.s loc_204b76
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204b9a
	subq.w #$2,($f73e).w
	bra.s loc_204b9a
loc_204b76:
	cmpi.w #$60,($f73e).w
	bne.s loc_204b90
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204b9a
	move.b #$0,($f788).w
	bra.s loc_204b9a
loc_204b90:
	bcc.s loc_204b96
	addq.w #$4,($f73e).w
loc_204b96:
	subq.w #$2,($f73e).w
loc_204b9a:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204bc6
	move.w $14(a0),d0
	beq.s loc_204bc6
	bmi.s loc_204bba
	sub.w d5,d0
	bcc.s loc_204bb4
	move.w #$0,d0
loc_204bb4:
	move.w d0,$14(a0)
	bra.s loc_204bc6
loc_204bba:
	add.w d5,d0
	bcc.s loc_204bc2
	move.w #$0,d0
loc_204bc2:
	move.w d0,$14(a0)
loc_204bc6:
	move.b $26(a0),d0
	jsr (sub_20080e).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204be4:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204c54
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204c54
	bmi.s loc_204bfc
	neg.w d1
loc_204bfc:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206a54
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204c54
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204c50
	cmpi.b #$40,d0
	beq.s loc_204c3e
	cmpi.b #$80,d0
	beq.s loc_204c38
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c38:
	sub.w d1,$12(a0)
	rts
loc_204c3e:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204c50:
	add.w d1,$12(a0)
loc_204c54:
	rts

sub_204c56:
	tst.b $2a(a0)
	bne.s loc_204cca
	move.w $14(a0),d0
	beq.s loc_204c64
	bpl.s loc_204c94
loc_204c64:
	bset.b #$0,$22(a0)
	bne.s loc_204c78
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c78:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204c88
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204c88
	move.w d1,d0
loc_204c88:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c94:
	sub.w d4,d0
	bcc.s loc_204c9c
	move.w #$ff80,d0
loc_204c9c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204cca
	cmpi.w #$400,d0
	blt.s loc_204cca
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20230a).l
loc_204cca:
	rts

sub_204ccc:
	tst.b $2a(a0)
	bne.s loc_204d3a
	move.w $14(a0),d0
	bmi.s loc_204d04
	bclr.b #$0,$22(a0)
	beq.s loc_204cec
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204cec:
	cmp.w d6,d0
	bge.s loc_204cf8
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204cf8
	move.w d6,d0
loc_204cf8:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204d04:
	add.w d4,d0
	bcc.s loc_204d0c
	move.w #$80,d0
loc_204d0c:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204d3a
	cmpi.w #$fc00,d0
	bgt.s loc_204d3a
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20230a).l
loc_204d3a:
	rts

sub_204d3c:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204e78
	tst.w $3e(a0)
	bne.s loc_204d74
	btst.b #$2,($f602).w
	beq.s loc_204d68
	bsr.w sub_204eae
loc_204d68:
	btst.b #$3,($f602).w
	beq.s loc_204d74
	bsr.w sub_204ed2
loc_204d74:
	tst.b $2a(a0)
	beq.w loc_204e1e
	move.w #$32,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204d94
	asr.w #$1,d2
	sub.w d2,d1
loc_204d94:
	btst.b #$0,$22(a0)
	beq.s loc_204da0
	neg.w d0
	neg.w d1
loc_204da0:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204db6
	cmp.w d0,d1
	ble.s loc_204dbc
	bra.s loc_204dba
loc_204db6:
	cmp.w d1,d0
	ble.s loc_204dbc
loc_204dba:
	move.w d1,d0
loc_204dbc:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204df0
	rts
loc_204dca:
	move.w #$ab,d0
	jsr (sub_20230a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204e46
loc_204df0:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204dca
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20230a).l
	btst.b #$0,$22(a0)
	bne.s loc_204e16
	bsr.w sub_204ed2
	bra.s loc_204e1e
loc_204e16:
	bsr.w sub_204eae
	bra.s loc_204e1e
	dc.b $4e,$75
loc_204e1e:
	move.w $14(a0),d0
	beq.s loc_204e40
	bmi.s loc_204e34
	sub.w d5,d0
	bcc.s loc_204e2e
	move.w #$0,d0
loc_204e2e:
	move.w d0,$14(a0)
	bra.s loc_204e40
loc_204e34:
	add.w d5,d0
	bcc.s loc_204e3c
	move.w #$0,d0
loc_204e3c:
	move.w d0,$14(a0)
loc_204e40:
	tst.w $14(a0)
	bne.s loc_204e78
loc_204e46:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e62
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_204e72
loc_204e62:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204e72:
	move.b #$5,$1c(a0)
loc_204e78:
	move.b $26(a0),d0
	jsr (sub_20080e).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204e9c
	move.w #$1000,d1
loc_204e9c:
	cmpi.w #$f000,d1
	bge.s loc_204ea6
	move.w #$f000,d1
loc_204ea6:
	move.w d1,$10(a0)
	bra.w loc_204be4

sub_204eae:
	move.w $14(a0),d0
	beq.s loc_204eb6
	bpl.s loc_204ec4
loc_204eb6:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ec4:
	sub.w d4,d0
	bcc.s loc_204ecc
	move.w #$ff80,d0
loc_204ecc:
	move.w d0,$14(a0)
	rts

sub_204ed2:
	move.w $14(a0),d0
	bmi.s loc_204ee6
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ee6:
	add.w d4,d0
	bcc.s loc_204eee
	move.w #$80,d0
loc_204eee:
	move.w d0,$14(a0)
	rts

sub_204ef4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	tst.w ($ff1506).l
	bne.s loc_204f22
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204f1a
	cmpi.w #$840,$8(a0)
	bcs.s loc_204f52
loc_204f1a:
	btst.b #$1,$2c(a0)
	bne.s loc_204f52
loc_204f22:
	btst.b #$2,($f602).w
	beq.s loc_204f3c
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204f3c
	move.w d1,d0
loc_204f3c:
	btst.b #$3,($f602).w
	beq.s loc_204f52
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204f52
	move.w d6,d0
loc_204f52:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204f68
	bcc.s loc_204f64
	addq.w #$4,($f73e).w
loc_204f64:
	subq.w #$2,($f73e).w
loc_204f68:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204f96
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204f96
	bmi.s loc_204f8a
	sub.w d1,d0
	bcc.s loc_204f84
	move.w #$0,d0
loc_204f84:
	move.w d0,$10(a0)
	rts
loc_204f8a:
	sub.w d1,d0
	bcs.s loc_204f92
	move.w #$0,d0
loc_204f92:
	move.w d0,$10(a0)
loc_204f96:
	rts
	.incbin 20376, 48

sub_204fc8:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_20501c
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ff6
	addi.w #$38,d0
loc_204ff6:
	cmp.w d1,d0
	bls.s loc_20501c
loc_204ffa:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_20500a
	rts
loc_20500a:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2070d8
	move.b #$6,$24(a0)
	rts
loc_20501c:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ffa

sub_205034:
	tst.b ($f7ca).w
	bne.s loc_20505a
	move.w $14(a0),d0
	bpl.s loc_205042
	neg.w d0
loc_205042:
	cmpi.w #$80,d0
	bcs.s loc_20505a
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20505a
	btst.b #$1,($f602).w
	bne.s sub_20505c
loc_20505a:
	rts

sub_20505c:
	btst.b #$2,$22(a0)
	beq.s loc_205066
	rts
loc_205066:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205082
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205092
loc_205082:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205092:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bne.s loc_2050a4
	move.w #$200,$14(a0)
loc_2050a4:
	rts

sub_2050a6:
	tst.b $2a(a0)
	beq.s loc_2050ae
	rts
loc_2050ae:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_2050c0
	tst.w $14(a0)
	beq.w loc_205182
loc_2050c0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205182
	btst.b #$3,$22(a0)
	beq.s loc_2050dc
	jsr (sub_205d66).l
	beq.s loc_20510c
loc_2050dc:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206abe
	cmpi.w #$6,d1
	blt.w loc_205182
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_205102
	move.w #$380,d2
loc_205102:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_20510c:
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
	bne.s loc_205184
	tst.b ($ff195b).l
	beq.s loc_205166
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_205176
loc_205166:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205176:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205182:
	rts
loc_205184:
	bset.b #$4,$22(a0)
	rts

sub_20518c:
	tst.b $3c(a0)
	beq.s loc_2051be
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_2051a2
	move.w #$fe00,d1
loc_2051a2:
	cmp.w $12(a0),d1
	ble.s loc_2051bc
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_2051bc
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_2051bc:
	rts
loc_2051be:
	rts

sub_2051c0:
	tst.b $2a(a0)
	bne.s loc_2051fa
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2051fa
	move.b $26(a0),d0
	jsr (sub_20080e).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2051fa
	bmi.s loc_2051f6
	tst.w d0
	beq.s loc_2051f4
	add.w d0,$14(a0)
loc_2051f4:
	rts
loc_2051f6:
	add.w d0,$14(a0)
loc_2051fa:
	rts

sub_2051fc:
	tst.b $2a(a0)
	bne.s loc_20523c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20523c
	move.b $26(a0),d0
	jsr (sub_20080e).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205232
	tst.w d0
	bpl.s loc_20522c
	asr.l #$2,d0
loc_20522c:
	add.w d0,$14(a0)
	rts
loc_205232:
	tst.w d0
	bmi.s loc_205238
	asr.l #$2,d0
loc_205238:
	add.w d0,$14(a0)
loc_20523c:
	rts

sub_20523e:
	nop
	tst.b $38(a0)
	bne.s loc_205278
	tst.w $3e(a0)
	bne.s loc_20527a
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205278
	move.w $14(a0),d0
	bpl.s loc_205262
	neg.w d0
loc_205262:
	cmpi.w #$280,d0
	bcc.s loc_205278
	clr.w $14(a0)
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205278:
	rts
loc_20527a:
	subq.w #$1,$3e(a0)
	rts

sub_205280:
	btst.b #$1,$2c(a0)
	bne.s loc_2052a2
	move.b $26(a0),d0
	beq.s loc_2052a2
	bpl.s loc_205298
	addq.b #$2,d0
	bcc.s loc_205296
	moveq #$0,d0
loc_205296:
	bra.s loc_20529e
loc_205298:
	subq.b #$2,d0
	bcc.s loc_20529e
	moveq #$0,d0
loc_20529e:
	move.b d0,$26(a0)
loc_2052a2:
	rts

sub_2052a4:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200aa6).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205388
	cmpi.b #$80,d0
	beq.w loc_2053ea
	cmpi.b #$c0,d0
	beq.w loc_205446
	bsr.w sub_206dd4
	tst.w d1
	bpl.s loc_2052f6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052f6:
	bsr.w sub_206c36
	tst.w d1
	bpl.s loc_205308
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205308:
	bsr.w sub_206ae6
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205386
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_205326
	cmp.b d2,d0
	blt.s loc_205386
loc_205326:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2054a8
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205364
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205356
	asr.w $12(a0)
	bra.s loc_205378
loc_205356:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205364:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205378
	move.w #$fc0,$12(a0)
loc_205378:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205386
	neg.w $14(a0)
loc_205386:
	rts
loc_205388:
	bsr.w sub_206dd4
	tst.w d1
	bpl.s loc_2053a2
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053a2:
	bsr.w sub_206c8e
	tst.w d1
	bpl.s loc_2053bc
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2053ba
	move.w #$0,$12(a0)
loc_2053ba:
	rts
loc_2053bc:
	tst.w $12(a0)
	bmi.s loc_2053e8
	bsr.w sub_206ae6
	tst.w d1
	bpl.s loc_2053e8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2054a8
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2053e8:
	rts
loc_2053ea:
	bsr.w sub_206dd4
	tst.w d1
	bpl.s loc_2053fc
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2053fc:
	bsr.w sub_206c36
	tst.w d1
	bpl.s loc_20540e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20540e:
	bsr.w sub_206c8e
	tst.w d1
	bpl.s loc_205444
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20542e
	move.w #$0,$12(a0)
	rts
loc_20542e:
	move.b d3,$26(a0)
	bsr.w sub_20550c
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205444
	neg.w $14(a0)
loc_205444:
	rts
loc_205446:
	bsr.w sub_206c36
	tst.w d1
	bpl.s loc_205460
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205460:
	bsr.w sub_206c8e
	tst.w d1
	bpl.s loc_20547a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205478
	move.w #$0,$12(a0)
loc_205478:
	rts
loc_20547a:
	tst.w $12(a0)
	bmi.s loc_2054a6
	bsr.w sub_206ae6
	tst.w d1
	bpl.s loc_2054a6
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2054a8
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2054a6:
	rts

sub_2054a8:
	btst.b #$4,$22(a0)
	beq.s loc_2054b2
	nop
loc_2054b2:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2054fe
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2054e8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	bra.s loc_2054f8
loc_2054e8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2054f8:
	move.b #$0,$1c(a0)
loc_2054fe:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20550c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21804, 108
	bsr.w sub_2055b0
	jsr (sub_2037d4).l
	bsr.w sub_204412
	bsr.w sub_2057cc
	jmp (sub_20388c).l

sub_2055b0:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_20561e
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2055e4
	clr.b ($ff1508).l
loc_2055e4:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2055fe
	tst.b ($ff0f01).l
	beq.s loc_2055fe
	move.b #$0,($ff1508).l
	bra.s loc_205618
loc_2055fe:
	jsr (sub_2078d4).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_20561e
loc_205618:
	move.w #$3c,$3a(a0)
loc_20561e:
	rts
	tst.w $3a(a0)
	beq.w loc_20568e
	subq.w #$1,$3a(a0)
	bne.w loc_20568e
	move.w #$1,($ff1502).l
	bsr.w sub_2076c2
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_20565c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20565c
	bclr.b #$1,($ff151c).l
loc_20565c:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20568a
	cmpi.b #$1,($ff152e).l
	bne.s loc_205684
	tst.b ($ff158e).l
	beq.s loc_20568a
	move.b #$1,($ff1522).l
	bra.s loc_20568a
loc_205684:
	clr.b ($ff1522).l
loc_20568a:
	bra.w sub_205dd6
loc_20568e:
	rts

sub_205690:
	rts
	.incbin 22162, 314

sub_2057cc:
	lea (dat_205abc).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2057ee
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2057ee:
	bsr.w sub_205a5e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205866
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205834
	move.b d0,$1e(a0)

sub_205818:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20582c
	bpl.s loc_20582c
	cmpi.b #$fd,d0
	bge.s loc_205836
loc_20582c:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205834:
	rts
loc_205836:
	addq.b #$1,d0
	bne.s loc_205846
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20582c
loc_205846:
	addq.b #$1,d0
	bne.s loc_20585a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20582c
loc_20585a:
	addq.b #$1,d0
	bne.s loc_205864
	move.b $2(a1,d1.w),$1c(a0)
loc_205864:
	rts
loc_205866:
	subq.b #$1,$1e(a0)
	bpl.s loc_205834
	addq.b #$1,d0
	bne.w loc_205920
	tst.b ($ff195b).l
	bne.w loc_2059e8
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20588e
	not.b d0
loc_20588e:
	btst.b #$1,$2c(a0)
	bne.s loc_20589c
	addi.b #$10,d0
	bra.s loc_20589e
loc_20589c:
	addq.b #$8,d0
loc_20589e:
	bpl.s loc_2058a2
	moveq #$3,d1
loc_2058a2:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205994
	move.w $14(a0),d2
	bpl.s loc_2058c0
	neg.w d2
loc_2058c0:
	btst.b #$1,$2c(a0)
	beq.s loc_2058d8
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205cbe).l,a1
	bra.s loc_205902
loc_2058d8:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c98).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205902
	lea (dat_205b3c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205902
	lea (dat_205b34).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205902:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205910
	moveq #$0,d2
loc_205910:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205818
	add.b d3,$1a(a0)
	rts
loc_205920:
	addq.b #$1,d0
	bne.s loc_205990
	move.w $14(a0),d2
	bpl.s loc_20592c
	neg.w d2
loc_20592c:
	lea (dat_205c1a).l,a1
	tst.b ($ff195b).l
	bne.s loc_20596a
	lea (dat_205b4c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20595e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20596a
	lea (dat_205cc6).l,a1
	bra.s loc_20596a
loc_20595e:
	cmpi.w #$600,d2
	bcc.s loc_20596a
	lea (dat_205b44).l,a1
loc_20596a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205974
	moveq #$0,d2
loc_205974:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205818
loc_205990:
	addq.b #$1,d0
	bne.s loc_2059d4
loc_205994:
	move.w $14(a0),d2
	bmi.s loc_20599c
	neg.w d2
loc_20599c:
	addi.w #$800,d2
	bpl.s loc_2059a4
	moveq #$0,d2
loc_2059a4:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205c2c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2059be
	lea (dat_205b54).l,a1
loc_2059be:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205818
loc_2059d4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2059e8:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2059fa
	not.b d0
loc_2059fa:
	addi.b #$10,d0
	bpl.s loc_205a02
	moveq #$0,d1
loc_205a02:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205a30
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205920
loc_205a30:
	move.w $14(a0),d2
	bpl.s loc_205a38
	neg.w d2
loc_205a38:
	lea (dat_205c14).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205a4a
	lea (dat_205c0e).l,a1
loc_205a4a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205a54
	moveq #$0,d2
loc_205a54:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205818

sub_205a5e:
	tst.b ($ff195b).l
	beq.s loc_205a6a
	move.b dat_205a6c(pc,d0.w),d0
loc_205a6a:
	rts
dat_205a6c:
	.incbin 23148, 80
dat_205abc:
	.incbin 23228, 120
dat_205b34:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205b3c:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205b44:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205b4c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205b54:
	.incbin 23380, 186
dat_205c0e:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205c14:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205c1a:
	.incbin 23578, 18
dat_205c2c:
	.incbin 23596, 108
dat_205c98:
	.incbin 23704, 38
dat_205cbe:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205cc6:
	.incbin 23750, 60

sub_205d02:
	tst.b (a0)
	beq.w loc_205d64
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205d64
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205d64
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205d36:
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
loc_205d50:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205d50
	dbf d1,loc_205d36
loc_205d64:
	rts

sub_205d66:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205dd0
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
	bne.s loc_205dbe
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205dbe:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205dd0:
	rts
loc_205dd2:
	move.w #$e,d0

sub_205dd6:
	cmpi.w #$67,d0
	bne.s loc_205de4
	move.b #$1,($ff1958).l
loc_205de4:
	move.w d0,($a12010).l
loc_205dea:
	move.w ($a12020).l,d0
	beq.s loc_205dea
	cmp.w ($a12020).l,d0
	bne.s loc_205dea
	move.w #$0,($a12010).l
loc_205e02:
	move.w ($a12020).l,d0
	bne.s loc_205e02
	move.w ($a12020).l,d0
	bne.s loc_205e02
	rts
	dc.b $00,$00

sub_205e16:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205e32
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205e32:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e72
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e74
loc_205e4e:
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
loc_205e72:
	rts
loc_205e74:
	addq.b #$1,d0
	bne.s loc_205e84
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205e4e
loc_205e84:
	addq.b #$1,d0
	bne.s loc_205e98
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205e4e
loc_205e98:
	addq.b #$1,d0
	bne.s loc_205ea2
	move.b $2(a1,d1.w),$1c(a0)
loc_205ea2:
	addq.b #$1,d0
	bne.s loc_205eaa
	addq.b #$2,$24(a0)
loc_205eaa:
	addq.b #$1,d0
	bne.s loc_205eb8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205eb8:
	addq.b #$1,d0
	bne.s loc_205ec0
	addq.b #$2,$25(a0)
loc_205ec0:
	rts
	.incbin 24258, 1992

sub_20668a:
	bclr.b #$7,($ff156b).l
	beq.s loc_2066d8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2066da(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2066ae:
	move.l (a1)+,(a2)+
	dbf d0,loc_2066ae
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2066d8:
	rts
dat_2066da:
	.incbin 26330, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206710(pc,d0.w),d0
	jsr dat_206710(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20670a
	jsr (sub_20388c).l
loc_20670a:
	jmp (sub_20790a).l
dat_206710:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23a3ac,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_2067f2
	cmpi.b #$6,$24(a1)
	bcc.w loc_2067f2
	bsr.w sub_206856
	beq.w loc_2067f2
	tst.b $28(a0)
	bne.s loc_2067a4
	move.w $10(a1),d0
	bpl.s loc_206764
	neg.w d0
loc_206764:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206776
	move.w #$d00,d1
loc_206776:
	cmp.w d1,d0
	bcc.s loc_20677c
	move.w d1,d0
loc_20677c:
	tst.w $10(a1)
	bpl.s loc_206784
	neg.w d0
loc_206784:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2067d4
	neg.w $14(a1)
	bra.s loc_2067d4
loc_2067a4:
	cmpi.b #$2,$28(a0)
	bcc.s loc_2067f4
	move.w $12(a1),d0
	bpl.s loc_2067b4
	neg.w d0
loc_2067b4:
	cmpi.w #$d00,d0
	bcc.s loc_2067be
	move.w #$d00,d0
loc_2067be:
	tst.w $12(a1)
	bpl.s loc_2067c6
	neg.w d0
loc_2067c6:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2067d4:
	bset.b #$2,$22(a1)
	bne.s loc_2067f2
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_2067f2:
	rts
loc_2067f4:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206840
	cmpi.b #$2,$28(a0)
	bne.s loc_206810
	tst.w $12(a1)
	bpl.s loc_2067d4
	bra.s loc_206816
loc_206810:
	tst.w $12(a1)
	bmi.s loc_2067d4
loc_206816:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206828
	btst.l #$2,d1
	beq.s loc_2067d4
	neg.w d0
loc_206828:
	cmpi.b #$2,$28(a0)
	beq.s loc_206836
	bset.b #$1,$22(a1)
loc_206836:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2067d4
loc_206840:
	tst.w $10(a1)
	bmi.s loc_2067d4
	btst.l #$0,d1
	beq.w loc_2067d4
	move.w #$f600,d0
	bra.w loc_2067c6

sub_206856:
	tst.b ($ff1906).l
	bne.s loc_20688a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20688a
	cmpi.w #$50,d0
	bcc.s loc_20688a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20688a
	cmpi.w #$50,d0
	bcc.s loc_20688a
	moveq #$1,d0
	rts
loc_20688a:
	moveq #$0,d0
	rts
loc_20688e:
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
	bne.s loc_206948
	move.b ($ff1593).l,($ff195b).l
loc_206948:
	tst.b ($ff1522).l
	bpl.s loc_20695e
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20695e:
	rts

sub_206960:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_20688e
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
	bne.s loc_206a1a
	move.b ($ff1591).l,($ff195b).l
loc_206a1a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206a3c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206a3c:
	tst.b ($ff1522).l
	bpl.s loc_206a52
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206a52:
	rts

sub_206a54:
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
	bpl.s loc_206a90
	move.b d1,d0
	bpl.s loc_206a8a
	subq.b #$1,d0
loc_206a8a:
	addi.b #$20,d0
	bra.s loc_206a9a
loc_206a90:
	move.b d1,d0
	bpl.s loc_206a96
	addq.b #$1,d0
loc_206a96:
	addi.b #$1f,d0
loc_206a9a:
	andi.b #$c0,d0
	beq.w loc_206b6a
	cmpi.b #$80,d0
	beq.w loc_206d06
	andi.b #$38,d1
	bne.s loc_206ab2
	addq.w #$8,d2
loc_206ab2:
	cmpi.b #$40,d0
	beq.w loc_206ddc
	bra.w loc_206c3e

sub_206abe:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206d64
	cmpi.b #$80,d0
	beq.w sub_206c8e
	cmpi.b #$c0,d0
	beq.w loc_206bce

sub_206ae6:
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
loc_206b4a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206b58
	move.b ($f768).w,d3
	exg d0,d1
loc_206b58:
	btst.l #$0,d3
	beq.s loc_206b60
	move.b d2,d3
loc_206b60:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206b6a:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201164).l
	move.b #$0,d2
loc_206b86:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b92
	move.b d2,d3
loc_206b92:
	rts

sub_206b94:
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
	jsr (sub_201164).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206bcc
	move.b #$0,d3
loc_206bcc:
	rts
loc_206bce:
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
	bra.w loc_206b4a

sub_206c36:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c3e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012d4).l
	move.b #$c0,d2
	bra.w loc_206b86
loc_206c5e:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2012d4).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c8c
	move.b #$c0,d3
loc_206c8c:
	rts

sub_206c8e:
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
	bra.w loc_206b4a

sub_206cfe:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206d06:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201164).l
	move.b #$80,d2
	bra.w loc_206b86

sub_206d2a:
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
	beq.s loc_206d62
	move.b #$80,d3
loc_206d62:
	rts
loc_206d64:
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
	bra.w loc_206b4a

sub_206dd4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ddc:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2012d4).l
	move.b #$40,d2
	bra.w loc_206b86
loc_206e00:
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
	beq.s loc_206e2e
	move.b #$40,d3
loc_206e2e:
	rts

sub_206e30:
	btst.b #$6,$2c(a0)
	beq.s loc_206e3c
	moveq #$0,d0
	rts
loc_206e3c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206e60
	addi.w #$c,d3
	moveq #$a,d5
loc_206e60:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206e6e:
	tst.b $1(a1)
	bpl.s loc_206e7a
	move.b $20(a1),d0
	bne.s loc_206e86
loc_206e7a:
	lea $40(a1),a1
	dbf d6,loc_206e6e
	moveq #$0,d0
	rts
loc_206e86:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20720e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206eae
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206eb4
	bra.w loc_206e7a
loc_206eae:
	cmp.w d4,d0
	bhi.w loc_206e7a
loc_206eb4:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206ecc
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206ed2
	bra.w loc_206e7a
loc_206ecc:
	cmp.w d5,d0
	bhi.w loc_206e7a
loc_206ed2:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206f46
	cmpi.b #$c0,d1
	beq.w loc_207130
	tst.b d1
	bmi.w sub_207010
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206f0a
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206f08
	addq.b #$2,$24(a1)
loc_206f08:
	rts
loc_206f0a:
	tst.w $12(a0)
	bpl.s loc_206f34
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206f44
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206f44
	addq.b #$4,$25(a1)
	rts
loc_206f34:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206f44
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206f44:
	rts

sub_206f46:
	tst.b ($ff1521).l
	bne.s loc_206f60
	tst.b ($ff151f).l
	bne.s loc_206f60
	cmpi.b #$2,$1c(a0)
	bne.w sub_207010
loc_206f60:
	tst.b $21(a1)
	beq.s loc_206f8a
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206f88
	bset.b #$7,$22(a1)
loc_206f88:
	rts
loc_206f8a:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206fa2
	moveq #$6,d0
loc_206fa2:
	move.w d0,$3e(a1)
	move.w dat_207002(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206fbc
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206fbc:
	bsr.w sub_20ae8e
	move.w #$96,d0
	jsr (sub_20230a).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206ff2
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206ffa
	neg.w $12(a0)
	rts
loc_206ff2:
	addi.w #$100,$12(a0)
	rts
loc_206ffa:
	subi.w #$100,$12(a0)
	rts
dat_207002:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207010:
	tst.b ($ff1521).l
	bne.s loc_207020
	tst.b ($ff151f).l
	beq.s loc_207024
loc_207020:
	moveq #$ffffffff,d0
	rts
loc_207024:
	nop
	tst.w $30(a0)
	bne.s loc_207020
	movea.l a1,a2
loc_20702e:
	clr.b $2a(a0)
	andi.b #$e7,$2c(a0)
	clr.w $3e(a0)
	tst.b ($ff151e).l
	bne.s loc_207068
	tst.w ($ff1512).l
	beq.w loc_2070ce
	jsr (sub_2078d4).l
	bne.s loc_207068
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207068:
	bclr.b #$0,($ff151e).l
	bne.s loc_20707a
	move.b #$0,($ff156f).l
loc_20707a:
	move.b #$4,$24(a0)
	bsr.w sub_2054a8
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2070aa
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2070aa:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2070b8
	neg.w $10(a0)
loc_2070b8:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2070ce:
	tst.w ($ff1588).l
	bne.w loc_207068

sub_2070d8:
	tst.w ($ff1906).l
	bne.s loc_20712c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2054a8
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
loc_20712c:
	moveq #$ffffffff,d0
	rts
loc_207130:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2071b8
	cmpi.b #$23,d1
	beq.w loc_2071b8
	cmpi.b #$38,d1
	beq.w loc_207200
	cmpi.b #$3a,d1
	beq.w loc_207200
	cmpi.b #$3b,d1
	beq.w loc_207200
	tst.b ($f7aa).w
	beq.w loc_2071b6
	cmpi.b #$1,($f7aa).w
	beq.s loc_207180
	cmpi.b #$4,($f7aa).w
	beq.s loc_2071a2
	cmpi.b #$5,($f7aa).w
	beq.s loc_2071b0
loc_207180:
	cmpi.b #$3c,d1
	blt.s loc_2071b6
	cmpi.b #$3f,d1
	bgt.s loc_2071b6
	bsr.w sub_206f46
	tst.b $20(a1)
	bne.s loc_20719a
	addq.b #$3,$21(a1)
loc_20719a:
	clr.b $20(a1)
	bra.w loc_2071b8
loc_2071a2:
	cmpi.b #$3f,d1
	beq.s loc_2071c4
	cmpi.b #$3e,d1
	beq.s loc_2071be
	bra.s loc_2071b6
loc_2071b0:
	cmpi.b #$3d,d1
	beq.s loc_2071be
loc_2071b6:
	rts
loc_2071b8:
	addq.b #$1,$21(a1)
	rts
loc_2071be:
	bsr.w sub_207010
	bra.s loc_2071b8
loc_2071c4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2071fe
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2071fe
	neg.w $10(a0)
loc_2071fe:
	rts
loc_207200:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20720c
	addq.b #$1,$21(a1)
loc_20720c:
	rts
dat_20720e:
	.incbin 29198, 126
loc_20728c:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2072a2
	move.l #$4000,(dat_20741c).l
	bra.s loc_2072c2
loc_2072a2:
	addi.l #$2000,(dat_20741c).l
	cmpi.l #$80000,(dat_20741c).l
	bls.s loc_2072c2
	move.l #$80000,(dat_20741c).l
loc_2072c2:
	move.l (dat_20741c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2072d4
	sub.l d0,$c(a0)
loc_2072d4:
	btst.b #$1,($f604).w
	beq.s loc_2072e0
	add.l d0,$c(a0)
loc_2072e0:
	btst.b #$2,($f604).w
	beq.s loc_2072ec
	sub.l d0,$8(a0)
loc_2072ec:
	btst.b #$3,($f604).w
	beq.s loc_2072f8
	add.l d0,$8(a0)
loc_2072f8:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f7c).l
	move.w (a1),($ff194e).l
	lea (dat_207420).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20733a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207334
	move.b #$0,d1
loc_207334:
	move.b d1,($ff1904).l
loc_20733a:
	btst.b #$7,($f605).w
	beq.s loc_20735a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207354
	add.b (a2),d1
loc_207354:
	move.b d1,($ff1904).l
loc_20735a:
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
	beq.s loc_2073e6
	bsr.w sub_2078d4
	bne.s loc_2073e6
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
loc_2073e6:
	btst.b #$4,($f605).w
	beq.s loc_207416
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207416:
	jmp (sub_20388c).l
dat_20741c:
	dc.b $00,$00,$40,$00
dat_207420:
	.incbin 29728, 674

sub_2076c2:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076d0:
	clr.l (a2)+
	dbf d0,loc_2076d0
	rts

sub_2076d8:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2076e6(pc,d0.w),d0
	jmp dat_2076e6(pc,d0.w)
dat_2076e6:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207986).l,a0
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
	bcc.s loc_207724
	moveq #$0,d6
loc_207724:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20772c:
	cmp.w (a0),d6
	bls.s loc_20773e
	tst.b $4(a0)
	bpl.s loc_20773a
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20773a:
	addq.w #$8,a0
	bra.s loc_20772c
loc_20773e:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20775e
loc_20774c:
	cmp.w (a0),d6
	bls.s loc_20775e
	tst.b $4(a0)
	bpl.s loc_20775a
	addq.b #$1,$1(a2)
loc_20775a:
	addq.w #$8,a0
	bra.s loc_20774c
loc_20775e:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207848
	bge.s loc_2077ee
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077ca
loc_207798:
	cmp.w -$8(a0),d6
	bge.s loc_2077ca
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077ae
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077ae:
	bsr.w sub_20786c
	bne.s loc_2077b8
	subq.w #$8,a0
	bra.s loc_207798
loc_2077b8:
	tst.b $4(a0)
	bpl.s loc_2077c8
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077c8:
	addq.w #$8,a0
loc_2077ca:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077d6:
	cmp.w -$8(a0),d6
	bgt.s loc_2077e8
	tst.b -$4(a0)
	bpl.s loc_2077e4
	subq.b #$1,(a2)
loc_2077e4:
	subq.w #$8,a0
	bra.s loc_2077d6
loc_2077e8:
	move.l a0,($f770).w
	rts
loc_2077ee:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207802:
	cmp.w (a0),d6
	bls.s loc_207824
	tst.b $4(a0)
	bpl.s loc_207810
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207810:
	bsr.w sub_20786c
	beq.s loc_207802
	tst.b $4(a0)
	bpl.s loc_207824
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207824:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207844
loc_207832:
	cmp.w (a0),d6
	bls.s loc_207844
	tst.b $4(a0)
	bpl.s loc_207840
	addq.b #$1,$1(a2)
loc_207840:
	addq.w #$8,a0
	bra.s loc_207832
loc_207844:
	move.l a0,($f774).w
loc_207848:
	rts

sub_20784a:
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

sub_20786c:
	bsr.s sub_20784a
	beq.s loc_20787e
	tst.b $4(a0)
	bpl.s loc_207884
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207884
loc_20787e:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207884:
	bsr.w sub_2078d4
	bne.s loc_2078d2
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
	bpl.s loc_2078b4
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078b4:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078c6
	nop
	nop
	nop
	nop
loc_2078c6:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078d2:
	rts

sub_2078d4:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078dc:
	tst.b (a1)
	beq.s loc_2078e8
	lea $40(a1),a1
	dbf d0,loc_2078dc
loc_2078e8:
	rts

sub_2078ea:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207908
loc_2078fc:
	tst.b (a1)
	beq.s loc_207908
	lea $40(a1),a1
	dbf d0,loc_2078fc
loc_207908:
	rts

sub_20790a:
	move.w $8(a0),d0
loc_20790e:
	tst.b $1(a0)
	bmi.s loc_207978
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207978
loc_20792c:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20796e
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207966
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20795e
	moveq #$0,d1
	bra.s loc_207966
loc_20795e:
	cmpi.w #$3,d1
	bcs.s loc_207966
	moveq #$2,d1
loc_207966:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20796e:
	jsr (sub_203938).l
	moveq #$1,d0
	rts
loc_207978:
	btst.b #$7,($ff152e).l
	bne.s loc_20792c
	moveq #$0,d0
	rts
dat_207986:
	.incbin 31110, 4424
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ae8(pc,d0.w),d0
	jsr dat_208ae8(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_208ae8:
	dc.b $00,$0a,$00,$76,$00,$a6,$01,$48
	dc.b $01,$64
	ori.b #$4,$1(a0)
	move.w #$400,$2(a0)
	move.l #$208c7c,$4(a0)
	move.w $8(a0),$2e(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$4,$16(a0)
	addq.b #$2,$24(a0)
	jsr (sub_2078ea).l
	move.b #$4,$0(a1)
	ori.b #$4,$1(a1)
	move.w #$400,$2(a1)
	move.l #$208c7c,$4(a1)
	move.b #$4,$17(a1)
	move.b #$c,$16(a1)
	move.b #$1,$1a(a1)
	move.l a0,$2a(a1)
	move.b #$8,$24(a1)
	lea ($d000).w,a1
	jsr (sub_209490).l
	beq.s loc_208b8c
	bset.b #$0,$2c(a1)
	move.w $8(a0),$8(a1)
	bclr.b #$0,$22(a1)
	move.b #$3a,$1c(a1)
	addq.b #$2,$24(a0)
	move.w #$c00,$10(a0)
loc_208b8c:
	rts
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	move.l $8(a0),d1
	add.l d0,d1
	move.l d1,$8(a0)
	lea ($d000).w,a1
	jsr (sub_209490).l
	move.w ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_208bf2
	bclr.b #$0,$2c(a1)
	move.w #$f980,$12(a1)
	move.w $10(a0),$10(a1)
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	bset.b #$2,$22(a1)
	bclr.b #$5,$22(a1)
	move.b #$2,$1c(a1)
	move.w #$92,d0
	jsr (sub_20230a).l
loc_208bf2:
	move.w $2e(a0),d0
	addi.w #$390,d0
	cmp.w $8(a0),d0
	bcc.s loc_208c2e
	move.w d0,$8(a0)
	addq.b #$2,$24(a0)
	btst.b #$3,$22(a0)
	beq.s loc_208c2e
	bclr.b #$0,$2c(a1)
	move.w $10(a0),$10(a1)
	move.b #$0,$1c(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
loc_208c2e:
	rts
	subq.w #$4,$8(a0)
	move.w $2e(a0),d0
	cmp.w $8(a0),d0
	bcs.s loc_208c4a
	move.w $2e(a0),$8(a0)
	move.b #$2,$24(a0)
loc_208c4a:
	rts
	movea.l $2a(a0),a1
	cmpi.b #$4,$24(a1)
	bcc.s loc_208c7a
	move.w $8(a1),$8(a0)
	subi.w #$18,$8(a0)
	move.w $c(a1),$c(a0)
	subi.w #$10,$c(a0)
	lea ($d000).w,a1
	jmp (sub_209496).l
loc_208c7a:
	rts
	.incbin 35964, 32
	btst.b #$7,($ff152e).l
	beq.s loc_208ce6
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_208ce6
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
	bpl.s loc_208cd6
	moveq #$0,d1
	bra.s loc_208cde
loc_208cd6:
	cmpi.w #$3,d1
	bcs.s loc_208cde
	moveq #$2,d1
loc_208cde:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_208ce6:
	lea ($d000).w,a6
	cmpi.b #$2b,$1c(a6)
	beq.s loc_208d16
	cmpi.b #$6,$24(a6)
	bcc.s loc_208d16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d18(pc,d0.w),d1
	jsr dat_208d18(pc,d1.w)
	cmpi.b #$4,$24(a0)
	bcc.s loc_208d16
	jmp (sub_20790a).l
loc_208d16:
	rts
dat_208d18:
	dc.b $00,$08,$00,$52,$01,$18,$01,$32
	move.l #$23a3ac,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$541,$2(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	andi.b #$7f,d0
	add.w d0,d0
	andi.w #$fe,d0
	lea dat_208fae(pc),a2
	adda.w $0(a2,d0.w),a2
	move.w (a2)+,$3a(a0)
	move.l a2,$3c(a0)
	move.w (a2)+,$36(a0)
	move.w (a2)+,$38(a0)
	cmpi.b #$6,$24(a6)
	bcc.w loc_208e2e
	move.w $8(a6),d0
	sub.w $8(a0),d0
	addi.w #$20,d0
	cmpi.w #$40,d0
	bcc.w loc_208e2e
	move.w $c(a6),d1
	sub.w $c(a0),d1
	addi.w #$30,d1
	cmpi.w #$60,d1
	bcc.w loc_208e2e
	tst.b $2c(a6)
	bne.w loc_208e2e
	cmpi.b #$4,$24(a6)
	bne.s loc_208db6
	subq.b #$2,$24(a6)
	move.w #$78,$30(a6)
loc_208db6:
	addq.b #$2,$24(a0)
	move.b #$81,$2c(a6)
	tst.b $29(a0)
	beq.s loc_208dcc
	bset.b #$6,$2c(a6)
loc_208dcc:
	move.b #$2,$1c(a6)
	move.w #$800,$14(a6)
	bclr.b #$6,$1(a6)
	tst.b $28(a0)
	bpl.s loc_208dea
	bset.b #$6,$1(a6)
loc_208dea:
	cmpi.b #$4,$24(a6)
	bne.s loc_208df6
	subq.b #$2,$24(a6)
loc_208df6:
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
loc_208e2e:
	rts
	move.b #$2,$1c(a6)
	bsr.w sub_208f06
	addq.b #$2,$24(a0)
	move.w #$91,d0
	jsr (sub_20230a).l
	rts
	move.b #$2,$1c(a6)
	addq.l #$4,a7
	subq.b #$1,$2e(a0)
	bpl.s loc_208e9a
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
	bcs.s loc_208e82
	moveq #$0,d1
	bra.s loc_208ef0
loc_208e82:
	move.b d1,$3a(a0)
loc_208e86:
	movea.l $3c(a0),a2
	move.w $0(a2,d1.w),$36(a0)
	move.w $2(a2,d1.w),$38(a0)
	bra.w sub_208f06
loc_208e9a:
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
	bmi.s loc_208ed0
loc_208ece:
	rts
loc_208ed0:
	move.b ($f604).w,d0
	andi.b #$70,d0
	beq.s loc_208ece
	andi.w #$7fff,d1
	add.b d1,d1
	move.b d1,d0
	add.b d0,d0
	add.b d0,d1
	add.b $3b(a0),d1
	move.b d1,$3a(a0)
	bra.s loc_208e86
loc_208ef0:
	andi.w #$7ff,$c(a6)
	clr.b $24(a0)
	clr.b $2c(a6)
	move.w #$2,$24(a0)
	rts

sub_208f06:
	moveq #$0,d0
	move.w $14(a6),d2
	move.w $14(a6),d3
	move.w $36(a0),d0
	add.w $8(a0),d0
	sub.w $8(a6),d0
	bge.s loc_208f22
	neg.w d0
	neg.w d2
loc_208f22:
	moveq #$0,d1
	move.w $38(a0),d1
	add.w $c(a0),d1
	sub.w $c(a6),d1
	bge.s loc_208f36
	neg.w d1
	neg.w d3
loc_208f36:
	cmp.w d0,d1
	bcs.s loc_208f74
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
	beq.s loc_208f60
	swap d0
	divs.w d1,d0
loc_208f60:
	move.w d0,$10(a6)
	move.w d3,$12(a6)
	tst.w d1
	bpl.s loc_208f6e
	neg.w d1
loc_208f6e:
	move.w d1,$2e(a0)
	rts
loc_208f74:
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
	beq.s loc_208f9a
	swap d1
	divs.w d0,d1
loc_208f9a:
	move.w d1,$12(a6)
	move.w d2,$10(a6)
	tst.w d0
	bpl.s loc_208fa8
	neg.w d0
loc_208fa8:
	move.w d0,$2e(a0)
	rts
dat_208fae:
	.incbin 36782, 922

sub_209348:
	btst.b #$3,$22(a0)
	beq.s loc_2093b8
	btst.b #$3,$22(a1)
	beq.s loc_2093b8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2093b8
	tst.b $2a(a1)
	beq.s loc_20937a
	move.w #$ab,d0
	jsr (sub_20230a).l
loc_20937a:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2093a6
	cmpi.b #$17,$1c(a1)
	beq.s loc_2093a6
	bclr.b #$0,$2c(a1)
loc_2093a6:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2093b8
	bclr.b #$1,$22(a1)
loc_2093b8:
	rts

sub_2093ba:
	cmpi.b #$4,$24(a1)
	bne.s loc_2093cc
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2093cc:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20942c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2093ee
	bclr.b #$3,$22(a0)
	bra.w sub_209348
loc_2093ee:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20942c
	tst.b ($ff195b).l
	beq.s loc_209416
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_209426
loc_209416:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_209426:
	move.b #$0,$1c(a1)
loc_20942c:
	bset.b #$3,$22(a1)
	beq.s loc_20944e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_209486
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20944e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_20947a
	cmpi.b #$2,$24(a0)
	beq.s loc_209480
loc_20947a:
	move.w $10(a1),$14(a1)
loc_209480:
	bclr.b #$1,$22(a1)
loc_209486:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_209490:
	move.b #$1,$25(a0)

sub_209496:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20974a
	btst.b #$6,$2c(a1)
	bne.w loc_20974a
	cmpi.b #$6,$24(a1)
	bcc.w loc_20974a
	tst.b $0(a1)
	beq.w loc_20974a
	tst.b $1(a0)
	bpl.w loc_20974a
	tst.b ($ff1906).l
	bne.w loc_20974a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20974a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20974a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209504
	btst.b #$3,$22(a0)
	bne.s loc_209516
	bra.w loc_20974a
loc_209504:
	cmpi.b #$1,$25(a0)
	bne.s loc_209516
	tst.w $12(a1)
	beq.s loc_209516
	bmi.w loc_20974a
loc_209516:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20974a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20974a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_20954c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_20954c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_20955a
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_20955a:
	cmp.w d4,d5
	bcs.w loc_2095ee
	cmpi.b #$1,$25(a0)
	beq.w loc_20974a
	cmpi.b #$a,$0(a0)
	bne.s loc_20957c
	btst.b #$1,$22(a1)
	bne.w loc_20974a
loc_20957c:
	cmpi.b #$4,d5
	bls.w loc_20974a
	bsr.w sub_20979a
	move.l d0,-(a7)
	bsr.w sub_209348
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2095a6
	tst.w $10(a1)
	beq.s loc_2095d6
	bpl.s loc_2095ae
	bra.s loc_2095d6
loc_2095a6:
	tst.w $10(a1)
	beq.s loc_2095d6
	bpl.s loc_2095d6
loc_2095ae:
	bsr.w sub_20975a
	btst.b #$1,$22(a1)
	bne.s loc_2095cc
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2095cc:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2095d6:
	bsr.w sub_209810
	bsr.w sub_20975a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2095ee:
	cmpi.b #$19,$0(a0)
	bne.s loc_209600
	btst.b #$2,$22(a1)
	bne.w loc_20974a
loc_209600:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_209616
	bmi.w loc_2096e6
loc_209616:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_209628
	tst.w $12(a1)
	beq.s loc_209628
	bmi.w loc_20974a
loc_209628:
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
	beq.s loc_209674
	bpl.s loc_209654
	neg.b d0
loc_209654:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a54).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209674
	tst.w $10(a0)
	bpl.s loc_209670
	neg.w d1
loc_209670:
	add.w d1,$8(a1)
loc_209674:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2096de
	tst.w $12(a0)
	bmi.s loc_2096b2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ae6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2096b2
	add.w d1,$c(a1)
	bra.w loc_20974a
loc_2096b2:
	tst.w $12(a0)
	bpl.s loc_2096de
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206cfe).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2096de
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070d8).l
	movem.l (a7)+,a0-a1
	bra.s loc_20974a
loc_2096de:
	bsr.w sub_2093ba
	moveq #$1,d0
	rts
loc_2096e6:
	cmpi.b #$1,$25(a0)
	beq.s loc_20974a
	cmpi.b #$9,$0(a0)
	beq.s loc_20974a
	cmpi.b #$a,$0(a0)
	bne.s loc_209710
	cmpi.b #$2,$25(a0)
	beq.s loc_209730
	btst.b #$1,$1(a0)
	bne.s loc_209730
	bra.s loc_20974a
loc_209710:
	btst.b #$1,$22(a1)
	bne.s loc_209730
	tst.w $12(a0)
	beq.s loc_209730
	bmi.s loc_209730
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070d8).l
	movem.l (a7)+,a0-a1
loc_209730:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209810
	bsr.w sub_209348
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20974a:
	bsr.w sub_209810
	bsr.w sub_209348
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_20975a:
	tst.w $10(a0)
	beq.s loc_209798
	cmpi.b #$a,$0(a0)
	beq.s loc_209798
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_209774
	neg.b d0
loc_209774:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206a54).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209798
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070d8).l
	movem.l (a7)+,a0-a1
loc_209798:
	rts

sub_20979a:
	cmpi.b #$a,$0(a0)
	bne.s loc_2097aa
	move.b #$0,$20(a1)
	rts
loc_2097aa:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2097fe
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20980e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2097cc
	tst.w $10(a2)
	beq.s loc_20980e
loc_2097cc:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2097de
	cmp.w $8(a2),d1
	bcs.s loc_20980e
	bra.s loc_2097e4
loc_2097de:
	cmp.w $8(a2),d1
	bcc.s loc_20980e
loc_2097e4:
	cmpi.b #$15,$0(a0)
	beq.s loc_20980e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2070d8).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2097fe:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20980e:
	rts

sub_209810:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20982a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20982a
	move.b #$0,$20(a1)
loc_20982a:
	rts
	.incbin 38956, 374
loc_2099a2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099b0(pc,d0.w),d0
	jmp dat_2099b0(pc,d0.w)
dat_2099b0:
	.incbin 39344, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2099a2
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209a06
	tst.b $1(a0)
	bpl.s loc_209a0e
loc_209a06:
	move.w dat_209a60(pc,d0.w),d1
	jsr dat_209a60(pc,d1.w)
loc_209a0e:
	bsr.w sub_20388c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209a40
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209a40:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203938
	rts
dat_209a60:
	.incbin 39520, 26
	addq.b #$2,$24(a0)
	move.l #$209de2,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209ad0
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209de8,$4(a0)
	bra.s loc_209b12
loc_209ad0:
	btst.l #$3,d0
	beq.s loc_209afe
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209e32,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c6a6).l
	move.l (a7)+,d0
	bra.s loc_209b12
loc_209afe:
	btst.b #$1,$1(a0)
	beq.s loc_209b12
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209b12:
	btst.l #$1,d0
	beq.s loc_209b1e
	bset.b #$5,$2(a0)
loc_209b1e:
	andi.w #$2,d0
	move.w dat_209b2a(pc,d0.w),$30(a0)
	rts
dat_209b2a:
	dc.b $f0,$00,$f6,$00

sub_209b2e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209496).l
	tst.b $1(a0)
	bpl.s loc_209b4a
	lea ($d000).w,a1
	bsr.s sub_209b2e
	bne.s loc_209b4c
loc_209b4a:
	rts
loc_209b4c:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20230a).l
	.incbin 39806, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ece(pc,d0.w),d1
	jmp dat_209ece(pc,d1.w)
dat_209ece:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209ed8:
	.incbin 40664, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209f30
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209f28
	moveq #$0,d1
	bra.s loc_209f30
loc_209f28:
	cmpi.w #$3,d1
	bcs.s loc_209f30
	moveq #$2,d1
loc_209f30:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209f4c
	moveq #$6,d1
loc_209f4c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209ed8).l,a1
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
	beq.s loc_209f9c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f94
	moveq #$0,d0
	bra.s loc_209f9c
loc_209f94:
	cmpi.w #$3,d0
	bcs.s loc_209f9c
	moveq #$2,d0
loc_209f9c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a06a
	dbf d0,loc_209f9c
	bclr.b #$7,(a2)
	bra.s loc_209ff2
loc_209fae:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209fda
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209fd2
	moveq #$0,d0
	bra.s loc_209fda
loc_209fd2:
	cmpi.w #$3,d0
	bcs.s loc_209fda
	moveq #$2,d0
loc_209fda:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20a06a
	dbf d0,loc_209fda
	bclr.b #$7,(a2)
	bsr.w sub_2078ea
	bne.w loc_20a076
loc_209ff2:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a33c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a048
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20a048
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20a048:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20a06a:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209fae
loc_20a076:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a09c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a094
	moveq #$0,d0
	bra.s loc_20a09c
loc_20a094:
	cmpi.w #$3,d0
	bcs.s loc_20a09c
	moveq #$2,d0
loc_20a09c:
	lea $1(a2),a3
loc_20a0a0:
	btst.b #$0,-(a3)
	bne.w sub_203938
	dbf d0,loc_20a0a0
	tst.b $1(a0)
	bmi.s loc_20a0d0
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a14a
loc_20a0d0:
	tst.w ($ff190e).l
	bne.s loc_20a0e0
	move.b ($ff1913).l,$1a(a0)
loc_20a0e0:
	bra.w sub_20388c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a14e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a130
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a128
	moveq #$0,d1
	bra.s loc_20a130
loc_20a128:
	cmpi.w #$3,d1
	bcs.s loc_20a130
	moveq #$2,d1
loc_20a130:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a334).l,a1
	bsr.w sub_205e16
	bra.w sub_20388c
loc_20a14a:
	bra.w sub_203938

sub_20a14e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a19e
	bset.b #$1,($ff150d).l
	beq.s loc_20a188
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a19e
	bset.b #$2,($ff150d).l
	bne.s loc_20a19e
loc_20a188:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205dd6).l
loc_20a19e:
	jmp (sub_20230a).l
	.incbin 41380, 400
dat_20a334:
	.incbin 41780, 402
loc_20a4c6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4f4(pc,d0.w),d0
	jsr dat_20a4f4(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a4f2
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a4ec
	btst.b #$0,($ff1505).l
	bne.s loc_20a4f2
loc_20a4ec:
	jmp (sub_20388c).l
loc_20a4f2:
	rts
dat_20a4f4:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20aace,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a528
	move.b #$13,$1a(a0)
loc_20a528:
	rts
loc_20a52a:
	tst.b ($ff0f01).l
	beq.s loc_20a538
	jmp (sub_203938).l
loc_20a538:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a4c6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a55c(pc,d0.w),d0
	jsr dat_20a55c(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20a55c:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aace,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a5aa
	tst.b $29(a0)
	bne.s loc_20a5aa
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a5aa:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a676
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a5d2
	addq.b #$2,$1a(a0)
loc_20a5d2:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a5e6
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a5e6:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a64c
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a618
	tst.b $29(a0)
	beq.s loc_20a610
	tst.b ($ff1956).l
	beq.s loc_20a64c
	bra.s loc_20a618
loc_20a610:
	tst.b ($ff1956).l
	bne.s loc_20a64c
loc_20a618:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a676
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a646
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a646:
	jsr (sub_205dd6).l
loc_20a64c:
	rts
	.incbin 42574, 40

sub_20a676:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a6ae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a6a6
	moveq #$0,d1
	bra.s loc_20a6ae
loc_20a6a6:
	cmpi.w #$3,d1
	bcs.s loc_20a6ae
	moveq #$2,d1
loc_20a6ae:
	add.w d1,d0
	rts

sub_20a6b2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a6d4
	tst.b ($ff1956).l
	beq.s loc_20a6cc
	tst.b $29(a0)
	bne.s loc_20a6d4
	rts
loc_20a6cc:
	tst.b $29(a0)
	beq.s loc_20a6d4
	rts
loc_20a6d4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209496).l
	tst.b $28(a0)
	bne.s loc_20a6f6
	tst.b ($ff0f01).l
	beq.s loc_20a6f6
	jmp (sub_20790a).l
loc_20a6f6:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a52a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a70e(pc,d0.w),d1
	jmp dat_20a70e(pc,d1.w)
dat_20a70e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aace,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a758
	tst.b $29(a0)
	bne.s loc_20a758
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a758:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a676
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a784
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a784:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a7de
	move.b $25(a0),d0
	beq.s loc_20a7be
	bsr.w sub_2037d4
	jsr (sub_206b94).l
	tst.w d1
	bpl.w loc_20a7cc
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a7cc
loc_20a7be:
	tst.b $1(a0)
	bpl.s loc_20a7cc
	lea ($d000).w,a1
	bsr.w sub_20a6b2
loc_20a7cc:
	tst.w ($ff190e).l
	bne.s loc_20a7de
	lea (dat_20aa46).l,a1
	bsr.w sub_205e16
loc_20a7de:
	bsr.w sub_20388c
	jmp (sub_20790a).l
	.incbin 42984, 606
dat_20aa46:
	.incbin 43590, 586
loc_20ac90:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aca4(pc,d0.w),d0
	jsr dat_20aca4(pc,d0.w)
	jmp (sub_20388c).l
dat_20aca4:
	.incbin 44196, 146
	tst.b $28(a0)
	bmi.w loc_20ac90
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad4c(pc,d0.w),d0
	jmp dat_20ad4c(pc,d0.w)
dat_20ad4c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ade6,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20ad7c
	move.b #$3,$1a(a0)
	bra.s loc_20ad9c
loc_20ad7c:
	tst.w ($ff1588).l
	beq.s loc_20ad8a
	move.b #$2,$1a(a0)
loc_20ad8a:
	tst.b $28(a0)
	beq.s loc_20ad9c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ad9c:
	tst.b $28(a0)
	bne.s loc_20ade0
	tst.b $29(a0)
	beq.s loc_20adcc
	tst.w ($ff1512).l
	beq.s loc_20adb8
	bclr.b #$5,$2(a0)
	bra.s loc_20ade0
loc_20adb8:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ade0
	eori.b #$20,$2(a0)
	bra.s loc_20ade0
loc_20adcc:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ade0
	move.b #$2,$1a(a0)
loc_20ade0:
	jmp (sub_20388c).l
	.incbin 44518, 168

sub_20ae8e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20aeaa
	move.l d1,(a3)
loc_20aeaa:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20aed4
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205dd6).l
loc_20aed4:
	rts
loc_20aed6:
	tst.w ($ff1588).l
	beq.s loc_20af2c
	bsr.w sub_20b128
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
	lea (dat_20b288).l,a2
	moveq #$2,d6
	bsr.w sub_20b2e0
	bra.w loc_20af86
loc_20af2c:
	tst.b ($ff1511).l
	beq.s loc_20af50
	bpl.s loc_20af3a
	bsr.w sub_20b0d2
loc_20af3a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b1c2
loc_20af50:
	tst.b ($ff150f).l
	beq.s loc_20af86
	bpl.s loc_20af5e
	bsr.w sub_20b0be
loc_20af5e:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20af82
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20af82:
	bsr.w sub_20b1b8
loc_20af86:
	tst.w ($ff1588).l
	bne.w loc_20b032
	tst.b ($ff1510).l
	beq.w loc_20b032
	tst.w ($f63a).w
	bne.w loc_20b032
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b090
	tst.b ($f7cc).w
	bne.s loc_20afdc
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20afdc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20afdc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20afdc
	move.b #$9,(a1)
loc_20afdc:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b2ce
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b2d8
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20b02e
	move.w #$63,d1
loc_20b02e:
	bsr.w sub_20b2d8
loc_20b032:
	tst.b ($ff150e).l
	beq.s loc_20b044
	clr.b ($ff150e).l
	bsr.w sub_20b2ae
loc_20b044:
	tst.b ($f7d6).w
	beq.s loc_20b08e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b064
	move.l #$6d400001,d0
loc_20b064:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b146
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20b084
	move.l #$6e800001,d0
loc_20b084:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b146
loc_20b08e:
	rts
loc_20b090:
	btst.b #$7,($ff152e).l
	bne.s loc_20b0bc
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2070d8
	move.b #$1,($ff150c).l
loc_20b0bc:
	rts

sub_20b0be:
	move.l #$73600002,($c00004).l
	lea dat_20b124(pc),a2
	move.w #$2,d2
	bra.s loc_20b0ee

sub_20b0d2:
	lea ($c00000).l,a6
	bsr.w sub_20b2ae
	move.l #$70600002,($c00004).l
	lea dat_20b11c(pc),a2
	move.w #$6,d2
loc_20b0ee:
	lea (dat_2330bc).l,a1
loc_20b0f4:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b110
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b104:
	move.l (a3)+,(a6)
	dbf d1,loc_20b104
loc_20b10a:
	dbf d2,loc_20b0f4
	rts
loc_20b110:
	move.l #$0,(a6)
	dbf d1,loc_20b110
	bra.s loc_20b10a
dat_20b11c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b124:
	dc.b $ff,$ff,$00,$00

sub_20b128:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b2a4
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b2a4

sub_20b146:
	lea (dat_20b280).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b156:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b15a:
	sub.l d3,d1
	bcs.s loc_20b162
	addq.w #$1,d2
	bra.s loc_20b15a
loc_20b162:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b16c
	move.w #$1,d4
loc_20b16c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b178
	tst.w d6
	bne.s loc_20b1aa
loc_20b178:
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
loc_20b19e:
	addi.l #$400000,d0
	dbf d6,loc_20b156
	rts
loc_20b1aa:
	moveq #$f,d5
loc_20b1ac:
	move.l #$0,(a6)
	dbf d5,loc_20b1ac
	bra.s loc_20b19e

sub_20b1b8:
	lea (dat_20b288).l,a2
	moveq #$2,d6
	bra.s loc_20b1ca

sub_20b1c2:
	lea (dat_20b27c).l,a2
	moveq #$5,d6
loc_20b1ca:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b1d2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1d6:
	sub.l d3,d1
	bcs.s loc_20b1de
	addq.w #$1,d2
	bra.s loc_20b1d6
loc_20b1de:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b1e8
	move.w #$1,d4
loc_20b1e8:
	tst.w d4
	beq.s loc_20b216
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
loc_20b216:
	addi.l #$400000,d0
	dbf d6,loc_20b1d2
	rts
	.incbin 45602, 90
dat_20b27c:
	dc.b $00,$01,$86,$a0
dat_20b280:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b288:
	dc.b $00,$00,$00,$64
dat_20b28c:
	dc.b $00,$00,$00,$0a
dat_20b290:
	dc.b $00,$00,$00,$01
dat_20b294:
	.incbin 45716, 16

sub_20b2a4:
	moveq #$3,d6
	lea (dat_20b294).l,a2
	bra.s sub_20b2e0

sub_20b2ae:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b2c4
	moveq #$9,d1
loc_20b2c4:
	lea (dat_20b290).l,a2
	moveq #$0,d6
	bra.s sub_20b2e0

sub_20b2ce:
	lea (dat_20b290).l,a2
	moveq #$0,d6
	bra.s sub_20b2e0

sub_20b2d8:
	lea (dat_20b28c).l,a2
	moveq #$1,d6

sub_20b2e0:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b2e8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b2ec:
	sub.l d3,d1
	bcs.s loc_20b2f4
	addq.w #$1,d2
	bra.s loc_20b2ec
loc_20b2f4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b2fe
	move.w #$1,d4
loc_20b2fe:
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
	dbf d6,loc_20b2e8
	rts
	.incbin 45876, 2626
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd84(pc,d0.w),d0
	jmp dat_20bd84(pc,d0.w)
dat_20bd84:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205dd6).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20be5a,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20bde0
	tst.b ($ff1508).l
	beq.s loc_20bde8
	move.l #$20be5e,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20bde8
loc_20bde0:
	tst.b ($ff1508).l
	bne.s loc_20bdf8
loc_20bde8:
	bset.b #$7,($ff156b).l
	jsr (sub_2078d4).l
	beq.s loc_20bdfe
loc_20bdf8:
	jmp (sub_203938).l
loc_20bdfe:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20be40
	move.w #$6e,d0
	jmp (sub_205dd6).l
loc_20be40:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20be54
	bge.s loc_20be50
	neg.w d0
loc_20be50:
	add.w d0,$8(a0)
loc_20be54:
	jmp (sub_20388c).l
	.incbin 48730, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bea0(pc,d0.w),d0
	jmp dat_20bea0(pc,d0.w)
dat_20bea0:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20c59e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20c55e).l,a2
loc_20beee:
	jsr (sub_2078d4).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20c59e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20bf40
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20bf40:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20beee
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bf68
	bge.s loc_20bf5e
	neg.w d0
loc_20bf5e:
	add.w d0,$a(a0)
	jmp (sub_20388c).l
loc_20bf68:
	addq.b #$4,$24(a0)
	jmp (sub_20388c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bf8c
	bge.s loc_20bf82
	neg.w d0
loc_20bf82:
	add.w d0,$8(a0)
	jmp (sub_20388c).l
loc_20bf8c:
	addq.b #$4,$24(a0)
	jmp (sub_20388c).l
	tst.b $1e(a0)
	beq.s loc_20bfa6
	subq.b #$1,$1e(a0)
	jmp (sub_20388c).l
loc_20bfa6:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20bfc0
	bge.s loc_20bfb6
	neg.w d0
loc_20bfb6:
	add.w d0,$a(a0)
	jmp (sub_20388c).l
loc_20bfc0:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2024d4).l
	tst.b $1e(a0)
	beq.s loc_20bfe2
	subq.b #$1,$1e(a0)
	jmp (sub_20388c).l
loc_20bfe2:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20bffc
	bge.s loc_20bff2
	neg.w d0
loc_20bff2:
	add.w d0,$8(a0)
	jmp (sub_20388c).l
loc_20bffc:
	jmp (sub_203938).l
	tst.l ($f680).w
	bne.s loc_20c016
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203938).l
loc_20c016:
	rts
	.incbin 49176, 1350
dat_20c55e:
	.incbin 50526, 328

sub_20c6a6:
	rts
	dc.b $4a,$28,$00,$28,$6b,$00,$01,$32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c6ca(pc,d0.w),d0
	jsr dat_20c6ca(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20c6ca:
	.incbin 50890, 1104
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb38(pc,d0.w),d0
	jsr dat_20cb38(pc,d0.w)
	jsr (sub_20388c).l
	move.w $36(a0),d0
	jmp (loc_20790e).l
dat_20cb38:
	dc.b $00,$16,$00,$4c
loc_20cb3c:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209490).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20cc1c,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$18,$19(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20cb94(pc,d0.w),d0
	jmp dat_20cb94(pc,d0.w)
dat_20cb94:
	dc.b $00,$2a,$00,$4a,$00,$08,$00,$1a
	bsr.w sub_20cc00
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cb3c
	bsr.w sub_20cc00
	add.w $32(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20cb3c
	move.l $8(a0),-(a7)
	bsr.w sub_20cc00
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cb3c
	move.l $8(a0),-(a7)
	bsr.w sub_20cc00
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	bra.w loc_20cb3c

sub_20cc00:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_20080e).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
	.incbin 52252, 490
	tst.b $24(a0)
	bne.s loc_20ce4e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$39a,$2(a0)
	move.l #$20cec6,$4(a0)
	move.b #$8,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20ce4e:
	move.b $3f(a0),$3e(a0)
	lea ($d000).w,a1
	jsr (sub_209496).l
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20ce6e
	bclr.b #$7,(a4)
	bra.s loc_20ce76
loc_20ce6e:
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20ce76:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20cea2
	tst.b $1(a0)
	bpl.s loc_20ce8e
	move.w #$bf,d0
	jsr (sub_20230a).l
loc_20ce8e:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	addq.w #$4,$c(a0)
	addq.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20cea2:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20ceba
	subq.w #$8,$c(a1)
	subq.w #$4,$c(a0)
	subq.b #$1,$1a(a0)
	addq.b #$4,$16(a0)
loc_20ceba:
	jsr (sub_20388c).l
	jmp (sub_20790a).l
	.incbin 52934, 28
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cefc(pc,d0.w),d0
	jsr dat_20cefc(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20cefc:
	dc.b $00,$1a,$00,$7e,$00,$ba,$01,$00

sub_20cf04:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209496).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d052,$4(a0)
	move.w $c(a0),$32(a0)
	move.w #$3a0,$2(a0)
	move.b #$20,$16(a0)
	move.b #$8,$19(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20cf68
	move.w #$330,$2(a0)
	move.b #$20,$16(a0)
	move.b #$20,$19(a0)
	move.b #$1,$1a(a0)
loc_20cf68:
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$30(a0)
	move.b #$ff,$3c(a0)
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20cf90
	clr.b $3c(a0)
loc_20cf90:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	bsr.w sub_20d014
	bsr.w sub_20cf04
	cmpi.b #$40,$3a(a0)
	bne.s loc_20cfb4
	addq.b #$2,$24(a0)
loc_20cfb4:
	rts
	.incbin 53174, 94

sub_20d014:
	bsr.w sub_20d02a
	moveq #$0,d0
	move.b $3a(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20d02a:
	tst.b $3c(a0)
	beq.s loc_20d03c
	subq.b #$4,$3a(a0)
	bcc.s loc_20d050
	clr.b $3a(a0)
	bra.s loc_20d050
loc_20d03c:
	addq.b #$4,$3a(a0)
	move.b $3a(a0),d0
	cmpi.b #$40,d0
	bcs.s loc_20d050
	move.b #$40,$3a(a0)
loc_20d050:
	rts
	.incbin 53330, 38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d092(pc,d0.w),d0
	jsr dat_20d092(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20d092:
	dc.b $00,$1c,$00,$4c,$00,$82,$00,$9a
	dc.b $00,$cc
loc_20d09c:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209496).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$44e8,$2(a0)
	move.l #$20d1e0,$4(a0)
	move.b #$50,$16(a0)
	move.b #$30,$19(a0)
	move.w $c(a0),$32(a0)
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d0ee
	neg.w d0
loc_20d0ee:
	cmpi.w #$c0,d0
	bcc.s loc_20d110
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcs.s loc_20d110
	cmpi.w #$88,d0
	bcc.s loc_20d110
	clr.b $3c(a0)
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
loc_20d110:
	bra.w loc_20d09c
	clr.b $3c(a0)
	jsr sub_20d17a(pc)
	cmpi.b #$2,$3b(a0)
	bne.s loc_20d128
	addq.b #$2,$24(a0)
loc_20d128:
	bra.w loc_20d09c
	.incbin 53548, 78

sub_20d17a:
	lea (dat_20d1d0).l,a2
	tst.b $3c(a0)
	beq.s loc_20d18c
	lea (dat_20d1d8).l,a2
loc_20d18c:
	tst.b $3a(a0)
	bne.s loc_20d1b0
	moveq #$0,d0
	move.b $3b(a0),d0
	asl.w #$2,d0
	lea $0(a2,d0.w),a2
	move.b (a2)+,$3a(a0)
	move.b (a2)+,d0
	ext.w d0
	move.w d0,$3e(a0)
	move.w (a2)+,$30(a0)
	rts
loc_20d1b0:
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	move.w $3e(a0),d0
	add.w d0,$12(a0)
	subq.b #$1,$3a(a0)
	bne.s loc_20d1ce
	addq.b #$1,$3b(a0)
loc_20d1ce:
	rts
dat_20d1d0:
	dc.b $40,$08,$00,$00,$40,$f8,$02,$00
dat_20d1d8:
	.incbin 53720, 86
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d248(pc,d0.w),d0
	jsr dat_20d248(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20d248:
	dc.b $00,$24,$00,$60,$00,$b4,$00,$cc
	dc.b $01,$18
loc_20d252:
	tst.b $1a(a0)
	beq.s loc_20d25a
	rts
loc_20d25a:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209496).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4410,$2(a0)
	move.l #$20d39c,$4(a0)
	move.b #$4,$19(a0)
	move.b #$20,$16(a0)
	tst.b $28(a0)
	beq.s loc_20d2a8
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d2a8:
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d2b8
	neg.w d0
loc_20d2b8:
	cmpi.w #$40,d0
	bcc.s loc_20d2f8
	move.w $8(a0),d1
	move.w $8(a1),d0
	tst.b $28(a0)
	bne.s loc_20d2d4
	move.w $8(a0),d0
	move.w $8(a1),d1
loc_20d2d4:
	sub.w d1,d0
	bcs.s loc_20d2f8
	cmpi.w #$40,d0
	bcc.s loc_20d2f8
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	btst.b #$7,$1(a0)
	beq.s loc_20d2f8
	move.w #$a4,d0
	jsr (sub_20230a).l
loc_20d2f8:
	bra.w loc_20d252
	clr.b $3c(a0)
	jsr sub_20d37a(pc)
	cmpi.b #$3,$1a(a0)
	bne.s loc_20d310
	addq.b #$2,$24(a0)
loc_20d310:
	bra.w loc_20d252
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	bcc.s loc_20d324
	neg.w d0
loc_20d324:
	cmpi.w #$40,d0
	bcc.s loc_20d35c
	move.w $8(a1),d1
	move.w $8(a0),d0
	tst.b $28(a0)
	bne.s loc_20d340
	move.w $8(a1),d0
	move.w $8(a0),d1
loc_20d340:
	sub.w d1,d0
	bcs.s loc_20d35c
	cmpi.w #$40,d0
	bcs.s loc_20d35c
	clr.w $3a(a0)
	addq.b #$2,$24(a0)
	move.w #$a4,d0
	jsr (sub_20230a).l
loc_20d35c:
	bra.w loc_20d252
	move.b #$1,$3c(a0)
	jsr sub_20d37a(pc)
	tst.b $1a(a0)
	bne.s loc_20d376
	move.b #$2,$24(a0)
loc_20d376:
	bra.w loc_20d252

sub_20d37a:
	addi.b #$40,$3a(a0)
	bcs.s loc_20d384
	rts
loc_20d384:
	tst.b $3c(a0)
	bne.s loc_20d390
	addq.b #$1,$1a(a0)
	rts
loc_20d390:
	subq.b #$1,$1a(a0)
	bcc.s loc_20d39a
	clr.b $1a(a0)
loc_20d39a:
	rts
	.incbin 54172, 44
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3e6(pc,d0.w),d0
	jsr dat_20d3e6(pc,d0.w)
	jsr (sub_20388c).l
	move.w $36(a0),d0
	jmp (loc_20790e).l
dat_20d3e6:
	dc.b $00,$12,$00,$48

sub_20d3ea:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_209490).l
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$436a,$2(a0)
	move.l #$20d6b2,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$c,$16(a0)
	move.b #$10,$19(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20d618
	lea dat_20d6a8(pc),a1
	jsr (sub_205e16).l
	lea ($d000).w,a1
	bsr.w sub_20d3ea
	beq.s loc_20d48c
	bset.b #$0,$22(a1)
	andi.b #$fc,$1(a1)
	ori.b #$1,$1(a1)
	bset.b #$0,$2c(a1)
	bne.s loc_20d482
	move.b #$2d,$1c(a1)
	moveq #$0,d0
	move.b d0,$2b(a1)
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d47e
	neg.w d0
	move.b #$80,$2b(a1)
loc_20d47e:
	move.b d0,$39(a1)
loc_20d482:
	cmpi.b #$6,$24(a1)
	bcc.s loc_20d48c
	bra.s loc_20d4ac
loc_20d48c:
	rts
	.incbin 54414, 30
loc_20d4ac:
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
	move.b dat_20d50a(pc,d0.w),$1b(a1)
	andi.b #$3f,d1
	bne.s loc_20d4ec
	addq.b #$1,$39(a1)
loc_20d4ec:
	move.w ($f604).w,($f602).w
	cmpi.b #$1,$0(a1)
	beq.s loc_20d500
	move.w ($f606).w,($f602).w
loc_20d500:
	bsr.w sub_20d51a
	bra.w loc_20d568
	dc.b $4e,$75
dat_20d50a:
	.incbin 54538, 16

sub_20d51a:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	bcc.s loc_20d546
	btst.b #$2,($f602).w
	beq.s loc_20d532
	addq.b #$1,$39(a1)
	bra.s loc_20d566
loc_20d532:
	btst.b #$3,($f602).w
	beq.s loc_20d566
	subq.b #$1,$39(a1)
	bcc.s loc_20d566
	clr.b $39(a1)
	bra.s loc_20d566
loc_20d546:
	btst.b #$3,($f602).w
	beq.s loc_20d554
	addq.b #$1,$39(a1)
	bra.s loc_20d566
loc_20d554:
	btst.b #$2,($f602).w
	beq.s loc_20d566
	subq.b #$1,$39(a1)
	bcc.s loc_20d566
	clr.b $39(a1)
loc_20d566:
	rts
loc_20d568:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20d60e
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
	beq.s loc_20d5c8
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d5d4
loc_20d5c8:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
loc_20d5d4:
	btst.b #$2,$22(a1)
	bne.s loc_20d610
	tst.b ($ff195b).l
	beq.s loc_20d5f2
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	bra.s loc_20d602
loc_20d5f2:
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
loc_20d602:
	bset.b #$2,$22(a1)
	move.b #$2,$1c(a1)
loc_20d60e:
	rts
loc_20d610:
	bset.b #$4,$22(a1)
	rts

sub_20d618:
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20d628(pc,d0.w),d0
	jmp dat_20d628(pc,d0.w)
dat_20d628:
	.incbin 54824, 38
	move.l $8(a0),-(a7)
	bsr.w sub_20d68c
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts
	move.l $8(a0),-(a7)
	bsr.w sub_20d68c
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.l $8(a0),d0
	sub.l (a7)+,d0
	lsr.l #$8,d0
	move.w d0,$10(a0)
	rts

sub_20d68c:
	move.w ($ff1504).l,d0
	andi.w #$ff,d0
	jsr (sub_20080e).l
	add.w d0,d0
	add.w d0,d0
	asr.w #$4,d0
	addq.b #$1,$3a(a0)
	rts
dat_20d6a8:
	.incbin 54952, 118
	jsr (sub_20fcd8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d73e(pc,d0.w),d0
	jsr dat_20d73e(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20d73e:
	dc.b $00,$08,$00,$8c,$01,$08,$01,$68
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$2438,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.l #$70000,$2e(a0)
	move.l #loc_206e00,$36(a0)
	move.w #$fff0,$34(a0)
	move.b #$1,$1a(a0)
	bsr.w sub_20d93a
	movea.l #$20d95c,a1
	move.l #$ffff6000,d0
	move.b #$7,d1
	tst.b $28(a0)
	beq.s loc_20d7ae
	movea.l #$20d980,a1
	move.l #$ffff8000,d0
	move.b #$3,d1
loc_20d7ae:
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
	jsr (sub_206b94).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d804
	tst.w $3e(a0)
	bpl.w loc_20d906
	cmp.w $3e(a0),d1
	ble.w loc_20d906
	bra.s loc_20d826
loc_20d804:
	tst.w $3e(a0)
	bmi.s loc_20d826
	addi.l #$2000,$2e(a0)
	cmpi.l #$70000,$2e(a0)
	blt.s loc_20d824
	move.l #$70000,$2e(a0)
loc_20d824:
	rts
loc_20d826:
	addq.b #$2,$24(a0)
	move.w $3e(a0),d0
	add.w d0,$c(a0)
	move.w #$1,d0
	tst.b $28(a0)
	beq.s loc_20d840
	move.w #$14,d0
loc_20d840:
	move.w d0,$3a(a0)
	rts
	tst.b $28(a0)
	beq.s loc_20d876
	move.w #$7,d6
	move.w $3a(a0),d0
	cmpi.w #$6,d0
	beq.s loc_20d86e
	cmpi.w #$b,d0
	beq.s loc_20d86c
	cmpi.w #$f,d0
	beq.s loc_20d86e
	cmpi.w #$12,d0
	bne.s loc_20d876
loc_20d86c:
	neg.w d6
loc_20d86e:
	add.w d6,$c(a0)
	bsr.w sub_20d93a
loc_20d876:
	subq.w #$1,$3a(a0)
	bne.s loc_20d8a4
	addq.b #$2,$24(a0)
	subq.w #$7,$c(a0)
	bsr.w sub_20d93a
	move.l #$fffa0000,d0
	tst.b $28(a0)
	beq.s loc_20d89a
	move.l #$fffb0000,d0
loc_20d89a:
	move.l d0,$2e(a0)
	subq.b #$1,$32(a0)
	bmi.s loc_20d906
loc_20d8a4:
	rts
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	jsr (sub_206d2a).l
	move.w d1,$3e(a0)
	move.w $34(a0),d3
	movea.l $36(a0),a1
	jsr (a1)
	tst.w d1
	bpl.s loc_20d8dc
	tst.w $3e(a0)
	bpl.s loc_20d906
	cmp.w $3e(a0),d1
	ble.s loc_20d906
	bra.s loc_20d8ee
loc_20d8dc:
	tst.w $3e(a0)
	bmi.s loc_20d8ee
	addi.l #$2000,$2e(a0)
	bpl.s loc_20d8fa
	rts
loc_20d8ee:
	move.w $3e(a0),d0
	sub.w d0,$c(a0)
	clr.l $2e(a0)
loc_20d8fa:
	subq.b #$4,$24(a0)
	subi.w #$b,$c(a0)
	bra.s sub_20d93a
loc_20d906:
	move.b $33(a0),$32(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
	neg.w $34(a0)
	lea (loc_206e00).l,a1
	lea (loc_206c5e).l,a2
	cmpa.l $36(a0),a1
	bne.s loc_20d934
	exg a1,a2
loc_20d934:
	move.l a1,$36(a0)
	rts

sub_20d93a:
	tst.b $1a(a0)
	beq.s loc_20d948
	moveq #$0,d0
	moveq #$13,d1
	moveq #$2f,d2
	bra.s loc_20d94e
loc_20d948:
	moveq #$1,d0
	moveq #$1c,d1
	moveq #$30,d2
loc_20d94e:
	move.b d0,$1a(a0)
	move.b d1,$16(a0)
	move.b d2,$20(a0)
	rts
	.incbin 55644, 72
	tst.b $28(a0)
	bmi.w loc_20ddb4
	jsr (sub_20fcd8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9d6(pc,d0.w),d0
	jsr dat_20d9d6(pc,d0.w)
	lea dat_20dc42(pc),a1
	jsr (sub_205e16).l
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20d9d6:
	.incbin 55766, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$a457,$2(a0)
	move.b #$31,$20(a0)
	move.w #$fff8,$30(a0)
	lea dat_20dc4e(pc),a1
	move.l #$ffff0000,d0
	tst.b $28(a0)
	beq.s loc_20da38
	lea dat_20dd36(pc),a1
	move.l #$ffff8000,d0
loc_20da38:
	move.l a1,$4(a0)
	move.l d0,$2c(a0)
	addq.b #$2,$24(a0)
	move.w #$200,d0
	tst.b $28(a0)
	beq.s loc_20da52
	move.w #$400,d0
loc_20da52:
	move.w d0,$2a(a0)
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20da80
	tst.w $32(a0)
	beq.s loc_20da70
	subq.w #$1,$32(a0)
	bra.s loc_20da80
loc_20da70:
	lea ($d000).w,a1
	bsr.s sub_20da8e
	beq.s loc_20da80
	move.b #$c,$24(a0)
	rts
loc_20da80:
	subq.w #$1,$2a(a0)
	bpl.s loc_20da8c
	move.b #$6,$24(a0)
loc_20da8c:
	rts

sub_20da8e:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dad8
	move.w $8(a1),d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff88,d0
	subi.w #$f0,d0
	bcc.s loc_20dad8
	btst.b #$0,$1(a0)
	sne d2
	eor.b d1,d2
	beq.s loc_20dad4
	neg.l $2c(a0)
	neg.w $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20dad4:
	moveq #$ffffffff,d0
	rts
loc_20dad8:
	moveq #$0,d0
	rts
	.incbin 56028, 62
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20db5e
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
loc_20db5e:
	rts
	subq.w #$1,$2a(a0)
	bpl.w loc_20dc02
	addq.b #$2,$24(a0)
	move.w #$1e,$2a(a0)
	jsr (sub_2078d4).l
	bne.w loc_20dc02
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $1(a0),$1(a1)
	move.w $2(a0),$2(a1)
	move.l #$20de40,$4(a1)
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
	bne.s loc_20dbea
	neg.w d0
	neg.l d1
loc_20dbea:
	add.w d0,$8(a1)
	move.l d1,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20dc02
	move.w #$a0,d0
	jsr (sub_20230a).l
loc_20dc02:
	rts
	.incbin 56324, 62
dat_20dc42:
	dc.b $00,$04,$00,$08,$01,$00,$01,$ff
	dc.b $01,$02,$03,$ff
dat_20dc4e:
	.incbin 56398, 232
dat_20dd36:
	.incbin 56630, 126
loc_20ddb4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ddce(pc,d0.w),d0
	jsr dat_20ddce(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20ddce:
	dc.b $00,$08,$00,$12,$00,$2a,$00,$46
	addq.b #$2,$24(a0)
	move.w #$3,$2a(a0)
	subq.w #$1,$2a(a0)
	bpl.s loc_20ddf6
	addq.b #$2,$24(a0)
	move.b #$1,$1a(a0)
	move.w #$a,$2a(a0)
loc_20ddf6:
	rts
	.incbin 56824, 1234
	tst.b $29(a0)
	beq.s loc_20e2d8
	bmi.w loc_20e546
	bra.w loc_20e526
loc_20e2d8:
	jsr (sub_20fcd8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e2f8(pc,d0.w),d0
	jsr dat_20e2f8(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20e2f8:
	.incbin 58104, 18
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
	lea dat_20e5d0(pc),a1
	tst.b $28(a0)
	beq.s loc_20e35c
	lea dat_20e628(pc),a1
loc_20e35c:
	move.l a1,$4(a0)
	jsr (sub_2078ea).l
	beq.s loc_20e36e
	jmp (sub_203938).l
loc_20e36e:
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
	bne.s loc_20e3e8
	move.w #$79,$2a(a0)
	move.b #$2,d6
	lea ($d000).w,a1
	bsr.w sub_20e3ea
	bcs.s loc_20e3e4
	neg.b d6
loc_20e3e4:
	add.b d6,$24(a0)
loc_20e3e8:
	rts

sub_20e3ea:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$28,d0
	subi.w #$78,d0
	bcc.s loc_20e40c
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$ff58,d0
	subi.w #$150,d0
loc_20e40c:
	rts
	.incbin 58382, 280
loc_20e526:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20e540
	cmpi.b #$1,$1b(a1)
	beq.s loc_20e540
	jmp (sub_20388c).l
loc_20e540:
	jmp (sub_203938).l
loc_20e546:
	movea.w $38(a0),a1
	cmpi.b #$33,$0(a1)
	beq.s loc_20e558
	jmp (sub_203938).l
loc_20e558:
	move.w $c(a1),d0
	sub.w $34(a1),d0
	subi.w #$18,d0
	asr.w #$3,d0
	bpl.s loc_20e56a
	moveq #$0,d0
loc_20e56a:
	move.b d0,$1a(a0)
	asl.w #$2,d0
	add.w $34(a1),d0
	addi.w #$10,d0
	move.w d0,$c(a0)
	jmp (sub_20388c).l
	.incbin 58754, 78
dat_20e5d0:
	.incbin 58832, 88
dat_20e628:
	.incbin 58920, 274
	jsr (sub_20fd20).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e85c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e75a(pc,d0.w),d0
	jmp dat_20e75a(pc,d0.w)
dat_20e75a:
	.incbin 59226, 258
loc_20e85c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e86a(pc,d0.w),d0
	jmp dat_20e86a(pc,d0.w)
dat_20e86a:
	.incbin 59498, 448
	tst.b $28(a0)
	bmi.w loc_20eadc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea56(pc,d0.w),d0
	jsr dat_20ea56(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_209496).l
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20ea56:
	dc.b $00,$04,$00,$42
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$3a8,$2(a0)
	move.l #$20ecb0,$4(a0)
	move.w a0,$2a(a0)
	st $34(a0)
	move.w #$0,$32(a0)
	tst.b $34(a0)
	beq.s loc_20eada
	sf $34(a0)
	lea dat_20ecb8(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.w $32(a0),d0
	adda.w $0(a1,d0.w),a1
	move.l a1,$2c(a0)
	addq.w #$2,$32(a0)
	cmpi.w #$8,$32(a0)
	blt.s loc_20eace
	clr.w $32(a0)
loc_20eace:
	bsr.w sub_20ec6e
	beq.s loc_20eada
	jmp (sub_203938).l
loc_20eada:
	rts
loc_20eadc:
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ec68
	move.b $29(a0),d0
	cmp.b $29(a1),d0
	bne.w loc_20ec68
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20eb14(pc,d0.w),d0
	jsr dat_20eb14(pc,d0.w)
	lea ($d000).w,a1
	jsr (sub_209496).l
	jmp (sub_20388c).l
dat_20eb14:
	.incbin 60180, 20
	addq.b #$2,$24(a0)
	move.w #$3f,$30(a0)
	move.l #$0,$38(a0)
	move.l #$0,$3c(a0)
	movea.l $2c(a0),a1
	move.b -$1(a1),d0
	bne.s loc_20eb54
	move.l #$ffff8000,$3c(a0)
loc_20eb54:
	subq.b #$1,d0
	bne.s loc_20eb60
	move.l #$8000,$38(a0)
loc_20eb60:
	subq.b #$1,d0
	bne.s loc_20eb6c
	move.l #$8000,$3c(a0)
loc_20eb6c:
	subq.b #$1,d0
	bne.s loc_20eb78
	move.l #$ffff8000,$38(a0)
loc_20eb78:
	movea.w $2a(a0),a1
	cmpi.b #$2,$28(a1)
	bne.s loc_20eb96
	moveq #$1,d0
	tst.w $3c(a0)
	bpl.s loc_20eb8e
	moveq #$ffffffff,d0
loc_20eb8e:
	move.w d0,$34(a0)
	move.w d0,$12(a0)
loc_20eb96:
	move.l $38(a0),d0
	add.l d0,$8(a0)
	move.l $3c(a0),d0
	add.l d0,$c(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ebb0
	addq.b #$2,$24(a0)
loc_20ebb0:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ebca
	move.w #$0,d0
loc_20ebca:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ebea
	addq.b #$2,$24(a0)
	bsr.w sub_20ec6e
	beq.s loc_20ebea
	addq.b #$2,$24(a0)
	movea.w $2a(a0),a1
	st $34(a1)
loc_20ebea:
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
	bpl.s loc_20ec1c
	addq.b #$2,$24(a0)
loc_20ec1c:
	rts
	addq.b #$2,$24(a0)
	clr.w $12(a0)
	move.w #$1e,d0
	cmpi.b #$2,$28(a1)
	bne.s loc_20ec36
	move.w #$0,d0
loc_20ec36:
	move.w d0,$30(a0)
	subq.w #$1,$30(a0)
	bpl.s loc_20ec52
	movea.w $36(a0),a1
	tst.b $28(a1)
	bpl.s loc_20ec4e
	addq.b #$2,$24(a1)
loc_20ec4e:
	addq.b #$2,$24(a0)
loc_20ec52:
	rts
	lea ($d000).w,a1
	jsr (sub_209496).l
	beq.s loc_20ec66
	jsr (sub_209348).l
loc_20ec66:
	addq.l #$4,a7
loc_20ec68:
	jmp (sub_203938).l

sub_20ec6e:
	movea.l $2c(a0),a6
	tst.b (a6)+
	bmi.s loc_20ecae
	jsr (sub_2078d4).l
	bne.s loc_20ecae
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
loc_20ecae:
	rts
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
dat_20ecb8:
	.incbin 60600, 1554
	move.b $28(a0),d0
	bpl.s loc_20f2d4
	bra.w loc_20f4c8
loc_20f2d4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f2ee(pc,d0.w),d0
	jsr dat_20f2ee(pc,d0.w)
	jsr (sub_20388c).l
	jmp (sub_20790a).l
dat_20f2ee:
	dc.b $00,$04,$01,$18
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20f4c0,$4(a0)
	move.w #$3f8,$2(a0)
	move.w #$100,$2c(a0)
	move.b $28(a0),d0
	beq.s loc_20f32c
	neg.w $2c(a0)
loc_20f32c:
	jsr (sub_2078ea).l
	bne.w loc_20f400
	move.w a0,$3e(a1)
	move.w a1,$2e(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078ea).l
	bne.w loc_20f400
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078ea).l
	bne.w loc_20f400
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078ea).l
	bne.w loc_20f400
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	jsr (sub_2078ea).l
	bne.w loc_20f400
	move.w a0,$3e(a1)
	move.w a1,$36(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	bra.s loc_20f406
loc_20f400:
	jmp (sub_203938).l
loc_20f406:
	move.w $2c(a0),d0
	add.w d0,$2a(a0)
	move.w $2a(a0),d0
	lsr.w #$8,d0
	jsr (sub_20080e).l
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
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$00,$f8
loc_20f4c8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f4ee(pc,d0.w),d0
	jsr dat_20f4ee(pc,d0.w)
	movea.w $3e(a0),a1
	cmpi.b #$2d,$0(a1)
	beq.s loc_20f4e8
	jmp (sub_203938).l
loc_20f4e8:
	jmp (sub_20388c).l
dat_20f4ee:
	dc.b $00,$04,$00,$28
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$20f524,$4(a0)
	move.w #$3f8,$2(a0)
	move.b #$b9,$20(a0)
	move.w $2a(a0),$8(a0)
	move.w $2e(a0),$c(a0)
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$04,$f8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f550(pc,d0.w),d0
	jsr dat_20f550(pc,d0.w)
	jsr (sub_20388c).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f54e
	jmp (sub_20790a).l
loc_20f54e:
	rts
dat_20f550:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20f97e(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20f700,$4(a0)
	move.l #$20f93e,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20f5c4
	addq.b #$2,d0
loc_20f5c4:
	tst.b ($ff152e).l
	bne.s loc_20f5ce
	addq.b #$1,d0
loc_20f5ce:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20f5ee
	tst.b ($ff152e).l
	bne.s loc_20f5ee
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20f5ee:
	tst.b ($ff156a).l
	bne.s loc_20f656
	tst.b ($ff152e).l
	bne.s loc_20f656
	bsr.w sub_20f6d2
	tst.b $21(a0)
	beq.s loc_20f642
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20ae8e).l
	lea ($d000).w,a1
	jsr (sub_209496).l
	beq.s loc_20f640
	jsr (sub_209348).l
loc_20f640:
	rts
loc_20f642:
	lea ($d000).w,a1
	jsr (sub_209496).l
	lea dat_20f6f8(pc),a1
	jmp (sub_205e16).l
loc_20f656:
	rts
	.incbin 63064, 122

sub_20f6d2:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20f6e8
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20f6e8:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20f6f6
	neg.w $32(a0)
loc_20f6f6:
	rts
dat_20f6f8:
	.incbin 63224, 646
dat_20f97e:
	.incbin 63870, 30
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f9ce(pc,d0.w),d0
	jsr dat_20f9ce(pc,d0.w)
	jsr (sub_20388c).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f9cc
	jsr (sub_20790a).l
	tst.b (a0)
	bne.s loc_20f9cc
	move.w #$4,d0
	jmp (sub_2024d4).l
loc_20f9cc:
	rts
dat_20f9ce:
	.incbin 63950, 778

sub_20fcd8:
	tst.b ($ff156a).l
	beq.s loc_20fd1e
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fcf0
	tst.b $28(a0)
	beq.s loc_20fd1e
loc_20fcf0:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203938).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd1c
	move.w #$9e,d0
	jsr (sub_20230a).l
loc_20fd1c:
	addq.l #$4,a7
loc_20fd1e:
	rts

sub_20fd20:
	tst.b $28(a0)
	bmi.s loc_20fd50
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fd40
	tst.b ($ff156d).l
	bne.s loc_20fd50
	addq.l #$4,a7
	jmp (sub_20790a).l
loc_20fd40:
	tst.b ($ff156a).l
	bne.s loc_20fd50
	addq.l #$4,a7
	jmp (sub_203938).l
loc_20fd50:
	rts

sub_20fd52:
	jsr (sub_20668a).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20feae).l,a1
	move.w #$3f,d6
	bsr.w sub_20fe6a
	bne.s loc_20fd94
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4440,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd94:
	lea (dat_20febc).l,a1
	move.w #$1f,d6
	bsr.w sub_20fe6a
	bne.s loc_20fdc8
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$43c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fdc8:
	lea (dat_20fe50).l,a1
	move.w #$1f,d6
	bsr.w sub_20fdfe
	bne.s loc_20fdfc
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4340,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fdfc:
	rts

sub_20fdfe:
	subq.b #$1,(a2)
	bpl.s loc_20fe44
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fe0e
	moveq #$0,d0
loc_20fe0e:
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
loc_20fe32:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe32
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fe44:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fe50:
	.incbin 65104, 26

sub_20fe6a:
	subq.b #$1,(a2)
	bpl.w loc_20fea2
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe80
	moveq #$0,d0
loc_20fe80:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fe90:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe90
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fea2:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20feae:
	dc.b $04,$03,$00,$23,$3c,$0c,$00,$23
	dc.b $3d,$0c,$00,$23,$3e,$0c
dat_20febc:
	dc.b $03,$02,$00,$23,$3b,$0c,$00,$23
	dc.b $3b,$8c
dat_20fec6:
	.incbin 65222, 16
dat_20fed6:
	.incbin 65238, 65834
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
	.incbin 219126, 4896
dat_236b16:
	.incbin 224022, 38122
