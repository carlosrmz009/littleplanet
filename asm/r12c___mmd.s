; R12C__.MMD
; disassembled from the disc; code only, data comes from data/R12C__.MMD at build time
	.file "R12C__.MMD", 262144

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
	lea (dat_2385b8).l,a2
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
	lea (dat_2386b8).l,a2
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
	lea (dat_2385b8).l,a2
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
	lea (dat_2386b8).l,a2
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
	lea (dat_2385b8).l,a2
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
	lea (dat_2396b8).l,a2
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
	lea (dat_2385b8).l,a2
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
	lea (dat_2396b8).l,a2
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
	bsr.w sub_207388
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
	lea (dat_20ef86).l,a2
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
	bsr.w sub_20290a
	bset.b #$2,($f754).w
	bsr.w sub_203356
	bsr.w sub_20326c
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
	jsr (sub_20ef80).l
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
	jsr (sub_205a24).l
	bsr.w sub_207388
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
	jsr (sub_20739e).l
	jsr (sub_20376a).l
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
	bsr.w sub_20290a
loc_201894:
	jsr (sub_203914).l
	tst.w ($ff190e).l
	bne.s loc_2018a6
	bsr.w sub_200184
loc_2018a6:
	jsr (sub_20cae6).l
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
	jmp (sub_205a24).l
dat_201a2c:
	.incbin 6700, 38

sub_201a52:
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
	jmp (sub_205a24).l
loc_201ae0:
	tst.b ($ff151f).l
	bne.s loc_201ad6
	tst.b ($ff1520).l
	bne.s loc_201ad6
	move.w #$90,d0
	jmp (sub_205a24).l
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
	jmp (sub_205a24).l
loc_201b1c:
	tst.b ($ff151f).l
	bne.s loc_201b12
	tst.b ($ff1520).l
	bne.s loc_201b12
	move.w #$91,d0
	jmp (sub_205a24).l
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
	bsr.w sub_205946
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
	jsr (sub_20ef80).l
	jsr (sub_2021b2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e64
	bsr.w sub_2024a6
	jmp (loc_20ab60).l
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
	bsr.w sub_202e64
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
	lea (dat_20ef96).l,a1
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
	lea (dat_20ef96).l,a1
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
	lea (dat_20ef96).l,a1
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
	jsr (sub_2065b0).l
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
	dc.b $00,$50,$01,$85
dat_2028c0:
	dc.b $91,$b6,$7f,$7f

sub_2028c4:
	swap d0
	asr.l #$4,d0
	move.l d0,d2
	add.l d2,d2
	add.l d2,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.w #$3,d1
	move.w d1,($f708).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	lsr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f718).w
	lea ($a800).w,a2
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	clr.l (a2)+
	rts

sub_20290a:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202916
	rts
loc_202916:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ada
	bsr.w sub_202b7a
	bsr.w sub_2033fe
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$3,d4
	move.l d4,d3
	add.l d4,d4
	add.l d3,d4
	moveq #$6,d6
	bsr.w sub_202e04
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$4,d6
	bsr.w sub_202dd0
	lea ($a814).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$5,d4
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$4,d5
	move.l d5,d3
	add.l d5,d5
	add.l d3,d5
	bsr.w sub_202ccc
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
	move.w ($f700).w,d0
	neg.w d0
	swap d0
	lea ($a800).w,a2
	moveq #$4,d6
loc_2029da:
	move.l (a2)+,d1
	swap d1
	add.w ($f718).w,d1
	neg.w d1
	moveq #$0,d5
	lea (dat_202a60).l,a3
	move.b $0(a3,d6.w),d5
loc_2029f0:
	move.w d1,(a1)+
	dbf d5,loc_2029f0
	dbf d6,loc_2029da
	move.w #$5,d1
	move.w ($f718).w,d0
	neg.w d0
loc_202a04:
	move.w d0,(a1)+
	dbf d1,loc_202a04
	move.w #$1,d1
	move.w ($f708).w,d0
	neg.w d0
loc_202a14:
	move.w d0,(a1)+
	dbf d1,loc_202a14
	move.w #$7,d1
	move.w ($f710).w,d0
	neg.w d0
loc_202a24:
	move.w d0,(a1)+
	dbf d1,loc_202a24
	lea ($cc00).w,a1
	lea ($a814).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$1f8,d0
	lsr.w #$2,d0
	move.w d0,d3
	lsr.w #$1,d3
	moveq #$1f,d1
	moveq #$1c,d5
	sub.w d3,d1
	bcs.s loc_202a5c
	cmpi.w #$1b,d1
	bcs.s loc_202a52
	moveq #$1b,d1
loc_202a52:
	sub.w d1,d5
	lea $0(a2,d0.w),a2
	bsr.w sub_202a98
loc_202a5c:
	bra.w loc_202a66
dat_202a60:
	dc.b $01,$03,$03,$03,$01,$00
loc_202a66:
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
loc_202a86:
	move.w d3,d0
	neg.w d0
	move.l d0,(a1)+
	swap d3
	add.l d2,d3
	swap d3
	dbf d1,loc_202a86
	rts

sub_202a98:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202aa6(pc,d2.w)
loc_202aa4:
	move.w (a2)+,d0
loc_202aa6:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202aa4
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
	dbf d1,loc_202aa4
	rts

sub_202ada:
	move.w ($f700).w,d4
	bsr.s sub_202b0e
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b0c
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b06
	bset.b #$2,($f754).w
	rts
loc_202b06:
	bset.b #$3,($f754).w
loc_202b0c:
	rts

sub_202b0e:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b20
	bcs.s loc_202b50
	bra.s loc_202b26
loc_202b20:
	clr.w ($f73a).w
	rts
loc_202b26:
	cmpi.w #$10,d0
	blt.s loc_202b30
	move.w #$10,d0
loc_202b30:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b3e
	move.w ($f72a).w,d0
loc_202b3e:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b50:
	cmpi.w #$fff0,d0
	bge.s loc_202b5a
	move.w #$fff0,d0
loc_202b5a:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b3e
	move.w ($f728).w,d0
	bra.s loc_202b3e
	.incbin 11114, 16

sub_202b7a:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b8e
	subq.w #$5,d0
loc_202b8e:
	btst.b #$1,$22(a6)
	beq.s loc_202bae
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202bfa
	subi.w #$40,d0
	bcc.s loc_202bfa
	tst.b ($f75c).w
	bne.s loc_202c0c
	bra.s loc_202bba
loc_202bae:
	sub.w ($f73e).w,d0
	bne.s loc_202bc0
	tst.b ($f75c).w
	bne.s loc_202c0c
loc_202bba:
	clr.w ($f73c).w
	rts
loc_202bc0:
	cmpi.w #$60,($f73e).w
	bne.s loc_202be8
	move.w $14(a6),d1
	bpl.s loc_202bd0
	neg.w d1
loc_202bd0:
	cmpi.w #$800,d1
	bcc.s loc_202bfa
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c5a
	cmpi.w #$fffa,d0
	blt.s loc_202c24
	bra.s loc_202c12
loc_202be8:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c5a
	cmpi.w #$fffe,d0
	blt.s loc_202c24
	bra.s loc_202c12
loc_202bfa:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c5a
	cmpi.w #$fff0,d0
	blt.s loc_202c24
	bra.s loc_202c12
loc_202c0c:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c12:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c64
	bra.w loc_202c30
loc_202c24:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c30:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c88
	cmpi.w #$ff00,d1
	bgt.s loc_202c54
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c88
loc_202c54:
	move.w ($f72c).w,d1
	bra.s loc_202c88
loc_202c5a:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c64:
	cmp.w ($f72e).w,d1
	blt.s loc_202c88
	subi.w #$800,d1
	bcs.s loc_202c84
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c88
loc_202c84:
	move.w ($f72e).w,d1
loc_202c88:
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
	bne.s loc_202cca
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cc4
	bset.b #$0,($f754).w
	rts
loc_202cc4:
	bset.b #$1,($f754).w
loc_202cca:
	rts

sub_202ccc:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d00
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202cfa
	bset.b #$2,($f756).w
	bra.s loc_202d00
loc_202cfa:
	bset.b #$3,($f756).w
loc_202d00:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d34
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d2e
	bset.b #$0,($f756).w
	rts
loc_202d2e:
	bset.b #$1,($f756).w
loc_202d34:
	rts
	.incbin 11574, 100
	rts
	.incbin 11676, 52

sub_202dd0:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e02
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202dfc
	bset.b d6,($f758).w
	bra.s loc_202e02
loc_202dfc:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e02:
	rts

sub_202e04:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e36
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e30
	bset.b d6,($f75a).w
	bra.s loc_202e36
loc_202e30:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e36:
	rts
	.incbin 11832, 44

sub_202e64:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f22
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203006
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203008
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f20
	bclr.b #$0,(a2)
	beq.s loc_202ed6
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203234
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20300a
loc_202ed6:
	bclr.b #$1,(a2)
	beq.s loc_202ef0
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203234
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20300a
loc_202ef0:
	bclr.b #$2,(a2)
	beq.s loc_202f06
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203234
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203060
loc_202f06:
	bclr.b #$3,(a2)
	beq.s loc_202f20
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203234
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203060
loc_202f20:
	rts

sub_202f22:
	lea (dat_2032ec).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f3e
	bclr.b #$1,(a2)
	beq.s loc_202f88
	move.w #$e0,d4
loc_202f3e:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fb8(pc,d0.w),a3
	beq.s loc_202f70
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203234
	movem.l (a7)+,d4-d5
	bsr.w sub_20300a
	movea.l (a7)+,a0
	bra.s loc_202f88
loc_202f70:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203236
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203036
	movea.l (a7)+,a0
loc_202f88:
	tst.b (a2)
	bne.s loc_202f8e
	rts
loc_202f8e:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fa2
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fa2:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202fc8
dat_202fb8:
	.incbin 12216, 16
loc_202fc8:
	moveq #$f,d6
	move.l #$800000,d7
loc_202fd0:
	moveq #$0,d0
	move.b (a0)+,d0
	btst.b d0,(a2)
	beq.s loc_202ffa
	add.w d0,d0
	movea.l dat_202fb8(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20310c
	movem.l (a7)+,d4-d5
	bsr.w sub_203234
	bsr.w sub_20308e
	movem.l (a7)+,d4-d5/a0
loc_202ffa:
	addi.w #$10,d4
	dbf d6,loc_202fd0
	clr.b (a2)
	rts

sub_203006:
	rts

sub_203008:
	rts

sub_20300a:
	moveq #$15,d6

sub_20300c:
	move.l #$800000,d7
	move.l d0,d1
loc_203014:
	movem.l d4-d5,-(a7)
	bsr.w sub_20310c
	move.l d1,d0
	bsr.w sub_20308e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203014
	rts

sub_203036:
	move.l #$800000,d7
	move.l d0,d1
loc_20303e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20310e
	move.l d1,d0
	bsr.w sub_20308e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20303e
	rts

sub_203060:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20306a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20310c
	move.l d1,d0
	bsr.w sub_20308e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20306a
	rts

sub_20308e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030ca
	btst.b #$3,(a0)
	bne.s loc_2030aa
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030aa:
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
loc_2030ca:
	btst.b #$3,(a0)
	bne.s loc_2030ec
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
loc_2030ec:
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

sub_20310c:
	add.w (a3),d5

sub_20310e:
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
	beq.s loc_20315c
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
loc_20315c:
	rts
	.incbin 12638, 214

sub_203234:
	add.w (a3),d5

sub_203236:
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
	.incbin 12880, 28

sub_20326c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203296
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032be

sub_203296:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20329a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203234
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20300c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20329a
	rts
loc_2032be:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032c2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2032ec).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20331e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032c2
	rts
dat_2032ec:
	.incbin 13036, 34
dat_20330e:
	.incbin 13070, 16

sub_20331e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20330e(pc,d0.w),a3
	beq.s loc_203340
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203234
	movem.l (a7)+,d4-d5
	bsr.w sub_20300a
	bra.s loc_203354
loc_203340:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203236
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203036
loc_203354:
	rts

sub_203356:
	moveq #$0,d0
	lea (dat_20ef86).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20229a
	movea.l (a2)+,a0
	bsr.w sub_2033b0
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200480
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_20339a
	jmp (loc_20cac2).l
loc_20339a:
	btst.b #$1,($ff151c).l
	beq.s loc_2033ae
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033ae
	bsr.w sub_2023c8
loc_2033ae:
	rts

sub_2033b0:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033ba:
	move.l d0,(a3)+
	dbf d1,loc_2033ba
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033d0
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033d0:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23aa3c).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033ea:
	move.w d1,d0
	movea.l a3,a0
loc_2033ee:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033ee
	lea $80(a3),a3
	dbf d2,loc_2033ea
	rts

sub_2033fe:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203478(pc,d0.w),d0
	jsr dat_203478(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203424
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203424:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203452
	bcc.s loc_203454
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203448
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203448:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203452:
	rts
loc_203454:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20346c
	btst.b #$1,($d022).w
	beq.s loc_20346c
	add.w d1,d1
	add.w d1,d1
loc_20346c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203478:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203498(pc,d0.w),d0
	jmp dat_203498(pc,d0.w)
dat_203498:
	.incbin 13464, 102
	move.w #$310,($f726).w
	rts
	.incbin 13574, 250
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203612(pc,d0.w),d0
	jmp dat_203612(pc,d0.w)
dat_203612:
	.incbin 13842, 344

sub_20376a:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203772:
	move.b (a0),d0
	beq.s loc_203788
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b8c).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203788:
	lea $40(a0),a0
	dbf d7,loc_203772
	rts

sub_203792:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037d0
	bpl.s loc_2037c2
	btst.b #$1,$2c(a0)
	beq.s loc_2037c2
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037d0
loc_2037c2:
	btst.b #$2,$2c(a0)
	bne.s loc_2037d0
	addi.w #$38,$12(a0)
loc_2037d0:
	tst.w $12(a0)
	bmi.s loc_2037e4
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037e4
	move.w #$1000,$12(a0)
loc_2037e4:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037f4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203830
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203830
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20382e
	neg.w d1
loc_20382e:
	add.w d1,d0
loc_203830:
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

sub_20384a:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038ba
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038d6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038d6
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203894
	cmpi.w #$800,d3
	bcs.s loc_2038a6
	subi.w #$800,d3
	bra.s loc_2038a6
loc_203894:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038a6
	cmpi.w #$100,d3
	bcc.s loc_2038a6
	addi.w #$800,d3
loc_2038a6:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038d6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038d6
loc_2038ba:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038d6
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038d6:
	rts
	.incbin 14552, 30

sub_2038f6:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2038fc:
	move.l d1,(a1)+
	dbf d0,loc_2038fc
	rts
dat_203904:
	.incbin 14596, 16

sub_203914:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203920:
	tst.w (a4)
	beq.w loc_2039e0
	moveq #$2,d6
loc_203928:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039d8
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_20398e
	movea.l dat_203904(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203972
	cmpi.w #$800,d2
	bcs.s loc_203984
	subi.w #$800,d2
	bra.s loc_203984
loc_203972:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203984
	cmpi.w #$100,d2
	bcc.s loc_203984
	addi.w #$800,d2
loc_203984:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039b0
loc_20398e:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039b0
	.incbin 14744, 24
loc_2039b0:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039ce
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039d2
loc_2039ce:
	bsr.w sub_203a02
loc_2039d2:
	bset.b #$7,$1(a0)
loc_2039d8:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203928
loc_2039e0:
	lea $80(a4),a4
	dbf d7,loc_203920
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2039fa
	move.l #$0,(a2)
	rts
loc_2039fa:
	move.b #$0,-$5(a2)
	rts

sub_203a02:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a48
	btst.l #$1,d4
	bne.w loc_203a96
loc_203a14:
	cmpi.b #$50,d5
	beq.s loc_203a46
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
	bne.s loc_203a40
	addq.w #$1,d0
loc_203a40:
	move.w d0,(a2)+
	dbf d1,loc_203a14
loc_203a46:
	rts
loc_203a48:
	btst.l #$1,d4
	bne.w loc_203adc
loc_203a50:
	cmpi.b #$50,d5
	beq.s loc_203a94
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
	bne.s loc_203a8e
	addq.w #$1,d0
loc_203a8e:
	move.w d0,(a2)+
	dbf d1,loc_203a50
loc_203a94:
	rts
loc_203a96:
	cmpi.b #$50,d5
	beq.s loc_203ada
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
	bne.s loc_203ad4
	addq.w #$1,d0
loc_203ad4:
	move.w d0,(a2)+
	dbf d1,loc_203a96
loc_203ada:
	rts
loc_203adc:
	cmpi.b #$50,d5
	beq.s loc_203b2e
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
	bne.s loc_203b28
	addq.w #$1,d0
loc_203b28:
	move.w d0,(a2)+
	dbf d1,loc_203adc
loc_203b2e:
	rts
	.incbin 15152, 92
dat_203b8c:
	.incbin 15244, 262

sub_203c92:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ca4
	move.w #$0,(a1)
	rts
loc_203ca4:
	tst.w (a1)
	bne.s loc_203cae
	move.b #$1,$1(a1)
loc_203cae:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cf8
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203cea
	neg.w $10(a0)
loc_203cea:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a24
loc_203cf8:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d16
	cmpa.w #$d040,a0
	beq.s loc_203d16
	tst.b ($ff1906).l
	beq.s loc_203d16
	jmp (loc_206f9a).l
loc_203d16:
	move.b $2a(a0),d0
	beq.s loc_203d40
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d32
	cmpi.b #$2d,d0
	bcs.s loc_203d3c
	move.b #$2d,d0
	bra.s loc_203d3c
loc_203d32:
	cmpi.b #$1e,d0
	bcs.s loc_203d3c
	move.b #$1e,d0
loc_203d3c:
	move.b d0,$2a(a0)
loc_203d40:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d4e(pc,d0.w),d1
	jmp dat_203d4e(pc,d1.w)
dat_203d4e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d58:
	tst.b ($d300).w
	bne.s loc_203d96
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d96:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dbe
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dbe:
	move.l #$21d400,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203df2:
	tst.b ($ff1506).l
	bne.s loc_203e58
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e58
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e5c
	cmpi.b #$2f,d1
	bne.s loc_203e5a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e58
	tst.b $2c(a0)
	beq.s loc_203e58
	jsr (sub_20759a).l
	bne.s loc_203e58
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e50
	moveq #$0,d0
loc_203e50:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e58:
	rts
loc_203e5a:
	rts

sub_203e5c:
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

sub_203e82:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e8e
	neg.w d0
loc_203e8e:
	btst.b #$1,$2c(a0)
	beq.s loc_203e9e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203ec6
loc_203e9e:
	cmpi.w #$600,d0
	bcs.s loc_203ec6
	tst.w $14(a0)
	bpl.s loc_203eb8
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ed4
	move.w #$e0,d1
	bra.s loc_203ed4
loc_203eb8:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ed4
	move.w #$60,d1
	bra.s loc_203ed4
loc_203ec6:
	cmpi.w #$a0,d1
	beq.s loc_203ed4
	bcc.s loc_203ed2
	addq.w #$2,d1
	bra.s loc_203ed4
loc_203ed2:
	subq.w #$2,d1
loc_203ed4:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e82
	bsr.w sub_203df2
	tst.w ($ff1588).l
	beq.s loc_203efa
	btst.b #$4,($f605).w
	beq.s loc_203efa
	move.b #$1,($ff1906).l
	rts
loc_203efa:
	tst.b ($f7cc).w
	bne.s loc_203f06
	move.w ($f604).w,($f602).w
loc_203f06:
	btst.b #$0,$2c(a0)
	beq.s loc_203f2a
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f24
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f42
loc_203f24:
	bsr.w sub_20420c
	bra.s loc_203f42
loc_203f2a:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f88(pc,d0.w),d1
	jsr dat_203f88(pc,d1.w)
	jsr (sub_2064dc).l
loc_203f42:
	bsr.s sub_203f96
	bsr.w sub_204056
	bsr.w sub_204070
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f6a
	tst.b $1c(a0)
	bne.s loc_203f6a
	move.b $1d(a0),$1c(a0)
loc_203f6a:
	bsr.w sub_205414
	tst.b $2c(a0)
	bmi.s loc_203f82
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f82
	jsr (sub_206a80).l
loc_203f82:
	bsr.w sub_2052ca
	rts
dat_203f88:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203f96:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fba
	move.w $30(a0),d0
	beq.s loc_203fac
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fba
loc_203fac:
	btst.b #$6,$2c(a0)
	bne.s loc_203fba
	jsr (sub_20384a).l
loc_203fba:
	tst.b ($ff151f).l
	beq.s loc_203ffe
	tst.w $32(a0)
	beq.s loc_203ffe
	subq.w #$1,$32(a0)
	bne.s loc_203ffe
	tst.b ($ff1520).l
	bne.s loc_203ff6
	tst.b ($ff1958).l
	bne.s loc_203ff6
	tst.b ($ff152e).l
	bne.s loc_203ff0
	move.w #$e,d0
	jsr (sub_205a24).l
loc_203ff0:
	jsr (sub_2019f2).l
loc_203ff6:
	move.b #$0,($ff151f).l
loc_203ffe:
	tst.b ($ff1520).l
	beq.s loc_204054
	tst.w $34(a0)
	beq.s loc_204054
	subq.w #$1,$34(a0)
	bne.s loc_204054
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20404c
	tst.b ($ff1958).l
	bne.s loc_20404c
	tst.b ($ff152e).l
	bne.s loc_204046
	move.w #$e,d0
	jsr (sub_205a24).l
loc_204046:
	jsr (sub_2019f2).l
loc_20404c:
	move.b #$0,($ff1520).l
loc_204054:
	rts

sub_204056:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204070:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20407c
loc_20407a:
	rts
loc_20407c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20408e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20407a
loc_20408e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040d2
	bset.b #$6,$22(a0)
	bne.s loc_20407a
	bsr.w sub_205d28
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20407a
	bra.s loc_20410a
loc_2040d2:
	tst.w $12(a0)
	beq.s loc_2040da
	bpl.s loc_20407a
loc_2040da:
	bclr.b #$6,$22(a0)
	beq.s loc_20407a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20407a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20410a
	move.w #$f000,$12(a0)
loc_20410a:
	jsr (sub_20759a).l
	bne.s loc_20411e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20411e:
	rts

sub_204120:
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
	bcs.s loc_2041fa
	move.l #$50000,d0
loc_2041fa:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20420c:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204232
	tst.b ($ff152e).l
	beq.s loc_204228
	cmpi.b #$2,($ff152e).l
	bne.s loc_204232
loc_204228:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042e2
loc_204232:
	tst.b $2a(a0)
	bne.w loc_2042f0
	tst.b ($f784).w
	beq.w loc_2042f0
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204250
	neg.w d0
loc_204250:
	tst.w ($f786).w
	bne.s loc_20425c
	move.w #$1,($f786).w
loc_20425c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204272
	move.b #$1,($ff1502).l
	bra.w loc_205a20
loc_204272:
	cmpi.w #$d2,d1
	bcs.s loc_2042c6
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042c4
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20429c
	move.w #$82,d0
	jsr (sub_205a24).l
	moveq #$0,d0
loc_20429c:
	add.b ($f784).w,d0
	bpl.s loc_2042a6
	moveq #$0,d0
	bra.s loc_2042ae
loc_2042a6:
	cmpi.b #$3,d0
	bcs.s loc_2042ae
	moveq #$2,d0
loc_2042ae:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204120
	move.b #$2,($ff1522).l
loc_2042c4:
	rts
loc_2042c6:
	cmpi.w #$5a,d1
	bcc.s loc_2042de
	cmp.w d2,d0
	bcc.w loc_203d58
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042de:
	cmp.w d2,d0
	bcc.s loc_2042f0
loc_2042e2:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042f0:
	rts
	bsr.w sub_203c92
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204322
	tst.b ($ff195b).l
	beq.s loc_204310
	cmpi.b #$79,$1a(a0)
	bne.s loc_20434c
	bra.s loc_204318
loc_204310:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20434c
loc_204318:
	bsr.w sub_204bb4
	jmp (sub_203792).l
loc_204322:
	bsr.w sub_2043fa
	bsr.w sub_20420c
	bsr.w sub_204c9e
	bsr.w sub_204dca
	bsr.w sub_20446e
	bsr.w sub_204c20
	bsr.w sub_204bb4
	jsr (sub_2037f4).l
	bsr.w sub_200b02
	bsr.w sub_204e48
loc_20434c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204368
	cmpi.b #$15,$1c(a0)
	beq.s loc_204368
	tst.w $12(a0)
	bmi.s loc_204368
	move.b #$0,$1c(a0)
loc_204368:
	bsr.w sub_2043fa
	bsr.w sub_20420c
	bsr.w sub_204d88
	bsr.w sub_204ad4
	bsr.w sub_204bb4
	jsr (sub_203792).l
	btst.b #$6,$22(a0)
	beq.s loc_204390
	subi.w #$28,$12(a0)
loc_204390:
	bsr.w sub_204e92
	bsr.w sub_204eb6
	rts
	bsr.w sub_2043fa
	bsr.w sub_20420c
	bsr.w sub_204c9e
	bsr.w sub_204e06
	bsr.w sub_20490e
	bsr.w sub_204bb4
	tst.b $2a(a0)
	bne.s loc_2043be
	jsr (sub_2037f4).l
loc_2043be:
	bsr.w sub_200b02
	bsr.w sub_204e48
	rts
	bsr.w sub_2043fa
	bsr.w sub_20420c
	bsr.w sub_204d88
	bsr.w sub_204ad4
	bsr.w sub_204bb4
	jsr (sub_203792).l
	btst.b #$6,$22(a0)
	beq.s loc_2043f0
	subi.w #$28,$12(a0)
loc_2043f0:
	bsr.w sub_204e92
	bsr.w sub_204eb6
	rts

sub_2043fa:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204466
	tst.w ($ff1506).l
	bne.s loc_204466
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204468).l,a2
loc_20442e:
	move.b (a2)+,d0
	bmi.s loc_20443e
	cmp.b d0,d1
	bne.s loc_20442e
	bset.b #$1,$2c(a0)
	rts
loc_20443e:
	bclr.b #$1,$2c(a0)
	beq.s loc_204466
	tst.w $12(a0)
	bpl.s loc_204466
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204466
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204466
	neg.w $10(a0)
loc_204466:
	rts
dat_204468:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20446e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204798
	tst.w $3e(a0)
	bne.w loc_204748
	btst.b #$2,($f602).w
	beq.s loc_204496
	bsr.w sub_204828
loc_204496:
	btst.b #$3,($f602).w
	beq.s loc_2044a2
	bsr.w sub_20489e
loc_2044a2:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204748
	tst.w $14(a0)
	beq.s loc_2044c2
	tst.b $2a(a0)
	beq.w loc_204748
	bra.s loc_2044ce
loc_2044c2:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044ce:
	btst.b #$3,$22(a0)
	beq.s loc_204520
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204578
	cmpi.b #$1e,$0(a1)
	bne.s loc_204500
	move.b #$0,$1c(a0)
	bra.w loc_204748
loc_204500:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20455c
	cmp.w d2,d1
	bge.s loc_20454a
	bra.s loc_204578
loc_204520:
	jsr (sub_2067e4).l
	cmpi.w #$c,d1
	blt.s loc_204578
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204554
loc_20454a:
	btst.b #$0,$22(a0)
	bne.s loc_204564
	bra.s loc_20456e
loc_204554:
	cmpi.b #$3,$37(a0)
	bne.s loc_204578
loc_20455c:
	btst.b #$0,$22(a0)
	bne.s loc_20456e
loc_204564:
	move.b #$32,$1c(a0)
	bra.w loc_204748
loc_20456e:
	move.b #$6,$1c(a0)
	bra.w loc_204748
loc_204578:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20458c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20458c:
	btst.b #$7,($f788).w
	bne.w loc_204690
	btst.b #$6,($f788).w
	bne.w loc_2046b0
	btst.b #$1,($f602).w
	bne.w loc_2046b0
	andi.b #$f,($f788).w
	beq.s loc_2045c4
	btst.b #$0,($f603).w
	beq.s loc_2045d8
	bset.b #$7,($f788).w
	bra.w loc_20476c
loc_2045c4:
	btst.b #$0,($f603).w
	beq.w loc_2045d8
	move.b #$1,($f788).w
	bra.w loc_20476c
loc_2045d8:
	btst.b #$0,($f602).w
	beq.s loc_204654
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204636
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204608
	asr.w #$1,d2
	sub.w d2,d1
loc_204608:
	btst.b #$0,$22(a0)
	beq.s loc_204614
	neg.w d0
	neg.w d1
loc_204614:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20462a
	cmp.w d0,d1
	ble.s loc_204630
	bra.s loc_20462e
loc_20462a:
	cmp.w d1,d0
	ble.s loc_204630
loc_20462e:
	move.w d1,d0
loc_204630:
	move.w d0,$14(a0)
	rts
loc_204636:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204650
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2021fe).l
loc_204650:
	bra.w loc_20476c
loc_204654:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204674
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046b0
loc_204674:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021fe).l
	bra.w loc_204748
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204690:
	btst.b #$0,($f602).w
	beq.s loc_2046b0
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20476c
	addq.w #$2,($f73e).w
	bra.w loc_20476c
loc_2046b0:
	btst.b #$6,($f788).w
	bne.w loc_20472c
	andi.b #$f,($f788).w
	beq.s loc_2046d4
	btst.b #$1,($f603).w
	beq.s loc_2046e6
	bset.b #$6,($f788).w
	bra.w loc_20476c
loc_2046d4:
	btst.b #$1,($f603).w
	beq.s loc_2046e6
	move.b #$1,($f788).w
	bra.w loc_20476c
loc_2046e6:
	btst.b #$1,($f602).w
	beq.s loc_204748
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20472a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20472a
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20471c
	neg.w $14(a0)
loc_20471c:
	move.w #$9c,d0
	jsr (sub_2021fe).l
	bsr.w sub_204c48
loc_20472a:
	bra.s loc_20476c
loc_20472c:
	btst.b #$1,($f602).w
	beq.s loc_204748
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20476c
	subq.w #$2,($f73e).w
	bra.s loc_20476c
loc_204748:
	cmpi.w #$60,($f73e).w
	bne.s loc_204762
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20476c
	move.b #$0,($f788).w
	bra.s loc_20476c
loc_204762:
	bcc.s loc_204768
	addq.w #$4,($f73e).w
loc_204768:
	subq.w #$2,($f73e).w
loc_20476c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204798
	move.w $14(a0),d0
	beq.s loc_204798
	bmi.s loc_20478c
	sub.w d5,d0
	bcc.s loc_204786
	move.w #$0,d0
loc_204786:
	move.w d0,$14(a0)
	bra.s loc_204798
loc_20478c:
	add.w d5,d0
	bcc.s loc_204794
	move.w #$0,d0
loc_204794:
	move.w d0,$14(a0)
loc_204798:
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047b6:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204826
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204826
	bmi.s loc_2047ce
	neg.w d1
loc_2047ce:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066a4
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204826
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204822
	cmpi.b #$40,d0
	beq.s loc_204810
	cmpi.b #$80,d0
	beq.s loc_20480a
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20480a:
	sub.w d1,$12(a0)
	rts
loc_204810:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204822:
	add.w d1,$12(a0)
loc_204826:
	rts

sub_204828:
	tst.b $2a(a0)
	bne.s loc_20489c
	move.w $14(a0),d0
	beq.s loc_204836
	bpl.s loc_204866
loc_204836:
	bset.b #$0,$22(a0)
	bne.s loc_20484a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20484a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20485a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20485a
	move.w d1,d0
loc_20485a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204866:
	sub.w d4,d0
	bcc.s loc_20486e
	move.w #$ff80,d0
loc_20486e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20489c
	cmpi.w #$400,d0
	blt.s loc_20489c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021fe).l
loc_20489c:
	rts

sub_20489e:
	tst.b $2a(a0)
	bne.s loc_20490c
	move.w $14(a0),d0
	bmi.s loc_2048d6
	bclr.b #$0,$22(a0)
	beq.s loc_2048be
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048be:
	cmp.w d6,d0
	bge.s loc_2048ca
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048ca
	move.w d6,d0
loc_2048ca:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048d6:
	add.w d4,d0
	bcc.s loc_2048de
	move.w #$80,d0
loc_2048de:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20490c
	cmpi.w #$fc00,d0
	bgt.s loc_20490c
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021fe).l
loc_20490c:
	rts

sub_20490e:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a58
	tst.w $3e(a0)
	bne.s loc_204946
	btst.b #$2,($f602).w
	beq.s loc_20493a
	bsr.w sub_204a8e
loc_20493a:
	btst.b #$3,($f602).w
	beq.s loc_204946
	bsr.w sub_204ab2
loc_204946:
	tst.b $2a(a0)
	beq.w loc_2049f0
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204966
	asr.w #$1,d2
	sub.w d2,d1
loc_204966:
	btst.b #$0,$22(a0)
	beq.s loc_204972
	neg.w d0
	neg.w d1
loc_204972:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204988
	cmp.w d0,d1
	ble.s loc_20498e
	bra.s loc_20498c
loc_204988:
	cmp.w d1,d0
	ble.s loc_20498e
loc_20498c:
	move.w d1,d0
loc_20498e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049c2
	rts
loc_20499c:
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a22
loc_2049c2:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_20499c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021fe).l
	btst.b #$0,$22(a0)
	bne.s loc_2049e8
	bsr.w sub_204ab2
	bra.s loc_2049f0
loc_2049e8:
	bsr.w sub_204a8e
	bra.s loc_2049f0
	dc.b $4e,$75
loc_2049f0:
	move.w $14(a0),d0
	beq.s loc_204a12
	bmi.s loc_204a06
	sub.w d5,d0
	bcc.s loc_204a00
	move.w #$0,d0
loc_204a00:
	move.w d0,$14(a0)
	bra.s loc_204a12
loc_204a06:
	add.w d5,d0
	bcc.s loc_204a0e
	move.w #$0,d0
loc_204a0e:
	move.w d0,$14(a0)
loc_204a12:
	tst.w $14(a0)
	bne.s loc_204a58
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_204a22:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a42
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a52
loc_204a42:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a52:
	move.b #$5,$1c(a0)
loc_204a58:
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a7c
	move.w #$1000,d1
loc_204a7c:
	cmpi.w #$f000,d1
	bge.s loc_204a86
	move.w #$f000,d1
loc_204a86:
	move.w d1,$10(a0)
	bra.w loc_2047b6

sub_204a8e:
	move.w $14(a0),d0
	beq.s loc_204a96
	bpl.s loc_204aa4
loc_204a96:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204aa4:
	sub.w d4,d0
	bcc.s loc_204aac
	move.w #$ff80,d0
loc_204aac:
	move.w d0,$14(a0)
	rts

sub_204ab2:
	move.w $14(a0),d0
	bmi.s loc_204ac6
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ac6:
	add.w d4,d0
	bcc.s loc_204ace
	move.w #$80,d0
loc_204ace:
	move.w d0,$14(a0)
	rts

sub_204ad4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b0e
	tst.w ($ff1506).l
	bne.s loc_204b0e
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b06
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b06
	rts
loc_204b06:
	btst.b #$1,$2c(a0)
	bne.s loc_204b3e
loc_204b0e:
	btst.b #$2,($f602).w
	beq.s loc_204b28
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b28
	move.w d1,d0
loc_204b28:
	btst.b #$3,($f602).w
	beq.s loc_204b3e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b3e
	move.w d6,d0
loc_204b3e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b54
	bcc.s loc_204b50
	addq.w #$4,($f73e).w
loc_204b50:
	subq.w #$2,($f73e).w
loc_204b54:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b82
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b82
	bmi.s loc_204b76
	sub.w d1,d0
	bcc.s loc_204b70
	move.w #$0,d0
loc_204b70:
	move.w d0,$10(a0)
	rts
loc_204b76:
	sub.w d1,d0
	bcs.s loc_204b7e
	move.w #$0,d0
loc_204b7e:
	move.w d0,$10(a0)
loc_204b82:
	rts
	.incbin 19332, 48

sub_204bb4:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c08
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204be2
	addi.w #$38,d0
loc_204be2:
	cmp.w d1,d0
	bls.s loc_204c08
loc_204be6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204bf6
	rts
loc_204bf6:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d12
	move.b #$6,$24(a0)
	rts
loc_204c08:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204be6

sub_204c20:
	tst.b ($f7ca).w
	bne.s loc_204c46
	move.w $14(a0),d0
	bpl.s loc_204c2e
	neg.w d0
loc_204c2e:
	cmpi.w #$80,d0
	bcs.s loc_204c46
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c46
	btst.b #$1,($f602).w
	bne.s sub_204c48
loc_204c46:
	rts

sub_204c48:
	btst.b #$2,$22(a0)
	beq.s loc_204c52
	bra.s loc_204c82
loc_204c52:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c72
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c82
loc_204c72:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c82:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c9c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c9c
	move.w #$200,$14(a0)
loc_204c9c:
	rts

sub_204c9e:
	tst.b $2a(a0)
	beq.s loc_204ca6
	rts
loc_204ca6:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cb8
	tst.w $14(a0)
	beq.w loc_204d7e
loc_204cb8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d7e
	btst.b #$3,$22(a0)
	beq.s loc_204cd4
	jsr (sub_2059aa).l
	beq.s loc_204d04
loc_204cd4:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_20670e
	cmpi.w #$6,d1
	blt.w loc_204d7e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204cfa
	move.w #$380,d2
loc_204cfa:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d04:
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
	bne.s loc_204d80
	tst.b ($ff195b).l
	beq.s loc_204d62
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d72
loc_204d62:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d72:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d7e:
	rts
loc_204d80:
	bset.b #$4,$22(a0)
	rts

sub_204d88:
	tst.b $3c(a0)
	beq.s loc_204dba
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204d9e
	move.w #$fe00,d1
loc_204d9e:
	cmp.w $12(a0),d1
	ble.s loc_204db8
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204db8
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204db8:
	rts
loc_204dba:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dc8
	move.w #$f040,$12(a0)
loc_204dc8:
	rts

sub_204dca:
	tst.b $2a(a0)
	bne.s loc_204e04
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e04
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e04
	bmi.s loc_204e00
	tst.w d0
	beq.s loc_204dfe
	add.w d0,$14(a0)
loc_204dfe:
	rts
loc_204e00:
	add.w d0,$14(a0)
loc_204e04:
	rts

sub_204e06:
	tst.b $2a(a0)
	bne.s loc_204e46
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e46
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e3c
	tst.w d0
	bpl.s loc_204e36
	asr.l #$2,d0
loc_204e36:
	add.w d0,$14(a0)
	rts
loc_204e3c:
	tst.w d0
	bmi.s loc_204e42
	asr.l #$2,d0
loc_204e42:
	add.w d0,$14(a0)
loc_204e46:
	rts

sub_204e48:
	nop
	tst.b $38(a0)
	bne.s loc_204e8a
	tst.w $3e(a0)
	bne.s loc_204e8c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e8a
	move.w $14(a0),d0
	bpl.s loc_204e6c
	neg.w d0
loc_204e6c:
	cmpi.w #$280,d0
	bcc.s loc_204e8a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e8a:
	rts
loc_204e8c:
	subq.w #$1,$3e(a0)
	rts

sub_204e92:
	btst.b #$1,$2c(a0)
	bne.s loc_204eb4
	move.b $26(a0),d0
	beq.s loc_204eb4
	bpl.s loc_204eaa
	addq.b #$2,d0
	bcc.s loc_204ea8
	moveq #$0,d0
loc_204ea8:
	bra.s loc_204eb0
loc_204eaa:
	subq.b #$2,d0
	bcc.s loc_204eb0
	moveq #$0,d0
loc_204eb0:
	move.b d0,$26(a0)
loc_204eb4:
	rts

sub_204eb6:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_20099a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204f9a
	cmpi.b #$80,d0
	beq.w loc_204ffc
	cmpi.b #$c0,d0
	beq.w loc_205058
	bsr.w sub_206a24
	tst.w d1
	bpl.s loc_204f08
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f08:
	bsr.w sub_206886
	tst.w d1
	bpl.s loc_204f1a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f1a:
	bsr.w sub_206736
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204f98
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f38
	cmp.b d2,d0
	blt.s loc_204f98
loc_204f38:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ba
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f76
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f68
	asr.w $12(a0)
	bra.s loc_204f8a
loc_204f68:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f76:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f8a
	move.w #$fc0,$12(a0)
loc_204f8a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f98
	neg.w $14(a0)
loc_204f98:
	rts
loc_204f9a:
	bsr.w sub_206a24
	tst.w d1
	bpl.s loc_204fb4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fb4:
	bsr.w sub_2068de
	tst.w d1
	bpl.s loc_204fce
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fcc
	move.w #$0,$12(a0)
loc_204fcc:
	rts
loc_204fce:
	tst.w $12(a0)
	bmi.s loc_204ffa
	bsr.w sub_206736
	tst.w d1
	bpl.s loc_204ffa
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ba
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204ffa:
	rts
loc_204ffc:
	bsr.w sub_206a24
	tst.w d1
	bpl.s loc_20500e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20500e:
	bsr.w sub_206886
	tst.w d1
	bpl.s loc_205020
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205020:
	bsr.w sub_2068de
	tst.w d1
	bpl.s loc_205056
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205040
	move.w #$0,$12(a0)
	rts
loc_205040:
	move.b d3,$26(a0)
	bsr.w sub_20512c
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205056
	neg.w $14(a0)
loc_205056:
	rts
loc_205058:
	bsr.w sub_206886
	tst.w d1
	bpl.s loc_205072
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205072:
	bsr.w sub_2068de
	tst.w d1
	bpl.s loc_20508c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20508a
	move.w #$0,$12(a0)
loc_20508a:
	rts
loc_20508c:
	tst.w $12(a0)
	bmi.s loc_2050b8
	bsr.w sub_206736
	tst.w d1
	bpl.s loc_2050b8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ba
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050b8:
	rts

sub_2050ba:
	btst.b #$4,$22(a0)
	beq.s loc_2050c4
	nop
loc_2050c4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20511e
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050fe
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20510e
loc_2050fe:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20510e:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_20511e:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20512c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20812, 382

sub_2052ca:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052f2
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052f2
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052f2
	tst.b ($ff1506).l
	bne.w loc_2053b4
loc_2052f2:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205330
	tst.b ($ff1506).l
	bne.w loc_2053b6
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053b6
	bra.s loc_205338
loc_205330:
	cmp.b ($f7af).w,d1
	beq.w loc_2053b6
loc_205338:
	cmp.b ($f7ac).w,d1
	beq.s loc_205368
	cmp.b ($f7ad).w,d1
	beq.s loc_20534c
	bclr.b #$6,$1(a0)
	rts
loc_20534c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053ce
	btst.b #$1,$22(a0)
	beq.s loc_205368
	bclr.b #$6,$1(a0)
	rts
loc_205368:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20537a
	bclr.b #$6,$1(a0)
	rts
loc_20537a:
	cmpi.b #$e0,d2
	bcs.s loc_205388
	bset.b #$6,$1(a0)
	rts
loc_205388:
	btst.b #$6,$1(a0)
	bne.s loc_2053a4
	move.b $26(a0),d1
	beq.s loc_2053b4
	cmpi.b #$80,d1
	bhi.s loc_2053b4
	bset.b #$6,$1(a0)
	rts
loc_2053a4:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053b4
	bclr.b #$6,$1(a0)
loc_2053b4:
	rts
loc_2053b6:
	btst.b #$2,$22(a0)
	bne.s loc_2053c8
	move.w #$9c,d0
	jsr (sub_2021fe).l
loc_2053c8:
	jmp (sub_204c48).l
loc_2053ce:
	tst.w $12(a0)
	bmi.s loc_205412
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205406
	cmpi.w #$38,d1
	bcs.s loc_2053fe
	cmpi.w #$80,d1
	bcs.s loc_205412
loc_2053f6:
	bclr.b #$6,$1(a0)
	rts
loc_2053fe:
	bset.b #$6,$1(a0)
	rts
loc_205406:
	cmpi.w #$38,d1
	bcs.s loc_2053f6
	cmpi.w #$80,d1
	bcc.s loc_2053fe
loc_205412:
	rts

sub_205414:
	lea (dat_205704).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205436
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205436:
	bsr.w sub_2056a6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054ae
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20547c
	move.b d0,$1e(a0)

sub_205460:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205474
	bpl.s loc_205474
	cmpi.b #$fd,d0
	bge.s loc_20547e
loc_205474:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20547c:
	rts
loc_20547e:
	addq.b #$1,d0
	bne.s loc_20548e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205474
loc_20548e:
	addq.b #$1,d0
	bne.s loc_2054a2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205474
loc_2054a2:
	addq.b #$1,d0
	bne.s loc_2054ac
	move.b $2(a1,d1.w),$1c(a0)
loc_2054ac:
	rts
loc_2054ae:
	subq.b #$1,$1e(a0)
	bpl.s loc_20547c
	addq.b #$1,d0
	bne.w loc_205568
	tst.b ($ff195b).l
	bne.w loc_205630
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054d6
	not.b d0
loc_2054d6:
	btst.b #$1,$2c(a0)
	bne.s loc_2054e4
	addi.b #$10,d0
	bra.s loc_2054e6
loc_2054e4:
	addq.b #$8,d0
loc_2054e6:
	bpl.s loc_2054ea
	moveq #$3,d1
loc_2054ea:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055dc
	move.w $14(a0),d2
	bpl.s loc_205508
	neg.w d2
loc_205508:
	btst.b #$1,$2c(a0)
	beq.s loc_205520
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205906).l,a1
	bra.s loc_20554a
loc_205520:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058e0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20554a
	lea (dat_205784).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20554a
	lea (dat_20577c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20554a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205558
	moveq #$0,d2
loc_205558:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205460
	add.b d3,$1a(a0)
	rts
loc_205568:
	addq.b #$1,d0
	bne.s loc_2055d8
	move.w $14(a0),d2
	bpl.s loc_205574
	neg.w d2
loc_205574:
	lea (dat_205862).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055b2
	lea (dat_205794).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055a6
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055b2
	lea (dat_20590e).l,a1
	bra.s loc_2055b2
loc_2055a6:
	cmpi.w #$600,d2
	bcc.s loc_2055b2
	lea (dat_20578c).l,a1
loc_2055b2:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055bc
	moveq #$0,d2
loc_2055bc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205460
loc_2055d8:
	addq.b #$1,d0
	bne.s loc_20561c
loc_2055dc:
	move.w $14(a0),d2
	bmi.s loc_2055e4
	neg.w d2
loc_2055e4:
	addi.w #$800,d2
	bpl.s loc_2055ec
	moveq #$0,d2
loc_2055ec:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205874).l,a1
	tst.b ($ff195b).l
	bne.s loc_205606
	lea (dat_20579c).l,a1
loc_205606:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205460
loc_20561c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205630:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205642
	not.b d0
loc_205642:
	addi.b #$10,d0
	bpl.s loc_20564a
	moveq #$0,d1
loc_20564a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205678
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205568
loc_205678:
	move.w $14(a0),d2
	bpl.s loc_205680
	neg.w d2
loc_205680:
	lea (dat_20585c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205692
	lea (dat_205856).l,a1
loc_205692:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20569c
	moveq #$0,d2
loc_20569c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205460

sub_2056a6:
	tst.b ($ff195b).l
	beq.s loc_2056b2
	move.b dat_2056b4(pc,d0.w),d0
loc_2056b2:
	rts
dat_2056b4:
	.incbin 22196, 80
dat_205704:
	.incbin 22276, 120
dat_20577c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205784:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20578c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205794:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20579c:
	.incbin 22428, 186
dat_205856:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20585c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205862:
	.incbin 22626, 18
dat_205874:
	.incbin 22644, 108
dat_2058e0:
	.incbin 22752, 38
dat_205906:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20590e:
	.incbin 22798, 56

sub_205946:
	tst.b (a0)
	beq.w loc_2059a8
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059a8
	move.b d0,(a2)
	lea (dat_230f60).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059a8
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20597a:
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
loc_205994:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205994
	dbf d1,loc_20597a
loc_2059a8:
	rts

sub_2059aa:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a1e
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
	bne.s loc_205a0c
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a0c:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a1e:
	rts
loc_205a20:
	move.w #$e,d0

sub_205a24:
	cmpi.w #$67,d0
	bne.s loc_205a32
	move.b #$1,($ff1958).l
loc_205a32:
	move.w d0,($a12010).l
loc_205a38:
	move.w ($a12020).l,d0
	beq.s loc_205a38
	cmp.w ($a12020).l,d0
	bne.s loc_205a38
	move.w #$0,($a12010).l
loc_205a50:
	move.w ($a12020).l,d0
	bne.s loc_205a50
	move.w ($a12020).l,d0
	bne.s loc_205a50
	rts
	dc.b $00,$00

sub_205a64:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a80
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a80:
	subq.b #$1,$1e(a0)
	bpl.s loc_205ac0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ac2
loc_205a9c:
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
loc_205ac0:
	rts
loc_205ac2:
	addq.b #$1,d0
	bne.s loc_205ad2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a9c
loc_205ad2:
	addq.b #$1,d0
	bne.s loc_205ae6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a9c
loc_205ae6:
	addq.b #$1,d0
	bne.s loc_205af0
	move.b $2(a1,d1.w),$1c(a0)
loc_205af0:
	addq.b #$1,d0
	bne.s loc_205af8
	addq.b #$2,$24(a0)
loc_205af8:
	addq.b #$1,d0
	bne.s loc_205b06
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b06:
	addq.b #$1,d0
	bne.s loc_205b0e
	addq.b #$2,$25(a0)
loc_205b0e:
	rts
	.incbin 23312, 536

sub_205d28:
	rts
	.incbin 23850, 116

sub_205d9e:
	tst.b $25(a0)
	bne.s loc_205dce
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_20759a).l
	bne.s loc_205dce
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dce:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dde(pc,d0.w),d0
	jmp dat_205dde(pc,d0.w)
dat_205dde:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e06
	andi.b #$7f,$2(a0)
loc_205e06:
	move.l #$23eee0,$4(a0)
	bsr.s sub_205d9e
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e34
	move.w #$100,$1c(a0)
loc_205e34:
	lea (dat_23eecc).l,a1
	bsr.w sub_205a64
	jmp (sub_20384a).l
	tst.b $25(a0)
	beq.s loc_205e50
	jmp (sub_2038f6).l
loc_205e50:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e72(pc,d0.w),d0
	jsr dat_205e72(pc,d0.w)
	jmp (sub_20384a).l
dat_205e72:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205ea0
	andi.b #$7f,$2(a0)
loc_205ea0:
	move.l #$235ef4,$4(a0)
	tst.b $28(a0)
	bne.s loc_205ec6
	bsr.w sub_205f32
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f28
loc_205ec6:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067e4).l
	tst.w d1
	bpl.s loc_205f24
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f0e
	bsr.w sub_205f32
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f58
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f0e:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f28
loc_205f24:
	addq.w #$2,$c(a0)
loc_205f28:
	lea (dat_235ed8).l,a1
	bra.w sub_205a64

sub_205f32:
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

sub_205f58:
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
	bra.s loc_205f28
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f28
	.incbin 24468, 460
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20616e(pc,d0.w),d1
	jmp dat_20616e(pc,d1.w)
dat_20616e:
	dc.b $00,$08,$00,$44,$00,$a4,$00,$bc
	addq.b #$2,$24(a0)
	move.l #$23ecf4,$4(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$10,$19(a0)
	move.w #$544,$2(a0)
	tst.b $1c(a0)
	beq.s loc_2061b0
	addq.b #$2,$24(a0)
	cmpi.b #$5,$1c(a0)
	bcs.s loc_2061b0
	addq.b #$2,$24(a0)
loc_2061b0:
	rts
	.incbin 25010, 120
	tst.b ($ff1521).l
	bne.s loc_206238
	jmp (sub_2038f6).l
loc_206238:
	cmpi.b #$6,($ff1506).l
	bne.s loc_206256
	ori.b #$80,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_206256
	andi.b #$7f,$2(a0)
loc_206256:
	move.w ($f7a8).w,d0
	move.b $1c(a0),d1
	subq.b #$1,d1
	cmpi.b #$4,d1
	bcs.s loc_206268
	subq.b #$4,d1
loc_206268:
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
	bcs.s loc_206284
	moveq #$0,d1
loc_206284:
	move.b d1,$30(a0)
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$8(a0)
loc_206294:
	move.w (a1)+,$c(a0)
	move.b ($d022).w,$22(a0)
	lea (dat_23ebcc).l,a1
	jsr (sub_205a64).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062bc
	rts
loc_2062bc:
	cmp.b $24(a0),d0
	beq.s loc_2062d2
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2062d2:
	jmp (sub_20384a).l
loc_2062d8:
	bclr.b #$7,($ff156b).l
	beq.s loc_206326
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206328(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2062fc:
	move.l (a1)+,(a2)+
	dbf d0,loc_2062fc
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206326:
	rts
dat_206328:
	.incbin 25384, 436

sub_2064dc:
	rts
loc_2064de:
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
loc_20657c:
	move.w ($ff155e).l,($f71c).w
	cmpi.b #$6,($ff1506).l
	bne.s loc_206598
	move.b ($ff1593).l,($ff195b).l
loc_206598:
	tst.b ($ff1522).l
	bpl.s loc_2065ae
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065ae:
	rts

sub_2065b0:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064de
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
	bne.s loc_20666a
	move.b ($ff1591).l,($ff195b).l
loc_20666a:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20668c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_20668c:
	tst.b ($ff1522).l
	bpl.s loc_2066a2
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066a2:
	rts

sub_2066a4:
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
	bpl.s loc_2066e0
	move.b d1,d0
	bpl.s loc_2066da
	subq.b #$1,d0
loc_2066da:
	addi.b #$20,d0
	bra.s loc_2066ea
loc_2066e0:
	move.b d1,d0
	bpl.s loc_2066e6
	addq.b #$1,d0
loc_2066e6:
	addi.b #$1f,d0
loc_2066ea:
	andi.b #$c0,d0
	beq.w loc_2067ba
	cmpi.b #$80,d0
	beq.w loc_206956
	andi.b #$38,d1
	bne.s loc_206702
	addq.w #$8,d2
loc_206702:
	cmpi.b #$40,d0
	beq.w loc_206a2c
	bra.w loc_20688e

sub_20670e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069b4
	cmpi.b #$80,d0
	beq.w sub_2068de
	cmpi.b #$c0,d0
	beq.w loc_20681e

sub_206736:
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
loc_20679a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067a8
	move.b ($f768).w,d3
	exg d0,d1
loc_2067a8:
	btst.l #$0,d3
	beq.s loc_2067b0
	move.b d2,d3
loc_2067b0:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067ba:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201058).l
	move.b #$0,d2
loc_2067d6:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067e2
	move.b d2,d3
loc_2067e2:
	rts

sub_2067e4:
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
	beq.s loc_20681c
	move.b #$0,d3
loc_20681c:
	rts
loc_20681e:
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
	bra.w loc_20679a

sub_206886:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20688e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b #$c0,d2
	bra.w loc_2067d6
	.incbin 26798, 48

sub_2068de:
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
	bra.w loc_20679a

sub_20694e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206956:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201058).l
	move.b #$80,d2
	bra.w loc_2067d6
	.incbin 27002, 58
loc_2069b4:
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
	bra.w loc_20679a

sub_206a24:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a2c:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b #$40,d2
	bra.w loc_2067d6
	.incbin 27216, 48

sub_206a80:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206aa4
	addi.w #$c,d3
	moveq #$a,d5
loc_206aa4:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ab2:
	tst.b $1(a1)
	bpl.s loc_206abe
	move.b $20(a1),d0
	bne.s loc_206aca
loc_206abe:
	lea $40(a1),a1
	dbf d6,loc_206ab2
	moveq #$0,d0
	rts
loc_206aca:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e30).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206af2
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206af8
	bra.w loc_206abe
loc_206af2:
	cmp.w d4,d0
	bhi.w loc_206abe
loc_206af8:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b10
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b16
	bra.w loc_206abe
loc_206b10:
	cmp.w d5,d0
	bhi.w loc_206abe
loc_206b16:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b8a
	cmpi.b #$c0,d1
	beq.w loc_206d6a
	tst.b d1
	bmi.w loc_206c54
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b4e
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206b4c
	addq.b #$2,$24(a1)
loc_206b4c:
	rts
loc_206b4e:
	tst.w $12(a0)
	bpl.s loc_206b78
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206b88
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206b88
	addq.b #$4,$25(a1)
	rts
loc_206b78:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206b88
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206b88:
	rts

sub_206b8a:
	tst.b ($ff1521).l
	bne.s loc_206ba4
	tst.b ($ff151f).l
	bne.s loc_206ba4
	cmpi.b #$2,$1c(a0)
	bne.w loc_206c54
loc_206ba4:
	tst.b $21(a1)
	beq.s loc_206bce
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206bcc
	bset.b #$7,$22(a1)
loc_206bcc:
	rts
loc_206bce:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206be6
	moveq #$6,d0
loc_206be6:
	move.w d0,$3e(a1)
	move.w dat_206c46(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206c00
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206c00:
	bsr.w sub_20ab18
	move.w #$96,d0
	jsr (sub_2021fe).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c36
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c3e
	neg.w $12(a0)
	rts
loc_206c36:
	addi.w #$100,$12(a0)
	rts
loc_206c3e:
	subi.w #$100,$12(a0)
	rts
dat_206c46:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206c4e:
	bset.b #$7,$22(a1)
loc_206c54:
	tst.b ($ff1521).l
	bne.s loc_206c64
	tst.b ($ff151f).l
	beq.s loc_206c68
loc_206c64:
	moveq #$ffffffff,d0
	rts
loc_206c68:
	nop
	tst.w $30(a0)
	bne.s loc_206c64
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206c9e
	tst.w ($ff1512).l
	beq.w loc_206d08
	jsr (sub_20759a).l
	bne.s loc_206c9e
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206c9e:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206cb4
	move.b #$0,($ff156f).l
loc_206cb4:
	move.b #$4,$24(a0)
	bsr.w sub_2050ba
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206ce4
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206ce4:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206cf2
	neg.w $10(a0)
loc_206cf2:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d08:
	tst.w ($ff1588).l
	bne.w loc_206c9e

sub_206d12:
	tst.w ($ff1906).l
	bne.s loc_206d66
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050ba
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
loc_206d66:
	moveq #$ffffffff,d0
	rts
loc_206d6a:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206e1c
	cmpi.b #$b,d1
	beq.w loc_206de6
	cmpi.b #$c,d1
	beq.w loc_206dea
	cmpi.b #$17,d1
	beq.w loc_206e1c
	cmpi.b #$21,d1
	beq.w loc_206e1c
	cmpi.b #$23,d1
	beq.w loc_206e1c
	cmpi.b #$2f,d1
	beq.w loc_206e22
	cmpi.b #$3a,d1
	beq.w loc_206e22
	cmpi.b #$3b,d1
	beq.w loc_206e22
	cmpi.b #$1,($f7aa).w
	bne.s loc_206de4
	cmpi.b #$3c,d1
	blt.s loc_206de4
	cmpi.b #$3f,d1
	bgt.s loc_206de4
	bsr.w sub_206b8a
	tst.b $20(a1)
	bne.s loc_206ddc
	addq.b #$3,$21(a1)
loc_206ddc:
	clr.b $20(a1)
	bra.w loc_206e1c
loc_206de4:
	rts
loc_206de6:
	bra.w loc_206c4e
loc_206dea:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206e18
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206e04
	subi.w #$10,d0
loc_206e04:
	sub.w d2,d0
	bcc.s loc_206e10
	addi.w #$18,d0
	bcs.s loc_206e14
	bra.s loc_206e18
loc_206e10:
	cmp.w d4,d0
	bhi.s loc_206e18
loc_206e14:
	bra.w loc_206c54
loc_206e18:
	bra.w sub_206b8a
loc_206e1c:
	addq.b #$1,$21(a1)
	rts
loc_206e22:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e2e
	addq.b #$1,$21(a1)
loc_206e2e:
	rts
dat_206e30:
	.incbin 28208, 362
loc_206f9a:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206fb0
	move.l #$4000,(dat_20712a).l
	bra.s loc_206fd0
loc_206fb0:
	addi.l #$2000,(dat_20712a).l
	cmpi.l #$80000,(dat_20712a).l
	bls.s loc_206fd0
	move.l #$80000,(dat_20712a).l
loc_206fd0:
	move.l (dat_20712a).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206fe2
	sub.l d0,$c(a0)
loc_206fe2:
	btst.b #$1,($f604).w
	beq.s loc_206fee
	add.l d0,$c(a0)
loc_206fee:
	btst.b #$2,($f604).w
	beq.s loc_206ffa
	sub.l d0,$8(a0)
loc_206ffa:
	btst.b #$3,($f604).w
	beq.s loc_207006
	add.l d0,$8(a0)
loc_207006:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e70).l
	move.w (a1),($ff194e).l
	lea (dat_20712e).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207048
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207042
	move.b #$0,d1
loc_207042:
	move.b d1,($ff1904).l
loc_207048:
	btst.b #$7,($f605).w
	beq.s loc_207068
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207062
	add.b (a2),d1
loc_207062:
	move.b d1,($ff1904).l
loc_207068:
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
	beq.s loc_2070f4
	bsr.w sub_20759a
	bne.s loc_2070f4
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
loc_2070f4:
	btst.b #$4,($f605).w
	beq.s loc_207124
	move.b #$0,($ff1906).l
	move.l #$21d400,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207124:
	jmp (sub_20384a).l
dat_20712a:
	dc.b $00,$00,$40,$00
dat_20712e:
	.incbin 28974, 602

sub_207388:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207396:
	clr.l (a2)+
	dbf d0,loc_207396
	rts

sub_20739e:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2073ac(pc,d0.w),d0
	jmp dat_2073ac(pc,d0.w)
dat_2073ac:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_20764c).l,a0
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
	bcc.s loc_2073ea
	moveq #$0,d6
loc_2073ea:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2073f2:
	cmp.w (a0),d6
	bls.s loc_207404
	tst.b $4(a0)
	bpl.s loc_207400
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207400:
	addq.w #$8,a0
	bra.s loc_2073f2
loc_207404:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207424
loc_207412:
	cmp.w (a0),d6
	bls.s loc_207424
	tst.b $4(a0)
	bpl.s loc_207420
	addq.b #$1,$1(a2)
loc_207420:
	addq.w #$8,a0
	bra.s loc_207412
loc_207424:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20750e
	bge.s loc_2074b4
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207490
loc_20745e:
	cmp.w -$8(a0),d6
	bge.s loc_207490
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207474
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207474:
	bsr.w sub_207532
	bne.s loc_20747e
	subq.w #$8,a0
	bra.s loc_20745e
loc_20747e:
	tst.b $4(a0)
	bpl.s loc_20748e
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20748e:
	addq.w #$8,a0
loc_207490:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_20749c:
	cmp.w -$8(a0),d6
	bgt.s loc_2074ae
	tst.b -$4(a0)
	bpl.s loc_2074aa
	subq.b #$1,(a2)
loc_2074aa:
	subq.w #$8,a0
	bra.s loc_20749c
loc_2074ae:
	move.l a0,($f770).w
	rts
loc_2074b4:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2074c8:
	cmp.w (a0),d6
	bls.s loc_2074ea
	tst.b $4(a0)
	bpl.s loc_2074d6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2074d6:
	bsr.w sub_207532
	beq.s loc_2074c8
	tst.b $4(a0)
	bpl.s loc_2074ea
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2074ea:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_20750a
loc_2074f8:
	cmp.w (a0),d6
	bls.s loc_20750a
	tst.b $4(a0)
	bpl.s loc_207506
	addq.b #$1,$1(a2)
loc_207506:
	addq.w #$8,a0
	bra.s loc_2074f8
loc_20750a:
	move.l a0,($f774).w
loc_20750e:
	rts

sub_207510:
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

sub_207532:
	bsr.s sub_207510
	beq.s loc_207544
	tst.b $4(a0)
	bpl.s loc_20754a
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20754a
loc_207544:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20754a:
	bsr.w sub_20759a
	bne.s loc_207598
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
	bpl.s loc_20757a
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20757a:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_20758c
	nop
	nop
	nop
	nop
loc_20758c:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207598:
	rts

sub_20759a:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2075a2:
	tst.b (a1)
	beq.s loc_2075ae
	lea $40(a1),a1
	dbf d0,loc_2075a2
loc_2075ae:
	rts

sub_2075b0:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2075ce
loc_2075c2:
	tst.b (a1)
	beq.s loc_2075ce
	lea $40(a1),a1
	dbf d0,loc_2075c2
loc_2075ce:
	rts
loc_2075d0:
	move.w $8(a0),d0
loc_2075d4:
	tst.b $1(a0)
	bmi.s loc_20763e
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20763e
loc_2075f2:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207634
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20762c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207624
	moveq #$0,d1
	bra.s loc_20762c
loc_207624:
	cmpi.w #$3,d1
	bcs.s loc_20762c
	moveq #$2,d1
loc_20762c:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207634:
	jsr (sub_2038f6).l
	moveq #$1,d0
	rts
loc_20763e:
	btst.b #$7,($ff152e).l
	bne.s loc_2075f2
	moveq #$0,d0
	rts
dat_20764c:
	.incbin 30284, 5490

sub_208bbe:
	btst.b #$3,$22(a0)
	beq.s loc_208c2e
	btst.b #$3,$22(a1)
	beq.s loc_208c2e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208c2e
	tst.b $2a(a1)
	beq.s loc_208bf0
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_208bf0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208c1c
	cmpi.b #$17,$1c(a1)
	beq.s loc_208c1c
	bclr.b #$0,$2c(a1)
loc_208c1c:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c2e
	bclr.b #$1,$22(a1)
loc_208c2e:
	rts

sub_208c30:
	cmpi.b #$4,$24(a1)
	bne.s loc_208c42
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208c42:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208ca2
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208c64
	bclr.b #$3,$22(a0)
	bra.w sub_208bbe
loc_208c64:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208ca2
	tst.b ($ff195b).l
	beq.s loc_208c8c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208c9c
loc_208c8c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208c9c:
	move.b #$0,$1c(a1)
loc_208ca2:
	bset.b #$3,$22(a1)
	beq.s loc_208cc4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208cfc
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208cc4:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208cf0
	cmpi.b #$2,$24(a0)
	beq.s loc_208cf6
loc_208cf0:
	move.w $10(a1),$14(a1)
loc_208cf6:
	bclr.b #$1,$22(a1)
loc_208cfc:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
loc_208d06:
	move.b #$1,$25(a0)
loc_208d0c:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208fc0
	btst.b #$6,$2c(a1)
	bne.w loc_208fc0
	cmpi.b #$6,$24(a1)
	bcc.w loc_208fc0
	tst.b $0(a1)
	beq.w loc_208fc0
	tst.b $1(a0)
	bpl.w loc_208fc0
	tst.b ($ff1906).l
	bne.w loc_208fc0
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208fc0
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208fc0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208d7a
	btst.b #$3,$22(a0)
	bne.s loc_208d8c
	bra.w loc_208fc0
loc_208d7a:
	cmpi.b #$1,$25(a0)
	bne.s loc_208d8c
	tst.w $12(a1)
	beq.s loc_208d8c
	bmi.w loc_208fc0
loc_208d8c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208fc0
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208fc0
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208dc2
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208dc2:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208dd0
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208dd0:
	cmp.w d4,d5
	bcs.w loc_208e64
	cmpi.b #$1,$25(a0)
	beq.w loc_208fc0
	cmpi.b #$a,$0(a0)
	bne.s loc_208df2
	btst.b #$1,$22(a1)
	bne.w loc_208fc0
loc_208df2:
	cmpi.b #$4,d5
	bls.w loc_208fc0
	bsr.w sub_209010
	move.l d0,-(a7)
	bsr.w sub_208bbe
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208e1c
	tst.w $10(a1)
	beq.s loc_208e4c
	bpl.s loc_208e24
	bra.s loc_208e4c
loc_208e1c:
	tst.w $10(a1)
	beq.s loc_208e4c
	bpl.s loc_208e4c
loc_208e24:
	bsr.w sub_208fd0
	btst.b #$1,$22(a1)
	bne.s loc_208e42
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208e42:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208e4c:
	bsr.w sub_209086
	bsr.w sub_208fd0
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208e64:
	cmpi.b #$19,$0(a0)
	bne.s loc_208e76
	btst.b #$2,$22(a1)
	bne.w loc_208fc0
loc_208e76:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208e8c
	bmi.w loc_208f5c
loc_208e8c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208e9e
	tst.w $12(a1)
	beq.s loc_208e9e
	bmi.w loc_208fc0
loc_208e9e:
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
	beq.s loc_208eea
	bpl.s loc_208eca
	neg.b d0
loc_208eca:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066a4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208eea
	tst.w $10(a0)
	bpl.s loc_208ee6
	neg.w d1
loc_208ee6:
	add.w d1,$8(a1)
loc_208eea:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208f54
	tst.w $12(a0)
	bmi.s loc_208f28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206736).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f28
	add.w d1,$c(a1)
	bra.w loc_208fc0
loc_208f28:
	tst.w $12(a0)
	bpl.s loc_208f54
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20694e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208f54
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d12).l
	movem.l (a7)+,a0-a1
	bra.s loc_208fc0
loc_208f54:
	bsr.w sub_208c30
	moveq #$1,d0
	rts
loc_208f5c:
	cmpi.b #$1,$25(a0)
	beq.s loc_208fc0
	cmpi.b #$9,$0(a0)
	beq.s loc_208fc0
	cmpi.b #$a,$0(a0)
	bne.s loc_208f86
	cmpi.b #$2,$25(a0)
	beq.s loc_208fa6
	btst.b #$1,$1(a0)
	bne.s loc_208fa6
	bra.s loc_208fc0
loc_208f86:
	btst.b #$1,$22(a1)
	bne.s loc_208fa6
	tst.w $12(a0)
	beq.s loc_208fa6
	bmi.s loc_208fa6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d12).l
	movem.l (a7)+,a0-a1
loc_208fa6:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209086
	bsr.w sub_208bbe
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208fc0:
	bsr.w sub_209086
	bsr.w sub_208bbe
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208fd0:
	tst.w $10(a0)
	beq.s loc_20900e
	cmpi.b #$a,$0(a0)
	beq.s loc_20900e
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208fea
	neg.b d0
loc_208fea:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066a4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20900e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d12).l
	movem.l (a7)+,a0-a1
loc_20900e:
	rts

sub_209010:
	cmpi.b #$a,$0(a0)
	bne.s loc_209020
	move.b #$0,$20(a1)
	rts
loc_209020:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209074
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209084
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209042
	tst.w $10(a2)
	beq.s loc_209084
loc_209042:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209054
	cmp.w $8(a2),d1
	bcs.s loc_209084
	bra.s loc_20905a
loc_209054:
	cmp.w $8(a2),d1
	bcc.s loc_209084
loc_20905a:
	cmpi.b #$15,$0(a0)
	beq.s loc_209084
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d12).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209074:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209084:
	rts

sub_209086:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_2090a0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_2090a0
	move.b #$0,$20(a1)
loc_2090a0:
	rts
	.incbin 37026, 594
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20930e(pc,d0.w),d0
	jsr dat_20930e(pc,d0.w)
	jsr (sub_20384a).l
	jmp (loc_2075d0).l
dat_20930e:
	dc.b $00,$04,$00,$36
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20935e,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.b #$0,$1a(a0)
	moveq #$b,d0
	jsr (sub_20cb38).l
	tst.b $1(a0)
	bpl.s loc_20935c
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d0c).l
loc_20935c:
	rts
	.incbin 37726, 268
loc_20946a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209478(pc,d0.w),d0
	jmp dat_209478(pc,d0.w)
dat_209478:
	.incbin 38008, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_20946a
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_2094ce
	tst.b $1(a0)
	bpl.s loc_2094d6
loc_2094ce:
	move.w dat_209528(pc,d0.w),d1
	jsr dat_209528(pc,d1.w)
loc_2094d6:
	bsr.w sub_20384a
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209508
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209508:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038f6
	rts
dat_209528:
	.incbin 38184, 26
	addq.b #$2,$24(a0)
	move.l #$2098aa,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209598
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2098b0,$4(a0)
	bra.s loc_2095da
loc_209598:
	btst.l #$3,d0
	beq.s loc_2095c6
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2098fa,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20cb38).l
	move.l (a7)+,d0
	bra.s loc_2095da
loc_2095c6:
	btst.b #$1,$1(a0)
	beq.s loc_2095da
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_2095da:
	btst.l #$1,d0
	beq.s loc_2095e6
	bset.b #$5,$2(a0)
loc_2095e6:
	andi.w #$2,d0
	move.w dat_2095f2(pc,d0.w),$30(a0)
	rts
dat_2095f2:
	dc.b $f0,$00,$f6,$00

sub_2095f6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d0c).l
	tst.b $1(a0)
	bpl.s loc_209612
	lea ($d000).w,a1
	bsr.s sub_2095f6
	bne.s loc_209614
loc_209612:
	rts
loc_209614:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2021fe).l
	lea (dat_20989c).l,a1
	bra.w sub_205a64
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_209668:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d0c).l
	tst.b $1(a0)
	bpl.s loc_20968a
	lea ($d000).w,a1
	bsr.s sub_209668
	btst.b #$5,$22(a0)
	bne.s loc_20968c
loc_20968a:
	rts
loc_20968c:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_2096ba
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_2096ba:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_2096d4
	move.b #$0,$1c(a1)
loc_2096d4:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2021fe).l
	.incbin 38638, 430
dat_20989c:
	.incbin 39068, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209996(pc,d0.w),d1
	jmp dat_209996(pc,d1.w)
dat_209996:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2099a0:
	.incbin 39328, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2099f8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2099f0
	moveq #$0,d1
	bra.s loc_2099f8
loc_2099f0:
	cmpi.w #$3,d1
	bcs.s loc_2099f8
	moveq #$2,d1
loc_2099f8:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209a14
	moveq #$6,d1
loc_209a14:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2099a0).l,a1
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
	beq.s loc_209a64
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a5c
	moveq #$0,d0
	bra.s loc_209a64
loc_209a5c:
	cmpi.w #$3,d0
	bcs.s loc_209a64
	moveq #$2,d0
loc_209a64:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b32
	dbf d0,loc_209a64
	bclr.b #$7,(a2)
	bra.s loc_209aba
loc_209a76:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209aa2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a9a
	moveq #$0,d0
	bra.s loc_209aa2
loc_209a9a:
	cmpi.w #$3,d0
	bcs.s loc_209aa2
	moveq #$2,d0
loc_209aa2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209b32
	dbf d0,loc_209aa2
	bclr.b #$7,(a2)
	bsr.w sub_2075b0
	bne.w loc_209b3e
loc_209aba:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209e04,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b10
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209b10
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209b10:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209b32:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209a76
loc_209b3e:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209b64
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209b5c
	moveq #$0,d0
	bra.s loc_209b64
loc_209b5c:
	cmpi.w #$3,d0
	bcs.s loc_209b64
	moveq #$2,d0
loc_209b64:
	lea $1(a2),a3
loc_209b68:
	btst.b #$0,-(a3)
	bne.w sub_2038f6
	dbf d0,loc_209b68
	tst.b $1(a0)
	bmi.s loc_209b98
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209c12
loc_209b98:
	tst.w ($ff190e).l
	bne.s loc_209ba8
	move.b ($ff1913).l,$1a(a0)
loc_209ba8:
	bra.w sub_20384a
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209c16
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209bf8
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209bf0
	moveq #$0,d1
	bra.s loc_209bf8
loc_209bf0:
	cmpi.w #$3,d1
	bcs.s loc_209bf8
	moveq #$2,d1
loc_209bf8:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209dfc).l,a1
	bsr.w sub_205a64
	bra.w sub_20384a
loc_209c12:
	bra.w sub_2038f6

sub_209c16:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c66
	bset.b #$1,($ff150d).l
	beq.s loc_209c50
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c66
	bset.b #$2,($ff150d).l
	bne.s loc_209c66
loc_209c50:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a24).l
loc_209c66:
	jmp (sub_2021fe).l
	.incbin 40044, 400
dat_209dfc:
	.incbin 40444, 402
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fbc(pc,d0.w),d0
	jsr dat_209fbc(pc,d0.w)
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038f6
	rts
dat_209fbc:
	dc.b $00,$0e,$00,$40,$00,$84,$00,$a6
	dc.b $00,$ca,$00,$f8,$01,$0c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20a104,$4(a0)
	moveq #$5,d0
	jsr (sub_20cb38).l
	move.b #$1,$18(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$5,$1a(a0)
	bsr.w sub_20a0d0
	tst.b ($ff152e).l
	beq.s loc_20a036
	cmpi.b #$2,($ff152e).l
	bne.s loc_20a01c
	btst.b #$3,$22(a0)
	bne.s loc_20a03c
	bra.s loc_20a036
loc_20a01c:
	move.b #$0,$1a(a0)
	btst.b #$3,$22(a0)
	beq.s loc_20a036
	move.b #$6,$24(a0)
	move.b #$1,$1c(a0)
loc_20a036:
	jmp (sub_20384a).l
loc_20a03c:
	addq.b #$2,$24(a0)
	bsr.w sub_20a0d0
	addq.w #$2,$c(a0)
	move.w ($f704).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcc.s loc_20a05c
	jmp (sub_2038f6).l
loc_20a05c:
	jmp (sub_20384a).l
	.incbin 41058, 110

sub_20a0d0:
	lea ($d000).w,a1
	bsr.w sub_20a0d8

sub_20a0d8:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d06).l
	.incbin 41190, 106
loc_20a150:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a17e(pc,d0.w),d0
	jsr dat_20a17e(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a17c
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a176
	btst.b #$0,($ff1505).l
	bne.s loc_20a17c
loc_20a176:
	jmp (sub_20384a).l
loc_20a17c:
	rts
dat_20a17e:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a758,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a1b2
	move.b #$13,$1a(a0)
loc_20a1b2:
	rts
loc_20a1b4:
	tst.b ($ff0f01).l
	beq.s loc_20a1c2
	jmp (sub_2038f6).l
loc_20a1c2:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a150
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a1e6(pc,d0.w),d0
	jsr dat_20a1e6(pc,d0.w)
	jsr (sub_20384a).l
	jmp (loc_2075d0).l
dat_20a1e6:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a758,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a234
	tst.b $29(a0)
	bne.s loc_20a234
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a234:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a300
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a25c
	addq.b #$2,$1a(a0)
loc_20a25c:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a270
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a270:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a2d6
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a2a2
	tst.b $29(a0)
	beq.s loc_20a29a
	tst.b ($ff1956).l
	beq.s loc_20a2d6
	bra.s loc_20a2a2
loc_20a29a:
	tst.b ($ff1956).l
	bne.s loc_20a2d6
loc_20a2a2:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a300
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a2d0
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a2d0:
	jsr (sub_205a24).l
loc_20a2d6:
	rts
	subq.b #$1,$2a(a0)
	beq.s loc_20a2e8
	lea (dat_20a6d0).l,a1
	bra.w sub_205a64
loc_20a2e8:
	addq.b #$2,$24(a0)
	move.b #$b,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a2fe
	addq.b #$2,$1a(a0)
loc_20a2fe:
	rts

sub_20a300:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a338
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a330
	moveq #$0,d1
	bra.s loc_20a338
loc_20a330:
	cmpi.w #$3,d1
	bcs.s loc_20a338
	moveq #$2,d1
loc_20a338:
	add.w d1,d0
	rts

sub_20a33c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a35e
	tst.b ($ff1956).l
	beq.s loc_20a356
	tst.b $29(a0)
	bne.s loc_20a35e
	rts
loc_20a356:
	tst.b $29(a0)
	beq.s loc_20a35e
	rts
loc_20a35e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d0c).l
	tst.b $28(a0)
	bne.s loc_20a380
	tst.b ($ff0f01).l
	beq.s loc_20a380
	jmp (loc_2075d0).l
loc_20a380:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a1b4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a398(pc,d0.w),d1
	jmp dat_20a398(pc,d1.w)
dat_20a398:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a758,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a3e2
	tst.b $29(a0)
	bne.s loc_20a3e2
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a3e2:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a300
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a40e
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a40e:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a468
	move.b $25(a0),d0
	beq.s loc_20a448
	bsr.w sub_203792
	jsr (sub_2067e4).l
	tst.w d1
	bpl.w loc_20a456
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a456
loc_20a448:
	tst.b $1(a0)
	bpl.s loc_20a456
	lea ($d000).w,a1
	bsr.w sub_20a33c
loc_20a456:
	tst.w ($ff190e).l
	bne.s loc_20a468
	lea (dat_20a6d0).l,a1
	bsr.w sub_205a64
loc_20a468:
	bsr.w sub_20384a
	jmp (loc_2075d0).l
	.incbin 42098, 606
dat_20a6d0:
	.incbin 42704, 586
loc_20a91a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a92e(pc,d0.w),d0
	jsr dat_20a92e(pc,d0.w)
	jmp (sub_20384a).l
dat_20a92e:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a96e,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a968
	jmp (sub_2038f6).l
loc_20a968:
	subq.w #$2,$c(a0)
	rts
	.incbin 43374, 82
	tst.b $28(a0)
	bmi.w loc_20a91a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a9d6(pc,d0.w),d0
	jmp dat_20a9d6(pc,d0.w)
dat_20a9d6:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20aa70,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20aa06
	move.b #$3,$1a(a0)
	bra.s loc_20aa26
loc_20aa06:
	tst.w ($ff1588).l
	beq.s loc_20aa14
	move.b #$2,$1a(a0)
loc_20aa14:
	tst.b $28(a0)
	beq.s loc_20aa26
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20aa26:
	tst.b $28(a0)
	bne.s loc_20aa6a
	tst.b $29(a0)
	beq.s loc_20aa56
	tst.w ($ff1512).l
	beq.s loc_20aa42
	bclr.b #$5,$2(a0)
	bra.s loc_20aa6a
loc_20aa42:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20aa6a
	eori.b #$20,$2(a0)
	bra.s loc_20aa6a
loc_20aa56:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20aa6a
	move.b #$2,$1a(a0)
loc_20aa6a:
	jmp (sub_20384a).l
	.incbin 43632, 168

sub_20ab18:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ab34
	move.l d1,(a3)
loc_20ab34:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ab5e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a24).l
loc_20ab5e:
	rts
loc_20ab60:
	tst.w ($ff1588).l
	beq.s loc_20abb6
	bsr.w sub_20adb2
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
	lea (dat_20af12).l,a2
	moveq #$2,d6
	bsr.w sub_20af6a
	bra.w loc_20ac10
loc_20abb6:
	tst.b ($ff1511).l
	beq.s loc_20abda
	bpl.s loc_20abc4
	bsr.w sub_20ad5c
loc_20abc4:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ae4c
loc_20abda:
	tst.b ($ff150f).l
	beq.s loc_20ac10
	bpl.s loc_20abe8
	bsr.w sub_20ad48
loc_20abe8:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20ac0c
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20ac0c:
	bsr.w sub_20ae42
loc_20ac10:
	tst.w ($ff1588).l
	bne.w loc_20acbc
	tst.b ($ff1510).l
	beq.w loc_20acbc
	tst.w ($f63a).w
	bne.w loc_20acbc
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20ad1a
	tst.b ($f7cc).w
	bne.s loc_20ac66
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac66
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20ac66
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20ac66
	move.b #$9,(a1)
loc_20ac66:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20af58
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20af62
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20acb8
	move.w #$63,d1
loc_20acb8:
	bsr.w sub_20af62
loc_20acbc:
	tst.b ($ff150e).l
	beq.s loc_20acce
	clr.b ($ff150e).l
	bsr.w sub_20af38
loc_20acce:
	tst.b ($f7d6).w
	beq.s loc_20ad18
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20acee
	move.l #$6d400001,d0
loc_20acee:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20add0
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20ad0e
	move.l #$6e800001,d0
loc_20ad0e:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20add0
loc_20ad18:
	rts
loc_20ad1a:
	btst.b #$7,($ff152e).l
	bne.s loc_20ad46
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d12
	move.b #$1,($ff150c).l
loc_20ad46:
	rts

sub_20ad48:
	move.l #$73600002,($c00004).l
	lea dat_20adae(pc),a2
	move.w #$2,d2
	bra.s loc_20ad78

sub_20ad5c:
	lea ($c00000).l,a6
	bsr.w sub_20af38
	move.l #$70600002,($c00004).l
	lea dat_20ada6(pc),a2
	move.w #$6,d2
loc_20ad78:
	lea (dat_23589a).l,a1
loc_20ad7e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ad9a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ad8e:
	move.l (a3)+,(a6)
	dbf d1,loc_20ad8e
loc_20ad94:
	dbf d2,loc_20ad7e
	rts
loc_20ad9a:
	move.l #$0,(a6)
	dbf d1,loc_20ad9a
	bra.s loc_20ad94
dat_20ada6:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20adae:
	dc.b $ff,$ff,$00,$00

sub_20adb2:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20af2e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20af2e

sub_20add0:
	lea (dat_20af0a).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20ade0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ade4:
	sub.l d3,d1
	bcs.s loc_20adec
	addq.w #$1,d2
	bra.s loc_20ade4
loc_20adec:
	add.l d3,d1
	tst.w d2
	beq.s loc_20adf6
	move.w #$1,d4
loc_20adf6:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20ae02
	tst.w d6
	bne.s loc_20ae34
loc_20ae02:
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
loc_20ae28:
	addi.l #$400000,d0
	dbf d6,loc_20ade0
	rts
loc_20ae34:
	moveq #$f,d5
loc_20ae36:
	move.l #$0,(a6)
	dbf d5,loc_20ae36
	bra.s loc_20ae28

sub_20ae42:
	lea (dat_20af12).l,a2
	moveq #$2,d6
	bra.s loc_20ae54

sub_20ae4c:
	lea (dat_20af06).l,a2
	moveq #$5,d6
loc_20ae54:
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20ae5c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ae60:
	sub.l d3,d1
	bcs.s loc_20ae68
	addq.w #$1,d2
	bra.s loc_20ae60
loc_20ae68:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ae72
	move.w #$1,d4
loc_20ae72:
	tst.w d4
	beq.s loc_20aea0
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
loc_20aea0:
	addi.l #$400000,d0
	dbf d6,loc_20ae5c
	rts
	.incbin 44716, 90
dat_20af06:
	dc.b $00,$01,$86,$a0
dat_20af0a:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20af12:
	dc.b $00,$00,$00,$64
dat_20af16:
	dc.b $00,$00,$00,$0a
dat_20af1a:
	dc.b $00,$00,$00,$01
dat_20af1e:
	.incbin 44830, 16

sub_20af2e:
	moveq #$3,d6
	lea (dat_20af1e).l,a2
	bra.s sub_20af6a

sub_20af38:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20af4e
	moveq #$9,d1
loc_20af4e:
	lea (dat_20af1a).l,a2
	moveq #$0,d6
	bra.s sub_20af6a

sub_20af58:
	lea (dat_20af1a).l,a2
	moveq #$0,d6
	bra.s sub_20af6a

sub_20af62:
	lea (dat_20af16).l,a2
	moveq #$1,d6

sub_20af6a:
	moveq #$0,d4
	lea (dat_23589a).l,a1
loc_20af72:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20af76:
	sub.l d3,d1
	bcs.s loc_20af7e
	addq.w #$1,d2
	bra.s loc_20af76
loc_20af7e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20af88
	move.w #$1,d4
loc_20af88:
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
	dbf d6,loc_20af72
	rts
	.incbin 44990, 358
	jsr (sub_20e9b6).l
	tst.b $24(a0)
	bne.w loc_20b1b4
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
	jsr (sub_20cb38).l
	tst.b $28(a0)
	bne.s loc_20b18e
	move.l #$ffff8000,d0
	move.w #$fe00,d1
	moveq #$3,d2
	moveq #$0,d3
	lea dat_20b238(pc),a1
	bra.s loc_20b1a0
loc_20b18e:
	move.l #$ffffc000,d0
	move.w #$ff00,d1
	moveq #$4,d2
	moveq #$1,d3
	lea dat_20b25a(pc),a1
loc_20b1a0:
	move.l d0,$30(a0)
	move.w d1,$36(a0)
	move.w d2,$38(a0)
	move.b d3,$1c(a0)
	move.l a1,$4(a0)
loc_20b1b4:
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2a(a0),d0
	bpl.s loc_20b1c8
	neg.w d0
loc_20b1c8:
	cmpi.w #$80,d0
	blt.s loc_20b1ea
	neg.l $30(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $34(a0)
loc_20b1ea:
	move.w $36(a0),d0
	add.w d0,$34(a0)
	move.b $34(a0),d0
	jsr (sub_200702).l
	swap d0
	move.w $38(a0),d1
	asr.l d1,d0
	add.l $2c(a0),d0
	move.l d0,$c(a0)
	lea dat_20b226(pc),a1
	jsr (sub_205a64).l
	jsr (sub_20384a).l
	move.w $2a(a0),d0
	jmp (loc_2075d4).l
dat_20b226:
	.incbin 45606, 18
dat_20b238:
	.incbin 45624, 34
dat_20b25a:
	.incbin 45658, 532
	cmpi.b #$1,$28(a0)
	beq.w loc_20b6b0
	jsr (sub_20e9b6).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b49c(pc,d0.w),d0
	jsr dat_20b49c(pc,d0.w)
	jsr (sub_20384a).l
	move.w $2a(a0),d0
	jmp (loc_2075d4).l
dat_20b49c:
	.incbin 46236, 532
loc_20b6b0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b6c4(pc,d0.w),d0
	jsr dat_20b6c4(pc,d0.w)
	jmp (sub_20384a).l
dat_20b6c4:
	.incbin 46788, 858

sub_20ba1e:
	tst.b ($ff1906).l
	bne.s loc_20ba36
	cmpi.b #$6,$24(a1)
	bcc.s loc_20ba36
	tst.w $12(a1)
	bmi.s loc_20ba36
	bra.s loc_20ba40
loc_20ba36:
	bclr.b #$3,$22(a0)
	moveq #$0,d1
	rts
loc_20ba40:
	lea (dat_20bacc).l,a2
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
	bpl.s loc_20bac2
	move.b $1(a2),d2
	ext.w d2
	neg.w d2
	move.w d0,d4
	move.w d1,d5
	sub.w d2,d4
	add.w d3,d5
	cmp.w d5,d4
	bpl.s loc_20bac2
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
	bpl.s loc_20bac2
	move.b $3(a2),d2
	ext.w d2
	neg.w d2
	move.w d0,d4
	move.w d1,d5
	sub.w d2,d4
	add.w d3,d5
	cmp.w d5,d4
	bpl.s loc_20bac2
	bset.b #$3,$22(a0)
	moveq #$ffffffff,d1
	rts
loc_20bac2:
	bclr.b #$3,$22(a0)
	moveq #$0,d1
	rts
dat_20bacc:
	.incbin 47820, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bb00(pc,d0.w),d0
	jsr dat_20bb00(pc,d0.w)
	jmp (loc_2075d0).l
dat_20bb00:
	dc.b $00,$0e,$01,$90,$00,$7e,$01,$c0
	dc.b $00,$ae,$01,$f8,$00,$e6
	move.l #$20bdd0,$4(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$19(a0)
	move.b #$18,$17(a0)
	move.b #$4,$16(a0)
	moveq #$7,d0
	jsr sub_20cb38(pc)
	move.b #$3,d0
	move.b #$2,d1
	tst.b $28(a0)
	bne.s loc_20bb50
	btst.b #$0,$1(a0)
	beq.s loc_20bb64
loc_20bb50:
	move.b #$4,d0
	move.b #$4,d1
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
loc_20bb64:
	move.b d0,$1c(a0)
	move.b d1,$24(a0)
	rts
loc_20bb6e:
	lea dat_20bd9a(pc),a1
	jsr (sub_205a64).l
	jmp (sub_20384a).l
	lea ($d000).w,a1
	moveq #$3,d0
	bsr.w sub_20ba1e
	tst.b d1
	beq.s loc_20bbaa
	move.l $c(a0),d0
	moveq #$0,d1
	move.b $16(a1),d1
	swap d1
	sub.l d1,d0
	move.l d0,$c(a1)
	move.b #$c,$24(a0)
	move.b #$4,$1c(a0)
loc_20bbaa:
	bra.w loc_20bb6e
	.incbin 48046, 226
	lea ($d000).w,a1
	moveq #$5,d0
	bsr.w sub_20ba1e
	tst.b d1
	beq.s loc_20bcbc
	move.l $c(a0),d0
	moveq #$0,d1
	move.b $16(a1),d1
	swap d1
	sub.l d1,d0
	move.l d0,$c(a1)
	move.b #$a,$24(a0)
	move.b #$3,$1c(a0)
loc_20bcbc:
	bra.w loc_20bb6e
	.incbin 48320, 218
dat_20bd9a:
	.incbin 48538, 1724
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c46c(pc,d0.w),d0
	jsr dat_20c46c(pc,d0.w)
	jsr (sub_20384a).l
	rts
dat_20c46c:
	dc.b $00,$16,$00,$e8

sub_20c470:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_208d06).l
	ori.b #$4,$1(a0)
	move.w #$44be,$2(a0)
	move.b #$2,$18(a0)
	move.w $8(a0),$38(a0)
	move.w $c(a0),$3a(a0)
	move.w $c(a0),$36(a0)
	move.l #$20c8d4,d0
	cmpi.w #$0,($ff1506).l
	beq.s loc_20c4cc
	move.l #$20c8d4,d0
	cmpi.w #$1,($ff1506).l
	beq.s loc_20c4cc
	move.l #$20c8d4,d0
loc_20c4cc:
	move.l d0,$4(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$3,d0
	move.b d0,$1a(a0)
	move.b dat_20c54c(pc,d0.w),$19(a0)
	move.b #$8,$16(a0)
	lsr.b #$2,d1
	andi.w #$3,d1
	move.b dat_20c550(pc,d1.w),$2d(a0)
	move.b $29(a0),d0
	beq.s loc_20c546
	jsr (sub_20759a).l
	beq.s loc_20c50a
	jmp (loc_20c8aa).l
loc_20c50a:
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
loc_20c546:
	addq.b #$2,$24(a0)
	rts
dat_20c54c:
	dc.b $10,$20,$30,$00
dat_20c550:
	dc.b $02,$03,$04,$06
	tst.w ($ff190e).l
	beq.s loc_20c560
	bra.w sub_20c470
loc_20c560:
	move.b $28(a0),d0
	lsr.b #$4,d0
	andi.w #$f,d0
	add.w d0,d0
	move.w dat_20c5a0(pc,d0.w),d0
	jsr dat_20c5a0(pc,d0.w)
	move.w $38(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c592
	rts
loc_20c592:
	lea ($d000).w,a1
	jsr (sub_208bbe).l
	bra.w loc_20c8aa
dat_20c5a0:
	.incbin 50592, 42
	move.l $8(a0),-(a7)
	jsr sub_20c892(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	addq.b #$1,$2a(a0)
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
loc_20c5ee:
	move.l (a7)+,d0
	move.l $8(a0),d1
	sub.l d0,d1
	asr.l #$8,d1
	move.w d1,$10(a0)
loc_20c5fc:
	jsr sub_20c470(pc)
	beq.s loc_20c614
	move.b $2c(a0),d0
	cmpi.b #$8,d0
	bcc.s loc_20c610
	addq.b #$1,$2c(a0)
loc_20c610:
	moveq #$1,d0
	rts
loc_20c614:
	moveq #$0,d0
	move.b $2c(a0),d0
	beq.s loc_20c620
	subq.b #$1,$2c(a0)
loc_20c620:
	moveq #$0,d0
	rts
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c892(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c892(pc)
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c5ee
	move.l $8(a0),-(a7)
	addq.b #$1,$2a(a0)
	jsr sub_20c892(pc)
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	jsr sub_20c892(pc)
	neg.w d0
	add.w $38(a0),d0
	move.w d0,$8(a0)
	bra.w loc_20c5ee

sub_20c66e:
	moveq #$0,d0
	move.b $2c(a0),d0
	asr.b #$1,d0
	add.w $3a(a0),d0
	move.w d0,$c(a0)
	bra.w loc_20c5fc
	move.b $2b(a0),d0
	bne.s loc_20c69a
	jsr sub_20c66e(pc)
	bne.s loc_20c690
	rts
loc_20c690:
	move.b #$1e,$2e(a0)
	addq.b #$2,$2b(a0)
loc_20c69a:
	move.b $2e(a0),d0
	beq.s loc_20c6a8
	subq.b #$1,$2e(a0)
	bra.w sub_20c66e
loc_20c6a8:
	jsr sub_20c470(pc)
	move.l $c(a0),d1
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	move.l d1,$c(a0)
	move.w $12(a0),d0
	cmpi.w #$400,d0
	bcc.s loc_20c6ce
	addi.w #$40,$12(a0)
loc_20c6ce:
	move.w ($f704).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c6ec
	lea ($d000).w,a1
	jsr (sub_208bbe).l
	jmp (sub_2038f6).l
loc_20c6ec:
	rts
	.incbin 50926, 420

sub_20c892:
	moveq #$0,d0
	move.b $2a(a0),d0
	jsr (sub_200702).l
	moveq #$0,d2
	move.b $2d(a0),d2
	muls.w d2,d0
	asr.w #$4,d0
	rts
loc_20c8aa:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c8ce
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c8ce:
	jmp (sub_2038f6).l
	.incbin 51412, 264
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9f6(pc,d0.w),d0
	jsr dat_20c9f6(pc,d0.w)
	jsr (sub_20384a).l
	jmp (loc_2075d0).l
dat_20c9f6:
	.incbin 51702, 204
loc_20cac2:
	lea dat_20cb14(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20cace:
	cmp.w (a1)+,d0
	bcs.s loc_20cad6
	addq.b #$2,d1
	bra.s loc_20cace
loc_20cad6:
	move.b d1,($ff1574).l
	move.w dat_20cb2c(pc,d1.w),d0
	jmp (sub_2023c8).l

sub_20cae6:
	lea dat_20cb14(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20caf2:
	cmp.w (a1)+,d0
	bcs.s loc_20cafa
	addq.b #$2,d1
	bra.s loc_20caf2
loc_20cafa:
	cmp.b ($ff1574).l,d1
	bne.s loc_20cb04
	rts
loc_20cb04:
	move.b d1,($ff1574).l
	move.w dat_20cb20(pc,d1.w),d0
	jmp (loc_2023fa).l
dat_20cb14:
	dc.b $0b,$00,$13,$00,$18,$00,$1c,$00
	dc.b $21,$00,$ff,$ff
dat_20cb20:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
	dc.b $00,$0d,$00,$0e
dat_20cb2c:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07,$00,$08

sub_20cb38:
	lea (dat_20cb5a).l,a1
	add.w d0,d0
	move.w dat_20cb5a(pc,d0.w),d4
	lea dat_20cb5a(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20cb5a:
	.incbin 52058, 74
	jsr (sub_20e9fe).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ccc6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cbc4(pc,d0.w),d0
	jmp dat_20cbc4(pc,d0.w)
dat_20cbc4:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20ce3e,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20cd94
	bsr.w sub_20cda2
	tst.b $28(a0)
	bmi.s loc_20cc12
	move.b #$4,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20cc12:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20cca6
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20cc4a
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20cd94
loc_20cc4a:
	move.b d0,$2e(a0)
	lea dat_20cdc0(pc),a1
	jsr (sub_205a64).l
	jsr (sub_20384a).l
	move.w $2a(a0),d0
	jmp (loc_2075d4).l
	.incbin 52328, 62

sub_20cca6:
	move.b $2e(a0),d0
	jsr (sub_200702).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20ccc6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ccd4(pc,d0.w),d0
	jmp dat_20ccd4(pc,d0.w)
dat_20ccd4:
	.incbin 52436, 192

sub_20cd94:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20cda2:
	lea dat_20ce76(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20cdc0:
	.incbin 52672, 182
dat_20ce76:
	.incbin 52854, 2932
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9f8(pc,d0.w),d0
	jmp dat_20d9f8(pc,d0.w)
dat_20d9f8:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e0f6,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e0b6).l,a2
loc_20da46:
	jsr (sub_20759a).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e0f6,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20da98
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20da98:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20da46
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dac0
	bge.s loc_20dab6
	neg.w d0
loc_20dab6:
	add.w d0,$a(a0)
	jmp (sub_20384a).l
loc_20dac0:
	addq.b #$4,$24(a0)
	jmp (sub_20384a).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dae4
	bge.s loc_20dada
	neg.w d0
loc_20dada:
	add.w d0,$8(a0)
	jmp (sub_20384a).l
loc_20dae4:
	addq.b #$4,$24(a0)
	jmp (sub_20384a).l
	tst.b $1e(a0)
	beq.s loc_20dafe
	subq.b #$1,$1e(a0)
	jmp (sub_20384a).l
loc_20dafe:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20db18
	bge.s loc_20db0e
	neg.w d0
loc_20db0e:
	add.w d0,$a(a0)
	jmp (sub_20384a).l
loc_20db18:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2023c8).l
	tst.b $1e(a0)
	beq.s loc_20db3a
	subq.b #$1,$1e(a0)
	jmp (sub_20384a).l
loc_20db3a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20db54
	bge.s loc_20db4a
	neg.w d0
loc_20db4a:
	add.w d0,$8(a0)
	jmp (sub_20384a).l
loc_20db54:
	jmp (sub_2038f6).l
	tst.l ($f680).w
	bne.s loc_20db6e
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2038f6).l
loc_20db6e:
	rts
	.incbin 56176, 1350
dat_20e0b6:
	.incbin 57526, 2098
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
	lea dat_20e908(pc),a1
	jsr (sub_205a64).l
	jmp (sub_20384a).l
dat_20e908:
	.incbin 59656, 174

sub_20e9b6:
	tst.b ($ff156a).l
	beq.s loc_20e9fc
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e9ce
	tst.b $28(a0)
	beq.s loc_20e9fc
loc_20e9ce:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2038f6).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e9fa
	move.w #$9e,d0
	jsr (sub_2021fe).l
loc_20e9fa:
	addq.l #$4,a7
loc_20e9fc:
	rts

sub_20e9fe:
	tst.b $28(a0)
	bmi.s loc_20ea2e
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ea1e
	tst.b ($ff156d).l
	bne.s loc_20ea2e
	addq.l #$4,a7
	jmp (loc_2075d0).l
loc_20ea1e:
	tst.b ($ff156a).l
	bne.s loc_20ea2e
	addq.l #$4,a7
	jmp (sub_2038f6).l
loc_20ea2e:
	rts
	.incbin 59952, 1360

sub_20ef80:
	jmp (loc_2062d8).l
dat_20ef86:
	.incbin 61318, 16
dat_20ef96:
	.incbin 61334, 3112
	jmp (loc_20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 69472
dat_230f60:
	.incbin 200544, 18362
dat_23571a:
	.incbin 218906, 384
dat_23589a:
	.incbin 219290, 1598
dat_235ed8:
	.incbin 220888, 9952
dat_2385b8:
	.incbin 230840, 256
dat_2386b8:
	.incbin 231096, 4096
dat_2396b8:
	.incbin 235192, 4996
dat_23aa3c:
	.incbin 240188, 16784
dat_23ebcc:
	.incbin 256972, 768
dat_23eecc:
	.incbin 257740, 4404
