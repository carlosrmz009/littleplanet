; R31D__.MMD
; disassembled from the disc; code only, data comes from data/R31D__.MMD at build time
	.file "R31D__.MMD", 262144

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
	bsr.w sub_20784e
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
	lea (dat_20f1de).l,a2
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
	bsr.w sub_20353c
	bsr.w sub_203442
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
	jsr (sub_20f1d8).l
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
	jsr (sub_205bfa).l
	bsr.w sub_20784e
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
	jsr (sub_207864).l
	jsr (sub_203950).l
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
	jsr (sub_203afa).l
	tst.w ($ff190e).l
	bne.s loc_201914
	bsr.w sub_200184
loc_201914:
	jsr (sub_20bea4).l
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
	jmp (sub_205bfa).l
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
	jmp (sub_205bfa).l
loc_201b4e:
	tst.b ($ff151f).l
	bne.s loc_201b44
	tst.b ($ff1520).l
	bne.s loc_201b44
	move.w #$90,d0
	jmp (sub_205bfa).l
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
	jmp (sub_205bfa).l
loc_201b8a:
	tst.b ($ff151f).l
	bne.s loc_201b80
	tst.b ($ff1520).l
	bne.s loc_201b80
	move.w #$91,d0
	jmp (sub_205bfa).l
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
	bsr.w sub_205b1c
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
	jsr (sub_20f1d8).l
	jsr (sub_202220).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20303a
	bsr.w sub_202514
	jmp (loc_20a8a4).l
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
	bsr.w sub_20303a
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
	bsr.w sub_205b1c
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
	lea (dat_20f1ee).l,a1
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
	lea (dat_20f1ee).l,a1
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
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
dat_202872:
	.incbin 10354, 32
loc_202892:
	tst.b ($ff1522).l
	beq.s loc_2028b2
	jsr (sub_206c72).l
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
	dc.b $00,$60,$03,$ec
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
	moveq #$e,d2
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
	bsr.w sub_202cb0
	bsr.w sub_202d50
	bsr.w sub_2035e4
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	moveq #$6,d6
	bsr.w sub_202fda
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202fa6
	lea ($a93c).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f72
	move.w #$218,d0
	move.w #$520,d1
	sub.w ($f704).w,d1
	bcs.s loc_202a0a
	lsr.w #$1,d1
	sub.w d1,d0
	bpl.s loc_202a0a
	moveq #$0,d0
loc_202a0a:
	bsr.w sub_202f42
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
	addi.l #$1000,(a2)+
	addi.l #$800,(a2)+
	addi.l #$1000,(a2)+
	addi.l #$2000,(a2)+
	addi.l #$3000,(a2)+
	addi.l #$4000,(a2)+
	addi.l #$6000,(a2)+
	addi.l #$8000,(a2)+
	addi.l #$c000,(a2)+
	moveq #$3f,d6
	moveq #$0,d1
loc_202a96:
	move.w d1,d2
	mulu.w #$100,d2
	addi.l #$8000,d2
	add.l d2,(a2)+
	addq.b #$1,d1
	dbf d6,loc_202a96
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	move.w ($f708).w,d0
	neg.w d0
	move.w d0,(a1)+
	move.w ($f708).w,d0
	neg.w d0
	moveq #$2,d6
loc_202ac2:
	move.w d0,(a1)+
	dbf d6,loc_202ac2
	move.w ($f718).w,d0
	neg.w d0
	moveq #$9,d6
loc_202ad0:
	move.w d0,(a1)+
	dbf d6,loc_202ad0
	lea ($a800).w,a2
	moveq #$e,d6
loc_202adc:
	move.l (a2)+,d1
	swap d1
	add.w ($f708).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202bbe).l,a3
	move.b $0(a3,d6.w),d5
loc_202af2:
	move.w d1,(a1)+
	dbf d5,loc_202af2
	dbf d6,loc_202adc
	move.w ($f708).w,d0
	neg.w d0
	moveq #$5,d6
loc_202b04:
	move.w d0,(a1)+
	dbf d6,loc_202b04
	move.w ($f718).w,d0
	neg.w d0
	moveq #$3,d6
loc_202b12:
	move.w d0,(a1)+
	dbf d6,loc_202b12
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202b20:
	move.w d0,(a1)+
	dbf d6,loc_202b20
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divs.w #$18,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	moveq #$2,d6
	move.w ($f708).w,d3
loc_202b46:
	move.w d3,d0
	neg.w d0
	lea (dat_202bce).l,a3
	moveq #$0,d5
	move.b $0(a3,d6.w),d5
loc_202b56:
	move.w d0,(a1)+
	dbf d5,loc_202b56
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202b46
	move.w ($f708).w,d0
	neg.w d0
	moveq #$7,d6
loc_202b6e:
	move.w d0,(a1)+
	dbf d6,loc_202b6e
	lea ($cc00).w,a1
	lea ($a93c).w,a2
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
	bcs.s loc_202bba
	cmpi.w #$1b,d1
	bcs.s loc_202b9e
	moveq #$1c,d1
loc_202b9e:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	lea (dat_202bd2).l,a3
	lea (dat_23d53e).l,a4
	addi.w #$40,($f7d8).w
	bsr.w sub_202c26
loc_202bba:
	bra.w loc_202bd8
dat_202bbe:
	.incbin 11198, 16
dat_202bce:
	dc.b $06,$01,$00,$00
dat_202bd2:
	dc.b $00,$08,$7f,$ff,$7f,$ff
loc_202bd8:
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
	lea ($a83c).w,a2
	move.b ($f7d8).w,d5
	sub.w ($f70c).w,d4
loc_202bea:
	move.l (a2)+,d2
	swap d2
	add.w ($f708).w,d2
	neg.w d2
	move.w d2,d0
	move.w #$5c0,d3
	sub.w ($f704).w,d3
	cmp.w d3,d4
	bcs.s loc_202c1a
	andi.w #$ff,d5
	move.b $0(a4,d5.w),d3
	ext.w d3
	add.w d3,d3
	add.w ($f700).w,d3
	neg.w d3
	swap d0
	move.w d3,d0
	swap d0
loc_202c1a:
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d5
	dbf d1,loc_202bea
	rts

sub_202c26:
	cmp.w (a3),d4
	bcc.s loc_202c5c
loc_202c2a:
	andi.w #$7,d2
	addq.w #$8,d4
	sub.w d2,d4
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c46(pc,d2.w)
loc_202c3a:
	tst.w d1
	bmi.s loc_202c5a
	cmp.w (a3),d4
	bcc.s loc_202c76
loc_202c42:
	move.w (a2)+,d0
	addq.w #$8,d4
loc_202c46:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c3a
loc_202c5a:
	rts
loc_202c5c:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	bgt.s loc_202c80
	cmp.w (a3),d4
	bcs.s loc_202c2a
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c2a
	bra.s loc_202c80
loc_202c76:
	move.w (a3)+,d3
	addi.w #$18,d3
	sub.w d4,d3
	ble.s loc_202c42
loc_202c80:
	subq.w #$1,d3
	move.w d3,d6
	moveq #$0,d2
	move.b ($f7d8).w,d2
loc_202c8a:
	andi.w #$ff,d2
	move.b $0(a4,d2.w),d0
	ext.w d0
	add.w ($f708).w,d0
	neg.w d0
	move.l d0,(a1)+
	addq.w #$1,d4
	addq.w #$1,d2
	dbf d3,loc_202c8a
	lsr.w #$3,d6
loc_202ca6:
	move.w (a2)+,d0
	subq.w #$1,d1
	dbf d6,loc_202ca6
	bra.s loc_202c3a

sub_202cb0:
	move.w ($f700).w,d4
	bsr.s sub_202ce4
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ce2
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202cdc
	bset.b #$2,($f754).w
	rts
loc_202cdc:
	bset.b #$3,($f754).w
loc_202ce2:
	rts

sub_202ce4:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202cf6
	bcs.s loc_202d26
	bra.s loc_202cfc
loc_202cf6:
	clr.w ($f73a).w
	rts
loc_202cfc:
	cmpi.w #$10,d0
	blt.s loc_202d06
	move.w #$10,d0
loc_202d06:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202d14
	move.w ($f72a).w,d0
loc_202d14:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d26:
	cmpi.w #$fff0,d0
	bge.s loc_202d30
	move.w #$fff0,d0
loc_202d30:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202d14
	move.w ($f728).w,d0
	bra.s loc_202d14
	.incbin 11584, 16

sub_202d50:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d64
	subq.w #$5,d0
loc_202d64:
	btst.b #$1,$22(a6)
	beq.s loc_202d84
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202dd0
	subi.w #$40,d0
	bcc.s loc_202dd0
	tst.b ($f75c).w
	bne.s loc_202de2
	bra.s loc_202d90
loc_202d84:
	sub.w ($f73e).w,d0
	bne.s loc_202d96
	tst.b ($f75c).w
	bne.s loc_202de2
loc_202d90:
	clr.w ($f73c).w
	rts
loc_202d96:
	cmpi.w #$60,($f73e).w
	bne.s loc_202dbe
	move.w $14(a6),d1
	bpl.s loc_202da6
	neg.w d1
loc_202da6:
	cmpi.w #$800,d1
	bcc.s loc_202dd0
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e30
	cmpi.w #$fffa,d0
	blt.s loc_202dfa
	bra.s loc_202de8
loc_202dbe:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e30
	cmpi.w #$fffe,d0
	blt.s loc_202dfa
	bra.s loc_202de8
loc_202dd0:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e30
	cmpi.w #$fff0,d0
	blt.s loc_202dfa
	bra.s loc_202de8
loc_202de2:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202de8:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e3a
	bra.w loc_202e06
loc_202dfa:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e06:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e5e
	cmpi.w #$ff00,d1
	bgt.s loc_202e2a
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e5e
loc_202e2a:
	move.w ($f72c).w,d1
	bra.s loc_202e5e
loc_202e30:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e3a:
	cmp.w ($f72e).w,d1
	blt.s loc_202e5e
	subi.w #$800,d1
	bcs.s loc_202e5a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e5e
loc_202e5a:
	move.w ($f72e).w,d1
loc_202e5e:
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
	bne.s loc_202ea0
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e9a
	bset.b #$0,($f754).w
	rts
loc_202e9a:
	bset.b #$1,($f754).w
loc_202ea0:
	rts
	.incbin 11938, 160

sub_202f42:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f70
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f6a
	bset.b #$0,($f756).w
	rts
loc_202f6a:
	bset.b #$1,($f756).w
loc_202f70:
	rts

sub_202f72:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202fa4
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f9e
	bset.b d6,($f756).w
	bra.s loc_202fa4
loc_202f9e:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202fa4:
	rts

sub_202fa6:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202fd8
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202fd2
	bset.b d6,($f758).w
	bra.s loc_202fd8
loc_202fd2:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202fd8:
	rts

sub_202fda:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_20300c
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_203006
	bset.b d6,($f75a).w
	bra.s loc_20300c
loc_203006:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_20300c:
	rts
	.incbin 12302, 44

sub_20303a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2030f8
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2031dc
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2031de
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_2030f6
	bclr.b #$0,(a2)
	beq.s loc_2030ac
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20340a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e0
loc_2030ac:
	bclr.b #$1,(a2)
	beq.s loc_2030c6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20340a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e0
loc_2030c6:
	bclr.b #$2,(a2)
	beq.s loc_2030dc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20340a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203236
loc_2030dc:
	bclr.b #$3,(a2)
	beq.s loc_2030f6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20340a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203236
loc_2030f6:
	rts

sub_2030f8:
	lea (dat_2034c2).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_203114
	bclr.b #$1,(a2)
	beq.s loc_20315e
	move.w #$e0,d4
loc_203114:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20318e(pc,d0.w),a3
	beq.s loc_203146
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20340a
	movem.l (a7)+,d4-d5
	bsr.w sub_2031e0
	movea.l (a7)+,a0
	bra.s loc_20315e
loc_203146:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20340c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20320c
	movea.l (a7)+,a0
loc_20315e:
	tst.b (a2)
	bne.s loc_203164
	rts
loc_203164:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203178
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203178:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20319e
dat_20318e:
	.incbin 12686, 16
loc_20319e:
	moveq #$f,d6
	move.l #$800000,d7
loc_2031a6:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_2031d0
	add.w d0,d0
	movea.l dat_20318e(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e2
	movem.l (a7)+,d4-d5
	bsr.w sub_20340a
	bsr.w sub_203264
	movem.l (a7)+,d4-d5/a0
loc_2031d0:
	addi.w #$10,d4
	dbf d6,loc_2031a6
	clr.b (a2)
	rts

sub_2031dc:
	rts

sub_2031de:
	rts

sub_2031e0:
	moveq #$15,d6

sub_2031e2:
	move.l #$800000,d7
	move.l d0,d1
loc_2031ea:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e2
	move.l d1,d0
	bsr.w sub_203264
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031ea
	rts

sub_20320c:
	move.l #$800000,d7
	move.l d0,d1
loc_203214:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e4
	move.l d1,d0
	bsr.w sub_203264
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203214
	rts

sub_203236:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203240:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032e2
	move.l d1,d0
	bsr.w sub_203264
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203240
	rts

sub_203264:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2032a0
	btst.b #$3,(a0)
	bne.s loc_203280
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203280:
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
loc_2032a0:
	btst.b #$3,(a0)
	bne.s loc_2032c2
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
loc_2032c2:
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

sub_2032e2:
	add.w (a3),d5

sub_2032e4:
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
	beq.s loc_203332
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
loc_203332:
	rts
	.incbin 13108, 214

sub_20340a:
	add.w (a3),d5

sub_20340c:
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
	.incbin 13350, 28

sub_203442:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20346c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203494

sub_20346c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203470:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20340a
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2031e2
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203470
	rts
loc_203494:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203498:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034c2).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$3f0,d0
	bsr.w sub_203504
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203498
	rts
dat_2034c2:
	.incbin 13506, 50
dat_2034f4:
	.incbin 13556, 16

sub_203504:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2034f4(pc,d0.w),a3
	beq.s loc_203526
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20340a
	movem.l (a7)+,d4-d5
	bsr.w sub_2031e0
	bra.s loc_20353a
loc_203526:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_20340c
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_20320c
loc_20353a:
	rts

sub_20353c:
	moveq #$0,d0
	lea (dat_20f1de).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202308
	movea.l (a2)+,a0
	bsr.w sub_203596
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2004c6
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203580
	jmp (loc_20be9c).l
loc_203580:
	btst.b #$1,($ff151c).l
	beq.s loc_203594
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203594
	bsr.w sub_202436
loc_203594:
	rts

sub_203596:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035a0:
	move.l d0,(a3)+
	dbf d1,loc_2035a0
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2035b6
	lea ($a040).w,a3
	moveq #$2,d1

sub_2035b6:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_239606).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2035d0:
	move.w d1,d0
	movea.l a3,a0
loc_2035d4:
	move.b (a1)+,(a0)+
	dbf d0,loc_2035d4
	lea $80(a3),a3
	dbf d2,loc_2035d0
	rts

sub_2035e4:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20365e(pc,d0.w),d0
	jsr dat_20365e(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20360a
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20360a:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203638
	bcc.s loc_20363a
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20362e
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20362e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203638:
	rts
loc_20363a:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203652
	btst.b #$1,($d022).w
	beq.s loc_203652
	add.w d1,d1
	add.w d1,d1
loc_203652:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20365e:
	.incbin 13918, 168
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203718(pc,d0.w),d0
	jmp dat_203718(pc,d0.w)
dat_203718:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$510,($f726).w
	rts
	.incbin 14118, 378
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038b2(pc,d0.w),d0
	jmp dat_2038b2(pc,d0.w)
dat_2038b2:
	.incbin 14514, 158

sub_203950:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203958:
	move.b (a0),d0
	beq.s loc_20396e
	add.w d0,d0
	add.w d0,d0
	lea (dat_203d72).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20396e:
	lea $40(a0),a0
	dbf d7,loc_203958
	rts

sub_203978:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2039b6
	bpl.s loc_2039a8
	btst.b #$1,$2c(a0)
	beq.s loc_2039a8
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2039b6
loc_2039a8:
	btst.b #$2,$2c(a0)
	bne.s loc_2039b6
	addi.w #$38,$12(a0)
loc_2039b6:
	tst.w $12(a0)
	bmi.s loc_2039ca
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2039ca
	move.w #$1000,$12(a0)
loc_2039ca:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2039da:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a16
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a16
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a14
	neg.w d1
loc_203a14:
	add.w d1,d0
loc_203a16:
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

sub_203a30:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203aa0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203abc
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203abc
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203a7a
loc_203a6e:
	cmpi.w #$800,d3
	bcs.s loc_203a8c
	subi.w #$800,d3
	bra.s loc_203a8c
loc_203a7a:
	cmpi.w #$700,($f704).w
	bcs.s loc_203a8c
	cmpi.w #$100,d3
	bcc.s loc_203a8c
	addi.w #$800,d3
loc_203a8c:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203abc
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203abc
loc_203aa0:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203abc
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203abc:
	rts
	.incbin 15038, 30

sub_203adc:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203ae2:
	move.l d1,(a1)+
	dbf d0,loc_203ae2
	rts
dat_203aea:
	.incbin 15082, 16

sub_203afa:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b06:
	tst.w (a4)
	beq.w loc_203bc6
	moveq #$2,d6
loc_203b0e:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203bbe
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203b74
	movea.l dat_203aea(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203b58
	cmpi.w #$800,d2
	bcs.s loc_203b6a
	subi.w #$800,d2
	bra.s loc_203b6a
loc_203b58:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203b6a
	cmpi.w #$100,d2
	bcc.s loc_203b6a
	addi.w #$800,d2
loc_203b6a:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203b96
loc_203b74:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203b96
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_203bbe
	cmpi.w #$180,d2
	bcc.s loc_203bbe
loc_203b96:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203bb4
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203bb8
loc_203bb4:
	bsr.w sub_203be8
loc_203bb8:
	bset.b #$7,$1(a0)
loc_203bbe:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b0e
loc_203bc6:
	lea $80(a4),a4
	dbf d7,loc_203b06
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203be0
	move.l #$0,(a2)
	rts
loc_203be0:
	move.b #$0,-$5(a2)
	rts

sub_203be8:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c2e
	btst.l #$1,d4
	bne.w loc_203c7c
loc_203bfa:
	cmpi.b #$50,d5
	beq.s loc_203c2c
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
	bne.s loc_203c26
	addq.w #$1,d0
loc_203c26:
	move.w d0,(a2)+
	dbf d1,loc_203bfa
loc_203c2c:
	rts
loc_203c2e:
	btst.l #$1,d4
	bne.w loc_203cc2
loc_203c36:
	cmpi.b #$50,d5
	beq.s loc_203c7a
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
	bne.s loc_203c74
	addq.w #$1,d0
loc_203c74:
	move.w d0,(a2)+
	dbf d1,loc_203c36
loc_203c7a:
	rts
loc_203c7c:
	cmpi.b #$50,d5
	beq.s loc_203cc0
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
	bne.s loc_203cba
	addq.w #$1,d0
loc_203cba:
	move.w d0,(a2)+
	dbf d1,loc_203c7c
loc_203cc0:
	rts
loc_203cc2:
	cmpi.b #$50,d5
	beq.s loc_203d14
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
	bne.s loc_203d0e
	addq.w #$1,d0
loc_203d0e:
	move.w d0,(a2)+
	dbf d1,loc_203cc2
loc_203d14:
	rts
	.incbin 15638, 92
dat_203d72:
	.incbin 15730, 246

sub_203e68:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203e7a
	move.w #$0,(a1)
	rts
loc_203e7a:
	tst.w (a1)
	bne.s loc_203e84
	move.b #$1,$1(a1)
loc_203e84:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203ece
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ec0
	neg.w $10(a0)
loc_203ec0:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205bfa
loc_203ece:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203eec
	cmpa.w #$d040,a0
	beq.s loc_203eec
	tst.b ($ff1906).l
	beq.s loc_203eec
	jmp (loc_207598).l
loc_203eec:
	move.b $2a(a0),d0
	beq.s loc_203f16
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203f08
	cmpi.b #$2d,d0
	bcs.s loc_203f12
	move.b #$2d,d0
	bra.s loc_203f12
loc_203f08:
	cmpi.b #$1e,d0
	bcs.s loc_203f12
	move.b #$1e,d0
loc_203f12:
	move.b d0,$2a(a0)
loc_203f16:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203f24(pc,d0.w),d1
	jmp dat_203f24(pc,d1.w)
dat_203f24:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203f2e:
	tst.b ($d300).w
	bne.s loc_203f6c
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203f6c:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203f94
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203f94:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203fc8:
	tst.b ($ff1506).l
	bne.s loc_20402e
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_20402e
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_204032
	cmpi.b #$2f,d1
	bne.s loc_204030
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_20402e
	tst.b $2c(a0)
	beq.s loc_20402e
	jsr (sub_207a60).l
	bne.s loc_20402e
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204026
	moveq #$0,d0
loc_204026:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20402e:
	rts
loc_204030:
	rts

sub_204032:
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

sub_204058:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204064
	neg.w d0
loc_204064:
	btst.b #$1,$2c(a0)
	beq.s loc_204074
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20409c
loc_204074:
	cmpi.w #$600,d0
	bcs.s loc_20409c
	tst.w $14(a0)
	bpl.s loc_20408e
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_2040aa
	move.w #$e0,d1
	bra.s loc_2040aa
loc_20408e:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_2040aa
	move.w #$60,d1
	bra.s loc_2040aa
loc_20409c:
	cmpi.w #$a0,d1
	beq.s loc_2040aa
	bcc.s loc_2040a8
	addq.w #$2,d1
	bra.s loc_2040aa
loc_2040a8:
	subq.w #$2,d1
loc_2040aa:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204058
	bsr.w sub_203fc8
	tst.w ($ff1588).l
	beq.s loc_2040d0
	btst.b #$4,($f605).w
	beq.s loc_2040d0
	move.b #$1,($ff1906).l
	rts
loc_2040d0:
	tst.b ($f7cc).w
	bne.s loc_2040dc
	move.w ($f604).w,($f602).w
loc_2040dc:
	btst.b #$0,$2c(a0)
	beq.s loc_204100
	cmpi.b #$6,($ff1506).l
	bne.s loc_2040fa
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204118
loc_2040fa:
	bsr.w sub_2043e2
	bra.s loc_204118
loc_204100:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20415e(pc,d0.w),d1
	jsr dat_20415e(pc,d1.w)
	jsr (sub_2066b2).l
loc_204118:
	bsr.s sub_20416c
	bsr.w sub_20422c
	bsr.w sub_204246
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204140
	tst.b $1c(a0)
	bne.s loc_204140
	move.b $1d(a0),$1c(a0)
loc_204140:
	bsr.w sub_2055ea
	tst.b $2c(a0)
	bmi.s loc_204158
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204158
	jsr (sub_207142).l
loc_204158:
	bsr.w sub_2054a0
	rts
dat_20415e:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20416c:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204190
	move.w $30(a0),d0
	beq.s loc_204182
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204190
loc_204182:
	btst.b #$6,$2c(a0)
	bne.s loc_204190
	jsr (sub_203a30).l
loc_204190:
	tst.b ($ff151f).l
	beq.s loc_2041d4
	tst.w $32(a0)
	beq.s loc_2041d4
	subq.w #$1,$32(a0)
	bne.s loc_2041d4
	tst.b ($ff1520).l
	bne.s loc_2041cc
	tst.b ($ff1958).l
	bne.s loc_2041cc
	tst.b ($ff152e).l
	bne.s loc_2041c6
	move.w #$e,d0
	jsr (sub_205bfa).l
loc_2041c6:
	jsr (sub_201a60).l
loc_2041cc:
	move.b #$0,($ff151f).l
loc_2041d4:
	tst.b ($ff1520).l
	beq.s loc_20422a
	tst.w $34(a0)
	beq.s loc_20422a
	subq.w #$1,$34(a0)
	bne.s loc_20422a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204222
	tst.b ($ff1958).l
	bne.s loc_204222
	tst.b ($ff152e).l
	bne.s loc_20421c
	move.w #$e,d0
	jsr (sub_205bfa).l
loc_20421c:
	jsr (sub_201a60).l
loc_204222:
	move.b #$0,($ff1520).l
loc_20422a:
	rts

sub_20422c:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204246:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204252
loc_204250:
	rts
loc_204252:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204264
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204250
loc_204264:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2042a8
	bset.b #$6,$22(a0)
	bne.s loc_204250
	bsr.w sub_205efe
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204250
	bra.s loc_2042e0
loc_2042a8:
	tst.w $12(a0)
	beq.s loc_2042b0
	bpl.s loc_204250
loc_2042b0:
	bclr.b #$6,$22(a0)
	beq.s loc_204250
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204250
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2042e0
	move.w #$f000,$12(a0)
loc_2042e0:
	jsr (sub_207a60).l
	bne.s loc_2042f4
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2042f4:
	rts

sub_2042f6:
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
	bcs.s loc_2043d0
	move.l #$50000,d0
loc_2043d0:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2043e2:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204408
	tst.b ($ff152e).l
	beq.s loc_2043fe
	cmpi.b #$2,($ff152e).l
	bne.s loc_204408
loc_2043fe:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2044b8
loc_204408:
	tst.b $2a(a0)
	bne.w loc_2044c6
	tst.b ($f784).w
	beq.w loc_2044c6
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204426
	neg.w d0
loc_204426:
	tst.w ($f786).w
	bne.s loc_204432
	move.w #$1,($f786).w
loc_204432:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204448
	move.b #$1,($ff1502).l
	bra.w loc_205bf6
loc_204448:
	cmpi.w #$d2,d1
	bcs.s loc_20449c
	cmpi.b #$2,($ff1522).l
	beq.s loc_20449a
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204472
	move.w #$82,d0
	jsr (sub_205bfa).l
	moveq #$0,d0
loc_204472:
	add.b ($f784).w,d0
	bpl.s loc_20447c
	moveq #$0,d0
	bra.s loc_204484
loc_20447c:
	cmpi.b #$3,d0
	bcs.s loc_204484
	moveq #$2,d0
loc_204484:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2042f6
	move.b #$2,($ff1522).l
loc_20449a:
	rts
loc_20449c:
	cmpi.w #$5a,d1
	bcc.s loc_2044b4
	cmp.w d2,d0
	bcc.w loc_203f2e
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2044b4:
	cmp.w d2,d0
	bcc.s loc_2044c6
loc_2044b8:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2044c6:
	rts
	bsr.w sub_203e68
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2044f8
	tst.b ($ff195b).l
	beq.s loc_2044e6
	cmpi.b #$79,$1a(a0)
	bne.s loc_204522
	bra.s loc_2044ee
loc_2044e6:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204522
loc_2044ee:
	bsr.w sub_204d8a
	jmp (sub_203978).l
loc_2044f8:
	bsr.w sub_2045d0
	bsr.w sub_2043e2
	bsr.w sub_204e74
	bsr.w sub_204fa0
	bsr.w sub_204644
	bsr.w sub_204df6
	bsr.w sub_204d8a
	jsr (sub_2039da).l
	bsr.w sub_200b70
	bsr.w sub_20501e
loc_204522:
	rts
	tst.b ($f7c7).w
	bne.s loc_20453e
	cmpi.b #$15,$1c(a0)
	beq.s loc_20453e
	tst.w $12(a0)
	bmi.s loc_20453e
	move.b #$0,$1c(a0)
loc_20453e:
	bsr.w sub_2045d0
	bsr.w sub_2043e2
	bsr.w sub_204f5e
	bsr.w sub_204caa
	bsr.w sub_204d8a
	jsr (sub_203978).l
	btst.b #$6,$22(a0)
	beq.s loc_204566
	subi.w #$28,$12(a0)
loc_204566:
	bsr.w sub_205068
	bsr.w sub_20508c
	rts
	bsr.w sub_2045d0
	bsr.w sub_2043e2
	bsr.w sub_204e74
	bsr.w sub_204fdc
	bsr.w sub_204ae4
	bsr.w sub_204d8a
	tst.b $2a(a0)
	bne.s loc_204594
	jsr (sub_2039da).l
loc_204594:
	bsr.w sub_200b70
	bsr.w sub_20501e
	rts
	bsr.w sub_2045d0
	bsr.w sub_2043e2
	bsr.w sub_204f5e
	bsr.w sub_204caa
	bsr.w sub_204d8a
	jsr (sub_203978).l
	btst.b #$6,$22(a0)
	beq.s loc_2045c6
	subi.w #$28,$12(a0)
loc_2045c6:
	bsr.w sub_205068
	bsr.w sub_20508c
	rts

sub_2045d0:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20463c
	tst.w ($ff1506).l
	bne.s loc_20463c
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20463e).l,a2
loc_204604:
	move.b (a2)+,d0
	bmi.s loc_204614
	cmp.b d0,d1
	bne.s loc_204604
	bset.b #$1,$2c(a0)
	rts
loc_204614:
	bclr.b #$1,$2c(a0)
	beq.s loc_20463c
	tst.w $12(a0)
	bpl.s loc_20463c
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20463c
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20463c
	neg.w $10(a0)
loc_20463c:
	rts
dat_20463e:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204644:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20496e
	tst.w $3e(a0)
	bne.w loc_20491e
	btst.b #$2,($f602).w
	beq.s loc_20466c
	bsr.w sub_2049fe
loc_20466c:
	btst.b #$3,($f602).w
	beq.s loc_204678
	bsr.w sub_204a74
loc_204678:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20491e
	tst.w $14(a0)
	beq.s loc_204698
	tst.b $2a(a0)
	beq.w loc_20491e
	bra.s loc_2046a4
loc_204698:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2046a4:
	btst.b #$3,$22(a0)
	beq.s loc_2046f6
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20474e
	cmpi.b #$1e,$0(a1)
	bne.s loc_2046d6
	move.b #$0,$1c(a0)
	bra.w loc_20491e
loc_2046d6:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204732
	cmp.w d2,d1
	bge.s loc_204720
	bra.s loc_20474e
loc_2046f6:
	jsr (sub_206ea6).l
	cmpi.w #$c,d1
	blt.s loc_20474e
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20472a
loc_204720:
	btst.b #$0,$22(a0)
	bne.s loc_20473a
	bra.s loc_204744
loc_20472a:
	cmpi.b #$3,$37(a0)
	bne.s loc_20474e
loc_204732:
	btst.b #$0,$22(a0)
	bne.s loc_204744
loc_20473a:
	move.b #$32,$1c(a0)
	bra.w loc_20491e
loc_204744:
	move.b #$6,$1c(a0)
	bra.w loc_20491e
loc_20474e:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204762
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204762:
	btst.b #$7,($f788).w
	bne.w loc_204866
	btst.b #$6,($f788).w
	bne.w loc_204886
	btst.b #$1,($f602).w
	bne.w loc_204886
	andi.b #$f,($f788).w
	beq.s loc_20479a
	btst.b #$0,($f603).w
	beq.s loc_2047ae
	bset.b #$7,($f788).w
	bra.w loc_204942
loc_20479a:
	btst.b #$0,($f603).w
	beq.w loc_2047ae
	move.b #$1,($f788).w
	bra.w loc_204942
loc_2047ae:
	btst.b #$0,($f602).w
	beq.s loc_20482a
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20480c
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2047de
	asr.w #$1,d2
	sub.w d2,d1
loc_2047de:
	btst.b #$0,$22(a0)
	beq.s loc_2047ea
	neg.w d0
	neg.w d1
loc_2047ea:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204800
	cmp.w d0,d1
	ble.s loc_204806
	bra.s loc_204804
loc_204800:
	cmp.w d1,d0
	ble.s loc_204806
loc_204804:
	move.w d1,d0
loc_204806:
	move.w d0,$14(a0)
	rts
loc_20480c:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204826
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20226c).l
loc_204826:
	bra.w loc_204942
loc_20482a:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20484a
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204886
loc_20484a:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226c).l
	bra.w loc_20491e
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204866:
	btst.b #$0,($f602).w
	beq.s loc_204886
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204942
	addq.w #$2,($f73e).w
	bra.w loc_204942
loc_204886:
	btst.b #$6,($f788).w
	bne.w loc_204902
	andi.b #$f,($f788).w
	beq.s loc_2048aa
	btst.b #$1,($f603).w
	beq.s loc_2048bc
	bset.b #$6,($f788).w
	bra.w loc_204942
loc_2048aa:
	btst.b #$1,($f603).w
	beq.s loc_2048bc
	move.b #$1,($f788).w
	bra.w loc_204942
loc_2048bc:
	btst.b #$1,($f602).w
	beq.s loc_20491e
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204900
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204900
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2048f2
	neg.w $14(a0)
loc_2048f2:
	move.w #$9c,d0
	jsr (sub_20226c).l
	bsr.w sub_204e1e
loc_204900:
	bra.s loc_204942
loc_204902:
	btst.b #$1,($f602).w
	beq.s loc_20491e
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204942
	subq.w #$2,($f73e).w
	bra.s loc_204942
loc_20491e:
	cmpi.w #$60,($f73e).w
	bne.s loc_204938
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204942
	move.b #$0,($f788).w
	bra.s loc_204942
loc_204938:
	bcc.s loc_20493e
	addq.w #$4,($f73e).w
loc_20493e:
	subq.w #$2,($f73e).w
loc_204942:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20496e
	move.w $14(a0),d0
	beq.s loc_20496e
	bmi.s loc_204962
	sub.w d5,d0
	bcc.s loc_20495c
	move.w #$0,d0
loc_20495c:
	move.w d0,$14(a0)
	bra.s loc_20496e
loc_204962:
	add.w d5,d0
	bcc.s loc_20496a
	move.w #$0,d0
loc_20496a:
	move.w d0,$14(a0)
loc_20496e:
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_20498c:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2049fc
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2049fc
	bmi.s loc_2049a4
	neg.w d1
loc_2049a4:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d66
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2049fc
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2049f8
	cmpi.b #$40,d0
	beq.s loc_2049e6
	cmpi.b #$80,d0
	beq.s loc_2049e0
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2049e0:
	sub.w d1,$12(a0)
	rts
loc_2049e6:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2049f8:
	add.w d1,$12(a0)
loc_2049fc:
	rts

sub_2049fe:
	tst.b $2a(a0)
	bne.s loc_204a72
	move.w $14(a0),d0
	beq.s loc_204a0c
	bpl.s loc_204a3c
loc_204a0c:
	bset.b #$0,$22(a0)
	bne.s loc_204a20
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a20:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204a30
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204a30
	move.w d1,d0
loc_204a30:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204a3c:
	sub.w d4,d0
	bcc.s loc_204a44
	move.w #$ff80,d0
loc_204a44:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a72
	cmpi.w #$400,d0
	blt.s loc_204a72
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226c).l
loc_204a72:
	rts

sub_204a74:
	tst.b $2a(a0)
	bne.s loc_204ae2
	move.w $14(a0),d0
	bmi.s loc_204aac
	bclr.b #$0,$22(a0)
	beq.s loc_204a94
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204a94:
	cmp.w d6,d0
	bge.s loc_204aa0
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204aa0
	move.w d6,d0
loc_204aa0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204aac:
	add.w d4,d0
	bcc.s loc_204ab4
	move.w #$80,d0
loc_204ab4:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ae2
	cmpi.w #$fc00,d0
	bgt.s loc_204ae2
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20226c).l
loc_204ae2:
	rts

sub_204ae4:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204c2e
	tst.w $3e(a0)
	bne.s loc_204b1c
	btst.b #$2,($f602).w
	beq.s loc_204b10
	bsr.w sub_204c64
loc_204b10:
	btst.b #$3,($f602).w
	beq.s loc_204b1c
	bsr.w sub_204c88
loc_204b1c:
	tst.b $2a(a0)
	beq.w loc_204bc6
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204b3c
	asr.w #$1,d2
	sub.w d2,d1
loc_204b3c:
	btst.b #$0,$22(a0)
	beq.s loc_204b48
	neg.w d0
	neg.w d1
loc_204b48:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204b5e
	cmp.w d0,d1
	ble.s loc_204b64
	bra.s loc_204b62
loc_204b5e:
	cmp.w d1,d0
	ble.s loc_204b64
loc_204b62:
	move.w d1,d0
loc_204b64:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204b98
	rts
loc_204b72:
	move.w #$ab,d0
	jsr (sub_20226c).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204bf8
loc_204b98:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204b72
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20226c).l
	btst.b #$0,$22(a0)
	bne.s loc_204bbe
	bsr.w sub_204c88
	bra.s loc_204bc6
loc_204bbe:
	bsr.w sub_204c64
	bra.s loc_204bc6
	dc.b $4e,$75
loc_204bc6:
	move.w $14(a0),d0
	beq.s loc_204be8
	bmi.s loc_204bdc
	sub.w d5,d0
	bcc.s loc_204bd6
	move.w #$0,d0
loc_204bd6:
	move.w d0,$14(a0)
	bra.s loc_204be8
loc_204bdc:
	add.w d5,d0
	bcc.s loc_204be4
	move.w #$0,d0
loc_204be4:
	move.w d0,$14(a0)
loc_204be8:
	tst.w $14(a0)
	bne.s loc_204c2e
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_204bf8:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c18
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204c28
loc_204c18:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204c28:
	move.b #$5,$1c(a0)
loc_204c2e:
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204c52
	move.w #$1000,d1
loc_204c52:
	cmpi.w #$f000,d1
	bge.s loc_204c5c
	move.w #$f000,d1
loc_204c5c:
	move.w d1,$10(a0)
	bra.w loc_20498c

sub_204c64:
	move.w $14(a0),d0
	beq.s loc_204c6c
	bpl.s loc_204c7a
loc_204c6c:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c7a:
	sub.w d4,d0
	bcc.s loc_204c82
	move.w #$ff80,d0
loc_204c82:
	move.w d0,$14(a0)
	rts

sub_204c88:
	move.w $14(a0),d0
	bmi.s loc_204c9c
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204c9c:
	add.w d4,d0
	bcc.s loc_204ca4
	move.w #$80,d0
loc_204ca4:
	move.w d0,$14(a0)
	rts

sub_204caa:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204ce4
	tst.w ($ff1506).l
	bne.s loc_204ce4
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204cdc
	cmpi.w #$840,$8(a0)
	bcc.s loc_204cdc
	rts
loc_204cdc:
	btst.b #$1,$2c(a0)
	bne.s loc_204d14
loc_204ce4:
	btst.b #$2,($f602).w
	beq.s loc_204cfe
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204cfe
	move.w d1,d0
loc_204cfe:
	btst.b #$3,($f602).w
	beq.s loc_204d14
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204d14
	move.w d6,d0
loc_204d14:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204d2a
	bcc.s loc_204d26
	addq.w #$4,($f73e).w
loc_204d26:
	subq.w #$2,($f73e).w
loc_204d2a:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204d58
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204d58
	bmi.s loc_204d4c
	sub.w d1,d0
	bcc.s loc_204d46
	move.w #$0,d0
loc_204d46:
	move.w d0,$10(a0)
	rts
loc_204d4c:
	sub.w d1,d0
	bcs.s loc_204d54
	move.w #$0,d0
loc_204d54:
	move.w d0,$10(a0)
loc_204d58:
	rts
	.incbin 19802, 48

sub_204d8a:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204dde
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204db8
	addi.w #$38,d0
loc_204db8:
	cmp.w d1,d0
	bls.s loc_204dde
loc_204dbc:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204dcc
	rts
loc_204dcc:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2073dc
	move.b #$6,$24(a0)
	rts
loc_204dde:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204dbc

sub_204df6:
	tst.b ($f7ca).w
	bne.s loc_204e1c
	move.w $14(a0),d0
	bpl.s loc_204e04
	neg.w d0
loc_204e04:
	cmpi.w #$80,d0
	bcs.s loc_204e1c
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204e1c
	btst.b #$1,($f602).w
	bne.s sub_204e1e
loc_204e1c:
	rts

sub_204e1e:
	btst.b #$2,$22(a0)
	beq.s loc_204e28
	bra.s loc_204e58
loc_204e28:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204e48
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204e58
loc_204e48:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204e58:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204e72
	cmpi.w #$200,$14(a0)
	bcc.s loc_204e72
	move.w #$200,$14(a0)
loc_204e72:
	rts

sub_204e74:
	tst.b $2a(a0)
	beq.s loc_204e7c
	rts
loc_204e7c:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204e8e
	tst.w $14(a0)
	beq.w loc_204f54
loc_204e8e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204f54
	btst.b #$3,$22(a0)
	beq.s loc_204eaa
	jsr (sub_205b80).l
	beq.s loc_204eda
loc_204eaa:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206dd0
	cmpi.w #$6,d1
	blt.w loc_204f54
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204ed0
	move.w #$380,d2
loc_204ed0:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204eda:
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
	bne.s loc_204f56
	tst.b ($ff195b).l
	beq.s loc_204f38
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f48
loc_204f38:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f48:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204f54:
	rts
loc_204f56:
	bset.b #$4,$22(a0)
	rts

sub_204f5e:
	tst.b $3c(a0)
	beq.s loc_204f90
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204f74
	move.w #$fe00,d1
loc_204f74:
	cmp.w $12(a0),d1
	ble.s loc_204f8e
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204f8e
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204f8e:
	rts
loc_204f90:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204f9e
	move.w #$f040,$12(a0)
loc_204f9e:
	rts

sub_204fa0:
	tst.b $2a(a0)
	bne.s loc_204fda
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204fda
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204fda
	bmi.s loc_204fd6
	tst.w d0
	beq.s loc_204fd4
	add.w d0,$14(a0)
loc_204fd4:
	rts
loc_204fd6:
	add.w d0,$14(a0)
loc_204fda:
	rts

sub_204fdc:
	tst.b $2a(a0)
	bne.s loc_20501c
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20501c
	move.b $26(a0),d0
	jsr (sub_200770).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205012
	tst.w d0
	bpl.s loc_20500c
	asr.l #$2,d0
loc_20500c:
	add.w d0,$14(a0)
	rts
loc_205012:
	tst.w d0
	bmi.s loc_205018
	asr.l #$2,d0
loc_205018:
	add.w d0,$14(a0)
loc_20501c:
	rts

sub_20501e:
	nop
	tst.b $38(a0)
	bne.s loc_205060
	tst.w $3e(a0)
	bne.s loc_205062
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205060
	move.w $14(a0),d0
	bpl.s loc_205042
	neg.w d0
loc_205042:
	cmpi.w #$280,d0
	bcc.s loc_205060
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205060:
	rts
loc_205062:
	subq.w #$1,$3e(a0)
	rts

sub_205068:
	btst.b #$1,$2c(a0)
	bne.s loc_20508a
	move.b $26(a0),d0
	beq.s loc_20508a
	bpl.s loc_205080
	addq.b #$2,d0
	bcc.s loc_20507e
	moveq #$0,d0
loc_20507e:
	bra.s loc_205086
loc_205080:
	subq.b #$2,d0
	bcc.s loc_205086
	moveq #$0,d0
loc_205086:
	move.b d0,$26(a0)
loc_20508a:
	rts

sub_20508c:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205170
	cmpi.b #$80,d0
	beq.w loc_2051d2
	cmpi.b #$c0,d0
	beq.w loc_20522e
	bsr.w sub_2070e6
	tst.w d1
	bpl.s loc_2050de
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050de:
	bsr.w sub_206f48
	tst.w d1
	bpl.s loc_2050f0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2050f0:
	bsr.w sub_206df8
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20516e
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20510e
	cmp.b d2,d0
	blt.s loc_20516e
loc_20510e:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205290
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20514c
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_20513e
	asr.w $12(a0)
	bra.s loc_205160
loc_20513e:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20514c:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205160
	move.w #$fc0,$12(a0)
loc_205160:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20516e
	neg.w $14(a0)
loc_20516e:
	rts
loc_205170:
	bsr.w sub_2070e6
	tst.w d1
	bpl.s loc_20518a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20518a:
	bsr.w sub_206fa0
	tst.w d1
	bpl.s loc_2051a4
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2051a2
	move.w #$0,$12(a0)
loc_2051a2:
	rts
loc_2051a4:
	tst.w $12(a0)
	bmi.s loc_2051d0
	bsr.w sub_206df8
	tst.w d1
	bpl.s loc_2051d0
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205290
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2051d0:
	rts
loc_2051d2:
	bsr.w sub_2070e6
	tst.w d1
	bpl.s loc_2051e4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051e4:
	bsr.w sub_206f48
	tst.w d1
	bpl.s loc_2051f6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051f6:
	bsr.w sub_206fa0
	tst.w d1
	bpl.s loc_20522c
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205216
	move.w #$0,$12(a0)
	rts
loc_205216:
	move.b d3,$26(a0)
	bsr.w sub_205302
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20522c
	neg.w $14(a0)
loc_20522c:
	rts
loc_20522e:
	bsr.w sub_206f48
	tst.w d1
	bpl.s loc_205248
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205248:
	bsr.w sub_206fa0
	tst.w d1
	bpl.s loc_205262
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205260
	move.w #$0,$12(a0)
loc_205260:
	rts
loc_205262:
	tst.w $12(a0)
	bmi.s loc_20528e
	bsr.w sub_206df8
	tst.w d1
	bpl.s loc_20528e
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205290
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20528e:
	rts

sub_205290:
	btst.b #$4,$22(a0)
	beq.s loc_20529a
	nop
loc_20529a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2052f4
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2052d4
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2052e4
loc_2052d4:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2052e4:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_2052f4:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205302:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2039da).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20533c
	subi.w #$20,$12(a0)
loc_20533c:
	jsr (sub_2066b2).l
	bsr.w sub_205358
	bsr.w sub_204d8a
	bsr.w sub_20422c
	bsr.w sub_2055ea
	jmp (sub_203a30).l

sub_205358:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2073dc
	bsr.w sub_20508c
	btst.b #$1,$22(a0)
	bne.s loc_205392
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205392:
	rts
	.incbin 21396, 268

sub_2054a0:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2054c8
	cmpi.b #$5,($ff1506).l
	beq.s loc_2054c8
	cmpi.b #$2,($ff1506).l
	beq.s loc_2054c8
	tst.b ($ff1506).l
	bne.w loc_20558a
loc_2054c8:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205506
	tst.b ($ff1506).l
	bne.w loc_20558c
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20558c
	bra.s loc_20550e
loc_205506:
	cmp.b ($f7af).w,d1
	beq.w loc_20558c
loc_20550e:
	cmp.b ($f7ac).w,d1
	beq.s loc_20553e
	cmp.b ($f7ad).w,d1
	beq.s loc_205522
	bclr.b #$6,$1(a0)
	rts
loc_205522:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2055a4
	btst.b #$1,$22(a0)
	beq.s loc_20553e
	bclr.b #$6,$1(a0)
	rts
loc_20553e:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205550
	bclr.b #$6,$1(a0)
	rts
loc_205550:
	cmpi.b #$e0,d2
	bcs.s loc_20555e
	bset.b #$6,$1(a0)
	rts
loc_20555e:
	btst.b #$6,$1(a0)
	bne.s loc_20557a
	move.b $26(a0),d1
	beq.s loc_20558a
	cmpi.b #$80,d1
	bhi.s loc_20558a
	bset.b #$6,$1(a0)
	rts
loc_20557a:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20558a
	bclr.b #$6,$1(a0)
loc_20558a:
	rts
loc_20558c:
	btst.b #$2,$22(a0)
	bne.s loc_20559e
	move.w #$9c,d0
	jsr (sub_20226c).l
loc_20559e:
	jmp (sub_204e1e).l
loc_2055a4:
	tst.w $12(a0)
	bmi.s loc_2055e8
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2055dc
	cmpi.w #$38,d1
	bcs.s loc_2055d4
	cmpi.w #$80,d1
	bcs.s loc_2055e8
loc_2055cc:
	bclr.b #$6,$1(a0)
	rts
loc_2055d4:
	bset.b #$6,$1(a0)
	rts
loc_2055dc:
	cmpi.w #$38,d1
	bcs.s loc_2055cc
	cmpi.w #$80,d1
	bcc.s loc_2055d4
loc_2055e8:
	rts

sub_2055ea:
	lea (dat_2058da).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20560c
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20560c:
	bsr.w sub_20587c
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205684
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205652
	move.b d0,$1e(a0)

sub_205636:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20564a
	bpl.s loc_20564a
	cmpi.b #$fd,d0
	bge.s loc_205654
loc_20564a:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205652:
	rts
loc_205654:
	addq.b #$1,d0
	bne.s loc_205664
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20564a
loc_205664:
	addq.b #$1,d0
	bne.s loc_205678
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20564a
loc_205678:
	addq.b #$1,d0
	bne.s loc_205682
	move.b $2(a1,d1.w),$1c(a0)
loc_205682:
	rts
loc_205684:
	subq.b #$1,$1e(a0)
	bpl.s loc_205652
	addq.b #$1,d0
	bne.w loc_20573e
	tst.b ($ff195b).l
	bne.w loc_205806
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2056ac
	not.b d0
loc_2056ac:
	btst.b #$1,$2c(a0)
	bne.s loc_2056ba
	addi.b #$10,d0
	bra.s loc_2056bc
loc_2056ba:
	addq.b #$8,d0
loc_2056bc:
	bpl.s loc_2056c0
	moveq #$3,d1
loc_2056c0:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2057b2
	move.w $14(a0),d2
	bpl.s loc_2056de
	neg.w d2
loc_2056de:
	btst.b #$1,$2c(a0)
	beq.s loc_2056f6
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205adc).l,a1
	bra.s loc_205720
loc_2056f6:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205ab6).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205720
	lea (dat_20595a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205720
	lea (dat_205952).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205720:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20572e
	moveq #$0,d2
loc_20572e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205636
	add.b d3,$1a(a0)
	rts
loc_20573e:
	addq.b #$1,d0
	bne.s loc_2057ae
	move.w $14(a0),d2
	bpl.s loc_20574a
	neg.w d2
loc_20574a:
	lea (dat_205a38).l,a1
	tst.b ($ff195b).l
	bne.s loc_205788
	lea (dat_20596a).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20577c
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205788
	lea (dat_205ae4).l,a1
	bra.s loc_205788
loc_20577c:
	cmpi.w #$600,d2
	bcc.s loc_205788
	lea (dat_205962).l,a1
loc_205788:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205792
	moveq #$0,d2
loc_205792:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205636
loc_2057ae:
	addq.b #$1,d0
	bne.s loc_2057f2
loc_2057b2:
	move.w $14(a0),d2
	bmi.s loc_2057ba
	neg.w d2
loc_2057ba:
	addi.w #$800,d2
	bpl.s loc_2057c2
	moveq #$0,d2
loc_2057c2:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205a4a).l,a1
	tst.b ($ff195b).l
	bne.s loc_2057dc
	lea (dat_205972).l,a1
loc_2057dc:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205636
loc_2057f2:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205806:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205818
	not.b d0
loc_205818:
	addi.b #$10,d0
	bpl.s loc_205820
	moveq #$0,d1
loc_205820:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20584e
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20573e
loc_20584e:
	move.w $14(a0),d2
	bpl.s loc_205856
	neg.w d2
loc_205856:
	lea (dat_205a32).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205868
	lea (dat_205a2c).l,a1
loc_205868:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205872
	moveq #$0,d2
loc_205872:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205636

sub_20587c:
	tst.b ($ff195b).l
	beq.s loc_205888
	move.b dat_20588a(pc,d0.w),d0
loc_205888:
	rts
dat_20588a:
	.incbin 22666, 80
dat_2058da:
	.incbin 22746, 120
dat_205952:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20595a:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205962:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20596a:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205972:
	.incbin 22898, 186
dat_205a2c:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205a32:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205a38:
	.incbin 23096, 18
dat_205a4a:
	.incbin 23114, 108
dat_205ab6:
	.incbin 23222, 38
dat_205adc:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205ae4:
	.incbin 23268, 56

sub_205b1c:
	tst.b (a0)
	beq.w loc_205b7e
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205b7e
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205b7e
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205b50:
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
loc_205b6a:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205b6a
	dbf d1,loc_205b50
loc_205b7e:
	rts

sub_205b80:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205bf4
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
	bne.s loc_205be2
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205be2:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205bf4:
	rts
loc_205bf6:
	move.w #$e,d0

sub_205bfa:
	cmpi.w #$67,d0
	bne.s loc_205c08
	move.b #$1,($ff1958).l
loc_205c08:
	move.w d0,($a12010).l
loc_205c0e:
	move.w ($a12020).l,d0
	beq.s loc_205c0e
	cmp.w ($a12020).l,d0
	bne.s loc_205c0e
	move.w #$0,($a12010).l
loc_205c26:
	move.w ($a12020).l,d0
	bne.s loc_205c26
	move.w ($a12020).l,d0
	bne.s loc_205c26
	rts
	dc.b $00,$00

sub_205c3a:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205c56
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205c56:
	subq.b #$1,$1e(a0)
	bpl.s loc_205c96
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205c98
loc_205c72:
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
loc_205c96:
	rts
loc_205c98:
	addq.b #$1,d0
	bne.s loc_205ca8
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205c72
loc_205ca8:
	addq.b #$1,d0
	bne.s loc_205cbc
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205c72
loc_205cbc:
	addq.b #$1,d0
	bne.s loc_205cc6
	move.b $2(a1,d1.w),$1c(a0)
loc_205cc6:
	addq.b #$1,d0
	bne.s loc_205cce
	addq.b #$2,$24(a0)
loc_205cce:
	addq.b #$1,d0
	bne.s loc_205cdc
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205cdc:
	addq.b #$1,d0
	bne.s loc_205ce4
	addq.b #$2,$25(a0)
loc_205ce4:
	rts
	.incbin 23782, 346
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$20,$c(a1)
	move.w $8(a0),$2a(a1)
	move.w $c(a0),$2c(a1)
	subi.w #$18,$2c(a1)
	rts
	.incbin 24166, 152

sub_205efe:
	rts
	.incbin 24320, 116

sub_205f74:
	tst.b $25(a0)
	bne.s loc_205fa4
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1

sub_205f82:
	ori.b #$80,d1
	jsr (sub_207a60).l
	bne.s loc_205fa4
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205fa4:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fb4(pc,d0.w),d0
	jmp dat_205fb4(pc,d0.w)
dat_205fb4:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205fdc
	andi.b #$7f,$2(a0)
loc_205fdc:
	move.l #$23d4ac,$4(a0)
	bsr.s sub_205f74
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_20600a
	move.w #$100,$1c(a0)
loc_20600a:
	lea (dat_23d498).l,a1
	bsr.w sub_205c3a
	jmp (sub_203a30).l
	tst.b $25(a0)
	beq.s loc_206026
	jmp (sub_203adc).l
loc_206026:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 24628, 608
dat_206294:
	.incbin 25236, 162
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206344(pc,d0.w),d1
	jmp dat_206344(pc,d1.w)
dat_206344:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23d2c0,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_206386
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_206386
	addq.b #$2,$24(a0)
loc_206386:
	rts
	tst.b ($ff151e).l
	beq.s loc_2063e2
	tst.b ($ff1521).l
	bne.s loc_2063e0
	tst.b ($ff151f).l
	bne.s loc_2063e0
	move.w ($d008).w,$8(a0)
	move.w ($d00c).w,$c(a0)
	move.b ($d022).w,$22(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2063d0
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2063d0
	andi.b #$7f,$2(a0)
loc_2063d0:
	lea (dat_23d198).l,a1
	jsr (sub_205c3a).l
	bra.w loc_206480
loc_2063e0:
	rts
loc_2063e2:
	jmp (sub_203adc).l
	.incbin 25576, 152
loc_206480:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_206492
	rts
loc_206492:
	cmp.b $24(a0),d0
	beq.s loc_2064a8
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2064a8:
	jmp (sub_203a30).l
loc_2064ae:
	bclr.b #$7,($ff156b).l
	beq.s loc_2064fc
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2064fe(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2064d2:
	move.l (a1)+,(a2)+
	dbf d0,loc_2064d2
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2064fc:
	rts
dat_2064fe:
	.incbin 25854, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206534(pc,d0.w),d0
	jsr dat_206534(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_20652e
	jsr (sub_203a30).l
loc_20652e:
	jmp (loc_207a96).l
dat_206534:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23d2c0,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206616
	cmpi.b #$6,$24(a1)
	bcc.w loc_206616
	bsr.w sub_20667a
	beq.w loc_206616
	tst.b $28(a0)
	bne.s loc_2065c8
	move.w $10(a1),d0
	bpl.s loc_206588
	neg.w d0
loc_206588:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_20659a
	move.w #$d00,d1
loc_20659a:
	cmp.w d1,d0
	bcc.s loc_2065a0
	move.w d1,d0
loc_2065a0:
	tst.w $10(a1)
	bpl.s loc_2065a8
	neg.w d0
loc_2065a8:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2065f8
	neg.w $14(a1)
	bra.s loc_2065f8
loc_2065c8:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206618
	move.w $12(a1),d0
	bpl.s loc_2065d8
	neg.w d0
loc_2065d8:
	cmpi.w #$d00,d0
	bcc.s loc_2065e2
	move.w #$d00,d0
loc_2065e2:
	tst.w $12(a1)
	bpl.s loc_2065ea
	neg.w d0
loc_2065ea:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2065f8:
	bset.b #$2,$22(a1)
	bne.s loc_206616
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206616:
	rts
loc_206618:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_206664
	cmpi.b #$2,$28(a0)
	bne.s loc_206634
	tst.w $12(a1)
	bpl.s loc_2065f8
	bra.s loc_20663a
loc_206634:
	tst.w $12(a1)
	bmi.s loc_2065f8
loc_20663a:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_20664c
	btst.l #$2,d1
	beq.s loc_2065f8
	neg.w d0
loc_20664c:
	cmpi.b #$2,$28(a0)
	beq.s loc_20665a
	bset.b #$1,$22(a1)
loc_20665a:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2065f8
loc_206664:
	tst.w $10(a1)
	bmi.s loc_2065f8
	btst.l #$0,d1
	beq.w loc_2065f8
	move.w #$f600,d0
	bra.w loc_2065ea

sub_20667a:
	tst.b ($ff1906).l
	bne.s loc_2066ae
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066ae
	cmpi.w #$50,d0
	bcc.s loc_2066ae
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2066ae
	cmpi.w #$50,d0
	bcc.s loc_2066ae
	moveq #$1,d0
	rts
loc_2066ae:
	moveq #$0,d0
	rts

sub_2066b2:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2066bc
	bsr.s sub_2066be
loc_2066bc:
	rts

sub_2066be:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	subi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2067a2
	cmpi.b #$80,d0
	beq.w loc_206728
	cmpi.b #$c0,d0
	beq.w loc_206764
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2067e0
	bne.s loc_206726
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2067e0
loc_206726:
	rts
loc_206728:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	bsr.w sub_2067e0
	bne.s loc_206762
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $16(a0),d0
	ext.w d0
	sub.w d0,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	bra.w sub_2067e0
loc_206762:
	rts
loc_206764:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2067e0
	bne.s loc_2067a0
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2067e0
loc_2067a0:
	rts
loc_2067a2:
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	subq.b #$6,d0
	ext.w d0
	sub.w d0,d2
	bsr.w sub_2067e0
	bne.s loc_2067de
	move.w $c(a0),d2
	move.w $8(a0),d3
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	bra.w sub_2067e0
loc_2067de:
	rts

sub_2067e0:
	jsr (sub_200ede).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_206824
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206808
	add.b ($ff156a).l,d1
loc_206808:
	add.w d1,d1
	move.w dat_206828(pc,d1.w),d1
	lea dat_206828(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_206818:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_20689c
	addq.w #$2,d1
	dbf d6,loc_206818
loc_206824:
	moveq #$0,d0
	rts
dat_206828:
	.incbin 26664, 116
loc_20689c:
	cmpi.b #$4,$24(a0)
	bne.s loc_2068ae
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2068ae:
	move.b #$0,($ff1950).l
	move.l d1,-(a7)
	move.w dat_2068f2(pc,d1.w),d0
	jsr dat_2068f2(pc,d0.w)
	move.l (a7)+,d1
	cmpi.w #$3,d1
	bcs.s loc_2068e2
	move.w #$be,d0
	cmpi.b #$4,d1
	beq.s loc_2068dc
	cmpi.b #$6,d1
	beq.s loc_2068dc
	move.w #$b5,d0
loc_2068dc:
	jsr (sub_20226c).l
loc_2068e2:
	tst.b ($ff1950).l
	beq.s loc_2068ee
	moveq #$0,d0
	rts
loc_2068ee:
	moveq #$1,d0
	rts
dat_2068f2:
	.incbin 26866, 266
loc_2069fc:
	bset.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	bclr.b #$5,$22(a0)
	clr.b $3c(a0)
	rts
loc_206a14:
	move.w #$700,d0
	tst.w $12(a0)
	bmi.s loc_206a20
	neg.w d0
loc_206a20:
	move.w d0,$12(a0)
	bra.s loc_2069fc
	.incbin 27174, 18
loc_206a38:
	andi.w #$fff0,d2
	addq.w #$8,d2
	andi.w #$fff0,d3
	addq.w #$8,d3
	move.w d3,d1
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
	bra.s loc_2069fc
	.incbin 27248, 28
	subi.w #$12,d1
	bmi.s loc_206abe
	move.w dat_206afe(pc,d1.w),d0
	lea dat_206afe(pc,d0.w),a1
	andi.w #$f,d2
	andi.w #$f,d3
	btst.l #$b,d4
	bne.s loc_206aae
	neg.b d3
	addi.b #$f,d3
loc_206aae:
	cmp.b $0(a1,d3.w),d2
	bcc.s loc_206abe
	move.b #$1,($ff1950).l
	rts
loc_206abe:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a08).l
	addi.b #$80,d0
	neg.b d0
	subi.b #$20,d0
	btst.l #$b,d4
	beq.s loc_206ae0
	addi.b #$40,d0
loc_206ae0:
	jsr (sub_200770).l
	muls.w #$f900,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w #$f900,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	bra.w loc_2069fc
dat_206afe:
	.incbin 27390, 90
	move.w d3,d1
	andi.w #$f,d1
	cmpi.b #$8,d1
	bcc.s loc_206b70
	btst.l #$b,d4
	bne.w loc_206a14
	bra.w loc_206a38
loc_206b70:
	btst.l #$b,d4
	bne.w loc_206a38
	bra.w loc_206a14
	.incbin 27516, 36
loc_206ba0:
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
	bne.s loc_206c5a
	move.b ($ff1593).l,($ff195b).l
loc_206c5a:
	tst.b ($ff1522).l
	bpl.s loc_206c70
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c70:
	rts

sub_206c72:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ba0
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
	bne.s loc_206d2c
	move.b ($ff1591).l,($ff195b).l
loc_206d2c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d4e
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d4e:
	tst.b ($ff1522).l
	bpl.s loc_206d64
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d64:
	rts

sub_206d66:
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
	bpl.s loc_206da2
	move.b d1,d0
	bpl.s loc_206d9c
	subq.b #$1,d0
loc_206d9c:
	addi.b #$20,d0
	bra.s loc_206dac
loc_206da2:
	move.b d1,d0
	bpl.s loc_206da8
	addq.b #$1,d0
loc_206da8:
	addi.b #$1f,d0
loc_206dac:
	andi.b #$c0,d0
	beq.w loc_206e7c
	cmpi.b #$80,d0
	beq.w loc_207018
	andi.b #$38,d1
	bne.s loc_206dc4
	addq.w #$8,d2
loc_206dc4:
	cmpi.b #$40,d0
	beq.w loc_2070ee
	bra.w loc_206f50

sub_206dd0:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_207076
	cmpi.b #$80,d0
	beq.w sub_206fa0
	cmpi.b #$c0,d0
	beq.w loc_206ee0

sub_206df8:
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
loc_206e5c:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e6a
	move.b ($f768).w,d3
	exg d0,d1
loc_206e6a:
	btst.l #$0,d3
	beq.s loc_206e72
	move.b d2,d3
loc_206e72:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e7c:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010c6).l
	move.b #$0,d2
loc_206e98:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ea4
	move.b d2,d3
loc_206ea4:
	rts

sub_206ea6:
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
	beq.s loc_206ede
	move.b #$0,d3
loc_206ede:
	rts
loc_206ee0:
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
	bra.w loc_206e5c

sub_206f48:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f50:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b #$c0,d2
	bra.w loc_206e98
	.incbin 28528, 48

sub_206fa0:
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
	bra.w loc_206e5c

sub_207010:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207018:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010c6).l
	move.b #$80,d2
	bra.w loc_206e98
	.incbin 28732, 58
loc_207076:
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
	bra.w loc_206e5c

sub_2070e6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2070ee:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201236).l
	move.b #$40,d2
	bra.w loc_206e98
	.incbin 28946, 48

sub_207142:
	btst.b #$6,$2c(a0)
	bne.s loc_207190
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20716e
	addi.w #$c,d3
	moveq #$a,d5
loc_20716e:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_20717c:
	tst.b $1(a1)
	bpl.s loc_207188
	move.b $20(a1),d0
	bne.s loc_207194
loc_207188:
	lea $40(a1),a1
	dbf d6,loc_20717c
loc_207190:
	moveq #$0,d0
	rts
loc_207194:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20751a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2071bc
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2071c2
	bra.w loc_207188
loc_2071bc:
	cmp.w d4,d0
	bhi.w loc_207188
loc_2071c2:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2071da
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2071e0
	bra.w loc_207188
loc_2071da:
	cmp.w d5,d0
	bhi.w loc_207188
loc_2071e0:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207254
	cmpi.b #$c0,d1
	beq.w loc_207434
	tst.b d1
	bmi.w sub_20731e
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207218
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207216
	addq.b #$2,$24(a1)
loc_207216:
	rts
loc_207218:
	tst.w $12(a0)
	bpl.s loc_207242
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207252
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207252
	addq.b #$4,$25(a1)
	rts
loc_207242:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207252
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207252:
	rts

sub_207254:
	tst.b ($ff1521).l
	bne.s loc_20726e
	tst.b ($ff151f).l
	bne.s loc_20726e
	cmpi.b #$2,$1c(a0)
	bne.w sub_20731e
loc_20726e:
	tst.b $21(a1)
	beq.s loc_207298
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207296
	bset.b #$7,$22(a1)
loc_207296:
	rts
loc_207298:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2072b0
	moveq #$6,d0
loc_2072b0:
	move.w d0,$3e(a1)
	move.w dat_207310(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2072ca
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2072ca:
	bsr.w sub_20a85c
	move.w #$96,d0
	jsr (sub_20226c).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207300
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207308
	neg.w $12(a0)
	rts
loc_207300:
	addi.w #$100,$12(a0)
	rts
loc_207308:
	subi.w #$100,$12(a0)
	rts
dat_207310:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20731e:
	tst.b ($ff1521).l
	bne.s loc_20732e
	tst.b ($ff151f).l
	beq.s loc_207332
loc_20732e:
	moveq #$ffffffff,d0
	rts
loc_207332:
	nop
	tst.w $30(a0)
	bne.s loc_20732e
	movea.l a1,a2

sub_20733c:
	tst.b ($ff151e).l
	bne.s loc_207368
	tst.w ($ff1512).l
	beq.w loc_2073d2
	jsr (sub_207a60).l
	bne.s loc_207368
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207368:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_20737e
	move.b #$0,($ff156f).l
loc_20737e:
	move.b #$4,$24(a0)
	bsr.w sub_205290
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2073ae
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2073ae:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2073bc
	neg.w $10(a0)
loc_2073bc:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2073d2:
	tst.w ($ff1588).l
	bne.w loc_207368

sub_2073dc:
	tst.w ($ff1906).l
	bne.s loc_207430
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205290
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
loc_207430:
	moveq #$ffffffff,d0
	rts
loc_207434:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$17,d1
	beq.w loc_2074c4
	cmpi.b #$1f,d1
	beq.w loc_2074c4
	cmpi.b #$23,d1
	beq.w loc_2074c4
	cmpi.b #$27,d1
	beq.w loc_2074c4
	cmpi.b #$3a,d1
	beq.w loc_20750c
	cmpi.b #$3b,d1
	beq.w loc_20750c
	tst.b ($f7aa).w
	beq.w loc_2074c2
	cmpi.b #$1,($f7aa).w
	beq.s loc_20748c
	cmpi.b #$4,($f7aa).w
	beq.s loc_2074ae
	cmpi.b #$5,($f7aa).w
	beq.s loc_2074bc
loc_20748c:
	cmpi.b #$3c,d1
	blt.s loc_2074c2
	cmpi.b #$3f,d1
	bgt.s loc_2074c2
	bsr.w sub_207254
	tst.b $20(a1)
	bne.s loc_2074a6
	addq.b #$3,$21(a1)
loc_2074a6:
	clr.b $20(a1)
	bra.w loc_2074c4
loc_2074ae:
	cmpi.b #$3f,d1
	beq.s loc_2074d0
	cmpi.b #$3e,d1
	beq.s loc_2074ca
	bra.s loc_2074c2
loc_2074bc:
	cmpi.b #$3d,d1
	beq.s loc_2074ca
loc_2074c2:
	rts
loc_2074c4:
	addq.b #$1,$21(a1)
	rts
loc_2074ca:
	bsr.w sub_20731e
	bra.s loc_2074c4
loc_2074d0:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20750a
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20750a
	neg.w $10(a0)
loc_20750a:
	rts
loc_20750c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207518
	addq.b #$1,$21(a1)
loc_207518:
	rts
dat_20751a:
	.incbin 29978, 126
loc_207598:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2075ae
	move.l #$4000,(dat_207728).l
	bra.s loc_2075ce
loc_2075ae:
	addi.l #$2000,(dat_207728).l
	cmpi.l #$80000,(dat_207728).l
	bls.s loc_2075ce
	move.l #$80000,(dat_207728).l
loc_2075ce:
	move.l (dat_207728).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2075e0
	sub.l d0,$c(a0)
loc_2075e0:
	btst.b #$1,($f604).w
	beq.s loc_2075ec
	add.l d0,$c(a0)
loc_2075ec:
	btst.b #$2,($f604).w
	beq.s loc_2075f8
	sub.l d0,$8(a0)
loc_2075f8:
	btst.b #$3,($f604).w
	beq.s loc_207604
	add.l d0,$8(a0)
loc_207604:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200ede).l
	move.w (a1),($ff194e).l
	lea (dat_20772c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207646
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207640
	move.b #$0,d1
loc_207640:
	move.b d1,($ff1904).l
loc_207646:
	btst.b #$7,($f605).w
	beq.s loc_207666
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207660
	add.b (a2),d1
loc_207660:
	move.b d1,($ff1904).l
loc_207666:
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
	beq.s loc_2076f2
	bsr.w sub_207a60
	bne.s loc_2076f2
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
loc_2076f2:
	btst.b #$4,($f605).w
	beq.s loc_207722
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207722:
	jmp (sub_203a30).l
dat_207728:
	dc.b $00,$00,$40,$00
dat_20772c:
	.incbin 30508, 290

sub_20784e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20785c:
	clr.l (a2)+
	dbf d0,loc_20785c
	rts

sub_207864:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207872(pc,d0.w),d0
	jmp dat_207872(pc,d0.w)
dat_207872:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207b12).l,a0
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
	bcc.s loc_2078b0
	moveq #$0,d6
loc_2078b0:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2078b8:
	cmp.w (a0),d6
	bls.s loc_2078ca
	tst.b $4(a0)
	bpl.s loc_2078c6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078c6:
	addq.w #$8,a0
	bra.s loc_2078b8
loc_2078ca:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2078ea
loc_2078d8:
	cmp.w (a0),d6
	bls.s loc_2078ea
	tst.b $4(a0)
	bpl.s loc_2078e6
	addq.b #$1,$1(a2)
loc_2078e6:
	addq.w #$8,a0
	bra.s loc_2078d8
loc_2078ea:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2079d4
	bge.s loc_20797a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207956
loc_207924:
	cmp.w -$8(a0),d6
	bge.s loc_207956
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20793a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20793a:
	bsr.w sub_2079f8
	bne.s loc_207944
	subq.w #$8,a0
	bra.s loc_207924
loc_207944:
	tst.b $4(a0)
	bpl.s loc_207954
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207954:
	addq.w #$8,a0
loc_207956:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207962:
	cmp.w -$8(a0),d6
	bgt.s loc_207974
	tst.b -$4(a0)
	bpl.s loc_207970
	subq.b #$1,(a2)
loc_207970:
	subq.w #$8,a0
	bra.s loc_207962
loc_207974:
	move.l a0,($f770).w
	rts
loc_20797a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20798e:
	cmp.w (a0),d6
	bls.s loc_2079b0
	tst.b $4(a0)
	bpl.s loc_20799c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20799c:
	bsr.w sub_2079f8
	beq.s loc_20798e
	tst.b $4(a0)
	bpl.s loc_2079b0
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079b0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2079d0
loc_2079be:
	cmp.w (a0),d6
	bls.s loc_2079d0
	tst.b $4(a0)
	bpl.s loc_2079cc
	addq.b #$1,$1(a2)
loc_2079cc:
	addq.w #$8,a0
	bra.s loc_2079be
loc_2079d0:
	move.l a0,($f774).w
loc_2079d4:
	rts

sub_2079d6:
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

sub_2079f8:
	bsr.s sub_2079d6
	beq.s loc_207a0a
	tst.b $4(a0)
	bpl.s loc_207a10
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a10
loc_207a0a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a10:
	bsr.w sub_207a60
	bne.s loc_207a5e
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
	bpl.s loc_207a40
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207a40:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207a52
	nop
	nop
	nop
	nop
loc_207a52:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207a5e:
	rts

sub_207a60:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207a68:
	tst.b (a1)
	beq.s loc_207a74
	lea $40(a1),a1
	dbf d0,loc_207a68
loc_207a74:
	rts

sub_207a76:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207a94
loc_207a88:
	tst.b (a1)
	beq.s loc_207a94
	lea $40(a1),a1
	dbf d0,loc_207a88
loc_207a94:
	rts
loc_207a96:
	move.w $8(a0),d0
loc_207a9a:
	tst.b $1(a0)
	bmi.s loc_207b04
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b04
loc_207ab8:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207afa
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207af2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207aea
	moveq #$0,d1
	bra.s loc_207af2
loc_207aea:
	cmpi.w #$3,d1
	bcs.s loc_207af2
	moveq #$2,d1
loc_207af2:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207afa:
	jsr (sub_203adc).l
	moveq #$1,d0
	rts
loc_207b04:
	btst.b #$7,($ff152e).l
	bne.s loc_207ab8
	moveq #$0,d0
	rts
dat_207b12:
	.incbin 31506, 4162

sub_208b54:
	btst.b #$3,$22(a0)
	beq.s loc_208bc4
	btst.b #$3,$22(a1)
	beq.s loc_208bc4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208bc4
	tst.b $2a(a1)
	beq.s loc_208b86
	move.w #$ab,d0
	jsr (sub_20226c).l
loc_208b86:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208bb2
	cmpi.b #$17,$1c(a1)
	beq.s loc_208bb2
	bclr.b #$0,$2c(a1)
loc_208bb2:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208bc4
	bclr.b #$1,$22(a1)
loc_208bc4:
	rts

sub_208bc6:
	cmpi.b #$4,$24(a1)
	bne.s loc_208bd8
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208bd8:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208c38
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208bfa
	bclr.b #$3,$22(a0)
	bra.w sub_208b54
loc_208bfa:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208c38
	tst.b ($ff195b).l
	beq.s loc_208c22
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208c32
loc_208c22:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208c32:
	move.b #$0,$1c(a1)
loc_208c38:
	bset.b #$3,$22(a1)
	beq.s loc_208c5a
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208c92
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208c5a:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208c86
	cmpi.b #$2,$24(a0)
	beq.s loc_208c8c
loc_208c86:
	move.w $10(a1),$14(a1)
loc_208c8c:
	bclr.b #$1,$22(a1)
loc_208c92:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208c9c:
	move.b #$1,$25(a0)

sub_208ca2:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208f56
	btst.b #$6,$2c(a1)
	bne.w loc_208f56
	cmpi.b #$6,$24(a1)
	bcc.w loc_208f56
	tst.b $0(a1)
	beq.w loc_208f56
	tst.b $1(a0)
	bpl.w loc_208f56
	tst.b ($ff1906).l
	bne.w loc_208f56
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208f56
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208f56
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d10
	btst.b #$3,$22(a0)
	bne.s loc_208d22
	bra.w loc_208f56
loc_208d10:
	cmpi.b #$1,$25(a0)
	bne.s loc_208d22
	tst.w $12(a1)
	beq.s loc_208d22
	bmi.w loc_208f56
loc_208d22:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208f56
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208f56
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208d58
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208d58:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208d66
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208d66:
	cmp.w d4,d5
	bcs.w loc_208dfa
	cmpi.b #$1,$25(a0)
	beq.w loc_208f56
	cmpi.b #$a,$0(a0)
	bne.s loc_208d88
	btst.b #$1,$22(a1)
	bne.w loc_208f56
loc_208d88:
	cmpi.b #$4,d5
	bls.w loc_208f56
	bsr.w sub_208fa6
	move.l d0,-(a7)
	bsr.w sub_208b54
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208db2
	tst.w $10(a1)
	beq.s loc_208de2
	bpl.s loc_208dba
	bra.s loc_208de2
loc_208db2:
	tst.w $10(a1)
	beq.s loc_208de2
	bpl.s loc_208de2
loc_208dba:
	bsr.w sub_208f66
	btst.b #$1,$22(a1)
	bne.s loc_208dd8
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208dd8:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208de2:
	bsr.w sub_20901c
	bsr.w sub_208f66
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208dfa:
	cmpi.b #$19,$0(a0)
	bne.s loc_208e0c
	btst.b #$2,$22(a1)
	bne.w loc_208f56
loc_208e0c:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208e22
	bmi.w loc_208ef2
loc_208e22:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208e34
	tst.w $12(a1)
	beq.s loc_208e34
	bmi.w loc_208f56
loc_208e34:
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
	beq.s loc_208e80
	bpl.s loc_208e60
	neg.b d0
loc_208e60:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d66).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208e80
	tst.w $10(a0)
	bpl.s loc_208e7c
	neg.w d1
loc_208e7c:
	add.w d1,$8(a1)
loc_208e80:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208eea
	tst.w $12(a0)
	bmi.s loc_208ebe
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206df8).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ebe
	add.w d1,$c(a1)
	bra.w loc_208f56
loc_208ebe:
	tst.w $12(a0)
	bpl.s loc_208eea
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207010).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208eea
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073dc).l
	movem.l (a7)+,a0-a1
	bra.s loc_208f56
loc_208eea:
	bsr.w sub_208bc6
	moveq #$1,d0
	rts
loc_208ef2:
	cmpi.b #$1,$25(a0)
	beq.s loc_208f56
	cmpi.b #$9,$0(a0)
	beq.s loc_208f56
	cmpi.b #$a,$0(a0)
	bne.s loc_208f1c
	cmpi.b #$2,$25(a0)
	beq.s loc_208f3c
	btst.b #$1,$1(a0)
	bne.s loc_208f3c
	bra.s loc_208f56
loc_208f1c:
	btst.b #$1,$22(a1)
	bne.s loc_208f3c
	tst.w $12(a0)
	beq.s loc_208f3c
	bmi.s loc_208f3c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073dc).l
	movem.l (a7)+,a0-a1
loc_208f3c:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_20901c
	bsr.w sub_208b54
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208f56:
	bsr.w sub_20901c
	bsr.w sub_208b54
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208f66:
	tst.w $10(a0)
	beq.s loc_208fa4
	cmpi.b #$a,$0(a0)
	beq.s loc_208fa4
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208f80
	neg.b d0
loc_208f80:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d66).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208fa4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073dc).l
	movem.l (a7)+,a0-a1
loc_208fa4:
	rts

sub_208fa6:
	cmpi.b #$a,$0(a0)
	bne.s loc_208fb6
	move.b #$0,$20(a1)
	rts
loc_208fb6:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20900a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_20901a
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208fd8
	tst.w $10(a2)
	beq.s loc_20901a
loc_208fd8:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208fea
	cmp.w $8(a2),d1
	bcs.s loc_20901a
	bra.s loc_208ff0
loc_208fea:
	cmp.w $8(a2),d1
	bcc.s loc_20901a
loc_208ff0:
	cmpi.b #$15,$0(a0)
	beq.s loc_20901a
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2073dc).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_20900a:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_20901a:
	rts

sub_20901c:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209036
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_209036
	move.b #$0,$20(a1)
loc_209036:
	rts
	.incbin 36920, 374
loc_2091ae:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2091bc(pc,d0.w),d0
	jmp dat_2091bc(pc,d0.w)
dat_2091bc:
	.incbin 37308, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2091ae
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209212
	tst.b $1(a0)
	bpl.s loc_20921a
loc_209212:
	move.w dat_20926c(pc,d0.w),d1
	jsr dat_20926c(pc,d1.w)
loc_20921a:
	bsr.w sub_203a30
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20924c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20924c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203adc
	rts
dat_20926c:
	.incbin 37484, 26
	addq.b #$2,$24(a0)
	move.l #$2095ee,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2092dc
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2095f4,$4(a0)
	bra.s loc_20931e
loc_2092dc:
	btst.l #$3,d0
	beq.s loc_20930a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20963e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bea8).l
	move.l (a7)+,d0
	bra.s loc_20931e
loc_20930a:
	btst.b #$1,$1(a0)
	beq.s loc_20931e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20931e:
	btst.l #$1,d0
	beq.s loc_20932a
	bset.b #$5,$2(a0)
loc_20932a:
	andi.w #$2,d0
	move.w dat_209336(pc,d0.w),$30(a0)
	rts
dat_209336:
	dc.b $f0,$00,$f6,$00

sub_20933a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ca2).l
	tst.b $1(a0)
	bpl.s loc_209356
	lea ($d000).w,a1
	bsr.s sub_20933a
	bne.s loc_209358
loc_209356:
	rts
loc_209358:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20226c).l
	lea (dat_2095e0).l,a1
	bra.w sub_205c3a
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2093ac:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ca2).l
	tst.b $1(a0)
	bpl.s loc_2093ce
	lea ($d000).w,a1
	bsr.s sub_2093ac
	btst.b #$5,$22(a0)
	bne.s loc_2093d0
loc_2093ce:
	rts
loc_2093d0:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2093fe
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2093fe:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209418
	move.b #$0,$1c(a1)
loc_209418:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_20226c).l
	lea (dat_2095e0).l,a1
	bra.w sub_205c3a
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 37966, 106
	tst.b $1(a0)
	bpl.s loc_2094d0
	lea ($d000).w,a1
	bsr.w sub_20933a
	bne.s loc_2094d2
	btst.b #$5,$22(a0)
	bne.s loc_2094d2
loc_2094d0:
	rts
loc_2094d2:
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
	beq.s loc_209510
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_209510:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_209532
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_209532:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_20226c).l
	lea (dat_2095e0).l,a1
	bra.w sub_205c3a
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38262, 106
dat_2095e0:
	.incbin 38368, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2096da(pc,d0.w),d1
	jmp dat_2096da(pc,d1.w)
dat_2096da:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2096e4:
	.incbin 38628, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20973c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209734
	moveq #$0,d1
	bra.s loc_20973c
loc_209734:
	cmpi.w #$3,d1
	bcs.s loc_20973c
	moveq #$2,d1
loc_20973c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209758
	moveq #$6,d1
loc_209758:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2096e4).l,a1
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
	beq.s loc_2097a8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2097a0
	moveq #$0,d0
	bra.s loc_2097a8
loc_2097a0:
	cmpi.w #$3,d0
	bcs.s loc_2097a8
	moveq #$2,d0
loc_2097a8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209876
	dbf d0,loc_2097a8
	bclr.b #$7,(a2)
	bra.s loc_2097fe
loc_2097ba:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2097e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2097de
	moveq #$0,d0
	bra.s loc_2097e6
loc_2097de:
	cmpi.w #$3,d0
	bcs.s loc_2097e6
	moveq #$2,d0
loc_2097e6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209876
	dbf d0,loc_2097e6
	bclr.b #$7,(a2)
	bsr.w sub_207a76
	bne.w loc_209882
loc_2097fe:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209b48,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209854
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209854
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209854:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209876:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2097ba
loc_209882:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2098a8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2098a0
	moveq #$0,d0
	bra.s loc_2098a8
loc_2098a0:
	cmpi.w #$3,d0
	bcs.s loc_2098a8
	moveq #$2,d0
loc_2098a8:
	lea $1(a2),a3
loc_2098ac:
	btst.b #$0,-(a3)
	bne.w sub_203adc
	dbf d0,loc_2098ac
	tst.b $1(a0)
	bmi.s loc_2098dc
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209956
loc_2098dc:
	tst.w ($ff190e).l
	bne.s loc_2098ec
	move.b ($ff1913).l,$1a(a0)
loc_2098ec:
	bra.w sub_203a30
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20995a
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20993c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209934
	moveq #$0,d1
	bra.s loc_20993c
loc_209934:
	cmpi.w #$3,d1
	bcs.s loc_20993c
	moveq #$2,d1
loc_20993c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209b40).l,a1
	bsr.w sub_205c3a
	bra.w sub_203a30
loc_209956:
	bra.w sub_203adc

sub_20995a:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2099aa
	bset.b #$1,($ff150d).l
	beq.s loc_209994
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2099aa
	bset.b #$2,($ff150d).l
	bne.s loc_2099aa
loc_209994:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205bfa).l
loc_2099aa:
	jmp (sub_20226c).l
	.incbin 39344, 400
dat_209b40:
	.incbin 39744, 852
loc_209e94:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ec2(pc,d0.w),d0
	jsr dat_209ec2(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209ec0
	cmpi.w #$5a,($f786).w
	bcs.s loc_209eba
	btst.b #$0,($ff1505).l
	bne.s loc_209ec0
loc_209eba:
	jmp (sub_203a30).l
loc_209ec0:
	rts
dat_209ec2:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a49c,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209ef6
	move.b #$13,$1a(a0)
loc_209ef6:
	rts
loc_209ef8:
	tst.b ($ff0f01).l
	beq.s loc_209f06
	jmp (sub_203adc).l
loc_209f06:
	cmpi.b #$a,$28(a0)
	beq.w loc_209e94
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f2a(pc,d0.w),d0
	jsr dat_209f2a(pc,d0.w)
	jsr (sub_203a30).l
	jmp (loc_207a96).l
dat_209f2a:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a49c,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209f78
	tst.b $29(a0)
	bne.s loc_209f78
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209f78:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a044
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209fa0
	addq.b #$2,$1a(a0)
loc_209fa0:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209fb4
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209fb4:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a01a
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209fe6
	tst.b $29(a0)
	beq.s loc_209fde
	tst.b ($ff1956).l
	beq.s loc_20a01a
	bra.s loc_209fe6
loc_209fde:
	tst.b ($ff1956).l
	bne.s loc_20a01a
loc_209fe6:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a044
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a014
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a014:
	jsr (sub_205bfa).l
loc_20a01a:
	rts
	.incbin 40988, 40

sub_20a044:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a07c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a074
	moveq #$0,d1
	bra.s loc_20a07c
loc_20a074:
	cmpi.w #$3,d1
	bcs.s loc_20a07c
	moveq #$2,d1
loc_20a07c:
	add.w d1,d0
	rts

sub_20a080:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a0a2
	tst.b ($ff1956).l
	beq.s loc_20a09a
	tst.b $29(a0)
	bne.s loc_20a0a2
	rts
loc_20a09a:
	tst.b $29(a0)
	beq.s loc_20a0a2
	rts
loc_20a0a2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ca2).l
	tst.b $28(a0)
	bne.s loc_20a0c4
	tst.b ($ff0f01).l
	beq.s loc_20a0c4
	jmp (loc_207a96).l
loc_20a0c4:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209ef8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a0dc(pc,d0.w),d1
	jmp dat_20a0dc(pc,d1.w)
dat_20a0dc:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a49c,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a126
	tst.b $29(a0)
	bne.s loc_20a126
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a126:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a044
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a152
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a152:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a1ac
	move.b $25(a0),d0
	beq.s loc_20a18c
	bsr.w sub_203978
	jsr (sub_206ea6).l
	tst.w d1
	bpl.w loc_20a19a
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a19a
loc_20a18c:
	tst.b $1(a0)
	bpl.s loc_20a19a
	lea ($d000).w,a1
	bsr.w sub_20a080
loc_20a19a:
	tst.w ($ff190e).l
	bne.s loc_20a1ac
	lea (dat_20a414).l,a1
	bsr.w sub_205c3a
loc_20a1ac:
	bsr.w sub_203a30
	jmp (loc_207a96).l
	move.w #$96,d0
	jsr (sub_20226c).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207a60
	bne.s loc_20a1ee
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a1ee:
	bsr.w sub_207a60
	bne.s loc_20a218
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a218:
	bsr.w sub_20a044
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203a30
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a23e(pc,d0.w),d1
	jsr dat_20a23e(pc,d1.w)
	bra.w sub_203a30
dat_20a23e:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a25a
	andi.b #$7f,$2(a0)
loc_20a25a:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a49c,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a2a2
	bsr.w sub_2039da
	addi.w #$18,$12(a0)
	rts
loc_20a2a2:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a2c8
loc_20a2b2:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205bfa).l
loc_20a2c8:
	cmpi.b #$1,d0
	bne.s loc_20a314
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a30a
	bset.b #$1,($ff150d).l
	beq.w loc_20a2b2
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a30a
	bset.b #$2,($ff150d).l
	beq.w loc_20a2b2
loc_20a30a:
	move.w #$95,d0
	jmp (sub_20226c).l
loc_20a314:
	cmpi.b #$2,d0
	bne.s loc_20a332

sub_20a31a:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_20226c).l
loc_20a332:
	cmpi.b #$3,d0
	bne.s loc_20a394

sub_20a338:
	move.b #$1,($ff151f).l
	move.w #$4b0,($d032).w
	move.b #$3,($d200).w
	move.b #$1,($d21c).w
	move.b #$3,($d240).w
	move.b #$2,($d25c).w
	move.b #$3,($d280).w
	move.b #$3,($d29c).w
	move.b #$3,($d2c0).w
	move.b #$4,($d2dc).w
	tst.b ($ff152e).l
	bne.s loc_20a388
	move.w #$82,d0
	jsr (sub_205bfa).l
loc_20a388:
	move.w #$6d,d0
	jmp (sub_205bfa).l
	dc.b $4e,$75
loc_20a394:
	cmpi.b #$4,d0
	bne.s loc_20a3d6
loc_20a39a:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a3cc
	move.w #$82,d0
	jsr (sub_205bfa).l
loc_20a3cc:
	move.w #$6c,d0
	jmp (sub_205bfa).l
loc_20a3d6:
	cmpi.b #$5,d0
	bne.s loc_20a3e6
	move.w #$12c,($ff190e).l
	rts
loc_20a3e6:
	cmpi.b #$6,d0
	bne.s loc_20a400
	move.w #$9d,d0
	jsr (sub_20226c).l
	move.b #$1,($ff156f).l
	rts
loc_20a400:
	bsr.w sub_20a31a
	bsr.w sub_20a338
	bra.s loc_20a39a
	subq.w #$1,$1e(a0)
	bmi.w sub_203adc
	rts
dat_20a414:
	.incbin 42004, 586
loc_20a65e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a672(pc,d0.w),d0
	jsr dat_20a672(pc,d0.w)
	jmp (sub_203a30).l
dat_20a672:
	.incbin 42610, 146
	tst.b $28(a0)
	bmi.w loc_20a65e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a71a(pc,d0.w),d0
	jmp dat_20a71a(pc,d0.w)
dat_20a71a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a7b4,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a74a
	move.b #$3,$1a(a0)
	bra.s loc_20a76a
loc_20a74a:
	tst.w ($ff1588).l
	beq.s loc_20a758
	move.b #$2,$1a(a0)
loc_20a758:
	tst.b $28(a0)
	beq.s loc_20a76a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a76a:
	tst.b $28(a0)
	bne.s loc_20a7ae
	tst.b $29(a0)
	beq.s loc_20a79a
	tst.w ($ff1512).l
	beq.s loc_20a786
	bclr.b #$5,$2(a0)
	bra.s loc_20a7ae
loc_20a786:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a7ae
	eori.b #$20,$2(a0)
	bra.s loc_20a7ae
loc_20a79a:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a7ae
	move.b #$2,$1a(a0)
loc_20a7ae:
	jmp (sub_203a30).l
	.incbin 42932, 168

sub_20a85c:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a878
	move.l d1,(a3)
loc_20a878:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a8a2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205bfa).l
loc_20a8a2:
	rts
loc_20a8a4:
	tst.w ($ff1588).l
	beq.s loc_20a8fa
	bsr.w sub_20aaf6
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
	lea (dat_20ac56).l,a2
	moveq #$2,d6
	bsr.w sub_20acae
	bra.w loc_20a954
loc_20a8fa:
	tst.b ($ff1511).l
	beq.s loc_20a91e
	bpl.s loc_20a908
	bsr.w sub_20aaa0
loc_20a908:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ab90
loc_20a91e:
	tst.b ($ff150f).l
	beq.s loc_20a954
	bpl.s loc_20a92c
	bsr.w sub_20aa8c
loc_20a92c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a950
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a950:
	bsr.w sub_20ab86
loc_20a954:
	tst.w ($ff1588).l
	bne.w loc_20aa00
	tst.b ($ff1510).l
	beq.w loc_20aa00
	tst.w ($f63a).w
	bne.w loc_20aa00
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20aa5e
	tst.b ($f7cc).w
	bne.s loc_20a9aa
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a9aa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a9aa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a9aa
	move.b #$9,(a1)
loc_20a9aa:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ac9c
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20aca6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a9fc
	move.w #$63,d1
loc_20a9fc:
	bsr.w sub_20aca6
loc_20aa00:
	tst.b ($ff150e).l
	beq.s loc_20aa12
	clr.b ($ff150e).l
	bsr.w sub_20ac7c
loc_20aa12:
	tst.b ($f7d6).w
	beq.s loc_20aa5c
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aa32
	move.l #$6d400001,d0
loc_20aa32:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ab14
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aa52
	move.l #$6e800001,d0
loc_20aa52:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ab14
loc_20aa5c:
	rts
loc_20aa5e:
	btst.b #$7,($ff152e).l
	bne.s loc_20aa8a
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2073dc
	move.b #$1,($ff150c).l
loc_20aa8a:
	rts

sub_20aa8c:
	move.l #$73600002,($c00004).l
	lea dat_20aaf2(pc),a2
	move.w #$2,d2
	bra.s loc_20aabc

sub_20aaa0:
	lea ($c00000).l,a6
	bsr.w sub_20ac7c
	move.l #$70600002,($c00004).l
	lea dat_20aaea(pc),a2
	move.w #$6,d2
loc_20aabc:
	lea (dat_2330bc).l,a1
loc_20aac2:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20aade
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20aad2:
	move.l (a3)+,(a6)
	dbf d1,loc_20aad2
loc_20aad8:
	dbf d2,loc_20aac2
	rts
loc_20aade:
	move.l #$0,(a6)
	dbf d1,loc_20aade
	bra.s loc_20aad8
dat_20aaea:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20aaf2:
	dc.b $ff,$ff,$00,$00

sub_20aaf6:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ac72
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ac72

sub_20ab14:
	lea (dat_20ac4e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ab24:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab28:
	sub.l d3,d1
	bcs.s loc_20ab30
	addq.w #$1,d2
	bra.s loc_20ab28
loc_20ab30:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ab3a
	move.w #$1,d4
loc_20ab3a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ab46
	tst.w d6
	bne.s loc_20ab78
loc_20ab46:
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
loc_20ab6c:
	addi.l #$400000,d0
	dbf d6,loc_20ab24
	rts
loc_20ab78:
	moveq #$f,d5
loc_20ab7a:
	move.l #$0,(a6)
	dbf d5,loc_20ab7a
	bra.s loc_20ab6c

sub_20ab86:
	lea (dat_20ac56).l,a2
	moveq #$2,d6
	bra.s loc_20ab98

sub_20ab90:
	lea (dat_20ac4a).l,a2
	moveq #$5,d6
loc_20ab98:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20aba0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aba4:
	sub.l d3,d1
	bcs.s loc_20abac
	addq.w #$1,d2
	bra.s loc_20aba4
loc_20abac:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abb6
	move.w #$1,d4
loc_20abb6:
	tst.w d4
	beq.s loc_20abe4
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
loc_20abe4:
	addi.l #$400000,d0
	dbf d6,loc_20aba0
	rts
	.incbin 44016, 32
loc_20ac10:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac14:
	sub.l d3,d1
	bcs.s loc_20ac1c
	addq.w #$1,d2
	bra.s loc_20ac14
loc_20ac1c:
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
	dbf d6,loc_20ac10
	rts
dat_20ac4a:
	dc.b $00,$01,$86,$a0
dat_20ac4e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20ac56:
	dc.b $00,$00,$00,$64
dat_20ac5a:
	dc.b $00,$00,$00,$0a
dat_20ac5e:
	dc.b $00,$00,$00,$01
dat_20ac62:
	.incbin 44130, 16

sub_20ac72:
	moveq #$3,d6
	lea (dat_20ac62).l,a2
	bra.s sub_20acae

sub_20ac7c:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ac92
	moveq #$9,d1
loc_20ac92:
	lea (dat_20ac5e).l,a2
	moveq #$0,d6
	bra.s sub_20acae

sub_20ac9c:
	lea (dat_20ac5e).l,a2
	moveq #$0,d6
	bra.s sub_20acae

sub_20aca6:
	lea (dat_20ac5a).l,a2
	moveq #$1,d6

sub_20acae:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20acb6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20acba:
	sub.l d3,d1
	bcs.s loc_20acc2
	addq.w #$1,d2
	bra.s loc_20acba
loc_20acc2:
	add.l d3,d1
	tst.w d2
	beq.s loc_20accc
	move.w #$1,d4
loc_20accc:
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
	dbf d6,loc_20acb6
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad10(pc,d0.w),d1
	jmp dat_20ad10(pc,d1.w)
dat_20ad10:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.l #$20b00e,$4(a0)
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
	beq.s loc_20ad66
	addi.w #$40,d0
loc_20ad66:
	btst.l #$0,d6
	beq.s loc_20ad70
	addi.w #$20,d0
loc_20ad70:
	move.w d0,$30(a0)
	lsr.w #$1,d0
	move.w d0,$2e(a0)
	beq.s loc_20ad8e
	move.l #$10000,$2a(a0)
	btst.l #$6,d6
	bne.s loc_20ad8e
	neg.l $2a(a0)
loc_20ad8e:
	move.l $2a(a0),d0
	beq.s loc_20adb6
	lea $8(a0),a1
	tst.w $28(a0)
	bmi.s loc_20ada2
	lea $c(a0),a1
loc_20ada2:
	add.l d0,(a1)
	addi.w #$ffff,$2e(a0)
	bne.s loc_20adb6
	move.w $30(a0),$2e(a0)
	neg.l $2a(a0)
loc_20adb6:
	tst.b $21(a0)
	beq.w loc_20ae52
	tst.w $34(a0)
	beq.s loc_20add4
	subq.w #$1,$34(a0)
	moveq #$a,d0
	bsr.w sub_20a85c
	moveq #$0,d1
	bsr.w sub_205f82
loc_20add4:
	tst.b $1(a0)
	bpl.s loc_20ade4
	move.w #$7f,d0
	jsr (sub_205bfa).l
loc_20ade4:
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
	beq.s loc_20ae52
	cmpi.b #$8a,$2(a2,d0.w)
	bcc.s loc_20ae52
	addq.b #$1,$2(a2,d0.w)
loc_20ae52:
	lea (dat_20affe).l,a1
	bsr.w sub_205c3a
	jsr (sub_203a30).l
	move.w $32(a0),d0
	jmp (loc_207a9a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ae7a(pc,d0.w),d0
	jmp dat_20ae7a(pc,d0.w)
dat_20ae7a:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	move.l #$20b04e,$4(a0)
	move.w #$49d,$2(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	tst.b $1c(a0)
	bne.s loc_20aeb6
	lea ($d000).w,a1
	bsr.w sub_20aecc
loc_20aeb6:
	lea (dat_20b040).l,a1
	bsr.w sub_205c3a
	jsr (sub_203a30).l
	jmp (loc_207a96).l

sub_20aecc:
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20af74
	move.w $8(a1),d0
	moveq #$0,d1
	move.b $19(a0),d1
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20af74
	add.w d1,d1
	cmp.w d1,d0
	bcc.w loc_20af74
	move.w $8(a1),d0
	moveq #$0,d3
	move.b $19(a0),d3
	move.w $8(a0),d2
	sub.w d3,d2
	sub.w d2,d0
	btst.b #$0,$22(a0)
	beq.s loc_20af14
	move.w #$40,d2
	sub.w d0,d2
	move.w d2,d0
loc_20af14:
	lea (dat_20af7e).l,a3
	tst.w $12(a1)
	bpl.s loc_20af26
	lea (dat_20afbe).l,a3
loc_20af26:
	move.b $0(a3,d0.w),d0
	ext.w d0
	add.w $c(a0),d0
	move.w d0,d1
	moveq #$0,d3
	move.b $16(a1),d3
	tst.w $12(a1)
	bpl.s loc_20af40
	neg.w d3
loc_20af40:
	sub.w d3,d1
	add.w $c(a1),d3
	sub.w d0,d3
	addq.w #$8,d3
	bmi.s loc_20af74
	cmpi.w #$10,d3
	bcc.s loc_20af74
	move.w d1,$c(a1)
	tst.w $12(a1)
	bmi.s loc_20af64
	jsr (sub_208bc6).l
	bra.s loc_20af70
loc_20af64:
	move.w #$0,$12(a1)
	move.w $10(a1),$14(a1)
loc_20af70:
	moveq #$1,d0
	rts
loc_20af74:
	jsr (sub_208b54).l
	moveq #$0,d0
	rts
dat_20af7e:
	.incbin 44926, 64
dat_20afbe:
	.incbin 44990, 64
dat_20affe:
	.incbin 45054, 66
dat_20b040:
	.incbin 45120, 588
	move.b $28(a0),d0
	subq.b #$1,d0
	bmi.s loc_20b298
	bra.w loc_20b4b4
loc_20b298:
	jsr (sub_20e822).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2b8(pc,d0.w),d0
	jsr dat_20b2b8(pc,d0.w)
	jsr (sub_203a30).l
	jmp (loc_207a96).l
dat_20b2b8:
	dc.b $00,$0a,$00,$4e,$00,$62,$00,$90
	dc.b $00,$f0
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$0,$1a(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w #$a421,$2(a0)
	move.w #$3d,$2a(a0)
	lea dat_20b414(pc),a1
	tst.b $28(a0)
	bmi.s loc_20b302
	lea dat_20b456(pc),a1
	st $3f(a0)
loc_20b302:
	move.l a1,$4(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b318
	addq.b #$2,$24(a0)
	move.w #$3d,$2a(a0)
loc_20b318:
	rts
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b336
	move.b #$25,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.w #$33,$2a(a0)
loc_20b336:
	lea (dat_20b400).l,a1
	jsr (sub_205c3a).l
	jmp (sub_203a30).l
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b3a6
	move.b #$26,$20(a0)
	addq.b #$2,$24(a0)
	addq.b #$1,$1c(a0)
	move.l #$8000,$30(a0)
	move.w #$20,$2a(a0)
	move.l #$ffff8000,$2c(a0)
	tst.b $28(a0)
	bpl.s loc_20b388
	move.w #$30,$2a(a0)
	move.l #$ffffc000,$2c(a0)
loc_20b388:
	move.w $8(a0),d0
	lea ($d000).w,a1
	sub.w $8(a1),d0
	bpl.s loc_20b3a6
	neg.l $2c(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20b3a6:
	bra.s loc_20b336
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20b3fc
	move.w #$41,$2a(a0)
	tst.b $28(a0)
	bpl.s loc_20b3d2
	move.w #$61,$2a(a0)
loc_20b3d2:
	neg.l $30(a0)
	tst.b $3f(a0)
	beq.s loc_20b3fc
	jsr (sub_207a60).l
	bne.s loc_20b3fc
	move.b $0(a0),$0(a1)
	move.l $8(a0),$8(a1)
	move.l $c(a0),$c(a1)
	move.b #$1,$28(a1)
loc_20b3fc:
	bra.w loc_20b336
dat_20b400:
	.incbin 46080, 20
dat_20b414:
	.incbin 46100, 66
dat_20b456:
	.incbin 46166, 94
loc_20b4b4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b4c8(pc,d0.w),d0
	jsr dat_20b4c8(pc,d0.w)
	jmp (sub_203a30).l
dat_20b4c8:
	.incbin 46280, 108
	tst.b $28(a0)
	bmi.w loc_20b540
	bra.w loc_20b80e
loc_20b540:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b55a(pc,d0.w),d0
	jsr dat_20b55a(pc,d0.w)
	jsr (sub_203a30).l
	jmp (loc_207a96).l
dat_20b55a:
	.incbin 46426, 22
	cmpi.b #$2,($ff152e).l
	bne.w loc_20b58c
	tst.b ($ff156a).l
	beq.w loc_20b58c
	jmp (sub_203adc).l
loc_20b58c:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$0,$18(a0)
	move.w #$3af,$2(a0)
	move.l #$20b7e4,$4(a0)
	move.w #$7,$30(a0)
	tst.w ($ff1906).l
	bne.w loc_20b5ce
	lea ($d000).w,a6
	lea $3e(a0),a5
	bsr.w sub_20b5d0
	tst.b $3e(a0)
	bne.w loc_20b654
loc_20b5ce:
	rts

sub_20b5d0:
	tst.w $12(a6)
	bmi.w loc_20b652
	cmpi.b #$4,$24(a6)
	beq.w loc_20b652
	cmpi.b #$6,$24(a6)
	beq.w loc_20b652
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffe8,d0
	subi.w #$10,d0
	bcc.w loc_20b652
	move.w $8(a6),d0
	sub.w $8(a0),d0
	subi.w #$ffe8,d0
	subi.w #$30,d0
	bcc.w loc_20b652
	st (a5)
	bset.b #$0,$2c(a6)
	bset.b #$2,$22(a6)
	move.b #$e,$16(a6)
	move.b #$7,$17(a6)
	move.b #$2,$1c(a6)
	move.w #$0,$10(a6)
	move.w #$f800,$12(a6)
	move.w $8(a0),$8(a6)
	move.w $c(a0),d0
	addi.w #$fff0,d0
	move.w d0,$c(a6)
loc_20b652:
	rts
loc_20b654:
	addq.b #$2,$24(a0)
	move.w #$8,$2a(a0)
	move.b #$1,$1a(a0)
	move.w #$d7,d0
	jmp (sub_20226c).l
	.incbin 46702, 416
loc_20b80e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b81c(pc,d0.w),d0
	jmp dat_20b81c(pc,d0.w)
dat_20b81c:
	.incbin 47132, 22
	move.b #$18,$19(a0)
	move.b #$8,$16(a0)
	move.w #$43af,$2(a0)
	move.l #$20b87c,$4(a0)
	movea.w $2e(a0),a1
	cmpi.b #$2f,$0(a1)
	beq.w loc_20b860
	jmp (sub_203adc).l
loc_20b860:
	lea dat_20b876(pc),a1
	jsr (sub_205c3a).l
	jmp (sub_203a30).l
	dc.b $4e,$f9,$00,$20,$3a,$dc
dat_20b876:
	.incbin 47222, 22
	move.b $28(a0),d0
	addi.b #$ff,d0
	bmi.s loc_20b89a
	bra.w loc_20bb98
loc_20b89a:
	jsr (sub_20e822).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b8c4(pc,d0.w),d0
	jsr dat_20b8c4(pc,d0.w)
	lea dat_20baac(pc),a1
	jsr (sub_205c3a).l
	jsr (sub_203a30).l
	jmp (loc_207a96).l
dat_20b8c4:
	dc.b $00,$0c,$00,$4a,$00,$84,$00,$d4
	dc.b $01,$68,$01,$72
	addq.b #$2,$24(a0)
	ori.b #$84,$1(a0)
	move.b #$1,$18(a0)
	move.b #$6,$20(a0)
	move.b #$e,$19(a0)
	move.b #$e,$16(a0)
	move.w #$a46a,$2(a0)
	lea dat_20bab4(pc),a1
	tst.b $28(a0)
	bmi.s loc_20b90a
	lea dat_20bb26(pc),a1
	st $3f(a0)
loc_20b90a:
	move.l a1,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206ea6).l
	subq.w #$8,d1
	bgt.s loc_20b946
	sub.w d1,$c(a0)
	move.l $c(a0),$32(a0)
	move.l #$3000,$2e(a0)
	move.w #$8,$36(a0)
	addq.b #$2,$24(a0)
	tst.l $2a(a0)
	beq.s loc_20b946
	addq.b #$2,$24(a0)
loc_20b946:
	rts
	bsr.w sub_20ba68
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b996
	move.w $8(a0),d0
	sub.w $8(a1),d0
	move.w d0,d1
	subi.w #$ffb0,d0
	subi.w #$a0,d0
	bcc.s loc_20b996
	addq.b #$2,$24(a0)
	move.l #$ffff4000,$2a(a0)
	tst.w d1
	bmi.s loc_20b996
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $2a(a0)
loc_20b996:
	rts
	.incbin 47512, 208

sub_20ba68:
	addq.w #$1,$36(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	move.w $36(a0),d0
	andi.w #$f,d0
	bne.s loc_20ba82
	neg.l $2e(a0)
loc_20ba82:
	rts
	.incbin 47748, 40
dat_20baac:
	dc.b $00,$02,$03,$00,$01,$02,$ff,$00
dat_20bab4:
	.incbin 47796, 114
dat_20bb26:
	.incbin 47910, 114
loc_20bb98:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bbac(pc,d0.w),d0
	jsr dat_20bbac(pc,d0.w)
	jmp (sub_203a30).l
dat_20bbac:
	.incbin 48044, 752
loc_20be9c:
	moveq #$2,d0
	jmp (sub_202436).l

sub_20bea4:
	rts
	dc.b $00,$00

sub_20bea8:
	cmpi.b #$f,d0
	bne.s loc_20beb4
	move.w #$4f2,$2(a0)
loc_20beb4:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bf16(pc,d0.w),d0
	jsr dat_20bf16(pc,d0.w)
	jsr (sub_203a30).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bef4
	movea.w d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bef4:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20bf12
	rts
loc_20bf12:
	bra.w loc_20cf1e
dat_20bf16:
	dc.b $00,$10,$00,$6e
dat_20bf1a:
	dc.b $10,$08,$00,$12,$0c,$83,$0c,$10
	dc.b $82,$0c,$10,$82
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$31e,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20bf42
	move.w #$3fc,d0
loc_20bf42:
	move.w d0,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c0c4,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,d1
	move.b d0,$1a(a0)
	add.b d0,d0
	add.b d1,d0
	lea dat_20bf1a(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$20(a0)
	jsr sub_20bfee(pc)
	tst.b $1a(a0)
	beq.s loc_20bf98
	lea ($d000).w,a1
	jmp (sub_208ca2).l
loc_20bf98:
	lea ($d000).w,a1
	jsr (sub_208ca2).l
	beq.s loc_20bfec
	btst.b #$3,$22(a0)
	beq.s loc_20bfec
	tst.b ($ff1521).l
	bne.s loc_20bfec
	tst.b ($ff151f).l
	bne.s loc_20bfec
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20bfea
	tst.w $30(a0)
	bne.s loc_20bfea
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_20733c).l
loc_20bfea:
	movea.l (a7)+,a0
loc_20bfec:
	rts

sub_20bfee:
	moveq #$0,d0
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_20c008
	andi.b #$3,d0
	add.w d0,d0
	move.w dat_20c00a(pc,d0.w),d0
	jmp dat_20c00a(pc,d0.w)
loc_20c008:
	rts
dat_20c00a:
	dc.b $00,$08,$00,$1c,$00,$32,$00,$48
	jsr sub_20c066(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	jsr sub_20c066(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
	.incbin 49212, 22
	jsr sub_20c066(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts

sub_20c066:
	tst.b $3a(a0)
	beq.s loc_20c084
	subq.b #$1,$3a(a0)
	bne.s loc_20c0c2
	btst.b #$7,$1(a0)
	beq.s loc_20c084
	move.w #$b7,d0
	jsr (sub_20226c).l
loc_20c084:
	tst.b $3c(a0)
	beq.s loc_20c0a4
	subq.b #$8,$3b(a0)
	bcc.s loc_20c0c2
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20c0c2
loc_20c0a4:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c0c2
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20c0c2:
	rts
	.incbin 49348, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c11a(pc,d0.w),d0
	jsr dat_20c11a(pc,d0.w)
	jsr (sub_203a30).l
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c116
	rts
loc_20c116:
	bra.w loc_20cf1e
dat_20c11a:
	dc.b $00,$04,$00,$7a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$433e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c21a,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	cmpi.b #$2,$28(a0)
	bcs.s loc_20c194
	jsr (sub_207a76).l
	beq.s loc_20c16a
	jmp (sub_203adc).l
loc_20c16a:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$ea,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	move.b d0,$28(a1)
loc_20c194:
	bsr.s sub_20c1f8
	tst.b ($ff152e).l
	beq.s loc_20c1ca
loc_20c19e:
	cmpi.b #$1,$28(a0)
	beq.s loc_20c1ca
	tst.b $3a(a0)
	bne.s loc_20c1cc
	moveq #$0,d0
	move.b $3b(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c20a(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$38(a0)
	move.w (a1)+,$36(a0)
loc_20c1ca:
	rts
loc_20c1cc:
	move.w $38(a0),d0
	add.w d0,$36(a0)
	move.w $36(a0),d0
	move.w d0,$10(a0)
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	subq.b #$1,$3a(a0)
	beq.s loc_20c1ec
	rts
loc_20c1ec:
	addq.b #$1,$3b(a0)
	andi.b #$3,$3b(a0)
	bra.s loc_20c19e

sub_20c1f8:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ca2).l
dat_20c20a:
	.incbin 49674, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c258(pc,d0.w),d0
	jsr dat_20c258(pc,d0.w)
	jsr (sub_203a30).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c254
	rts
loc_20c254:
	bra.w loc_20cf1e
dat_20c258:
	dc.b $00,$04,$00,$a0
	ori.b #$4,$1(a0)
	move.w #$39f,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c382,$4(a0)
	move.b $28(a0),d0
	lsr.b #$2,d0
	move.b d0,$1a(a0)
	move.b #$10,$19(a0)
	move.b #$e,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$3,d0
	beq.s loc_20c2f8
	moveq #$20,d1
	cmpi.b #$1,d0
	beq.s loc_20c2b2
	moveq #$a,d1
loc_20c2b2:
	jsr (sub_207a76).l
	bne.s loc_20c2f8
	move.b d1,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w a0,$34(a1)
	move.b #$20,$38(a1)
	move.b #$2,$28(a1)
	cmpi.b #$20,d1
	beq.s loc_20c2f8
	move.b #$18,$38(a1)
	move.b $28(a0),d0
	andi.b #$1,d0
	add.b d0,d0
	ori.b #$4,d0
	move.b d0,$28(a1)
loc_20c2f8:
	jsr sub_20c30e(pc)
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ca2).l

sub_20c30e:
	btst.b #$2,$28(a0)
	bne.s loc_20c32a
	jsr sub_20c340(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts
loc_20c32a:
	jsr sub_20c340(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	rts

sub_20c340:
	lea ($d000).w,a1
	move.w $8(a0),d0
	move.b $19(a0),d1
	ext.w d1
	sub.w d1,d0
	move.w $8(a1),d1
	sub.w d0,d1
	bcs.s loc_20c36e
	cmpi.w #$50,d1
	bcc.s loc_20c360
	rts
loc_20c360:
	subq.b #$8,$3b(a0)
	bcc.s loc_20c380
	move.b #$0,$3b(a0)
	rts
loc_20c36e:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c380
	move.b #$20,$3b(a0)
loc_20c380:
	rts
	.incbin 50050, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c3a6(pc,d0.w),d0
	jsr dat_20c3a6(pc,d0.w)
	jmp (sub_203a30).l
dat_20c3a6:
	dc.b $00,$04,$00,$3a
	ori.b #$4,$1(a0)
	move.w #$34e,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c6f0,$4(a0)
	move.b #$20,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$32(a0)
	move.w $c(a0),$30(a0)
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c420(pc,d0.w),d0
	jsr dat_20c420(pc,d0.w)
	jsr sub_20c430(pc)
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c412
	rts
loc_20c412:
	bra.w loc_20cf1e

sub_20c416:
	lea ($d000).w,a1
	jmp (sub_208c9c).l
dat_20c420:
	.incbin 50208, 16

sub_20c430:
	tst.b $3f(a0)
	beq.s loc_20c470
	btst.b #$3,$22(a0)
	bne.s loc_20c44a
	tst.b $3e(a0)
	beq.s loc_20c470
	subq.b #$8,$3e(a0)
	bra.s loc_20c456
loc_20c44a:
	cmpi.b #$40,$3e(a0)
	beq.s loc_20c470
	addq.b #$8,$3e(a0)
loc_20c456:
	move.b $3e(a0),d0
	jsr (sub_200770).l
	move.w #$400,d1
	muls.w d1,d0
	swap d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
loc_20c470:
	rts
	move.b #$1,$3f(a0)
	jsr sub_20c416(pc)
	rts
	.incbin 50302, 182
loc_20c534:
	jsr sub_20c416(pc)
	tst.b $38(a0)
	bne.s loc_20c576
	clr.b $3f(a0)
	lea (dat_20c5b0).l,a1
	cmpi.b #$3,$28(a0)
	beq.s loc_20c556
	lea (dat_20c5d0).l,a1
loc_20c556:
	moveq #$0,d0
	move.b $39(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a1,d0.w),a1
	move.b (a1)+,$38(a0)
	move.b (a1)+,d0
	ext.w d0
	move.w d0,$36(a0)
	move.w (a1)+,$34(a0)
loc_20c574:
	rts
loc_20c576:
	move.w $34(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.w $34(a0),d0
	andi.w #$ff00,d0
	move.w d0,$12(a0)
	subq.b #$1,$38(a0)
	bne.s loc_20c574
	addq.b #$1,$39(a0)
	cmpi.b #$8,$39(a0)
	bne.s loc_20c534
	move.b #$2,$39(a0)
	bra.s loc_20c534
dat_20c5b0:
	.incbin 50608, 32
dat_20c5d0:
	.incbin 50640, 32
	jsr sub_20c416(pc)
	moveq #$0,d0
	move.b $3a(a0),d0
	move.w dat_20c602(pc,d0.w),d0
	jmp dat_20c602(pc,d0.w)
dat_20c602:
	dc.b $00,$06,$00,$3e,$00,$c8
	tst.b $38(a0)
	bne.s loc_20c630
	move.b #$1,$3f(a0)
	bsr.w sub_20ce76
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_208c9c).l
	beq.s loc_20c62e
	move.b #$1e,$38(a0)
loc_20c62e:
	rts
loc_20c630:
	subq.b #$1,$38(a0)
	bne.s loc_20c62e
	clr.b $3f(a0)
	addq.b #$2,$3a(a0)
	rts
	.incbin 50752, 190
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c734(pc,d0.w),d0
	jsr dat_20c734(pc,d0.w)
	jsr (sub_203a30).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c730
	rts
loc_20c730:
	bra.w loc_20cf1e
dat_20c734:
	dc.b $00,$08,$00,$4e
dat_20c738:
	dc.b $00,$1e,$3c,$00
	ori.b #$4,$1(a0)
	move.w #$371,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c814,$4(a0)
	move.b #$1c,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b dat_20c738(pc,d0.w),$3a(a0)
	addq.b #$2,$24(a0)
	move.b $28(a0),d0
	bpl.s loc_20c79a
	bsr.s sub_20c7be
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	bra.s loc_20c7ac
loc_20c79a:
	bsr.s sub_20c7be
	moveq #$0,d0
	move.b $3b(a0),d0
	neg.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
loc_20c7ac:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208c9c).l

sub_20c7be:
	bsr.w sub_20ce76
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20c7f8
	subi.b #$10,$3b(a0)
	bcc.s loc_20c812
	move.b #$0,$3b(a0)
	move.b $28(a0),d0
	andi.b #$f,d0
	bne.s loc_20c812
	move.b $3c(a0),d0
	bne.s loc_20c812
	move.b #$3c,$3a(a0)
	move.b #$ff,$3c(a0)
	rts
loc_20c7f8:
	addi.b #$10,$3b(a0)
	cmpi.b #$40,$3b(a0)
	bcs.s loc_20c812
	move.b #$40,$3b(a0)
	move.b #$8,$3a(a0)
loc_20c812:
	rts
	dc.b $00,$02,$02,$f8,$0d,$00,$00,$e0
	dc.b $f8,$0d,$08,$00,$00,$00
	move.b $28(a0),d0
	cmpi.b #$1,d0
	beq.w loc_20c8c8
	cmpi.b #$2,d0
	beq.w loc_20cae6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c86c(pc,d0.w),d0
	jsr dat_20c86c(pc,d0.w)
	jsr (sub_203a30).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c868
	rts
loc_20c868:
	bra.w loc_20cf1e
dat_20c86c:
	dc.b $00,$04,$00,$5a
	ori.b #$4,$1(a0)
	move.w #$379,$2(a0)
	move.b #$2,$18(a0)
	move.l #$20cbd6,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	jsr (sub_207a60).l
	beq.s loc_20c8a6
	rts
loc_20c8a6:
	move.b #$27,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),d0
	addq.w #$8,d0
	move.w d0,$c(a1)
	move.b #$1,$28(a1)
	addq.b #$2,$24(a0)
	rts
loc_20c8c8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c8fe(pc,d0.w),d0
	jsr dat_20c8fe(pc,d0.w)
	jsr (sub_203a30).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c8fa
	rts
loc_20c8fa:
	bra.w loc_20cf1e
dat_20c8fe:
	dc.b $00,$14,$00,$52,$00,$b8,$01,$2c
	dc.b $01,$6c
loc_20c908:
	lea ($d000).w,a1
	jmp (sub_208ca2).l
	ori.b #$4,$1(a0)
	move.w #$379,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20cbd6,$4(a0)
	move.b #$10,$19(a0)
	move.b #$14,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$1,$1a(a0)
	addq.b #$2,$24(a0)
	rts
	tst.b $3a(a0)
	bne.s loc_20c976
	bsr.w sub_20ce76
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcc.s loc_20c966
	neg.w d0
loc_20c966:
	cmpi.w #$78,d0
	bcs.s loc_20c970
	bra.w loc_20c908
loc_20c970:
	move.b #$3c,$3a(a0)
loc_20c976:
	subq.b #$1,$3a(a0)
	beq.s loc_20c9a4
	tst.b ($ff152e).l
	beq.s loc_20c9a0
	cmpi.b #$1,($ff152e).l
	beq.s loc_20c996
	tst.b ($ff156a).l
	bne.s loc_20c9a0
loc_20c996:
	lea dat_20cbb4(pc),a1
	jsr (sub_205c3a).l
loc_20c9a0:
	bra.w loc_20c908
loc_20c9a4:
	move.w #$0,$3a(a0)
	move.b #$1,$1a(a0)
	addq.b #$2,$24(a0)
	rts
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c9c8
	move.b #$20,$3b(a0)
loc_20c9c8:
	move.b $3b(a0),d0
	ext.w d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	cmpi.b #$20,$3b(a0)
	beq.s loc_20c9e4
	bra.w loc_20c908
loc_20c9e4:
	jsr sub_20ca80(pc)
	lea ($d000).w,a1
	bsr.s sub_20ca1c
	bne.s loc_20c9fc
	move.b #$8,$3a(a0)
	addq.b #$2,$24(a0)
	rts
loc_20c9fc:
	move.w #$f900,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts

sub_20ca1c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208ca2).l
	tst.b $3a(a0)
	beq.s loc_20ca36
	subq.b #$1,$3a(a0)
	bra.s loc_20ca66
loc_20ca36:
	subq.b #$4,$3b(a0)
	bcc.s loc_20ca42
	move.b #$0,$3b(a0)
loc_20ca42:
	move.b $3b(a0),d0
	ext.w d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
	cmpi.b #$0,$3b(a0)
	beq.s loc_20ca5c
	bra.s loc_20ca66
loc_20ca5c:
	move.b #$3c,$3a(a0)
	addq.b #$2,$24(a0)
loc_20ca66:
	bra.w loc_20c908
	tst.b $3a(a0)
	beq.s loc_20ca78
	subq.b #$1,$3a(a0)
	bra.w loc_20c908
loc_20ca78:
	move.b #$2,$24(a0)
	rts

sub_20ca80:
	tst.b ($ff152e).l
	beq.s loc_20cacc
	cmpi.b #$1,($ff152e).l
	beq.s loc_20ca9a
	tst.b ($ff156a).l
	bne.s loc_20cacc
loc_20ca9a:
	jsr (sub_207a60).l
	bne.s loc_20cab0
	bsr.s sub_20cace
	move.w $8(a0),d0
	subi.w #$18,d0
	move.w d0,$8(a1)
loc_20cab0:
	jsr (sub_207a60).l
	bne.s loc_20cacc
	bsr.s sub_20cace
	move.w $8(a0),d0
	addi.w #$18,d0
	move.w d0,$8(a1)
	move.b #$1,$3a(a1)
loc_20cacc:
	rts

sub_20cace:
	move.b #$27,$0(a1)
	move.b #$2,$28(a1)
	move.w $c(a0),d0
	addq.b #$8,d0
	move.w d0,$c(a1)
	rts
loc_20cae6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb00(pc,d0.w),d0
	jsr dat_20cb00(pc,d0.w)
	jsr (sub_203a30).l
	jmp (loc_207a96).l
dat_20cb00:
	dc.b $00,$04,$00,$5e
	ori.b #$4,$1(a0)
	move.w #$379,$2(a0)
	move.b #$4,$18(a0)
	move.b #$98,$20(a0)
	move.l #$20cbd6,$4(a0)
	move.w $8(a0),$36(a0)
	move.w #$100,d0
	move.w #$10,d1
	move.w #$2,d2
	move.w $3a(a0),d3
	bne.s loc_20cb44
	neg.w d0
	neg.w d1
	move.w #$1,d2
loc_20cb44:
	move.w d0,$10(a0)
	move.w d1,$3e(a0)
	move.b d2,$1c(a0)
	addq.b #$2,$24(a0)
	lea dat_20cbb4(pc),a1
	jsr (sub_205c3a).l
	move.w $3e(a0),d0
	add.w d0,$10(a0)
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	lea dat_20cbb4(pc),a1
	jsr (sub_205c3a).l
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcc.s loc_20cb88
	neg.w d0
loc_20cb88:
	cmpi.w #$40,d0
	bcc.s loc_20cb90
	rts
loc_20cb90:
	clr.b $20(a0)
	tst.b $3b(a0)
	bne.s loc_20cba6
	addq.b #$2,$1c(a0)
	move.b #$1e,$3b(a0)
	rts
loc_20cba6:
	subq.b #$1,$3b(a0)
	beq.s loc_20cbae
	rts
loc_20cbae:
	jmp (sub_203adc).l
dat_20cbb4:
	.incbin 52148, 706

sub_20ce76:
	lea ($d000).w,a1
	rts
	.incbin 52860, 162
loc_20cf1e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cf42
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cf42:
	jmp (sub_203adc).l
	jsr (sub_20e822).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cf62(pc,d0.w),d0
	jsr dat_20cf62(pc,d0.w)
	jmp (loc_207a96).l
dat_20cf62:
	dc.b $00,$0e,$00,$60,$00,$82,$00,$ec
	dc.b $01,$06,$01,$14,$01,$7c
	move.l #$21e2b6,d1
	move.b #$1,d0
	move.b $28(a0),$2e(a0)
	bpl.s loc_20cf8c
	move.l #$21e466,d1
	move.b #$2,d0
loc_20cf8c:
	move.b d0,$1a(a0)
	move.l d1,$4(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$14,$16(a0)
	move.w #$23f2,$2(a0)
	move.w #$100,$12(a0)
	move.b #$6,$20(a0)
	addq.b #$2,$24(a0)
	jsr sub_20d0fc(pc)
	jsr (sub_206ea6).l
	tst.w d1
	bpl.s loc_20cfd4
	addq.b #$2,$24(a0)
loc_20cfd4:
	lea dat_20d1a8(pc),a1
	jsr (sub_205c3a).l
	jmp (sub_203a30).l
	btst.b #$7,$1(a0)
	beq.s loc_20d032
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
	lea ($d000).w,a1
	move.w $8(a0),d0
	sub.w $8(a1),d0
	bcc.s loc_20d014
	neg.w d0
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20d014:
	tst.b $1(a0)
	bpl.s loc_20d032
	move.w $c(a0),d1
	sub.w $c(a1),d1
	bcc.s loc_20d026
	neg.w d1
loc_20d026:
	cmpi.w #$20,d1
	bcc.s loc_20d032
	cmpi.w #$60,d0
	bcs.s loc_20d03a
loc_20d032:
	move.b #$1,$1c(a0)
	bra.s loc_20cfd4
loc_20d03a:
	move.b #$2,$1c(a0)
	jsr sub_20d116(pc)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20d058
	bra.w loc_20cfd4
loc_20d058:
	move.b #$3,$1c(a0)
	move.w #$3c,$2c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20d072
	bra.w loc_20cfd4
loc_20d072:
	addq.b #$2,$24(a0)
	move.w #$100,d0
	tst.b $28(a0)
	bpl.s loc_20d084
	move.w #$80,d0
loc_20d084:
	move.b #$0,$1c(a0)
	btst.b #$0,$22(a0)
	bne.s loc_20d094
	neg.w d0
loc_20d094:
	move.w d0,$10(a0)
	jsr sub_20d0fc(pc)
	jsr (sub_2070e6).l
	tst.w d1
	bmi.s loc_20d0ce
	jsr (sub_206f48).l
	tst.w d1
	bmi.s loc_20d0ce
	jsr (sub_206ea6).l
	tst.w d1
	beq.s loc_20d0ca
	cmpi.w #$7,d1
	bpl.s loc_20d0ce
	cmpi.w #$fff9,d1
	bmi.s loc_20d0ce
	add.w d1,$c(a0)
loc_20d0ca:
	bra.w loc_20cfd4
loc_20d0ce:
	move.w #$48,$2c(a0)
	move.w #$3,$1c(a0)
	addq.b #$2,$24(a0)
	subq.w #$1,$2c(a0)
	beq.s loc_20d0e8
	bra.w loc_20cfd4
loc_20d0e8:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	subq.b #$2,$24(a0)
	bra.w loc_20cfd4

sub_20d0fc:
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$c(a0)
	rts

sub_20d116:
	tst.b $28(a0)
	bpl.s loc_20d11e
	rts
loc_20d11e:
	jsr (sub_207a60).l
	bne.s loc_20d162
	move.b #$25,$0(a1)
	move.w a0,$30(a1)
	move.w #$40,$2c(a1)
	move.b $28(a0),$28(a1)
	move.b $1(a0),$2e(a1)
	move.w $c(a0),d0
	subq.w #$4,d0
	move.w d0,$c(a1)
	move.w $8(a0),d0
	moveq #$11,d1
	btst.b #$0,$1(a0)
	bne.s loc_20d15c
	neg.w d1
loc_20d15c:
	add.w d1,d0
	move.w d0,$8(a1)
loc_20d162:
	jsr (sub_207a60).l
	bne.s loc_20d1a6
	move.b #$25,$0(a1)
	move.w a0,$30(a1)
	move.w #$14,$2c(a1)
	move.b $28(a0),$28(a1)
	move.b $1(a0),$2e(a1)
	move.w $c(a0),d0
	subq.w #$6,d0
	move.w d0,$c(a1)
	move.w $8(a0),d0
	moveq #$9,d1
	btst.b #$0,$1(a0)
	bne.s loc_20d1a0
	neg.w d1
loc_20d1a0:
	add.w d1,d0
	move.w d0,$8(a1)
loc_20d1a6:
	rts
dat_20d1a8:
	.incbin 53672, 1006
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d5aa(pc,d0.w),d0
	jsr dat_20d5aa(pc,d0.w)
	jmp (sub_203a30).l
dat_20d5aa:
	.incbin 54698, 364
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d73a(pc,d0.w),d0
	jsr dat_20d73a(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20d734
	jsr (sub_203a30).l
loc_20d734:
	jmp (loc_207a96).l
dat_20d73a:
	.incbin 55098, 1636
	jsr (sub_20e86a).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20dec0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ddbe(pc,d0.w),d0
	jmp dat_20ddbe(pc,d0.w)
dat_20ddbe:
	.incbin 56766, 258
loc_20dec0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dece(pc,d0.w),d0
	jmp dat_20dece(pc,d0.w)
dat_20dece:
	.incbin 57038, 1646
loc_20e53c:
	jmp (sub_203adc).l
	.incbin 58690, 34
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$fb,$20(a0)
	move.w #$33e,$2(a0)
	move.l #$20e7b8,$4(a0)
	move.l #$20e7fc,$2c(a0)
	jsr (sub_207a60).l
	bne.w loc_20e53c
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$15,$8(a1)
	subq.w #$7,$c(a1)
	move.b #$ff,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207a60).l
	bne.w loc_20e53c
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	subq.w #$4,$c(a1)
	move.b #$1,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207a60).l
	bne.w loc_20e53c
	move.b #$39,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$58,$8(a1)
	addi.w #$ffe8,$c(a1)
	move.b #$80,$28(a1)
	move.w a0,$3e(a1)
	jsr (sub_207a60).l
	bne.w loc_20e53c
	move.b #$39,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$62,$8(a1)
	addi.w #$0,$c(a1)
	move.b #$81,$28(a1)
	move.w a0,$3e(a1)
	tst.b $21(a0)
	beq.s loc_20e664
	clr.w $20(a0)
	addq.b #$2,$24(a0)
loc_20e664:
	lea ($d000).w,a1
	jmp (sub_208ca2).l
	.incbin 58990, 436

sub_20e822:
	tst.b ($ff156a).l
	beq.s loc_20e868
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e83a
	tst.b $28(a0)
	beq.s loc_20e868
loc_20e83a:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203adc).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e866
	move.w #$9e,d0
	jsr (sub_20226c).l
loc_20e866:
	addq.l #$4,a7
loc_20e868:
	rts

sub_20e86a:
	tst.b $28(a0)
	bmi.s loc_20e89a
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e88a
	tst.b ($ff156d).l
	bne.s loc_20e89a
	addq.l #$4,a7
	jmp (loc_207a96).l
loc_20e88a:
	tst.b ($ff156a).l
	bne.s loc_20e89a
	addq.l #$4,a7
	jmp (sub_203adc).l
loc_20e89a:
	rts
	.incbin 59548, 284
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9c6(pc,d0.w),d0
	jmp dat_20e9c6(pc,d0.w)
dat_20e9c6:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20f0c4,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20f084).l,a2
loc_20ea14:
	jsr (sub_207a60).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20f0c4,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20ea66
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20ea66:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20ea14
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ea8e
	bge.s loc_20ea84
	neg.w d0
loc_20ea84:
	add.w d0,$a(a0)
	jmp (sub_203a30).l
loc_20ea8e:
	addq.b #$4,$24(a0)
	jmp (sub_203a30).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20eab2
	bge.s loc_20eaa8
	neg.w d0
loc_20eaa8:
	add.w d0,$8(a0)
	jmp (sub_203a30).l
loc_20eab2:
	addq.b #$4,$24(a0)
	jmp (sub_203a30).l
	tst.b $1e(a0)
	beq.s loc_20eacc
	subq.b #$1,$1e(a0)
	jmp (sub_203a30).l
loc_20eacc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20eae6
	bge.s loc_20eadc
	neg.w d0
loc_20eadc:
	add.w d0,$a(a0)
	jmp (sub_203a30).l
loc_20eae6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202436).l
	tst.b $1e(a0)
	beq.s loc_20eb08
	subq.b #$1,$1e(a0)
	jmp (sub_203a30).l
loc_20eb08:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20eb22
	bge.s loc_20eb18
	neg.w d0
loc_20eb18:
	add.w d0,$8(a0)
	jmp (sub_203a30).l
loc_20eb22:
	jmp (sub_203adc).l
	tst.l ($f680).w
	bne.s loc_20eb3c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203adc).l
loc_20eb3c:
	rts
	.incbin 60222, 1350
dat_20f084:
	.incbin 61572, 340

sub_20f1d8:
	jmp (loc_2064ae).l
dat_20f1de:
	.incbin 61918, 16
dat_20f1ee:
	.incbin 61934, 278
dat_20f304:
	.incbin 62212, 48
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20f356
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20f356:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,dat_20f304
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f37e
	bge.s loc_20f374
	neg.w d0
loc_20f374:
	add.w d0,$a(a0)
	jmp (loc_203a6e).l
loc_20f37e:
	addq.b #$4,$24(a0)
	jmp (loc_203a6e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f3a2
	bge.s loc_20f398
	neg.w d0
loc_20f398:
	add.w d0,$8(a0)
	jmp (loc_203a6e).l
loc_20f3a2:
	addq.b #$4,$24(a0)
	jmp (loc_203a6e).l
	tst.b $1e(a0)
	beq.s loc_20f3bc
	subq.b #$1,$1e(a0)
	jmp (loc_203a6e).l
loc_20f3bc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20f3d6
	bge.s loc_20f3cc
	neg.w d0
loc_20f3cc:
	add.w d0,$a(a0)
	jmp (loc_203a6e).l
loc_20f3d6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp ($202448).l
	tst.b $1e(a0)
	beq.s loc_20f3f8
	subq.b #$1,$1e(a0)
	jmp (loc_203a6e).l
loc_20f3f8:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20f412
	bge.s loc_20f408
	neg.w d0
loc_20f408:
	add.w d0,$8(a0)
	jmp (loc_203a6e).l
loc_20f412:
	jmp ($203b1a).l
	tst.l ($f680).w
	bne.s loc_20f42c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp ($203b1a).l
loc_20f42c:
	rts
	.incbin 62510, 1690
	jmp ($2064ec).l
	.incbin 64206, 796
	jmp (dat_206294).l
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
	.incbin 230218, 4796
dat_239606:
	.incbin 235014, 15250
dat_23d198:
	.incbin 250264, 768
dat_23d498:
	.incbin 251032, 166
dat_23d53e:
	.incbin 251198, 10946
