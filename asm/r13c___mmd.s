; R13C__.MMD
; disassembled from the disc; code only, data comes from data/R13C__.MMD at build time
	.file "R13C__.MMD", 262144

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
	lea (dat_235dda).l,a2
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
	lea (dat_235eda).l,a2
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
	lea (dat_235dda).l,a2
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
	lea (dat_235eda).l,a2
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
	lea (dat_235dda).l,a2
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
	lea (dat_236eda).l,a2
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
	lea (dat_235dda).l,a2
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
	lea (dat_236eda).l,a2
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
	bsr.w sub_207162
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
	lea (dat_20e31e).l,a2
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
	jsr (sub_20e318).l
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
	jsr (sub_205a16).l
	bsr.w sub_207162
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
	jsr (sub_207178).l
	jsr (sub_20375c).l
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
	jsr (sub_203906).l
	tst.w ($ff190e).l
	bne.s loc_2018a6
	bsr.w sub_200184
loc_2018a6:
	jsr (sub_20abd4).l
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
	jmp (sub_205a16).l
dat_201a2c:
	.incbin 6700, 38

sub_201a52:
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
	jmp (sub_205a16).l
loc_201ae0:
	tst.b ($ff151f).l
	bne.s loc_201ad6
	tst.b ($ff1520).l
	bne.s loc_201ad6
	move.w #$90,d0
	jmp (sub_205a16).l
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
	jmp (sub_205a16).l
loc_201b1c:
	tst.b ($ff151f).l
	bne.s loc_201b12
	tst.b ($ff1520).l
	bne.s loc_201b12
	move.w #$91,d0
	jmp (sub_205a16).l
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
	bsr.w sub_205938
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
	jsr (sub_20e318).l
	jsr (sub_2021b2).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e64
	bsr.w sub_2024a6
	jmp (loc_2091b6).l
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
	lea (dat_20e32e).l,a1
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
	movem.l a1-a2,-(a7)
	lea (dat_20e32e).l,a1
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
	lea (dat_20e32e).l,a1
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
	dc.b $00,$04,$00,$00,$0d,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_202804:
	.incbin 10244, 32
loc_202824:
	tst.b ($ff1522).l
	beq.s loc_202844
	jsr (sub_2065a2).l
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
	dc.b $00,$40,$02,$a2
dat_2028c0:
	dc.b $91,$7f,$1e,$1e

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
	asr.w #$3,d1
	move.w d1,($f708).w
	asr.w #$1,d1
	move.w d1,d2
	add.w d2,d2
	add.w d1,d2
	move.w d2,($f710).w
	asr.w #$1,d1
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
	bsr.w sub_2033f0
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
	lea (dat_20e31e).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20229a
	movea.l (a2)+,a0
	bsr.w sub_2033a2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200480
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_2033a0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033a0
	bsr.w sub_2023c8
loc_2033a0:
	rts

sub_2033a2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2033ac:
	move.l d0,(a3)+
	dbf d1,loc_2033ac
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033c2
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033c2:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2381fa).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033dc:
	move.w d1,d0
	movea.l a3,a0
loc_2033e0:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033e0
	lea $80(a3),a3
	dbf d2,loc_2033dc
	rts

sub_2033f0:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_20346a(pc,d0.w),d0
	jsr dat_20346a(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203416
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203416:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203444
	bcc.s loc_203446
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20343a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20343a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203444:
	rts
loc_203446:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20345e
	btst.b #$1,($d022).w
	beq.s loc_20345e
	add.w d1,d1
	add.w d1,d1
loc_20345e:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_20346a:
	dc.b $00,$0e,$00,$a8,$01,$cc,$01,$3e
	dc.b $00,$e0,$02,$42,$01,$88
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20348a(pc,d0.w),d0
	jmp dat_20348a(pc,d0.w)
dat_20348a:
	.incbin 13450, 110
	tst.b ($f7a7).w
	bne.s loc_203510
	move.w #$310,($f726).w
	move.w #$d70,d0
	move.w #$310,d1
	bsr.w sub_203716
loc_203510:
	rts
	.incbin 13586, 516

sub_203716:
	cmp.w ($d008).w,d0
	ble.s loc_203720
	moveq #$0,d0
	rts
loc_203720:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_20372c
	neg.w d1
loc_20372c:
	cmpi.w #$4,d1
	bge.s loc_203738
	move.w ($f726).w,($f72e).w
loc_203738:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_203758
	cmp.w ($f72a).w,d0
	ble.s loc_203750
	move.w ($f72a).w,d0
loc_203750:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_203758:
	moveq #$1,d0
	rts

sub_20375c:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203764:
	move.b (a0),d0
	beq.s loc_20377a
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b7e).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20377a:
	lea $40(a0),a0
	dbf d7,loc_203764
	rts

sub_203784:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037c2
	bpl.s loc_2037b4
	btst.b #$1,$2c(a0)
	beq.s loc_2037b4
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037c2
loc_2037b4:
	btst.b #$2,$2c(a0)
	bne.s loc_2037c2
	addi.w #$38,$12(a0)
loc_2037c2:
	tst.w $12(a0)
	bmi.s loc_2037d6
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037d6
	move.w #$1000,$12(a0)
loc_2037d6:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037e6:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203822
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203822
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203820
	neg.w d1
loc_203820:
	add.w d1,d0
loc_203822:
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

sub_20383c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_2038ac
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038c8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038c8
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203886
	cmpi.w #$800,d3
	bcs.s loc_203898
	subi.w #$800,d3
	bra.s loc_203898
loc_203886:
	cmpi.w #$700,($f704).w
	bcs.s loc_203898
	cmpi.w #$100,d3
	bcc.s loc_203898
	addi.w #$800,d3
loc_203898:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038c8
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038c8
loc_2038ac:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038c8
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038c8:
	rts
	.incbin 14538, 30

sub_2038e8:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2038ee:
	move.l d1,(a1)+
	dbf d0,loc_2038ee
	rts
dat_2038f6:
	.incbin 14582, 16

sub_203906:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203912:
	tst.w (a4)
	beq.w loc_2039d2
	moveq #$2,d6
loc_20391a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039ca
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203980
	movea.l dat_2038f6(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203964
	cmpi.w #$800,d2
	bcs.s loc_203976
	subi.w #$800,d2
	bra.s loc_203976
loc_203964:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203976
	cmpi.w #$100,d2
	bcc.s loc_203976
	addi.w #$800,d2
loc_203976:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_2039a2
loc_203980:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_2039a2
	dc.b $34,$28,$00,$0c
	sub.w $4(a1),d2
	addi.w #$80,d2
	cmpi.w #$60,d2
	bcs.s loc_2039ca
	cmpi.w #$180,d2
	bcc.s loc_2039ca
loc_2039a2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2039c0
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039c4
loc_2039c0:
	bsr.w sub_2039f4
loc_2039c4:
	bset.b #$7,$1(a0)
loc_2039ca:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_20391a
loc_2039d2:
	lea $80(a4),a4
	dbf d7,loc_203912
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2039ec
	move.l #$0,(a2)
	rts
loc_2039ec:
	move.b #$0,-$5(a2)
	rts

sub_2039f4:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a3a
	btst.l #$1,d4
	bne.w loc_203a88
loc_203a06:
	cmpi.b #$50,d5
	beq.s loc_203a38
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
	bne.s loc_203a32
	addq.w #$1,d0
loc_203a32:
	move.w d0,(a2)+
	dbf d1,loc_203a06
loc_203a38:
	rts
loc_203a3a:
	btst.l #$1,d4
	bne.w loc_203ace
loc_203a42:
	cmpi.b #$50,d5
	beq.s loc_203a86
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
	bne.s loc_203a80
	addq.w #$1,d0
loc_203a80:
	move.w d0,(a2)+
	dbf d1,loc_203a42
loc_203a86:
	rts
loc_203a88:
	cmpi.b #$50,d5
	beq.s loc_203acc
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
	bne.s loc_203ac6
	addq.w #$1,d0
loc_203ac6:
	move.w d0,(a2)+
	dbf d1,loc_203a88
loc_203acc:
	rts
loc_203ace:
	cmpi.b #$50,d5
	beq.s loc_203b20
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
	bne.s loc_203b1a
	addq.w #$1,d0
loc_203b1a:
	move.w d0,(a2)+
	dbf d1,loc_203ace
loc_203b20:
	rts
	.incbin 15138, 92
dat_203b7e:
	.incbin 15230, 262

sub_203c84:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203c96
	move.w #$0,(a1)
	rts
loc_203c96:
	tst.w (a1)
	bne.s loc_203ca0
	move.b #$1,$1(a1)
loc_203ca0:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cea
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203cdc
	neg.w $10(a0)
loc_203cdc:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a16
loc_203cea:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d08
	cmpa.w #$d040,a0
	beq.s loc_203d08
	tst.b ($ff1906).l
	beq.s loc_203d08
	jmp (loc_206ea0).l
loc_203d08:
	move.b $2a(a0),d0
	beq.s loc_203d32
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d24
	cmpi.b #$2d,d0
	bcs.s loc_203d2e
	move.b #$2d,d0
	bra.s loc_203d2e
loc_203d24:
	cmpi.b #$1e,d0
	bcs.s loc_203d2e
	move.b #$1e,d0
loc_203d2e:
	move.b d0,$2a(a0)
loc_203d32:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d40(pc,d0.w),d1
	jmp dat_203d40(pc,d1.w)
dat_203d40:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d4a:
	tst.b ($d300).w
	bne.s loc_203d88
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d88:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203db0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203db0:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203de4:
	tst.b ($ff1506).l
	bne.s loc_203e4a
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e4a
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e4e
	cmpi.b #$2f,d1
	bne.s loc_203e4c
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e4a
	tst.b $2c(a0)
	beq.s loc_203e4a
	jsr (sub_207374).l
	bne.s loc_203e4a
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e42
	moveq #$0,d0
loc_203e42:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e4a:
	rts
loc_203e4c:
	rts

sub_203e4e:
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

sub_203e74:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e80
	neg.w d0
loc_203e80:
	btst.b #$1,$2c(a0)
	beq.s loc_203e90
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203eb8
loc_203e90:
	cmpi.w #$600,d0
	bcs.s loc_203eb8
	tst.w $14(a0)
	bpl.s loc_203eaa
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203ec6
	move.w #$e0,d1
	bra.s loc_203ec6
loc_203eaa:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203ec6
	move.w #$60,d1
	bra.s loc_203ec6
loc_203eb8:
	cmpi.w #$a0,d1
	beq.s loc_203ec6
	bcc.s loc_203ec4
	addq.w #$2,d1
	bra.s loc_203ec6
loc_203ec4:
	subq.w #$2,d1
loc_203ec6:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e74
	bsr.w sub_203de4
	tst.w ($ff1588).l
	beq.s loc_203eec
	btst.b #$4,($f605).w
	beq.s loc_203eec
	move.b #$1,($ff1906).l
	rts
loc_203eec:
	tst.b ($f7cc).w
	bne.s loc_203ef8
	move.w ($f604).w,($f602).w
loc_203ef8:
	btst.b #$0,$2c(a0)
	beq.s loc_203f1c
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f16
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f34
loc_203f16:
	bsr.w sub_2041fe
	bra.s loc_203f34
loc_203f1c:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f7a(pc,d0.w),d1
	jsr dat_203f7a(pc,d1.w)
	jsr (sub_2064ce).l
loc_203f34:
	bsr.s sub_203f88
	bsr.w sub_204048
	bsr.w sub_204062
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f5c
	tst.b $1c(a0)
	bne.s loc_203f5c
	move.b $1d(a0),$1c(a0)
loc_203f5c:
	bsr.w sub_205406
	tst.b $2c(a0)
	bmi.s loc_203f74
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f74
	jsr (sub_206a72).l
loc_203f74:
	bsr.w sub_2052bc
	rts
dat_203f7a:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203f88:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203fac
	move.w $30(a0),d0
	beq.s loc_203f9e
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203fac
loc_203f9e:
	btst.b #$6,$2c(a0)
	bne.s loc_203fac
	jsr (sub_20383c).l
loc_203fac:
	tst.b ($ff151f).l
	beq.s loc_203ff0
	tst.w $32(a0)
	beq.s loc_203ff0
	subq.w #$1,$32(a0)
	bne.s loc_203ff0
	tst.b ($ff1520).l
	bne.s loc_203fe8
	tst.b ($ff1958).l
	bne.s loc_203fe8
	tst.b ($ff152e).l
	bne.s loc_203fe2
	move.w #$e,d0
	jsr (sub_205a16).l
loc_203fe2:
	jsr (sub_2019f2).l
loc_203fe8:
	move.b #$0,($ff151f).l
loc_203ff0:
	tst.b ($ff1520).l
	beq.s loc_204046
	tst.w $34(a0)
	beq.s loc_204046
	subq.w #$1,$34(a0)
	bne.s loc_204046
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20403e
	tst.b ($ff1958).l
	bne.s loc_20403e
	tst.b ($ff152e).l
	bne.s loc_204038
	move.w #$e,d0
	jsr (sub_205a16).l
loc_204038:
	jsr (sub_2019f2).l
loc_20403e:
	move.b #$0,($ff1520).l
loc_204046:
	rts

sub_204048:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204062:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20406e
loc_20406c:
	rts
loc_20406e:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204080
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20406c
loc_204080:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_2040c4
	bset.b #$6,$22(a0)
	bne.s loc_20406c
	bsr.w sub_205d1a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20406c
	bra.s loc_2040fc
loc_2040c4:
	tst.w $12(a0)
	beq.s loc_2040cc
	bpl.s loc_20406c
loc_2040cc:
	bclr.b #$6,$22(a0)
	beq.s loc_20406c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20406c
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2040fc
	move.w #$f000,$12(a0)
loc_2040fc:
	jsr (sub_207374).l
	bne.s loc_204110
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204110:
	rts

sub_204112:
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
	bcs.s loc_2041ec
	move.l #$50000,d0
loc_2041ec:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2041fe:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204224
	tst.b ($ff152e).l
	beq.s loc_20421a
	cmpi.b #$2,($ff152e).l
	bne.s loc_204224
loc_20421a:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042d4
loc_204224:
	tst.b $2a(a0)
	bne.w loc_2042e2
	tst.b ($f784).w
	beq.w loc_2042e2
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204242
	neg.w d0
loc_204242:
	tst.w ($f786).w
	bne.s loc_20424e
	move.w #$1,($f786).w
loc_20424e:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204264
	move.b #$1,($ff1502).l
	bra.w loc_205a12
loc_204264:
	cmpi.w #$d2,d1
	bcs.s loc_2042b8
	cmpi.b #$2,($ff1522).l
	beq.s loc_2042b6
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20428e
	move.w #$82,d0
	jsr (sub_205a16).l
	moveq #$0,d0
loc_20428e:
	add.b ($f784).w,d0
	bpl.s loc_204298
	moveq #$0,d0
	bra.s loc_2042a0
loc_204298:
	cmpi.b #$3,d0
	bcs.s loc_2042a0
	moveq #$2,d0
loc_2042a0:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204112
	move.b #$2,($ff1522).l
loc_2042b6:
	rts
loc_2042b8:
	cmpi.w #$5a,d1
	bcc.s loc_2042d0
	cmp.w d2,d0
	bcc.w loc_203d4a
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2042d0:
	cmp.w d2,d0
	bcc.s loc_2042e2
loc_2042d4:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042e2:
	rts
	bsr.w sub_203c84
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204314
	tst.b ($ff195b).l
	beq.s loc_204302
	cmpi.b #$79,$1a(a0)
	bne.s loc_20433e
	bra.s loc_20430a
loc_204302:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20433e
loc_20430a:
	bsr.w sub_204ba6
	jmp (sub_203784).l
loc_204314:
	bsr.w sub_2043ec
	bsr.w sub_2041fe
	bsr.w sub_204c90
	bsr.w sub_204dbc
	bsr.w sub_204460
	bsr.w sub_204c12
	bsr.w sub_204ba6
	jsr (sub_2037e6).l
	bsr.w sub_200b02
	bsr.w sub_204e3a
loc_20433e:
	rts
	tst.b ($f7c7).w
	bne.s loc_20435a
	cmpi.b #$15,$1c(a0)
	beq.s loc_20435a
	tst.w $12(a0)
	bmi.s loc_20435a
	move.b #$0,$1c(a0)
loc_20435a:
	bsr.w sub_2043ec
	bsr.w sub_2041fe
	bsr.w sub_204d7a
	bsr.w sub_204ac6
	bsr.w sub_204ba6
	jsr (sub_203784).l
	btst.b #$6,$22(a0)
	beq.s loc_204382
	subi.w #$28,$12(a0)
loc_204382:
	bsr.w sub_204e84
	bsr.w sub_204ea8
	rts
	bsr.w sub_2043ec
	bsr.w sub_2041fe
	bsr.w sub_204c90
	bsr.w sub_204df8
	bsr.w sub_204900
	bsr.w sub_204ba6
	tst.b $2a(a0)
	bne.s loc_2043b0
	jsr (sub_2037e6).l
loc_2043b0:
	bsr.w sub_200b02
	bsr.w sub_204e3a
	rts
	bsr.w sub_2043ec
	bsr.w sub_2041fe
	bsr.w sub_204d7a
	bsr.w sub_204ac6
	bsr.w sub_204ba6
	jsr (sub_203784).l
	btst.b #$6,$22(a0)
	beq.s loc_2043e2
	subi.w #$28,$12(a0)
loc_2043e2:
	bsr.w sub_204e84
	bsr.w sub_204ea8
	rts

sub_2043ec:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204458
	tst.w ($ff1506).l
	bne.s loc_204458
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_20445a).l,a2
loc_204420:
	move.b (a2)+,d0
	bmi.s loc_204430
	cmp.b d0,d1
	bne.s loc_204420
	bset.b #$1,$2c(a0)
	rts
loc_204430:
	bclr.b #$1,$2c(a0)
	beq.s loc_204458
	tst.w $12(a0)
	bpl.s loc_204458
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204458
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204458
	neg.w $10(a0)
loc_204458:
	rts
dat_20445a:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204460:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_20478a
	tst.w $3e(a0)
	bne.w loc_20473a
	btst.b #$2,($f602).w
	beq.s loc_204488
	bsr.w sub_20481a
loc_204488:
	btst.b #$3,($f602).w
	beq.s loc_204494
	bsr.w sub_204890
loc_204494:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_20473a
	tst.w $14(a0)
	beq.s loc_2044b4
	tst.b $2a(a0)
	beq.w loc_20473a
	bra.s loc_2044c0
loc_2044b4:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2044c0:
	btst.b #$3,$22(a0)
	beq.s loc_204512
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20456a
	cmpi.b #$1e,$0(a1)
	bne.s loc_2044f2
	move.b #$0,$1c(a0)
	bra.w loc_20473a
loc_2044f2:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20454e
	cmp.w d2,d1
	bge.s loc_20453c
	bra.s loc_20456a
loc_204512:
	jsr (sub_2067d6).l
	cmpi.w #$c,d1
	blt.s loc_20456a
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204546
loc_20453c:
	btst.b #$0,$22(a0)
	bne.s loc_204556
	bra.s loc_204560
loc_204546:
	cmpi.b #$3,$37(a0)
	bne.s loc_20456a
loc_20454e:
	btst.b #$0,$22(a0)
	bne.s loc_204560
loc_204556:
	move.b #$32,$1c(a0)
	bra.w loc_20473a
loc_204560:
	move.b #$6,$1c(a0)
	bra.w loc_20473a
loc_20456a:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20457e
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20457e:
	btst.b #$7,($f788).w
	bne.w loc_204682
	btst.b #$6,($f788).w
	bne.w loc_2046a2
	btst.b #$1,($f602).w
	bne.w loc_2046a2
	andi.b #$f,($f788).w
	beq.s loc_2045b6
	btst.b #$0,($f603).w
	beq.s loc_2045ca
	bset.b #$7,($f788).w
	bra.w loc_20475e
loc_2045b6:
	btst.b #$0,($f603).w
	beq.w loc_2045ca
	move.b #$1,($f788).w
	bra.w loc_20475e
loc_2045ca:
	btst.b #$0,($f602).w
	beq.s loc_204646
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204628
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2045fa
	asr.w #$1,d2
	sub.w d2,d1
loc_2045fa:
	btst.b #$0,$22(a0)
	beq.s loc_204606
	neg.w d0
	neg.w d1
loc_204606:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20461c
	cmp.w d0,d1
	ble.s loc_204622
	bra.s loc_204620
loc_20461c:
	cmp.w d1,d0
	ble.s loc_204622
loc_204620:
	move.w d1,d0
loc_204622:
	move.w d0,$14(a0)
	rts
loc_204628:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204642
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2021fe).l
loc_204642:
	bra.w loc_20475e
loc_204646:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204666
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046a2
loc_204666:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021fe).l
	bra.w loc_20473a
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204682:
	btst.b #$0,($f602).w
	beq.s loc_2046a2
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20475e
	addq.w #$2,($f73e).w
	bra.w loc_20475e
loc_2046a2:
	btst.b #$6,($f788).w
	bne.w loc_20471e
	andi.b #$f,($f788).w
	beq.s loc_2046c6
	btst.b #$1,($f603).w
	beq.s loc_2046d8
	bset.b #$6,($f788).w
	bra.w loc_20475e
loc_2046c6:
	btst.b #$1,($f603).w
	beq.s loc_2046d8
	move.b #$1,($f788).w
	bra.w loc_20475e
loc_2046d8:
	btst.b #$1,($f602).w
	beq.s loc_20473a
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20471c
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20471c
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20470e
	neg.w $14(a0)
loc_20470e:
	move.w #$9c,d0
	jsr (sub_2021fe).l
	bsr.w sub_204c3a
loc_20471c:
	bra.s loc_20475e
loc_20471e:
	btst.b #$1,($f602).w
	beq.s loc_20473a
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20475e
	subq.w #$2,($f73e).w
	bra.s loc_20475e
loc_20473a:
	cmpi.w #$60,($f73e).w
	bne.s loc_204754
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20475e
	move.b #$0,($f788).w
	bra.s loc_20475e
loc_204754:
	bcc.s loc_20475a
	addq.w #$4,($f73e).w
loc_20475a:
	subq.w #$2,($f73e).w
loc_20475e:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_20478a
	move.w $14(a0),d0
	beq.s loc_20478a
	bmi.s loc_20477e
	sub.w d5,d0
	bcc.s loc_204778
	move.w #$0,d0
loc_204778:
	move.w d0,$14(a0)
	bra.s loc_20478a
loc_20477e:
	add.w d5,d0
	bcc.s loc_204786
	move.w #$0,d0
loc_204786:
	move.w d0,$14(a0)
loc_20478a:
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047a8:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204818
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204818
	bmi.s loc_2047c0
	neg.w d1
loc_2047c0:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206696
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204818
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204814
	cmpi.b #$40,d0
	beq.s loc_204802
	cmpi.b #$80,d0
	beq.s loc_2047fc
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2047fc:
	sub.w d1,$12(a0)
	rts
loc_204802:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204814:
	add.w d1,$12(a0)
loc_204818:
	rts

sub_20481a:
	tst.b $2a(a0)
	bne.s loc_20488e
	move.w $14(a0),d0
	beq.s loc_204828
	bpl.s loc_204858
loc_204828:
	bset.b #$0,$22(a0)
	bne.s loc_20483c
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20483c:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20484c
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20484c
	move.w d1,d0
loc_20484c:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204858:
	sub.w d4,d0
	bcc.s loc_204860
	move.w #$ff80,d0
loc_204860:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20488e
	cmpi.w #$400,d0
	blt.s loc_20488e
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021fe).l
loc_20488e:
	rts

sub_204890:
	tst.b $2a(a0)
	bne.s loc_2048fe
	move.w $14(a0),d0
	bmi.s loc_2048c8
	bclr.b #$0,$22(a0)
	beq.s loc_2048b0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048b0:
	cmp.w d6,d0
	bge.s loc_2048bc
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2048bc
	move.w d6,d0
loc_2048bc:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048c8:
	add.w d4,d0
	bcc.s loc_2048d0
	move.w #$80,d0
loc_2048d0:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048fe
	cmpi.w #$fc00,d0
	bgt.s loc_2048fe
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021fe).l
loc_2048fe:
	rts

sub_204900:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a4a
	tst.w $3e(a0)
	bne.s loc_204938
	btst.b #$2,($f602).w
	beq.s loc_20492c
	bsr.w sub_204a80
loc_20492c:
	btst.b #$3,($f602).w
	beq.s loc_204938
	bsr.w sub_204aa4
loc_204938:
	tst.b $2a(a0)
	beq.w loc_2049e2
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204958
	asr.w #$1,d2
	sub.w d2,d1
loc_204958:
	btst.b #$0,$22(a0)
	beq.s loc_204964
	neg.w d0
	neg.w d1
loc_204964:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20497a
	cmp.w d0,d1
	ble.s loc_204980
	bra.s loc_20497e
loc_20497a:
	cmp.w d1,d0
	ble.s loc_204980
loc_20497e:
	move.w d1,d0
loc_204980:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2049b4
	rts
loc_20498e:
	move.w #$ab,d0
	jsr (sub_2021fe).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a14
loc_2049b4:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_20498e
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021fe).l
	btst.b #$0,$22(a0)
	bne.s loc_2049da
	bsr.w sub_204aa4
	bra.s loc_2049e2
loc_2049da:
	bsr.w sub_204a80
	bra.s loc_2049e2
	dc.b $4e,$75
loc_2049e2:
	move.w $14(a0),d0
	beq.s loc_204a04
	bmi.s loc_2049f8
	sub.w d5,d0
	bcc.s loc_2049f2
	move.w #$0,d0
loc_2049f2:
	move.w d0,$14(a0)
	bra.s loc_204a04
loc_2049f8:
	add.w d5,d0
	bcc.s loc_204a00
	move.w #$0,d0
loc_204a00:
	move.w d0,$14(a0)
loc_204a04:
	tst.w $14(a0)
	bne.s loc_204a4a
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_204a14:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a34
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a44
loc_204a34:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a44:
	move.b #$5,$1c(a0)
loc_204a4a:
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a6e
	move.w #$1000,d1
loc_204a6e:
	cmpi.w #$f000,d1
	bge.s loc_204a78
	move.w #$f000,d1
loc_204a78:
	move.w d1,$10(a0)
	bra.w loc_2047a8

sub_204a80:
	move.w $14(a0),d0
	beq.s loc_204a88
	bpl.s loc_204a96
loc_204a88:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204a96:
	sub.w d4,d0
	bcc.s loc_204a9e
	move.w #$ff80,d0
loc_204a9e:
	move.w d0,$14(a0)
	rts

sub_204aa4:
	move.w $14(a0),d0
	bmi.s loc_204ab8
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ab8:
	add.w d4,d0
	bcc.s loc_204ac0
	move.w #$80,d0
loc_204ac0:
	move.w d0,$14(a0)
	rts

sub_204ac6:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b00
	tst.w ($ff1506).l
	bne.s loc_204b00
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204af8
	cmpi.w #$840,$8(a0)
	bcc.s loc_204af8
	rts
loc_204af8:
	btst.b #$1,$2c(a0)
	bne.s loc_204b30
loc_204b00:
	btst.b #$2,($f602).w
	beq.s loc_204b1a
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b1a
	move.w d1,d0
loc_204b1a:
	btst.b #$3,($f602).w
	beq.s loc_204b30
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b30
	move.w d6,d0
loc_204b30:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b46
	bcc.s loc_204b42
	addq.w #$4,($f73e).w
loc_204b42:
	subq.w #$2,($f73e).w
loc_204b46:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b74
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b74
	bmi.s loc_204b68
	sub.w d1,d0
	bcc.s loc_204b62
	move.w #$0,d0
loc_204b62:
	move.w d0,$10(a0)
	rts
loc_204b68:
	sub.w d1,d0
	bcs.s loc_204b70
	move.w #$0,d0
loc_204b70:
	move.w d0,$10(a0)
loc_204b74:
	rts
	.incbin 19318, 48

sub_204ba6:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204bfa
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204bd4
	addi.w #$38,d0
loc_204bd4:
	cmp.w d1,d0
	bls.s loc_204bfa
loc_204bd8:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204be8
	rts
loc_204be8:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d04
	move.b #$6,$24(a0)
	rts
loc_204bfa:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204bd8

sub_204c12:
	tst.b ($f7ca).w
	bne.s loc_204c38
	move.w $14(a0),d0
	bpl.s loc_204c20
	neg.w d0
loc_204c20:
	cmpi.w #$80,d0
	bcs.s loc_204c38
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c38
	btst.b #$1,($f602).w
	bne.s sub_204c3a
loc_204c38:
	rts

sub_204c3a:
	btst.b #$2,$22(a0)
	beq.s loc_204c44
	bra.s loc_204c74
loc_204c44:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c64
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c74
loc_204c64:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c74:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c8e
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c8e
	move.w #$200,$14(a0)
loc_204c8e:
	rts

sub_204c90:
	tst.b $2a(a0)
	beq.s loc_204c98
	rts
loc_204c98:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204caa
	tst.w $14(a0)
	beq.w loc_204d70
loc_204caa:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d70
	btst.b #$3,$22(a0)
	beq.s loc_204cc6
	jsr (sub_20599c).l
	beq.s loc_204cf6
loc_204cc6:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206700
	cmpi.w #$6,d1
	blt.w loc_204d70
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204cec
	move.w #$380,d2
loc_204cec:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204cf6:
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
	bne.s loc_204d72
	tst.b ($ff195b).l
	beq.s loc_204d54
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d64
loc_204d54:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d64:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d70:
	rts
loc_204d72:
	bset.b #$4,$22(a0)
	rts

sub_204d7a:
	tst.b $3c(a0)
	beq.s loc_204dac
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204d90
	move.w #$fe00,d1
loc_204d90:
	cmp.w $12(a0),d1
	ble.s loc_204daa
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204daa
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204daa:
	rts
loc_204dac:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204dba
	move.w #$f040,$12(a0)
loc_204dba:
	rts

sub_204dbc:
	tst.b $2a(a0)
	bne.s loc_204df6
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204df6
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204df6
	bmi.s loc_204df2
	tst.w d0
	beq.s loc_204df0
	add.w d0,$14(a0)
loc_204df0:
	rts
loc_204df2:
	add.w d0,$14(a0)
loc_204df6:
	rts

sub_204df8:
	tst.b $2a(a0)
	bne.s loc_204e38
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e38
	move.b $26(a0),d0
	jsr (sub_200702).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e2e
	tst.w d0
	bpl.s loc_204e28
	asr.l #$2,d0
loc_204e28:
	add.w d0,$14(a0)
	rts
loc_204e2e:
	tst.w d0
	bmi.s loc_204e34
	asr.l #$2,d0
loc_204e34:
	add.w d0,$14(a0)
loc_204e38:
	rts

sub_204e3a:
	nop
	tst.b $38(a0)
	bne.s loc_204e7c
	tst.w $3e(a0)
	bne.s loc_204e7e
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e7c
	move.w $14(a0),d0
	bpl.s loc_204e5e
	neg.w d0
loc_204e5e:
	cmpi.w #$280,d0
	bcc.s loc_204e7c
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e7c:
	rts
loc_204e7e:
	subq.w #$1,$3e(a0)
	rts

sub_204e84:
	btst.b #$1,$2c(a0)
	bne.s loc_204ea6
	move.b $26(a0),d0
	beq.s loc_204ea6
	bpl.s loc_204e9c
	addq.b #$2,d0
	bcc.s loc_204e9a
	moveq #$0,d0
loc_204e9a:
	bra.s loc_204ea2
loc_204e9c:
	subq.b #$2,d0
	bcc.s loc_204ea2
	moveq #$0,d0
loc_204ea2:
	move.b d0,$26(a0)
loc_204ea6:
	rts

sub_204ea8:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_20099a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204f8c
	cmpi.b #$80,d0
	beq.w loc_204fee
	cmpi.b #$c0,d0
	beq.w loc_20504a
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_204efa
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204efa:
	bsr.w sub_206878
	tst.w d1
	bpl.s loc_204f0c
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f0c:
	bsr.w sub_206728
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204f8a
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f2a
	cmp.b d2,d0
	blt.s loc_204f8a
loc_204f2a:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ac
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f68
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f5a
	asr.w $12(a0)
	bra.s loc_204f7c
loc_204f5a:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f68:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f7c
	move.w #$fc0,$12(a0)
loc_204f7c:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f8a
	neg.w $14(a0)
loc_204f8a:
	rts
loc_204f8c:
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_204fa6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204fa6:
	bsr.w sub_2068d0
	tst.w d1
	bpl.s loc_204fc0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204fbe
	move.w #$0,$12(a0)
loc_204fbe:
	rts
loc_204fc0:
	tst.w $12(a0)
	bmi.s loc_204fec
	bsr.w sub_206728
	tst.w d1
	bpl.s loc_204fec
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ac
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204fec:
	rts
loc_204fee:
	bsr.w sub_206a16
	tst.w d1
	bpl.s loc_205000
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205000:
	bsr.w sub_206878
	tst.w d1
	bpl.s loc_205012
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205012:
	bsr.w sub_2068d0
	tst.w d1
	bpl.s loc_205048
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205032
	move.w #$0,$12(a0)
	rts
loc_205032:
	move.b d3,$26(a0)
	bsr.w sub_20511e
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205048
	neg.w $14(a0)
loc_205048:
	rts
loc_20504a:
	bsr.w sub_206878
	tst.w d1
	bpl.s loc_205064
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205064:
	bsr.w sub_2068d0
	tst.w d1
	bpl.s loc_20507e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20507c
	move.w #$0,$12(a0)
loc_20507c:
	rts
loc_20507e:
	tst.w $12(a0)
	bmi.s loc_2050aa
	bsr.w sub_206728
	tst.w d1
	bpl.s loc_2050aa
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050ac
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050aa:
	rts

sub_2050ac:
	btst.b #$4,$22(a0)
	beq.s loc_2050b6
	nop
loc_2050b6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205110
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050f0
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205100
loc_2050f0:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205100:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_205110:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20511e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20798, 382

sub_2052bc:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052e4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052e4
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052e4
	tst.b ($ff1506).l
	bne.w loc_2053a6
loc_2052e4:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205322
	tst.b ($ff1506).l
	bne.w loc_2053a8
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053a8
	bra.s loc_20532a
loc_205322:
	cmp.b ($f7af).w,d1
	beq.w loc_2053a8
loc_20532a:
	cmp.b ($f7ac).w,d1
	beq.s loc_20535a
	cmp.b ($f7ad).w,d1
	beq.s loc_20533e
	bclr.b #$6,$1(a0)
	rts
loc_20533e:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2053c0
	btst.b #$1,$22(a0)
	beq.s loc_20535a
	bclr.b #$6,$1(a0)
	rts
loc_20535a:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20536c
	bclr.b #$6,$1(a0)
	rts
loc_20536c:
	cmpi.b #$e0,d2
	bcs.s loc_20537a
	bset.b #$6,$1(a0)
	rts
loc_20537a:
	btst.b #$6,$1(a0)
	bne.s loc_205396
	move.b $26(a0),d1
	beq.s loc_2053a6
	cmpi.b #$80,d1
	bhi.s loc_2053a6
	bset.b #$6,$1(a0)
	rts
loc_205396:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053a6
	bclr.b #$6,$1(a0)
loc_2053a6:
	rts
loc_2053a8:
	btst.b #$2,$22(a0)
	bne.s loc_2053ba
	move.w #$9c,d0
	jsr (sub_2021fe).l
loc_2053ba:
	jmp (sub_204c3a).l
loc_2053c0:
	tst.w $12(a0)
	bmi.s loc_205404
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2053f8
	cmpi.w #$38,d1
	bcs.s loc_2053f0
	cmpi.w #$80,d1
	bcs.s loc_205404
loc_2053e8:
	bclr.b #$6,$1(a0)
	rts
loc_2053f0:
	bset.b #$6,$1(a0)
	rts
loc_2053f8:
	cmpi.w #$38,d1
	bcs.s loc_2053e8
	cmpi.w #$80,d1
	bcc.s loc_2053f0
loc_205404:
	rts

sub_205406:
	lea (dat_2056f6).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205428
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205428:
	bsr.w sub_205698
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054a0
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20546e
	move.b d0,$1e(a0)

sub_205452:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205466
	bpl.s loc_205466
	cmpi.b #$fd,d0
	bge.s loc_205470
loc_205466:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20546e:
	rts
loc_205470:
	addq.b #$1,d0
	bne.s loc_205480
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205466
loc_205480:
	addq.b #$1,d0
	bne.s loc_205494
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205466
loc_205494:
	addq.b #$1,d0
	bne.s loc_20549e
	move.b $2(a1,d1.w),$1c(a0)
loc_20549e:
	rts
loc_2054a0:
	subq.b #$1,$1e(a0)
	bpl.s loc_20546e
	addq.b #$1,d0
	bne.w loc_20555a
	tst.b ($ff195b).l
	bne.w loc_205622
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2054c8
	not.b d0
loc_2054c8:
	btst.b #$1,$2c(a0)
	bne.s loc_2054d6
	addi.b #$10,d0
	bra.s loc_2054d8
loc_2054d6:
	addq.b #$8,d0
loc_2054d8:
	bpl.s loc_2054dc
	moveq #$3,d1
loc_2054dc:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2055ce
	move.w $14(a0),d2
	bpl.s loc_2054fa
	neg.w d2
loc_2054fa:
	btst.b #$1,$2c(a0)
	beq.s loc_205512
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2058f8).l,a1
	bra.s loc_20553c
loc_205512:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058d2).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20553c
	lea (dat_205776).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20553c
	lea (dat_20576e).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20553c:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20554a
	moveq #$0,d2
loc_20554a:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205452
	add.b d3,$1a(a0)
	rts
loc_20555a:
	addq.b #$1,d0
	bne.s loc_2055ca
	move.w $14(a0),d2
	bpl.s loc_205566
	neg.w d2
loc_205566:
	lea (dat_205854).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055a4
	lea (dat_205786).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205598
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055a4
	lea (dat_205900).l,a1
	bra.s loc_2055a4
loc_205598:
	cmpi.w #$600,d2
	bcc.s loc_2055a4
	lea (dat_20577e).l,a1
loc_2055a4:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055ae
	moveq #$0,d2
loc_2055ae:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205452
loc_2055ca:
	addq.b #$1,d0
	bne.s loc_20560e
loc_2055ce:
	move.w $14(a0),d2
	bmi.s loc_2055d6
	neg.w d2
loc_2055d6:
	addi.w #$800,d2
	bpl.s loc_2055de
	moveq #$0,d2
loc_2055de:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205866).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055f8
	lea (dat_20578e).l,a1
loc_2055f8:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205452
loc_20560e:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205622:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205634
	not.b d0
loc_205634:
	addi.b #$10,d0
	bpl.s loc_20563c
	moveq #$0,d1
loc_20563c:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20566a
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_20555a
loc_20566a:
	move.w $14(a0),d2
	bpl.s loc_205672
	neg.w d2
loc_205672:
	lea (dat_20584e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205684
	lea (dat_205848).l,a1
loc_205684:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20568e
	moveq #$0,d2
loc_20568e:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205452

sub_205698:
	tst.b ($ff195b).l
	beq.s loc_2056a4
	move.b dat_2056a6(pc,d0.w),d0
loc_2056a4:
	rts
dat_2056a6:
	.incbin 22182, 80
dat_2056f6:
	.incbin 22262, 120
dat_20576e:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205776:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20577e:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205786:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20578e:
	.incbin 22414, 186
dat_205848:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20584e:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205854:
	.incbin 22612, 18
dat_205866:
	.incbin 22630, 108
dat_2058d2:
	.incbin 22738, 38
dat_2058f8:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205900:
	.incbin 22784, 56

sub_205938:
	tst.b (a0)
	beq.w loc_20599a
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_20599a
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_20599a
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20596c:
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
loc_205986:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205986
	dbf d1,loc_20596c
loc_20599a:
	rts

sub_20599c:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a10
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
	bne.s loc_2059fe
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_2059fe:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a10:
	rts
loc_205a12:
	move.w #$e,d0

sub_205a16:
	cmpi.w #$67,d0
	bne.s loc_205a24
	move.b #$1,($ff1958).l
loc_205a24:
	move.w d0,($a12010).l
loc_205a2a:
	move.w ($a12020).l,d0
	beq.s loc_205a2a
	cmp.w ($a12020).l,d0
	bne.s loc_205a2a
	move.w #$0,($a12010).l
loc_205a42:
	move.w ($a12020).l,d0
	bne.s loc_205a42
	move.w ($a12020).l,d0
	bne.s loc_205a42
	rts
	dc.b $00,$00

sub_205a56:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a72
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a72:
	subq.b #$1,$1e(a0)
	bpl.s loc_205ab2
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205ab4
loc_205a8e:
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
loc_205ab2:
	rts
loc_205ab4:
	addq.b #$1,d0
	bne.s loc_205ac4
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a8e
loc_205ac4:
	addq.b #$1,d0
	bne.s loc_205ad8
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a8e
loc_205ad8:
	addq.b #$1,d0
	bne.s loc_205ae2
	move.b $2(a1,d1.w),$1c(a0)
loc_205ae2:
	addq.b #$1,d0
	bne.s loc_205aea
	addq.b #$2,$24(a0)
loc_205aea:
	addq.b #$1,d0
	bne.s loc_205af8
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205af8:
	addq.b #$1,d0
	bne.s loc_205b00
	addq.b #$2,$25(a0)
loc_205b00:
	rts
	.incbin 23298, 536

sub_205d1a:
	rts
	.incbin 23836, 116

sub_205d90:
	tst.b $25(a0)
	bne.s loc_205dc0
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207374).l
	bne.s loc_205dc0
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205dc0:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205dd0(pc,d0.w),d0
	jmp dat_205dd0(pc,d0.w)
dat_205dd0:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205df8
	andi.b #$7f,$2(a0)
loc_205df8:
	move.l #$23c5f0,$4(a0)
	bsr.s sub_205d90
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205e26
	move.w #$100,$1c(a0)
loc_205e26:
	lea (dat_23c5dc).l,a1
	bsr.w sub_205a56
	jmp (sub_20383c).l
	tst.b $25(a0)
	beq.s loc_205e42
	jmp (sub_2038e8).l
loc_205e42:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e64(pc,d0.w),d0
	jsr dat_205e64(pc,d0.w)
	jmp (sub_20383c).l
dat_205e64:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e92
	andi.b #$7f,$2(a0)
loc_205e92:
	move.l #$233716,$4(a0)
	tst.b $28(a0)
	bne.s loc_205eb8
	bsr.w sub_205f24
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205f1a
loc_205eb8:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067d6).l
	tst.w d1
	bpl.s loc_205f16
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205f00
	bsr.w sub_205f24
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f4a
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205f00:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205f1a
loc_205f16:
	addq.w #$2,$c(a0)
loc_205f1a:
	lea (dat_2336fa).l,a1
	bra.w sub_205a56

sub_205f24:
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

sub_205f4a:
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
	bra.s loc_205f1a
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205f1a
	.incbin 24454, 782
loc_206294:
	mulu.w (a4)+,d1
	jsr (sub_205a56).l
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062ae
	rts
loc_2062ae:
	cmp.b $24(a0),d0
	beq.s loc_2062c4
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_2062c4:
	jmp (sub_20383c).l
loc_2062ca:
	bclr.b #$7,($ff156b).l
	beq.s loc_206318
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_20631a(pc,d0.w),a1
	dc.b $45,$f9,$00,$ff
loc_2062e8:
	move.b d0,$3c(a4,d3.w)
	.incbin 25324, 44
loc_206318:
	rts
dat_20631a:
	.incbin 25370, 436

sub_2064ce:
	rts
loc_2064d0:
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
	dc.b $0c,$39,$00,$06,$00,$ff
loc_20657c:
	move.b d6,-(a2)
	bne.s loc_20658a
	move.b ($ff1593).l,($ff195b).l
loc_20658a:
	tst.b ($ff1522).l
	bpl.s loc_2065a0
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065a0:
	rts

sub_2065a2:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064d0
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
	bne.s loc_20665c
	move.b ($ff1591).l,($ff195b).l
loc_20665c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20667e
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_20667e:
	tst.b ($ff1522).l
	bpl.s loc_206694
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206694:
	rts

sub_206696:
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
	bpl.s loc_2066d2
	move.b d1,d0
	bpl.s loc_2066cc
	subq.b #$1,d0
loc_2066cc:
	addi.b #$20,d0
	bra.s loc_2066dc
loc_2066d2:
	move.b d1,d0
	bpl.s loc_2066d8
	addq.b #$1,d0
loc_2066d8:
	addi.b #$1f,d0
loc_2066dc:
	andi.b #$c0,d0
	beq.w loc_2067ac
	cmpi.b #$80,d0
	beq.w loc_206948
	andi.b #$38,d1
	bne.s loc_2066f4
	addq.w #$8,d2
loc_2066f4:
	cmpi.b #$40,d0
	beq.w loc_206a1e
	bra.w loc_206880

sub_206700:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069a6
	cmpi.b #$80,d0
	beq.w sub_2068d0
	cmpi.b #$c0,d0
	beq.w loc_206810

sub_206728:
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
loc_20678c:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_20679a
	move.b ($f768).w,d3
	exg d0,d1
loc_20679a:
	btst.l #$0,d3
	beq.s loc_2067a2
	move.b d2,d3
loc_2067a2:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067ac:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201058).l
	move.b #$0,d2
loc_2067c8:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067d4
	move.b d2,d3
loc_2067d4:
	rts

sub_2067d6:
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
	beq.s loc_20680e
	move.b #$0,d3
loc_20680e:
	rts
loc_206810:
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
	bra.w loc_20678c

sub_206878:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206880:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b #$c0,d2
	bra.w loc_2067c8
	.incbin 26784, 48

sub_2068d0:
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
	bra.w loc_20678c

sub_206940:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206948:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201058).l
	move.b #$80,d2
	bra.w loc_2067c8
	.incbin 26988, 58
loc_2069a6:
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
	bra.w loc_20678c

sub_206a16:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a1e:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c8).l
	move.b #$40,d2
	bra.w loc_2067c8
	.incbin 27202, 48

sub_206a72:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206a96
	addi.w #$c,d3
	moveq #$a,d5
loc_206a96:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206aa4:
	tst.b $1(a1)
	bpl.s loc_206ab0
	move.b $20(a1),d0
	bne.s loc_206abc
loc_206ab0:
	lea $40(a1),a1
	dbf d6,loc_206aa4
	moveq #$0,d0
	rts
loc_206abc:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206e22).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206ae4
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206aea
	bra.w loc_206ab0
loc_206ae4:
	cmp.w d4,d0
	bhi.w loc_206ab0
loc_206aea:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b02
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b08
	bra.w loc_206ab0
loc_206b02:
	cmp.w d5,d0
	bhi.w loc_206ab0
loc_206b08:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206b7c
	cmpi.b #$c0,d1
	beq.w loc_206d5c
	tst.b d1
	bmi.w loc_206c46
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b40
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206b3e
	addq.b #$2,$24(a1)
loc_206b3e:
	rts
loc_206b40:
	tst.w $12(a0)
	bpl.s loc_206b6a
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206b7a
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206b7a
	addq.b #$4,$25(a1)
	rts
loc_206b6a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206b7a
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206b7a:
	rts

sub_206b7c:
	tst.b ($ff1521).l
	bne.s loc_206b96
	tst.b ($ff151f).l
	bne.s loc_206b96
	cmpi.b #$2,$1c(a0)
	bne.w loc_206c46
loc_206b96:
	tst.b $21(a1)
	beq.s loc_206bc0
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206bbe
	bset.b #$7,$22(a1)
loc_206bbe:
	rts
loc_206bc0:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206bd8
	moveq #$6,d0
loc_206bd8:
	move.w d0,$3e(a1)
	move.w dat_206c38(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206bf2
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206bf2:
	bsr.w sub_20916e
	move.w #$96,d0
	jsr (sub_2021fe).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c28
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c30
	neg.w $12(a0)
	rts
loc_206c28:
	addi.w #$100,$12(a0)
	rts
loc_206c30:
	subi.w #$100,$12(a0)
	rts
dat_206c38:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
loc_206c40:
	bset.b #$7,$22(a1)
loc_206c46:
	tst.b ($ff1521).l
	bne.s loc_206c56
	tst.b ($ff151f).l
	beq.s loc_206c5a
loc_206c56:
	moveq #$ffffffff,d0
	rts
loc_206c5a:
	nop
	tst.w $30(a0)
	bne.s loc_206c56
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206c90
	tst.w ($ff1512).l
	beq.w loc_206cfa
	jsr (sub_207374).l
	bne.s loc_206c90
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206c90:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206ca6
	move.b #$0,($ff156f).l
loc_206ca6:
	move.b #$4,$24(a0)
	bsr.w sub_2050ac
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206cd6
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206cd6:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206ce4
	neg.w $10(a0)
loc_206ce4:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206cfa:
	tst.w ($ff1588).l
	bne.w loc_206c90

sub_206d04:
	tst.w ($ff1906).l
	bne.s loc_206d58
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050ac
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
loc_206d58:
	moveq #$ffffffff,d0
	rts
loc_206d5c:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206e0e
	cmpi.b #$b,d1
	beq.w loc_206dd8
	cmpi.b #$c,d1
	beq.w loc_206ddc
	cmpi.b #$17,d1
	beq.w loc_206e0e
	cmpi.b #$21,d1
	beq.w loc_206e0e
	cmpi.b #$23,d1
	beq.w loc_206e0e
	cmpi.b #$2f,d1
	beq.w loc_206e14
	cmpi.b #$3a,d1
	beq.w loc_206e14
	cmpi.b #$3b,d1
	beq.w loc_206e14
	cmpi.b #$1,($f7aa).w
	bne.s loc_206dd6
	cmpi.b #$3c,d1
	blt.s loc_206dd6
	cmpi.b #$3f,d1
	bgt.s loc_206dd6
	bsr.w sub_206b7c
	tst.b $20(a1)
	bne.s loc_206dce
	addq.b #$3,$21(a1)
loc_206dce:
	clr.b $20(a1)
	bra.w loc_206e0e
loc_206dd6:
	rts
loc_206dd8:
	bra.w loc_206c40
loc_206ddc:
	sub.w d0,d5
	cmpi.w #$8,d5
	bcc.s loc_206e0a
	move.w $8(a1),d0
	subq.w #$4,d0
	btst.b #$0,$22(a1)
	beq.s loc_206df6
	subi.w #$10,d0
loc_206df6:
	sub.w d2,d0
	bcc.s loc_206e02
	addi.w #$18,d0
	bcs.s loc_206e06
	bra.s loc_206e0a
loc_206e02:
	cmp.w d4,d0
	bhi.s loc_206e0a
loc_206e06:
	bra.w loc_206c46
loc_206e0a:
	bra.w sub_206b7c
loc_206e0e:
	addq.b #$1,$21(a1)
	rts
loc_206e14:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206e20
	addq.b #$1,$21(a1)
loc_206e20:
	rts
dat_206e22:
	.incbin 28194, 126
loc_206ea0:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206eb6
	move.l #$4000,(dat_207030).l
	bra.s loc_206ed6
loc_206eb6:
	addi.l #$2000,(dat_207030).l
	cmpi.l #$80000,(dat_207030).l
	bls.s loc_206ed6
	move.l #$80000,(dat_207030).l
loc_206ed6:
	move.l (dat_207030).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206ee8
	sub.l d0,$c(a0)
loc_206ee8:
	btst.b #$1,($f604).w
	beq.s loc_206ef4
	add.l d0,$c(a0)
loc_206ef4:
	btst.b #$2,($f604).w
	beq.s loc_206f00
	sub.l d0,$8(a0)
loc_206f00:
	btst.b #$3,($f604).w
	beq.s loc_206f0c
	add.l d0,$8(a0)
loc_206f0c:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e70).l
	move.w (a1),($ff194e).l
	lea (dat_207034).l,a2
	btst.b #$6,($f605).w
	beq.s loc_206f4e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_206f48
	move.b #$0,d1
loc_206f48:
	move.b d1,($ff1904).l
loc_206f4e:
	btst.b #$7,($f605).w
	beq.s loc_206f6e
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_206f68
	add.b (a2),d1
loc_206f68:
	move.b d1,($ff1904).l
loc_206f6e:
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
	beq.s loc_206ffa
	bsr.w sub_207374
	bne.s loc_206ffa
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
loc_206ffa:
	btst.b #$4,($f605).w
	beq.s loc_20702a
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20702a:
	jmp (sub_20383c).l
dat_207030:
	dc.b $00,$00,$40,$00
dat_207034:
	.incbin 28724, 302

sub_207162:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207170:
	clr.l (a2)+
	dbf d0,loc_207170
	rts

sub_207178:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207186(pc,d0.w),d0
	jmp dat_207186(pc,d0.w)
dat_207186:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207426).l,a0
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
	bcc.s loc_2071c4
	moveq #$0,d6
loc_2071c4:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2071cc:
	cmp.w (a0),d6
	bls.s loc_2071de
	tst.b $4(a0)
	bpl.s loc_2071da
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2071da:
	addq.w #$8,a0
	bra.s loc_2071cc
loc_2071de:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2071fe
loc_2071ec:
	cmp.w (a0),d6
	bls.s loc_2071fe
	tst.b $4(a0)
	bpl.s loc_2071fa
	addq.b #$1,$1(a2)
loc_2071fa:
	addq.w #$8,a0
	bra.s loc_2071ec
loc_2071fe:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2072e8
	bge.s loc_20728e
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20726a
loc_207238:
	cmp.w -$8(a0),d6
	bge.s loc_20726a
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20724e
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20724e:
	bsr.w sub_20730c
	bne.s loc_207258
	subq.w #$8,a0
	bra.s loc_207238
loc_207258:
	tst.b $4(a0)
	bpl.s loc_207268
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207268:
	addq.w #$8,a0
loc_20726a:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207276:
	cmp.w -$8(a0),d6
	bgt.s loc_207288
	tst.b -$4(a0)
	bpl.s loc_207284
	subq.b #$1,(a2)
loc_207284:
	subq.w #$8,a0
	bra.s loc_207276
loc_207288:
	move.l a0,($f770).w
	rts
loc_20728e:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2072a2:
	cmp.w (a0),d6
	bls.s loc_2072c4
	tst.b $4(a0)
	bpl.s loc_2072b0
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2072b0:
	bsr.w sub_20730c
	beq.s loc_2072a2
	tst.b $4(a0)
	bpl.s loc_2072c4
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2072c4:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2072e4
loc_2072d2:
	cmp.w (a0),d6
	bls.s loc_2072e4
	tst.b $4(a0)
	bpl.s loc_2072e0
	addq.b #$1,$1(a2)
loc_2072e0:
	addq.w #$8,a0
	bra.s loc_2072d2
loc_2072e4:
	move.l a0,($f774).w
loc_2072e8:
	rts

sub_2072ea:
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

sub_20730c:
	bsr.s sub_2072ea
	beq.s loc_20731e
	tst.b $4(a0)
	bpl.s loc_207324
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207324
loc_20731e:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207324:
	bsr.w sub_207374
	bne.s loc_207372
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
	bpl.s loc_207354
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207354:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207366
	nop
	nop
	nop
	nop
loc_207366:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207372:
	rts

sub_207374:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20737c:
	tst.b (a1)
	beq.s loc_207388
	lea $40(a1),a1
	dbf d0,loc_20737c
loc_207388:
	rts

sub_20738a:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2073a8
loc_20739c:
	tst.b (a1)
	beq.s loc_2073a8
	lea $40(a1),a1
	dbf d0,loc_20739c
loc_2073a8:
	rts
loc_2073aa:
	move.w $8(a0),d0
loc_2073ae:
	tst.b $1(a0)
	bmi.s loc_207418
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207418
loc_2073cc:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20740e
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207406
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2073fe
	moveq #$0,d1
	bra.s loc_207406
loc_2073fe:
	cmpi.w #$3,d1
	bcs.s loc_207406
	moveq #$2,d1
loc_207406:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20740e:
	jsr (sub_2038e8).l
	moveq #$1,d0
	rts
loc_207418:
	btst.b #$7,($ff152e).l
	bne.s loc_2073cc
	moveq #$0,d0
	rts
dat_207426:
	.incbin 29734, 418
loc_2075c8:
	or.b d0,d0
	movep.l d3,$170(a0)
	sub.b d0,d0
	or.b d0,d0
	.incbin 30162, 86

sub_207628:
	btst.b #$3,$22(a0)
	beq.s loc_207698
	btst.b #$3,$22(a1)
	beq.s loc_207698
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207698
	tst.b $2a(a1)
	beq.s loc_20765a
	move.w #$ab,d0
	jsr (sub_2021fe).l
loc_20765a:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207686
	cmpi.b #$17,$1c(a1)
	beq.s loc_207686
	bclr.b #$0,$2c(a1)
loc_207686:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207698
	bclr.b #$1,$22(a1)
loc_207698:
	rts

sub_20769a:
	cmpi.b #$4,$24(a1)
	bne.s loc_2076ac
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2076ac:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20770c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2076ce
	bclr.b #$3,$22(a0)
	bra.w sub_207628
loc_2076ce:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20770c
	tst.b ($ff195b).l
	beq.s loc_2076f6
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207706
loc_2076f6:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207706:
	move.b #$0,$1c(a1)
loc_20770c:
	bset.b #$3,$22(a1)
	beq.s loc_20772e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207766
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_20772e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_20775a
	cmpi.b #$2,$24(a0)
	beq.s loc_207760
loc_20775a:
	move.w $10(a1),$14(a1)
loc_207760:
	bclr.b #$1,$22(a1)
loc_207766:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25
loc_207776:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207a2a
	btst.b #$6,$2c(a1)
	bne.w loc_207a2a
	cmpi.b #$6,$24(a1)
	bcc.w loc_207a2a
	tst.b $0(a1)
	beq.w loc_207a2a
	tst.b $1(a0)
	bpl.w loc_207a2a
	tst.b ($ff1906).l
	bne.w loc_207a2a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207a2a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207a2a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2077e4
	btst.b #$3,$22(a0)
	bne.s loc_2077f6
	bra.w loc_207a2a
loc_2077e4:
	cmpi.b #$1,$25(a0)
	bne.s loc_2077f6
	tst.w $12(a1)
	beq.s loc_2077f6
	bmi.w loc_207a2a
loc_2077f6:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207a2a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207a2a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_20782c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_20782c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_20783a
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_20783a:
	cmp.w d4,d5
	bcs.w loc_2078ce
	cmpi.b #$1,$25(a0)
	beq.w loc_207a2a
	cmpi.b #$a,$0(a0)
	bne.s loc_20785c
	btst.b #$1,$22(a1)
	bne.w loc_207a2a
loc_20785c:
	cmpi.b #$4,d5
	bls.w loc_207a2a
	bsr.w sub_207a7a
	move.l d0,-(a7)
	bsr.w sub_207628
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207886
	tst.w $10(a1)
	beq.s loc_2078b6
	bpl.s loc_20788e
	bra.s loc_2078b6
loc_207886:
	tst.w $10(a1)
	beq.s loc_2078b6
	bpl.s loc_2078b6
loc_20788e:
	bsr.w sub_207a3a
	btst.b #$1,$22(a1)
	bne.s loc_2078ac
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2078ac:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2078b6:
	bsr.w sub_207af0
	bsr.w sub_207a3a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2078ce:
	cmpi.b #$19,$0(a0)
	bne.s loc_2078e0
	btst.b #$2,$22(a1)
	bne.w loc_207a2a
loc_2078e0:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2078f6
	bmi.w loc_2079c6
loc_2078f6:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207908
	tst.w $12(a1)
	beq.s loc_207908
	bmi.w loc_207a2a
loc_207908:
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
	beq.s loc_207954
	bpl.s loc_207934
	neg.b d0
loc_207934:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206696).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207954
	tst.w $10(a0)
	bpl.s loc_207950
	neg.w d1
loc_207950:
	add.w d1,$8(a1)
loc_207954:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_2079be
	tst.w $12(a0)
	bmi.s loc_207992
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206728).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207992
	add.w d1,$c(a1)
	bra.w loc_207a2a
loc_207992:
	tst.w $12(a0)
	bpl.s loc_2079be
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206940).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2079be
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d04).l
	movem.l (a7)+,a0-a1
	bra.s loc_207a2a
loc_2079be:
	bsr.w sub_20769a
	moveq #$1,d0
	rts
loc_2079c6:
	cmpi.b #$1,$25(a0)
	beq.s loc_207a2a
	cmpi.b #$9,$0(a0)
	beq.s loc_207a2a
	cmpi.b #$a,$0(a0)
	bne.s loc_2079f0
	cmpi.b #$2,$25(a0)
	beq.s loc_207a10
	btst.b #$1,$1(a0)
	bne.s loc_207a10
	bra.s loc_207a2a
loc_2079f0:
	btst.b #$1,$22(a1)
	bne.s loc_207a10
	tst.w $12(a0)
	beq.s loc_207a10
	bmi.s loc_207a10
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d04).l
	movem.l (a7)+,a0-a1
loc_207a10:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_207af0
	bsr.w sub_207628
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207a2a:
	bsr.w sub_207af0
	bsr.w sub_207628
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207a3a:
	tst.w $10(a0)
	beq.s loc_207a78
	cmpi.b #$a,$0(a0)
	beq.s loc_207a78
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207a54
	neg.b d0
loc_207a54:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206696).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207a78
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d04).l
	movem.l (a7)+,a0-a1
loc_207a78:
	rts

sub_207a7a:
	cmpi.b #$a,$0(a0)
	bne.s loc_207a8a
	move.b #$0,$20(a1)
	rts
loc_207a8a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207ade
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_207aee
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207aac
	tst.w $10(a2)
	beq.s loc_207aee
loc_207aac:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207abe
	cmp.w $8(a2),d1
	bcs.s loc_207aee
	bra.s loc_207ac4
loc_207abe:
	cmp.w $8(a2),d1
	bcc.s loc_207aee
loc_207ac4:
	cmpi.b #$15,$0(a0)
	beq.s loc_207aee
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d04).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_207ade:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_207aee:
	rts

sub_207af0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207b0a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_207b0a
	move.b #$0,$20(a1)
loc_207b0a:
	rts
	.incbin 31500, 374
loc_207c82:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_207c90(pc,d0.w),d0
	jmp dat_207c90(pc,d0.w)
dat_207c90:
	.incbin 31888, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_207c82
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_207ce6
	tst.b $1(a0)
	bpl.s loc_207cee
loc_207ce6:
	move.w dat_207d40(pc,d0.w),d1
	jsr dat_207d40(pc,d1.w)
loc_207cee:
	bsr.w sub_20383c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_207d20
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_207d20:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038e8
	rts
dat_207d40:
	.incbin 32064, 26
	addq.b #$2,$24(a0)
	move.l #$2080c2,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_207db0
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2080c8,$4(a0)
	bra.s loc_207df2
loc_207db0:
	btst.l #$3,d0
	beq.s loc_207dde
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208112,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20abd6).l
	move.l (a7)+,d0
	bra.s loc_207df2
loc_207dde:
	btst.b #$1,$1(a0)
	beq.s loc_207df2
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_207df2:
	btst.l #$1,d0
	beq.s loc_207dfe
	bset.b #$5,$2(a0)
loc_207dfe:
	andi.w #$2,d0
	move.w dat_207e0a(pc,d0.w),$30(a0)
	rts
dat_207e0a:
	dc.b $f0,$00,$f6,$00

sub_207e0e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_207776).l
	tst.b $1(a0)
	bpl.s loc_207e2a
	lea ($d000).w,a1
	bsr.s sub_207e0e
	bne.s loc_207e2c
loc_207e2a:
	rts
loc_207e2c:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2021fe).l
	lea (dat_2080b4).l,a1
	bra.w sub_205a56
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_207e80:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_207776).l
	tst.b $1(a0)
	bpl.s loc_207ea2
	lea ($d000).w,a1
	bsr.s sub_207e80
	btst.b #$5,$22(a0)
	bne.s loc_207ea4
loc_207ea2:
	rts
loc_207ea4:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_207ed2
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_207ed2:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_207eec
	move.b #$0,$1c(a1)
loc_207eec:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2021fe).l
	.incbin 32518, 430
dat_2080b4:
	.incbin 32948, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2081ae(pc,d0.w),d1
	jmp dat_2081ae(pc,d1.w)
dat_2081ae:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2081b8:
	.incbin 33208, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208210
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208208
	moveq #$0,d1
	bra.s loc_208210
loc_208208:
	cmpi.w #$3,d1
	bcs.s loc_208210
	moveq #$2,d1
loc_208210:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20822c
	moveq #$6,d1
loc_20822c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2081b8).l,a1
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
	beq.s loc_20827c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208274
	moveq #$0,d0
	bra.s loc_20827c
loc_208274:
	cmpi.w #$3,d0
	bcs.s loc_20827c
	moveq #$2,d0
loc_20827c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20834a
	dbf d0,loc_20827c
	bclr.b #$7,(a2)
	bra.s loc_2082d2
loc_20828e:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2082ba
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2082b2
	moveq #$0,d0
	bra.s loc_2082ba
loc_2082b2:
	cmpi.w #$3,d0
	bcs.s loc_2082ba
	moveq #$2,d0
loc_2082ba:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20834a
	dbf d0,loc_2082ba
	bclr.b #$7,(a2)
	bsr.w sub_20738a
	bne.w loc_208356
loc_2082d2:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20861c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208328
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208328
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208328:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20834a:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_20828e
loc_208356:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20837c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208374
	moveq #$0,d0
	bra.s loc_20837c
loc_208374:
	cmpi.w #$3,d0
	bcs.s loc_20837c
	moveq #$2,d0
loc_20837c:
	lea $1(a2),a3
loc_208380:
	btst.b #$0,-(a3)
	bne.w sub_2038e8
	dbf d0,loc_208380
	tst.b $1(a0)
	bmi.s loc_2083b0
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20842a
loc_2083b0:
	tst.w ($ff190e).l
	bne.s loc_2083c0
	move.b ($ff1913).l,$1a(a0)
loc_2083c0:
	bra.w sub_20383c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20842e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208410
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208408
	moveq #$0,d1
	bra.s loc_208410
loc_208408:
	cmpi.w #$3,d1
	bcs.s loc_208410
	moveq #$2,d1
loc_208410:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208614).l,a1
	bsr.w sub_205a56
	bra.w sub_20383c
loc_20842a:
	bra.w sub_2038e8

sub_20842e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20847e
	bset.b #$1,($ff150d).l
	beq.s loc_208468
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20847e
	bset.b #$2,($ff150d).l
	bne.s loc_20847e
loc_208468:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a16).l
loc_20847e:
	jmp (sub_2021fe).l
	.incbin 33924, 400
dat_208614:
	.incbin 34324, 402
loc_2087a6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2087d4(pc,d0.w),d0
	jsr dat_2087d4(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_2087d2
	cmpi.w #$5a,($f786).w
	bcs.s loc_2087cc
	btst.b #$0,($ff1505).l
	bne.s loc_2087d2
loc_2087cc:
	jmp (sub_20383c).l
loc_2087d2:
	rts
dat_2087d4:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$208dae,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208808
	move.b #$13,$1a(a0)
loc_208808:
	rts
loc_20880a:
	tst.b ($ff0f01).l
	beq.s loc_208818
	jmp (sub_2038e8).l
loc_208818:
	cmpi.b #$a,$28(a0)
	beq.w loc_2087a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20883c(pc,d0.w),d0
	jsr dat_20883c(pc,d0.w)
	jsr (sub_20383c).l
	jmp (loc_2073aa).l
dat_20883c:
	.incbin 34876, 282

sub_208956:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20898e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208986
	moveq #$0,d1
	bra.s loc_20898e
loc_208986:
	cmpi.w #$3,d1
	bcs.s loc_20898e
	moveq #$2,d1
loc_20898e:
	add.w d1,d0
	rts

sub_208992:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2089b4
	tst.b ($ff1956).l
	beq.s loc_2089ac
	tst.b $29(a0)
	bne.s loc_2089b4
	rts
loc_2089ac:
	tst.b $29(a0)
	beq.s loc_2089b4
	rts
loc_2089b4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_207776).l
	tst.b $28(a0)
	bne.s loc_2089d6
	tst.b ($ff0f01).l
	beq.s loc_2089d6
	jmp (loc_2073aa).l
loc_2089d6:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20880a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2089ee(pc,d0.w),d1
	jmp dat_2089ee(pc,d1.w)
dat_2089ee:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$208dae,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208a38
	tst.b $29(a0)
	bne.s loc_208a38
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208a38:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208956
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208a64
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208a64:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208abe
	move.b $25(a0),d0
	beq.s loc_208a9e
	bsr.w sub_203784
	jsr (sub_2067d6).l
	tst.w d1
	bpl.w loc_208aac
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208aac
loc_208a9e:
	tst.b $1(a0)
	bpl.s loc_208aac
	lea ($d000).w,a1
	bsr.w sub_208992
loc_208aac:
	tst.w ($ff190e).l
	bne.s loc_208abe
	lea (dat_208d26).l,a1
	bsr.w sub_205a56
loc_208abe:
	bsr.w sub_20383c
	jmp (loc_2073aa).l
	move.w #$96,d0
	jsr (sub_2021fe).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207374
	bne.s loc_208b00
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_208b00:
	bsr.w sub_207374
	bne.s loc_208b2a
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_208b2a:
	bsr.w sub_208956
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_20383c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208b50(pc,d0.w),d1
	jsr dat_208b50(pc,d1.w)
	bra.w sub_20383c
dat_208b50:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_208b6c
	andi.b #$7f,$2(a0)
loc_208b6c:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$208dae,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_208bb4
	bsr.w sub_2037e6
	addi.w #$18,$12(a0)
	rts
loc_208bb4:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_208bda
loc_208bc4:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a16).l
loc_208bda:
	cmpi.b #$1,d0
	bne.s loc_208c26
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208c1c
	bset.b #$1,($ff150d).l
	beq.w loc_208bc4
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208c1c
	bset.b #$2,($ff150d).l
	beq.w loc_208bc4
loc_208c1c:
	move.w #$95,d0
	jmp (sub_2021fe).l
loc_208c26:
	cmpi.b #$2,d0
	bne.s loc_208c44

sub_208c2c:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_2021fe).l
loc_208c44:
	cmpi.b #$3,d0
	bne.s loc_208ca6

sub_208c4a:
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
	bne.s loc_208c9a
	move.w #$82,d0
	jsr (sub_205a16).l
loc_208c9a:
	move.w #$6d,d0
	jmp (sub_205a16).l
	dc.b $4e,$75
loc_208ca6:
	cmpi.b #$4,d0
	bne.s loc_208ce8
loc_208cac:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_208cde
	move.w #$82,d0
	jsr (sub_205a16).l
loc_208cde:
	move.w #$6c,d0
	jmp (sub_205a16).l
loc_208ce8:
	cmpi.b #$5,d0
	bne.s loc_208cf8
	move.w #$12c,($ff190e).l
	rts
loc_208cf8:
	cmpi.b #$6,d0
	bne.s loc_208d12
	move.w #$9d,d0
	jsr (sub_2021fe).l
	move.b #$1,($ff156f).l
	rts
loc_208d12:
	bsr.w sub_208c2c
	bsr.w sub_208c4a
	bra.s loc_208cac
	subq.w #$1,$1e(a0)
	bmi.w sub_2038e8
	rts
dat_208d26:
	.incbin 36134, 586
loc_208f70:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f84(pc,d0.w),d0
	jsr dat_208f84(pc,d0.w)
	jmp (sub_20383c).l
dat_208f84:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$208fc4,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_208fbe
	jmp (sub_2038e8).l
loc_208fbe:
	subq.w #$2,$c(a0)
	rts
	.incbin 36804, 82
	tst.b $28(a0)
	bmi.w loc_208f70
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20902c(pc,d0.w),d0
	jmp dat_20902c(pc,d0.w)
dat_20902c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$2090c6,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20905c
	move.b #$3,$1a(a0)
	bra.s loc_20907c
loc_20905c:
	tst.w ($ff1588).l
	beq.s loc_20906a
	move.b #$2,$1a(a0)
loc_20906a:
	tst.b $28(a0)
	beq.s loc_20907c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20907c:
	tst.b $28(a0)
	bne.s loc_2090c0
	tst.b $29(a0)
	beq.s loc_2090ac
	tst.w ($ff1512).l
	beq.s loc_209098
	bclr.b #$5,$2(a0)
	bra.s loc_2090c0
loc_209098:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_2090c0
	eori.b #$20,$2(a0)
	bra.s loc_2090c0
loc_2090ac:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_2090c0
	move.b #$2,$1a(a0)
loc_2090c0:
	jmp (sub_20383c).l
	.incbin 37062, 168

sub_20916e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20918a
	move.l d1,(a3)
loc_20918a:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_2091b4
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a16).l
loc_2091b4:
	rts
loc_2091b6:
	tst.w ($ff1588).l
	beq.s loc_20920c
	bsr.w sub_209408
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
	lea (dat_209568).l,a2
	moveq #$2,d6
	bsr.w sub_2095c0
	bra.w loc_209266
loc_20920c:
	tst.b ($ff1511).l
	beq.s loc_209230
	bpl.s loc_20921a
	bsr.w sub_2093b2
loc_20921a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_2094a2
loc_209230:
	tst.b ($ff150f).l
	beq.s loc_209266
	bpl.s loc_20923e
	bsr.w sub_20939e
loc_20923e:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_209262
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_209262:
	bsr.w sub_209498
loc_209266:
	tst.w ($ff1588).l
	bne.w loc_209312
	tst.b ($ff1510).l
	beq.w loc_209312
	tst.w ($f63a).w
	bne.w loc_209312
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209370
	tst.b ($f7cc).w
	bne.s loc_2092bc
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2092bc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_2092bc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_2092bc
	move.b #$9,(a1)
loc_2092bc:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_2095ae
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_2095b8
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20930e
	move.w #$63,d1
loc_20930e:
	bsr.w sub_2095b8
loc_209312:
	tst.b ($ff150e).l
	beq.s loc_209324
	clr.b ($ff150e).l
	bsr.w sub_20958e
loc_209324:
	tst.b ($f7d6).w
	beq.s loc_20936e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209344
	move.l #$6d400001,d0
loc_209344:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209426
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209364
	move.l #$6e800001,d0
loc_209364:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209426
loc_20936e:
	rts
loc_209370:
	btst.b #$7,($ff152e).l
	bne.s loc_20939c
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d04
	move.b #$1,($ff150c).l
loc_20939c:
	rts

sub_20939e:
	move.l #$73600002,($c00004).l
	lea dat_209404(pc),a2
	move.w #$2,d2
	bra.s loc_2093ce

sub_2093b2:
	lea ($c00000).l,a6
	bsr.w sub_20958e
	move.l #$70600002,($c00004).l
	lea dat_2093fc(pc),a2
	move.w #$6,d2
loc_2093ce:
	lea (dat_2330bc).l,a1
loc_2093d4:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_2093f0
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_2093e4:
	move.l (a3)+,(a6)
	dbf d1,loc_2093e4
loc_2093ea:
	dbf d2,loc_2093d4
	rts
loc_2093f0:
	move.l #$0,(a6)
	dbf d1,loc_2093f0
	bra.s loc_2093ea
dat_2093fc:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209404:
	dc.b $ff,$ff,$00,$00

sub_209408:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209584
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209584

sub_209426:
	lea (dat_209560).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_209436:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20943a:
	sub.l d3,d1
	bcs.s loc_209442
	addq.w #$1,d2
	bra.s loc_20943a
loc_209442:
	add.l d3,d1
	tst.w d2
	beq.s loc_20944c
	move.w #$1,d4
loc_20944c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209458
	tst.w d6
	bne.s loc_20948a
loc_209458:
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
loc_20947e:
	addi.l #$400000,d0
	dbf d6,loc_209436
	rts
loc_20948a:
	moveq #$f,d5
loc_20948c:
	move.l #$0,(a6)
	dbf d5,loc_20948c
	bra.s loc_20947e

sub_209498:
	lea (dat_209568).l,a2
	moveq #$2,d6
	bra.s loc_2094aa

sub_2094a2:
	lea (dat_20955c).l,a2
	moveq #$5,d6
loc_2094aa:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2094b2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2094b6:
	sub.l d3,d1
	bcs.s loc_2094be
	addq.w #$1,d2
	bra.s loc_2094b6
loc_2094be:
	add.l d3,d1
	tst.w d2
	beq.s loc_2094c8
	move.w #$1,d4
loc_2094c8:
	tst.w d4
	beq.s loc_2094f6
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
loc_2094f6:
	addi.l #$400000,d0
	dbf d6,loc_2094b2
	rts
	.incbin 38146, 90
dat_20955c:
	dc.b $00,$01,$86,$a0
dat_209560:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209568:
	dc.b $00,$00,$00,$64
dat_20956c:
	dc.b $00,$00,$00,$0a
dat_209570:
	dc.b $00,$00,$00,$01
dat_209574:
	.incbin 38260, 16

sub_209584:
	moveq #$3,d6
	lea (dat_209574).l,a2
	bra.s sub_2095c0

sub_20958e:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_2095a4
	moveq #$9,d1
loc_2095a4:
	lea (dat_209570).l,a2
	moveq #$0,d6
	bra.s sub_2095c0

sub_2095ae:
	lea (dat_209570).l,a2
	moveq #$0,d6
	bra.s sub_2095c0

sub_2095b8:
	lea (dat_20956c).l,a2
	moveq #$1,d6

sub_2095c0:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_2095c8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2095cc:
	sub.l d3,d1
	bcs.s loc_2095d4
	addq.w #$1,d2
	bra.s loc_2095cc
loc_2095d4:
	add.l d3,d1
	tst.w d2
	beq.s loc_2095de
	move.w #$1,d4
loc_2095de:
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
	dbf d6,loc_2095c8
	rts
	.incbin 38420, 1200
	cmpi.b #$1,$28(a0)
	beq.w loc_209d06
	jsr (sub_20e29e).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209af2(pc,d0.w),d0
	jsr dat_209af2(pc,d0.w)
	jsr (sub_20383c).l
	move.w $2a(a0),d0
	jmp (loc_2073ae).l
dat_209af2:
	.incbin 39666, 532
loc_209d06:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d1a(pc,d0.w),d0
	jsr dat_209d1a(pc,d0.w)
	jmp (sub_20383c).l
dat_209d1a:
	.incbin 40218, 2126
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a57e(pc,d0.w),d0
	jsr dat_20a57e(pc,d0.w)
	jsr (sub_20383c).l
	rts
dat_20a57e:
	.incbin 42366, 1622

sub_20abd4:
	rts

sub_20abd6:
	lea (dat_20abf8).l,a1
	add.w d0,d0
	move.w dat_20abf8(pc,d0.w),d4
	lea dat_20abf8(pc,d4.w),a2
	moveq #$0,d1
	move.b $29(a0),d1
	add.w d1,d1
	move.w $0(a2,d1.w),d5
	move.w d5,$2(a0)
	rts
dat_20abf8:
	.incbin 44024, 68
	jsr (sub_20e2e6).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20ad5e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac5c(pc,d0.w),d0
	jmp dat_20ac5c(pc,d0.w)
dat_20ac5c:
	dc.b $00,$06,$00,$60,$00,$a4
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20aed6,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20ae2c
	bsr.w sub_20ae3a
	tst.b $28(a0)
	bmi.s loc_20acaa
	move.b #$4,$18(a0)
	ori.w #$8000,$2(a0)
	move.w #$101,$2e(a0)
	rts
loc_20acaa:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$3,$18(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20ad3e
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20ace2
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20ae2c
loc_20ace2:
	move.b d0,$2e(a0)
	lea dat_20ae58(pc),a1
	jsr (sub_205a56).l
	jsr (sub_20383c).l
	move.w $2a(a0),d0
	jmp (loc_2073ae).l
	.incbin 44288, 62

sub_20ad3e:
	move.b $2e(a0),d0
	jsr (sub_200702).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20ad5e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad6c(pc,d0.w),d0
	jmp dat_20ad6c(pc,d0.w)
dat_20ad6c:
	dc.b $00,$06,$00,$4c,$00,$94
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20aeea,$4(a0)
	move.w $8(a0),$2a(a0)
	bsr.w sub_20ae3a
	tst.b $28(a0)
	bmi.s loc_20adae
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
loc_20adae:
	move.b #$4,$24(a0)
	bra.w sub_20ae2c
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_2067d6).l
	tst.w d1
	bpl.s loc_20adf4
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20ae2c
loc_20adf4:
	jsr (sub_20383c).l
	jmp (loc_2073aa).l
	.incbin 44544, 44

sub_20ae2c:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20ae3a:
	lea dat_20af0e(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20ae58:
	.incbin 44632, 182
dat_20af0e:
	.incbin 44814, 22
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20af50(pc,d0.w),d0
	jsr dat_20af50(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_20af4e
	cmpi.b #$a,$24(a0)
	beq.s loc_20af48
	cmpi.b #$6,$24(a0)
	bcc.s loc_20af4e
loc_20af48:
	jmp (sub_20383c).l
loc_20af4e:
	rts
dat_20af50:
	.incbin 44880, 11054
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20da8c(pc,d0.w),d0
	jmp dat_20da8c(pc,d0.w)
dat_20da8c:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20e18a,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20e14a).l,a2
loc_20dada:
	jsr (sub_207374).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20e18a,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20db2c
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20db2c:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20dada
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20db54
	bge.s loc_20db4a
	neg.w d0
loc_20db4a:
	add.w d0,$a(a0)
	jmp (sub_20383c).l
loc_20db54:
	addq.b #$4,$24(a0)
	jmp (sub_20383c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20db78
	bge.s loc_20db6e
	neg.w d0
loc_20db6e:
	add.w d0,$8(a0)
	jmp (sub_20383c).l
loc_20db78:
	addq.b #$4,$24(a0)
	jmp (sub_20383c).l
	tst.b $1e(a0)
	beq.s loc_20db92
	subq.b #$1,$1e(a0)
	jmp (sub_20383c).l
loc_20db92:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20dbac
	bge.s loc_20dba2
	neg.w d0
loc_20dba2:
	add.w d0,$a(a0)
	jmp (sub_20383c).l
loc_20dbac:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2023c8).l
	tst.b $1e(a0)
	beq.s loc_20dbce
	subq.b #$1,$1e(a0)
	jmp (sub_20383c).l
loc_20dbce:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20dbe8
	bge.s loc_20dbde
	neg.w d0
loc_20dbde:
	add.w d0,$8(a0)
	jmp (sub_20383c).l
loc_20dbe8:
	jmp (sub_2038e8).l
	tst.l ($f680).w
	bne.s loc_20dc02
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2038e8).l
loc_20dc02:
	rts
	.incbin 56324, 1350
dat_20e14a:
	.incbin 57674, 340

sub_20e29e:
	tst.b ($ff156a).l
	beq.s loc_20e2e4
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e2b6
	tst.b $28(a0)
	beq.s loc_20e2e4
loc_20e2b6:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2038e8).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e2e2
	move.w #$9e,d0
	jsr (sub_2021fe).l
loc_20e2e2:
	addq.l #$4,a7
loc_20e2e4:
	rts

sub_20e2e6:
	tst.b $28(a0)
	bmi.s loc_20e316
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e306
	tst.b ($ff156d).l
	bne.s loc_20e316
	addq.l #$4,a7
	jmp (loc_2073aa).l
loc_20e306:
	tst.b ($ff156a).l
	bne.s loc_20e316
	addq.l #$4,a7
	jmp (sub_2038e8).l
loc_20e316:
	rts

sub_20e318:
	jmp (loc_2062ca).l
dat_20e31e:
	.incbin 58142, 16
dat_20e32e:
	.incbin 58158, 1664
	tst.b ($ff156a).l
	beq.s loc_20e9f4
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e9c6
	tst.b $28(a0)
	beq.s loc_20e9f4
loc_20e9c6:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203906).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e9f2
	move.w #$9e,d0
	jsr ($20226a).l
loc_20e9f2:
	addq.l #$4,a7
loc_20e9f4:
	rts
	tst.b $28(a0)
	bmi.s loc_20ea26
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ea16
	tst.b ($ff156d).l
	bne.s loc_20ea26
	addq.l #$4,a7
	jmp (loc_2075c8).l
loc_20ea16:
	tst.b ($ff156a).l
	bne.s loc_20ea26
	addq.l #$4,a7
	jmp (sub_203906).l
loc_20ea26:
	rts
	.incbin 59944, 1360
	jmp (loc_2062e8).l
	.incbin 61310, 3136
	jmp (loc_20657c).l
	.incbin 64452, 550
	jmp (loc_206294).l
	.incbin 65008, 66064
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1598
dat_2336fa:
	.incbin 210682, 9952
dat_235dda:
	.incbin 220634, 256
dat_235eda:
	.incbin 220890, 4096
dat_236eda:
	.incbin 224986, 4896
dat_2381fa:
	.incbin 229882, 17378
dat_23c5dc:
	.incbin 247260, 14884
