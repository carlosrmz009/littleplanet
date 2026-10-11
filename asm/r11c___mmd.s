; R11C__.MMD
; disassembled from the disc; code only, data comes from data/R11C__.MMD at build time
	.file "R11C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$1f,$c2
	jmp (loc_201b38).l
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
	bsr.w sub_20206e
	bsr.w sub_202016
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2013b2

sub_200184:
	lea (dat_2001f4).l,a0
	subq.b #$1,($f7b7).w
	bpl.s loc_2001ba
	move.b #$7,($f7b7).w
	moveq #$0,d0
	move.b ($f7b0).w,d0
	cmpi.b #$2,d0
	bne.s loc_2001a6
	moveq #$0,d0
	bra.s loc_2001a8
loc_2001a6:
	addq.b #$1,d0
loc_2001a8:
	move.b d0,($f7b0).w
	lsl.w #$3,d0
	lea ($fb6a).w,a1
	move.l $0(a0,d0.w),(a1)+
	move.l $4(a0,d0.w),(a1)
loc_2001ba:
	adda.w #$18,a0
	subq.b #$1,($f7b8).w
	bpl.s loc_2001f2
	move.b #$5,($f7b8).w
	moveq #$0,d0
	move.b ($f7b1).w,d0
	cmpi.b #$2,d0
	bne.s loc_2001da
	moveq #$0,d0
	bra.s loc_2001dc
loc_2001da:
	addq.b #$1,d0
loc_2001dc:
	move.b d0,($f7b1).w
	andi.w #$3,d0
	lsl.w #$3,d0
	lea ($fb58).w,a1
	move.l $0(a0,d0.w),(a1)+
	move.l $4(a0,d0.w),(a1)
loc_2001f2:
	rts
dat_2001f4:
	.incbin 500, 48

sub_200224:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200236:
	move.w d1,(a0)+
	dbf d0,loc_200236
	move.w #$15,d4
loc_200240:
	move.b #$12,($f62a).w
	bsr.w sub_2006f6
	bsr.s sub_200256
	bsr.w sub_202434
	dbf d4,loc_200240
	rts

sub_200256:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20026c:
	bsr.s sub_20029a
	dbf d0,loc_20026c
	cmpi.b #$1,($ff1506).l
	bne.s loc_200298
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200292:
	bsr.s sub_20029a
	dbf d0,loc_200292
loc_200298:
	rts

sub_20029a:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002c2
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002b0
	move.w d1,(a0)+
	rts
loc_2002b0:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002be
	move.w d1,(a0)+
	rts
loc_2002be:
	addq.w #$2,(a0)+
	rts
loc_2002c2:
	addq.w #$2,a0
	rts

sub_2002c6:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002d0:
	move.b #$12,($f62a).w
	bsr.w sub_2006f6
	bsr.s sub_2002e6
	bsr.w sub_202434
	dbf d4,loc_2002d0
	rts

sub_2002e6:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2002f6:
	bsr.s sub_200314
	dbf d0,loc_2002f6
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20030c:
	bsr.s sub_200314
	dbf d0,loc_20030c
	rts

sub_200314:
	move.w (a0),d2
	beq.s loc_200340
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200324
	subq.w #$2,(a0)+
	rts
loc_200324:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200332
	subi.w #$20,(a0)+
	rts
loc_200332:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200340
	subi.w #$200,(a0)+
	rts
loc_200340:
	addq.w #$2,a0
	rts

sub_200344:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20035e:
	move.w d1,(a0)+
	dbf d0,loc_20035e
	move.w #$15,d4
loc_200368:
	move.b #$12,($f62a).w
	bsr.w sub_2006f6
	bsr.s sub_20037e
	bsr.w sub_202434
	dbf d4,loc_200368
	rts

sub_20037e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200394:
	bsr.s sub_2003c2
	dbf d0,loc_200394
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003c0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ba:
	bsr.s sub_2003c2
	dbf d0,loc_2003ba
loc_2003c0:
	rts

sub_2003c2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003ee
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003da
	cmp.w d2,d1
	bcs.s loc_2003da
	move.w d1,(a0)+
	rts
loc_2003da:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2003ea
	cmp.w d2,d1
	bcs.s loc_2003ea
	move.w d1,(a0)+
	rts
loc_2003ea:
	subq.w #$2,(a0)+
	rts
loc_2003ee:
	addq.w #$2,a0
	rts

sub_2003f2:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003fc:
	move.b #$12,($f62a).w
	bsr.w sub_2006f6
	bsr.s sub_200412
	bsr.w sub_202434
	dbf d4,loc_2003fc
	rts

sub_200412:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200422:
	bsr.s sub_200440
	dbf d0,loc_200422
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200438:
	bsr.s sub_200440
	dbf d0,loc_200438
	rts

sub_200440:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20047c
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200458
	addq.w #$2,(a0)+
	rts
loc_200458:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_20046a
	addi.w #$20,(a0)+
	rts
loc_20046a:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20047c
	addi.w #$200,(a0)+
	rts
loc_20047c:
	addq.w #$2,a0
	rts

sub_200480:
	lea (dat_2004ec).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200494:
	move.l (a2)+,(a3)+
	dbf d7,loc_200494
	rts

sub_20049c:
	lea (dat_2004ec).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004ac:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004ac
	rts
	.incbin 1204, 56
dat_2004ec:
	.incbin 1260, 522

sub_2006f6:
	move.w #$2300,sr
loc_2006fa:
	tst.b ($f62a).w
	bne.s loc_2006fa
	rts

sub_200702:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_20071a(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_20071a(pc,d0.w),d0
	rts
dat_20071a:
	.incbin 1818, 640

sub_20099a:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_2009f6
	move.w d2,d4
	tst.w d3
	bpl.w loc_2009b4
	neg.w d3
loc_2009b4:
	tst.w d4
	bpl.w loc_2009bc
	neg.w d4
loc_2009bc:
	cmp.w d3,d4
	bcc.w loc_2009ce
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a00(pc,d4.w),d0
	bra.s loc_2009d8
loc_2009ce:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a00(pc,d3.w),d0
loc_2009d8:
	tst.w d1
	bpl.w loc_2009e4
	neg.w d0
	addi.w #$80,d0
loc_2009e4:
	tst.w d2
	bpl.w loc_2009f0
	neg.w d0
	addi.w #$100,d0
loc_2009f0:
	movem.l (a7)+,d3-d4
	rts
loc_2009f6:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a00:
	.incbin 2560, 258

sub_200b02:
	btst.b #$3,$22(a0)
	beq.s loc_200b16
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b16:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b38
	move.b $26(a0),d0
	bpl.s loc_200b32
	subq.b #$1,d0
loc_200b32:
	addi.b #$20,d0
	bra.s loc_200b44
loc_200b38:
	move.b $26(a0),d0
	bpl.s loc_200b40
	addq.b #$1,d0
loc_200b40:
	addi.b #$1f,d0
loc_200b44:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200dce
	cmpi.b #$80,d0
	beq.w loc_200d2c
	cmpi.b #$c0,d0
	beq.w loc_200c90
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
	bsr.w sub_201058
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
	bsr.w sub_201058
	move.w (a7)+,d0
	bsr.w sub_200c64
	tst.w d1
	beq.s loc_200bd2
	bpl.s loc_200bd4
	cmpi.w #$fff2,d1
	blt.s loc_200bfa
	add.w d1,$c(a0)
loc_200bd2:
	rts
loc_200bd4:
	cmpi.w #$e,d1
	bgt.s loc_200be0
loc_200bda:
	add.w d1,$c(a0)
	rts
loc_200be0:
	tst.b $38(a0)
	bne.s loc_200bda
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200bfa:
	rts
	.incbin 3068, 34
loc_200c1e:
	rts
	.incbin 3104, 68

sub_200c64:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200c72
	move.b ($f768).w,d2
	move.w d0,d1
loc_200c72:
	btst.l #$0,d2
	bne.s loc_200c7e
	move.b d2,$26(a0)
	rts
loc_200c7e:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200c90:
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
	bsr.w sub_2011c8
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
	bsr.w sub_2011c8
	move.w (a7)+,d0
	bsr.w sub_200c64
	tst.w d1
	beq.s loc_200d04
	bpl.s loc_200d06
	cmpi.w #$fff2,d1
	blt.w loc_200c1e
	add.w d1,$8(a0)
loc_200d04:
	rts
loc_200d06:
	cmpi.w #$e,d1
	bgt.s loc_200d12
loc_200d0c:
	add.w d1,$8(a0)
	rts
loc_200d12:
	tst.b $38(a0)
	bne.s loc_200d0c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d2c:
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
	bsr.w sub_201058
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
	bsr.w sub_201058
	move.w (a7)+,d0
	bsr.w sub_200c64
	tst.w d1
	beq.s loc_200da6
	bpl.s loc_200da8
	cmpi.w #$fff2,d1
	blt.w loc_200bfa
	sub.w d1,$c(a0)
loc_200da6:
	rts
loc_200da8:
	cmpi.w #$e,d1
	bgt.s loc_200db4
loc_200dae:
	sub.w d1,$c(a0)
	rts
loc_200db4:
	tst.b $38(a0)
	bne.s loc_200dae
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dce:
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
	bsr.w sub_2011c8
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
	bsr.w sub_2011c8
	move.w (a7)+,d0
	bsr.w sub_200c64
	tst.w d1
	beq.s loc_200e48
	bpl.s loc_200e4a
	cmpi.w #$fff2,d1
	blt.w loc_200c1e
	sub.w d1,$8(a0)
loc_200e48:
	rts
loc_200e4a:
	cmpi.w #$e,d1
	bgt.s loc_200e56
loc_200e50:
	sub.w d1,$8(a0)
	rts
loc_200e56:
	tst.b $38(a0)
	bne.s loc_200e50
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200e70:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200e86
	andi.w #$380,d0
loc_200e86:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ee6
	bmi.s loc_200eea
	cmpi.b #$5,($ff1506).l
	beq.s loc_200eb6
	cmpi.b #$6,($ff1506).l
	bne.s loc_200ebc
loc_200eb6:
	andi.w #$7fff,$2(a0)
loc_200ebc:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200ecc
	bclr.b #$6,$1(a0)
loc_200ecc:
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
loc_200ee6:
	movea.l d1,a1
	rts
loc_200eea:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f52
	btst.b #$6,$1(a0)
	bne.s loc_200f18
	cmpi.b #$14,d1
	bne.w loc_20103c
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20103c
loc_200f18:
	cmpi.b #$15,d1
	bne.s loc_200f26
	move.w #$60,d1
	bra.w loc_20103c
loc_200f26:
	cmpi.b #$1e,d1
	bne.s loc_200f34
	move.w #$61,d1
	bra.w loc_20103c
loc_200f34:
	cmpi.b #$1f,d1
	bne.s loc_200f42
	move.w #$62,d1
	bra.w loc_20103c
loc_200f42:
	cmpi.b #$32,d1
	bne.w loc_20103c
	move.w #$63,d1
	bra.w loc_20103c
loc_200f52:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200fb8
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200fa2
	cmpi.b #$6,d1
	beq.s loc_200fa2
	tst.b ($ff1956).l
	beq.w loc_20103c
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200fb2
	cmpi.b #$3c,d1
	beq.s loc_200fb2
	cmpi.b #$37,d1
	beq.s loc_200fb2
	cmpi.b #$2f,d1
	beq.s loc_200fb2
	cmpi.b #$16,d1
	beq.s loc_200fb2
	bra.w loc_20103c
loc_200fa2:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20103c
loc_200fb2:
	addq.b #$1,d1
	bra.w loc_20103c
loc_200fb8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201028
	cmpi.b #$3,$0(a0)
	bcc.w loc_20103c
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20103c
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200fec
	move.w #$6a,d1
	bra.s loc_20103c
loc_200fec:
	cmpi.b #$48,d1
	bne.s loc_200ff8
	move.w #$6b,d1
	bra.s loc_20103c
loc_200ff8:
	cmpi.b #$4a,d1
	bne.s loc_201004
	move.w #$6c,d1
	bra.s loc_20103c
loc_201004:
	cmpi.b #$10,d1
	bne.s loc_201010
	move.w #$6d,d1
	bra.s loc_20103c
loc_201010:
	cmpi.b #$63,d1
	bne.s loc_20101c
	move.w #$6e,d1
	bra.s loc_20103c
loc_20101c:
	cmpi.b #$43,d1
	bne.s loc_20103c
	move.w #$6f,d1
	bra.s loc_20103c
loc_201028:
	btst.b #$6,$1(a0)
	beq.s loc_20103c
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20103c
	move.w #$51,d1
loc_20103c:
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

sub_201058:
	bsr.w sub_200e70
	cmpi.l #$210000,d1
	beq.s loc_201072
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201072
	btst.l d5,d4
	bne.s loc_201080
loc_201072:
	add.w a3,d2
	bsr.w sub_201118
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201080:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201072
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010a6
	not.w d1
	neg.b (a4)
loc_2010a6:
	btst.l #$c,d4
	beq.s loc_2010b6
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2010b6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2010d2
	neg.w d0
loc_2010d2:
	tst.w d0
	beq.s loc_201072
	bmi.s loc_2010ee
	cmpi.b #$10,d0
	beq.s loc_20110a
loc_2010de:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010ee:
	cmpa.w #$10,a3
	bne.s loc_2010fe
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010de
loc_2010fe:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201072
loc_20110a:
	sub.w a3,d2
	bsr.w sub_201118
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201118:
	bsr.w sub_200e70
	cmpi.l #$210000,d1
	beq.s loc_201132
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201132
	btst.l d5,d4
	bne.s loc_201140
loc_201132:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201140:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201132
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201166
	not.w d1
	neg.b (a4)
loc_201166:
	btst.l #$c,d4
	beq.s loc_201176
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201176:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201192
	neg.w d0
loc_201192:
	tst.w d0
	beq.s loc_201132
	bmi.s loc_2011a8
loc_201198:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011a8:
	cmpa.w #$10,a3
	bne.s loc_2011b8
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201198
loc_2011b8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201132
	not.w d1
	rts

sub_2011c8:
	bsr.w sub_200e70
	cmpi.l #$210000,d1
	beq.s loc_2011e2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011e2
	btst.l d5,d4
	bne.s loc_2011f0
loc_2011e2:
	add.w a3,d3
	bsr.w sub_201278
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2011f0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011e2
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20121e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20121e:
	btst.l #$b,d4
	beq.s loc_201226
	neg.b (a4)
loc_201226:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23a274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201242
	neg.w d0
loc_201242:
	tst.w d0
	beq.s loc_2011e2
	bmi.s loc_20125e
	cmpi.b #$10,d0
	beq.s loc_20126a
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20125e:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011e2
loc_20126a:
	sub.w a3,d3
	bsr.w sub_201278
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201278:
	bsr.w sub_200e70
	cmpi.l #$210000,d1
	beq.s loc_201292
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201292
	btst.l d5,d4
	bne.s loc_2012a0
loc_201292:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2012a0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201292
	lea (dat_239174).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012ce
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ce:
	btst.l #$b,d4
	beq.s loc_2012d6
	neg.b (a4)
loc_2012d6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23a274).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012f2
	neg.w d0
loc_2012f2:
	tst.w d0
	beq.s loc_201292
	bmi.s loc_201308
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201308:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201292
	not.w d1
	rts

sub_201318:
	rts
	.incbin 4890, 152
loc_2013b2:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2013d2
	tst.b ($ff0f01).l
	bne.s loc_2013d2
	move.b #$1,($ff156a).l
loc_2013d2:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201438
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207384
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201438
	move.b #$1,($ff1508).l
loc_201438:
	bset.b #$7,($f600).w
	bsr.w sub_202426
	tst.b ($ff156e).l
	bne.s loc_20145e
	btst.b #$7,($ff152e).l
	beq.s loc_201494
	bset.b #$0,($ff151d).l
	beq.s loc_20146a
loc_20145e:
	bsr.w sub_2003f2
	bclr.b #$0,($ff151d).l
loc_20146a:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_201504
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_201492
	bclr.b #$7,($ff152e).l
loc_201492:
	rts
loc_201494:
	bset.b #$0,($ff151d).l
	beq.s loc_2014a2
	bsr.w sub_2002c6
loc_2014a2:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2014be
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014e6
loc_2014be:
	tst.b ($ff1508).l
	bne.s loc_201504
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014e6:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014ee:
	move.l #$0,(a1)+
	dbf d6,loc_2014ee
	move.b #$c,($f62a).w
	bsr.w sub_2006f6
	rts
loc_201504:
	cmpi.w #$800,($f78e).w
	bne.s loc_201522
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201522:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201538
	btst.b #$7,($ff152e).l
	beq.s loc_20153e
loc_201538:
	move.l #$eee0eee,d0
loc_20153e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201546:
	move.l d0,(a1)+
	dbf d6,loc_201546
loc_20154c:
	move.b #$c,($f62a).w
	bsr.w sub_2006f6
	bsr.w sub_202434
	bne.s loc_20154c
	tst.l ($f680).w
	bsr.w sub_2019f2
	moveq #$0,d0
	lea (dat_20ed04).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201576
	bsr.w sub_20253a
loc_201576:
	moveq #$1,d0
	bsr.w sub_20253a
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201592:
	move.l d0,(a1)+
	dbf d1,loc_201592
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2015a4:
	move.l d0,(a1)+
	dbf d1,loc_2015a4
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2015b4:
	move.l d0,(a1)+
	dbf d1,loc_2015b4
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2015c6:
	move.l d0,(a1)+
	dbf d1,loc_2015c6
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2015d6:
	move.l d0,(a1)+
	dbf d1,loc_2015d6
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2015e6:
	move.l d0,(a1)+
	dbf d1,loc_2015e6
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202110
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
	bsr.w sub_20049c
	moveq #$3,d0
	bsr.w sub_200480
	bsr.w sub_20279c
	bsr.w sub_2028fe
	bset.b #$2,($f754).w
	bsr.w sub_203352
	bsr.w sub_203268
	jsr (sub_201318).l
	bsr.w sub_20192c
loc_201666:
	move.b #$c,($f62a).w
	bsr.w sub_2006f6
	bsr.w sub_202434
	bne.s loc_201666
	tst.l ($f680).w
	bne.s loc_201666
	bsr.w sub_2018b8
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a52
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2016ca
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2016ca:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20170c
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20170c:
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
	jsr (sub_20ecfe).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20179c
loc_201796:
	bsr.w sub_200344
	bra.s loc_2017aa
loc_20179c:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201796
	bsr.w sub_200224
loc_2017aa:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2017b8:
	move.b #$8,($f62a).w
	bsr.w sub_2006f6
	tst.b ($f7cc).w
	bne.s loc_2017d6
	btst.b #$7,($f605).w
	beq.s loc_2017d6
	eori.b #$1,($f63a).w
loc_2017d6:
	btst.b #$0,($f63a).w
	beq.w loc_201848
	bsr.w sub_201ab6
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201826
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2017b8
	subq.b #$1,($ff1508).l
	bpl.s loc_201808
	clr.b ($ff1508).l
loc_201808:
	move.w #$e,d0
	jsr (sub_205a20).l
	bsr.w sub_207384
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201834
loc_201826:
	andi.b #$70,d0
	beq.w loc_2017b8
	clr.b ($ff1508).l
loc_201834:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2013b2
loc_201848:
	bsr.w sub_201afc
	addq.w #$1,($ff1504).l
	jsr (sub_20739a).l
	jsr (sub_203766).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2013b2
	tst.w ($ff1502).l
	bne.w loc_2013b2
	tst.w ($ff1906).l
	bne.s loc_201890
	cmpi.b #$6,($d024).w
	bcs.s loc_201890
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201894
loc_201890:
	bsr.w sub_2028fe
loc_201894:
	jsr (sub_203910).l
	tst.w ($ff190e).l
	bne.s loc_2018a6
	bsr.w sub_200184
loc_2018a6:
	jsr (sub_20caac).l
	bsr.w sub_202434
	bsr.w sub_20195e
	bra.w loc_2017b8

sub_2018b8:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2018d0
	move.w #$78,$30(a1)
loc_2018d0:
	rts
	.incbin 6354, 90

sub_20192c:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_20193e(pc,d0.w),($f796).w
	rts
dat_20193e:
	.incbin 6462, 32

sub_20195e:
	subq.b #$1,($ff1910).l
	bpl.s loc_20197c
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_20197c:
	subq.b #$1,($ff1912).l
	bpl.s loc_20199a
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_20199a:
	subq.b #$1,($ff1914).l
	bpl.s loc_2019c2
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_2019c2
	move.b #$0,($ff1915).l
loc_2019c2:
	tst.b ($ff1916).l
	beq.s loc_2019f0
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_2019f0:
	rts

sub_2019f2:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a14
	cmpi.b #$2,d0
	bne.s loc_201a14
	add.b ($ff156a).l,d0
loc_201a14:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a2c(pc,d1.w),d0
	jmp (sub_205a20).l
dat_201a2c:
	.incbin 6700, 38

sub_201a52:
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

sub_201ab6:
	move.w #$ab,d0
	jsr (sub_2021fe).l
	bset.b #$7,($f63a).w
	bne.s loc_201afa
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ae0
loc_201ad6:
	move.w #$d5,d0
	jmp (sub_205a20).l
loc_201ae0:
	tst.b ($ff151f).l
	bne.s loc_201ad6
	tst.b ($ff1520).l
	bne.s loc_201ad6
	move.w #$90,d0
	jmp (sub_205a20).l
loc_201afa:
	rts

sub_201afc:
	bclr.b #$7,($f63a).w
	beq.s loc_201b36
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b1c
loc_201b12:
	move.w #$d6,d0
	jmp (sub_205a20).l
loc_201b1c:
	tst.b ($ff151f).l
	bne.s loc_201b12
	tst.b ($ff1520).l
	bne.s loc_201b12
	move.w #$91,d0
	jmp (sub_205a20).l
loc_201b36:
	rts
loc_201b38:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201bc4
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201b74
	move.w #$700,d0
loc_201b70:
	dbf d0,loc_201b70
loc_201b74:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201baa(pc,d0.w),d0
	jsr dat_201baa(pc,d0.w)
loc_201b8a:
	jsr (sub_202222).l
	tst.b ($f63a).w
	bne.s loc_201b9e
	bsr.w sub_201fd6
	bsr.w sub_201fc4
loc_201b9e:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201baa:
	.incbin 7082, 26
loc_201bc4:
	tst.b ($ff1957).l
	beq.w loc_201b8a
	cmpi.b #$2,($ff1506).l
	bne.w loc_201b8a
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201bf2
	move.w #$700,d0
loc_201bee:
	dbf d0,loc_201bee
loc_201bf2:
	move.w #$1,($f6fc).w
	jsr (sub_202196).l
	tst.b ($f64e).w
	bne.s loc_201c2a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201c4e
loc_201c2a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201c4e:
	move.w ($f624).w,(a5)
	jsr (sub_2021b2).l
	bra.w loc_201b8a
	.incbin 7260, 60
	jsr (sub_202196).l
	bsr.w sub_202032
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
	bsr.w sub_205942
	tst.b ($f767).w
	beq.s loc_201d46
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201d46:
	jsr (sub_20ecfe).l
	jsr (sub_2021b2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e60
	bsr.w sub_2024a6
	jmp (loc_20aba4).l
	dc.b $4e,$75
	jsr (sub_202196).l
	bsr.w sub_202032
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
	jsr (sub_2021b2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e60
	bra.w loc_20248a
	.incbin 7710, 16
	bsr.w sub_201f1a
	cmpi.b #$1,($ff1903).l
	bne.s loc_201e50
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201e50:
	move.w ($f624).w,(a5)
	bra.w loc_20248a
	.incbin 7768, 194

sub_201f1a:
	jsr (sub_202196).l
	bsr.w sub_202032
	tst.b ($f64e).w
	bne.s loc_201f50
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f74
loc_201f50:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f74:
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
	jmp (sub_2021b2).l
	dc.b $4e,$73

sub_201fc4:
	tst.b ($d02a).w
	bne.s loc_201fd4
	tst.w ($f786).w
	beq.s loc_201fd4
	addq.w #$1,($f786).w
loc_201fd4:
	rts

sub_201fd6:
	tst.w ($f780).w
	beq.s loc_201fe0
	addq.w #$1,($f780).w
loc_201fe0:
	tst.w ($f782).w
	beq.s loc_201fea
	addq.w #$1,($f782).w
loc_201fea:
	rts
	.incbin 8172, 42

sub_202016:
	bsr.w sub_202196
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2021b2

sub_202032:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202040
	addq.w #$2,a1

sub_202040:
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

sub_20206e:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2020ea).l,a2
	moveq #$12,d7
loc_202082:
	move.w (a2)+,(a0)
	dbf d7,loc_202082
	move.w (dat_2020ec).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2020a8:
	move.w d0,(a1)
	dbf d7,loc_2020a8
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2020da:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2020da
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2020ea:
	dc.b $80,$04
dat_2020ec:
	.incbin 8428, 36

sub_202110:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_202132:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202132
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202160:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202160
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_20217e:
	move.l d0,(a1)+
	dbf d1,loc_20217e
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_20218e:
	move.l d0,(a1)+
	dbf d1,loc_20218e
	rts

sub_202196:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2021a6:
	btst.b #$0,($a11100).l
	bne.s loc_2021a6
	rts

sub_2021b2:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8640, 62

sub_2021fe:
	tst.b ($f00a).w
	bne.s loc_20220a
	move.b d0,($f00a).w
	rts
loc_20220a:
	tst.b ($f00b).w
	bne.s loc_202216
	move.b d0,($f00b).w
	rts
loc_202216:
	tst.b ($f00c).w
	bne.s loc_202220
	move.b d0,($f00c).w
loc_202220:
	rts

sub_202222:
	jsr (sub_202196).l
	tst.b ($f00a).w
	beq.s loc_20223c
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_20223c:
	tst.b ($f00b).w
	beq.s loc_202250
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202250:
	tst.b ($f00c).w
	beq.s loc_202264
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202264:
	bra.w sub_2021b2
	.incbin 8808, 32

sub_202288:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_20234a).l,a3
	lea ($c00000).l,a4
	bra.s loc_2022a4

sub_20229a:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202360).l,a3
loc_2022a4:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2022b2
	adda.w #$a,a3
loc_2022b2:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202376
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2022d2
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2022d2:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20231e
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2022fa
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2022fa:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202308:
	lsr.w #$4,d0
loc_20230a:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202318
	jmp (a3)

sub_202314:
	moveq #$0,d4
	moveq #$8,d3
loc_202318:
	dbf d0,loc_20230a
	bra.s sub_2022d2
loc_20231e:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20232c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20232c:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202308
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202308
loc_20234a:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202314
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202314
	rts
dat_202360:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202314
	rts

sub_202376:
	move.b (a0)+,d0
loc_202378:
	cmpi.b #$ff,d0
	bne.s loc_202380
	rts
loc_202380:
	move.w d0,d7
loc_202382:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202378
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
	bne.s loc_2023b0
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_202382
loc_2023b0:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2023bc:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2023bc
	bra.s loc_202382

sub_2023c8:
	movem.l a1-a2,-(a7)
	lea (dat_20ed14).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2023e0:
	tst.l (a2)
	beq.s loc_2023e8
	addq.w #$6,a2
	bra.s loc_2023e0
loc_2023e8:
	move.w (a1)+,d0
	bmi.s loc_2023f4
loc_2023ec:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2023ec
loc_2023f4:
	movem.l (a7)+,a1-a2
	rts
loc_2023fa:
	movem.l a1-a2,-(a7)
	lea (dat_20ed14).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202426
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202420
loc_202418:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202418
loc_202420:
	movem.l (a7)+,a1-a2
	rts

sub_202426:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20242c:
	clr.l (a2)+
	dbf d0,loc_20242c
	rts

sub_202434:
	tst.l ($f680).w
	beq.s loc_202488
	tst.w ($f6f8).w
	bne.s loc_202488
	movea.l ($f680).w,a0
	lea (loc_20234a).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202456
	adda.w #$a,a3
loc_202456:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202376
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
loc_202488:
	rts
loc_20248a:
	tst.w ($f6f8).w
	beq.w loc_202528
loc_202492:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2024c4

sub_2024a6:
	tst.w ($f6f8).w
	beq.s loc_202528
	tst.b ($f744).w
	bne.s loc_202492
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2024c4:
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
loc_2024f8:
	movea.w #$8,a5
	bsr.w sub_202314
	subq.w #$1,($f6f8).w
	beq.s loc_20252a
	subq.w #$1,($f6fa).w
	bne.s loc_2024f8
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202528:
	rts
loc_20252a:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202530:
	move.l $6(a0),(a0)+
	dbf d0,loc_202530
	rts

sub_20253a:
	lea (dat_20ed14).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_20254c:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202288
	dbf d1,loc_20254c
	rts
	.incbin 9580, 560

sub_20279c:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2027f8).l,a0
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
	bra.w loc_202824
dat_2027f8:
	dc.b $00,$04,$00,$00,$28,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202804:
	.incbin 10244, 32
loc_202824:
	tst.b ($ff1522).l
	beq.s loc_202844
	jsr (sub_2065ac).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202842
	moveq #$0,d0
loc_202842:
	bra.s loc_202880
loc_202844:
	lea (dat_2028bc).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202866
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202804).l,a1
	adda.w d0,a1
	bra.s loc_202870
loc_202866:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202870:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202880:
	subi.w #$a0,d1
	bcc.s loc_202888
	moveq #$0,d1
loc_202888:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202892
	move.w d2,d1
loc_202892:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20289e
	moveq #$0,d0
loc_20289e:
	cmp.w ($f72e).w,d0
	blt.s loc_2028a8
	move.w ($f72e).w,d0
loc_2028a8:
	move.w d0,($f704).w
	bsr.w sub_2028c4
	lea (dat_2028c0).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2028bc:
	dc.b $00,$50,$01,$e8
dat_2028c0:
	dc.b $8c,$7f,$1e,$1e

sub_2028c4:
	swap d0
	asr.l #$4,d0
	add.l d0,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$2,d1
	move.w d1,($f710).w
	lsr.w #$1,d1
	move.w d1,($f718).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d2,d1
	move.w d1,($f708).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	rts

sub_2028fe:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_20290a
	rts
loc_20290a:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ad6
	bsr.w sub_202b76
	bsr.w sub_2033fa
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	moveq #$6,d6
	bsr.w sub_202e00
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$4,d6
	bsr.w sub_202dcc
	lea ($a810).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	add.l d5,d5
	bsr.w sub_202cc8
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
	move.w #$3,d1
loc_2029c6:
	move.w d0,(a1)+
	dbf d1,loc_2029c6
	move.w ($a804).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$3,d1
loc_2029da:
	move.w d0,(a1)+
	dbf d1,loc_2029da
	move.w ($a808).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$1,d1
loc_2029ee:
	move.w d0,(a1)+
	dbf d1,loc_2029ee
	move.w ($a80c).w,d0
	add.w ($f718).w,d0
	neg.w d0
	move.w #$1,d1
loc_202a02:
	move.w d0,(a1)+
	dbf d1,loc_202a02
	move.w #$5,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202a12:
	move.w d0,(a1)+
	dbf d1,loc_202a12
	move.w #$1,d1
	move.w ($f708).w,d0
	neg.w d0
loc_202a22:
	move.w d0,(a1)+
	dbf d1,loc_202a22
	move.w #$7,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202a32:
	move.w d0,(a1)+
	dbf d1,loc_202a32
	lea ($cc00).w,a1
	lea ($a810).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$1b,d1
	moveq #$1c,d5
	sub.w d3,d1
	bcs.s loc_202a62
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	bsr.w sub_202a94
loc_202a62:
	move.w ($f710).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	asl.l #$8,d2
	divs.w #$100,d2
	ext.l d2
	asl.l #$8,d2
	moveq #$0,d3
	move.w d0,d3
	move.w d5,d1
	lsl.w #$3,d1
	subq.w #$1,d1
loc_202a82:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d1,loc_202a82
	rts

sub_202a94:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202aa2(pc,d2.w)
loc_202aa0:
	move.w (a2)+,d0
loc_202aa2:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202aa0
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
	dbf d1,loc_202aa0
	rts

sub_202ad6:
	move.w ($f700).w,d4
	bsr.s sub_202b0a
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b08
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b02
	bset.b #$2,($f754).w
	rts
loc_202b02:
	bset.b #$3,($f754).w
loc_202b08:
	rts

sub_202b0a:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b1c
	bcs.s loc_202b4c
	bra.s loc_202b22
loc_202b1c:
	clr.w ($f73a).w
	rts
loc_202b22:
	cmpi.w #$10,d0
	blt.s loc_202b2c
	move.w #$10,d0
loc_202b2c:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b3a
	move.w ($f72a).w,d0
loc_202b3a:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b4c:
	cmpi.w #$fff0,d0
	bge.s loc_202b56
	move.w #$fff0,d0
loc_202b56:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b3a
	move.w ($f728).w,d0
	bra.s loc_202b3a
	.incbin 11110, 16

sub_202b76:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b8a
	subq.w #$5,d0
loc_202b8a:
	btst.b #$1,$22(a6)
	beq.s loc_202baa
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202bf6
	subi.w #$40,d0
	bcc.s loc_202bf6
	tst.b ($f75c).w
	bne.s loc_202c08
	bra.s loc_202bb6
loc_202baa:
	sub.w ($f73e).w,d0
	bne.s loc_202bbc
	tst.b ($f75c).w
	bne.s loc_202c08
loc_202bb6:
	clr.w ($f73c).w
	rts
loc_202bbc:
	cmpi.w #$60,($f73e).w
	bne.s loc_202be4
	move.w $14(a6),d1
	bpl.s loc_202bcc
	neg.w d1
loc_202bcc:
	cmpi.w #$800,d1
	bcc.s loc_202bf6
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c56
	cmpi.w #$fffa,d0
	blt.s loc_202c20
	bra.s loc_202c0e
loc_202be4:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c56
	cmpi.w #$fffe,d0
	blt.s loc_202c20
	bra.s loc_202c0e
loc_202bf6:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c56
	cmpi.w #$fff0,d0
	blt.s loc_202c20
	bra.s loc_202c0e
loc_202c08:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c0e:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c60
	bra.w loc_202c2c
loc_202c20:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c2c:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c84
	cmpi.w #$ff00,d1
	bgt.s loc_202c50
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c84
loc_202c50:
	move.w ($f72c).w,d1
	bra.s loc_202c84
loc_202c56:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c60:
	cmp.w ($f72e).w,d1
	blt.s loc_202c84
	subi.w #$800,d1
	bcs.s loc_202c80
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c84
loc_202c80:
	move.w ($f72e).w,d1
loc_202c84:
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
	bne.s loc_202cc6
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cc0
	bset.b #$0,($f754).w
	rts
loc_202cc0:
	bset.b #$1,($f754).w
loc_202cc6:
	rts

sub_202cc8:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202cfc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202cf6
	bset.b #$2,($f756).w
	bra.s loc_202cfc
loc_202cf6:
	bset.b #$3,($f756).w
loc_202cfc:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d30
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d2a
	bset.b #$0,($f756).w
	rts
loc_202d2a:
	bset.b #$1,($f756).w
loc_202d30:
	rts
	.incbin 11570, 154

sub_202dcc:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202dfe
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202df8
	bset.b d6,($f758).w
	bra.s loc_202dfe
loc_202df8:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202dfe:
	rts

sub_202e00:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e32
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e2c
	bset.b d6,($f75a).w
	bra.s loc_202e32
loc_202e2c:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e32:
	rts
	.incbin 11828, 44

sub_202e60:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f1e
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203002
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203004
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f1c
	bclr.b #$0,(a2)
	beq.s loc_202ed2
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203230
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203006
loc_202ed2:
	bclr.b #$1,(a2)
	beq.s loc_202eec
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203230
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203006
loc_202eec:
	bclr.b #$2,(a2)
	beq.s loc_202f02
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203230
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20305c
loc_202f02:
	bclr.b #$3,(a2)
	beq.s loc_202f1c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203230
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20305c
loc_202f1c:
	rts

sub_202f1e:
	lea (dat_2032e8).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f3a
	bclr.b #$1,(a2)
	beq.s loc_202f84
	move.w #$e0,d4
loc_202f3a:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fb4(pc,d0.w),a3
	beq.s loc_202f6c
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203230
	movem.l (a7)+,d4-d5
	bsr.w sub_203006
	movea.l (a7)+,a0
	bra.s loc_202f84
loc_202f6c:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203232
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203032
	movea.l (a7)+,a0
loc_202f84:
	tst.b (a2)
	bne.s loc_202f8a
	rts
loc_202f8a:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202f9e
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202f9e:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fc4
dat_202fb4:
	.incbin 12212, 16
loc_202fc4:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fcc:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_202ff6
	add.w d0,d0
	movea.l dat_202fb4(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203108
	movem.l (a7)+,d4-d5
	bsr.w sub_203230
	bsr.w sub_20308a
	movem.l (a7)+,d4-d5/a0
loc_202ff6:
	addi.w #$10,d4
	dbf d6,loc_202fcc
	clr.b (a2)
	rts

sub_203002:
	rts

sub_203004:
	rts

sub_203006:
	moveq #$15,d6

sub_203008:
	move.l #$800000,d7
	move.l d0,d1
loc_203010:
	movem.l d4-d5,-(a7)
	bsr.w sub_203108
	move.l d1,d0
	bsr.w sub_20308a
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203010
	rts

sub_203032:
	move.l #$800000,d7
	move.l d0,d1
loc_20303a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20310a
	move.l d1,d0
	bsr.w sub_20308a
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20303a
	rts

sub_20305c:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203066:
	movem.l d4-d5,-(a7)
	bsr.w sub_203108
	move.l d1,d0
	bsr.w sub_20308a
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203066
	rts

sub_20308a:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030c6
	btst.b #$3,(a0)
	bne.s loc_2030a6
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030a6:
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
loc_2030c6:
	btst.b #$3,(a0)
	bne.s loc_2030e8
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
loc_2030e8:
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

sub_203108:
	add.w (a3),d5

sub_20310a:
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
	beq.s loc_203158
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
loc_203158:
	rts
	.incbin 12634, 30
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
	.incbin 12690, 158

sub_203230:
	add.w (a3),d5

sub_203232:
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
	dc.b $d8,$6b,$00,$04,$da,$53
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$2,d0
	swap d0
	move.w d4,d0
	rts

sub_203268:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203292
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032ba

sub_203292:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203296:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203230
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203008
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203296
	rts
loc_2032ba:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032be:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032e8).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20331a
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032be
	rts
dat_2032e8:
	.incbin 13032, 34
dat_20330a:
	.incbin 13066, 16

sub_20331a:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20330a(pc,d0.w),a3
	beq.s loc_20333c
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203230
	movem.l (a7)+,d4-d5
	bsr.w sub_203006
	bra.s loc_203350
loc_20333c:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203232
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203032
loc_203350:
	rts

sub_203352:
	moveq #$0,d0
	lea (dat_20ed04).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20229a
	movea.l (a2)+,a0
	bsr.w sub_2033ac
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200480
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203396
	jmp (loc_20ca88).l
loc_203396:
	btst.b #$1,($ff151c).l
	beq.s loc_2033aa
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033aa
	bsr.w sub_2023c8
loc_2033aa:
	rts

sub_2033ac:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033b6:
	move.l d0,(a3)+
	dbf d1,loc_2033b6
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033cc
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033cc:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23b594).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033e6:
	move.w d1,d0
	movea.l a3,a0
loc_2033ea:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033ea
	lea $80(a3),a3
	dbf d2,loc_2033e6
	rts

sub_2033fa:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203474(pc,d0.w),d0
	jsr dat_203474(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203420
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203420:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20344e
	bcc.s loc_203450
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203444
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203444:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20344e:
	rts
loc_203450:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203468
	btst.b #$1,($d022).w
	beq.s loc_203468
	add.w d1,d1
	add.w d1,d1
loc_203468:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203474:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203494(pc,d0.w),d0
	jmp dat_203494(pc,d0.w)
dat_203494:
	dc.b $00,$06,$00,$66,$00,$6e
	cmpi.b #$1,($ff152e).l
	bne.s loc_2034fa
	cmpi.w #$1c16,($d008).w
	bcs.s loc_2034ba
	cmpi.w #$21c6,($d008).w
	bcc.s loc_2034ba
	move.w #$88,($f73e).w
loc_2034ba:
	move.w #$710,($f726).w
	cmpi.w #$840,($f700).w
	bcs.s loc_2034f8
	tst.b ($ff1510).l
	beq.s loc_2034e4
	cmpi.w #$820,($f728).w
	bcc.s loc_2034e4
	move.w #$820,($f728).w
	move.w #$820,($f720).w
loc_2034e4:
	move.w #$410,($f726).w
	cmpi.w #$e00,($f700).w
	bcs.s loc_2034f8
	move.w #$310,($f726).w
loc_2034f8:
	rts
loc_2034fa:
	move.w #$310,($f726).w
	rts
	.incbin 13570, 90
	move.w #$710,($f726).w
	rts
	.incbin 13668, 150
	rts
	.incbin 13820, 66
	rts
	.incbin 13888, 294

sub_203766:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20376e:
	move.b (a0),d0
	beq.s loc_203784
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b88).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203784:
	lea $40(a0),a0
	dbf d7,loc_20376e
	rts

sub_20378e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037cc
	bpl.s loc_2037be
	btst.b #$1,$2c(a0)
	beq.s loc_2037be
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037cc
loc_2037be:
	btst.b #$2,$2c(a0)
	bne.s loc_2037cc
	addi.w #$38,$12(a0)
loc_2037cc:
	tst.w $12(a0)
	bmi.s loc_2037e0
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037e0
	move.w #$1000,$12(a0)
loc_2037e0:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037f0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20382c
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20382c
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20382a
	neg.w d1
loc_20382a:
	add.w d1,d0
loc_20382c:
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

sub_203846:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038b6
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038d2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038d2
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203890
	cmpi.w #$800,d3
	bcs.s loc_2038a2
	subi.w #$800,d3
	bra.s loc_2038a2
loc_203890:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038a2
	cmpi.w #$100,d3
	bcc.s loc_2038a2
	addi.w #$800,d3
loc_2038a2:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038d2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038d2
loc_2038b6:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038d2
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038d2:
	rts
	.incbin 14548, 30

sub_2038f2:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2038f8:
	move.l d1,(a1)+
	dbf d0,loc_2038f8
	rts
dat_203900:
	.incbin 14592, 16

sub_203910:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_20391c:
	tst.w (a4)
	beq.w loc_2039dc
	moveq #$2,d6
loc_203924:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039d4
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_20398a
	movea.l dat_203900(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_20396e
	cmpi.w #$800,d2
	bcs.s loc_203980
	subi.w #$800,d2
	bra.s loc_203980
loc_20396e:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203980
	cmpi.w #$100,d2
	bcc.s loc_203980
	addi.w #$800,d2
loc_203980:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039ac
loc_20398a:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039ac
	.incbin 14740, 24
loc_2039ac:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039ca
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039ce
loc_2039ca:
	bsr.w sub_2039fe
loc_2039ce:
	bset.b #$7,$1(a0)
loc_2039d4:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203924
loc_2039dc:
	lea $80(a4),a4
	dbf d7,loc_20391c
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2039f6
	move.l #$0,(a2)
	rts
loc_2039f6:
	move.b #$0,-$5(a2)
	rts

sub_2039fe:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a44
	btst.l #$1,d4
	bne.w loc_203a92
loc_203a10:
	cmpi.b #$50,d5
	beq.s loc_203a42
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
	bne.s loc_203a3c
	addq.w #$1,d0
loc_203a3c:
	move.w d0,(a2)+
	dbf d1,loc_203a10
loc_203a42:
	rts
loc_203a44:
	btst.l #$1,d4
	bne.w loc_203ad8
loc_203a4c:
	cmpi.b #$50,d5
	beq.s loc_203a90
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
	bne.s loc_203a8a
	addq.w #$1,d0
loc_203a8a:
	move.w d0,(a2)+
	dbf d1,loc_203a4c
loc_203a90:
	rts
loc_203a92:
	cmpi.b #$50,d5
	beq.s loc_203ad6
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
	bne.s loc_203ad0
	addq.w #$1,d0
loc_203ad0:
	move.w d0,(a2)+
	dbf d1,loc_203a92
loc_203ad6:
	rts
loc_203ad8:
	cmpi.b #$50,d5
	beq.s loc_203b2a
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
	bne.s loc_203b24
	addq.w #$1,d0
loc_203b24:
	move.w d0,(a2)+
	dbf d1,loc_203ad8
loc_203b2a:
	rts
	.incbin 15148, 92
dat_203b88:
	.incbin 15240, 262

sub_203c8e:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ca0
	move.w #$0,(a1)
	rts
loc_203ca0:
	tst.w (a1)
	bne.s loc_203caa
	move.b #$1,$1(a1)
loc_203caa:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cf4
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203ce6
	neg.w $10(a0)
loc_203ce6:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a20
loc_203cf4:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d12
	cmpa.w #$d040,a0
	beq.s loc_203d12
	tst.b ($ff1906).l
	beq.s loc_203d12
	jmp (loc_206f96).l
loc_203d12:
	move.b $2a(a0),d0
	beq.s loc_203d3c
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d2e
	cmpi.b #$2d,d0
	bcs.s loc_203d38
	move.b #$2d,d0
	bra.s loc_203d38
loc_203d2e:
	cmpi.b #$1e,d0
	bcs.s loc_203d38
	move.b #$1e,d0
loc_203d38:
	move.b d0,$2a(a0)
loc_203d3c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d4a(pc,d0.w),d1
	jmp dat_203d4a(pc,d1.w)
dat_203d4a:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d54:
	tst.b ($d300).w
	bne.s loc_203d92
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d92:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dba
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dba:
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203dee:
	tst.b ($ff1506).l
	bne.s loc_203e54
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e54
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e58
	cmpi.b #$2f,d1
	bne.s loc_203e56
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e54
	tst.b $2c(a0)
	beq.s loc_203e54
	jsr (sub_207596).l
	bne.s loc_203e54
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e4c
	moveq #$0,d0
loc_203e4c:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e54:
	rts
loc_203e56:
	rts

sub_203e58:
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

sub_203e7e:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e8a
	neg.w d0
loc_203e8a:
	btst.b #$1,$2c(a0)
	beq.s loc_203e9a
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ec2
loc_203e9a:
	cmpi.w #$600,d0
	bcs.s loc_203ec2
	tst.w $14(a0)
	bpl.s loc_203eb4
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ed0
	move.w #$e0,d1
	bra.s loc_203ed0
loc_203eb4:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ed0
	move.w #$60,d1
	bra.s loc_203ed0
loc_203ec2:
	cmpi.w #$a0,d1
	beq.s loc_203ed0
	bcc.s loc_203ece
	addq.w #$2,d1
	bra.s loc_203ed0
loc_203ece:
	subq.w #$2,d1
loc_203ed0:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e7e
	bsr.w sub_203dee
	tst.w ($ff1588).l
	beq.s loc_203ef6
	btst.b #$4,($f605).w
	beq.s loc_203ef6
	move.b #$1,($ff1906).l
	rts
loc_203ef6:
	tst.b ($f7cc).w
	bne.s loc_203f02
	move.w ($f604).w,($f602).w
loc_203f02:
	btst.b #$0,$2c(a0)
	beq.s loc_203f26
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f20
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f3e
loc_203f20:
	bsr.w sub_204208
	bra.s loc_203f3e
loc_203f26:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f84(pc,d0.w),d1
	jsr dat_203f84(pc,d1.w)
	jsr (sub_2064d8).l
loc_203f3e:
	bsr.s sub_203f92
	bsr.w sub_204052
	bsr.w sub_20406c
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f66
	tst.b $1c(a0)
	bne.s loc_203f66
	move.b $1d(a0),$1c(a0)
loc_203f66:
	bsr.w sub_205410
	tst.b $2c(a0)
	bmi.s loc_203f7e
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f7e
	jsr (sub_206a7c).l
loc_203f7e:
	bsr.w sub_2052c6
	rts
dat_203f84:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203f92:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fb6
	move.w $30(a0),d0
	beq.s loc_203fa8
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fb6
loc_203fa8:
	btst.b #$6,$2c(a0)
	bne.s loc_203fb6
	jsr (sub_203846).l
loc_203fb6:
	tst.b ($ff151f).l
	beq.s loc_203ffa
	tst.w $32(a0)
	beq.s loc_203ffa
	subq.w #$1,$32(a0)
	bne.s loc_203ffa
	tst.b ($ff1520).l
	bne.s loc_203ff2
	tst.b ($ff1958).l
	bne.s loc_203ff2
	tst.b ($ff152e).l
	bne.s loc_203fec
	move.w #$e,d0
	jsr (sub_205a20).l
loc_203fec:
	jsr (sub_2019f2).l
loc_203ff2:
	move.b #$0,($ff151f).l
loc_203ffa:
	tst.b ($ff1520).l
	beq.s loc_204050
	tst.w $34(a0)
	beq.s loc_204050
	subq.w #$1,$34(a0)
	bne.s loc_204050
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204048
	tst.b ($ff1958).l
	bne.s loc_204048
	tst.b ($ff152e).l
	bne.s loc_204042
	move.w #$e,d0
	jsr (sub_205a20).l
loc_204042:
	jsr (sub_2019f2).l
loc_204048:
	move.b #$0,($ff1520).l
loc_204050:
	rts

sub_204052:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20406c:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204078
loc_204076:
	rts
loc_204078:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20408a
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204076
loc_20408a:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040ce
	bset.b #$6,$22(a0)
	bne.s loc_204076
	bsr.w sub_205d24
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204076
	bra.s loc_204106
loc_2040ce:
	tst.w $12(a0)
	beq.s loc_2040d6
	bpl.s loc_204076
loc_2040d6:
	bclr.b #$6,$22(a0)
	beq.s loc_204076
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204076
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204106
	move.w #$f000,$12(a0)
loc_204106:
	jsr (sub_207596).l
	bne.s loc_20411a
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20411a:
	rts

sub_20411c:
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
	bcs.s loc_2041f6
	move.l #$50000,d0
loc_2041f6:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204208:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20422e
	tst.b ($ff152e).l
	beq.s loc_204224
	cmpi.b #$2,($ff152e).l
	bne.s loc_20422e
loc_204224:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042de
loc_20422e:
	tst.b $2a(a0)
	bne.w loc_2042ec
	tst.b ($f784).w
	beq.w loc_2042ec
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_20424c
	neg.w d0
loc_20424c:
	tst.w ($f786).w
	bne.s loc_204258
	move.w #$1,($f786).w
loc_204258:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20426e
	move.b #$1,($ff1502).l
	bra.w loc_205a1c
loc_20426e:
	cmpi.w #$d2,d1
	bcs.s loc_2042c2
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042c0
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204298
	move.w #$82,d0
	jsr (sub_205a20).l
	moveq #$0,d0
loc_204298:
	add.b ($f784).w,d0
	bpl.s loc_2042a2
	moveq #$0,d0
	bra.s loc_2042aa
loc_2042a2:
	cmpi.b #$3,d0
	bcs.s loc_2042aa
	moveq #$2,d0
loc_2042aa:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_20411c
	move.b #$2,($ff1522).l
loc_2042c0:
	rts
loc_2042c2:
	cmpi.w #$5a,d1
	bcc.s loc_2042da
	cmp.w d2,d0
	bcc.w loc_203d54
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042da:
	cmp.w d2,d0
	bcc.s loc_2042ec
loc_2042de:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042ec:
	rts
	bsr.w sub_203c8e
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20431e
	tst.b ($ff195b).l
	beq.s loc_20430c
	cmpi.b #$79,$1a(a0)
	bne.s loc_204348
	bra.s loc_204314
loc_20430c:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204348
loc_204314:
	bsr.w sub_204bb0
	jmp (sub_20378e).l
loc_20431e:
	bsr.w sub_2043f6
	bsr.w sub_204208
	bsr.w sub_204c9a
	bsr.w sub_204dc6
	bsr.w sub_20446a
	bsr.w sub_204c1c
	bsr.w sub_204bb0
	jsr (sub_2037f0).l
	bsr.w sub_200b02
	bsr.w sub_204e44
loc_204348:
	rts
	tst.b ($f7c7).w
	bne.s loc_204364
	cmpi.b #$15,$1c(a0)
	beq.s loc_204364
	tst.w $12(a0)
	bmi.s loc_204364
	move.b #$0,$1c(a0)
loc_204364:
	bsr.w sub_2043f6
	bsr.w sub_204208
	bsr.w sub_204d84
	bsr.w sub_204ad0
	bsr.w sub_204bb0
	jsr (sub_20378e).l
	btst.b #$6,$22(a0)
	beq.s loc_20438c
	subi.w #$28,$12(a0)
loc_20438c:
	bsr.w sub_204e8e
	bsr.w sub_204eb2
	rts
	bsr.w sub_2043f6
	bsr.w sub_204208
	bsr.w sub_204c9a
	bsr.w sub_204e02
	bsr.w sub_20490a
	bsr.w sub_204bb0
	tst.b $2a(a0)
	bne.s loc_2043ba
	jsr (sub_2037f0).l
loc_2043ba:
	bsr.w sub_200b02
	bsr.w sub_204e44
	rts
	bsr.w sub_2043f6
	bsr.w sub_204208
	bsr.w sub_204d84
	bsr.w sub_204ad0
	bsr.w sub_204bb0
	jsr (sub_20378e).l
	btst.b #$6,$22(a0)
	beq.s loc_2043ec
	subi.w #$28,$12(a0)
loc_2043ec:
	bsr.w sub_204e8e
	bsr.w sub_204eb2
	rts

sub_2043f6:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204462
	tst.w ($ff1506).l
	bne.s loc_204462
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204464).l,a2
loc_20442a:
	move.b (a2)+,d0
	bmi.s loc_20443a
	cmp.b d0,d1
	bne.s loc_20442a
	bset.b #$1,$2c(a0)
	rts
loc_20443a:
	bclr.b #$1,$2c(a0)
	beq.s loc_204462
	tst.w $12(a0)
	bpl.s loc_204462
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204462
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204462
	neg.w $10(a0)
loc_204462:
	rts
dat_204464:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20446a:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204794
	tst.w $3e(a0)
	bne.w loc_204744
	btst.b #$2,($f602).w
	beq.s loc_204492
	bsr.w sub_204824
loc_204492:
	btst.b #$3,($f602).w
	beq.s loc_20449e
	bsr.w sub_20489a
loc_20449e:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204744
	tst.w $14(a0)
	beq.s loc_2044be
	tst.b $2a(a0)
	beq.w loc_204744
	bra.s loc_2044ca
loc_2044be:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044ca:
	btst.b #$3,$22(a0)
	beq.s loc_20451c
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204574
	cmpi.b #$1e,$0(a1)
	bne.s loc_2044fc
	move.b #$0,$1c(a0)
	bra.w loc_204744
loc_2044fc:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204558
	cmp.w d2,d1
	bge.s loc_204546
	bra.s loc_204574
loc_20451c:
	jsr (sub_2067e0).l
	cmpi.w #$c,d1
	blt.s loc_204574
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204550
loc_204546:
	btst.b #$0,$22(a0)
	bne.s loc_204560
	bra.s loc_20456a
loc_204550:
	cmpi.b #$3,$37(a0)
	bne.s loc_204574
loc_204558:
	btst.b #$0,$22(a0)
	bne.s loc_20456a
loc_204560:
	move.b #$32,$1c(a0)
	bra.w loc_204744
loc_20456a:
	move.b #$6,$1c(a0)
	bra.w loc_204744
loc_204574:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204588
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204588:
	btst.b #$7,($f788).w
	bne.w loc_20468c
	btst.b #$6,($f788).w
	bne.w loc_2046ac
	btst.b #$1,($f602).w
	bne.w loc_2046ac
	andi.b #$f,($f788).w
	beq.s loc_2045c0
	btst.b #$0,($f603).w
	beq.s loc_2045d4
	bset.b #$7,($f788).w
	bra.w loc_204768
loc_2045c0:
	btst.b #$0,($f603).w
	beq.w loc_2045d4
	move.b #$1,($f788).w
	bra.w loc_204768
loc_2045d4:
	btst.b #$0,($f602).w
	beq.s loc_204650
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204632
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204604
	asr.w #$1,d2
	sub.w d2,d1
loc_204604:
	btst.b #$0,$22(a0)
	beq.s loc_204610
	neg.w d0
	neg.w d1
loc_204610:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204626
	cmp.w d0,d1
	ble.s loc_20462c
	bra.s loc_20462a
loc_204626:
	cmp.w d1,d0
	ble.s loc_20462c
loc_20462a:
	move.w d1,d0
loc_20462c:
	move.w d0,$14(a0)
	rts
loc_204632:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20464c
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2021fe).l
loc_20464c:
	bra.w loc_204768
loc_204650:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204670
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046ac
loc_204670:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021fe).l
	bra.w loc_204744
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20468c:
	btst.b #$0,($f602).w
	beq.s loc_2046ac
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204768
	addq.w #$2,($f73e).w
	bra.w loc_204768
loc_2046ac:
	btst.b #$6,($f788).w
	bne.w loc_204728
	andi.b #$f,($f788).w
	beq.s loc_2046d0
	btst.b #$1,($f603).w
	beq.s loc_2046e2
	bset.b #$6,($f788).w
	bra.w loc_204768
loc_2046d0:
	btst.b #$1,($f603).w
	beq.s loc_2046e2
	move.b #$1,($f788).w
	bra.w loc_204768
loc_2046e2:
	btst.b #$1,($f602).w
	beq.s loc_204744
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204726
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204726
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204718
	neg.w $14(a0)
loc_204718:
	move.w #$9c,d0
	jsr (sub_2021fe).l
	bsr.w sub_204c44
loc_204726:
	bra.s loc_204768
loc_204728:
	btst.b #$1,($f602).w
	beq.s loc_204744
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204768
	subq.w #$2,($f73e).w
	bra.s loc_204768
loc_204744:
	cmpi.w #$60,($f73e).w
	bne.s loc_20475e
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204768
	move.b #$0,($f788).w
	bra.s loc_204768
loc_20475e:
	bcc.s loc_204764
	addq.w #$4,($f73e).w
loc_204764:
	subq.w #$2,($f73e).w
loc_204768:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204794
	move.w $14(a0),d0
	beq.s loc_204794
	bmi.s loc_204788
	sub.w d5,d0
	bcc.s loc_204782
	move.w #$0,d0
loc_204782:
	move.w d0,$14(a0)
	bra.s loc_204794
loc_204788:
	add.w d5,d0
	bcc.s loc_204790
	move.w #$0,d0
loc_204790:
	move.w d0,$14(a0)
loc_204794:
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047b2:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204822
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204822
	bmi.s loc_2047ca
	neg.w d1
loc_2047ca:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066a0
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204822
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20481e
	cmpi.b #$40,d0
	beq.s loc_20480c
	cmpi.b #$80,d0
	beq.s loc_204806
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204806:
	sub.w d1,$12(a0)
	rts
loc_20480c:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20481e:
	add.w d1,$12(a0)
loc_204822:
	rts

sub_204824:
	tst.b $2a(a0)
	bne.s loc_204898
	move.w $14(a0),d0
	beq.s loc_204832
	bpl.s loc_204862
loc_204832:
	bset.b #$0,$22(a0)
	bne.s loc_204846
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204846:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204856
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204856
	move.w d1,d0
loc_204856:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204862:
	sub.w d4,d0
	bcc.s loc_20486a
	move.w #$ff80,d0
loc_20486a:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204898
	cmpi.w #$400,d0
	blt.s loc_204898
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021fe).l
loc_204898:
	rts

sub_20489a:
	tst.b $2a(a0)
	bne.s loc_204908
	move.w $14(a0),d0
	bmi.s loc_2048d2
	bclr.b #$0,$22(a0)
	beq.s loc_2048ba
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048ba:
	cmp.w d6,d0
	bge.s loc_2048c6
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048c6
	move.w d6,d0
loc_2048c6:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048d2:
	add.w d4,d0
	bcc.s loc_2048da
	move.w #$80,d0
loc_2048da:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204908
	cmpi.w #$fc00,d0
	bgt.s loc_204908
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021fe).l
loc_204908:
	rts

sub_20490a:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a54
	tst.w $3e(a0)
	bne.s loc_204942
	btst.b #$2,($f602).w
	beq.s loc_204936
	bsr.w sub_204a8a
loc_204936:
	btst.b #$3,($f602).w
	beq.s loc_204942
	bsr.w sub_204aae
loc_204942:
	tst.b $2a(a0)
	beq.w loc_2049ec
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204962
	asr.w #$1,d2
	sub.w d2,d1
loc_204962:
	btst.b #$0,$22(a0)
	beq.s loc_20496e
	neg.w d0
	neg.w d1
loc_20496e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204984
	cmp.w d0,d1
	ble.s loc_20498a
	bra.s loc_204988
loc_204984:
	cmp.w d1,d0
	ble.s loc_20498a
loc_204988:
	move.w d1,d0
loc_20498a:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049be
	rts
loc_204998:
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a1e
loc_2049be:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204998
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021fe).l
	btst.b #$0,$22(a0)
	bne.s loc_2049e4
	bsr.w sub_204aae
	bra.s loc_2049ec
loc_2049e4:
	bsr.w sub_204a8a
	bra.s loc_2049ec
	dc.b $4e,$75
loc_2049ec:
	move.w $14(a0),d0
	beq.s loc_204a0e
	bmi.s loc_204a02
	sub.w d5,d0
	bcc.s loc_2049fc
	move.w #$0,d0
loc_2049fc:
	move.w d0,$14(a0)
	bra.s loc_204a0e
loc_204a02:
	add.w d5,d0
	bcc.s loc_204a0a
	move.w #$0,d0
loc_204a0a:
	move.w d0,$14(a0)
loc_204a0e:
	tst.w $14(a0)
	bne.s loc_204a54
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_204a1e:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a3e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a4e
loc_204a3e:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a4e:
	move.b #$5,$1c(a0)
loc_204a54:
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a78
	move.w #$1000,d1
loc_204a78:
	cmpi.w #$f000,d1
	bge.s loc_204a82
	move.w #$f000,d1
loc_204a82:
	move.w d1,$10(a0)
	bra.w loc_2047b2

sub_204a8a:
	move.w $14(a0),d0
	beq.s loc_204a92
	bpl.s loc_204aa0
loc_204a92:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204aa0:
	sub.w d4,d0
	bcc.s loc_204aa8
	move.w #$ff80,d0
loc_204aa8:
	move.w d0,$14(a0)
	rts

sub_204aae:
	move.w $14(a0),d0
	bmi.s loc_204ac2
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ac2:
	add.w d4,d0
	bcc.s loc_204aca
	move.w #$80,d0
loc_204aca:
	move.w d0,$14(a0)
	rts

sub_204ad0:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b0a
	tst.w ($ff1506).l
	bne.s loc_204b0a
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b02
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b02
	rts
loc_204b02:
	btst.b #$1,$2c(a0)
	bne.s loc_204b3a
loc_204b0a:
	btst.b #$2,($f602).w
	beq.s loc_204b24
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b24
	move.w d1,d0
loc_204b24:
	btst.b #$3,($f602).w
	beq.s loc_204b3a
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b3a
	move.w d6,d0
loc_204b3a:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b50
	bcc.s loc_204b4c
	addq.w #$4,($f73e).w
loc_204b4c:
	subq.w #$2,($f73e).w
loc_204b50:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b7e
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b7e
	bmi.s loc_204b72
	sub.w d1,d0
	bcc.s loc_204b6c
	move.w #$0,d0
loc_204b6c:
	move.w d0,$10(a0)
	rts
loc_204b72:
	sub.w d1,d0
	bcs.s loc_204b7a
	move.w #$0,d0
loc_204b7a:
	move.w d0,$10(a0)
loc_204b7e:
	rts
	.incbin 19328, 48

sub_204bb0:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c04
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204bde
	addi.w #$38,d0
loc_204bde:
	cmp.w d1,d0
	bls.s loc_204c04
loc_204be2:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204bf2
	rts
loc_204bf2:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d0e
	move.b #$6,$24(a0)
	rts
loc_204c04:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204be2

sub_204c1c:
	tst.b ($f7ca).w
	bne.s loc_204c42
	move.w $14(a0),d0
	bpl.s loc_204c2a
	neg.w d0
loc_204c2a:
	cmpi.w #$80,d0
	bcs.s loc_204c42
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c42
	btst.b #$1,($f602).w
	bne.s sub_204c44
loc_204c42:
	rts

sub_204c44:
	btst.b #$2,$22(a0)
	beq.s loc_204c4e
	bra.s loc_204c7e
loc_204c4e:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c6e
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c7e
loc_204c6e:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c7e:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c98
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c98
	move.w #$200,$14(a0)
loc_204c98:
	rts

sub_204c9a:
	tst.b $2a(a0)
	beq.s loc_204ca2
	rts
loc_204ca2:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cb4
	tst.w $14(a0)
	beq.w loc_204d7a
loc_204cb4:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d7a
	btst.b #$3,$22(a0)
	beq.s loc_204cd0
	jsr (sub_2059a6).l
	beq.s loc_204d00
loc_204cd0:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20670a
	cmpi.w #$6,d1
	blt.w loc_204d7a
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204cf6
	move.w #$380,d2
loc_204cf6:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d00:
	jsr (sub_200702).l
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
	jsr (sub_2021fe).l
	btst.b #$2,$22(a0)
	bne.s loc_204d7c
	tst.b ($ff195b).l
	beq.s loc_204d5e
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d6e
loc_204d5e:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d6e:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d7a:
	rts
loc_204d7c:
	bset.b #$4,$22(a0)
	rts

sub_204d84:
	tst.b $3c(a0)
	beq.s loc_204db6
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204d9a
	move.w #$fe00,d1
loc_204d9a:
	cmp.w $12(a0),d1
	ble.s loc_204db4
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204db4
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204db4:
	rts
loc_204db6:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dc4
	move.w #$f040,$12(a0)
loc_204dc4:
	rts

sub_204dc6:
	tst.b $2a(a0)
	bne.s loc_204e00
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e00
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e00
	bmi.s loc_204dfc
	tst.w d0
	beq.s loc_204dfa
	add.w d0,$14(a0)
loc_204dfa:
	rts
loc_204dfc:
	add.w d0,$14(a0)
loc_204e00:
	rts

sub_204e02:
	tst.b $2a(a0)
	bne.s loc_204e42
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e42
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e38
	tst.w d0
	bpl.s loc_204e32
	asr.l #$2,d0
loc_204e32:
	add.w d0,$14(a0)
	rts
loc_204e38:
	tst.w d0
	bmi.s loc_204e3e
	asr.l #$2,d0
loc_204e3e:
	add.w d0,$14(a0)
loc_204e42:
	rts

sub_204e44:
	nop
	tst.b $38(a0)
	bne.s loc_204e86
	tst.w $3e(a0)
	bne.s loc_204e88
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e86
	move.w $14(a0),d0
	bpl.s loc_204e68
	neg.w d0
loc_204e68:
	cmpi.w #$280,d0
	bcc.s loc_204e86
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e86:
	rts
loc_204e88:
	subq.w #$1,$3e(a0)
	rts

sub_204e8e:
	btst.b #$1,$2c(a0)
	bne.s loc_204eb0
	move.b $26(a0),d0
	beq.s loc_204eb0
	bpl.s loc_204ea6
	addq.b #$2,d0
	bcc.s loc_204ea4
	moveq #$0,d0
loc_204ea4:
	bra.s loc_204eac
loc_204ea6:
	subq.b #$2,d0
	bcc.s loc_204eac
	moveq #$0,d0
loc_204eac:
	move.b d0,$26(a0)
loc_204eb0:
	rts

sub_204eb2:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_20099a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204f96
	cmpi.b #$80,d0
	beq.w loc_204ff8
	cmpi.b #$c0,d0
	beq.w loc_205054
	bsr.w sub_206a20
	tst.w d1
	bpl.s loc_204f04
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f04:
	bsr.w sub_206882
	tst.w d1
	bpl.s loc_204f16
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f16:
	bsr.w sub_206732
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204f94
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f34
	cmp.b d2,d0
	blt.s loc_204f94
loc_204f34:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050b6
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f72
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f64
	asr.w $12(a0)
	bra.s loc_204f86
loc_204f64:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f72:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f86
	move.w #$fc0,$12(a0)
loc_204f86:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f94
	neg.w $14(a0)
loc_204f94:
	rts
loc_204f96:
	bsr.w sub_206a20
	tst.w d1
	bpl.s loc_204fb0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fb0:
	bsr.w sub_2068da
	tst.w d1
	bpl.s loc_204fca
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fc8
	move.w #$0,$12(a0)
loc_204fc8:
	rts
loc_204fca:
	tst.w $12(a0)
	bmi.s loc_204ff6
	bsr.w sub_206732
	tst.w d1
	bpl.s loc_204ff6
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050b6
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204ff6:
	rts
loc_204ff8:
	bsr.w sub_206a20
	tst.w d1
	bpl.s loc_20500a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20500a:
	bsr.w sub_206882
	tst.w d1
	bpl.s loc_20501c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20501c:
	bsr.w sub_2068da
	tst.w d1
	bpl.s loc_205052
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20503c
	move.w #$0,$12(a0)
	rts
loc_20503c:
	move.b d3,$26(a0)
	bsr.w sub_205128
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205052
	neg.w $14(a0)
loc_205052:
	rts
loc_205054:
	bsr.w sub_206882
	tst.w d1
	bpl.s loc_20506e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20506e:
	bsr.w sub_2068da
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
	bsr.w sub_206732
	tst.w d1
	bpl.s loc_2050b4
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050b6
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050b4:
	rts

sub_2050b6:
	btst.b #$4,$22(a0)
	beq.s loc_2050c0
	nop
loc_2050c0:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20511a
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050fa
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20510a
loc_2050fa:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20510a:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_20511a:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205128:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20808, 382

sub_2052c6:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052ee
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052ee
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052ee
	tst.b ($ff1506).l
	bne.w loc_2053b0
loc_2052ee:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_20532c
	tst.b ($ff1506).l
	bne.w loc_2053b2
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053b2
	bra.s loc_205334
loc_20532c:
	cmp.b ($f7af).w,d1
	beq.w loc_2053b2
loc_205334:
	cmp.b ($f7ac).w,d1
	beq.s loc_205364
	cmp.b ($f7ad).w,d1
	beq.s loc_205348
	bclr.b #$6,$1(a0)
	rts
loc_205348:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053ca
	btst.b #$1,$22(a0)
	beq.s loc_205364
	bclr.b #$6,$1(a0)
	rts
loc_205364:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205376
	bclr.b #$6,$1(a0)
	rts
loc_205376:
	cmpi.b #$e0,d2
	bcs.s loc_205384
	bset.b #$6,$1(a0)
	rts
loc_205384:
	btst.b #$6,$1(a0)
	bne.s loc_2053a0
	move.b $26(a0),d1
	beq.s loc_2053b0
	cmpi.b #$80,d1
	bhi.s loc_2053b0
	bset.b #$6,$1(a0)
	rts
loc_2053a0:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053b0
	bclr.b #$6,$1(a0)
loc_2053b0:
	rts
loc_2053b2:
	btst.b #$2,$22(a0)
	bne.s loc_2053c4
	move.w #$9c,d0
	jsr (sub_2021fe).l
loc_2053c4:
	jmp (sub_204c44).l
loc_2053ca:
	tst.w $12(a0)
	bmi.s loc_20540e
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205402
	cmpi.w #$38,d1
	bcs.s loc_2053fa
	cmpi.w #$80,d1
	bcs.s loc_20540e
loc_2053f2:
	bclr.b #$6,$1(a0)
	rts
loc_2053fa:
	bset.b #$6,$1(a0)
	rts
loc_205402:
	cmpi.w #$38,d1
	bcs.s loc_2053f2
	cmpi.w #$80,d1
	bcc.s loc_2053fa
loc_20540e:
	rts

sub_205410:
	lea (dat_205700).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205432
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205432:
	bsr.w sub_2056a2
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054aa
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205478
	move.b d0,$1e(a0)

sub_20545c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205470
	bpl.s loc_205470
	cmpi.b #$fd,d0
	bge.s loc_20547a
loc_205470:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205478:
	rts
loc_20547a:
	addq.b #$1,d0
	bne.s loc_20548a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205470
loc_20548a:
	addq.b #$1,d0
	bne.s loc_20549e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205470
loc_20549e:
	addq.b #$1,d0
	bne.s loc_2054a8
	move.b $2(a1,d1.w),$1c(a0)
loc_2054a8:
	rts
loc_2054aa:
	subq.b #$1,$1e(a0)
	bpl.s loc_205478
	addq.b #$1,d0
	bne.w loc_205564
	tst.b ($ff195b).l
	bne.w loc_20562c
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054d2
	not.b d0
loc_2054d2:
	btst.b #$1,$2c(a0)
	bne.s loc_2054e0
	addi.b #$10,d0
	bra.s loc_2054e2
loc_2054e0:
	addq.b #$8,d0
loc_2054e2:
	bpl.s loc_2054e6
	moveq #$3,d1
loc_2054e6:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055d8
	move.w $14(a0),d2
	bpl.s loc_205504
	neg.w d2
loc_205504:
	btst.b #$1,$2c(a0)
	beq.s loc_20551c
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205902).l,a1
	bra.s loc_205546
loc_20551c:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058dc).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205546
	lea (dat_205780).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205546
	lea (dat_205778).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205546:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205554
	moveq #$0,d2
loc_205554:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_20545c
	add.b d3,$1a(a0)
	rts
loc_205564:
	addq.b #$1,d0
	bne.s loc_2055d4
	move.w $14(a0),d2
	bpl.s loc_205570
	neg.w d2
loc_205570:
	lea (dat_20585e).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055ae
	lea (dat_205790).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055a2
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055ae
	lea (dat_20590a).l,a1
	bra.s loc_2055ae
loc_2055a2:
	cmpi.w #$600,d2
	bcc.s loc_2055ae
	lea (dat_205788).l,a1
loc_2055ae:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055b8
	moveq #$0,d2
loc_2055b8:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20545c
loc_2055d4:
	addq.b #$1,d0
	bne.s loc_205618
loc_2055d8:
	move.w $14(a0),d2
	bmi.s loc_2055e0
	neg.w d2
loc_2055e0:
	addi.w #$800,d2
	bpl.s loc_2055e8
	moveq #$0,d2
loc_2055e8:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205870).l,a1
	tst.b ($ff195b).l
	bne.s loc_205602
	lea (dat_205798).l,a1
loc_205602:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_20545c
loc_205618:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_20562c:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20563e
	not.b d0
loc_20563e:
	addi.b #$10,d0
	bpl.s loc_205646
	moveq #$0,d1
loc_205646:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205674
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205564
loc_205674:
	move.w $14(a0),d2
	bpl.s loc_20567c
	neg.w d2
loc_20567c:
	lea (dat_205858).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20568e
	lea (dat_205852).l,a1
loc_20568e:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205698
	moveq #$0,d2
loc_205698:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_20545c

sub_2056a2:
	tst.b ($ff195b).l
	beq.s loc_2056ae
	move.b dat_2056b0(pc,d0.w),d0
loc_2056ae:
	rts
dat_2056b0:
	.incbin 22192, 80
dat_205700:
	.incbin 22272, 120
dat_205778:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205780:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205788:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205790:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205798:
	.incbin 22424, 186
dat_205852:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205858:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20585e:
	.incbin 22622, 18
dat_205870:
	.incbin 22640, 108
dat_2058dc:
	.incbin 22748, 38
dat_205902:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20590a:
	.incbin 22794, 56

sub_205942:
	tst.b (a0)
	beq.w loc_2059a4
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059a4
	move.b d0,(a2)
	lea (dat_231b1c).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059a4
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205976:
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
loc_205990:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205990
	dbf d1,loc_205976
loc_2059a4:
	rts

sub_2059a6:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a1a
	move.w #$98,d0
	jsr (sub_2021fe).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_20099a).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205a08
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a08:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a1a:
	rts
loc_205a1c:
	move.w #$e,d0

sub_205a20:
	cmpi.w #$67,d0
	bne.s loc_205a2e
	move.b #$1,($ff1958).l
loc_205a2e:
	move.w d0,($a12010).l
loc_205a34:
	move.w ($a12020).l,d0
	beq.s loc_205a34
	cmp.w ($a12020).l,d0
	bne.s loc_205a34
	move.w #$0,($a12010).l
loc_205a4c:
	move.w ($a12020).l,d0
	bne.s loc_205a4c
	move.w ($a12020).l,d0
	bne.s loc_205a4c
	rts
	dc.b $00,$00

sub_205a60:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a7c
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a7c:
	subq.b #$1,$1e(a0)
	bpl.s loc_205abc
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205abe
loc_205a98:
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
loc_205abc:
	rts
loc_205abe:
	addq.b #$1,d0
	bne.s loc_205ace
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a98
loc_205ace:
	addq.b #$1,d0
	bne.s loc_205ae2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a98
loc_205ae2:
	addq.b #$1,d0
	bne.s loc_205aec
	move.b $2(a1,d1.w),$1c(a0)
loc_205aec:
	addq.b #$1,d0
	bne.s loc_205af4
	addq.b #$2,$24(a0)
loc_205af4:
	addq.b #$1,d0
	bne.s loc_205b02
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b02:
	addq.b #$1,d0
	bne.s loc_205b0a
	addq.b #$2,$25(a0)
loc_205b0a:
	rts
	.incbin 23308, 536

sub_205d24:
	rts
	.incbin 23846, 116

sub_205d9a:
	tst.b $25(a0)
	bne.s loc_205dca
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207596).l
	bne.s loc_205dca
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dca:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dda(pc,d0.w),d0
	jmp dat_205dda(pc,d0.w)
dat_205dda:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e02
	andi.b #$7f,$2(a0)
loc_205e02:
	move.l #$21db14,$4(a0)
	bsr.s sub_205d9a
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e30
	move.w #$100,$1c(a0)
loc_205e30:
	lea (dat_21db00).l,a1
	bsr.w sub_205a60
	jmp (sub_203846).l
	tst.b $25(a0)
	beq.s loc_205e4c
	jmp (sub_2038f2).l
loc_205e4c:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e6e(pc,d0.w),d0
	jsr dat_205e6e(pc,d0.w)
	jmp (sub_203846).l
dat_205e6e:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e9c
	andi.b #$7f,$2(a0)
loc_205e9c:
	move.l #$236ab0,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ec2
	bsr.w sub_205f2e
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f24
loc_205ec2:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067e0).l
	tst.w d1
	bpl.s loc_205f20
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f0a
	bsr.w sub_205f2e
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f54
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f0a:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f24
loc_205f20:
	addq.w #$2,$c(a0)
loc_205f24:
	lea (dat_236a94).l,a1
	bra.w sub_205a60

sub_205f2e:
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

sub_205f54:
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
	bra.s loc_205f24
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f24
	.incbin 24464, 86
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206000(pc,d0.w),d0
	jsr dat_206000(pc,d0.w)
	jsr (sub_203846).l
	jmp (loc_2075cc).l
dat_206000:
	dc.b $00,$58,$00,$92,$00,$a2,$00,$ac

sub_206008:
	tst.w $12(a1)
	bpl.s loc_20604a
	bsr.w sub_2060be
	beq.s loc_20604a
	move.b #$4,$24(a0)
	tst.b $28(a0)
	bne.s loc_206048
	jsr (sub_207596).l
	bne.s loc_206048
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$4,$c(a1)
	move.w #$a4,d0
	jmp (sub_2021fe).l
loc_206048:
	rts
loc_20604a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d4a).l
	addq.b #$2,$24(a0)
	move.l #$21dac4,$4(a0)
	move.b #$1,$18(a0)
	ori.b #$4,$1(a0)
	move.b #$2c,$19(a0)
	cmpi.b #$2,$28(a0)
	bne.s loc_206084
	move.b #$18,$19(a0)
loc_206084:
	move.b #$8,$16(a0)
	moveq #$c,d0
	jsr (sub_20caf2).l
	lea ($d000).w,a1
	bsr.w sub_206008
	lea ($d040).w,a1
	bra.w sub_206008
	.incbin 24738, 28

sub_2060be:
	move.w $8(a1),d0
	sub.w $8(a0),d0
	moveq #$0,d1
	move.b $19(a0),d1
	add.w d1,d0
	bmi.s loc_2060f2
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2060f2
	move.w $c(a1),d0
	sub.w $c(a0),d0
	moveq #$0,d1
	move.b $16(a0),d1
	add.w d1,d0
	bmi.s loc_2060f2
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_2060f2
	moveq #$1,d0
	rts
loc_2060f2:
	moveq #$0,d0
	rts
	.incbin 24822, 414
loc_206294:
	move.b ($d022).w,$22(a0)
	lea (dat_21d800).l,a1
	jsr (sub_205a60).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062b8
	rts
loc_2062b8:
	cmp.b $24(a0),d0
	beq.s loc_2062ce
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2062ce:
	jmp (sub_203846).l
loc_2062d4:
	bclr.b #$7,($ff156b).l
	beq.s loc_206322
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206324(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2062f8:
	move.l (a1)+,(a2)+
	dbf d0,loc_2062f8
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206322:
	rts
dat_206324:
	.incbin 25380, 92
loc_206380:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_20643c
	cmpi.b #$6,$24(a1)
	bcc.w loc_20643c
	bsr.w sub_2064a0
	beq.w loc_20643c
	tst.b $28(a0)
	bne.s loc_2063ee
	move.w $10(a1),d0
	bpl.s loc_2063ae
	neg.w d0
loc_2063ae:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_2063c0
	move.w #$d00,d1
loc_2063c0:
	cmp.w d1,d0
	bcc.s loc_2063c6
	move.w d1,d0
loc_2063c6:
	tst.w $10(a1)
	bpl.s loc_2063ce
	neg.w d0
loc_2063ce:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_20641e
	neg.w $14(a1)
	bra.s loc_20641e
loc_2063ee:
	cmpi.b #$2,$28(a0)
	bcc.s loc_20643e
	move.w $12(a1),d0
	bpl.s loc_2063fe
	neg.w d0
loc_2063fe:
	cmpi.w #$d00,d0
	bcc.s loc_206408
	move.w #$d00,d0
loc_206408:
	tst.w $12(a1)
	bpl.s loc_206410
	neg.w d0
loc_206410:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_20641e:
	bset.b #$2,$22(a1)
	bne.s loc_20643c
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_20643c:
	rts
loc_20643e:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_20648a
	cmpi.b #$2,$28(a0)
	bne.s loc_20645a
	tst.w $12(a1)
	bpl.s loc_20641e
	bra.s loc_206460
loc_20645a:
	tst.w $12(a1)
	bmi.s loc_20641e
loc_206460:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206472
	btst.l #$2,d1
	beq.s loc_20641e
	neg.w d0
loc_206472:
	cmpi.b #$2,$28(a0)
	beq.s loc_206480
	bset.b #$1,$22(a1)
loc_206480:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20641e
loc_20648a:
	tst.w $10(a1)
	bmi.s loc_20641e
	btst.l #$0,d1
	beq.w loc_20641e
	move.w #$f600,d0
	bra.w loc_206410

sub_2064a0:
	tst.b ($ff1906).l
	bne.s loc_2064d4
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_2064d4
	cmpi.w #$50,d0
	bcc.s loc_2064d4
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_2064d4
	cmpi.w #$50,d0
	bcc.s loc_2064d4
	moveq #$1,d0
	rts
loc_2064d4:
	moveq #$0,d0
	rts

sub_2064d8:
	rts
loc_2064da:
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
	dc.b $31,$f9,$00,$ff
loc_20657c:
	move.b (a6)+,-$8e4(a2)
	cmpi.b #$6,($ff1506).l
	bne.s loc_206594
	move.b ($ff1593).l,($ff195b).l
loc_206594:
	tst.b ($ff1522).l
	bpl.s loc_2065aa
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065aa:
	rts

sub_2065ac:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064da
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
	bne.s loc_206666
	move.b ($ff1591).l,($ff195b).l
loc_206666:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206688
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206688:
	tst.b ($ff1522).l
	bpl.s loc_20669e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20669e:
	rts

sub_2066a0:
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
	bpl.s loc_2066dc
	move.b d1,d0
	bpl.s loc_2066d6
	subq.b #$1,d0
loc_2066d6:
	addi.b #$20,d0
	bra.s loc_2066e6
loc_2066dc:
	move.b d1,d0
	bpl.s loc_2066e2
	addq.b #$1,d0
loc_2066e2:
	addi.b #$1f,d0
loc_2066e6:
	andi.b #$c0,d0
	beq.w loc_2067b6
	cmpi.b #$80,d0
	beq.w loc_206952
	andi.b #$38,d1
	bne.s loc_2066fe
	addq.w #$8,d2
loc_2066fe:
	cmpi.b #$40,d0
	beq.w loc_206a28
	bra.w loc_20688a

sub_20670a:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069b0
	cmpi.b #$80,d0
	beq.w sub_2068da
	cmpi.b #$c0,d0
	beq.w loc_20681a

sub_206732:
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
	jsr (sub_201058).l
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
	jsr (sub_201058).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206796:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067a4
	move.b ($f768).w,d3
	exg d0,d1
loc_2067a4:
	btst.l #$0,d3
	beq.s loc_2067ac
	move.b d2,d3
loc_2067ac:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2067b6:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201058).l
	move.b #$0,d2
loc_2067d2:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067de
	move.b d2,d3
loc_2067de:
	rts

sub_2067e0:
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
	jsr (sub_201058).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206818
	move.b #$0,d3
loc_206818:
	rts
loc_20681a:
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
	jsr (sub_2011c8).l
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
	jsr (sub_2011c8).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206796

sub_206882:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20688a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b #$c0,d2
	bra.w loc_2067d2
	.incbin 26794, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2068d8
	move.b #$c0,d3
loc_2068d8:
	rts

sub_2068da:
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
	jsr (sub_201058).l
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
	jsr (sub_201058).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206796

sub_20694a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206952:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201058).l
	move.b #$80,d2
	bra.w loc_2067d2
	.incbin 26998, 58
loc_2069b0:
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
	jsr (sub_2011c8).l
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
	jsr (sub_2011c8).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206796

sub_206a20:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a28:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b #$40,d2
	bra.w loc_2067d2
	dc.b $d6,$68,$00,$08,$34,$28,$00,$0c
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a7a
	move.b #$40,d3
loc_206a7a:
	rts

sub_206a7c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206aa0
	addi.w #$c,d3
	moveq #$a,d5
loc_206aa0:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206aae:
	tst.b $1(a1)
	bpl.s loc_206aba
	move.b $20(a1),d0
	bne.s loc_206ac6
loc_206aba:
	lea $40(a1),a1
	dbf d6,loc_206aae
	moveq #$0,d0
	rts
loc_206ac6:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e2c).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206aee
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206af4
	bra.w loc_206aba
loc_206aee:
	cmp.w d4,d0
	bhi.w loc_206aba
loc_206af4:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b0c
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b12
	bra.w loc_206aba
loc_206b0c:
	cmp.w d5,d0
	bhi.w loc_206aba
loc_206b12:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b86
	cmpi.b #$c0,d1
	beq.w loc_206d66
	tst.b d1
	bmi.w loc_206c50
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b4a
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206b48
	addq.b #$2,$24(a1)
loc_206b48:
	rts
loc_206b4a:
	tst.w $12(a0)
	bpl.s loc_206b74
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206b84
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206b84
	addq.b #$4,$25(a1)
	rts
loc_206b74:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206b84
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206b84:
	rts

sub_206b86:
	tst.b ($ff1521).l
	bne.s loc_206ba0
	tst.b ($ff151f).l
	bne.s loc_206ba0
	cmpi.b #$2,$1c(a0)
	bne.w loc_206c50
loc_206ba0:
	tst.b $21(a1)
	beq.s loc_206bca
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206bc8
	bset.b #$7,$22(a1)
loc_206bc8:
	rts
loc_206bca:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206be2
	moveq #$6,d0
loc_206be2:
	move.w d0,$3e(a1)
	move.w dat_206c42(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206bfc
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206bfc:
	bsr.w sub_20ab5c
	move.w #$96,d0
	jsr (sub_2021fe).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c32
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c3a
	neg.w $12(a0)
	rts
loc_206c32:
	addi.w #$100,$12(a0)
	rts
loc_206c3a:
	subi.w #$100,$12(a0)
	rts
dat_206c42:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206c4a:
	bset.b #$7,$22(a1)
loc_206c50:
	tst.b ($ff1521).l
	bne.s loc_206c60
	tst.b ($ff151f).l
	beq.s loc_206c64
loc_206c60:
	moveq #$ffffffff,d0
	rts
loc_206c64:
	nop
	tst.w $30(a0)
	bne.s loc_206c60
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206c9a
	tst.w ($ff1512).l
	beq.w loc_206d04
	jsr (sub_207596).l
	bne.s loc_206c9a
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206c9a:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206cb0
	move.b #$0,($ff156f).l
loc_206cb0:
	move.b #$4,$24(a0)
	bsr.w sub_2050b6
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206ce0
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206ce0:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206cee
	neg.w $10(a0)
loc_206cee:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d04:
	tst.w ($ff1588).l
	bne.w loc_206c9a

sub_206d0e:
	tst.w ($ff1906).l
	bne.s loc_206d62
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050b6
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2021fe).l
loc_206d62:
	moveq #$ffffffff,d0
	rts
loc_206d66:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206e18
	cmpi.b #$b,d1
	beq.w loc_206de2
	cmpi.b #$c,d1
	beq.w loc_206de6
	cmpi.b #$17,d1
	beq.w loc_206e18
	cmpi.b #$21,d1
	beq.w loc_206e18
	cmpi.b #$23,d1
	beq.w loc_206e18
	cmpi.b #$2f,d1
	beq.w loc_206e1e
	cmpi.b #$3a,d1
	beq.w loc_206e1e
	cmpi.b #$3b,d1
	beq.w loc_206e1e
	cmpi.b #$1,($f7aa).w
	bne.s loc_206de0
	cmpi.b #$3c,d1
	blt.s loc_206de0
	cmpi.b #$3f,d1
	bgt.s loc_206de0
	bsr.w sub_206b86
	tst.b $20(a1)
	bne.s loc_206dd8
	addq.b #$3,$21(a1)
loc_206dd8:
	clr.b $20(a1)
	bra.w loc_206e18
loc_206de0:
	rts
loc_206de2:
	bra.w loc_206c4a
loc_206de6:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206e14
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206e00
	subi.w #$10,d0
loc_206e00:
	sub.w d2,d0
	bcc.s loc_206e0c
	addi.w #$18,d0
	bcs.s loc_206e10
	bra.s loc_206e14
loc_206e0c:
	cmp.w d4,d0
	bhi.s loc_206e14
loc_206e10:
	bra.w loc_206c50
loc_206e14:
	bra.w sub_206b86
loc_206e18:
	addq.b #$1,$21(a1)
	rts
loc_206e1e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e2a
	addq.b #$1,$21(a1)
loc_206e2a:
	rts
dat_206e2c:
	.incbin 28204, 362
loc_206f96:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206fac
	move.l #$4000,(dat_207126).l
	bra.s loc_206fcc
loc_206fac:
	addi.l #$2000,(dat_207126).l
	cmpi.l #$80000,(dat_207126).l
	bls.s loc_206fcc
	move.l #$80000,(dat_207126).l
loc_206fcc:
	move.l (dat_207126).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206fde
	sub.l d0,$c(a0)
loc_206fde:
	btst.b #$1,($f604).w
	beq.s loc_206fea
	add.l d0,$c(a0)
loc_206fea:
	btst.b #$2,($f604).w
	beq.s loc_206ff6
	sub.l d0,$8(a0)
loc_206ff6:
	btst.b #$3,($f604).w
	beq.s loc_207002
	add.l d0,$8(a0)
loc_207002:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e70).l
	move.w (a1),($ff194e).l
	lea (dat_20712a).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207044
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20703e
	move.b #$0,d1
loc_20703e:
	move.b d1,($ff1904).l
loc_207044:
	btst.b #$7,($f605).w
	beq.s loc_207064
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20705e
	add.b (a2),d1
loc_20705e:
	move.b d1,($ff1904).l
loc_207064:
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
	beq.s loc_2070f0
	bsr.w sub_207596
	bne.s loc_2070f0
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
loc_2070f0:
	btst.b #$4,($f605).w
	beq.s loc_207120
	move.b #$0,($ff1906).l
	move.l #$230f60,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207120:
	jmp (sub_203846).l
dat_207126:
	dc.b $00,$00,$40,$00
dat_20712a:
	.incbin 28970, 602

sub_207384:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207392:
	clr.l (a2)+
	dbf d0,loc_207392
	rts

sub_20739a:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2073a8(pc,d0.w),d0
	jmp dat_2073a8(pc,d0.w)
dat_2073a8:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207648).l,a0
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
	bcc.s loc_2073e6
	moveq #$0,d6
loc_2073e6:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2073ee:
	cmp.w (a0),d6
	bls.s loc_207400
	tst.b $4(a0)
	bpl.s loc_2073fc
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2073fc:
	addq.w #$8,a0
	bra.s loc_2073ee
loc_207400:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207420
loc_20740e:
	cmp.w (a0),d6
	bls.s loc_207420
	tst.b $4(a0)
	bpl.s loc_20741c
	addq.b #$1,$1(a2)
loc_20741c:
	addq.w #$8,a0
	bra.s loc_20740e
loc_207420:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20750a
	bge.s loc_2074b0
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20748c
loc_20745a:
	cmp.w -$8(a0),d6
	bge.s loc_20748c
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207470
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207470:
	bsr.w sub_20752e
	bne.s loc_20747a
	subq.w #$8,a0
	bra.s loc_20745a
loc_20747a:
	tst.b $4(a0)
	bpl.s loc_20748a
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20748a:
	addq.w #$8,a0
loc_20748c:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207498:
	cmp.w -$8(a0),d6
	bgt.s loc_2074aa
	tst.b -$4(a0)
	bpl.s loc_2074a6
	subq.b #$1,(a2)
loc_2074a6:
	subq.w #$8,a0
	bra.s loc_207498
loc_2074aa:
	move.l a0,($f770).w
	rts
loc_2074b0:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2074c4:
	cmp.w (a0),d6
	bls.s loc_2074e6
	tst.b $4(a0)
	bpl.s loc_2074d2
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074d2:
	bsr.w sub_20752e
	beq.s loc_2074c4
	tst.b $4(a0)
	bpl.s loc_2074e6
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2074e6:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207506
loc_2074f4:
	cmp.w (a0),d6
	bls.s loc_207506
	tst.b $4(a0)
	bpl.s loc_207502
	addq.b #$1,$1(a2)
loc_207502:
	addq.w #$8,a0
	bra.s loc_2074f4
loc_207506:
	move.l a0,($f774).w
loc_20750a:
	rts

sub_20750c:
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

sub_20752e:
	bsr.s sub_20750c
	beq.s loc_207540
	tst.b $4(a0)
	bpl.s loc_207546
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207546
loc_207540:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207546:
	bsr.w sub_207596
	bne.s loc_207594
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
	bpl.s loc_207576
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207576:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207588
	nop
	nop
	nop
	nop
loc_207588:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207594:
	rts

sub_207596:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20759e:
	tst.b (a1)
	beq.s loc_2075aa
	lea $40(a1),a1
	dbf d0,loc_20759e
loc_2075aa:
	rts

sub_2075ac:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2075ca
loc_2075be:
	tst.b (a1)
	beq.s loc_2075ca
	lea $40(a1),a1
	dbf d0,loc_2075be
loc_2075ca:
	rts
loc_2075cc:
	move.w $8(a0),d0
loc_2075d0:
	tst.b $1(a0)
	bmi.s loc_20763a
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20763a
loc_2075ee:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207630
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207628
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207620
	moveq #$0,d1
	bra.s loc_207628
loc_207620:
	cmpi.w #$3,d1
	bcs.s loc_207628
	moveq #$2,d1
loc_207628:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207630:
	jsr (sub_2038f2).l
	moveq #$1,d0
	rts
loc_20763a:
	btst.b #$7,($ff152e).l
	bne.s loc_2075ee
	moveq #$0,d0
	rts
dat_207648:
	.incbin 30280, 5562

sub_208c02:
	btst.b #$3,$22(a0)
	beq.s loc_208c72
	btst.b #$3,$22(a1)
	beq.s loc_208c72
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208c72
	tst.b $2a(a1)
	beq.s loc_208c34
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_208c34:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208c60
	cmpi.b #$17,$1c(a1)
	beq.s loc_208c60
	bclr.b #$0,$2c(a1)
loc_208c60:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c72
	bclr.b #$1,$22(a1)
loc_208c72:
	rts

sub_208c74:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c86
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c86:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208ce6
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208ca8
	bclr.b #$3,$22(a0)
	bra.w sub_208c02
loc_208ca8:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208ce6
	tst.b ($ff195b).l
	beq.s loc_208cd0
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208ce0
loc_208cd0:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208ce0:
	move.b #$0,$1c(a1)
loc_208ce6:
	bset.b #$3,$22(a1)
	beq.s loc_208d08
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208d40
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208d08:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208d34
	cmpi.b #$2,$24(a0)
	beq.s loc_208d3a
loc_208d34:
	move.w $10(a1),$14(a1)
loc_208d3a:
	bclr.b #$1,$22(a1)
loc_208d40:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208d4a:
	move.b #$1,$25(a0)

sub_208d50:
	cmpi.b #$17,$1c(a1)
	beq.w loc_209004
	btst.b #$6,$2c(a1)
	bne.w loc_209004
	cmpi.b #$6,$24(a1)
	bcc.w loc_209004
	tst.b $0(a1)
	beq.w loc_209004
	tst.b $1(a0)
	bpl.w loc_209004
	tst.b ($ff1906).l
	bne.w loc_209004
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_209004
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_209004
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208dbe
	btst.b #$3,$22(a0)
	bne.s loc_208dd0
	bra.w loc_209004
loc_208dbe:
	cmpi.b #$1,$25(a0)
	bne.s loc_208dd0
	tst.w $12(a1)
	beq.s loc_208dd0
	bmi.w loc_209004
loc_208dd0:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_209004
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_209004
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208e06
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208e06:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208e14
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208e14:
	cmp.w d4,d5
	bcs.w loc_208ea8
	cmpi.b #$1,$25(a0)
	beq.w loc_209004
	cmpi.b #$a,$0(a0)
	bne.s loc_208e36
	btst.b #$1,$22(a1)
	bne.w loc_209004
loc_208e36:
	cmpi.b #$4,d5
	bls.w loc_209004
	bsr.w sub_209054
	move.l d0,-(a7)
	bsr.w sub_208c02
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208e60
	tst.w $10(a1)
	beq.s loc_208e90
	bpl.s loc_208e68
	bra.s loc_208e90
loc_208e60:
	tst.w $10(a1)
	beq.s loc_208e90
	bpl.s loc_208e90
loc_208e68:
	bsr.w sub_209014
	btst.b #$1,$22(a1)
	bne.s loc_208e86
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e86:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e90:
	bsr.w sub_2090ca
	bsr.w sub_209014
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208ea8:
	cmpi.b #$19,$0(a0)
	bne.s loc_208eba
	btst.b #$2,$22(a1)
	bne.w loc_209004
loc_208eba:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208ed0
	bmi.w loc_208fa0
loc_208ed0:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208ee2
	tst.w $12(a1)
	beq.s loc_208ee2
	bmi.w loc_209004
loc_208ee2:
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
	beq.s loc_208f2e
	bpl.s loc_208f0e
	neg.b d0
loc_208f0e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066a0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f2e
	tst.w $10(a0)
	bpl.s loc_208f2a
	neg.w d1
loc_208f2a:
	add.w d1,$8(a1)
loc_208f2e:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f98
	tst.w $12(a0)
	bmi.s loc_208f6c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206732).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f6c
	add.w d1,$c(a1)
	bra.w loc_209004
loc_208f6c:
	tst.w $12(a0)
	bpl.s loc_208f98
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20694a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f98
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d0e).l
	movem.l (a7)+,a0-a1
	bra.s loc_209004
loc_208f98:
	bsr.w sub_208c74
	moveq #$1,d0
	rts
loc_208fa0:
	cmpi.b #$1,$25(a0)
	beq.s loc_209004
	cmpi.b #$9,$0(a0)
	beq.s loc_209004
	cmpi.b #$a,$0(a0)
	bne.s loc_208fca
	cmpi.b #$2,$25(a0)
	beq.s loc_208fea
	btst.b #$1,$1(a0)
	bne.s loc_208fea
	bra.s loc_209004
loc_208fca:
	btst.b #$1,$22(a1)
	bne.s loc_208fea
	tst.w $12(a0)
	beq.s loc_208fea
	bmi.s loc_208fea
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d0e).l
	movem.l (a7)+,a0-a1
loc_208fea:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_2090ca
	bsr.w sub_208c02
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_209004:
	bsr.w sub_2090ca
	bsr.w sub_208c02
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_209014:
	tst.w $10(a0)
	beq.s loc_209052
	cmpi.b #$a,$0(a0)
	beq.s loc_209052
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_20902e
	neg.b d0
loc_20902e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066a0).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209052
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d0e).l
	movem.l (a7)+,a0-a1
loc_209052:
	rts

sub_209054:
	cmpi.b #$a,$0(a0)
	bne.s loc_209064
	move.b #$0,$20(a1)
	rts
loc_209064:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090b8
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_2090c8
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209086
	tst.w $10(a2)
	beq.s loc_2090c8
loc_209086:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209098
	cmp.w $8(a2),d1
	bcs.s loc_2090c8
	bra.s loc_20909e
loc_209098:
	cmp.w $8(a2),d1
	bcc.s loc_2090c8
loc_20909e:
	cmpi.b #$15,$0(a0)
	beq.s loc_2090c8
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d0e).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_2090b8:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_2090c8:
	rts

sub_2090ca:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090e4
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2090e4
	move.b #$0,$20(a1)
loc_2090e4:
	rts
	.incbin 37094, 968
loc_2094ae:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094bc(pc,d0.w),d0
	jmp dat_2094bc(pc,d0.w)
dat_2094bc:
	.incbin 38076, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2094ae
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209512
	tst.b $1(a0)
	bpl.s loc_20951a
loc_209512:
	move.w dat_20956c(pc,d0.w),d1
	jsr dat_20956c(pc,d1.w)
loc_20951a:
	bsr.w sub_203846
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_20954c
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20954c:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038f2
	rts
dat_20956c:
	.incbin 38252, 26
	addq.b #$2,$24(a0)
	move.l #$2098ee,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2095dc
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2098f4,$4(a0)
	bra.s loc_20961e
loc_2095dc:
	btst.l #$3,d0
	beq.s loc_20960a
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20993e,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20caf2).l
	move.l (a7)+,d0
	bra.s loc_20961e
loc_20960a:
	btst.b #$1,$1(a0)
	beq.s loc_20961e
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_20961e:
	btst.l #$1,d0
	beq.s loc_20962a
	bset.b #$5,$2(a0)
loc_20962a:
	andi.w #$2,d0
	move.w dat_209636(pc,d0.w),$30(a0)
	rts
dat_209636:
	dc.b $f0,$00,$f6,$00

sub_20963a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d50).l
	tst.b $1(a0)
	bpl.s loc_209656
	lea ($d000).w,a1
	bsr.s sub_20963a
	bne.s loc_209658
loc_209656:
	rts
loc_209658:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2021fe).l
	lea (dat_2098e0).l,a1
	bra.w sub_205a60
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 38572, 564
dat_2098e0:
	.incbin 39136, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2099da(pc,d0.w),d1
	jmp dat_2099da(pc,d1.w)
dat_2099da:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2099e4:
	.incbin 39396, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a3c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a34
	moveq #$0,d1
	bra.s loc_209a3c
loc_209a34:
	cmpi.w #$3,d1
	bcs.s loc_209a3c
	moveq #$2,d1
loc_209a3c:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209a58
	moveq #$6,d1
loc_209a58:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2099e4).l,a1
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
	beq.s loc_209aa8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209aa0
	moveq #$0,d0
	bra.s loc_209aa8
loc_209aa0:
	cmpi.w #$3,d0
	bcs.s loc_209aa8
	moveq #$2,d0
loc_209aa8:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b76
	dbf d0,loc_209aa8
	bclr.b #$7,(a2)
	bra.s loc_209afe
loc_209aba:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ae6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ade
	moveq #$0,d0
	bra.s loc_209ae6
loc_209ade:
	cmpi.w #$3,d0
	bcs.s loc_209ae6
	moveq #$2,d0
loc_209ae6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b76
	dbf d0,loc_209ae6
	bclr.b #$7,(a2)
	bsr.w sub_2075ac
	bne.w loc_209b82
loc_209afe:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209e48,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b54
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209b54
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209b54:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209b76:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209aba
loc_209b82:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ba8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ba0
	moveq #$0,d0
	bra.s loc_209ba8
loc_209ba0:
	cmpi.w #$3,d0
	bcs.s loc_209ba8
	moveq #$2,d0
loc_209ba8:
	lea $1(a2),a3
loc_209bac:
	btst.b #$0,-(a3)
	bne.w sub_2038f2
	dbf d0,loc_209bac
	tst.b $1(a0)
	bmi.s loc_209bdc
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209c56
loc_209bdc:
	tst.w ($ff190e).l
	bne.s loc_209bec
	move.b ($ff1913).l,$1a(a0)
loc_209bec:
	bra.w sub_203846
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c5a
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209c3c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209c34
	moveq #$0,d1
	bra.s loc_209c3c
loc_209c34:
	cmpi.w #$3,d1
	bcs.s loc_209c3c
	moveq #$2,d1
loc_209c3c:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209e40).l,a1
	bsr.w sub_205a60
	bra.w sub_203846
loc_209c56:
	bra.w sub_2038f2

sub_209c5a:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209caa
	bset.b #$1,($ff150d).l
	beq.s loc_209c94
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209caa
	bset.b #$2,($ff150d).l
	bne.s loc_209caa
loc_209c94:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a20).l
loc_209caa:
	jmp (sub_2021fe).l
	.incbin 40112, 400
dat_209e40:
	.incbin 40512, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a000(pc,d0.w),d0
	jsr dat_20a000(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038f2
	rts
dat_20a000:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a148,$4(a0)
	moveq #$5,d0
	jsr (sub_20caf2).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a114
	tst.b ($ff152e).l
	beq.s loc_20a07a
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a060
	btst.b #$3,$22(a0)
	bne.s loc_20a080
	bra.s loc_20a07a
loc_20a060:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a07a
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a07a:
	jmp (sub_203846).l
loc_20a080:
	addq.b #$2,$24(a0)
	bsr.w sub_20a114
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a0a0
	jmp (sub_2038f2).l
loc_20a0a0:
	jmp (sub_203846).l
	.incbin 41126, 110

sub_20a114:
	lea ($d000).w,a1
	bsr.w sub_20a11c

sub_20a11c:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d4a).l
	.incbin 41258, 106
loc_20a194:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a1c2(pc,d0.w),d0
	jsr dat_20a1c2(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a1c0
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a1ba
	btst.b #$0,($ff1505).l
	bne.s loc_20a1c0
loc_20a1ba:
	jmp (sub_203846).l
loc_20a1c0:
	rts
dat_20a1c2:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a79c,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a1f6
	move.b #$13,$1a(a0)
loc_20a1f6:
	rts
loc_20a1f8:
	tst.b ($ff0f01).l
	beq.s loc_20a206
	jmp (sub_2038f2).l
loc_20a206:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a194
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a22a(pc,d0.w),d0
	jsr dat_20a22a(pc,d0.w)
	jsr (sub_203846).l
	jmp (loc_2075cc).l
dat_20a22a:
	.incbin 41514, 282

sub_20a344:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a37c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a374
	moveq #$0,d1
	bra.s loc_20a37c
loc_20a374:
	cmpi.w #$3,d1
	bcs.s loc_20a37c
	moveq #$2,d1
loc_20a37c:
	add.w d1,d0
	rts

sub_20a380:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3a2
	tst.b ($ff1956).l
	beq.s loc_20a39a
	tst.b $29(a0)
	bne.s loc_20a3a2
	rts
loc_20a39a:
	tst.b $29(a0)
	beq.s loc_20a3a2
	rts
loc_20a3a2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208d50).l
	tst.b $28(a0)
	bne.s loc_20a3c4
	tst.b ($ff0f01).l
	beq.s loc_20a3c4
	jmp (loc_2075cc).l
loc_20a3c4:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a1f8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a3dc(pc,d0.w),d1
	jmp dat_20a3dc(pc,d1.w)
dat_20a3dc:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a79c,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a426
	tst.b $29(a0)
	bne.s loc_20a426
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a426:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a344
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a452
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a452:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a4ac
	move.b $25(a0),d0
	beq.s loc_20a48c
	bsr.w sub_20378e
	jsr (sub_2067e0).l
	tst.w d1
	bpl.w loc_20a49a
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a49a
loc_20a48c:
	tst.b $1(a0)
	bpl.s loc_20a49a
	lea ($d000).w,a1
	bsr.w sub_20a380
loc_20a49a:
	tst.w ($ff190e).l
	bne.s loc_20a4ac
	lea (dat_20a714).l,a1
	bsr.w sub_205a60
loc_20a4ac:
	bsr.w sub_203846
	jmp (loc_2075cc).l
	move.w #$96,d0
	jsr (sub_2021fe).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207596
	bne.s loc_20a4ee
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_20a4ee:
	bsr.w sub_207596
	bne.s loc_20a518
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_20a518:
	bsr.w sub_20a344
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203846
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a53e(pc,d0.w),d1
	jsr dat_20a53e(pc,d1.w)
	bra.w sub_203846
dat_20a53e:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_20a55a
	andi.b #$7f,$2(a0)
loc_20a55a:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$20a79c,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20a5a2
	bsr.w sub_2037f0
	addi.w #$18,$12(a0)
	rts
loc_20a5a2:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_20a5c8
loc_20a5b2:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a20).l
loc_20a5c8:
	cmpi.b #$1,d0
	bne.s loc_20a614
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a60a
	bset.b #$1,($ff150d).l
	beq.w loc_20a5b2
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a60a
	bset.b #$2,($ff150d).l
	beq.w loc_20a5b2
loc_20a60a:
	move.w #$95,d0
	jmp (sub_2021fe).l
loc_20a614:
	cmpi.b #$2,d0
	bne.s loc_20a632

sub_20a61a:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_2021fe).l
loc_20a632:
	cmpi.b #$3,d0
	bne.s loc_20a694

sub_20a638:
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
	bne.s loc_20a688
	move.w #$82,d0
	jsr (sub_205a20).l
loc_20a688:
	move.w #$6d,d0
	jmp (sub_205a20).l
	dc.b $4e,$75
loc_20a694:
	cmpi.b #$4,d0
	bne.s loc_20a6d6
loc_20a69a:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_20a6cc
	move.w #$82,d0
	jsr (sub_205a20).l
loc_20a6cc:
	move.w #$6c,d0
	jmp (sub_205a20).l
loc_20a6d6:
	cmpi.b #$5,d0
	bne.s loc_20a6e6
	move.w #$12c,($ff190e).l
	rts
loc_20a6e6:
	cmpi.b #$6,d0
	bne.s loc_20a700
	move.w #$9d,d0
	jsr (sub_2021fe).l
	move.b #$1,($ff156f).l
	rts
loc_20a700:
	bsr.w sub_20a61a
	bsr.w sub_20a638
	bra.s loc_20a69a
	subq.w #$1,$1e(a0)
	bmi.w sub_2038f2
	rts
dat_20a714:
	.incbin 42772, 586
loc_20a95e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a972(pc,d0.w),d0
	jsr dat_20a972(pc,d0.w)
	jmp (sub_203846).l
dat_20a972:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a9b2,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a9ac
	jmp (sub_2038f2).l
loc_20a9ac:
	subq.w #$2,$c(a0)
	rts
	.incbin 43442, 82
	tst.b $28(a0)
	bmi.w loc_20a95e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa1a(pc,d0.w),d0
	jmp dat_20aa1a(pc,d0.w)
dat_20aa1a:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20aab4,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20aa4a
	move.b #$3,$1a(a0)
	bra.s loc_20aa6a
loc_20aa4a:
	tst.w ($ff1588).l
	beq.s loc_20aa58
	move.b #$2,$1a(a0)
loc_20aa58:
	tst.b $28(a0)
	beq.s loc_20aa6a
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20aa6a:
	tst.b $28(a0)
	bne.s loc_20aaae
	tst.b $29(a0)
	beq.s loc_20aa9a
	tst.w ($ff1512).l
	beq.s loc_20aa86
	bclr.b #$5,$2(a0)
	bra.s loc_20aaae
loc_20aa86:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20aaae
	eori.b #$20,$2(a0)
	bra.s loc_20aaae
loc_20aa9a:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20aaae
	move.b #$2,$1a(a0)
loc_20aaae:
	jmp (sub_203846).l
	.incbin 43700, 168

sub_20ab5c:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ab78
	move.l d1,(a3)
loc_20ab78:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20aba2
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a20).l
loc_20aba2:
	rts
loc_20aba4:
	tst.w ($ff1588).l
	beq.s loc_20abfa
	bsr.w sub_20adf6
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
	lea (dat_20af56).l,a2
	moveq #$2,d6
	bsr.w sub_20afae
	bra.w loc_20ac54
loc_20abfa:
	tst.b ($ff1511).l
	beq.s loc_20ac1e
	bpl.s loc_20ac08
	bsr.w sub_20ada0
loc_20ac08:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ae90
loc_20ac1e:
	tst.b ($ff150f).l
	beq.s loc_20ac54
	bpl.s loc_20ac2c
	bsr.w sub_20ad8c
loc_20ac2c:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20ac50
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20ac50:
	bsr.w sub_20ae86
loc_20ac54:
	tst.w ($ff1588).l
	bne.w loc_20ad00
	tst.b ($ff1510).l
	beq.w loc_20ad00
	tst.w ($f63a).w
	bne.w loc_20ad00
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ad5e
	tst.b ($f7cc).w
	bne.s loc_20acaa
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20acaa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20acaa
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20acaa
	move.b #$9,(a1)
loc_20acaa:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20af9c
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20afa6
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20acfc
	move.w #$63,d1
loc_20acfc:
	bsr.w sub_20afa6
loc_20ad00:
	tst.b ($ff150e).l
	beq.s loc_20ad12
	clr.b ($ff150e).l
	bsr.w sub_20af7c
loc_20ad12:
	tst.b ($f7d6).w
	beq.s loc_20ad5c
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ad32
	move.l #$6d400001,d0
loc_20ad32:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ae14
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ad52
	move.l #$6e800001,d0
loc_20ad52:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ae14
loc_20ad5c:
	rts
loc_20ad5e:
	btst.b #$7,($ff152e).l
	bne.s loc_20ad8a
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d0e
	move.b #$1,($ff150c).l
loc_20ad8a:
	rts

sub_20ad8c:
	move.l #$73600002,($c00004).l
	lea dat_20adf2(pc),a2
	move.w #$2,d2
	bra.s loc_20adbc

sub_20ada0:
	lea ($c00000).l,a6
	bsr.w sub_20af7c
	move.l #$70600002,($c00004).l
	lea dat_20adea(pc),a2
	move.w #$6,d2
loc_20adbc:
	lea (dat_236456).l,a1
loc_20adc2:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20adde
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20add2:
	move.l (a3)+,(a6)
	dbf d1,loc_20add2
loc_20add8:
	dbf d2,loc_20adc2
	rts
loc_20adde:
	move.l #$0,(a6)
	dbf d1,loc_20adde
	bra.s loc_20add8
dat_20adea:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20adf2:
	dc.b $ff,$ff,$00,$00

sub_20adf6:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20af72
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20af72

sub_20ae14:
	lea (dat_20af4e).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20ae24:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae28:
	sub.l d3,d1
	bcs.s loc_20ae30
	addq.w #$1,d2
	bra.s loc_20ae28
loc_20ae30:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae3a
	move.w #$1,d4
loc_20ae3a:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ae46
	tst.w d6
	bne.s loc_20ae78
loc_20ae46:
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
loc_20ae6c:
	addi.l #$400000,d0
	dbf d6,loc_20ae24
	rts
loc_20ae78:
	moveq #$f,d5
loc_20ae7a:
	move.l #$0,(a6)
	dbf d5,loc_20ae7a
	bra.s loc_20ae6c

sub_20ae86:
	lea (dat_20af56).l,a2
	moveq #$2,d6
	bra.s loc_20ae98

sub_20ae90:
	lea (dat_20af4a).l,a2
	moveq #$5,d6
loc_20ae98:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20aea0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20aea4:
	sub.l d3,d1
	bcs.s loc_20aeac
	addq.w #$1,d2
	bra.s loc_20aea4
loc_20aeac:
	add.l d3,d1
	tst.w d2
	beq.s loc_20aeb6
	move.w #$1,d4
loc_20aeb6:
	tst.w d4
	beq.s loc_20aee4
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
loc_20aee4:
	addi.l #$400000,d0
	dbf d6,loc_20aea0
	rts
	.incbin 44784, 32
loc_20af10:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af14:
	sub.l d3,d1
	bcs.s loc_20af1c
	addq.w #$1,d2
	bra.s loc_20af14
loc_20af1c:
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
	dbf d6,loc_20af10
	rts
dat_20af4a:
	dc.b $00,$01,$86,$a0
dat_20af4e:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20af56:
	dc.b $00,$00,$00,$64
dat_20af5a:
	dc.b $00,$00,$00,$0a
dat_20af5e:
	dc.b $00,$00,$00,$01
dat_20af62:
	.incbin 44898, 16

sub_20af72:
	moveq #$3,d6
	lea (dat_20af62).l,a2
	bra.s sub_20afae

sub_20af7c:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20af92
	moveq #$9,d1
loc_20af92:
	lea (dat_20af5e).l,a2
	moveq #$0,d6
	bra.s sub_20afae

sub_20af9c:
	lea (dat_20af5e).l,a2
	moveq #$0,d6
	bra.s sub_20afae

sub_20afa6:
	lea (dat_20af5a).l,a2
	moveq #$1,d6

sub_20afae:
	moveq #$0,d4
	lea (dat_236456).l,a1
loc_20afb6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20afba:
	sub.l d3,d1
	bcs.s loc_20afc2
	addq.w #$1,d2
	bra.s loc_20afba
loc_20afc2:
	add.l d3,d1
	tst.w d2
	beq.s loc_20afcc
	move.w #$1,d4
loc_20afcc:
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
	dbf d6,loc_20afb6
	rts
	jsr (sub_20e96a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b026(pc,d0.w),d0
	jsr dat_20b026(pc,d0.w)
	jsr (sub_203846).l
	move.w $2e(a0),d0
	jmp (loc_2075d0).l
dat_20b026:
	.incbin 45094, 672
	jsr (sub_20e96a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b2ea(pc,d0.w),d0
	jsr dat_20b2ea(pc,d0.w)
	jsr (sub_203846).l
	move.w $2a(a0),d0
	jmp (loc_2075d0).l
dat_20b2ea:
	.incbin 45802, 1278
	jsr (sub_20e96a).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b80c(pc,d0.w),d0
	jsr dat_20b80c(pc,d0.w)
	jsr (sub_203846).l
	move.w $2a(a0),d0
	jmp (loc_2075d0).l
dat_20b80c:
	.incbin 47116, 4502
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9bc(pc,d0.w),d0
	jsr dat_20c9bc(pc,d0.w)
	jsr (sub_203846).l
	jmp (loc_2075cc).l
dat_20c9bc:
	.incbin 51644, 204
loc_20ca88:
	lea dat_20cada(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ca94:
	cmp.w (a1)+,d0
	bcs.s loc_20ca9c
	addq.b #$2,d1
	bra.s loc_20ca94
loc_20ca9c:
	move.b d1,($ff1574).l
	move.w dat_20caea(pc,d1.w),d0
	jmp (sub_2023c8).l

sub_20caac:
	lea dat_20cada(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cab8:
	cmp.w (a1)+,d0
	bcs.s loc_20cac0
	addq.b #$2,d1
	bra.s loc_20cab8
loc_20cac0:
	cmp.b ($ff1574).l,d1
	bne.s loc_20caca
	rts
loc_20caca:
	move.b d1,($ff1574).l
	move.w dat_20cae2(pc,d1.w),d0
	jmp (loc_2023fa).l
dat_20cada:
	dc.b $07,$00,$11,$00,$1a,$00,$ff,$ff
dat_20cae2:
	dc.b $00,$07,$00,$08,$00,$09,$00,$0a
dat_20caea:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06

sub_20caf2:
	lea (dat_20cb14).l,a1
	add.w d0,d0
	move.w dat_20cb14(pc,d0.w),d4
	lea dat_20cb14(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cb14:
	.incbin 51988, 68
	jsr (sub_20e9b2).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20cc7a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb78(pc,d0.w),d0
	jmp dat_20cb78(pc,d0.w)
dat_20cb78:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20cdf2,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20cd48
	bsr.w sub_20cd56
	tst.b $28(a0)
	bmi.s loc_20cbc6
	move.b #$4,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20cbc6:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20cc5a
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20cbfe
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20cd48
loc_20cbfe:
	move.b d0,$2e(a0)
	lea dat_20cd74(pc),a1
	jsr (sub_205a60).l
	jsr (sub_203846).l
	move.w $2a(a0),d0
	jmp (loc_2075d0).l
	.incbin 52252, 62

sub_20cc5a:
	move.b $2e(a0),d0
	jsr (sub_200702).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20cc7a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc88(pc,d0.w),d0
	jmp dat_20cc88(pc,d0.w)
dat_20cc88:
	dc.b $00,$06,$00,$4c,$00,$94
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ce06,$4(a0)
	move.w $8(a0),$2a(a0)
	bsr.w sub_20cd56
	tst.b $28(a0)
	bmi.s loc_20ccca
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20ccca:
	move.b #$4,$24(a0)
	bra.w sub_20cd48
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_2067e0).l
	tst.w d1
	bpl.s loc_20cd10
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20cd48
loc_20cd10:
	jsr (sub_203846).l
	jmp (loc_2075cc).l
	.incbin 52508, 44

sub_20cd48:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20cd56:
	lea dat_20ce2a(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20cd74:
	.incbin 52596, 182
dat_20ce2a:
	.incbin 52778, 976
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d21e(pc,d0.w),d0
	jsr dat_20d21e(pc,d0.w)
	cmpi.b #$2,($ff1507).l
	beq.s loc_20d218
	jsr (sub_203846).l
loc_20d218:
	jmp (loc_2075cc).l
dat_20d21e:
	.incbin 53790, 382
	ori.b #$4,$1(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$20,$16(a0)
	move.b #$4,$18(a0)
	move.w #$43c,$2(a0)
	cmpi.b #$3,($ff1506).l
	beq.s loc_20d3d0
	ori.b #$80,$2(a0)
loc_20d3d0:
	move.l #$21ddb4,$4(a0)
	lea ($d000).w,a6
	move.w $c(a6),d0
	sub.w $c(a0),d0
	addi.w #$80,d0
	bmi.s loc_20d432
	cmpi.w #$100,d0
	bcc.s loc_20d432
	move.w $8(a0),d0
	cmp.w $8(a6),d0
	bcc.s loc_20d432
	move.w ($f700).w,($f728).w
	move.w ($f700).w,($f720).w
	clr.b ($ff1510).l
	move.b #$78,$2a(a0)
	move.b #$0,$1a(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1520).l
	clr.b ($ff151f).l
	move.w #$9d,d0
	jmp (sub_2021fe).l
loc_20d432:
	rts
	.incbin 54324, 1386
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9ac(pc,d0.w),d0
	jmp dat_20d9ac(pc,d0.w)
dat_20d9ac:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e0aa,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e06a).l,a2
loc_20d9fa:
	jsr (sub_207596).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e0aa,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20da4c
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20da4c:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20d9fa
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20da74
	bge.s loc_20da6a
	neg.w d0
loc_20da6a:
	add.w d0,$a(a0)
	jmp (sub_203846).l
loc_20da74:
	addq.b #$4,$24(a0)
	jmp (sub_203846).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20da98
	bge.s loc_20da8e
	neg.w d0
loc_20da8e:
	add.w d0,$8(a0)
	jmp (sub_203846).l
loc_20da98:
	addq.b #$4,$24(a0)
	jmp (sub_203846).l
	tst.b $1e(a0)
	beq.s loc_20dab2
	subq.b #$1,$1e(a0)
	jmp (sub_203846).l
loc_20dab2:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dacc
	bge.s loc_20dac2
	neg.w d0
loc_20dac2:
	add.w d0,$a(a0)
	jmp (sub_203846).l
loc_20dacc:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2023c8).l
	tst.b $1e(a0)
	beq.s loc_20daee
	subq.b #$1,$1e(a0)
	jmp (sub_203846).l
loc_20daee:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20db08
	bge.s loc_20dafe
	neg.w d0
loc_20dafe:
	add.w d0,$8(a0)
	jmp (sub_203846).l
loc_20db08:
	jmp (sub_2038f2).l
	tst.l ($f680).w
	bne.s loc_20db22
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2038f2).l
loc_20db22:
	rts
	.incbin 56100, 1350
dat_20e06a:
	.incbin 57450, 2304

sub_20e96a:
	tst.b ($ff156a).l
	beq.s loc_20e9b0
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e982
	tst.b $28(a0)
	beq.s loc_20e9b0
loc_20e982:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2038f2).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e9ae
	move.w #$9e,d0
	jsr (sub_2021fe).l
loc_20e9ae:
	addq.l #$4,a7
loc_20e9b0:
	rts

sub_20e9b2:
	tst.b $28(a0)
	bmi.s loc_20e9e2
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e9d2
	tst.b ($ff156d).l
	bne.s loc_20e9e2
	addq.l #$4,a7
	jmp (loc_2075cc).l
loc_20e9d2:
	tst.b ($ff156a).l
	bne.s loc_20e9e2
	addq.l #$4,a7
	jmp (sub_2038f2).l
loc_20e9e2:
	rts
	.incbin 59876, 20
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$18,$16(a0)
	move.b #$ef,$20(a0)
	move.w #$44be,$2(a0)
	move.l #$20eb3e,$4(a0)
	move.b $28(a0),$1a(a0)
	tst.b $21(a0)
	beq.s loc_20ea54
	clr.w $20(a0)
	addq.b #$2,$24(a0)
	lea ($d000).w,a1
	move.w $10(a1),$2a(a0)
	move.w $12(a1),$2e(a0)
	bra.s loc_20ea6a
loc_20ea54:
	lea ($d000).w,a1
	jsr (sub_208d50).l
	jsr (sub_203846).l
	jmp (loc_2075cc).l
loc_20ea6a:
	move.w #$b0,d0
	jsr (sub_2021fe).l
	lea ($d000).w,a6
	asr.w $10(a6)
	lea dat_20ec76(pc),a5
	moveq #$0,d0
	move.b $28(a0),d0
	lsl.w #$3,d0
	adda.w d0,a5
	lea dat_20ecb6(pc),a4
	lea dat_20ecce(pc),a3
	moveq #$5,d6
	movea.w a0,a1
	bra.s loc_20ead0
loc_20ea98:
	jsr (sub_207596).l
	bne.s loc_20eb08
	move.b $0(a0),$0(a1)
	move.b $24(a0),$24(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	move.l $4(a0),$4(a1)
	move.w $2(a0),$2(a1)
loc_20ead0:
	move.b #$8,$17(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b (a5)+,$1a(a1)
	move.w (a4)+,d0
	move.w (a4)+,d1
	add.w d0,$8(a1)
	add.w d1,$c(a1)
	move.l (a3)+,d0
	move.l (a3)+,$2e(a1)
	tst.w $10(a6)
	bpl.s loc_20eb00
	neg.l d0
loc_20eb00:
	move.l d0,$2a(a1)
	dbf d6,loc_20ea98
loc_20eb08:
	addi.l #$4000,$2e(a0)
	move.l $2a(a0),d0
	move.l $2e(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$ff20,d0
	ble.s loc_20eb38
	jmp (sub_203846).l
loc_20eb38:
	jmp (sub_2038f2).l
	.incbin 60222, 312
dat_20ec76:
	.incbin 60534, 64
dat_20ecb6:
	.incbin 60598, 24
dat_20ecce:
	.incbin 60622, 48

sub_20ecfe:
	jmp (loc_2062d4).l
dat_20ed04:
	.incbin 60676, 16
dat_20ed14:
	.incbin 60692, 1148
	jmp (loc_206380).l
	.incbin 61846, 2600
	jmp (loc_20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 55824
dat_21d800:
	.incbin 120832, 768
dat_21db00:
	.incbin 121600, 9472
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
