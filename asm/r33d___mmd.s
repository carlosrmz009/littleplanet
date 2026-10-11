; R33D__.MMD
; disassembled from the disc; code only, data comes from data/R33D__.MMD at build time
	.file "R33D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$30
	jmp (loc_201ba6).l
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
	bsr.w sub_2020dc
	bsr.w sub_202084
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201420

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_2001f2).l,a1
	lea (dat_2001fa).l,a2
	bsr.s sub_2001b4
	lea (dat_200200).l,a1
	lea (dat_200224).l,a2
	bsr.s sub_2001b4
	lea (dat_200236).l,a1
	lea (dat_200258).l,a2

sub_2001b4:
	subq.b #$1,(a5)
	bpl.s loc_2001e8
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
	bcs.s loc_2001d4
	moveq #$0,d0
loc_2001d4:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001e8:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_2001f2:
	dc.b $2a,$03,$02,$00,$01,$01,$02,$02
dat_2001fa:
	dc.b $0e,$e0,$06,$c0,$00,$00
dat_200200:
	.incbin 512, 36
dat_200224:
	.incbin 548, 18
dat_200236:
	.incbin 566, 34
dat_200258:
	.incbin 600, 18

sub_20026a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20027c:
	move.w d1,(a0)+
	dbf d0,loc_20027c
	move.w #$15,d4
loc_200286:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_20029c
	bsr.w sub_2024a2
	dbf d4,loc_200286
	rts

sub_20029c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002b2:
	bsr.s sub_2002e0
	dbf d0,loc_2002b2
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002de
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2002d8:
	bsr.s sub_2002e0
	dbf d0,loc_2002d8
loc_2002de:
	rts

sub_2002e0:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200308
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002f6
	move.w d1,(a0)+
	rts
loc_2002f6:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200304
	move.w d1,(a0)+
	rts
loc_200304:
	addq.w #$2,(a0)+
	rts
loc_200308:
	addq.w #$2,a0
	rts

sub_20030c:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200316:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_20032c
	bsr.w sub_2024a2
	dbf d4,loc_200316
	rts

sub_20032c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20033c:
	bsr.s sub_20035a
	dbf d0,loc_20033c
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200352:
	bsr.s sub_20035a
	dbf d0,loc_200352
	rts

sub_20035a:
	move.w (a0),d2
	beq.s loc_200386
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20036a
	subq.w #$2,(a0)+
	rts
loc_20036a:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200378
	subi.w #$20,(a0)+
	rts
loc_200378:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200386
	subi.w #$200,(a0)+
	rts
loc_200386:
	addq.w #$2,a0
	rts

sub_20038a:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_2003a4:
	move.w d1,(a0)+
	dbf d0,loc_2003a4
	move.w #$15,d4
loc_2003ae:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_2003c4
	bsr.w sub_2024a2
	dbf d4,loc_2003ae
	rts

sub_2003c4:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003da:
	bsr.s sub_200408
	dbf d0,loc_2003da
	cmpi.b #$1,($ff1506).l
	bne.s loc_200406
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200400:
	bsr.s sub_200408
	dbf d0,loc_200400
loc_200406:
	rts

sub_200408:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200434
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200420
	cmp.w d2,d1
	bcs.s loc_200420
	move.w d1,(a0)+
	rts
loc_200420:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200430
	cmp.w d2,d1
	bcs.s loc_200430
	move.w d1,(a0)+
	rts
loc_200430:
	subq.w #$2,(a0)+
	rts
loc_200434:
	addq.w #$2,a0
	rts

sub_200438:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200442:
	move.b #$12,($f62a).w
	bsr.w sub_200764
	bsr.s sub_200458
	bsr.w sub_2024a2
	dbf d4,loc_200442
	rts

sub_200458:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200468:
	bsr.s sub_200486
	dbf d0,loc_200468
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20047e:
	bsr.s sub_200486
	dbf d0,loc_20047e
	rts

sub_200486:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2004c2
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_20049e
	addq.w #$2,(a0)+
	rts
loc_20049e:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2004b0
	addi.w #$20,(a0)+
	rts
loc_2004b0:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2004c2
	addi.w #$200,(a0)+
	rts
loc_2004c2:
	addq.w #$2,a0
	rts

sub_2004c6:
	lea (dat_200532).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2004da:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004da
	rts

sub_2004e2:
	lea (dat_200532).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004f2:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004f2
	rts
	.incbin 1274, 56
dat_200532:
	.incbin 1330, 562

sub_200764:
	move.w #$2300,sr
loc_200768:
	tst.b ($f62a).w
	bne.s loc_200768
	rts

sub_200770:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200788(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200788(pc,d0.w),d0
	rts
dat_200788:
	.incbin 1928, 640

sub_200a08:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a64
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a22
	neg.w d3
loc_200a22:
	tst.w d4
	bpl.w loc_200a2a
	neg.w d4
loc_200a2a:
	cmp.w d3,d4
	bcc.w loc_200a3c
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a6e(pc,d4.w),d0
	bra.s loc_200a46
loc_200a3c:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a6e(pc,d3.w),d0
loc_200a46:
	tst.w d1
	bpl.w loc_200a52
	neg.w d0
	addi.w #$80,d0
loc_200a52:
	tst.w d2
	bpl.w loc_200a5e
	neg.w d0
	addi.w #$100,d0
loc_200a5e:
	movem.l (a7)+,d3-d4
	rts
loc_200a64:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a6e:
	.incbin 2670, 258

sub_200b70:
	btst.b #$3,$22(a0)
	beq.s loc_200b84
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b84:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200ba6
	move.b $26(a0),d0
	bpl.s loc_200ba0
	subq.b #$1,d0
loc_200ba0:
	addi.b #$20,d0
	bra.s loc_200bb2
loc_200ba6:
	move.b $26(a0),d0
	bpl.s loc_200bae
	addq.b #$1,d0
loc_200bae:
	addi.b #$1f,d0
loc_200bb2:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e3c
	cmpi.b #$80,d0
	beq.w loc_200d9a
	cmpi.b #$c0,d0
	beq.w loc_200cfe
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
	bsr.w sub_2010c6
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
	bsr.w sub_2010c6
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200c40
	bpl.s loc_200c42
	cmpi.w #$fff2,d1
	blt.s loc_200c68
	add.w d1,$c(a0)
loc_200c40:
	rts
loc_200c42:
	cmpi.w #$e,d1
	bgt.s loc_200c4e
loc_200c48:
	add.w d1,$c(a0)
	rts
loc_200c4e:
	tst.b $38(a0)
	bne.s loc_200c48
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c68:
	rts
	.incbin 3178, 34
loc_200c8c:
	rts
	.incbin 3214, 68

sub_200cd2:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200ce0
	move.b ($f768).w,d2
	move.w d0,d1
loc_200ce0:
	btst.l #$0,d2
	bne.s loc_200cec
	move.b d2,$26(a0)
	rts
loc_200cec:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cfe:
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
	bsr.w sub_201236
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
	bsr.w sub_201236
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200d72
	bpl.s loc_200d74
	cmpi.w #$fff2,d1
	blt.w loc_200c8c
	add.w d1,$8(a0)
loc_200d72:
	rts
loc_200d74:
	cmpi.w #$e,d1
	bgt.s loc_200d80
loc_200d7a:
	add.w d1,$8(a0)
	rts
loc_200d80:
	tst.b $38(a0)
	bne.s loc_200d7a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d9a:
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
	bsr.w sub_2010c6
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
	bsr.w sub_2010c6
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200e14
	bpl.s loc_200e16
	cmpi.w #$fff2,d1
	blt.w loc_200c68
	sub.w d1,$c(a0)
loc_200e14:
	rts
loc_200e16:
	cmpi.w #$e,d1
	bgt.s loc_200e22
loc_200e1c:
	sub.w d1,$c(a0)
	rts
loc_200e22:
	tst.b $38(a0)
	bne.s loc_200e1c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e3c:
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
	bsr.w sub_201236
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
	bsr.w sub_201236
	move.w (a7)+,d0
	bsr.w sub_200cd2
	tst.w d1
	beq.s loc_200eb6
	bpl.s loc_200eb8
	cmpi.w #$fff2,d1
	blt.w loc_200c8c
	sub.w d1,$8(a0)
loc_200eb6:
	rts
loc_200eb8:
	cmpi.w #$e,d1
	bgt.s loc_200ec4
loc_200ebe:
	sub.w d1,$8(a0)
	rts
loc_200ec4:
	tst.b $38(a0)
	bne.s loc_200ebe
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200ede:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200ef4
	andi.w #$380,d0
loc_200ef4:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f54
	bmi.s loc_200f58
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f24
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f2a
loc_200f24:
	andi.w #$7fff,$2(a0)
loc_200f2a:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f3a
	bclr.b #$6,$1(a0)
loc_200f3a:
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
loc_200f54:
	movea.l d1,a1
	rts
loc_200f58:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fc0
	btst.b #$6,$1(a0)
	bne.s loc_200f86
	cmpi.b #$14,d1
	bne.w loc_2010aa
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010aa
loc_200f86:
	cmpi.b #$15,d1
	bne.s loc_200f94
	move.w #$60,d1
	bra.w loc_2010aa
loc_200f94:
	cmpi.b #$1e,d1
	bne.s loc_200fa2
	move.w #$61,d1
	bra.w loc_2010aa
loc_200fa2:
	cmpi.b #$1f,d1
	bne.s loc_200fb0
	move.w #$62,d1
	bra.w loc_2010aa
loc_200fb0:
	cmpi.b #$32,d1
	bne.w loc_2010aa
	move.w #$63,d1
	bra.w loc_2010aa
loc_200fc0:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201026
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201010
	cmpi.b #$6,d1
	beq.s loc_201010
	tst.b ($ff1956).l
	beq.w loc_2010aa
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201020
	cmpi.b #$3c,d1
	beq.s loc_201020
	cmpi.b #$37,d1
	beq.s loc_201020
	cmpi.b #$2f,d1
	beq.s loc_201020
	cmpi.b #$16,d1
	beq.s loc_201020
	bra.w loc_2010aa
loc_201010:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010aa
loc_201020:
	addq.b #$1,d1
	bra.w loc_2010aa
loc_201026:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201096
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010aa
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010aa
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20105a
	move.w #$6a,d1
	bra.s loc_2010aa
loc_20105a:
	cmpi.b #$48,d1
	bne.s loc_201066
	move.w #$6b,d1
	bra.s loc_2010aa
loc_201066:
	cmpi.b #$4a,d1
	bne.s loc_201072
	move.w #$6c,d1
	bra.s loc_2010aa
loc_201072:
	cmpi.b #$10,d1
	bne.s loc_20107e
	move.w #$6d,d1
	bra.s loc_2010aa
loc_20107e:
	cmpi.b #$63,d1
	bne.s loc_20108a
	move.w #$6e,d1
	bra.s loc_2010aa
loc_20108a:
	cmpi.b #$43,d1
	bne.s loc_2010aa
	move.w #$6f,d1
	bra.s loc_2010aa
loc_201096:
	btst.b #$6,$1(a0)
	beq.s loc_2010aa
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010aa
	move.w #$51,d1
loc_2010aa:
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

sub_2010c6:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_2010e0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010e0
	btst.l d5,d4
	bne.s loc_2010ee
loc_2010e0:
	add.w a3,d2
	bsr.w sub_201186
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010ee:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010e0
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201114
	not.w d1
	neg.b (a4)
loc_201114:
	btst.l #$c,d4
	beq.s loc_201124
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201124:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23734a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201140
	neg.w d0
loc_201140:
	tst.w d0
	beq.s loc_2010e0
	bmi.s loc_20115c
	cmpi.b #$10,d0
	beq.s loc_201178
loc_20114c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20115c:
	cmpa.w #$10,a3
	bne.s loc_20116c
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20114c
loc_20116c:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010e0
loc_201178:
	sub.w a3,d2
	bsr.w sub_201186
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201186:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_2011a0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011a0
	btst.l d5,d4
	bne.s loc_2011ae
loc_2011a0:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011ae:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011a0
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011d4
	not.w d1
	neg.b (a4)
loc_2011d4:
	btst.l #$c,d4
	beq.s loc_2011e4
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011e4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23734a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201200
	neg.w d0
loc_201200:
	tst.w d0
	beq.s loc_2011a0
	bmi.s loc_201216
loc_201206:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201216:
	cmpa.w #$10,a3
	bne.s loc_201226
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201206
loc_201226:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011a0
	not.w d1
	rts

sub_201236:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_201250
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201250
	btst.l d5,d4
	bne.s loc_20125e
loc_201250:
	add.w a3,d3
	bsr.w sub_2012e6
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_20125e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201250
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20128c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20128c:
	btst.l #$b,d4
	beq.s loc_201294
	neg.b (a4)
loc_201294:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23834a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012b0
	neg.w d0
loc_2012b0:
	tst.w d0
	beq.s loc_201250
	bmi.s loc_2012cc
	cmpi.b #$10,d0
	beq.s loc_2012d8
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012cc:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201250
loc_2012d8:
	sub.w a3,d3
	bsr.w sub_2012e6
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012e6:
	bsr.w sub_200ede
	cmpi.l #$210000,d1
	beq.s loc_201300
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201300
	btst.l d5,d4
	bne.s loc_20130e
loc_201300:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20130e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201300
	lea (dat_23724a).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20133c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20133c:
	btst.l #$b,d4
	beq.s loc_201344
	neg.b (a4)
loc_201344:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23834a).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201360
	neg.w d0
loc_201360:
	tst.w d0
	beq.s loc_201300
	bmi.s loc_201376
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201376:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201300
	not.w d1
	rts

sub_201386:
	rts
	.incbin 5000, 152
loc_201420:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_201440
	tst.b ($ff0f01).l
	bne.s loc_201440
	move.b #$1,($ff156a).l
loc_201440:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_2014a6
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20779e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014a6
	move.b #$1,($ff1508).l
loc_2014a6:
	bset.b #$7,($f600).w
	bsr.w sub_202494
	tst.b ($ff156e).l
	bne.s loc_2014cc
	btst.b #$7,($ff152e).l
	beq.s loc_201502
	bset.b #$0,($ff151d).l
	beq.s loc_2014d8
loc_2014cc:
	bsr.w sub_200438
	bclr.b #$0,($ff151d).l
loc_2014d8:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201572
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201500
	bclr.b #$7,($ff152e).l
loc_201500:
	rts
loc_201502:
	bset.b #$0,($ff151d).l
	beq.s loc_201510
	bsr.w sub_20030c
loc_201510:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20152c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_201554
loc_20152c:
	tst.b ($ff1508).l
	bne.s loc_201572
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_201554:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20155c:
	move.l #$0,(a1)+
	dbf d6,loc_20155c
	move.b #$c,($f62a).w
	bsr.w sub_200764
	rts
loc_201572:
	cmpi.w #$800,($f78e).w
	bne.s loc_201590
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201590:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015a6
	btst.b #$7,($ff152e).l
	beq.s loc_2015ac
loc_2015a6:
	move.l #$eee0eee,d0
loc_2015ac:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015b4:
	move.l d0,(a1)+
	dbf d6,loc_2015b4
loc_2015ba:
	move.b #$c,($f62a).w
	bsr.w sub_200764
	bsr.w sub_2024a2
	bne.s loc_2015ba
	tst.l ($f680).w
	bsr.w sub_201a60
	moveq #$0,d0
	lea (dat_20f63a).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015e4
	bsr.w sub_2025a8
loc_2015e4:
	moveq #$1,d0
	bsr.w sub_2025a8
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201600:
	move.l d0,(a1)+
	dbf d1,loc_201600
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201612:
	move.l d0,(a1)+
	dbf d1,loc_201612
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201622:
	move.l d0,(a1)+
	dbf d1,loc_201622
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_201634:
	move.l d0,(a1)+
	dbf d1,loc_201634
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201644:
	move.l d0,(a1)+
	dbf d1,loc_201644
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201654:
	move.l d0,(a1)+
	dbf d1,loc_201654
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20217e
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
	bsr.w sub_2004e2
	moveq #$3,d0
	bsr.w sub_2004c6
	bsr.w sub_20280a
	bsr.w sub_202986
	bset.b #$2,($f754).w
	bsr.w sub_20352a
	bsr.w sub_203430
	jsr (sub_201386).l
	bsr.w sub_20199a
loc_2016d4:
	move.b #$c,($f62a).w
	bsr.w sub_200764
	bsr.w sub_2024a2
	bne.s loc_2016d4
	tst.l ($f680).w
	bne.s loc_2016d4
	bsr.w sub_201926
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201ac0
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201738
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201738:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20177a
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20177a:
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
	jsr (sub_20f634).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20180a
loc_201804:
	bsr.w sub_20038a
	bra.s loc_201818
loc_20180a:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201804
	bsr.w sub_20026a
loc_201818:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201826:
	move.b #$8,($f62a).w
	bsr.w sub_200764
	tst.b ($f7cc).w
	bne.s loc_201844
	btst.b #$7,($f605).w
	beq.s loc_201844
	eori.b #$1,($f63a).w
loc_201844:
	btst.b #$0,($f63a).w
	beq.w loc_2018b6
	bsr.w sub_201b24
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201894
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201826
	subq.b #$1,($ff1508).l
	bpl.s loc_201876
	clr.b ($ff1508).l
loc_201876:
	move.w #$e,d0
	jsr (sub_205be6).l
	bsr.w sub_20779e
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2018a2
loc_201894:
	andi.b #$70,d0
	beq.w loc_201826
	clr.b ($ff1508).l
loc_2018a2:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201420
loc_2018b6:
	bsr.w sub_201b6a
	addq.w #$1,($ff1504).l
	jsr (sub_2077b4).l
	jsr (sub_203930).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201420
	tst.w ($ff1502).l
	bne.w loc_201420
	tst.w ($ff1906).l
	bne.s loc_2018fe
	cmpi.b #$6,($d024).w
	bcs.s loc_2018fe
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201902
loc_2018fe:
	bsr.w sub_202986
loc_201902:
	jsr (sub_203ada).l
	tst.w ($ff190e).l
	bne.s loc_201914
	bsr.w sub_200184
loc_201914:
	jsr (sub_20b2e6).l
	bsr.w sub_2024a2
	bsr.w sub_2019cc
	bra.w loc_201826

sub_201926:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_20193e
	move.w #$78,$30(a1)
loc_20193e:
	rts
	.incbin 6464, 90

sub_20199a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_2019ac(pc,d0.w),($f796).w
	rts
dat_2019ac:
	.incbin 6572, 32

sub_2019cc:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019ea
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019ea:
	subq.b #$1,($ff1912).l
	bpl.s loc_201a08
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201a08:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a30
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a30
	move.b #$0,($ff1915).l
loc_201a30:
	tst.b ($ff1916).l
	beq.s loc_201a5e
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a5e:
	rts

sub_201a60:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a82
	cmpi.b #$2,d0
	bne.s loc_201a82
	add.b ($ff156a).l,d0
loc_201a82:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a9a(pc,d1.w),d0
	jmp (sub_205be6).l
dat_201a9a:
	.incbin 6810, 38

sub_201ac0:
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

sub_201b24:
	move.w #$ab,d0
	jsr (sub_20226c).l
	bset.b #$7,($f63a).w
	bne.s loc_201b68
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b4e
loc_201b44:
	move.w #$d5,d0
	jmp (sub_205be6).l
loc_201b4e:
	tst.b ($ff151f).l
	bne.s loc_201b44
	tst.b ($ff1520).l
	bne.s loc_201b44
	move.w #$90,d0
	jmp (sub_205be6).l
loc_201b68:
	rts

sub_201b6a:
	bclr.b #$7,($f63a).w
	beq.s loc_201ba4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b8a
loc_201b80:
	move.w #$d6,d0
	jmp (sub_205be6).l
loc_201b8a:
	tst.b ($ff151f).l
	bne.s loc_201b80
	tst.b ($ff1520).l
	bne.s loc_201b80
	move.w #$91,d0
	jmp (sub_205be6).l
loc_201ba4:
	rts
loc_201ba6:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c32
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201be2
	move.w #$700,d0
loc_201bde:
	dbf d0,loc_201bde
loc_201be2:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201c18(pc,d0.w),d0
	jsr dat_201c18(pc,d0.w)
loc_201bf8:
	jsr (sub_202290).l
	tst.b ($f63a).w
	bne.s loc_201c0c
	bsr.w sub_202044
	bsr.w sub_202032
loc_201c0c:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201c18:
	.incbin 7192, 26
loc_201c32:
	tst.b ($ff1957).l
	beq.w loc_201bf8
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bf8
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c60
	move.w #$700,d0
loc_201c5c:
	dbf d0,loc_201c5c
loc_201c60:
	move.w #$1,($f6fc).w
	jsr (sub_202204).l
	tst.b ($f64e).w
	bne.s loc_201c98
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201cbc
loc_201c98:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201cbc:
	move.w ($f624).w,(a5)
	jsr (sub_202220).l
	bra.w loc_201bf8
	.incbin 7370, 60
	jsr (sub_202204).l
	bsr.w sub_2020a0
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
	bsr.w sub_205b08
	tst.b ($f767).w
	beq.s loc_201db4
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201db4:
	jsr (sub_20f634).l
	jsr (sub_202220).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203028
	bsr.w sub_202514
	jmp (loc_2099b4).l
	dc.b $4e,$75
	jsr (sub_202204).l
	bsr.w sub_2020a0
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
	jsr (sub_202220).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203028
	bra.w loc_2024f8
	.incbin 7820, 16
	bsr.w sub_201f88
	cmpi.b #$1,($ff1903).l
	bne.s loc_201ebe
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201ebe:
	move.w ($f624).w,(a5)
	bra.w loc_2024f8
	dc.b $4e,$b9,$00,$20,$22,$04,$61,$00
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
	jsr (sub_202220).l
	lea ($d000).w,a0
	bsr.w sub_205b08
	tst.b ($f767).w
	beq.s loc_201f7a
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f7a:
	tst.w ($f614).w
	beq.w loc_201f86
	subq.w #$1,($f614).w
loc_201f86:
	rts

sub_201f88:
	jsr (sub_202204).l
	bsr.w sub_2020a0
	tst.b ($f64e).w
	bne.s loc_201fbe
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fe2
loc_201fbe:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fe2:
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
	jmp (sub_202220).l
	dc.b $4e,$73

sub_202032:
	tst.b ($d02a).w
	bne.s loc_202042
	tst.w ($f786).w
	beq.s loc_202042
	addq.w #$1,($f786).w
loc_202042:
	rts

sub_202044:
	tst.w ($f780).w
	beq.s loc_20204e
	addq.w #$1,($f780).w
loc_20204e:
	tst.w ($f782).w
	beq.s loc_202058
	addq.w #$1,($f782).w
loc_202058:
	rts

sub_20205a:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_202068
	move.l #$2a6d365a,d1
loc_202068:
	move.l d1,d0
	asl.l #$2,d1
	add.l d0,d1
	asl.l #$3,d1
	add.l d0,d1
	move.w d1,d0
	swap d1
	add.w d1,d0
	move.w d0,d1
	swap d1
	move.l d1,($f636).w
	move.l (a7)+,d1
	rts

sub_202084:
	bsr.w sub_202204
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202220

sub_2020a0:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2020ae
	addq.w #$2,a1

sub_2020ae:
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

sub_2020dc:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202158).l,a2
	moveq #$12,d7
loc_2020f0:
	move.w (a2)+,(a0)
	dbf d7,loc_2020f0
	move.w (dat_20215a).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202116:
	move.w d0,(a1)
	dbf d7,loc_202116
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202148:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202148
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202158:
	dc.b $80,$04
dat_20215a:
	.incbin 8538, 36

sub_20217e:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2021a0:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021a0
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021ce:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021ce
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021ec:
	move.l d0,(a1)+
	dbf d1,loc_2021ec
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2021fc:
	move.l d0,(a1)+
	dbf d1,loc_2021fc
	rts

sub_202204:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202214:
	btst.b #$0,($a11100).l
	bne.s loc_202214
	rts

sub_202220:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8750, 62

sub_20226c:
	tst.b ($f00a).w
	bne.s loc_202278
	move.b d0,($f00a).w
	rts
loc_202278:
	tst.b ($f00b).w
	bne.s loc_202284
	move.b d0,($f00b).w
	rts
loc_202284:
	tst.b ($f00c).w
	bne.s loc_20228e
	move.b d0,($f00c).w
loc_20228e:
	rts

sub_202290:
	jsr (sub_202204).l
	tst.b ($f00a).w
	beq.s loc_2022aa
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2022aa:
	tst.b ($f00b).w
	beq.s loc_2022be
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2022be:
	tst.b ($f00c).w
	beq.s loc_2022d2
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022d2:
	bra.w sub_202220
	.incbin 8918, 32

sub_2022f6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2023b8).l,a3
	lea ($c00000).l,a4
	bra.s loc_202312

sub_202308:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023ce).l,a3
loc_202312:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202320
	adda.w #$a,a3
loc_202320:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023e4
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202340
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202340:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20238c
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202368
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202368:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202376:
	lsr.w #$4,d0
loc_202378:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202386
	jmp (a3)

sub_202382:
	moveq #$0,d4
	moveq #$8,d3
loc_202386:
	dbf d0,loc_202378
	bra.s sub_202340
loc_20238c:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20239a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20239a:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202376
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202376
loc_2023b8:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202382
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202382
	rts
dat_2023ce:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202382
	rts

sub_2023e4:
	move.b (a0)+,d0
loc_2023e6:
	cmpi.b #$ff,d0
	bne.s loc_2023ee
	rts
loc_2023ee:
	move.w d0,d7
loc_2023f0:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023e6
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
	bne.s loc_20241e
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2023f0
loc_20241e:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20242a:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20242a
	bra.s loc_2023f0

sub_202436:
	movem.l a1-a2,-(a7)
	lea (dat_20f64a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20244e:
	tst.l (a2)
	beq.s loc_202456
	addq.w #$6,a2
	bra.s loc_20244e
loc_202456:
	move.w (a1)+,d0
	bmi.s loc_202462
loc_20245a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20245a
loc_202462:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9320, 44

sub_202494:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20249a:
	clr.l (a2)+
	dbf d0,loc_20249a
	rts

sub_2024a2:
	tst.l ($f680).w
	beq.s loc_2024f6
	tst.w ($f6f8).w
	bne.s loc_2024f6
	movea.l ($f680).w,a0
	lea (loc_2023b8).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2024c4
	adda.w #$a,a3
loc_2024c4:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023e4
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
loc_2024f6:
	rts
loc_2024f8:
	tst.w ($f6f8).w
	beq.w loc_202596
loc_202500:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202532

sub_202514:
	tst.w ($f6f8).w
	beq.s loc_202596
	tst.b ($f744).w
	bne.s loc_202500
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202532:
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
loc_202566:
	movea.w #$8,a5
	bsr.w sub_202382
	subq.w #$1,($f6f8).w
	beq.s loc_202598
	subq.w #$1,($f6fa).w
	bne.s loc_202566
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202596:
	rts
loc_202598:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20259e:
	move.l $6(a0),(a0)+
	dbf d0,loc_20259e
	rts

sub_2025a8:
	lea (dat_20f64a).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2025ba:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2022f6
	dbf d1,loc_2025ba
	rts
	.incbin 9690, 560

sub_20280a:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202866).l,a0
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
	bra.w loc_202892
dat_202866:
	dc.b $00,$04,$00,$00,$04,$97,$00,$30
	dc.b $05,$10,$00,$60
dat_202872:
	.incbin 10354, 32
loc_202892:
	tst.b ($ff1522).l
	beq.s loc_2028b2
	jsr (sub_206c5e).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2028b0
	moveq #$0,d0
loc_2028b0:
	bra.s loc_2028ee
loc_2028b2:
	lea (dat_20292a).l,a1
	tst.w ($ff1580).l
	bpl.s loc_2028d4
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202872).l,a1
	adda.w d0,a1
	bra.s loc_2028de
loc_2028d4:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_2028de:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2028ee:
	subi.w #$a0,d1
	bcc.s loc_2028f6
	moveq #$0,d1
loc_2028f6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202900
	move.w d2,d1
loc_202900:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20290c
	moveq #$0,d0
loc_20290c:
	cmp.w ($f72e).w,d0
	blt.s loc_202916
	move.w ($f72e).w,d0
loc_202916:
	move.w d0,($f704).w
	bsr.w sub_202932
	lea (dat_20292e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20292a:
	dc.b $00,$50,$01,$0c
dat_20292e:
	dc.b $7f,$7f,$7f,$7f

sub_202932:
	move.w #$218,d0
	move.w #$520,d2
	sub.w ($f704).w,d2
	bcs.s loc_202948
	lsr.w #$1,d2
	sub.w d2,d0
	bpl.s loc_202948
	moveq #$0,d0
loc_202948:
	move.w d0,($f70c).w
	move.w #$0,($f70e).w
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$4,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f708).w
	lea ($a800).w,a2
	moveq #$b,d2
loc_20297e:
	clr.l (a2)+
	dbf d2,loc_20297e
	rts

sub_202986:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202992
	rts
loc_202992:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202c9e
	bsr.w sub_202d3e
	bsr.w sub_2035c4
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_202fc8
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202f94
	lea ($a930).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f60
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a0a
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a0a
	moveq #$0,d0
loc_202a0a:
	bsr.w sub_202f30
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	addi.l #$c000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202a84:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202a84
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202aa8:
	move.w d0,(a1)+
	dbf d6,loc_202aa8
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202ab6:
	move.w d0,(a1)+
	dbf d6,loc_202ab6
	move.w ($f718).w,d0
	neg.w d0
	moveq #$5,d6
loc_202ac4:
	move.w d0,(a1)+
	dbf d6,loc_202ac4
	lea ($a800).w,a2
	moveq #$b,d6
loc_202ad0:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bb0).l,a3
	move.b $0(a3,d6.w),d5
loc_202ae6:
	move.w d1,(a1)+
	dbf d5,loc_202ae6
	dbf d6,loc_202ad0
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202af8:
	move.w d0,(a1)+
	dbf d6,loc_202af8
	move.w ($f718).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b06:
	move.w d0,(a1)+
	dbf d6,loc_202b06
	move.w ($f710).w,d0
	neg.w d0
	moveq #$d,d6
loc_202b14:
	move.w d0,(a1)+
	dbf d6,loc_202b14
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$6,d2
	divs.w #$18,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$2,d6
	move.w ($f708).w,d3
loc_202b38:
	move.w d3,d0
	neg.w d0
	lea (dat_202bbc).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_202b48:
	move.w d0,(a1)+
	dbf d5,loc_202b48
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b38
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b60:
	move.w d0,(a1)+
	dbf d6,loc_202b60
	lea ($cc00).w,a1
	lea ($a930).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	move.w d0,d4
	andi.w #$3f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$57,d1
	moveq #$1d,d5
	sub.w d3,d1
	bcs.s loc_202bac
	cmpi.w #$1b,d1
	bcs.s loc_202b90
	moveq #$1c,d1
loc_202b90:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202bc0).l,a3
	lea (dat_23d1cc).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c14
loc_202bac:
	bra.w loc_202bc6
dat_202bb0:
	dc.b $01,$03,$03,$01,$01,$03,$01,$03
	dc.b $03,$03,$03,$03
dat_202bbc:
	dc.b $05,$01,$00,$00
dat_202bc0:
	dc.b $00,$18,$7f,$ff,$7f,$ff
loc_202bc6:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a830).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202bd8:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c08
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c08:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202bd8
	rts

sub_202c14:
	cmp.w (a3),d4
	bcc.s loc_202c4a
loc_202c18:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c34(pc,d2.w)
loc_202c28:
	tst.w d1
	bmi.s loc_202c48
	cmp.w (a3),d4
	bcc.s loc_202c64
loc_202c30:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c34:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c28
loc_202c48:
	rts
loc_202c4a:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202c6e
	cmp.w (a3),d4
	bcs.s loc_202c18
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c18
	bra.s loc_202c6e
loc_202c64:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c30
loc_202c6e:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202c78:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202c78
	lsr.w #$3,d6
loc_202c94:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202c94
	bra.s loc_202c28

sub_202c9e:
	move.w ($f700).w,d4
	bsr.s sub_202cd2
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202cd0
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202cca
	bset.b #$2,($f754).w
	rts
loc_202cca:
	bset.b #$3,($f754).w
loc_202cd0:
	rts

sub_202cd2:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ce4
	bcs.s loc_202d14
	bra.s loc_202cea
loc_202ce4:
	clr.w ($f73a).w
	rts
loc_202cea:
	cmpi.w #$10,d0
	blt.s loc_202cf4
	move.w #$10,d0
loc_202cf4:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d02
	move.w ($f72a).w,d0
loc_202d02:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d14:
	cmpi.w #$fff0,d0
	bge.s loc_202d1e
	move.w #$fff0,d0
loc_202d1e:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d02
	move.w ($f728).w,d0
	bra.s loc_202d02
	.incbin 11566, 16

sub_202d3e:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d52
	subq.w #$5,d0
loc_202d52:
	btst.b #$1,$22(a6)
	beq.s loc_202d72
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202dbe
	subi.w #$40,d0
	bcc.s loc_202dbe
	tst.b ($f75c).w
	bne.s loc_202dd0
	bra.s loc_202d7e
loc_202d72:
	sub.w ($f73e).w,d0
	bne.s loc_202d84
	tst.b ($f75c).w
	bne.s loc_202dd0
loc_202d7e:
	clr.w ($f73c).w
	rts
loc_202d84:
	cmpi.w #$60,($f73e).w
	bne.s loc_202dac
	move.w $14(a6),d1
	bpl.s loc_202d94
	neg.w d1
loc_202d94:
	cmpi.w #$800,d1
	bcc.s loc_202dbe
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e1e
	cmpi.w #$fffa,d0
	blt.s loc_202de8
	bra.s loc_202dd6
loc_202dac:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e1e
	cmpi.w #$fffe,d0
	blt.s loc_202de8
	bra.s loc_202dd6
loc_202dbe:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e1e
	cmpi.w #$fff0,d0
	blt.s loc_202de8
	bra.s loc_202dd6
loc_202dd0:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202dd6:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e28
	bra.w loc_202df4
loc_202de8:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202df4:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e4c
	cmpi.w #$ff00,d1
	bgt.s loc_202e18
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e4c
loc_202e18:
	move.w ($f72c).w,d1
	bra.s loc_202e4c
loc_202e1e:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e28:
	cmp.w ($f72e).w,d1
	blt.s loc_202e4c
	subi.w #$800,d1
	bcs.s loc_202e48
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e4c
loc_202e48:
	move.w ($f72e).w,d1
loc_202e4c:
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
	bne.s loc_202e8e
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e88
	bset.b #$0,($f754).w
	rts
loc_202e88:
	bset.b #$1,($f754).w
loc_202e8e:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202ec4
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202ebe
	bset.b #$2,($f756).w
	bra.s loc_202ec4
loc_202ebe:
	bset.b #$3,($f756).w
loc_202ec4:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202ef8
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202ef2
	bset.b #$0,($f756).w
	rts
loc_202ef2:
	bset.b #$1,($f756).w
loc_202ef8:
	rts
	.incbin 12026, 54

sub_202f30:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f5e
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f58
	bset.b #$0,($f756).w
	rts
loc_202f58:
	bset.b #$1,($f756).w
loc_202f5e:
	rts

sub_202f60:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f92
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f8c
	bset.b d6,($f756).w
	bra.s loc_202f92
loc_202f8c:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202f92:
	rts

sub_202f94:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202fc6
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202fc0
	bset.b d6,($f758).w
	bra.s loc_202fc6
loc_202fc0:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202fc6:
	rts

sub_202fc8:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202ffa
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202ff4
	bset.b d6,($f75a).w
	bra.s loc_202ffa
loc_202ff4:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202ffa:
	rts
	.incbin 12284, 44

sub_203028:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2030e6
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2031ca
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2031cc
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_2030e4
	bclr.b #$0,(a2)
	beq.s loc_20309a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033f8
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031ce
loc_20309a:
	bclr.b #$1,(a2)
	beq.s loc_2030b4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033f8
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031ce
loc_2030b4:
	bclr.b #$2,(a2)
	beq.s loc_2030ca
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033f8
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203224
loc_2030ca:
	bclr.b #$3,(a2)
	beq.s loc_2030e4
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2033f8
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203224
loc_2030e4:
	rts

sub_2030e6:
	lea (dat_2034b0).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203102
	bclr.b #$1,(a2)
	beq.s loc_20314c
	move.w #$e0,d4
loc_203102:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20317c(pc,d0.w),a3
	beq.s loc_203134
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f8
	movem.l (a7)+,d4-d5
	bsr.w sub_2031ce
	movea.l (a7)+,a0
	bra.s loc_20314c
loc_203134:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033fa
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031fa
	movea.l (a7)+,a0
loc_20314c:
	tst.b (a2)
	bne.s loc_203152
	rts
loc_203152:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203166
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203166:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20318c
dat_20317c:
	.incbin 12668, 16
loc_20318c:
	moveq #$f,d6
	move.l #$800000,d7
loc_203194:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2031be
	add.w d0,d0
	movea.l dat_20317c(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d0
	movem.l (a7)+,d4-d5
	bsr.w sub_2033f8
	bsr.w sub_203252
	movem.l (a7)+,d4-d5/a0
loc_2031be:
	addi.w #$10,d4
	dbf d6,loc_203194
	clr.b (a2)
	rts

sub_2031ca:
	rts

sub_2031cc:
	rts

sub_2031ce:
	moveq #$15,d6

sub_2031d0:
	move.l #$800000,d7
	move.l d0,d1
loc_2031d8:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d0
	move.l d1,d0
	bsr.w sub_203252
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031d8
	rts

sub_2031fa:
	move.l #$800000,d7
	move.l d0,d1
loc_203202:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d2
	move.l d1,d0
	bsr.w sub_203252
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203202
	rts

sub_203224:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20322e:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032d0
	move.l d1,d0
	bsr.w sub_203252
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20322e
	rts

sub_203252:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20328e
	btst.b #$3,(a0)
	bne.s loc_20326e
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20326e:
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
loc_20328e:
	btst.b #$3,(a0)
	bne.s loc_2032b0
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
loc_2032b0:
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

sub_2032d0:
	add.w (a3),d5

sub_2032d2:
	add.w $4(a3),d4

sub_2032d6:
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
	beq.s loc_203320
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
loc_203320:
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

sub_20335a:
	move.l a0,-(a7)
	lea ($a000).w,a4
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2032d6
	bne.s loc_203386
	movem.l (a7)+,d3-d5
	bra.s loc_2033b0
loc_203386:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2033b4
	bne.s loc_2033b0
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2033fe
	bsr.w sub_203252
	movem.l (a7)+,d3-d5
loc_2033b0:
	movea.l (a7)+,a0
	rts

sub_2033b4:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2033f4
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2033f4
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2033f4
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2033f4
	moveq #$0,d0
	rts
loc_2033f4:
	moveq #$1,d0
	rts

sub_2033f8:
	add.w (a3),d5

sub_2033fa:
	add.w $4(a3),d4

sub_2033fe:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13332, 28

sub_203430:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20345a
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203482

sub_20345a:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20345e:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2033f8
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2031d0
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20345e
	rts
loc_203482:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203486:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034b0).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2034f2
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203486
	rts
dat_2034b0:
	.incbin 13488, 50
dat_2034e2:
	.incbin 13538, 16

sub_2034f2:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2034e2(pc,d0.w),a3
	beq.s loc_203514
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f8
	movem.l (a7)+,d4-d5
	bsr.w sub_2031ce
	bra.s loc_203528
loc_203514:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033fa
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031fa
loc_203528:
	rts

sub_20352a:
	moveq #$0,d0
	lea (dat_20f63a).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202308
	movea.l (a2)+,a0
	bsr.w sub_203576
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004c6
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203574
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203574
	bsr.w sub_202436
loc_203574:
	rts

sub_203576:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203580:
	move.l d0,(a3)+
	dbf d1,loc_203580
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203596
	lea ($a040).w,a3
	moveq #$2,d1

sub_203596:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2395a2).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2035b0:
	move.w d1,d0
	movea.l a3,a0
loc_2035b4:
	move.b (a1)+,(a0)+
	dbf d0,loc_2035b4
	lea $80(a3),a3
	dbf d2,loc_2035b0
	rts

sub_2035c4:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20363e(pc,d0.w),d0
	jsr dat_20363e(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2035ea
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2035ea:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203618
	bcc.s loc_20361a
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20360e
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20360e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203618:
	rts
loc_20361a:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203632
	btst.b #$1,($d022).w
	beq.s loc_203632
	add.w d1,d1
	add.w d1,d1
loc_203632:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20363e:
	.incbin 13886, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2036f8(pc,d0.w),d0
	jmp dat_2036f8(pc,d0.w)
dat_2036f8:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	tst.b ($f7a7).w
	bne.w loc_203716
	move.w #$510,($f726).w
	rts
loc_203716:
	move.w #$60,d1
	bra.w loc_2038f4
	.incbin 14110, 470
loc_2038f4:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203900
	neg.w d1
loc_203900:
	cmpi.w #$4,d1
	bge.s loc_20390c
	move.w ($f726).w,($f72e).w
loc_20390c:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_20392c
	cmp.w ($f72a).w,d0
	ble.s loc_203924
	move.w ($f72a).w,d0
loc_203924:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_20392c:
	moveq #$1,d0
	rts

sub_203930:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203938:
	move.b (a0),d0
	beq.s loc_20394e
	add.w d0,d0
	add.w d0,d0
	lea (dat_203d52).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20394e:
	lea $40(a0),a0
	dbf d7,loc_203938
	rts

sub_203958:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203996
	bpl.s loc_203988
	btst.b #$1,$2c(a0)
	beq.s loc_203988
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203996
loc_203988:
	btst.b #$2,$2c(a0)
	bne.s loc_203996
	addi.w #$38,$12(a0)
loc_203996:
	tst.w $12(a0)
	bmi.s loc_2039aa
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2039aa
	move.w #$1000,$12(a0)
loc_2039aa:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2039ba:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_2039f6
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2039f6
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2039f4
	neg.w d1
loc_2039f4:
	add.w d1,d0
loc_2039f6:
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

sub_203a10:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203a80
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a9c
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203a9c
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203a5a
	cmpi.w #$800,d3
	bcs.s loc_203a6c
	subi.w #$800,d3
	bra.s loc_203a6c
loc_203a5a:
	cmpi.w #$700,($f704).w
	bcs.s loc_203a6c
	cmpi.w #$100,d3
	bcc.s loc_203a6c
	addi.w #$800,d3
loc_203a6c:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203a9c
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203a9c
loc_203a80:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203a9c
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203a9c:
	rts
	.incbin 15006, 30

sub_203abc:
	movea.l a0,a1
loc_203abe:
	moveq #$0,d1
	moveq #$f,d0
loc_203ac2:
	move.l d1,(a1)+
	dbf d0,loc_203ac2
	rts
dat_203aca:
	.incbin 15050, 16

sub_203ada:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203ae6:
	tst.w (a4)
	beq.w loc_203ba6
	moveq #$2,d6
loc_203aee:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203b9e
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203b54
	movea.l dat_203aca(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b38
	cmpi.w #$800,d2
	bcs.s loc_203b4a
	subi.w #$800,d2
	bra.s loc_203b4a
loc_203b38:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b4a
	cmpi.w #$100,d2
	bcc.s loc_203b4a
	addi.w #$800,d2
loc_203b4a:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203b76
loc_203b54:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203b76
	.incbin 15198, 24
loc_203b76:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203b94
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203b98
loc_203b94:
	bsr.w sub_203bc8
loc_203b98:
	bset.b #$7,$1(a0)
loc_203b9e:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203aee
loc_203ba6:
	lea $80(a4),a4
	dbf d7,loc_203ae6
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203bc0
	move.l #$0,(a2)
	rts
loc_203bc0:
	move.b #$0,-$5(a2)
	rts

sub_203bc8:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c0e
	btst.l #$1,d4
	bne.w loc_203c5c
loc_203bda:
	cmpi.b #$50,d5
	beq.s loc_203c0c
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
	bne.s loc_203c06
	addq.w #$1,d0
loc_203c06:
	move.w d0,(a2)+
	dbf d1,loc_203bda
loc_203c0c:
	rts
loc_203c0e:
	btst.l #$1,d4
	bne.w loc_203ca2
loc_203c16:
	cmpi.b #$50,d5
	beq.s loc_203c5a
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
	bne.s loc_203c54
	addq.w #$1,d0
loc_203c54:
	move.w d0,(a2)+
	dbf d1,loc_203c16
loc_203c5a:
	rts
loc_203c5c:
	cmpi.b #$50,d5
	beq.s loc_203ca0
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
	bne.s loc_203c9a
	addq.w #$1,d0
loc_203c9a:
	move.w d0,(a2)+
	dbf d1,loc_203c5c
loc_203ca0:
	rts
loc_203ca2:
	cmpi.b #$50,d5
	beq.s loc_203cf4
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
	bne.s loc_203cee
	addq.w #$1,d0
loc_203cee:
	move.w d0,(a2)+
	dbf d1,loc_203ca2
loc_203cf4:
	rts
	.incbin 15606, 92
dat_203d52:
	.incbin 15698, 258

sub_203e54:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203e66
	move.w #$0,(a1)
	rts
loc_203e66:
	tst.w (a1)
	bne.s loc_203e70
	move.b #$1,$1(a1)
loc_203e70:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203eba
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203eac
	neg.w $10(a0)
loc_203eac:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205be6
loc_203eba:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203ed8
	cmpa.w #$d040,a0
	beq.s loc_203ed8
	tst.b ($ff1906).l
	beq.s loc_203ed8
	jmp (loc_207584).l
loc_203ed8:
	move.b $2a(a0),d0
	beq.s loc_203f02
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203ef4
	cmpi.b #$2d,d0
	bcs.s loc_203efe
	move.b #$2d,d0
	bra.s loc_203efe
loc_203ef4:
	cmpi.b #$1e,d0
	bcs.s loc_203efe
	move.b #$1e,d0
loc_203efe:
	move.b d0,$2a(a0)
loc_203f02:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f10(pc,d0.w),d1
	jmp dat_203f10(pc,d1.w)
dat_203f10:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f1a:
	tst.b ($d300).w
	bne.s loc_203f58
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f58:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203f80
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203f80:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203fb4:
	tst.b ($ff1506).l
	bne.s loc_20401a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_20401a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_20401e
	cmpi.b #$2f,d1
	bne.s loc_20401c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_20401a
	tst.b $2c(a0)
	beq.s loc_20401a
	jsr (sub_2079b0).l
	bne.s loc_20401a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204012
	moveq #$0,d0
loc_204012:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20401a:
	rts
loc_20401c:
	rts

sub_20401e:
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

sub_204044:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204050
	neg.w d0
loc_204050:
	btst.b #$1,$2c(a0)
	beq.s loc_204060
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204088
loc_204060:
	cmpi.w #$600,d0
	bcs.s loc_204088
	tst.w $14(a0)
	bpl.s loc_20407a
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204096
	move.w #$e0,d1
	bra.s loc_204096
loc_20407a:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204096
	move.w #$60,d1
	bra.s loc_204096
loc_204088:
	cmpi.w #$a0,d1
	beq.s loc_204096
	bcc.s loc_204094
	addq.w #$2,d1
	bra.s loc_204096
loc_204094:
	subq.w #$2,d1
loc_204096:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204044
	bsr.w sub_203fb4
	tst.w ($ff1588).l
	beq.s loc_2040bc
	btst.b #$4,($f605).w
	beq.s loc_2040bc
	move.b #$1,($ff1906).l
	rts
loc_2040bc:
	tst.b ($f7cc).w
	bne.s loc_2040c8
	move.w ($f604).w,($f602).w
loc_2040c8:
	btst.b #$0,$2c(a0)
	beq.s loc_2040ec
	cmpi.b #$6,($ff1506).l
	bne.s loc_2040e6
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204104
loc_2040e6:
	bsr.w sub_2043ce
	bra.s loc_204104
loc_2040ec:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20414a(pc,d0.w),d1
	jsr dat_20414a(pc,d1.w)
	jsr (sub_20669e).l
loc_204104:
	bsr.s sub_204158
	bsr.w sub_204218
	bsr.w sub_204232
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20412c
	tst.b $1c(a0)
	bne.s loc_20412c
	move.b $1d(a0),$1c(a0)
loc_20412c:
	bsr.w sub_2055d6
	tst.b $2c(a0)
	bmi.s loc_204144
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204144
	jsr (sub_20712e).l
loc_204144:
	bsr.w sub_20548c
	rts
dat_20414a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204158:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20417c
	move.w $30(a0),d0
	beq.s loc_20416e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20417c
loc_20416e:
	btst.b #$6,$2c(a0)
	bne.s loc_20417c
	jsr (sub_203a10).l
loc_20417c:
	tst.b ($ff151f).l
	beq.s loc_2041c0
	tst.w $32(a0)
	beq.s loc_2041c0
	subq.w #$1,$32(a0)
	bne.s loc_2041c0
	tst.b ($ff1520).l
	bne.s loc_2041b8
	tst.b ($ff1958).l
	bne.s loc_2041b8
	tst.b ($ff152e).l
	bne.s loc_2041b2
	move.w #$e,d0
	jsr (sub_205be6).l
loc_2041b2:
	jsr (sub_201a60).l
loc_2041b8:
	move.b #$0,($ff151f).l
loc_2041c0:
	tst.b ($ff1520).l
	beq.s loc_204216
	tst.w $34(a0)
	beq.s loc_204216
	subq.w #$1,$34(a0)
	bne.s loc_204216
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20420e
	tst.b ($ff1958).l
	bne.s loc_20420e
	tst.b ($ff152e).l
	bne.s loc_204208
	move.w #$e,d0
	jsr (sub_205be6).l
loc_204208:
	jsr (sub_201a60).l
loc_20420e:
	move.b #$0,($ff1520).l
loc_204216:
	rts

sub_204218:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204232:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20423e
loc_20423c:
	rts
loc_20423e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204250
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20423c
loc_204250:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204294
	bset.b #$6,$22(a0)
	bne.s loc_20423c
	bsr.w sub_205eea
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20423c
	bra.s loc_2042cc
loc_204294:
	tst.w $12(a0)
	beq.s loc_20429c
	bpl.s loc_20423c
loc_20429c:
	bclr.b #$6,$22(a0)
	beq.s loc_20423c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20423c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2042cc
	move.w #$f000,$12(a0)
loc_2042cc:
	jsr (sub_2079b0).l
	bne.s loc_2042e0
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2042e0:
	rts

sub_2042e2:
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
	bcs.s loc_2043bc
	move.l #$50000,d0
loc_2043bc:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2043ce:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2043f4
	tst.b ($ff152e).l
	beq.s loc_2043ea
	cmpi.b #$2,($ff152e).l
	bne.s loc_2043f4
loc_2043ea:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044a4
loc_2043f4:
	tst.b $2a(a0)
	bne.w loc_2044b2
	tst.b ($f784).w
	beq.w loc_2044b2
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204412
	neg.w d0
loc_204412:
	tst.w ($f786).w
	bne.s loc_20441e
	move.w #$1,($f786).w
loc_20441e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204434
	move.b #$1,($ff1502).l
	bra.w loc_205be2
loc_204434:
	cmpi.w #$d2,d1
	bcs.s loc_204488
	cmpi.b #$2,($ff1522).l
	beq.s loc_204486
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20445e
	move.w #$82,d0
	jsr (sub_205be6).l
	moveq #$0,d0
loc_20445e:
	add.b ($f784).w,d0
	bpl.s loc_204468
	moveq #$0,d0
	bra.s loc_204470
loc_204468:
	cmpi.b #$3,d0
	bcs.s loc_204470
	moveq #$2,d0
loc_204470:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2042e2
	move.b #$2,($ff1522).l
loc_204486:
	rts
loc_204488:
	cmpi.w #$5a,d1
	bcc.s loc_2044a0
	cmp.w d2,d0
	bcc.w loc_203f1a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044a0:
	cmp.w d2,d0
	bcc.s loc_2044b2
loc_2044a4:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044b2:
	rts
	bsr.w sub_203e54
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2044e4
	tst.b ($ff195b).l
	beq.s loc_2044d2
	cmpi.b #$79,$1a(a0)
	bne.s loc_20450e
	bra.s loc_2044da
loc_2044d2:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20450e
loc_2044da:
	bsr.w sub_204d76
	jmp (sub_203958).l
loc_2044e4:
	bsr.w sub_2045bc
	bsr.w sub_2043ce
	bsr.w sub_204e60
	bsr.w sub_204f8c
	bsr.w sub_204630
	bsr.w sub_204de2
	bsr.w sub_204d76
	jsr (sub_2039ba).l
	bsr.w sub_200b70
	bsr.w sub_20500a
loc_20450e:
	rts
	tst.b ($f7c7).w
	bne.s loc_20452a
	cmpi.b #$15,$1c(a0)
	beq.s loc_20452a
	tst.w $12(a0)
	bmi.s loc_20452a
	move.b #$0,$1c(a0)
loc_20452a:
	bsr.w sub_2045bc
	bsr.w sub_2043ce
	bsr.w sub_204f4a
	bsr.w sub_204c96
	bsr.w sub_204d76
	jsr (sub_203958).l
	btst.b #$6,$22(a0)
	beq.s loc_204552
	subi.w #$28,$12(a0)
loc_204552:
	bsr.w sub_205054
	bsr.w sub_205078
	rts
	bsr.w sub_2045bc
	bsr.w sub_2043ce
	bsr.w sub_204e60
	bsr.w sub_204fc8
	bsr.w sub_204ad0
	bsr.w sub_204d76
	tst.b $2a(a0)
	bne.s loc_204580
	jsr (sub_2039ba).l
loc_204580:
	bsr.w sub_200b70
	bsr.w sub_20500a
	rts
	bsr.w sub_2045bc
	bsr.w sub_2043ce
	bsr.w sub_204f4a
	bsr.w sub_204c96
	bsr.w sub_204d76
	jsr (sub_203958).l
	btst.b #$6,$22(a0)
	beq.s loc_2045b2
	subi.w #$28,$12(a0)
loc_2045b2:
	bsr.w sub_205054
	bsr.w sub_205078
	rts

sub_2045bc:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204628
	tst.w ($ff1506).l
	bne.s loc_204628
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20462a).l,a2
loc_2045f0:
	move.b (a2)+,d0
	bmi.s loc_204600
	cmp.b d0,d1
	bne.s loc_2045f0
	bset.b #$1,$2c(a0)
	rts
loc_204600:
	bclr.b #$1,$2c(a0)
	beq.s loc_204628
	tst.w $12(a0)
	bpl.s loc_204628
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204628
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204628
	neg.w $10(a0)
loc_204628:
	rts
dat_20462a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204630:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20495a
	tst.w $3e(a0)
	bne.w loc_20490a
	btst.b #$2,($f602).w
	beq.s loc_204658
	bsr.w sub_2049ea
loc_204658:
	btst.b #$3,($f602).w
	beq.s loc_204664
	bsr.w sub_204a60
loc_204664:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20490a
	tst.w $14(a0)
	beq.s loc_204684
	tst.b $2a(a0)
	beq.w loc_20490a
	bra.s loc_204690
loc_204684:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204690:
	btst.b #$3,$22(a0)
	beq.s loc_2046e2
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20473a
	cmpi.b #$1e,$0(a1)
	bne.s loc_2046c2
	move.b #$0,$1c(a0)
	bra.w loc_20490a
loc_2046c2:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20471e
	cmp.w d2,d1
	bge.s loc_20470c
	bra.s loc_20473a
loc_2046e2:
	jsr (sub_206e92).l
	cmpi.w #$c,d1
	blt.s loc_20473a
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204716
loc_20470c:
	btst.b #$0,$22(a0)
	bne.s loc_204726
	bra.s loc_204730
loc_204716:
	cmpi.b #$3,$37(a0)
	bne.s loc_20473a
loc_20471e:
	btst.b #$0,$22(a0)
	bne.s loc_204730
loc_204726:
	move.b #$32,$1c(a0)
	bra.w loc_20490a
loc_204730:
	move.b #$6,$1c(a0)
	bra.w loc_20490a
loc_20473a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20474e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20474e:
	btst.b #$7,($f788).w
	bne.w loc_204852
	btst.b #$6,($f788).w
	bne.w loc_204872
	btst.b #$1,($f602).w
	bne.w loc_204872
	andi.b #$f,($f788).w
	beq.s loc_204786
	btst.b #$0,($f603).w
	beq.s loc_20479a
	bset.b #$7,($f788).w
	bra.w loc_20492e
loc_204786:
	btst.b #$0,($f603).w
	beq.w loc_20479a
	move.b #$1,($f788).w
	bra.w loc_20492e
loc_20479a:
	btst.b #$0,($f602).w
	beq.s loc_204816
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2047f8
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2047ca
	asr.w #$1,d2
	sub.w d2,d1
loc_2047ca:
	btst.b #$0,$22(a0)
	beq.s loc_2047d6
	neg.w d0
	neg.w d1
loc_2047d6:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2047ec
	cmp.w d0,d1
	ble.s loc_2047f2
	bra.s loc_2047f0
loc_2047ec:
	cmp.w d1,d0
	ble.s loc_2047f2
loc_2047f0:
	move.w d1,d0
loc_2047f2:
	move.w d0,$14(a0)
	rts
loc_2047f8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204812
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20226c).l
loc_204812:
	bra.w loc_20492e
loc_204816:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204836
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204872
loc_204836:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226c).l
	bra.w loc_20490a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204852:
	btst.b #$0,($f602).w
	beq.s loc_204872
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20492e
	addq.w #$2,($f73e).w
	bra.w loc_20492e
loc_204872:
	btst.b #$6,($f788).w
	bne.w loc_2048ee
	andi.b #$f,($f788).w
	beq.s loc_204896
	btst.b #$1,($f603).w
	beq.s loc_2048a8
	bset.b #$6,($f788).w
	bra.w loc_20492e
loc_204896:
	btst.b #$1,($f603).w
	beq.s loc_2048a8
	move.b #$1,($f788).w
	bra.w loc_20492e
loc_2048a8:
	btst.b #$1,($f602).w
	beq.s loc_20490a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2048ec
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048ec
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2048de
	neg.w $14(a0)
loc_2048de:
	move.w #$9c,d0
	jsr (sub_20226c).l
	bsr.w sub_204e0a
loc_2048ec:
	bra.s loc_20492e
loc_2048ee:
	btst.b #$1,($f602).w
	beq.s loc_20490a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20492e
	subq.w #$2,($f73e).w
	bra.s loc_20492e
loc_20490a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204924
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20492e
	move.b #$0,($f788).w
	bra.s loc_20492e
loc_204924:
	bcc.s loc_20492a
	addq.w #$4,($f73e).w
loc_20492a:
	subq.w #$2,($f73e).w
loc_20492e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20495a
	move.w $14(a0),d0
	beq.s loc_20495a
	bmi.s loc_20494e
	sub.w d5,d0
	bcc.s loc_204948
	move.w #$0,d0
loc_204948:
	move.w d0,$14(a0)
	bra.s loc_20495a
loc_20494e:
	add.w d5,d0
	bcc.s loc_204956
	move.w #$0,d0
loc_204956:
	move.w d0,$14(a0)
loc_20495a:
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204978:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2049e8
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2049e8
	bmi.s loc_204990
	neg.w d1
loc_204990:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d52
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2049e8
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2049e4
	cmpi.b #$40,d0
	beq.s loc_2049d2
	cmpi.b #$80,d0
	beq.s loc_2049cc
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2049cc:
	sub.w d1,$12(a0)
	rts
loc_2049d2:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2049e4:
	add.w d1,$12(a0)
loc_2049e8:
	rts

sub_2049ea:
	tst.b $2a(a0)
	bne.s loc_204a5e
	move.w $14(a0),d0
	beq.s loc_2049f8
	bpl.s loc_204a28
loc_2049f8:
	bset.b #$0,$22(a0)
	bne.s loc_204a0c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a0c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a1c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a1c
	move.w d1,d0
loc_204a1c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a28:
	sub.w d4,d0
	bcc.s loc_204a30
	move.w #$ff80,d0
loc_204a30:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a5e
	cmpi.w #$400,d0
	blt.s loc_204a5e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226c).l
loc_204a5e:
	rts

sub_204a60:
	tst.b $2a(a0)
	bne.s loc_204ace
	move.w $14(a0),d0
	bmi.s loc_204a98
	bclr.b #$0,$22(a0)
	beq.s loc_204a80
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a80:
	cmp.w d6,d0
	bge.s loc_204a8c
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204a8c
	move.w d6,d0
loc_204a8c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a98:
	add.w d4,d0
	bcc.s loc_204aa0
	move.w #$80,d0
loc_204aa0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ace
	cmpi.w #$fc00,d0
	bgt.s loc_204ace
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226c).l
loc_204ace:
	rts

sub_204ad0:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204c1a
	tst.w $3e(a0)
	bne.s loc_204b08
	btst.b #$2,($f602).w
	beq.s loc_204afc
	bsr.w sub_204c50
loc_204afc:
	btst.b #$3,($f602).w
	beq.s loc_204b08
	bsr.w sub_204c74
loc_204b08:
	tst.b $2a(a0)
	beq.w loc_204bb2
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204b28
	asr.w #$1,d2
	sub.w d2,d1
loc_204b28:
	btst.b #$0,$22(a0)
	beq.s loc_204b34
	neg.w d0
	neg.w d1
loc_204b34:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b4a
	cmp.w d0,d1
	ble.s loc_204b50
	bra.s loc_204b4e
loc_204b4a:
	cmp.w d1,d0
	ble.s loc_204b50
loc_204b4e:
	move.w d1,d0
loc_204b50:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204b84
	rts
loc_204b5e:
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204be4
loc_204b84:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204b5e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226c).l
	btst.b #$0,$22(a0)
	bne.s loc_204baa
	bsr.w sub_204c74
	bra.s loc_204bb2
loc_204baa:
	bsr.w sub_204c50
	bra.s loc_204bb2
	dc.b $4e,$75
loc_204bb2:
	move.w $14(a0),d0
	beq.s loc_204bd4
	bmi.s loc_204bc8
	sub.w d5,d0
	bcc.s loc_204bc2
	move.w #$0,d0
loc_204bc2:
	move.w d0,$14(a0)
	bra.s loc_204bd4
loc_204bc8:
	add.w d5,d0
	bcc.s loc_204bd0
	move.w #$0,d0
loc_204bd0:
	move.w d0,$14(a0)
loc_204bd4:
	tst.w $14(a0)
	bne.s loc_204c1a
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_204be4:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c04
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c14
loc_204c04:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c14:
	move.b #$5,$1c(a0)
loc_204c1a:
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c3e
	move.w #$1000,d1
loc_204c3e:
	cmpi.w #$f000,d1
	bge.s loc_204c48
	move.w #$f000,d1
loc_204c48:
	move.w d1,$10(a0)
	bra.w loc_204978

sub_204c50:
	move.w $14(a0),d0
	beq.s loc_204c58
	bpl.s loc_204c66
loc_204c58:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c66:
	sub.w d4,d0
	bcc.s loc_204c6e
	move.w #$ff80,d0
loc_204c6e:
	move.w d0,$14(a0)
	rts

sub_204c74:
	move.w $14(a0),d0
	bmi.s loc_204c88
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c88:
	add.w d4,d0
	bcc.s loc_204c90
	move.w #$80,d0
loc_204c90:
	move.w d0,$14(a0)
	rts

sub_204c96:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204cd0
	tst.w ($ff1506).l
	bne.s loc_204cd0
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204cc8
	cmpi.w #$840,$8(a0)
	bcc.s loc_204cc8
	rts
loc_204cc8:
	btst.b #$1,$2c(a0)
	bne.s loc_204d00
loc_204cd0:
	btst.b #$2,($f602).w
	beq.s loc_204cea
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204cea
	move.w d1,d0
loc_204cea:
	btst.b #$3,($f602).w
	beq.s loc_204d00
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d00
	move.w d6,d0
loc_204d00:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204d16
	bcc.s loc_204d12
	addq.w #$4,($f73e).w
loc_204d12:
	subq.w #$2,($f73e).w
loc_204d16:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204d44
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204d44
	bmi.s loc_204d38
	sub.w d1,d0
	bcc.s loc_204d32
	move.w #$0,d0
loc_204d32:
	move.w d0,$10(a0)
	rts
loc_204d38:
	sub.w d1,d0
	bcs.s loc_204d40
	move.w #$0,d0
loc_204d40:
	move.w d0,$10(a0)
loc_204d44:
	rts
	.incbin 19782, 48

sub_204d76:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204dca
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204da4
	addi.w #$38,d0
loc_204da4:
	cmp.w d1,d0
	bls.s loc_204dca
loc_204da8:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204db8
	rts
loc_204db8:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2073c8
	move.b #$6,$24(a0)
	rts
loc_204dca:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204da8

sub_204de2:
	tst.b ($f7ca).w
	bne.s loc_204e08
	move.w $14(a0),d0
	bpl.s loc_204df0
	neg.w d0
loc_204df0:
	cmpi.w #$80,d0
	bcs.s loc_204e08
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e08
	btst.b #$1,($f602).w
	bne.s sub_204e0a
loc_204e08:
	rts

sub_204e0a:
	btst.b #$2,$22(a0)
	beq.s loc_204e14
	bra.s loc_204e44
loc_204e14:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e34
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e44
loc_204e34:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e44:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204e5e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204e5e
	move.w #$200,$14(a0)
loc_204e5e:
	rts

sub_204e60:
	tst.b $2a(a0)
	beq.s loc_204e68
	rts
loc_204e68:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204e7a
	tst.w $14(a0)
	beq.w loc_204f40
loc_204e7a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f40
	btst.b #$3,$22(a0)
	beq.s loc_204e96
	jsr (sub_205b6c).l
	beq.s loc_204ec6
loc_204e96:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206dbc
	cmpi.w #$6,d1
	blt.w loc_204f40
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204ebc
	move.w #$380,d2
loc_204ebc:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204ec6:
	jsr (sub_200770).l
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
	jsr (sub_20226c).l
	btst.b #$2,$22(a0)
	bne.s loc_204f42
	tst.b ($ff195b).l
	beq.s loc_204f24
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f34
loc_204f24:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f34:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f40:
	rts
loc_204f42:
	bset.b #$4,$22(a0)
	rts

sub_204f4a:
	tst.b $3c(a0)
	beq.s loc_204f7c
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204f60
	move.w #$fe00,d1
loc_204f60:
	cmp.w $12(a0),d1
	ble.s loc_204f7a
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204f7a
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204f7a:
	rts
loc_204f7c:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204f8a
	move.w #$f040,$12(a0)
loc_204f8a:
	rts

sub_204f8c:
	tst.b $2a(a0)
	bne.s loc_204fc6
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204fc6
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204fc6
	bmi.s loc_204fc2
	tst.w d0
	beq.s loc_204fc0
	add.w d0,$14(a0)
loc_204fc0:
	rts
loc_204fc2:
	add.w d0,$14(a0)
loc_204fc6:
	rts

sub_204fc8:
	tst.b $2a(a0)
	bne.s loc_205008
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205008
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204ffe
	tst.w d0
	bpl.s loc_204ff8
	asr.l #$2,d0
loc_204ff8:
	add.w d0,$14(a0)
	rts
loc_204ffe:
	tst.w d0
	bmi.s loc_205004
	asr.l #$2,d0
loc_205004:
	add.w d0,$14(a0)
loc_205008:
	rts

sub_20500a:
	nop
	tst.b $38(a0)
	bne.s loc_20504c
	tst.w $3e(a0)
	bne.s loc_20504e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20504c
	move.w $14(a0),d0
	bpl.s loc_20502e
	neg.w d0
loc_20502e:
	cmpi.w #$280,d0
	bcc.s loc_20504c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_20504c:
	rts
loc_20504e:
	subq.w #$1,$3e(a0)
	rts

sub_205054:
	btst.b #$1,$2c(a0)
	bne.s loc_205076
	move.b $26(a0),d0
	beq.s loc_205076
	bpl.s loc_20506c
	addq.b #$2,d0
	bcc.s loc_20506a
	moveq #$0,d0
loc_20506a:
	bra.s loc_205072
loc_20506c:
	subq.b #$2,d0
	bcc.s loc_205072
	moveq #$0,d0
loc_205072:
	move.b d0,$26(a0)
loc_205076:
	rts

sub_205078:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20515c
	cmpi.b #$80,d0
	beq.w loc_2051be
	cmpi.b #$c0,d0
	beq.w loc_20521a
	bsr.w sub_2070d2
	tst.w d1
	bpl.s loc_2050ca
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050ca:
	bsr.w sub_206f34
	tst.w d1
	bpl.s loc_2050dc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050dc:
	bsr.w sub_206de4
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20515a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2050fa
	cmp.b d2,d0
	blt.s loc_20515a
loc_2050fa:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20527c
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205138
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20512a
	asr.w $12(a0)
	bra.s loc_20514c
loc_20512a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205138:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20514c
	move.w #$fc0,$12(a0)
loc_20514c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20515a
	neg.w $14(a0)
loc_20515a:
	rts
loc_20515c:
	bsr.w sub_2070d2
	tst.w d1
	bpl.s loc_205176
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205176:
	bsr.w sub_206f8c
	tst.w d1
	bpl.s loc_205190
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20518e
	move.w #$0,$12(a0)
loc_20518e:
	rts
loc_205190:
	tst.w $12(a0)
	bmi.s loc_2051bc
	bsr.w sub_206de4
	tst.w d1
	bpl.s loc_2051bc
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20527c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051bc:
	rts
loc_2051be:
	bsr.w sub_2070d2
	tst.w d1
	bpl.s loc_2051d0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051d0:
	bsr.w sub_206f34
	tst.w d1
	bpl.s loc_2051e2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051e2:
	bsr.w sub_206f8c
	tst.w d1
	bpl.s loc_205218
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205202
	move.w #$0,$12(a0)
	rts
loc_205202:
	move.b d3,$26(a0)
	bsr.w sub_2052ee
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205218
	neg.w $14(a0)
loc_205218:
	rts
loc_20521a:
	bsr.w sub_206f34
	tst.w d1
	bpl.s loc_205234
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205234:
	bsr.w sub_206f8c
	tst.w d1
	bpl.s loc_20524e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20524c
	move.w #$0,$12(a0)
loc_20524c:
	rts
loc_20524e:
	tst.w $12(a0)
	bmi.s loc_20527a
	bsr.w sub_206de4
	tst.w d1
	bpl.s loc_20527a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20527c
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20527a:
	rts

sub_20527c:
	btst.b #$4,$22(a0)
	beq.s loc_205286
	nop
loc_205286:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2052e0
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2052c0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2052d0
loc_2052c0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2052d0:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_2052e0:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2052ee:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2039ba).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205328
	subi.w #$20,$12(a0)
loc_205328:
	jsr (sub_20669e).l
	bsr.w sub_205344
	bsr.w sub_204d76
	bsr.w sub_204218
	bsr.w sub_2055d6
	jmp (sub_203a10).l

sub_205344:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2073c8
	bsr.w sub_205078
	btst.b #$1,$22(a0)
	bne.s loc_20537e
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20537e:
	rts
	.incbin 21376, 268

sub_20548c:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2054b4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2054b4
	cmpi.b #$2,($ff1506).l
	beq.s loc_2054b4
	tst.b ($ff1506).l
	bne.w loc_205576
loc_2054b4:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2054f2
	tst.b ($ff1506).l
	bne.w loc_205578
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205578
	bra.s loc_2054fa
loc_2054f2:
	cmp.b ($f7af).w,d1
	beq.w loc_205578
loc_2054fa:
	cmp.b ($f7ac).w,d1
	beq.s loc_20552a
	cmp.b ($f7ad).w,d1
	beq.s loc_20550e
	bclr.b #$6,$1(a0)
	rts
loc_20550e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205590
	btst.b #$1,$22(a0)
	beq.s loc_20552a
	bclr.b #$6,$1(a0)
	rts
loc_20552a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20553c
	bclr.b #$6,$1(a0)
	rts
loc_20553c:
	cmpi.b #$e0,d2
	bcs.s loc_20554a
	bset.b #$6,$1(a0)
	rts
loc_20554a:
	btst.b #$6,$1(a0)
	bne.s loc_205566
	move.b $26(a0),d1
	beq.s loc_205576
	cmpi.b #$80,d1
	bhi.s loc_205576
	bset.b #$6,$1(a0)
	rts
loc_205566:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205576
	bclr.b #$6,$1(a0)
loc_205576:
	rts
loc_205578:
	btst.b #$2,$22(a0)
	bne.s loc_20558a
	move.w #$9c,d0
	jsr (sub_20226c).l
loc_20558a:
	jmp (sub_204e0a).l
loc_205590:
	tst.w $12(a0)
	bmi.s loc_2055d4
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2055c8
	cmpi.w #$38,d1
	bcs.s loc_2055c0
	cmpi.w #$80,d1
	bcs.s loc_2055d4
loc_2055b8:
	bclr.b #$6,$1(a0)
	rts
loc_2055c0:
	bset.b #$6,$1(a0)
	rts
loc_2055c8:
	cmpi.w #$38,d1
	bcs.s loc_2055b8
	cmpi.w #$80,d1
	bcc.s loc_2055c0
loc_2055d4:
	rts

sub_2055d6:
	lea (dat_2058c6).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2055f8
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2055f8:
	bsr.w sub_205868
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205670
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20563e
	move.b d0,$1e(a0)

sub_205622:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205636
	bpl.s loc_205636
	cmpi.b #$fd,d0
	bge.s loc_205640
loc_205636:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20563e:
	rts
loc_205640:
	addq.b #$1,d0
	bne.s loc_205650
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205636
loc_205650:
	addq.b #$1,d0
	bne.s loc_205664
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205636
loc_205664:
	addq.b #$1,d0
	bne.s loc_20566e
	move.b $2(a1,d1.w),$1c(a0)
loc_20566e:
	rts
loc_205670:
	subq.b #$1,$1e(a0)
	bpl.s loc_20563e
	addq.b #$1,d0
	bne.w loc_20572a
	tst.b ($ff195b).l
	bne.w loc_2057f2
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205698
	not.b d0
loc_205698:
	btst.b #$1,$2c(a0)
	bne.s loc_2056a6
	addi.b #$10,d0
	bra.s loc_2056a8
loc_2056a6:
	addq.b #$8,d0
loc_2056a8:
	bpl.s loc_2056ac
	moveq #$3,d1
loc_2056ac:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20579e
	move.w $14(a0),d2
	bpl.s loc_2056ca
	neg.w d2
loc_2056ca:
	btst.b #$1,$2c(a0)
	beq.s loc_2056e2
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205ac8).l,a1
	bra.s loc_20570c
loc_2056e2:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205aa2).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20570c
	lea (dat_205946).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20570c
	lea (dat_20593e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20570c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20571a
	moveq #$0,d2
loc_20571a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205622
	add.b d3,$1a(a0)
	rts
loc_20572a:
	addq.b #$1,d0
	bne.s loc_20579a
	move.w $14(a0),d2
	bpl.s loc_205736
	neg.w d2
loc_205736:
	lea (dat_205a24).l,a1
	tst.b ($ff195b).l
	bne.s loc_205774
	lea (dat_205956).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205768
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205774
	lea (dat_205ad0).l,a1
	bra.s loc_205774
loc_205768:
	cmpi.w #$600,d2
	bcc.s loc_205774
	lea (dat_20594e).l,a1
loc_205774:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20577e
	moveq #$0,d2
loc_20577e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205622
loc_20579a:
	addq.b #$1,d0
	bne.s loc_2057de
loc_20579e:
	move.w $14(a0),d2
	bmi.s loc_2057a6
	neg.w d2
loc_2057a6:
	addi.w #$800,d2
	bpl.s loc_2057ae
	moveq #$0,d2
loc_2057ae:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a36).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057c8
	lea (dat_20595e).l,a1
loc_2057c8:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205622
loc_2057de:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2057f2:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205804
	not.b d0
loc_205804:
	addi.b #$10,d0
	bpl.s loc_20580c
	moveq #$0,d1
loc_20580c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20583a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20572a
loc_20583a:
	move.w $14(a0),d2
	bpl.s loc_205842
	neg.w d2
loc_205842:
	lea (dat_205a1e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205854
	lea (dat_205a18).l,a1
loc_205854:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20585e
	moveq #$0,d2
loc_20585e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205622

sub_205868:
	tst.b ($ff195b).l
	beq.s loc_205874
	move.b dat_205876(pc,d0.w),d0
loc_205874:
	rts
dat_205876:
	.incbin 22646, 80
dat_2058c6:
	.incbin 22726, 120
dat_20593e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205946:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20594e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205956:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20595e:
	.incbin 22878, 186
dat_205a18:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a1e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a24:
	.incbin 23076, 18
dat_205a36:
	.incbin 23094, 108
dat_205aa2:
	.incbin 23202, 38
dat_205ac8:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205ad0:
	.incbin 23248, 56

sub_205b08:
	tst.b (a0)
	beq.w loc_205b6a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205b6a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205b6a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b3c:
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
loc_205b56:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b56
	dbf d1,loc_205b3c
loc_205b6a:
	rts

sub_205b6c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205be0
	move.w #$98,d0
	jsr (sub_20226c).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a08).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205bce
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205bce:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205be0:
	rts
loc_205be2:
	move.w #$e,d0

sub_205be6:
	cmpi.w #$67,d0
	bne.s loc_205bf4
	move.b #$1,($ff1958).l
loc_205bf4:
	move.w d0,($a12010).l
loc_205bfa:
	move.w ($a12020).l,d0
	beq.s loc_205bfa
	cmp.w ($a12020).l,d0
	bne.s loc_205bfa
	move.w #$0,($a12010).l
loc_205c12:
	move.w ($a12020).l,d0
	bne.s loc_205c12
	move.w ($a12020).l,d0
	bne.s loc_205c12
	rts
	dc.b $00,$00

sub_205c26:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c42
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c42:
	subq.b #$1,$1e(a0)
	bpl.s loc_205c82
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205c84
loc_205c5e:
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
loc_205c82:
	rts
loc_205c84:
	addq.b #$1,d0
	bne.s loc_205c94
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205c5e
loc_205c94:
	addq.b #$1,d0
	bne.s loc_205ca8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205c5e
loc_205ca8:
	addq.b #$1,d0
	bne.s loc_205cb2
	move.b $2(a1,d1.w),$1c(a0)
loc_205cb2:
	addq.b #$1,d0
	bne.s loc_205cba
	addq.b #$2,$24(a0)
loc_205cba:
	addq.b #$1,d0
	bne.s loc_205cc8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205cc8:
	addq.b #$1,d0
	bne.s loc_205cd0
	addq.b #$2,$25(a0)
loc_205cd0:
	rts
	.incbin 23762, 536

sub_205eea:
	rts
	.incbin 24300, 130

sub_205f6e:
	ori.b #$80,d1
	jsr (sub_2079b0).l
	bne.s loc_205f90
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205f90:
	rts
	.incbin 24466, 538
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2061c6(pc,d0.w),d0
	jsr dat_2061c6(pc,d0.w)
	jsr (sub_203a10).l
	jmp (loc_2079e6).l
dat_2061c6:
	.incbin 25030, 206
loc_206294:
	bmi.s loc_2062b8
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2062b8
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_2062b8
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2062b8
	moveq #$1,d0
	rts
loc_2062b8:
	moveq #$0,d0
	rts
	.incbin 25276, 478
loc_20649a:
	bclr.b #$7,($ff156b).l
	beq.s loc_2064e8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2064ea(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2064be:
	move.l (a1)+,(a2)+
	dbf d0,loc_2064be
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2064e8:
	rts
dat_2064ea:
	dc.b $00,$23
dat_2064ec:
	.incbin 25836, 18
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206520(pc,d0.w),d0
	jsr dat_206520(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20651a
	jsr (sub_203a10).l
loc_20651a:
	jmp (loc_2079e6).l
dat_206520:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23cf4e,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206602
	cmpi.b #$6,$24(a1)
	bcc.w loc_206602
	bsr.w sub_206666
	beq.w loc_206602
	tst.b $28(a0)
	bne.s loc_2065b4
	move.w $10(a1),d0
	bpl.s loc_206574
	neg.w d0
loc_206574:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206586
	move.w #$d00,d1
loc_206586:
	cmp.w d1,d0
	bcc.s loc_20658c
	move.w d1,d0
loc_20658c:
	tst.w $10(a1)
	bpl.s loc_206594
	neg.w d0
loc_206594:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2065e4
	neg.w $14(a1)
	bra.s loc_2065e4
loc_2065b4:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206604
	move.w $12(a1),d0
	bpl.s loc_2065c4
	neg.w d0
loc_2065c4:
	cmpi.w #$d00,d0
	bcc.s loc_2065ce
	move.w #$d00,d0
loc_2065ce:
	tst.w $12(a1)
	bpl.s loc_2065d6
	neg.w d0
loc_2065d6:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2065e4:
	bset.b #$2,$22(a1)
	bne.s loc_206602
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206602:
	rts
loc_206604:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206650
	cmpi.b #$2,$28(a0)
	bne.s loc_206620
	tst.w $12(a1)
	bpl.s loc_2065e4
	bra.s loc_206626
loc_206620:
	tst.w $12(a1)
	bmi.s loc_2065e4
loc_206626:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206638
	btst.l #$2,d1
	beq.s loc_2065e4
	neg.w d0
loc_206638:
	cmpi.b #$2,$28(a0)
	beq.s loc_206646
	bset.b #$1,$22(a1)
loc_206646:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2065e4
loc_206650:
	tst.w $10(a1)
	bmi.s loc_2065e4
	btst.l #$0,d1
	beq.w loc_2065e4
	move.w #$f600,d0
	bra.w loc_2065d6

sub_206666:
	tst.b ($ff1906).l
	bne.s loc_20669a
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_20669a
	cmpi.w #$50,d0
	bcc.s loc_20669a
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_20669a
	cmpi.w #$50,d0
	bcc.s loc_20669a
	moveq #$1,d0
	rts
loc_20669a:
	moveq #$0,d0
	rts

sub_20669e:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066a8
	bsr.s sub_2066aa
loc_2066a8:
	rts

sub_2066aa:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_20678e
	cmpi.b #$80,d0
	beq.w loc_206714
	cmpi.b #$c0,d0
	beq.w loc_206750
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2067cc
	bne.s loc_206712
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2067cc
loc_206712:
	rts
loc_206714:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2067cc
	bne.s loc_20674e
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2067cc
loc_20674e:
	rts
loc_206750:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2067cc
	bne.s loc_20678c
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2067cc
loc_20678c:
	rts
loc_20678e:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2067cc
	bne.s loc_2067ca
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2067cc
loc_2067ca:
	rts

sub_2067cc:
	jsr (sub_200ede).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206810
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_2067f4
	add.b ($ff156a).l,d1
loc_2067f4:
	add.w d1,d1
	move.w dat_206814(pc,d1.w),d1
	lea dat_206814(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206804:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_206888
	addq.w #$2,d1
	dbf d6,loc_206804
loc_206810:
	moveq #$0,d0
	rts
dat_206814:
	.incbin 26644, 116
loc_206888:
	cmpi.b #$4,$24(a0)
	bne.s loc_20689a
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20689a:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_2068de(pc,d1.w),d0
	jsr dat_2068de(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_2068ce
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_2068c8
	cmpi.b #$6,d1
	beq.s loc_2068c8
	move.w #$b5,d0
loc_2068c8:
	jsr (sub_20226c).l
loc_2068ce:
	tst.b ($ff1950).l
	beq.s loc_2068da
	moveq #$0,d0
	rts
loc_2068da:
	moveq #$1,d0
	rts
dat_2068de:
	.incbin 26846, 32
	andi.w #$fff0,d2
	tst.b d1
	bne.s loc_20690a
	addi.w #$10,d2
loc_20690a:
	andi.w #$fff0,d3
	btst.l #$b,d4
	bne.s loc_206918
	addi.w #$10,d3
loc_206918:
	move.w d3,d1
	movem.l d1-d2,-(a7)
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a08).l
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	movem.l (a7)+,d1-d2
	move.w d2,d4
	move.w d1,d5
	jsr (sub_2079b0).l
	bne.s loc_20697a
	move.b #$29,$0(a1)
	move.w d5,$8(a1)
	move.w d4,$c(a1)
loc_20697a:
	move.w #$0,d3
	jsr (sub_20335a).l
	subi.w #$10,d5
	jsr (sub_20335a).l
	subi.w #$10,d4
	jsr (sub_20335a).l
	addi.w #$10,d5
	jsr (sub_20335a).l
	move.w #$92,d0
	jsr (sub_205be6).l
	rts
	.incbin 27054, 58
loc_2069e8:
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	rts
	move.w #$700,d0
	tst.w $12(a0)
	bmi.s loc_206a0c
	neg.w d0
loc_206a0c:
	move.w d0,$12(a0)
	bra.s loc_2069e8
	.incbin 27154, 378
loc_206b8c:
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
	bne.s loc_206c46
	move.b ($ff1593).l,($ff195b).l
loc_206c46:
	tst.b ($ff1522).l
	bpl.s loc_206c5c
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c5c:
	rts

sub_206c5e:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206b8c
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
	bne.s loc_206d18
	move.b ($ff1591).l,($ff195b).l
loc_206d18:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d3a
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d3a:
	tst.b ($ff1522).l
	bpl.s loc_206d50
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d50:
	rts

sub_206d52:
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
	bpl.s loc_206d8e
	move.b d1,d0
	bpl.s loc_206d88
	subq.b #$1,d0
loc_206d88:
	addi.b #$20,d0
	bra.s loc_206d98
loc_206d8e:
	move.b d1,d0
	bpl.s loc_206d94
	addq.b #$1,d0
loc_206d94:
	addi.b #$1f,d0
loc_206d98:
	andi.b #$c0,d0
	beq.w loc_206e68
	cmpi.b #$80,d0
	beq.w loc_207004
	andi.b #$38,d1
	bne.s loc_206db0
	addq.w #$8,d2
loc_206db0:
	cmpi.b #$40,d0
	beq.w loc_2070da
	bra.w loc_206f3c

sub_206dbc:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_207062
	cmpi.b #$80,d0
	beq.w sub_206f8c
	cmpi.b #$c0,d0
	beq.w loc_206ecc

sub_206de4:
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
	jsr (sub_2010c6).l
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
	jsr (sub_2010c6).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206e48:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e56
	move.b ($f768).w,d3
	exg d0,d1
loc_206e56:
	btst.l #$0,d3
	beq.s loc_206e5e
	move.b d2,d3
loc_206e5e:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e68:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010c6).l
	move.b #$0,d2
loc_206e84:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e90
	move.b d2,d3
loc_206e90:
	rts

sub_206e92:
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
	jsr (sub_2010c6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206eca
	move.b #$0,d3
loc_206eca:
	rts
loc_206ecc:
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
	jsr (sub_201236).l
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
	jsr (sub_201236).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206e48

sub_206f34:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f3c:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b #$c0,d2
	bra.w loc_206e84

sub_206f5c:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f8a
	move.b #$c0,d3
loc_206f8a:
	rts

sub_206f8c:
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
	jsr (sub_2010c6).l
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
	jsr (sub_2010c6).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206e48

sub_206ffc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207004:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010c6).l
	move.b #$80,d2
	bra.w loc_206e84

sub_207028:
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
	jsr (sub_2010c6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_207060
	move.b #$80,d3
loc_207060:
	rts
loc_207062:
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
	jsr (sub_201236).l
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
	jsr (sub_201236).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206e48

sub_2070d2:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2070da:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b #$40,d2
	bra.w loc_206e84

sub_2070fe:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20712c
	move.b #$40,d3
loc_20712c:
	rts

sub_20712e:
	btst.b #$6,$2c(a0)
	bne.s loc_20717c
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20715a
	addi.w #$c,d3
	moveq #$a,d5
loc_20715a:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207168:
	tst.b $1(a1)
	bpl.s loc_207174
	move.b $20(a1),d0
	bne.s loc_207180
loc_207174:
	lea $40(a1),a1
	dbf d6,loc_207168
loc_20717c:
	moveq #$0,d0
	rts
loc_207180:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207506).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071a8
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071ae
	bra.w loc_207174
loc_2071a8:
	cmp.w d4,d0
	bhi.w loc_207174
loc_2071ae:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2071c6
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2071cc
	bra.w loc_207174
loc_2071c6:
	cmp.w d5,d0
	bhi.w loc_207174
loc_2071cc:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207240
	cmpi.b #$c0,d1
	beq.w loc_207420
	tst.b d1
	bmi.w sub_20730a
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207204
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207202
	addq.b #$2,$24(a1)
loc_207202:
	rts
loc_207204:
	tst.w $12(a0)
	bpl.s loc_20722e
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20723e
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20723e
	addq.b #$4,$25(a1)
	rts
loc_20722e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20723e
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20723e:
	rts

sub_207240:
	tst.b ($ff1521).l
	bne.s loc_20725a
	tst.b ($ff151f).l
	bne.s loc_20725a
	cmpi.b #$2,$1c(a0)
	bne.w sub_20730a
loc_20725a:
	tst.b $21(a1)
	beq.s loc_207284
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207282
	bset.b #$7,$22(a1)
loc_207282:
	rts
loc_207284:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_20729c
	moveq #$6,d0
loc_20729c:
	move.w d0,$3e(a1)
	move.w dat_2072fc(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072b6
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072b6:
	bsr.w sub_20996c
	move.w #$96,d0
	jsr (sub_20226c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2072ec
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_2072f4
	neg.w $12(a0)
	rts
loc_2072ec:
	addi.w #$100,$12(a0)
	rts
loc_2072f4:
	subi.w #$100,$12(a0)
	rts
dat_2072fc:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20730a:
	tst.b ($ff1521).l
	bne.s loc_20731a
	tst.b ($ff151f).l
	beq.s loc_20731e
loc_20731a:
	moveq #$ffffffff,d0
	rts
loc_20731e:
	nop
	tst.w $30(a0)
	bne.s loc_20731a
	movea.l a1,a2

sub_207328:
	tst.b ($ff151e).l
	bne.s loc_207354
	tst.w ($ff1512).l
	beq.w loc_2073be
	jsr (sub_2079b0).l
	bne.s loc_207354
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207354:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_20736a
	move.b #$0,($ff156f).l
loc_20736a:
	move.b #$4,$24(a0)
	bsr.w sub_20527c
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20739a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_20739a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073a8
	neg.w $10(a0)
loc_2073a8:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2073be:
	tst.w ($ff1588).l
	bne.w loc_207354

sub_2073c8:
	tst.w ($ff1906).l
	bne.s loc_20741c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20527c
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20226c).l
loc_20741c:
	moveq #$ffffffff,d0
	rts
loc_207420:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074b0
	cmpi.b #$1f,d1
	beq.w loc_2074b0
	cmpi.b #$23,d1
	beq.w loc_2074b0
	cmpi.b #$27,d1
	beq.w loc_2074b0
	cmpi.b #$3a,d1
	beq.w loc_2074f8
	cmpi.b #$3b,d1
	beq.w loc_2074f8
	tst.b ($f7aa).w
	beq.w loc_2074ae
	cmpi.b #$1,($f7aa).w
	beq.s loc_207478
	cmpi.b #$4,($f7aa).w
	beq.s loc_20749a
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074a8
loc_207478:
	cmpi.b #$3c,d1
	blt.s loc_2074ae
	cmpi.b #$3f,d1
	bgt.s loc_2074ae
	bsr.w sub_207240
	tst.b $20(a1)
	bne.s loc_207492
	addq.b #$3,$21(a1)
loc_207492:
	clr.b $20(a1)
	bra.w loc_2074b0
loc_20749a:
	cmpi.b #$3f,d1
	beq.s loc_2074bc
	cmpi.b #$3e,d1
	beq.s loc_2074b6
	bra.s loc_2074ae
loc_2074a8:
	cmpi.b #$3d,d1
	beq.s loc_2074b6
loc_2074ae:
	rts
loc_2074b0:
	addq.b #$1,$21(a1)
	rts
loc_2074b6:
	bsr.w sub_20730a
	bra.s loc_2074b0
loc_2074bc:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2074f6
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2074f6
	neg.w $10(a0)
loc_2074f6:
	rts
loc_2074f8:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207504
	addq.b #$1,$21(a1)
loc_207504:
	rts
dat_207506:
	.incbin 29958, 126
loc_207584:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20759a
	move.l #$4000,(dat_207714).l
	bra.s loc_2075ba
loc_20759a:
	addi.l #$2000,(dat_207714).l
	cmpi.l #$80000,(dat_207714).l
	bls.s loc_2075ba
	move.l #$80000,(dat_207714).l
loc_2075ba:
	move.l (dat_207714).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2075cc
	sub.l d0,$c(a0)
loc_2075cc:
	btst.b #$1,($f604).w
	beq.s loc_2075d8
	add.l d0,$c(a0)
loc_2075d8:
	btst.b #$2,($f604).w
	beq.s loc_2075e4
	sub.l d0,$8(a0)
loc_2075e4:
	btst.b #$3,($f604).w
	beq.s loc_2075f0
	add.l d0,$8(a0)
loc_2075f0:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ede).l
	move.w (a1),($ff194e).l
	lea (dat_207718).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207632
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20762c
	move.b #$0,d1
loc_20762c:
	move.b d1,($ff1904).l
loc_207632:
	btst.b #$7,($f605).w
	beq.s loc_207652
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20764c
	add.b (a2),d1
loc_20764c:
	move.b d1,($ff1904).l
loc_207652:
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
	beq.s loc_2076de
	bsr.w sub_2079b0
	bne.s loc_2076de
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
loc_2076de:
	btst.b #$4,($f605).w
	beq.s loc_20770e
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20770e:
	jmp (sub_203a10).l
dat_207714:
	dc.b $00,$00,$40,$00
dat_207718:
	.incbin 30488, 134

sub_20779e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2077ac:
	clr.l (a2)+
	dbf d0,loc_2077ac
	rts

sub_2077b4:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2077c2(pc,d0.w),d0
	jmp dat_2077c2(pc,d0.w)
dat_2077c2:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207a62).l,a0
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
	bcc.s loc_207800
	moveq #$0,d6
loc_207800:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207808:
	cmp.w (a0),d6
	bls.s loc_20781a
	tst.b $4(a0)
	bpl.s loc_207816
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207816:
	addq.w #$8,a0
	bra.s loc_207808
loc_20781a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20783a
loc_207828:
	cmp.w (a0),d6
	bls.s loc_20783a
	tst.b $4(a0)
	bpl.s loc_207836
	addq.b #$1,$1(a2)
loc_207836:
	addq.w #$8,a0
	bra.s loc_207828
loc_20783a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207924
	bge.s loc_2078ca
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2078a6
loc_207874:
	cmp.w -$8(a0),d6
	bge.s loc_2078a6
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20788a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20788a:
	bsr.w sub_207948
	bne.s loc_207894
	subq.w #$8,a0
	bra.s loc_207874
loc_207894:
	tst.b $4(a0)
	bpl.s loc_2078a4
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2078a4:
	addq.w #$8,a0
loc_2078a6:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2078b2:
	cmp.w -$8(a0),d6
	bgt.s loc_2078c4
	tst.b -$4(a0)
	bpl.s loc_2078c0
	subq.b #$1,(a2)
loc_2078c0:
	subq.w #$8,a0
	bra.s loc_2078b2
loc_2078c4:
	move.l a0,($f770).w
	rts
loc_2078ca:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2078de:
	cmp.w (a0),d6
	bls.s loc_207900
	tst.b $4(a0)
	bpl.s loc_2078ec
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078ec:
	bsr.w sub_207948
	beq.s loc_2078de
	tst.b $4(a0)
	bpl.s loc_207900
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207900:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207920
loc_20790e:
	cmp.w (a0),d6
	bls.s loc_207920
	tst.b $4(a0)
	bpl.s loc_20791c
	addq.b #$1,$1(a2)
loc_20791c:
	addq.w #$8,a0
	bra.s loc_20790e
loc_207920:
	move.l a0,($f774).w
loc_207924:
	rts

sub_207926:
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

sub_207948:
	bsr.s sub_207926
	beq.s loc_20795a
	tst.b $4(a0)
	bpl.s loc_207960
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207960
loc_20795a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207960:
	bsr.w sub_2079b0
	bne.s loc_2079ae
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
	bpl.s loc_207990
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207990:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2079a2
	nop
	nop
	nop
	nop
loc_2079a2:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2079ae:
	rts

sub_2079b0:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2079b8:
	tst.b (a1)
	beq.s loc_2079c4
	lea $40(a1),a1
	dbf d0,loc_2079b8
loc_2079c4:
	rts

sub_2079c6:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2079e4
loc_2079d8:
	tst.b (a1)
	beq.s loc_2079e4
	lea $40(a1),a1
	dbf d0,loc_2079d8
loc_2079e4:
	rts
loc_2079e6:
	move.w $8(a0),d0
loc_2079ea:
	tst.b $1(a0)
	bmi.s loc_207a54
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207a54
loc_207a08:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207a4a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207a42
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207a3a
	moveq #$0,d1
	bra.s loc_207a42
loc_207a3a:
	cmpi.w #$3,d1
	bcs.s loc_207a42
	moveq #$2,d1
loc_207a42:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207a4a:
	jsr (sub_203abc).l
	moveq #$1,d0
	rts
loc_207a54:
	btst.b #$7,($ff152e).l
	bne.s loc_207a08
	moveq #$0,d0
	rts
dat_207a62:
	.incbin 31330, 514

sub_207c64:
	btst.b #$3,$22(a0)
	beq.s loc_207cd4
	btst.b #$3,$22(a1)
	beq.s loc_207cd4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207cd4
	tst.b $2a(a1)
	beq.s loc_207c96
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_207c96:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207cc2
	cmpi.b #$17,$1c(a1)
	beq.s loc_207cc2
	bclr.b #$0,$2c(a1)
loc_207cc2:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207cd4
	bclr.b #$1,$22(a1)
loc_207cd4:
	rts

sub_207cd6:
	cmpi.b #$4,$24(a1)
	bne.s loc_207ce8
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207ce8:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207d48
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207d0a
	bclr.b #$3,$22(a0)
	bra.w sub_207c64
loc_207d0a:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207d48
	tst.b ($ff195b).l
	beq.s loc_207d32
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207d42
loc_207d32:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207d42:
	move.b #$0,$1c(a1)
loc_207d48:
	bset.b #$3,$22(a1)
	beq.s loc_207d6a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207da2
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207d6a:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207d96
	cmpi.b #$2,$24(a0)
	beq.s loc_207d9c
loc_207d96:
	move.w $10(a1),$14(a1)
loc_207d9c:
	bclr.b #$1,$22(a1)
loc_207da2:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207dac:
	move.b #$1,$25(a0)

sub_207db2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208066
	btst.b #$6,$2c(a1)
	bne.w loc_208066
	cmpi.b #$6,$24(a1)
	bcc.w loc_208066
	tst.b $0(a1)
	beq.w loc_208066
	tst.b $1(a0)
	bpl.w loc_208066
	tst.b ($ff1906).l
	bne.w loc_208066
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208066
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208066
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207e20
	btst.b #$3,$22(a0)
	bne.s loc_207e32
	bra.w loc_208066
loc_207e20:
	cmpi.b #$1,$25(a0)
	bne.s loc_207e32
	tst.w $12(a1)
	beq.s loc_207e32
	bmi.w loc_208066
loc_207e32:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208066
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208066
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207e68
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207e68:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207e76
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207e76:
	cmp.w d4,d5
	bcs.w loc_207f0a
	cmpi.b #$1,$25(a0)
	beq.w loc_208066
	cmpi.b #$a,$0(a0)
	bne.s loc_207e98
	btst.b #$1,$22(a1)
	bne.w loc_208066
loc_207e98:
	cmpi.b #$4,d5
	bls.w loc_208066
	bsr.w sub_2080b6
	move.l d0,-(a7)
	bsr.w sub_207c64
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207ec2
	tst.w $10(a1)
	beq.s loc_207ef2
	bpl.s loc_207eca
	bra.s loc_207ef2
loc_207ec2:
	tst.w $10(a1)
	beq.s loc_207ef2
	bpl.s loc_207ef2
loc_207eca:
	bsr.w sub_208076
	btst.b #$1,$22(a1)
	bne.s loc_207ee8
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207ee8:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207ef2:
	bsr.w sub_20812c
	bsr.w sub_208076
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207f0a:
	cmpi.b #$19,$0(a0)
	bne.s loc_207f1c
	btst.b #$2,$22(a1)
	bne.w loc_208066
loc_207f1c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207f32
	bmi.w loc_208002
loc_207f32:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207f44
	tst.w $12(a1)
	beq.s loc_207f44
	bmi.w loc_208066
loc_207f44:
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
	beq.s loc_207f90
	bpl.s loc_207f70
	neg.b d0
loc_207f70:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d52).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207f90
	tst.w $10(a0)
	bpl.s loc_207f8c
	neg.w d1
loc_207f8c:
	add.w d1,$8(a1)
loc_207f90:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207ffa
	tst.w $12(a0)
	bmi.s loc_207fce
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206de4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207fce
	add.w d1,$c(a1)
	bra.w loc_208066
loc_207fce:
	tst.w $12(a0)
	bpl.s loc_207ffa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ffc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207ffa
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073c8).l
	movem.l (a7)+,a0-a1
	bra.s loc_208066
loc_207ffa:
	bsr.w sub_207cd6
	moveq #$1,d0
	rts
loc_208002:
	cmpi.b #$1,$25(a0)
	beq.s loc_208066
	cmpi.b #$9,$0(a0)
	beq.s loc_208066
	cmpi.b #$a,$0(a0)
	bne.s loc_20802c
	cmpi.b #$2,$25(a0)
	beq.s loc_20804c
	btst.b #$1,$1(a0)
	bne.s loc_20804c
	bra.s loc_208066
loc_20802c:
	btst.b #$1,$22(a1)
	bne.s loc_20804c
	tst.w $12(a0)
	beq.s loc_20804c
	bmi.s loc_20804c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073c8).l
	movem.l (a7)+,a0-a1
loc_20804c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20812c
	bsr.w sub_207c64
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208066:
	bsr.w sub_20812c
	bsr.w sub_207c64
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208076:
	tst.w $10(a0)
	beq.s loc_2080b4
	cmpi.b #$a,$0(a0)
	beq.s loc_2080b4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208090
	neg.b d0
loc_208090:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d52).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2080b4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073c8).l
	movem.l (a7)+,a0-a1
loc_2080b4:
	rts

sub_2080b6:
	cmpi.b #$a,$0(a0)
	bne.s loc_2080c6
	move.b #$0,$20(a1)
	rts
loc_2080c6:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20811a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20812a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_2080e8
	tst.w $10(a2)
	beq.s loc_20812a
loc_2080e8:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_2080fa
	cmp.w $8(a2),d1
	bcs.s loc_20812a
	bra.s loc_208100
loc_2080fa:
	cmp.w $8(a2),d1
	bcc.s loc_20812a
loc_208100:
	cmpi.b #$15,$0(a0)
	beq.s loc_20812a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073c8).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20811a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20812a:
	rts

sub_20812c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208146
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208146
	move.b #$0,$20(a1)
loc_208146:
	rts
	.incbin 33096, 374
loc_2082be:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2082cc(pc,d0.w),d0
	jmp dat_2082cc(pc,d0.w)
dat_2082cc:
	.incbin 33484, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2082be
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208322
	tst.b $1(a0)
	bpl.s loc_20832a
loc_208322:
	move.w dat_20837c(pc,d0.w),d1
	jsr dat_20837c(pc,d1.w)
loc_20832a:
	bsr.w sub_203a10
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20835c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20835c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203abc
	rts
dat_20837c:
	.incbin 33660, 26
	addq.b #$2,$24(a0)
	move.l #$2086fe,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2083ec
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$208704,$4(a0)
	bra.s loc_20842e
loc_2083ec:
	btst.l #$3,d0
	beq.s loc_20841a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20874e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20b2ea).l
	move.l (a7)+,d0
	bra.s loc_20842e
loc_20841a:
	btst.b #$1,$1(a0)
	beq.s loc_20842e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20842e:
	btst.l #$1,d0
	beq.s loc_20843a
	bset.b #$5,$2(a0)
loc_20843a:
	andi.w #$2,d0
	move.w dat_208446(pc,d0.w),$30(a0)
	rts
dat_208446:
	dc.b $f0,$00,$f6,$00

sub_20844a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db2).l
	tst.b $1(a0)
	bpl.s loc_208466
	lea ($d000).w,a1
	bsr.s sub_20844a
	bne.s loc_208468
loc_208466:
	rts
loc_208468:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20226c).l
	lea (dat_2086f0).l,a1
	bra.w sub_205c26
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2084bc:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db2).l
	tst.b $1(a0)
	bpl.s loc_2084de
	lea ($d000).w,a1
	bsr.s sub_2084bc
	btst.b #$5,$22(a0)
	bne.s loc_2084e0
loc_2084de:
	rts
loc_2084e0:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_20850e
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_20850e:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_208528
	move.b #$0,$1c(a1)
loc_208528:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20226c).l
	.incbin 34114, 134
	tst.b $1(a0)
	bpl.s loc_2085e0
	lea ($d000).w,a1
	bsr.w sub_20844a
	bne.s loc_2085e2
	btst.b #$5,$22(a0)
	bne.s loc_2085e2
loc_2085e0:
	rts
loc_2085e2:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_200770).l
	move.w $30(a0),d2
	neg.w d2
	mulu.w d2,d0
	mulu.w d2,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a1)
	move.w d1,$10(a1)
	addq.w #$8,$c(a1)
	btst.b #$1,$1(a0)
	beq.s loc_208620
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_208620:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_208642
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_208642:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_20226c).l
	lea (dat_2086f0).l,a1
	bra.w sub_205c26
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 34438, 106
dat_2086f0:
	.incbin 34544, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2087ea(pc,d0.w),d1
	jmp dat_2087ea(pc,d1.w)
dat_2087ea:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2087f4:
	.incbin 34804, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20884c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208844
	moveq #$0,d1
	bra.s loc_20884c
loc_208844:
	cmpi.w #$3,d1
	bcs.s loc_20884c
	moveq #$2,d1
loc_20884c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208868
	moveq #$6,d1
loc_208868:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2087f4).l,a1
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
	beq.s loc_2088b8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088b0
	moveq #$0,d0
	bra.s loc_2088b8
loc_2088b0:
	cmpi.w #$3,d0
	bcs.s loc_2088b8
	moveq #$2,d0
loc_2088b8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208986
	dbf d0,loc_2088b8
	bclr.b #$7,(a2)
	bra.s loc_20890e
loc_2088ca:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2088f6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2088ee
	moveq #$0,d0
	bra.s loc_2088f6
loc_2088ee:
	cmpi.w #$3,d0
	bcs.s loc_2088f6
	moveq #$2,d0
loc_2088f6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208986
	dbf d0,loc_2088f6
	bclr.b #$7,(a2)
	bsr.w sub_2079c6
	bne.w loc_208992
loc_20890e:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208c58,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208964
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208964
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208964:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208986:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2088ca
loc_208992:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2089b8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2089b0
	moveq #$0,d0
	bra.s loc_2089b8
loc_2089b0:
	cmpi.w #$3,d0
	bcs.s loc_2089b8
	moveq #$2,d0
loc_2089b8:
	lea $1(a2),a3
loc_2089bc:
	btst.b #$0,-(a3)
	bne.w sub_203abc
	dbf d0,loc_2089bc
	tst.b $1(a0)
	bmi.s loc_2089ec
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208a66
loc_2089ec:
	tst.w ($ff190e).l
	bne.s loc_2089fc
	move.b ($ff1913).l,$1a(a0)
loc_2089fc:
	bra.w sub_203a10
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208a6a
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208a4c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208a44
	moveq #$0,d1
	bra.s loc_208a4c
loc_208a44:
	cmpi.w #$3,d1
	bcs.s loc_208a4c
	moveq #$2,d1
loc_208a4c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208c50).l,a1
	bsr.w sub_205c26
	bra.w sub_203a10
loc_208a66:
	bra.w sub_203abc

sub_208a6a:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208aba
	bset.b #$1,($ff150d).l
	beq.s loc_208aa4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208aba
	bset.b #$2,($ff150d).l
	bne.s loc_208aba
loc_208aa4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205be6).l
loc_208aba:
	jmp (sub_20226c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208ace(pc,d0.w),d1
	jmp dat_208ace(pc,d1.w)
dat_208ace:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_208aea
	move.w d0,d5
loc_208aea:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_208afa
loc_208af2:
	bsr.w sub_2079b0
	bne.w loc_208bb0
loc_208afa:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208c58,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208b58
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208b58
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208b58:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_208ba0
	move.w d4,d0
	jsr (sub_200770).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_208ba0
	subi.w #$80,d4
	bcc.s loc_208ba0
	move.w #$288,d4
loc_208ba0:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_208af2
loc_208bb0:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_20226c).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2039ba
	addi.w #$18,$12(a0)
	bmi.s loc_208c10
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_208c10
	jsr (sub_206e92).l
	tst.w d1
	bpl.s loc_208c10
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_208c10:
	tst.b ($ff1916).l
	beq.s loc_208c4c
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208c4c
	bra.w sub_203a10
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208a6a
	lea (dat_208c50).l,a1
	bsr.w sub_205c26
	bra.w sub_203a10
loc_208c4c:
	bra.w sub_203abc
dat_208c50:
	.incbin 35920, 852
loc_208fa4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208fd2(pc,d0.w),d0
	jsr dat_208fd2(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208fd0
	cmpi.w #$5a,($f786).w
	bcs.s loc_208fca
	btst.b #$0,($ff1505).l
	bne.s loc_208fd0
loc_208fca:
	jmp (sub_203a10).l
loc_208fd0:
	rts
dat_208fd2:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$2095ac,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209006
	move.b #$13,$1a(a0)
loc_209006:
	rts
loc_209008:
	tst.b ($ff0f01).l
	beq.s loc_209016
	jmp (sub_203abc).l
loc_209016:
	cmpi.b #$a,$28(a0)
	beq.w loc_208fa4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20903a(pc,d0.w),d0
	jsr dat_20903a(pc,d0.w)
	jsr (sub_203a10).l
	jmp (loc_2079e6).l
dat_20903a:
	.incbin 36922, 282

sub_209154:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20918c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209184
	moveq #$0,d1
	bra.s loc_20918c
loc_209184:
	cmpi.w #$3,d1
	bcs.s loc_20918c
	moveq #$2,d1
loc_20918c:
	add.w d1,d0
	rts

sub_209190:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2091b2
	tst.b ($ff1956).l
	beq.s loc_2091aa
	tst.b $29(a0)
	bne.s loc_2091b2
	rts
loc_2091aa:
	tst.b $29(a0)
	beq.s loc_2091b2
	rts
loc_2091b2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db2).l
	tst.b $28(a0)
	bne.s loc_2091d4
	tst.b ($ff0f01).l
	beq.s loc_2091d4
	jmp (loc_2079e6).l
loc_2091d4:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209008
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2091ec(pc,d0.w),d1
	jmp dat_2091ec(pc,d1.w)
dat_2091ec:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$2095ac,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209236
	tst.b $29(a0)
	bne.s loc_209236
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209236:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209154
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209262
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209262:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_2092bc
	move.b $25(a0),d0
	beq.s loc_20929c
	bsr.w sub_203958
	jsr (sub_206e92).l
	tst.w d1
	bpl.w loc_2092aa
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_2092aa
loc_20929c:
	tst.b $1(a0)
	bpl.s loc_2092aa
	lea ($d000).w,a1
	bsr.w sub_209190
loc_2092aa:
	tst.w ($ff190e).l
	bne.s loc_2092bc
	lea (dat_209524).l,a1
	bsr.w sub_205c26
loc_2092bc:
	bsr.w sub_203a10
	jmp (loc_2079e6).l
	.incbin 37574, 606
dat_209524:
	.incbin 38180, 586
loc_20976e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209782(pc,d0.w),d0
	jsr dat_209782(pc,d0.w)
	jmp (sub_203a10).l
dat_209782:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$2097c2,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_2097bc
	jmp (sub_203abc).l
loc_2097bc:
	subq.w #$2,$c(a0)
	rts
	.incbin 38850, 82
	tst.b $28(a0)
	bmi.w loc_20976e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20982a(pc,d0.w),d0
	jmp dat_20982a(pc,d0.w)
dat_20982a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2098c4,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20985a
	move.b #$3,$1a(a0)
	bra.s loc_20987a
loc_20985a:
	tst.w ($ff1588).l
	beq.s loc_209868
	move.b #$2,$1a(a0)
loc_209868:
	tst.b $28(a0)
	beq.s loc_20987a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20987a:
	tst.b $28(a0)
	bne.s loc_2098be
	tst.b $29(a0)
	beq.s loc_2098aa
	tst.w ($ff1512).l
	beq.s loc_209896
	bclr.b #$5,$2(a0)
	bra.s loc_2098be
loc_209896:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2098be
	eori.b #$20,$2(a0)
	bra.s loc_2098be
loc_2098aa:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2098be
	move.b #$2,$1a(a0)
loc_2098be:
	jmp (sub_203a10).l
	.incbin 39108, 168

sub_20996c:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_209988
	move.l d1,(a3)
loc_209988:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2099b2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205be6).l
loc_2099b2:
	rts
loc_2099b4:
	tst.w ($ff1588).l
	beq.s loc_209a0a
	bsr.w sub_209c06
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
	lea (dat_209d66).l,a2
	moveq #$2,d6
	bsr.w sub_209dbe
	bra.w loc_209a64
loc_209a0a:
	tst.b ($ff1511).l
	beq.s loc_209a2e
	bpl.s loc_209a18
	bsr.w sub_209bb0
loc_209a18:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209ca0
loc_209a2e:
	tst.b ($ff150f).l
	beq.s loc_209a64
	bpl.s loc_209a3c
	bsr.w sub_209b9c
loc_209a3c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209a60
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209a60:
	bsr.w sub_209c96
loc_209a64:
	tst.w ($ff1588).l
	bne.w loc_209b10
	tst.b ($ff1510).l
	beq.w loc_209b10
	tst.w ($f63a).w
	bne.w loc_209b10
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209b6e
	tst.b ($f7cc).w
	bne.s loc_209aba
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209aba
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209aba
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209aba
	move.b #$9,(a1)
loc_209aba:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209dac
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209db6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209b0c
	move.w #$63,d1
loc_209b0c:
	bsr.w sub_209db6
loc_209b10:
	tst.b ($ff150e).l
	beq.s loc_209b22
	clr.b ($ff150e).l
	bsr.w sub_209d8c
loc_209b22:
	tst.b ($f7d6).w
	beq.s loc_209b6c
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209b42
	move.l #$6d400001,d0
loc_209b42:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209c24
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209b62
	move.l #$6e800001,d0
loc_209b62:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209c24
loc_209b6c:
	rts
loc_209b6e:
	btst.b #$7,($ff152e).l
	bne.s loc_209b9a
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2073c8
	move.b #$1,($ff150c).l
loc_209b9a:
	rts

sub_209b9c:
	move.l #$73600002,($c00004).l
	lea dat_209c02(pc),a2
	move.w #$2,d2
	bra.s loc_209bcc

sub_209bb0:
	lea ($c00000).l,a6
	bsr.w sub_209d8c
	move.l #$70600002,($c00004).l
	lea dat_209bfa(pc),a2
	move.w #$6,d2
loc_209bcc:
	lea (dat_2330bc).l,a1
loc_209bd2:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209bee
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209be2:
	move.l (a3)+,(a6)
	dbf d1,loc_209be2
loc_209be8:
	dbf d2,loc_209bd2
	rts
loc_209bee:
	move.l #$0,(a6)
	dbf d1,loc_209bee
	bra.s loc_209be8
dat_209bfa:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209c02:
	dc.b $ff,$ff,$00,$00

sub_209c06:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209d82
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209d82

sub_209c24:
	lea (dat_209d5e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209c34:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209c38:
	sub.l d3,d1
	bcs.s loc_209c40
	addq.w #$1,d2
	bra.s loc_209c38
loc_209c40:
	add.l d3,d1
	tst.w d2
	beq.s loc_209c4a
	move.w #$1,d4
loc_209c4a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209c56
	tst.w d6
	bne.s loc_209c88
loc_209c56:
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
loc_209c7c:
	addi.l #$400000,d0
	dbf d6,loc_209c34
	rts
loc_209c88:
	moveq #$f,d5
loc_209c8a:
	move.l #$0,(a6)
	dbf d5,loc_209c8a
	bra.s loc_209c7c

sub_209c96:
	lea (dat_209d66).l,a2
	moveq #$2,d6
	bra.s loc_209ca8

sub_209ca0:
	lea (dat_209d5a).l,a2
	moveq #$5,d6
loc_209ca8:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209cb0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209cb4:
	sub.l d3,d1
	bcs.s loc_209cbc
	addq.w #$1,d2
	bra.s loc_209cb4
loc_209cbc:
	add.l d3,d1
	tst.w d2
	beq.s loc_209cc6
	move.w #$1,d4
loc_209cc6:
	tst.w d4
	beq.s loc_209cf4
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
loc_209cf4:
	addi.l #$400000,d0
	dbf d6,loc_209cb0
	rts
	.incbin 40192, 32
loc_209d20:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209d24:
	sub.l d3,d1
	bcs.s loc_209d2c
	addq.w #$1,d2
	bra.s loc_209d24
loc_209d2c:
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
	dbf d6,loc_209d20
	rts
dat_209d5a:
	dc.b $00,$01,$86,$a0
dat_209d5e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209d66:
	dc.b $00,$00,$00,$64
dat_209d6a:
	dc.b $00,$00,$00,$0a
dat_209d6e:
	dc.b $00,$00,$00,$01
dat_209d72:
	.incbin 40306, 16

sub_209d82:
	moveq #$3,d6
	lea (dat_209d72).l,a2
	bra.s sub_209dbe

sub_209d8c:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209da2
	moveq #$9,d1
loc_209da2:
	lea (dat_209d6e).l,a2
	moveq #$0,d6
	bra.s sub_209dbe

sub_209dac:
	lea (dat_209d6e).l,a2
	moveq #$0,d6
	bra.s sub_209dbe

sub_209db6:
	lea (dat_209d6a).l,a2
	moveq #$1,d6

sub_209dbe:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209dc6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209dca:
	sub.l d3,d1
	bcs.s loc_209dd2
	addq.w #$1,d2
	bra.s loc_209dca
loc_209dd2:
	add.l d3,d1
	tst.w d2
	beq.s loc_209ddc
	move.w #$1,d4
loc_209ddc:
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
	dbf d6,loc_209dc6
	rts
	.incbin 40466, 358
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f86(pc,d0.w),d1
	jmp dat_209f86(pc,d1.w)
dat_209f86:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.l #$20a284,$4(a0)
	move.w #$4ce,$2(a0)
	move.b #$4,$1(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$1,$18(a0)
	move.b #$d7,$20(a0)
	move.w $8(a0),$32(a0)
	move.w #$5,$34(a0)
	moveq #$0,d0
	move.b $28(a0),d6
	btst.l #$1,d6
	beq.s loc_209fdc
	addi.w #$40,d0
loc_209fdc:
	btst.l #$0,d6
	beq.s loc_209fe6
	addi.w #$20,d0
loc_209fe6:
	move.w d0,$30(a0)
	lsr.w #$1,d0
	move.w d0,$2e(a0)
	beq.s loc_20a004
	move.l #$10000,$2a(a0)
	btst.l #$6,d6
	bne.s loc_20a004
	neg.l $2a(a0)
loc_20a004:
	move.l $2a(a0),d0
	beq.s loc_20a02c
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20a018
	lea $c(a0),a1
loc_20a018:
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20a02c
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20a02c:
	tst.b $21(a0)
	beq.w loc_20a0c8
	tst.w $34(a0)
	beq.s loc_20a04a
	subq.w #$1,$34(a0)
	moveq #$a,d0
	bsr.w sub_20996c
	moveq #$0,d1
	bsr.w sub_205f6e
loc_20a04a:
	tst.b $1(a0)
	bpl.s loc_20a05a
	move.w #$7f,d0
	jsr (sub_205be6).l
loc_20a05a:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a0),d1
	move.w $c(a0),d2
	sub.w $8(a1),d1
	sub.w $c(a1),d2
	jsr (sub_200a08).l
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a1)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	clr.b $3c(a1)
	move.b #$1,$1c(a0)
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20a0c8
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20a0c8
	addq.b #$1,$2(a2,d0.w)
loc_20a0c8:
	lea (dat_20a274).l,a1
	bsr.w sub_205c26
	jsr (sub_203a10).l
	move.w $32(a0),d0
	jmp (loc_2079ea).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a0f0(pc,d0.w),d0
	jmp dat_20a0f0(pc,d0.w)
dat_20a0f0:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	move.l #$20a2c4,$4(a0)
	move.w #$49d,$2(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	tst.b $1c(a0)
	bne.s loc_20a12c
	lea ($d000).w,a1
	bsr.w sub_20a142
loc_20a12c:
	lea (dat_20a2b6).l,a1
	bsr.w sub_205c26
	jsr (sub_203a10).l
	jmp (loc_2079e6).l

sub_20a142:
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20a1ea
	move.w $8(a1),d0
	moveq #$0,d1
	move.b $19(a0),d1
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20a1ea
	add.w d1,d1
	cmp.w d1,d0
	bcc.w loc_20a1ea
	move.w $8(a1),d0
	moveq #$0,d3
	move.b $19(a0),d3
	move.w $8(a0),d2
	sub.w d3,d2
	sub.w d2,d0
	btst.b #$0,$22(a0)
	beq.s loc_20a18a
	move.w #$40,d2
	sub.w d0,d2
	move.w d2,d0
loc_20a18a:
	lea (dat_20a1f4).l,a3
	tst.w $12(a1)
	bpl.s loc_20a19c
	lea (dat_20a234).l,a3
loc_20a19c:
	move.b $0(a3,d0.w),d0
	ext.w d0
	add.w $c(a0),d0
	move.w d0,d1
	moveq #$0,d3
	move.b $16(a1),d3
	tst.w $12(a1)
	bpl.s loc_20a1b6
	neg.w d3
loc_20a1b6:
	sub.w d3,d1
	add.w $c(a1),d3
	sub.w d0,d3
	addq.w #$8,d3
	bmi.s loc_20a1ea
	cmpi.w #$10,d3
	bcc.s loc_20a1ea
	move.w d1,$c(a1)
	tst.w $12(a1)
	bmi.s loc_20a1da
	jsr (sub_207cd6).l
	bra.s loc_20a1e6
loc_20a1da:
	move.w #$0,$12(a1)
	move.w $10(a1),$14(a1)
loc_20a1e6:
	moveq #$1,d0
	rts
loc_20a1ea:
	jsr (sub_207c64).l
	moveq #$0,d0
	rts
dat_20a1f4:
	.incbin 41460, 64
dat_20a234:
	.incbin 41524, 64
dat_20a274:
	.incbin 41588, 66
dat_20a2b6:
	.incbin 41654, 76
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a316(pc,d0.w),d0
	jsr dat_20a316(pc,d0.w)
	jmp (sub_203a10).l
dat_20a316:
	dc.b $00,$06,$00,$52,$00,$5c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$638b,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20a350
	move.w #$642a,d0
loc_20a350:
	move.w d0,$2(a0)
	move.l #$20a382,$4(a0)
	moveq #$a,d0
	bsr.w sub_20996c
	moveq #$0,d1
	bsr.w sub_205f6e
	lea dat_20a378(pc),a1
	jmp (sub_205c26).l
	jmp (sub_203abc).l
dat_20a378:
	.incbin 41848, 708
loc_20a63c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a664(pc,d0.w),d0
	jsr dat_20a664(pc,d0.w)
	movea.w $36(a0),a1
	cmpi.b #$36,$0(a1)
	bne.w loc_20a65e
	jmp (sub_203a10).l
loc_20a65e:
	jmp (sub_203abc).l
dat_20a664:
	.incbin 42596, 934
loc_20aa0a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa24(pc,d0.w),d0
	jsr dat_20aa24(pc,d0.w)
	jsr (sub_203a10).l
	jmp (loc_2079e6).l
dat_20aa24:
	dc.b $00,$04,$00,$72
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$443e,$2(a0)
	move.l #$20aba2,$4(a0)
	move.w #$fffe,$2e(a0)
	cmpi.b #$ff,$28(a0)
	bne.s loc_20aa6e
	move.w #$80,$2a(a0)
	st $3e(a0)
	st $3f(a0)
loc_20aa6e:
	jsr (sub_2079b0).l
	bne.s loc_20aa96
	move.w a1,$2c(a0)
	move.w a0,$36(a1)
	move.b $0(a0),$0(a1)
	move.b #$1,$28(a1)
	move.w #$380,$8(a1)
	move.w #$4f8,$c(a1)
loc_20aa96:
	lea ($d000).w,a6
	lea $3e(a0),a5
	bsr.w sub_20aaba
	tst.w $2a(a0)
	beq.s loc_20aab8
	addi.w #$ffff,$2a(a0)
	lea dat_20ab92(pc),a1
	jmp (sub_205c26).l
loc_20aab8:
	rts

sub_20aaba:
	move.w $c(a0),d0
	sub.w $c(a6),d0
	subi.w #$fff0,d0
	subi.w #$20,d0
	bcc.s loc_20ab06
	move.w $8(a0),d0
	sub.w $8(a6),d0
	subi.w #$fff0,d0
	subi.w #$20,d0
	bcc.s loc_20ab06
	tst.b (a5)
	bne.s loc_20ab04
	st (a5)
	move.w #$ff,$1c(a0)
	tst.w $12(a6)
	bpl.s loc_20aaf6
	move.w #$1ff,$1c(a0)
loc_20aaf6:
	move.w $2a(a0),d0
	move.w #$80,$2a(a0)
	tst.w d0
	beq.s loc_20ab0a
loc_20ab04:
	rts
loc_20ab06:
	sf (a5)
	rts
loc_20ab0a:
	cmpi.w #$4,$2e(a0)
	beq.s loc_20ab62
	addq.w #$2,$2e(a0)
	move.w $32(a0),$34(a0)
	move.w $30(a0),$32(a0)
	jsr (sub_2079b0).l
	bne.s loc_20ab48
	move.w a1,$30(a0)
	move.w a0,$36(a1)
	move.b $0(a0),$0(a1)
	move.w #$380,$8(a1)
	move.w $2e(a0),d0
	move.w dat_20ab5c(pc,d0.w),$c(a1)
loc_20ab48:
	cmpi.w #$4,$2e(a0)
	bne.s loc_20ab5a
	movea.w $2c(a0),a1
	move.b #$4,$24(a1)
loc_20ab5a:
	rts
dat_20ab5c:
	dc.b $04,$98,$04,$b0,$04,$c8
loc_20ab62:
	move.w #$fffe,$2e(a0)
	movea.w $30(a0),a1
	move.b #$4,$24(a1)
	movea.w $32(a0),a1
	move.b #$4,$24(a1)
	movea.w $34(a0),a1
	move.b #$4,$24(a1)
	movea.w $2c(a0),a1
	move.b #$6,$24(a1)
	rts
dat_20ab92:
	.incbin 43922, 78
loc_20abe0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac06(pc,d0.w),d0
	jsr dat_20ac06(pc,d0.w)
	movea.w $36(a0),a1
	cmpi.b #$36,$0(a1)
	bne.s loc_20ac00
	jmp (sub_203a10).l
loc_20ac00:
	jmp (sub_203abc).l
dat_20ac06:
	dc.b $00,$0c,$00,$36,$00,$78,$00,$84
	dc.b $00,$8e,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$43e,$2(a0)
	move.l #$20acac,$4(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$2,$1a(a0)
	bne.s loc_20ac7c
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_207dac).l
	beq.s loc_20ac7c
	bclr.b #$3,$22(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	move.w #$0,$10(a1)
	move.w #$fc00,$12(a1)
loc_20ac7c:
	rts
	.incbin 44158, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad0c(pc,d0.w),d0
	jsr dat_20ad0c(pc,d0.w)
	lea dat_20aef4(pc),a1
	jsr (sub_205c26).l
	jsr (sub_203a10).l
	jmp (loc_2079e6).l
dat_20ad0c:
	.incbin 44300, 488
dat_20aef4:
	.incbin 44788, 1010

sub_20b2e6:
	rts
	dc.b $00,$00

sub_20b2ea:
	cmpi.b #$f,d0
	bne.s loc_20b2f6
	move.w #$4f2,$2(a0)
loc_20b2f6:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b358(pc,d0.w),d0
	jsr dat_20b358(pc,d0.w)
	jsr (sub_203a10).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20b336
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20b336:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20b354
	rts
loc_20b354:
	bra.w loc_20c360
dat_20b358:
	dc.b $00,$10,$00,$6e
dat_20b35c:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20b384
	move.w #$3fc,d0
loc_20b384:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20b506,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20b35c(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20b430(pc)
	tst.b $1a(a0)
	beq.s loc_20b3da
	lea ($d000).w,a1
	jmp (sub_207db2).l
loc_20b3da:
	lea ($d000).w,a1
	jsr (sub_207db2).l
	beq.s loc_20b42e
	btst.b #$3,$22(a0)
	beq.s loc_20b42e
	tst.b ($ff1521).l
	bne.s loc_20b42e
	tst.b ($ff151f).l
	bne.s loc_20b42e
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20b42c
	tst.w $30(a0)
	bne.s loc_20b42c
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_207328).l
loc_20b42c:
	movea.l (a7)+,a0
loc_20b42e:
	rts

sub_20b430:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20b44a
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20b44c(pc,d0.w),d0
	jmp dat_20b44c(pc,d0.w)
loc_20b44a:
	rts
dat_20b44c:
	dc.b $00,$08,$00,$1c,$00,$32,$00,$48
	jsr sub_20b4a8(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 46184, 64

sub_20b4a8:
	tst.b $3a(a0)
	beq.s loc_20b4c6
	subq.b #$1,$3a(a0)
	bne.s loc_20b504
	btst.b #$7,$1(a0)
	beq.s loc_20b4c6
	move.w #$b7,d0
	jsr (sub_20226c).l
loc_20b4c6:
	tst.b $3c(a0)
	beq.s loc_20b4e6
	subq.b #$8,$3b(a0)
	bcc.s loc_20b504
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20b504
loc_20b4e6:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20b504
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20b504:
	rts
	.incbin 46342, 120
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	cmpi.b #$2,$28(a0)
	bcs.s loc_20b5d6
	jsr (sub_2079c6).l
	beq.s loc_20b5ac
	jmp (sub_203abc).l
loc_20b5ac:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ea,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	move.b d0,$28(a1)
loc_20b5d6:
	bsr.s sub_20b63a
	tst.b ($ff152e).l
	beq.s loc_20b60c
loc_20b5e0:
	cmpi.b #$1,$28(a0)
	beq.s loc_20b60c
	tst.b $3a(a0)
	bne.s loc_20b60e
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20b64c(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$38(a0)
	move.w (a1)+,$36(a0)
loc_20b60c:
	rts
loc_20b60e:
	move.w $38(a0),d0
	add.w d0,$36(a0)
	move.w $36(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	subq.b #$1,$3a(a0)
	beq.s loc_20b62e
	rts
loc_20b62e:
	addq.b #$1,$3b(a0)
	andi.b #$3,$3b(a0)
	bra.s loc_20b5e0

sub_20b63a:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207db2).l
dat_20b64c:
	.incbin 46668, 2298
	ori.b #$4,$1(a0)
	move.w #$379,$2(a0)
	move.b #$4,$18(a0)
	move.b #$98,$20(a0)
	move.l #$20c018,$4(a0)
	move.w $8(a0),$36(a0)
	move.w #$100,d0
	move.w #$10,d1
	move.w #$2,d2
	move.w $3a(a0),d3
	bne.s loc_20bf86
	neg.w d0
	neg.w d1
	move.w #$1,d2
loc_20bf86:
	move.w d0,$10(a0)
	move.w d1,$3e(a0)
	move.b d2,$1c(a0)
	addq.b #$2,$24(a0)
	lea dat_20bff6(pc),a1
	jsr (sub_205c26).l
	move.w $3e(a0),d0
	add.w d0,$10(a0)
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	lea dat_20bff6(pc),a1
	jsr (sub_205c26).l
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcc.s loc_20bfca
	neg.w d0
loc_20bfca:
	cmpi.w #$40,d0
	bcc.s loc_20bfd2
	rts
loc_20bfd2:
	clr.b $20(a0)
	tst.b $3b(a0)
	bne.s loc_20bfe8
	addq.b #$2,$1c(a0)
	move.b #$1e,$3b(a0)
	rts
loc_20bfe8:
	subq.b #$1,$3b(a0)
	beq.s loc_20bff0
	rts
loc_20bff0:
	jmp (sub_203abc).l
dat_20bff6:
	.incbin 49142, 874
loc_20c360:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c384
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c384:
	jmp (sub_203abc).l
	.incbin 50058, 1044
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c7ca(pc,d0.w),d0
	jsr dat_20c7ca(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_20c7c8
	cmpi.b #$a,$24(a0)
	beq.s loc_20c7c2
	cmpi.b #$6,$24(a0)
	bcc.s loc_20c7c8
loc_20c7c2:
	jmp (sub_203a10).l
loc_20c7c8:
	rts
dat_20c7ca:
	dc.b $00,$0c,$00,$3c,$00,$a0,$05,$ec
	dc.b $06,$b2,$01,$96
	ori.b #$4,$1(a0)
	addq.b #$2,$24(a0)
	move.b #$4,$18(a0)
	move.l #$23d48c,$4(a0)
	move.w #$2481,$2(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$18,$16(a0)
	lea (dat_23d458).l,a1
	jsr (sub_205c26).l
	lea ($d000).w,a6
	bsr.w sub_20c990
	beq.s loc_20c868
	clr.b ($ff1510).l
	move.b #$2,$1a(a0)
	move.b #$78,$2a(a0)
	addq.b #$2,$24(a0)
	move.w ($d008).w,d0
	move.b ($d017).w,d1
	ext.w d1
	addi.w #$20,d1
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20c85c
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c85c
	move.w ($d012).w,d0
	neg.w d0
	asr.w #$2,d0
	move.w d0,($d012).w
	rts
loc_20c85c:
	move.w ($d010).w,d0
	neg.w d0
	asr.w #$2,d0
	move.w d0,($d010).w
loc_20c868:
	rts
	.incbin 51306, 294

sub_20c990:
	btst.b #$2,$22(a6)
	beq.s loc_20c9d4
	move.b $17(a6),d1
	ext.w d1
	addi.w #$20,d1
	move.w $8(a6),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.s loc_20c9d4
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c9d4
	move.b $16(a6),d1
	ext.w d1
	addi.w #$1c,d1
	move.w $c(a6),d0
	sub.w $c(a0),d0
	add.w d1,d0
	bmi.s loc_20c9d4
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c9d4
	moveq #$1,d0
	rts
loc_20c9d4:
	moveq #$0,d0
	rts
	.incbin 51672, 2340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d30a(pc,d0.w),d0
	jmp dat_20d30a(pc,d0.w)
dat_20d30a:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20da08,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20d9c8).l,a2
loc_20d358:
	jsr (sub_2079b0).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20da08,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20d3aa
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20d3aa:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20d358
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20d3d2
	bge.s loc_20d3c8
	neg.w d0
loc_20d3c8:
	add.w d0,$a(a0)
	jmp (sub_203a10).l
loc_20d3d2:
	addq.b #$4,$24(a0)
	jmp (sub_203a10).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20d3f6
	bge.s loc_20d3ec
	neg.w d0
loc_20d3ec:
	add.w d0,$8(a0)
	jmp (sub_203a10).l
loc_20d3f6:
	addq.b #$4,$24(a0)
	jmp (sub_203a10).l
	tst.b $1e(a0)
	beq.s loc_20d410
	subq.b #$1,$1e(a0)
	jmp (sub_203a10).l
loc_20d410:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20d42a
	bge.s loc_20d420
	neg.w d0
loc_20d420:
	add.w d0,$a(a0)
	jmp (sub_203a10).l
loc_20d42a:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202436).l
	tst.b $1e(a0)
	beq.s loc_20d44c
	subq.b #$1,$1e(a0)
	jmp (sub_203a10).l
loc_20d44c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20d466
	bge.s loc_20d45c
	neg.w d0
loc_20d45c:
	add.w d0,$8(a0)
	jmp (sub_203a10).l
loc_20d466:
	jmp (sub_203abc).l
	tst.l ($f680).w
	bne.s loc_20d480
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203abc).l
loc_20d480:
	rts
	.incbin 54402, 1350
dat_20d9c8:
	.incbin 55752, 340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20db2a(pc,d0.w),d0
	jmp dat_20db2a(pc,d0.w)
dat_20db2a:
	dc.b $00,$08,$00,$7a,$00,$a6,$00,$f0
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$30,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e7f4,$4(a0)
	move.l #$fffd8000,$30(a0)
	move.w $c(a0),$2e(a0)
	addi.w #$ffd0,$2e(a0)
	move.b #$3e,$20(a0)
	move.b #$2,$21(a0)
	bsr.w sub_2079b0
	bne.s loc_20dba4
	move.w a0,$34(a1)
	move.b #$32,$0(a1)
	move.w $8(a0),$8(a1)
	subi.w #$30,$8(a1)
	move.w $c(a0),$c(a1)
	move.w a1,$34(a0)
loc_20dba4:
	tst.b $20(a0)
	bne.s loc_20dbca
	move.w #$ac,d0
	jsr (sub_20226c).l
	move.b #$4,$24(a0)
	bset.b #$2,$2c(a0)
	move.b #$1,$1c(a0)
	clr.b $21(a0)
loc_20dbca:
	jmp (sub_203a10).l
	bsr.w sub_20dc4c
	addq.b #$1,$2a(a0)
	cmpi.b #$10,$2a(a0)
	blt.s loc_20dbf2
	move.b #$0,$1c(a0)
	lea (dat_20e7e8).l,a1
	jsr (sub_205c26).l
loc_20dbf2:
	move.l $30(a0),d0
	add.l d0,$c(a0)
	move.w $2e(a0),d0
	cmp.w $c(a0),d0
	blt.s loc_20dc14
	bclr.b #$2,$2c(a0)
	move.w d0,$c(a0)
	move.b #$6,$24(a0)
loc_20dc14:
	jmp (sub_203a10).l
	bsr.w sub_20dc4c
	cmpi.w #$78,$3e(a0)
	bge.s loc_20dc30
	bsr.w sub_20e096
	jsr (sub_203a10).l
loc_20dc30:
	btst.b #$1,$2c(a0)
	beq.s loc_20dc4a
	movea.w $34(a0),a3
	jsr (sub_203abc).l
	movea.l a3,a1
	jmp (loc_203abe).l
loc_20dc4a:
	rts

sub_20dc4c:
	btst.b #$1,$2c(a0)
	bne.w loc_20dc98
	lea ($d000).w,a1
	cmpi.w #$480,$8(a1)
	blt.s loc_20dc98
	cmpi.w #$51c,$c(a1)
	bgt.s loc_20dc98
	bset.b #$1,$2c(a0)
	move.w #$67,d0
	jsr (sub_205be6).l
	bsr.w sub_2079b0
	bne.s loc_20dc98
	move.b #$3f,$0(a1)
	move.b #$6,$24(a1)
	move.w #$420,$8(a1)
	move.w #$540,$c(a1)
loc_20dc98:
	rts

sub_20dc9a:
	tst.b $2b(a0)
	bne.s loc_20dca2
	rts
loc_20dca2:
	bchg.b #$7,$2b(a0)
	bne.s loc_20dcb6
	move.w #$5,d0
	ori.b #$1,$1a(a0)
	bra.s loc_20dcc0
loc_20dcb6:
	move.w #$6,d0
	andi.b #$fe,$1a(a0)
loc_20dcc0:
	subq.b #$1,$2b(a0)
	movem.l d7/a1-a3,-(a7)
	jsr (sub_2004e2).l
	movem.l (a7)+,d7/a1-a3
	rts
	tst.b $3b(a0)
	beq.s loc_20dcf6
	cmpi.w #$b0,($f73e).w
	bge.s loc_20dcf0
	addq.w #$6,($f73e).w
	cmpi.w #$b2,($f73e).w
	bge.s loc_20dcf0
	bra.s loc_20dcf6
loc_20dcf0:
	move.w #$b2,($f73e).w
loc_20dcf6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd16(pc,d0.w),d0
	jsr dat_20dd16(pc,d0.w)
	btst.b #$0,$2c(a0)
	beq.s loc_20dd0e
	rts
loc_20dd0e:
	bsr.s sub_20dc9a
	jmp (sub_203a10).l
dat_20dd16:
	dc.b $00,$0c,$00,$b2,$01,$76,$02,$9e
	dc.b $03,$1e,$03,$52
	movem.l d7/a1-a3,-(a7)
	move.w #$6,d0
	jsr (sub_2004e2).l
	movem.l (a7)+,d7/a1-a3
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$50,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e818,$4(a0)
	bsr.w sub_2079c6
	bne.w loc_20ddc6
	move.w a1,$36(a0)
	move.w a0,$34(a1)
	move.b #$33,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$30,$c(a1)
	bsr.w sub_2079c6
	bne.w loc_20ddc6
	move.w a0,$34(a1)
	move.w a1,$34(a0)
	move.b #$32,$0(a1)
	move.w $8(a0),$8(a1)
	subi.w #$40,$8(a1)
	move.w $c(a0),$c(a1)
	bsr.w sub_2079c6
	bne.s loc_20ddc6
	move.w a0,$34(a1)
	move.b #$3d,$0(a1)
	move.w $8(a0),$8(a1)
loc_20ddc6:
	rts
	movea.w $34(a0),a1
	move.b #$1,$1c(a1)
	lea ($d000).w,a1
	move.w #$1c0,d1
	move.w #$dc,d2
	move.w $c(a1),d0
	cmp.w d0,d1
	ble.s loc_20de0c
	cmp.w d0,d2
	bgt.s loc_20de08
loc_20ddea:
	cmp.w $2e(a0),d0
	bne.s loc_20ddf8
	bclr.b #$2,$2c(a0)
	bra.s loc_20ddfe
loc_20ddf8:
	bset.b #$2,$2c(a0)
loc_20ddfe:
	move.w d0,$2e(a0)
	move.w d0,$c(a0)
	rts
loc_20de08:
	move.w d2,d0
	bra.s loc_20ddea
loc_20de0c:
	move.w d1,$c(a0)
	bclr.b #$2,$2c(a0)
	move.b #$4,$24(a0)
	move.l #$fffd8000,$30(a0)
	move.w $c(a0),$2e(a0)
	addi.w #$ffb8,$2e(a0)
	move.b #$3f,$20(a0)
	move.b #$4,$21(a0)
	movea.w $34(a0),a1
	move.b #$0,$1c(a1)
	rts

sub_20de48:
	cmpi.b #$4,$3a(a0)
	bge.w loc_20de80
	moveq #$0,d0
	move.b $3a(a0),d0
	add.b d0,d0
	move.w dat_20de84(pc,d0.w),d0
	move.w ($d00c).w,d1
	cmp.w d0,d1
	bgt.s loc_20de80
	cmpi.w #$80,d1
	blt.s loc_20de80
	move.w ($d008).w,d1
	cmpi.w #$340,d1
	blt.s loc_20de80
	cmpi.w #$3c0,d1
	bgt.s loc_20de80
	moveq #$0,d0
	rts
loc_20de80:
	moveq #$1,d0
	rts
dat_20de84:
	dc.b $01,$f0,$01,$a8,$01,$60,$01,$10
	bsr.s sub_20de48
	bne.s loc_20de94
	bsr.w sub_20dea0
loc_20de94:
	tst.b $20(a0)
	bne.s loc_20de9e
	bra.w loc_20ded0
loc_20de9e:
	rts

sub_20dea0:
	bsr.w sub_2079b0
	bne.s loc_20dec6
	move.b #$3f,$0(a1)
	move.w #$380,$8(a1)
	moveq #$0,d0
	move.b $3a(a0),d0
	addq.b #$1,$3a(a0)
	add.b d0,d0
	move.w dat_20dec8(pc,d0.w),d0
	move.w d0,$c(a1)
loc_20dec6:
	rts
dat_20dec8:
	dc.b $02,$10,$01,$c8,$01,$80,$01,$30
loc_20ded0:
	moveq #$0,d0
	move.b $3b(a0),d0
	addq.b #$1,$3b(a0)
	add.w d0,d0
	move.w dat_20dee4(pc,d0.w),d0
	jmp dat_20dee4(pc,d0.w)
dat_20dee4:
	.incbin 57060, 434

sub_20e096:
	addq.w #$1,$3e(a0)
	cmpi.w #$78,$3e(a0)
	beq.s loc_20e0ac
	bcc.s loc_20e0bc
	lea dat_20e0be(pc),a2
	bra.w loc_20e158
loc_20e0ac:
	bset.b #$0,$2c(a0)
	movea.w $34(a0),a1
	bset.b #$0,$2c(a1)
loc_20e0bc:
	rts
dat_20e0be:
	.incbin 57534, 154
loc_20e158:
	moveq #$0,d2
	moveq #$0,d0
	move.w $3e(a0),d2
	move.w (a2)+,d0
	divu.w d0,d2
	move.l d2,d0
	swap d0
	tst.w d0
	bne.s loc_20e1b4
	andi.l #$ffff,d2
	moveq #$0,d0
	move.w (a2)+,d0
	divu.w d0,d2
	swap d2
	add.w d2,d2
	add.w d2,d2
	bsr.w sub_2079b0
	bne.s loc_20e1b4
	adda.w d2,a2
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w (a2)+,d0
	add.w d0,$8(a1)
	move.w (a2),d0
	add.w d0,$c(a1)
	move.b #$3e,$0(a1)
	move.b #$a,$24(a1)
	move.w #$9e,d0
	jsr (sub_20226c).l
loc_20e1b4:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e1dc(pc,d0.w),d0
	jsr dat_20e1dc(pc,d0.w)
	tst.b $1(a0)
	bpl.s loc_20e1d6
	lea (dat_20e688).l,a1
	jsr (sub_205c26).l
loc_20e1d6:
	jmp (sub_203a10).l
dat_20e1dc:
	dc.b $00,$0a,$00,$3c,$00,$48,$00,$94
	dc.b $00,$ca
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$6,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e6a8,$4(a0)
	move.w $c(a0),$2e(a0)
	movea.w $34(a0),a1
	move.w $c(a1),$c(a0)
	rts
	.incbin 57892, 158
	tst.b $24(a0)
	bne.s loc_20e2f2
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$31e,$2(a0)
	move.l #$20e922,$4(a0)
loc_20e2f2:
	btst.b #$0,$2c(a0)
	bne.s loc_20e31e
	movea.w $34(a0),a1
	move.w $c(a1),$c(a0)
	btst.b #$2,$2c(a1)
	beq.s loc_20e318
	lea (dat_20e914).l,a1
	jsr (sub_205c26).l
loc_20e318:
	jmp (sub_203a10).l
loc_20e31e:
	rts
	movea.w $34(a0),a2
	move.w $c(a2),$c(a0)
	addi.w #$20,$c(a0)
	tst.b $3b(a2)
	bne.s loc_20e34a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e350(pc,d0.w),d0
	jsr dat_20e350(pc,d0.w)
	jmp (sub_203a10).l
loc_20e34a:
	jmp (sub_203abc).l
dat_20e350:
	dc.b $00,$06,$00,$34,$00,$ac
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$18,$19(a0)
	move.b #$10,$16(a0)
	move.w #$47c,$2(a0)
	move.l #$20e93a,$4(a0)
	movea.w $34(a0),a2
	cmpi.w #$400,($d00c).w
	bge.s loc_20e39e
	tst.b $3a(a2)
	bne.s loc_20e39e
	addq.w #$1,$2a(a0)
	cmpi.w #$78,$2a(a0)
	bge.s loc_20e3a0
loc_20e39e:
	rts
loc_20e3a0:
	clr.w $2a(a0)
	move.b #$4,$24(a0)
	bsr.w sub_2079b0
	bne.w loc_20e3fa
	move.b #$3e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addq.w #$8,$c(a1)
	jsr (sub_20205a).l
	andi.l #$7fff,d0
	ext.l d0
	move.l d0,d2
	divs.w #$400,d0
	swap d0
	move.w #$c,d1
	tst.b $1b(a0)
	bne.s loc_20e3ec
	neg.w d0
	neg.w d1
loc_20e3ec:
	add.w d1,$8(a1)
	move.w d0,$10(a1)
	move.w #$300,$12(a1)
loc_20e3fa:
	rts
	subq.b #$1,$1e(a0)
	bgt.s loc_20e428
	moveq #$0,d0
	move.b $1b(a0),d0
	addq.b #$1,d0
	cmpi.b #$4,d0
	beq.s loc_20e42c
	cmpi.b #$8,d0
	beq.s loc_20e42a
	move.b #$2,$1e(a0)
loc_20e41c:
	move.b d0,$1b(a0)
	move.b dat_20e434(pc,d0.w),d0
	move.b d0,$1a(a0)
loc_20e428:
	rts
loc_20e42a:
	moveq #$0,d0
loc_20e42c:
	move.b #$2,$24(a0)
	bra.s loc_20e41c
dat_20e434:
	dc.b $00,$01,$00,$02,$00,$03,$00,$04
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e44a(pc,d0.w),d0
	jmp dat_20e44a(pc,d0.w)
dat_20e44a:
	dc.b $00,$0c,$00,$50,$01,$c4,$01,$d6
	dc.b $01,$76,$01,$8e
	move.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.w #$47c,$2(a0)
	move.l #$20e9b2,$4(a0)
	move.b #$d7,$20(a0)
	move.w #$0,$38(a0)
	move.w #$20,$3a(a0)
	move.w #$600,$3c(a0)
	tst.b $21(a0)
	bne.w loc_20e54c
	addq.w #$1,$2a(a0)
	cmpi.w #$f0,$2a(a0)
	bge.w loc_20e5c0
	addq.b #$1,$1e(a0)
	btst.b #$1,$1e(a0)
	beq.s loc_20e4c2
	eori.b #$1,$1a(a0)
loc_20e4c2:
	bsr.w sub_20e626
	tst.w $12(a0)
	bmi.s loc_20e4e8
	bsr.w sub_206e92
	tst.w d1
	bgt.w loc_20e500
	add.w d1,$c(a0)
	move.w $12(a0),d1
	neg.w d1
	move.w d1,$12(a0)
	bra.w loc_20e500
loc_20e4e8:
	bsr.w sub_207028
	tst.w d1
	bgt.w loc_20e500
	sub.w d1,$c(a0)
	move.w $12(a0),d1
	neg.w d1
	move.w d1,$12(a0)
loc_20e500:
	tst.w $10(a0)
	bmi.s loc_20e528
	moveq #$0,d3
	move.b $17(a0),d3
	bsr.w sub_206f5c
	tst.w d1
	bgt.w loc_20e546
	add.w d1,$8(a0)
	move.w $10(a0),d0
	neg.w d0
	move.w d0,$10(a0)
	bra.w loc_20e546
loc_20e528:
	moveq #$0,d3
	move.b $17(a0),d3
	bsr.w sub_2070fe
	tst.w d1
	bgt.w loc_20e546
	sub.w d1,$8(a0)
	move.w $10(a0),d0
	neg.w d0
	move.w d0,$10(a0)
loc_20e546:
	jmp (sub_203a10).l
loc_20e54c:
	lea ($d000).w,a1
	clr.b $21(a0)
	move.w $8(a0),d1
	move.w $c(a0),d2
	sub.w $8(a1),d1
	sub.w $c(a1),d2
	jsr (sub_200a08).l
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a1)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$4,$22(a1)
	bclr.b #$5,$22(a1)
	clr.b $3c(a1)
	move.b #$1,$1c(a0)
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20e5ba
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20e5ba
	addq.b #$1,$2(a2,d0.w)
loc_20e5ba:
	bclr.b #$3,$22(a1)
loc_20e5c0:
	move.w #$9e,d0
	jsr (sub_20226c).l
	move.w #$100,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_20e5e4
	move.w #$1,$1c(a0)
	move.b #$4,$24(a0)
loc_20e5e4:
	clr.b $20(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$680,$2(a0)
	move.l #$23d13a,$4(a0)
	lea (dat_23d126).l,a1
	jsr (sub_205c26).l
	jmp (sub_203a10).l
	jmp (sub_203abc).l

sub_20e626:
	move.w $3a(a0),d0
	add.w d0,$12(a0)
	move.w $38(a0),d0
	add.w d0,$10(a0)
	tst.w $3a(a0)
	beq.s loc_20e66e
	bmi.s loc_20e64e
	move.w $3c(a0),d0
	cmp.w $12(a0),d0
	bgt.s loc_20e66e
	move.w d0,$12(a0)
	bra.s loc_20e66e
loc_20e64e:
	move.w $3c(a0),d0
	cmp.w $12(a0),d0
	blt.s loc_20e66e
	move.w d0,$12(a0)
	bra.s loc_20e66e
	.incbin 58974, 16
loc_20e66e:
	move.w $10(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	lsl.l #$8,d0
	add.l d0,$c(a0)
	rts
dat_20e688:
	.incbin 59016, 352
dat_20e7e8:
	.incbin 59368, 300
dat_20e914:
	.incbin 59668, 174
	cmpi.b #$4,$24(a0)
	beq.w loc_20ea38
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9da(pc,d0.w),d0
	jmp dat_20e9da(pc,d0.w)
dat_20e9da:
	dc.b $00,$14,$00,$44,$00,$5e,$00,$08
	move.b #$5,$2a(a0)
	clr.b $24(a0)
	bra.s loc_20e9f4
	dc.b $11,$7c,$00,$07,$00,$2a
loc_20e9f4:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$474,$2(a0)
	move.l #$20ea5a,$4(a0)
	move.b #$48,$19(a0)
	move.b #$10,$16(a0)
	lea dat_20ea4e(pc),a1
	jsr (sub_205c26).l
	move.b $1a(a0),d0
	cmp.b $2a(a0),d0
	beq.s loc_20ea34
	bra.s loc_20ea38
loc_20ea34:
	addq.b #$2,$24(a0)
loc_20ea38:
	tst.b $1(a0)
	bpl.s loc_20ea48
	lea ($d000).w,a1
	jsr (sub_207dac).l
loc_20ea48:
	jmp (sub_203a10).l
dat_20ea4e:
	.incbin 59982, 216
	tst.b $28(a0)
	bmi.w loc_20aa0a
	beq.w loc_20a63c
	bra.w loc_20abe0
	.incbin 60214, 1950
loc_20f2d4:
	jmp (sub_203abc).l
	.incbin 62170, 18
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$fb,$20(a0)
	move.w #$33e,$2(a0)
	move.l #$20f550,$4(a0)
	move.l #$20f594,$2c(a0)
	jsr (sub_2079b0).l
	bne.w loc_20f2d4
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_2079b0).l
	bne.w loc_20f2d4
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_2079b0).l
	bne.w loc_20f2d4
	move.b #$39,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_2079b0).l
	bne.w loc_20f2d4
	move.b #$39,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$62,$8(a1)
	addi.w #$0,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20f3fc
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20f3fc:
	lea ($d000).w,a1
	jmp (sub_207db2).l
	.incbin 62470, 558

sub_20f634:
	jmp (loc_20649a).l
dat_20f63a:
	.incbin 63034, 16
dat_20f64a:
	.incbin 63050, 1150
	jmp (dat_2064ec).l
	.incbin 64206, 796
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 16782
dat_23724a:
	.incbin 225866, 256
dat_23734a:
	.incbin 226122, 4096
dat_23834a:
	.incbin 230218, 4696
dat_2395a2:
	.incbin 234914, 15236
dat_23d126:
	.incbin 250150, 166
dat_23d1cc:
	.incbin 250316, 652
dat_23d458:
	.incbin 250968, 11176
